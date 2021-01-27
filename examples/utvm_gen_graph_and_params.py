import os
import sys
import logging
import shutil

import numpy as np
from matplotlib import pyplot as plt

import tvm
import tvm.micro
from tvm import te
from tvm import relay
from tvm import ir
from tvm import autotvm
from tvm.contrib import graph_runtime

from tflite.TensorType import TensorType as TType

import compiler_riscv
import codegen


class TensorInfo:
    def __init__(self, t):
        self.name = t.Name().decode()

        typeLookup = {
            TType.FLOAT32: "float32",
            TType.UINT8: "uint8",
            TType.INT8: "int8"
        }
        self.ty = typeLookup[t.Type()]
        assert self.ty != ""

        shape = tuple([t.Shape(si) for si in range(0, t.ShapeLength())])
        self.shape = shape


class ModelInfo:
    def __init__(self, model):
        assert model.SubgraphsLength() == 1
        g = model.Subgraphs(0)

        self.inTensors = []
        for i in range(0, g.InputsLength()):
            t = g.Tensors(g.Inputs(i))
            self.inTensors.append(TensorInfo(t))

        self.outTensors = []
        for i in range(0, g.OutputsLength()):
            t = g.Tensors(g.Outputs(i))
            self.outTensors.append(TensorInfo(t))


class TVMFlow:
    def __init__(self):
        self.opt_level = 3
        self.local = False
        if self.local:
            self.target = "llvm"
        else:
            self.target = tvm.target.Target("c -mcpu=rv32gc -runtime=c --system-lib -model=unknown")


    def loadModel(self, path):
        print("### TVMFlow.loadModel")

        modelBuf = open(path, "rb").read()

        import tflite
        tflModel = tflite.Model.GetRootAsModel(modelBuf, 0)

        shapes = {}
        types = {}

        self.modelInfo = ModelInfo(tflModel)
        for t in self.modelInfo.inTensors:
            print("Input", '"' + t.name + '"', t.ty, t.shape)
            shapes[t.name] = t.shape
            types[t.name] = t.ty

        self.mod, self.params = relay.frontend.from_tflite(tflModel, shape_dict=shapes, dtype_dict=types)


    def build(self):
        print("### TVMFlow.build")

        if self.local:
            cfg = {}
        else:
            cfg = { "tir.disable_vectorize": True }

        with tvm.transform.PassContext(opt_level=self.opt_level, config=cfg):
            self.graph, c_mod, self.c_params = relay.build(self.mod, self.target, params=self.params)

        if not self.local:
            # Cross compile
            self.workspace = tvm.micro.Workspace(debug=True)
            opts = tvm.micro.default_options(os.path.join(tvm.micro.CRT_ROOT_DIR, "host"))
            self.compiler = compiler_riscv.Compiler_RISCV(target=self.target)
            self.micro_binary = tvm.micro.build_static_runtime(self.workspace, self.compiler, c_mod, lib_opts=opts["bin_opts"], bin_opts=opts["bin_opts"])

            # Prepare target data
            outDir = "out"
            os.makedirs(outDir, exist_ok=True)
            shutil.copy2(self.workspace.path + "/src/module/module.c", outDir + "/kernels.c")
            with open(outDir + "/graph.json", "w") as f:
                f.write(self.graph)
            with open(outDir + "/params.bin", "wb") as f:
                f.write(relay.save_param_dict(self.c_params))
            codegen.generateTargetCode(outDir + "/runtime_wrapper.c", self.graph, relay.save_param_dict(self.c_params), self.modelInfo)


def main():
    if len(sys.argv) != 2:
        print("Usage:", sys.argv[0], "model.tflite")
        sys.exit(1)

    flow = TVMFlow()
    flow.loadModel(sys.argv[1])
    flow.build()

if __name__ == "__main__":
    main()
