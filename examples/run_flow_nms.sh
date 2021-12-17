#!/bin/bash
set -e

LLC=/home/kobeyu/workspace/pllab_tvm_rvp/toolchain/build-llvm-rvp/llvm-rvp/bin/llc

OUT_FDR="out_nms"

run_test() {
    python3 gen_nms_graph_and_params.py
    ${LLC} --march="riscv64" --mattr=+F,+M out_nms/nms.ll -o out_nms/nms.s
    #${LLC} $OUT_FDR/nms.ll -o $OUT_FDR/nms.s
    ../build/utvm_staticrt_codegen $OUT_FDR/nms.graph $OUT_FDR/nms.params $OUT_FDR/staticrt.c 100

    TVM_DIR=$(grep TVM_DIR ../build/CMakeCache.txt)

    cd target_src_nms
    mkdir -p build
    cd build
    cmake -D$TVM_DIR -DCMAKE_BUILD_TYPE=Debug ..
    make -j`nproc`

    #./example_target_src

    #cd ../..
}

mkdir -p $OUT_FDR

#run_test cifar10.tflite
run_test sine_model.tflite
