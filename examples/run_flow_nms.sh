#!/bin/bash
set -e

LLC=/home/kobeyu/workspace/pllab_tvm_rvp/toolchain/build-llvm-rvp/llvm-rvp/bin/llc

OUT_DIR="out_nms"

run_test() {
    python3 gen_nms_graph_and_params.py
    #${LLC} --march="riscv64" --mattr=+F,+M out_nms/nms.ll -o out_nms/nms.s
    #${LLC} $OUT_DIR/nms.ll -o $OUT_DIR/nms.s
    ../build/utvm_staticrt_codegen $OUT_DIR/graph.json $OUT_DIR/params.bin $OUT_DIR/staticrt.c $(cat $OUT_DIR/workspace_size.txt)

    TVM_DIR=$(grep TVM_DIR ../build/CMakeCache.txt)

    cd target_src_nms
    mkdir -p build
    cd build
    cmake -D$TVM_DIR -DCMAKE_BUILD_TYPE=Debug ..
    make -j`nproc`

    #./example_target_src

    #cd ../..
}


#run_test cifar10.tflite
run_test
