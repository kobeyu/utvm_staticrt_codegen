#!/bin/bash

set -e

OUT_DIR=out_topk
LLC=/home/kobeyu/workspace/pllab_tvm_rvp/toolchain/build-llvm-rvp/llvm-rvp/bin/llc
run_test() {
    python3 gen_topk_graph_and_params.py
    ../build/utvm_staticrt_codegen $OUT_DIR/graph.json $OUT_DIR/params.bin $OUT_DIR/staticrt.c $(cat $OUT_DIR/workspace_size.txt)

    if [ -f $OUT_DIR/lib.ll ]; then
        $LLC $OUT_DIR/lib.ll
    fi
    TVM_DIR=$(grep TVM_DIR ../build/CMakeCache.txt)

    cd target_src_topk
    mkdir -p build
    cd build
    cmake -D$TVM_DIR -DCMAKE_BUILD_TYPE=Debug ..
    make -j`nproc`

    ./example_target_src

    cd ../..
}

run_test
