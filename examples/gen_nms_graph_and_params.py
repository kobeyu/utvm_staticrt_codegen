import os
import numpy as np
import tvm
from tvm import relay, te
from tvm.relay.testing import run_infer_type


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

    ll_tgt = 'llvm -mtriple=riscv64-unknown-elf-gnu -mcpu=generic-rv64 -mfloat-abi=hard'

    graph, lib, params = relay.build(func, target=ll_tgt)

    model_name = "nms"
    out_dir='./out_nms/'
    if not os.path.exists(out_dir):
        os.mkdir(out_dir)

    with open(out_dir + model_name + '.ll', 'w') as _f:
        _f.write(lib.get_source())

    with open(out_dir+ model_name + '.graph', 'w') as _f:
        _f.write(graph)

    with open(out_dir + model_name + '.params', 'wb') as _f:
        _f.write(relay.save_param_dict(params))

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


