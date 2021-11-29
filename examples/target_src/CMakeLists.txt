CMAKE_MINIMUM_REQUIRED(VERSION 3.1 FATAL_ERROR)
PROJECT(example_target_src C ASM)

SET(CMAKE_C_COMPILER "/home/kobeyu/workspace/pllab_tvm_rvp/toolchain/riscv64-unknown-elf/bin/riscv64-unknown-elf-gcc")
SET(CMAKE_CXX_COMPILER "/home/kobeyu/workspace/pllab_tvm_rvp/toolchain/riscv64-unknown-elf/bin/riscv64-unknown-elf-g++")

SET(CMAKE_EXE_LINKER_FLAGS "-static")

INCLUDE(../../cmake/LinkTVM.cmake)

# Enable DBGPRINTF() in DEBUG mode (`cmake -DCMAKE_BUILD_TYPE=Debug ..`)
SET(CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS_DEBUG} -D_DEBUG -DTVMCG_DEBUG_ALLOCATIONS")
SET(CMAKE_C_FLAGS_DEBUG "${CMAKE_C_FLAGS_DEBUG} -D_DEBUG -DTVMCG_DEBUG_ALLOCATIONS")

SET(TVM_OUT_DIR ../out)
set_property(SOURCE test.s APPEND PROPERTY COMPILE_OPTIONS "-x" "assembler-with-cpp")

FILE(GLOB TVM_KERNELS
    # ${TVM_OUT_DIR}/lib*.c
    # ${TVM_OUT_DIR}/lib*.cc
    # New model will have model name prefix
    # ${TVM_OUT_DIR}/*_lib*.c
    # ${TVM_OUT_DIR}/*_lib*.cc
)

ADD_EXECUTABLE(${PROJECT_NAME}
    main.c
    test.s
    ${TVM_OUT_DIR}/staticrt.c
    ${TVM_KERNELS}
)

#remove flag -rdynamic to build elf on bare-matel
SET(CMAKE_SHARED_LIBRARY_LINK_C_FLAGS)
TARGET_LINK_LIBRARIES(${PROJECT_NAME} PRIVATE tvm_static_rt)
TARGET_INCLUDE_DIRECTORIES(${PROJECT_NAME} PUBLIC ${PROJECT_SOURCE_DIR})
