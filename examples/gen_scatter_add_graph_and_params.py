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

OUT_DIR='out_scatadd'
def compile_c(func):

    ll_tgt = tvm.target.target.micro("host")

    graph, lib, params = relay.build(func, target=ll_tgt)
    c_mod = relay.build(func, target=ll_tgt, params=params)
    c_params = c_mod.get_graph_json()
    #export_model_library_format(c_mod, OUT_DIR + model_name + "archive.tar")

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


    if os.path.exists(os.path.join(OUT_DIR, "params.bin")):
        shutil.rmtree(OUT_DIR)

    shutil.copytree(os.path.join(mlfDir, "codegen", "host", "src"), OUT_DIR)
    # TODO: remove this temporary workaround for old tvm version
    legacy = False
    if os.path.exists(os.path.join(mlfDir, "src", "relay.txt")):
        shutil.copy2(os.path.join(mlfDir, "src", "relay.txt"), os.path.join(OUT_DIR, "relay.txt"))
    else:
        legacy = True
        shutil.copy2(os.path.join(mlfDir, "relay.txt"), os.path.join(OUT_DIR, "relay.txt"))
    shutil.copy2(os.path.join(mlfDir, "metadata.json"), os.path.join(OUT_DIR, "metadata.json"))

    if graph:
        with open(os.path.join(OUT_DIR, "graph.json"), "w") as f:
            f.write(graph)

    with open(os.path.join(OUT_DIR, "metadata.json")) as json_f:
        metadata = json.load(json_f)

    with open(os.path.join(OUT_DIR, "params.bin"), "wb") as f:
        f.write(relay.save_param_dict(params))
    with open(os.path.join(OUT_DIR, "workspace_size.txt"), "w") as f:
        f.write(str(workspaceBytes))

def compile_ll(func):
    #ll_tgt = 'llvm -mtriple=riscv64-unknown-elf-gnu -mcpu=generic-rv64 -mfloat-abi=hard'
    ll_tgt = 'llvm -mtriple=riscv64-unknown-elf-gnu  --system-lib'
    #ll_tgt = 'llvm' #x86
    graph, lib, params = relay.build(func, target=ll_tgt)
    if not os.path.exists(OUT_DIR):
        os.mkdir(OUT_DIR)

    with open(OUT_DIR + '/lib.ll', 'w') as _f:
        _f.write(lib.get_source())

    with open(OUT_DIR + '/graph.json', 'w') as _f:
        _f.write(graph)

    with open(OUT_DIR + '/params.bin', 'wb') as _f:
        _f.write(relay.save_param_dict(params))



def main():
    dshape = (10,)
    ishape = (10,)
    dtype = "int32"
    axis = 0

    d = relay.var("d", relay.ty.TensorType(dshape, dtype))
    i = relay.var("i", relay.ty.TensorType(ishape, "int64"))
    u = relay.var("u", relay.ty.TensorType(ishape, dtype))


    z = relay.op.scatter_add(d, i, u, axis)
    func = relay.Function([d, i, u], z)
    compile_c(func)
    #compile_ll(func)

main()
