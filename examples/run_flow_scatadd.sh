#!/bin/bash

set -e

OUT_DIR=out_scatadd
run_test() {
    python3 gen_scatter_add_graph_and_params.py
    ../build/utvm_staticrt_codegen $OUT_DIR/graph.json $OUT_DIR/params.bin $OUT_DIR/staticrt.c $(cat $OUT_DIR/workspace_size.txt)

    TVM_DIR=$(grep TVM_DIR ../build/CMakeCache.txt)

    cd target_src_scatadd
    mkdir -p build
    cd build
    cmake -D$TVM_DIR -DCMAKE_BUILD_TYPE=Debug ..
    make -j`nproc`

    ./example_target_src

    cd ../..
}

#run_test cifar10.tflite
run_test sine_model.tflite
