import os
import numpy as np
import shutil
import tarfile
import json
import codegen

import tvm
from tvm import relay, te
from tvm.relay.testing import run_infer_type
from tvm.micro import export_model_library_format
from tvm.contrib import utils as tvm_utils


def verify_nms(
    x0_data,
    x1_data,
    x2_data,
    x3_data,
    dshape,
    ref_indices_res,
    iou_threshold=0.5,
    force_suppress=False,
    top_k=-1,
    check_type_only=False,
):
    x0 = relay.var("x0", relay.ty.TensorType(dshape, "float32"))
    x1 = relay.var("x1", relay.ty.TensorType((dshape[0],), "int32"))
    x2 = relay.var("x2", relay.ty.TensorType((dshape[0], dshape[1]), "int32"))
    x3 = relay.var("x3", relay.ty.TensorType((), "int32"))
    z = relay.vision.non_max_suppression(
        x0,
        x1,
        x2,
        x3,
        iou_threshold=iou_threshold,
        force_suppress=force_suppress,
        top_k=top_k,
        return_indices=False,
    )

    func = relay.Function([x0, x1, x2, x3], z)

    #generate ll
    #ll_tgt = 'llvm -mtriple=riscv64-unknown-elf-gnu -mcpu=generic-rv64 -mfloat-abi=hard'
    #ll_tgt = 'llvm' #x86

    #generate c code
    ll_tgt = tvm.target.target.micro("host")

    graph, lib, params = relay.build(func, target=ll_tgt)

    model_name = "nms"
    out_dir='out_nms'
    #if not os.path.exists(out_dir):
    #    os.mkdir(out_dir)

    #with open(out_dir + model_name + '.ll', 'w') as _f:
    #    _f.write(lib.get_source())

    #with open(out_dir+ model_name + '.graph', 'w') as _f:
    #    _f.write(graph)

    #with open(out_dir + model_name + '.params', 'wb') as _f:
    #    _f.write(relay.save_param_dict(params))

    c_mod = relay.build(func, target=ll_tgt, params=params)
    c_params = c_mod.get_graph_json()
    #export_model_library_format(c_mod, out_dir + model_name + "archive.tar")

    mlfDir = tvm_utils.tempdir().temp_dir
    os.makedirs(mlfDir, exist_ok=True)
    tarFile = os.path.join(mlfDir, "archive.tar")
    export_model_library_format(c_mod, tarFile)
    tarfile.open(tarFile).extractall(mlfDir)
    with open(os.path.join(mlfDir, "metadata.json")) as f:
        metadata = json.load(f)
    workspaceBytes = 0
    for op in metadata["memory"]["functions"]["operator_functions"]:
        workspaceBytes = max(workspaceBytes, op["workspace"][0]["workspace_size_bytes"])


    if os.path.exists(os.path.join(out_dir, "params.bin")):
        shutil.rmtree(out_dir)

    shutil.copytree(os.path.join(mlfDir, "codegen", "host", "src"), out_dir)
    # TODO: remove this temporary workaround for old tvm version
    legacy = False
    if os.path.exists(os.path.join(mlfDir, "src", "relay.txt")):
        shutil.copy2(os.path.join(mlfDir, "src", "relay.txt"), os.path.join(out_dir, "relay.txt"))
    else:
        legacy = True
        shutil.copy2(os.path.join(mlfDir, "relay.txt"), os.path.join(out_dir, "relay.txt"))
    shutil.copy2(os.path.join(mlfDir, "metadata.json"), os.path.join(out_dir, "metadata.json"))

    if graph:
        with open(os.path.join(out_dir, "graph.json"), "w") as f:
            f.write(graph)

    with open(os.path.join(out_dir, "metadata.json")) as json_f:
        metadata = json.load(json_f)

    with open(os.path.join(out_dir, "params.bin"), "wb") as f:
        f.write(relay.save_param_dict(params))
    with open(os.path.join(out_dir, "workspace_size.txt"), "w") as f:
        f.write(str(workspaceBytes))
    #codegen.generateTargetCode(out_dir + "/runtime_wrapper.c", graph, relay.save_param_dict(c_params), self.modelInfo)





    #func = run_infer_type(func)
    #func_indices = relay.Function([x0, x1, x2, x3], z_indices)
    #func_indices = run_infer_type(func_indices)
    #for target, dev in tvm.testing.enabled_targets():
    #    op_res1 = relay.create_executor("graph", device=dev, target=target).evaluate(func)(
    #        x0_data, x1_data, x2_data, x3_data
    #    )
    #    tvm.testing.assert_allclose(op_res1.numpy(), ref_res, rtol=1e-5)
    #    op_res2 = relay.create_executor("debug", device=dev, target=target).evaluate(func)(
    #        x0_data, x1_data, x2_data, x3_data
    #    )
    #    tvm.testing.assert_allclose(op_res2.numpy(), ref_res, rtol=1e-5)
    #    op_indices_res1 = relay.create_executor("graph", device=dev, target=target).evaluate(
    #        func_indices
    #    )(x0_data, x1_data, x2_data, x3_data)
    #    tvm.testing.assert_allclose(op_indices_res1[0].numpy(), ref_indices_res, rtol=1e-5)
    #    op_indices_res2 = relay.create_executor("debug", device=dev, target=target).evaluate(
    #        func_indices
    #    )(x0_data, x1_data, x2_data, x3_data)
    #    tvm.testing.assert_allclose(op_indices_res2[0].numpy(), ref_indices_res, rtol=1e-5)

np_data = np.array(
    [
        [
            [0, 0.8, 1, 20, 25, 45],
            [1, 0.7, 30, 60, 50, 80],
            [0, 0.4, 4, 21, 19, 40],
            [2, 0.9, 35, 61, 52, 79],
            [1, 0.5, 100, 60, 70, 110],
        ]
    ]
).astype("float32")
np_valid_count = np.array([4]).astype("int32")
np_indices = np.array([[0, 1, 3, 4, -1]]).astype("int32")
np_max_output_size = -1

np_result = np.array(
    [
        [
            [2, 0.9, 35, 61, 52, 79],
            [0, 0.8, 1, 20, 25, 45],
            [-1, -1, -1, -1, -1, -1],
            [-1, -1, -1, -1, -1, -1],
            [-1, -1, -1, -1, -1, -1],
        ]
    ]
)
np_indices_result = np.array([[4, 0, -1, -1, -1]])
num_anchors = 5

dshape = (te.size_var("n"), num_anchors, 6)

dshape = (1, num_anchors, 6)
verify_nms(
    np_data,
    np_valid_count,
    np_indices,
    np_max_output_size,
    dshape,
    np_indices_result,
    force_suppress=True,
    top_k=2,
    check_type_only=False,
)


