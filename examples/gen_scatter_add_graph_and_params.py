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

def compile(func):

    out_dir='out_scatadd'
    ll_tgt = tvm.target.target.micro("host")

    graph, lib, params = relay.build(func, target=ll_tgt)
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
 

def main():
    dshape = (10,)
    ishape = (10,)
    dtype = "int32"
    axis = 0
    #d = relay.var("d", relay.TensorType(shape=[relay.Any() for _ in dshape], dtype=dtype))
    #i = relay.var("i", relay.TensorType(shape=[relay.Any() for _ in ishape], dtype="int64"))
    #u = relay.var("u", relay.TensorType(shape=[relay.Any() for _ in ishape], dtype=dtype))


    d = relay.var("d", relay.ty.TensorType(dshape, dtype))
    i = relay.var("i", relay.ty.TensorType(ishape, "int64"))
    u = relay.var("u", relay.ty.TensorType(ishape, dtype))


    z = relay.op.scatter_add(d, i, u, axis)
    func = relay.Function([d, i, u], z)
    compile(func)
main()
