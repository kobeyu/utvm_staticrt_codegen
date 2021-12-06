; ModuleID = 'TVMMod'
source_filename = "TVMMod"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"
target triple = "riscv64-unknown-elf-gnu"

%0 = type { double }
%1 = type { i32*, i32 }
%2 = type { i8*, %3, i32, %4, i64*, i64*, i64 }
%3 = type { i32, i32 }
%4 = type { i8, i8, i16 }
%5 = type { i8*, i8*, float* }
%6 = type { i8*, i8*, i8*, float* }
%7 = type { i32*, i8*, i8*, i32*, float* }
%8 = type { i8*, i32*, i8*, float* }

@__tvm_module_ctx = linkonce dllexport local_unnamed_addr global i8* null, align 8
@__TVMFuncCall = linkonce dllexport local_unnamed_addr global i32 (i8*, %0*, i32*, i32, %0*, i32*)* null, align 8
@__TVMBackendGetFuncFromEnv = linkonce dllexport local_unnamed_addr global i32 (i8*, i8*, i8**)* null, align 8
@__TVMAPISetLastError = linkonce dllexport local_unnamed_addr global void (i8*)* null, align 8
@__TVMBackendParallelLaunch = linkonce dllexport local_unnamed_addr global i32 (i32 (i32, %1*, i8*)*, i8*, i32)* null, align 8
@.str = private constant [100 x i8] c"Assert fail: (num_args == 6), tvmgen_default_fused_vision_non_max_suppression: num_args should be 6\00", align 1
@.str.1 = private constant [175 x i8] c"Assert fail: ((((arg0.code == 3) || (arg0.code == 13)) || (arg0.code == 7)) || (arg0.code == 4)), tvmgen_default_fused_vision_non_max_suppression: Expect arg[0] to be pointer\00", align 1
@.str.2 = private constant [175 x i8] c"Assert fail: ((((arg1.code == 3) || (arg1.code == 13)) || (arg1.code == 7)) || (arg1.code == 4)), tvmgen_default_fused_vision_non_max_suppression: Expect arg[1] to be pointer\00", align 1
@.str.3 = private constant [175 x i8] c"Assert fail: ((((arg2.code == 3) || (arg2.code == 13)) || (arg2.code == 7)) || (arg2.code == 4)), tvmgen_default_fused_vision_non_max_suppression: Expect arg[2] to be pointer\00", align 1
@.str.4 = private constant [175 x i8] c"Assert fail: ((((arg3.code == 3) || (arg3.code == 13)) || (arg3.code == 7)) || (arg3.code == 4)), tvmgen_default_fused_vision_non_max_suppression: Expect arg[3] to be pointer\00", align 1
@.str.5 = private constant [175 x i8] c"Assert fail: ((((arg4.code == 3) || (arg4.code == 13)) || (arg4.code == 7)) || (arg4.code == 4)), tvmgen_default_fused_vision_non_max_suppression: Expect arg[4] to be pointer\00", align 1
@.str.6 = private constant [175 x i8] c"Assert fail: ((((arg5.code == 3) || (arg5.code == 13)) || (arg5.code == 7)) || (arg5.code == 4)), tvmgen_default_fused_vision_non_max_suppression: Expect arg[5] to be pointer\00", align 1
@.str.7 = private constant [85 x i8] c"Assert fail: (3 == tir.tvm_struct_get(arg0, 0, 4)), arg0.ndim is expected to equal 3\00", align 1
@.str.8 = private constant [198 x i8] c"Assert fail: (((tir.tvm_struct_get(arg0, 0, 5) == (uint8)2) && (tir.tvm_struct_get(arg0, 0, 6) == (uint8)32)) && (tir.tvm_struct_get(arg0, 0, 7) == (uint16)1)), arg0.dtype is expected to be float32\00", align 1
@.str.9 = private constant [124 x i8] c"Assert fail: (1 == int32(arg0.shape[0])), Argument arg0.shape[0] has an unsatisfied constraint: (1 == int32(arg0.shape[0]))\00", align 1
@.str.10 = private constant [124 x i8] c"Assert fail: (5 == int32(arg0.shape[1])), Argument arg0.shape[1] has an unsatisfied constraint: (5 == int32(arg0.shape[1]))\00", align 1
@.str.11 = private constant [124 x i8] c"Assert fail: (6 == int32(arg0.shape[2])), Argument arg0.shape[2] has an unsatisfied constraint: (6 == int32(arg0.shape[2]))\00", align 1
@.str.12 = private constant [158 x i8] c"Assert fail: (((1 == int32(arg0.strides[2])) && (6 == int32(arg0.strides[1]))) && (30 == int32(arg0.strides[0]))), arg0.strides: expected to be compact array\00", align 1
@.str.13 = private constant [163 x i8] c"Assert fail: ((uint64)0 == tir.tvm_struct_get(arg0, 0, 8)), Argument arg0.byte_offset has an unsatisfied constraint: ((uint64)0 == tir.tvm_struct_get(arg0, 0, 8))\00", align 1
@.str.14 = private constant [149 x i8] c"Assert fail: (1 == tir.tvm_struct_get(arg0, 0, 10)), Argument arg0.device_type has an unsatisfied constraint: (1 == tir.tvm_struct_get(arg0, 0, 10))\00", align 1
@.str.15 = private constant [85 x i8] c"Assert fail: (1 == tir.tvm_struct_get(arg1, 0, 4)), arg1.ndim is expected to equal 1\00", align 1
@.str.16 = private constant [196 x i8] c"Assert fail: (((tir.tvm_struct_get(arg1, 0, 5) == (uint8)0) && (tir.tvm_struct_get(arg1, 0, 6) == (uint8)32)) && (tir.tvm_struct_get(arg1, 0, 7) == (uint16)1)), arg1.dtype is expected to be int32\00", align 1
@.str.17 = private constant [124 x i8] c"Assert fail: (1 == int32(arg1.shape[0])), Argument arg1.shape[0] has an unsatisfied constraint: (1 == int32(arg1.shape[0]))\00", align 1
@.str.18 = private constant [87 x i8] c"Assert fail: (1 == int32(arg1.strides[0])), arg1.strides: expected to be compact array\00", align 1
@.str.19 = private constant [163 x i8] c"Assert fail: ((uint64)0 == tir.tvm_struct_get(arg1, 0, 8)), Argument arg1.byte_offset has an unsatisfied constraint: ((uint64)0 == tir.tvm_struct_get(arg1, 0, 8))\00", align 1
@.str.20 = private constant [149 x i8] c"Assert fail: (1 == tir.tvm_struct_get(arg1, 0, 10)), Argument arg1.device_type has an unsatisfied constraint: (1 == tir.tvm_struct_get(arg1, 0, 10))\00", align 1
@.str.21 = private constant [155 x i8] c"Assert fail: (dev_id == tir.tvm_struct_get(arg1, 0, 9)), Argument arg1.device_id has an unsatisfied constraint: (dev_id == tir.tvm_struct_get(arg1, 0, 9))\00", align 1
@.str.22 = private constant [85 x i8] c"Assert fail: (2 == tir.tvm_struct_get(arg2, 0, 4)), arg2.ndim is expected to equal 2\00", align 1
@.str.23 = private constant [196 x i8] c"Assert fail: (((tir.tvm_struct_get(arg2, 0, 5) == (uint8)0) && (tir.tvm_struct_get(arg2, 0, 6) == (uint8)32)) && (tir.tvm_struct_get(arg2, 0, 7) == (uint16)1)), arg2.dtype is expected to be int32\00", align 1
@.str.24 = private constant [124 x i8] c"Assert fail: (1 == int32(arg2.shape[0])), Argument arg2.shape[0] has an unsatisfied constraint: (1 == int32(arg2.shape[0]))\00", align 1
@.str.25 = private constant [124 x i8] c"Assert fail: (5 == int32(arg2.shape[1])), Argument arg2.shape[1] has an unsatisfied constraint: (5 == int32(arg2.shape[1]))\00", align 1
@.str.26 = private constant [122 x i8] c"Assert fail: ((1 == int32(arg2.strides[1])) && (5 == int32(arg2.strides[0]))), arg2.strides: expected to be compact array\00", align 1
@.str.27 = private constant [163 x i8] c"Assert fail: ((uint64)0 == tir.tvm_struct_get(arg2, 0, 8)), Argument arg2.byte_offset has an unsatisfied constraint: ((uint64)0 == tir.tvm_struct_get(arg2, 0, 8))\00", align 1
@.str.28 = private constant [149 x i8] c"Assert fail: (1 == tir.tvm_struct_get(arg2, 0, 10)), Argument arg2.device_type has an unsatisfied constraint: (1 == tir.tvm_struct_get(arg2, 0, 10))\00", align 1
@.str.29 = private constant [155 x i8] c"Assert fail: (dev_id == tir.tvm_struct_get(arg2, 0, 9)), Argument arg2.device_id has an unsatisfied constraint: (dev_id == tir.tvm_struct_get(arg2, 0, 9))\00", align 1
@.str.30 = private constant [85 x i8] c"Assert fail: (0 == tir.tvm_struct_get(arg3, 0, 4)), arg3.ndim is expected to equal 0\00", align 1
@.str.31 = private constant [196 x i8] c"Assert fail: (((tir.tvm_struct_get(arg3, 0, 5) == (uint8)0) && (tir.tvm_struct_get(arg3, 0, 6) == (uint8)32)) && (tir.tvm_struct_get(arg3, 0, 7) == (uint16)1)), arg3.dtype is expected to be int32\00", align 1
@.str.32 = private constant [163 x i8] c"Assert fail: ((uint64)0 == tir.tvm_struct_get(arg3, 0, 8)), Argument arg3.byte_offset has an unsatisfied constraint: ((uint64)0 == tir.tvm_struct_get(arg3, 0, 8))\00", align 1
@.str.33 = private constant [149 x i8] c"Assert fail: (1 == tir.tvm_struct_get(arg3, 0, 10)), Argument arg3.device_type has an unsatisfied constraint: (1 == tir.tvm_struct_get(arg3, 0, 10))\00", align 1
@.str.34 = private constant [155 x i8] c"Assert fail: (dev_id == tir.tvm_struct_get(arg3, 0, 9)), Argument arg3.device_id has an unsatisfied constraint: (dev_id == tir.tvm_struct_get(arg3, 0, 9))\00", align 1
@.str.35 = private constant [85 x i8] c"Assert fail: (0 == tir.tvm_struct_get(arg4, 0, 4)), arg4.ndim is expected to equal 0\00", align 1
@.str.36 = private constant [198 x i8] c"Assert fail: (((tir.tvm_struct_get(arg4, 0, 5) == (uint8)2) && (tir.tvm_struct_get(arg4, 0, 6) == (uint8)32)) && (tir.tvm_struct_get(arg4, 0, 7) == (uint16)1)), arg4.dtype is expected to be float32\00", align 1
@.str.37 = private constant [163 x i8] c"Assert fail: ((uint64)0 == tir.tvm_struct_get(arg4, 0, 8)), Argument arg4.byte_offset has an unsatisfied constraint: ((uint64)0 == tir.tvm_struct_get(arg4, 0, 8))\00", align 1
@.str.38 = private constant [149 x i8] c"Assert fail: (1 == tir.tvm_struct_get(arg4, 0, 10)), Argument arg4.device_type has an unsatisfied constraint: (1 == tir.tvm_struct_get(arg4, 0, 10))\00", align 1
@.str.39 = private constant [155 x i8] c"Assert fail: (dev_id == tir.tvm_struct_get(arg4, 0, 9)), Argument arg4.device_id has an unsatisfied constraint: (dev_id == tir.tvm_struct_get(arg4, 0, 9))\00", align 1
@.str.40 = private constant [85 x i8] c"Assert fail: (3 == tir.tvm_struct_get(arg5, 0, 4)), arg5.ndim is expected to equal 3\00", align 1
@.str.41 = private constant [198 x i8] c"Assert fail: (((tir.tvm_struct_get(arg5, 0, 5) == (uint8)2) && (tir.tvm_struct_get(arg5, 0, 6) == (uint8)32)) && (tir.tvm_struct_get(arg5, 0, 7) == (uint16)1)), arg5.dtype is expected to be float32\00", align 1
@.str.42 = private constant [124 x i8] c"Assert fail: (1 == int32(arg5.shape[0])), Argument arg5.shape[0] has an unsatisfied constraint: (1 == int32(arg5.shape[0]))\00", align 1
@.str.43 = private constant [124 x i8] c"Assert fail: (5 == int32(arg5.shape[1])), Argument arg5.shape[1] has an unsatisfied constraint: (5 == int32(arg5.shape[1]))\00", align 1
@.str.44 = private constant [124 x i8] c"Assert fail: (6 == int32(arg5.shape[2])), Argument arg5.shape[2] has an unsatisfied constraint: (6 == int32(arg5.shape[2]))\00", align 1
@.str.45 = private constant [158 x i8] c"Assert fail: (((1 == int32(arg5.strides[2])) && (6 == int32(arg5.strides[1]))) && (30 == int32(arg5.strides[0]))), arg5.strides: expected to be compact array\00", align 1
@.str.46 = private constant [163 x i8] c"Assert fail: ((uint64)0 == tir.tvm_struct_get(arg5, 0, 8)), Argument arg5.byte_offset has an unsatisfied constraint: ((uint64)0 == tir.tvm_struct_get(arg5, 0, 8))\00", align 1
@.str.47 = private constant [149 x i8] c"Assert fail: (1 == tir.tvm_struct_get(arg5, 0, 10)), Argument arg5.device_type has an unsatisfied constraint: (1 == tir.tvm_struct_get(arg5, 0, 10))\00", align 1
@.str.48 = private constant [155 x i8] c"Assert fail: (dev_id == tir.tvm_struct_get(arg5, 0, 9)), Argument arg5.device_id has an unsatisfied constraint: (dev_id == tir.tvm_struct_get(arg5, 0, 9))\00", align 1
@.tvm_func.tvm.contrib.sort.argsort_nms = internal unnamed_addr global i8* null, align 8
@.str.49 = private constant [29 x i8] c"tvm.contrib.sort.argsort_nms\00", align 1
@__tvm_main__ = weak dllexport local_unnamed_addr constant [48 x i8] c"tvmgen_default_fused_vision_non_max_suppression\00", align 1
@llvm.global_ctors = appending global [0 x { i32, void ()*, i8* }] zeroinitializer

define dllexport i32 @tvmgen_default_fused_vision_non_max_suppression(i8* noalias nocapture readonly, i8* noalias nocapture readonly, i32, i8* noalias nocapture readnone, i8* noalias nocapture readnone, i8* noalias nocapture readnone) local_unnamed_addr {
entry:
  %6 = alloca [5 x i64], align 8
  %7 = alloca [3 x %2], align 8
  %8 = alloca [6 x %0], align 8
  %9 = alloca [6 x i32], align 4
  %.sub132 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 0
  %.sub131 = getelementptr inbounds [6 x %0], [6 x %0]* %8, i64 0, i64 0
  %.sub130 = getelementptr inbounds [3 x %2], [3 x %2]* %7, i64 0, i64 0
  %.sub = getelementptr inbounds [5 x i64], [5 x i64]* %6, i64 0, i64 0
  %10 = icmp eq i32 %2, 6
  br i1 %10, label %assert_end, label %assert_fail, !prof !5

assert_fail:                                      ; preds = %entry
  %11 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %11(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str, i64 0, i64 0))
  ret i32 -1

assert_end:                                       ; preds = %entry
  %12 = bitcast i8* %0 to %2**
  %13 = load %2*, %2** %12, align 8
  %14 = bitcast i8* %1 to i32*
  %15 = load i32, i32* %14, align 4, !tbaa !9
  %16 = getelementptr inbounds i8, i8* %0, i64 8
  %17 = bitcast i8* %16 to %2**
  %18 = load %2*, %2** %17, align 8
  %19 = getelementptr inbounds i8, i8* %1, i64 4
  %20 = bitcast i8* %19 to i32*
  %21 = load i32, i32* %20, align 4, !tbaa !23
  %22 = getelementptr inbounds i8, i8* %0, i64 16
  %23 = bitcast i8* %22 to %2**
  %24 = load %2*, %2** %23, align 8
  %25 = getelementptr inbounds i8, i8* %1, i64 8
  %26 = bitcast i8* %25 to i32*
  %27 = load i32, i32* %26, align 4, !tbaa !25
  %28 = getelementptr inbounds i8, i8* %0, i64 24
  %29 = bitcast i8* %28 to %2**
  %30 = load %2*, %2** %29, align 8
  %31 = getelementptr inbounds i8, i8* %1, i64 12
  %32 = bitcast i8* %31 to i32*
  %33 = load i32, i32* %32, align 4, !tbaa !28
  %34 = getelementptr inbounds i8, i8* %0, i64 32
  %35 = bitcast i8* %34 to %2**
  %36 = load %2*, %2** %35, align 8
  %37 = getelementptr inbounds i8, i8* %1, i64 16
  %38 = bitcast i8* %37 to i32*
  %39 = load i32, i32* %38, align 4, !tbaa !30
  %40 = getelementptr inbounds i8, i8* %0, i64 40
  %41 = bitcast i8* %40 to %2**
  %42 = load %2*, %2** %41, align 8
  %43 = getelementptr inbounds i8, i8* %1, i64 20
  %44 = bitcast i8* %43 to i32*
  %45 = load i32, i32* %44, align 4, !tbaa !34
  %46 = getelementptr inbounds %2, %2* %13, i64 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %ptrint = ptrtoint i8* %47 to i64
  %maskedptr = and i64 %ptrint, 127
  %maskcond = icmp eq i64 %maskedptr, 0
  tail call void @llvm.assume(i1 %maskcond)
  %48 = getelementptr inbounds %2, %2* %13, i64 0, i32 4
  %49 = load i64*, i64** %48, align 8
  %50 = getelementptr inbounds %2, %2* %13, i64 0, i32 5
  %51 = load i64*, i64** %50, align 8
  %52 = getelementptr inbounds %2, %2* %13, i64 0, i32 1, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %2, %2* %18, i64 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %ptrint1 = ptrtoint i8* %55 to i64
  %maskedptr2 = and i64 %ptrint1, 127
  %maskcond3 = icmp eq i64 %maskedptr2, 0
  tail call void @llvm.assume(i1 %maskcond3)
  %56 = getelementptr inbounds %2, %2* %18, i64 0, i32 4
  %57 = load i64*, i64** %56, align 8
  %58 = getelementptr inbounds %2, %2* %18, i64 0, i32 5
  %59 = load i64*, i64** %58, align 8
  %60 = bitcast %2* %24 to i64*
  %61 = load i64, i64* %60, align 8
  %maskedptr5 = and i64 %61, 127
  %maskcond6 = icmp eq i64 %maskedptr5, 0
  tail call void @llvm.assume(i1 %maskcond6)
  %62 = getelementptr inbounds %2, %2* %24, i64 0, i32 4
  %63 = load i64*, i64** %62, align 8
  %64 = getelementptr inbounds %2, %2* %24, i64 0, i32 5
  %65 = load i64*, i64** %64, align 8
  %66 = getelementptr inbounds %2, %2* %30, i64 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %ptrint7 = ptrtoint i8* %67 to i64
  %maskedptr8 = and i64 %ptrint7, 127
  %maskcond9 = icmp eq i64 %maskedptr8, 0
  tail call void @llvm.assume(i1 %maskcond9)
  %68 = getelementptr inbounds %2, %2* %36, i64 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %ptrint10 = ptrtoint i8* %69 to i64
  %maskedptr11 = and i64 %ptrint10, 127
  %maskcond12 = icmp eq i64 %maskedptr11, 0
  tail call void @llvm.assume(i1 %maskcond12)
  %70 = getelementptr inbounds %2, %2* %42, i64 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %ptrint13 = ptrtoint i8* %71 to i64
  %maskedptr14 = and i64 %ptrint13, 127
  %maskcond15 = icmp eq i64 %maskedptr14, 0
  tail call void @llvm.assume(i1 %maskcond15)
  %72 = getelementptr inbounds %2, %2* %42, i64 0, i32 4
  %73 = load i64*, i64** %72, align 8
  %74 = getelementptr inbounds %2, %2* %42, i64 0, i32 5
  %75 = load i64*, i64** %74, align 8
  switch i32 %15, label %assert_fail16 [
    i32 13, label %assert_end17
    i32 7, label %assert_end17
    i32 4, label %assert_end17
    i32 3, label %assert_end17
  ]

assert_fail16:                                    ; preds = %assert_end
  %76 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %76(i8* getelementptr inbounds ([175 x i8], [175 x i8]* @.str.1, i64 0, i64 0))
  ret i32 -1

assert_end17:                                     ; preds = %assert_end, %assert_end, %assert_end, %assert_end
  switch i32 %21, label %assert_fail18 [
    i32 13, label %assert_end19
    i32 7, label %assert_end19
    i32 4, label %assert_end19
    i32 3, label %assert_end19
  ]

assert_fail18:                                    ; preds = %assert_end17
  %77 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %77(i8* getelementptr inbounds ([175 x i8], [175 x i8]* @.str.2, i64 0, i64 0))
  ret i32 -1

assert_end19:                                     ; preds = %assert_end17, %assert_end17, %assert_end17, %assert_end17
  switch i32 %27, label %assert_fail20 [
    i32 13, label %assert_end21
    i32 7, label %assert_end21
    i32 4, label %assert_end21
    i32 3, label %assert_end21
  ]

assert_fail20:                                    ; preds = %assert_end19
  %78 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %78(i8* getelementptr inbounds ([175 x i8], [175 x i8]* @.str.3, i64 0, i64 0))
  ret i32 -1

assert_end21:                                     ; preds = %assert_end19, %assert_end19, %assert_end19, %assert_end19
  switch i32 %33, label %assert_fail22 [
    i32 13, label %assert_end23
    i32 7, label %assert_end23
    i32 4, label %assert_end23
    i32 3, label %assert_end23
  ]

assert_fail22:                                    ; preds = %assert_end21
  %79 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %79(i8* getelementptr inbounds ([175 x i8], [175 x i8]* @.str.4, i64 0, i64 0))
  ret i32 -1

assert_end23:                                     ; preds = %assert_end21, %assert_end21, %assert_end21, %assert_end21
  switch i32 %39, label %assert_fail24 [
    i32 13, label %assert_end25
    i32 7, label %assert_end25
    i32 4, label %assert_end25
    i32 3, label %assert_end25
  ]

assert_fail24:                                    ; preds = %assert_end23
  %80 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %80(i8* getelementptr inbounds ([175 x i8], [175 x i8]* @.str.5, i64 0, i64 0))
  ret i32 -1

assert_end25:                                     ; preds = %assert_end23, %assert_end23, %assert_end23, %assert_end23
  switch i32 %45, label %assert_fail26 [
    i32 13, label %assert_end27
    i32 7, label %assert_end27
    i32 4, label %assert_end27
    i32 3, label %assert_end27
  ]

assert_fail26:                                    ; preds = %assert_end25
  %81 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %81(i8* getelementptr inbounds ([175 x i8], [175 x i8]* @.str.6, i64 0, i64 0))
  ret i32 -1

assert_end27:                                     ; preds = %assert_end25, %assert_end25, %assert_end25, %assert_end25
  %82 = getelementptr inbounds %2, %2* %13, i64 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = icmp eq i32 %83, 3
  br i1 %84, label %assert_end31, label %assert_fail28, !prof !5

assert_fail28:                                    ; preds = %assert_end27
  %85 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %85(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.7, i64 0, i64 0))
  ret i32 -1

assert_end31:                                     ; preds = %assert_end27
  %86 = getelementptr inbounds %2, %2* %13, i64 0, i32 3, i32 2
  %87 = load i16, i16* %86, align 2
  %88 = icmp eq i16 %87, 1
  %89 = getelementptr inbounds %2, %2* %13, i64 0, i32 3, i32 1
  %90 = load i8, i8* %89, align 1
  %91 = icmp eq i8 %90, 32
  %92 = getelementptr inbounds %2, %2* %13, i64 0, i32 3, i32 0
  %93 = load i8, i8* %92, align 1
  %94 = icmp eq i8 %93, 2
  %95 = and i1 %91, %94
  %96 = and i1 %88, %95
  br i1 %96, label %assert_end33, label %assert_fail32, !prof !5

assert_fail32:                                    ; preds = %assert_end31
  %97 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %97(i8* getelementptr inbounds ([198 x i8], [198 x i8]* @.str.8, i64 0, i64 0))
  ret i32 -1

assert_end33:                                     ; preds = %assert_end31
  %98 = load i64, i64* %49, align 8, !tbaa !36
  %99 = trunc i64 %98 to i32
  %100 = icmp eq i32 %99, 1
  br i1 %100, label %assert_end35, label %assert_fail34, !prof !5

assert_fail34:                                    ; preds = %assert_end33
  %101 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %101(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.9, i64 0, i64 0))
  ret i32 -1

assert_end35:                                     ; preds = %assert_end33
  %102 = getelementptr inbounds i64, i64* %49, i64 1
  %103 = load i64, i64* %102, align 8, !tbaa !50
  %104 = trunc i64 %103 to i32
  %105 = icmp eq i32 %104, 5
  br i1 %105, label %assert_end37, label %assert_fail36, !prof !5

assert_fail36:                                    ; preds = %assert_end35
  %106 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %106(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.10, i64 0, i64 0))
  ret i32 -1

assert_end37:                                     ; preds = %assert_end35
  %107 = getelementptr inbounds i64, i64* %49, i64 2
  %108 = load i64, i64* %107, align 8, !tbaa !52
  %109 = trunc i64 %108 to i32
  %110 = icmp eq i32 %109, 6
  br i1 %110, label %assert_end39, label %assert_fail38, !prof !5

assert_fail38:                                    ; preds = %assert_end37
  %111 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %111(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.11, i64 0, i64 0))
  ret i32 -1

assert_end39:                                     ; preds = %assert_end37
  %112 = icmp eq i64* %51, null
  br i1 %112, label %if_end, label %if_then, !prof !55

if_then:                                          ; preds = %assert_end39
  %113 = load i64, i64* %51, align 8, !tbaa !56
  %114 = trunc i64 %113 to i32
  %115 = icmp eq i32 %114, 30
  %116 = getelementptr inbounds i64, i64* %51, i64 1
  %117 = load i64, i64* %116, align 8, !tbaa !70
  %118 = trunc i64 %117 to i32
  %119 = icmp eq i32 %118, 6
  %120 = getelementptr inbounds i64, i64* %51, i64 2
  %121 = load i64, i64* %120, align 8, !tbaa !72
  %122 = trunc i64 %121 to i32
  %123 = icmp eq i32 %122, 1
  %124 = and i1 %119, %123
  %125 = and i1 %115, %124
  br i1 %125, label %if_end, label %assert_fail40, !prof !5

if_end:                                           ; preds = %assert_end39, %if_then
  %126 = getelementptr inbounds %2, %2* %13, i64 0, i32 6
  %127 = load i64, i64* %126, align 8
  %128 = icmp eq i64 %127, 0
  br i1 %128, label %assert_end43, label %assert_fail42, !prof !5

assert_fail40:                                    ; preds = %if_then
  %129 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %129(i8* getelementptr inbounds ([158 x i8], [158 x i8]* @.str.12, i64 0, i64 0))
  ret i32 -1

assert_fail42:                                    ; preds = %if_end
  %130 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %130(i8* getelementptr inbounds ([163 x i8], [163 x i8]* @.str.13, i64 0, i64 0))
  ret i32 -1

assert_end43:                                     ; preds = %if_end
  %131 = getelementptr inbounds %2, %2* %13, i64 0, i32 1, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = icmp eq i32 %132, 1
  br i1 %133, label %assert_end45, label %assert_fail44, !prof !5

assert_fail44:                                    ; preds = %assert_end43
  %134 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %134(i8* getelementptr inbounds ([149 x i8], [149 x i8]* @.str.14, i64 0, i64 0))
  ret i32 -1

assert_end45:                                     ; preds = %assert_end43
  %135 = getelementptr inbounds %2, %2* %18, i64 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = icmp eq i32 %136, 1
  br i1 %137, label %assert_end49, label %assert_fail46, !prof !5

assert_fail46:                                    ; preds = %assert_end45
  %138 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %138(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.15, i64 0, i64 0))
  ret i32 -1

assert_end49:                                     ; preds = %assert_end45
  %139 = getelementptr inbounds %2, %2* %18, i64 0, i32 3, i32 2
  %140 = load i16, i16* %139, align 2
  %141 = icmp eq i16 %140, 1
  %142 = getelementptr inbounds %2, %2* %18, i64 0, i32 3, i32 1
  %143 = load i8, i8* %142, align 1
  %144 = icmp eq i8 %143, 32
  %145 = getelementptr inbounds %2, %2* %18, i64 0, i32 3, i32 0
  %146 = load i8, i8* %145, align 1
  %147 = icmp eq i8 %146, 0
  %148 = and i1 %144, %147
  %149 = and i1 %141, %148
  br i1 %149, label %assert_end51, label %assert_fail50, !prof !5

assert_fail50:                                    ; preds = %assert_end49
  %150 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %150(i8* getelementptr inbounds ([196 x i8], [196 x i8]* @.str.16, i64 0, i64 0))
  ret i32 -1

assert_end51:                                     ; preds = %assert_end49
  %151 = load i64, i64* %57, align 8, !tbaa !75
  %152 = trunc i64 %151 to i32
  %153 = icmp eq i32 %152, 1
  br i1 %153, label %assert_end53, label %assert_fail52, !prof !5

assert_fail52:                                    ; preds = %assert_end51
  %154 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %154(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.17, i64 0, i64 0))
  ret i32 -1

assert_end53:                                     ; preds = %assert_end51
  %155 = icmp eq i64* %59, null
  br i1 %155, label %if_end55, label %if_then54, !prof !55

if_then54:                                        ; preds = %assert_end53
  %156 = load i64, i64* %59, align 8, !tbaa !89
  %157 = trunc i64 %156 to i32
  %158 = icmp eq i32 %157, 1
  br i1 %158, label %if_end55, label %assert_fail56, !prof !5

if_end55:                                         ; preds = %assert_end53, %if_then54
  %159 = getelementptr inbounds %2, %2* %18, i64 0, i32 6
  %160 = load i64, i64* %159, align 8
  %161 = icmp eq i64 %160, 0
  br i1 %161, label %assert_end59, label %assert_fail58, !prof !5

assert_fail56:                                    ; preds = %if_then54
  %162 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %162(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.18, i64 0, i64 0))
  ret i32 -1

assert_fail58:                                    ; preds = %if_end55
  %163 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %163(i8* getelementptr inbounds ([163 x i8], [163 x i8]* @.str.19, i64 0, i64 0))
  ret i32 -1

assert_end59:                                     ; preds = %if_end55
  %164 = getelementptr inbounds %2, %2* %18, i64 0, i32 1, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = icmp eq i32 %165, 1
  br i1 %166, label %assert_end61, label %assert_fail60, !prof !5

assert_fail60:                                    ; preds = %assert_end59
  %167 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %167(i8* getelementptr inbounds ([149 x i8], [149 x i8]* @.str.20, i64 0, i64 0))
  ret i32 -1

assert_end61:                                     ; preds = %assert_end59
  %168 = getelementptr inbounds %2, %2* %18, i64 0, i32 1, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = icmp eq i32 %53, %169
  br i1 %170, label %assert_end63, label %assert_fail62, !prof !5

assert_fail62:                                    ; preds = %assert_end61
  %171 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %171(i8* getelementptr inbounds ([155 x i8], [155 x i8]* @.str.21, i64 0, i64 0))
  ret i32 -1

assert_end63:                                     ; preds = %assert_end61
  %172 = getelementptr inbounds %2, %2* %24, i64 0, i32 2
  %173 = load i32, i32* %172, align 4
  %174 = icmp eq i32 %173, 2
  br i1 %174, label %assert_end67, label %assert_fail64, !prof !5

assert_fail64:                                    ; preds = %assert_end63
  %175 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %175(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.22, i64 0, i64 0))
  ret i32 -1

assert_end67:                                     ; preds = %assert_end63
  %176 = getelementptr inbounds %2, %2* %24, i64 0, i32 3, i32 2
  %177 = load i16, i16* %176, align 2
  %178 = icmp eq i16 %177, 1
  %179 = getelementptr inbounds %2, %2* %24, i64 0, i32 3, i32 1
  %180 = load i8, i8* %179, align 1
  %181 = icmp eq i8 %180, 32
  %182 = getelementptr inbounds %2, %2* %24, i64 0, i32 3, i32 0
  %183 = load i8, i8* %182, align 1
  %184 = icmp eq i8 %183, 0
  %185 = and i1 %181, %184
  %186 = and i1 %178, %185
  br i1 %186, label %assert_end69, label %assert_fail68, !prof !5

assert_fail68:                                    ; preds = %assert_end67
  %187 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %187(i8* getelementptr inbounds ([196 x i8], [196 x i8]* @.str.23, i64 0, i64 0))
  ret i32 -1

assert_end69:                                     ; preds = %assert_end67
  %188 = load i64, i64* %63, align 8, !tbaa !103
  %189 = trunc i64 %188 to i32
  %190 = icmp eq i32 %189, 1
  br i1 %190, label %assert_end71, label %assert_fail70, !prof !5

assert_fail70:                                    ; preds = %assert_end69
  %191 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %191(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.24, i64 0, i64 0))
  ret i32 -1

assert_end71:                                     ; preds = %assert_end69
  %192 = getelementptr inbounds i64, i64* %63, i64 1
  %193 = load i64, i64* %192, align 8, !tbaa !117
  %194 = trunc i64 %193 to i32
  %195 = icmp eq i32 %194, 5
  br i1 %195, label %assert_end73, label %assert_fail72, !prof !5

assert_fail72:                                    ; preds = %assert_end71
  %196 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %196(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.25, i64 0, i64 0))
  ret i32 -1

assert_end73:                                     ; preds = %assert_end71
  %197 = icmp eq i64* %65, null
  br i1 %197, label %if_end75, label %if_then74, !prof !55

if_then74:                                        ; preds = %assert_end73
  %198 = load i64, i64* %65, align 8, !tbaa !119
  %199 = trunc i64 %198 to i32
  %200 = icmp eq i32 %199, 5
  %201 = getelementptr inbounds i64, i64* %65, i64 1
  %202 = load i64, i64* %201, align 8, !tbaa !133
  %203 = trunc i64 %202 to i32
  %204 = icmp eq i32 %203, 1
  %205 = and i1 %200, %204
  br i1 %205, label %if_end75, label %assert_fail76, !prof !5

if_end75:                                         ; preds = %assert_end73, %if_then74
  %206 = getelementptr inbounds %2, %2* %24, i64 0, i32 6
  %207 = load i64, i64* %206, align 8
  %208 = icmp eq i64 %207, 0
  br i1 %208, label %assert_end79, label %assert_fail78, !prof !5

assert_fail76:                                    ; preds = %if_then74
  %209 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %209(i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str.26, i64 0, i64 0))
  ret i32 -1

assert_fail78:                                    ; preds = %if_end75
  %210 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %210(i8* getelementptr inbounds ([163 x i8], [163 x i8]* @.str.27, i64 0, i64 0))
  ret i32 -1

assert_end79:                                     ; preds = %if_end75
  %211 = getelementptr inbounds %2, %2* %24, i64 0, i32 1, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = icmp eq i32 %212, 1
  br i1 %213, label %assert_end81, label %assert_fail80, !prof !5

assert_fail80:                                    ; preds = %assert_end79
  %214 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %214(i8* getelementptr inbounds ([149 x i8], [149 x i8]* @.str.28, i64 0, i64 0))
  ret i32 -1

assert_end81:                                     ; preds = %assert_end79
  %215 = getelementptr inbounds %2, %2* %24, i64 0, i32 1, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = icmp eq i32 %53, %216
  br i1 %217, label %assert_end83, label %assert_fail82, !prof !5

assert_fail82:                                    ; preds = %assert_end81
  %218 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %218(i8* getelementptr inbounds ([155 x i8], [155 x i8]* @.str.29, i64 0, i64 0))
  ret i32 -1

assert_end83:                                     ; preds = %assert_end81
  %219 = getelementptr inbounds %2, %2* %30, i64 0, i32 2
  %220 = load i32, i32* %219, align 4
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %assert_end87, label %assert_fail84, !prof !5

assert_fail84:                                    ; preds = %assert_end83
  %222 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %222(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.30, i64 0, i64 0))
  ret i32 -1

assert_end87:                                     ; preds = %assert_end83
  %223 = getelementptr inbounds %2, %2* %30, i64 0, i32 3, i32 2
  %224 = load i16, i16* %223, align 2
  %225 = icmp eq i16 %224, 1
  %226 = getelementptr inbounds %2, %2* %30, i64 0, i32 3, i32 1
  %227 = load i8, i8* %226, align 1
  %228 = icmp eq i8 %227, 32
  %229 = getelementptr inbounds %2, %2* %30, i64 0, i32 3, i32 0
  %230 = load i8, i8* %229, align 1
  %231 = icmp eq i8 %230, 0
  %232 = and i1 %228, %231
  %233 = and i1 %225, %232
  br i1 %233, label %assert_end89, label %assert_fail88, !prof !5

assert_fail88:                                    ; preds = %assert_end87
  %234 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %234(i8* getelementptr inbounds ([196 x i8], [196 x i8]* @.str.31, i64 0, i64 0))
  ret i32 -1

assert_end89:                                     ; preds = %assert_end87
  %235 = getelementptr inbounds %2, %2* %30, i64 0, i32 6
  %236 = load i64, i64* %235, align 8
  %237 = icmp eq i64 %236, 0
  br i1 %237, label %assert_end91, label %assert_fail90, !prof !5

assert_fail90:                                    ; preds = %assert_end89
  %238 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %238(i8* getelementptr inbounds ([163 x i8], [163 x i8]* @.str.32, i64 0, i64 0))
  ret i32 -1

assert_end91:                                     ; preds = %assert_end89
  %239 = getelementptr inbounds %2, %2* %30, i64 0, i32 1, i32 0
  %240 = load i32, i32* %239, align 4
  %241 = icmp eq i32 %240, 1
  br i1 %241, label %assert_end93, label %assert_fail92, !prof !5

assert_fail92:                                    ; preds = %assert_end91
  %242 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %242(i8* getelementptr inbounds ([149 x i8], [149 x i8]* @.str.33, i64 0, i64 0))
  ret i32 -1

assert_end93:                                     ; preds = %assert_end91
  %243 = getelementptr inbounds %2, %2* %30, i64 0, i32 1, i32 1
  %244 = load i32, i32* %243, align 4
  %245 = icmp eq i32 %53, %244
  br i1 %245, label %assert_end95, label %assert_fail94, !prof !5

assert_fail94:                                    ; preds = %assert_end93
  %246 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %246(i8* getelementptr inbounds ([155 x i8], [155 x i8]* @.str.34, i64 0, i64 0))
  ret i32 -1

assert_end95:                                     ; preds = %assert_end93
  %247 = getelementptr inbounds %2, %2* %36, i64 0, i32 2
  %248 = load i32, i32* %247, align 4
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %assert_end99, label %assert_fail96, !prof !5

assert_fail96:                                    ; preds = %assert_end95
  %250 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %250(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.35, i64 0, i64 0))
  ret i32 -1

assert_end99:                                     ; preds = %assert_end95
  %251 = getelementptr inbounds %2, %2* %36, i64 0, i32 3, i32 2
  %252 = load i16, i16* %251, align 2
  %253 = icmp eq i16 %252, 1
  %254 = getelementptr inbounds %2, %2* %36, i64 0, i32 3, i32 1
  %255 = load i8, i8* %254, align 1
  %256 = icmp eq i8 %255, 32
  %257 = getelementptr inbounds %2, %2* %36, i64 0, i32 3, i32 0
  %258 = load i8, i8* %257, align 1
  %259 = icmp eq i8 %258, 2
  %260 = and i1 %256, %259
  %261 = and i1 %253, %260
  br i1 %261, label %assert_end101, label %assert_fail100, !prof !5

assert_fail100:                                   ; preds = %assert_end99
  %262 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %262(i8* getelementptr inbounds ([198 x i8], [198 x i8]* @.str.36, i64 0, i64 0))
  ret i32 -1

assert_end101:                                    ; preds = %assert_end99
  %263 = getelementptr inbounds %2, %2* %36, i64 0, i32 6
  %264 = load i64, i64* %263, align 8
  %265 = icmp eq i64 %264, 0
  br i1 %265, label %assert_end103, label %assert_fail102, !prof !5

assert_fail102:                                   ; preds = %assert_end101
  %266 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %266(i8* getelementptr inbounds ([163 x i8], [163 x i8]* @.str.37, i64 0, i64 0))
  ret i32 -1

assert_end103:                                    ; preds = %assert_end101
  %267 = getelementptr inbounds %2, %2* %36, i64 0, i32 1, i32 0
  %268 = load i32, i32* %267, align 4
  %269 = icmp eq i32 %268, 1
  br i1 %269, label %assert_end105, label %assert_fail104, !prof !5

assert_fail104:                                   ; preds = %assert_end103
  %270 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %270(i8* getelementptr inbounds ([149 x i8], [149 x i8]* @.str.38, i64 0, i64 0))
  ret i32 -1

assert_end105:                                    ; preds = %assert_end103
  %271 = getelementptr inbounds %2, %2* %36, i64 0, i32 1, i32 1
  %272 = load i32, i32* %271, align 4
  %273 = icmp eq i32 %53, %272
  br i1 %273, label %assert_end107, label %assert_fail106, !prof !5

assert_fail106:                                   ; preds = %assert_end105
  %274 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %274(i8* getelementptr inbounds ([155 x i8], [155 x i8]* @.str.39, i64 0, i64 0))
  ret i32 -1

assert_end107:                                    ; preds = %assert_end105
  %275 = getelementptr inbounds %2, %2* %42, i64 0, i32 2
  %276 = load i32, i32* %275, align 4
  %277 = icmp eq i32 %276, 3
  br i1 %277, label %assert_end111, label %assert_fail108, !prof !5

assert_fail108:                                   ; preds = %assert_end107
  %278 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %278(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.40, i64 0, i64 0))
  ret i32 -1

assert_end111:                                    ; preds = %assert_end107
  %279 = getelementptr inbounds %2, %2* %42, i64 0, i32 3, i32 2
  %280 = load i16, i16* %279, align 2
  %281 = icmp eq i16 %280, 1
  %282 = getelementptr inbounds %2, %2* %42, i64 0, i32 3, i32 1
  %283 = load i8, i8* %282, align 1
  %284 = icmp eq i8 %283, 32
  %285 = getelementptr inbounds %2, %2* %42, i64 0, i32 3, i32 0
  %286 = load i8, i8* %285, align 1
  %287 = icmp eq i8 %286, 2
  %288 = and i1 %284, %287
  %289 = and i1 %281, %288
  br i1 %289, label %assert_end113, label %assert_fail112, !prof !5

assert_fail112:                                   ; preds = %assert_end111
  %290 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %290(i8* getelementptr inbounds ([198 x i8], [198 x i8]* @.str.41, i64 0, i64 0))
  ret i32 -1

assert_end113:                                    ; preds = %assert_end111
  %291 = load i64, i64* %73, align 8, !tbaa !135
  %292 = trunc i64 %291 to i32
  %293 = icmp eq i32 %292, 1
  br i1 %293, label %assert_end115, label %assert_fail114, !prof !5

assert_fail114:                                   ; preds = %assert_end113
  %294 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %294(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.42, i64 0, i64 0))
  ret i32 -1

assert_end115:                                    ; preds = %assert_end113
  %295 = getelementptr inbounds i64, i64* %73, i64 1
  %296 = load i64, i64* %295, align 8, !tbaa !149
  %297 = trunc i64 %296 to i32
  %298 = icmp eq i32 %297, 5
  br i1 %298, label %assert_end117, label %assert_fail116, !prof !5

assert_fail116:                                   ; preds = %assert_end115
  %299 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %299(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.43, i64 0, i64 0))
  ret i32 -1

assert_end117:                                    ; preds = %assert_end115
  %300 = getelementptr inbounds i64, i64* %73, i64 2
  %301 = load i64, i64* %300, align 8, !tbaa !151
  %302 = trunc i64 %301 to i32
  %303 = icmp eq i32 %302, 6
  br i1 %303, label %assert_end119, label %assert_fail118, !prof !5

assert_fail118:                                   ; preds = %assert_end117
  %304 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %304(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.44, i64 0, i64 0))
  ret i32 -1

assert_end119:                                    ; preds = %assert_end117
  %305 = icmp eq i64* %75, null
  br i1 %305, label %if_end121, label %if_then120, !prof !55

if_then120:                                       ; preds = %assert_end119
  %306 = load i64, i64* %75, align 8, !tbaa !154
  %307 = trunc i64 %306 to i32
  %308 = icmp eq i32 %307, 30
  %309 = getelementptr inbounds i64, i64* %75, i64 1
  %310 = load i64, i64* %309, align 8, !tbaa !168
  %311 = trunc i64 %310 to i32
  %312 = icmp eq i32 %311, 6
  %313 = getelementptr inbounds i64, i64* %75, i64 2
  %314 = load i64, i64* %313, align 8, !tbaa !170
  %315 = trunc i64 %314 to i32
  %316 = icmp eq i32 %315, 1
  %317 = and i1 %312, %316
  %318 = and i1 %308, %317
  br i1 %318, label %if_end121, label %assert_fail122, !prof !5

if_end121:                                        ; preds = %assert_end119, %if_then120
  %319 = getelementptr inbounds %2, %2* %42, i64 0, i32 6
  %320 = load i64, i64* %319, align 8
  %321 = icmp eq i64 %320, 0
  br i1 %321, label %assert_end125, label %assert_fail124, !prof !5

assert_fail122:                                   ; preds = %if_then120
  %322 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %322(i8* getelementptr inbounds ([158 x i8], [158 x i8]* @.str.45, i64 0, i64 0))
  ret i32 -1

assert_fail124:                                   ; preds = %if_end121
  %323 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %323(i8* getelementptr inbounds ([163 x i8], [163 x i8]* @.str.46, i64 0, i64 0))
  ret i32 -1

assert_end125:                                    ; preds = %if_end121
  %324 = getelementptr inbounds %2, %2* %42, i64 0, i32 1, i32 0
  %325 = load i32, i32* %324, align 4
  %326 = icmp eq i32 %325, 1
  br i1 %326, label %assert_end127, label %assert_fail126, !prof !5

assert_fail126:                                   ; preds = %assert_end125
  %327 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %327(i8* getelementptr inbounds ([149 x i8], [149 x i8]* @.str.47, i64 0, i64 0))
  ret i32 -1

assert_end127:                                    ; preds = %assert_end125
  %328 = getelementptr inbounds %2, %2* %42, i64 0, i32 1, i32 1
  %329 = load i32, i32* %328, align 4
  %330 = icmp eq i32 %53, %329
  br i1 %330, label %assert_end129, label %assert_fail128, !prof !5

assert_fail128:                                   ; preds = %assert_end127
  %331 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %331(i8* getelementptr inbounds ([155 x i8], [155 x i8]* @.str.48, i64 0, i64 0))
  ret i32 -1

assert_end129:                                    ; preds = %assert_end127
  %332 = call fastcc i32 @tvmgen_default_fused_vision_non_max_suppression_compute_(i8* %47, i64* nonnull %.sub, %2* nonnull %.sub130, i32 %53, i8* %55, %0* nonnull %.sub131, i32* nonnull %.sub132, i8* %69, i8* %71, i8* %67)
  ret i32 %332
}

; Function Attrs: nounwind
declare void @llvm.assume(i1) #0

; Function Attrs: noinline
define internal fastcc i32 @tvmgen_default_fused_vision_non_max_suppression_compute_(i8* noalias align 128, i64* noalias, %2* noalias, i32, i8* noalias align 128, %0* noalias, i32* noalias, i8* noalias nocapture readonly align 128, i8* noalias align 128, i8* noalias nocapture readonly align 128) unnamed_addr #1 {
entry:
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [5 x i32], align 4
  %13 = alloca [5 x float], align 4
  %.sub125 = getelementptr inbounds [5 x float], [5 x float]* %13, i64 0, i64 0
  %14 = getelementptr inbounds i8, i8* %0, i64 4
  %15 = bitcast i8* %14 to float*
  %16 = load float, float* %15, align 4, !tbaa !173
  store float %16, float* %.sub125, align 4, !tbaa !176
  %17 = getelementptr inbounds i8, i8* %0, i64 28
  %18 = bitcast i8* %17 to float*
  %19 = load float, float* %18, align 4, !tbaa !173
  %20 = getelementptr inbounds [5 x float], [5 x float]* %13, i64 0, i64 1
  store float %19, float* %20, align 4, !tbaa !176
  %21 = getelementptr inbounds i8, i8* %0, i64 52
  %22 = bitcast i8* %21 to float*
  %23 = load float, float* %22, align 4, !tbaa !173
  %24 = getelementptr inbounds [5 x float], [5 x float]* %13, i64 0, i64 2
  store float %23, float* %24, align 4, !tbaa !176
  %25 = getelementptr inbounds i8, i8* %0, i64 76
  %26 = bitcast i8* %25 to float*
  %27 = load float, float* %26, align 4, !tbaa !173
  %28 = getelementptr inbounds [5 x float], [5 x float]* %13, i64 0, i64 3
  store float %27, float* %28, align 4, !tbaa !176
  %29 = getelementptr inbounds i8, i8* %0, i64 100
  %30 = bitcast i8* %29 to float*
  %31 = load float, float* %30, align 4, !tbaa !173
  %32 = getelementptr inbounds [5 x float], [5 x float]* %13, i64 0, i64 4
  store float %31, float* %32, align 4, !tbaa !176
  %.sub = getelementptr inbounds [5 x i32], [5 x i32]* %12, i64 0, i64 0
  store i64 1, i64* %1, align 8, !tbaa !179
  %33 = getelementptr inbounds i64, i64* %1, i64 1
  store i64 5, i64* %33, align 8, !tbaa !193
  %34 = bitcast %2* %2 to [5 x float]**
  store [5 x float]* %13, [5 x float]** %34, align 8
  %35 = getelementptr inbounds %2, %2* %2, i64 0, i32 4
  store i64* %1, i64** %35, align 8
  %36 = getelementptr inbounds %2, %2* %2, i64 0, i32 5
  store i64* null, i64** %36, align 8
  %37 = getelementptr inbounds %2, %2* %2, i64 0, i32 2
  store i32 2, i32* %37, align 4
  %38 = getelementptr inbounds %2, %2* %2, i64 0, i32 3, i32 0
  store i8 2, i8* %38, align 1
  %39 = getelementptr inbounds %2, %2* %2, i64 0, i32 3, i32 1
  store i8 32, i8* %39, align 1
  %40 = getelementptr inbounds %2, %2* %2, i64 0, i32 3, i32 2
  store i16 1, i16* %40, align 2
  %41 = getelementptr inbounds %2, %2* %2, i64 0, i32 6
  store i64 0, i64* %41, align 8
  %42 = getelementptr inbounds %2, %2* %2, i64 0, i32 1, i32 1
  store i32 %3, i32* %42, align 4
  %43 = getelementptr inbounds %2, %2* %2, i64 0, i32 1, i32 0
  store i32 1, i32* %43, align 4
  %44 = getelementptr inbounds i64, i64* %1, i64 2
  store i64 1, i64* %44, align 8, !tbaa !195
  %45 = getelementptr inbounds %2, %2* %2, i64 1, i32 0
  store i8* %4, i8** %45, align 8
  %46 = getelementptr inbounds %2, %2* %2, i64 1, i32 4
  store i64* %44, i64** %46, align 8
  %47 = getelementptr inbounds %2, %2* %2, i64 1, i32 5
  store i64* null, i64** %47, align 8
  %48 = getelementptr inbounds %2, %2* %2, i64 1, i32 2
  store i32 1, i32* %48, align 4
  %49 = getelementptr inbounds %2, %2* %2, i64 1, i32 3, i32 0
  store i8 0, i8* %49, align 1
  %50 = getelementptr inbounds %2, %2* %2, i64 1, i32 3, i32 1
  store i8 32, i8* %50, align 1
  %51 = getelementptr inbounds %2, %2* %2, i64 1, i32 3, i32 2
  store i16 1, i16* %51, align 2
  %52 = getelementptr inbounds %2, %2* %2, i64 1, i32 6
  store i64 0, i64* %52, align 8
  %53 = getelementptr inbounds %2, %2* %2, i64 1, i32 1, i32 1
  store i32 %3, i32* %53, align 4
  %54 = getelementptr inbounds %2, %2* %2, i64 1, i32 1, i32 0
  store i32 1, i32* %54, align 4
  %55 = getelementptr inbounds i64, i64* %1, i64 3
  store i64 1, i64* %55, align 8, !tbaa !198
  %56 = getelementptr inbounds i64, i64* %1, i64 4
  store i64 5, i64* %56, align 8, !tbaa !200
  %57 = getelementptr inbounds %2, %2* %2, i64 2, i32 0
  %58 = bitcast i8** %57 to [5 x i32]**
  store [5 x i32]* %12, [5 x i32]** %58, align 8
  %59 = getelementptr inbounds %2, %2* %2, i64 2, i32 4
  store i64* %55, i64** %59, align 8
  %60 = getelementptr inbounds %2, %2* %2, i64 2, i32 5
  store i64* null, i64** %60, align 8
  %61 = getelementptr inbounds %2, %2* %2, i64 2, i32 2
  store i32 2, i32* %61, align 4
  %62 = getelementptr inbounds %2, %2* %2, i64 2, i32 3, i32 0
  store i8 0, i8* %62, align 1
  %63 = getelementptr inbounds %2, %2* %2, i64 2, i32 3, i32 1
  store i8 32, i8* %63, align 1
  %64 = getelementptr inbounds %2, %2* %2, i64 2, i32 3, i32 2
  store i16 1, i16* %64, align 2
  %65 = getelementptr inbounds %2, %2* %2, i64 2, i32 6
  store i64 0, i64* %65, align 8
  %66 = getelementptr inbounds %2, %2* %2, i64 2, i32 1, i32 1
  store i32 %3, i32* %66, align 4
  %67 = getelementptr inbounds %2, %2* %2, i64 2, i32 1, i32 0
  store i32 1, i32* %67, align 4
  %68 = bitcast %0* %5 to %2**
  store %2* %2, %2** %68, align 8
  store i32 7, i32* %6, align 4, !tbaa !204
  %69 = getelementptr inbounds %2, %2* %2, i64 1
  %70 = getelementptr inbounds %0, %0* %5, i64 1
  %71 = bitcast %0* %70 to %2**
  store %2* %69, %2** %71, align 8
  %72 = getelementptr inbounds i32, i32* %6, i64 1
  store i32 7, i32* %72, align 4, !tbaa !218
  %73 = getelementptr inbounds %2, %2* %2, i64 2
  %74 = getelementptr inbounds %0, %0* %5, i64 2
  %75 = bitcast %0* %74 to %2**
  store %2* %73, %2** %75, align 8
  %76 = getelementptr inbounds i32, i32* %6, i64 2
  store i32 7, i32* %76, align 4, !tbaa !220
  %77 = getelementptr inbounds %0, %0* %5, i64 3
  %78 = bitcast %0* %77 to i64*
  store i64 1, i64* %78, align 8
  %79 = getelementptr inbounds i32, i32* %6, i64 3
  store i32 0, i32* %79, align 4, !tbaa !223
  %80 = getelementptr inbounds %0, %0* %5, i64 4
  %81 = bitcast %0* %80 to i64*
  store i64 0, i64* %81, align 8
  %82 = getelementptr inbounds i32, i32* %6, i64 4
  store i32 0, i32* %82, align 4, !tbaa !225
  %83 = load i8*, i8** @.tvm_func.tvm.contrib.sort.argsort_nms, align 8
  %84 = icmp eq i8* %83, null
  br i1 %84, label %handle_init, label %handle_init_end, !prof !55

handle_init:                                      ; preds = %entry
  %85 = load i8*, i8** @__tvm_module_ctx, align 8, !tbaa !6
  %86 = load i32 (i8*, i8*, i8**)*, i32 (i8*, i8*, i8**)** @__TVMBackendGetFuncFromEnv, align 8, !tbaa !6
  %87 = call i32 %86(i8* %85, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.49, i64 0, i64 0), i8** nonnull %10)
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %call_end, label %call_fail, !prof !5

handle_init_end:                                  ; preds = %entry, %call_end
  %89 = phi i8* [ %83, %entry ], [ %101, %call_end ]
  %90 = getelementptr inbounds %0, %0* %5, i64 5
  %91 = getelementptr inbounds i32, i32* %6, i64 5
  %92 = load i32 (i8*, %0*, i32*, i32, %0*, i32*)*, i32 (i8*, %0*, i32*, i32, %0*, i32*)** @__TVMFuncCall, align 8, !tbaa !6
  %93 = call i32 %92(i8* %89, %0* nonnull %5, i32* nonnull %6, i32 5, %0* nonnull %90, i32* nonnull %91)
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %for_begin3.preheader, label %call_fail, !prof !5

for_begin3.preheader:                             ; preds = %handle_init_end
  %95 = bitcast i8* %7 to float*
  %96 = load float, float* %95, align 128, !tbaa !229
  %97 = fcmp ogt float %96, 0.000000e+00
  %98 = bitcast i8* %4 to i32*
  %99 = bitcast i8* %9 to i32*
  %100 = bitcast i8* %8 to float*
  br i1 %97, label %if_then, label %if_else

call_fail:                                        ; preds = %if_end, %if_else, %if_then12, %if_then6, %handle_init_end, %handle_init
  %merge = phi i32 [ %87, %handle_init ], [ %93, %handle_init_end ], [ %129, %if_then6 ], [ %143, %if_then12 ], [ %118, %if_else ], [ %110, %if_end ]
  ret i32 %merge

call_end:                                         ; preds = %handle_init
  %101 = load i8*, i8** %10, align 8
  store i8* %101, i8** @.tvm_func.tvm.contrib.sort.argsort_nms, align 8
  br label %handle_init_end

if_then:                                          ; preds = %for_begin3.preheader
  %102 = load i32, i32* %98, align 128, !tbaa !243
  %103 = icmp sgt i32 %102, 0
  br i1 %103, label %if_then6, label %if_end, !prof !5

if_end:                                           ; preds = %if_end20, %if_then, %if_end7, %if_else
  %104 = alloca %5, align 8
  %105 = getelementptr inbounds %5, %5* %104, i64 0, i32 0
  store i8* %4, i8** %105, align 8
  %106 = getelementptr inbounds %5, %5* %104, i64 0, i32 1
  store i8* %8, i8** %106, align 8
  %107 = getelementptr inbounds %5, %5* %104, i64 0, i32 2
  store float* %.sub125, float** %107, align 8
  %108 = load i32 (i32 (i32, %1*, i8*)*, i8*, i32)*, i32 (i32 (i32, %1*, i8*)*, i8*, i32)** @__TVMBackendParallelLaunch, align 8, !tbaa !6
  %109 = bitcast %5* %104 to i8*
  %110 = call i32 %108(i32 (i32, %1*, i8*)* nonnull @__tvm_parallel_lambda.52, i8* nonnull %109, i32 0)
  br label %call_fail

if_else:                                          ; preds = %for_begin3.preheader
  %111 = alloca %6, align 8
  %112 = getelementptr inbounds %6, %6* %111, i64 0, i32 0
  store i8* %4, i8** %112, align 8
  %113 = getelementptr inbounds %6, %6* %111, i64 0, i32 1
  store i8* %8, i8** %113, align 8
  %114 = getelementptr inbounds %6, %6* %111, i64 0, i32 2
  store i8* %0, i8** %114, align 8
  %115 = getelementptr inbounds %6, %6* %111, i64 0, i32 3
  store float* %.sub125, float** %115, align 8
  %116 = load i32 (i32 (i32, %1*, i8*)*, i8*, i32)*, i32 (i32 (i32, %1*, i8*)*, i8*, i32)** @__TVMBackendParallelLaunch, align 8, !tbaa !6
  %117 = bitcast %6* %111 to i8*
  %118 = call i32 %116(i32 (i32, %1*, i8*)* nonnull @__tvm_parallel_lambda.51, i8* nonnull %117, i32 0)
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %if_end, label %call_fail, !prof !5

if_then6:                                         ; preds = %if_then
  %120 = icmp eq i32 %102, 1
  %spec.select = select i1 %120, i32 1, i32 2, !prof !55
  store i32 %spec.select, i32* %11, align 4, !tbaa !257
  %121 = alloca %7, align 8
  %122 = getelementptr inbounds %7, %7* %121, i64 0, i32 0
  store i32* %11, i32** %122, align 8
  %123 = getelementptr inbounds %7, %7* %121, i64 0, i32 1
  store i8* %8, i8** %123, align 8
  %124 = getelementptr inbounds %7, %7* %121, i64 0, i32 2
  store i8* %0, i8** %124, align 8
  %125 = getelementptr inbounds %7, %7* %121, i64 0, i32 3
  store i32* %.sub, i32** %125, align 8
  %126 = getelementptr inbounds %7, %7* %121, i64 0, i32 4
  store float* %.sub125, float** %126, align 8
  %127 = load i32 (i32 (i32, %1*, i8*)*, i8*, i32)*, i32 (i32 (i32, %1*, i8*)*, i8*, i32)** @__TVMBackendParallelLaunch, align 8, !tbaa !6
  %128 = bitcast %7* %121 to i8*
  %129 = call i32 %127(i32 (i32, %1*, i8*)* nonnull @__tvm_parallel_lambda, i8* nonnull %128, i32 0)
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %call_end11, label %call_fail, !prof !5

if_end7:                                          ; preds = %if_then12.if_end7_crit_edge, %call_end11
  %131 = phi i32 [ %.pre, %if_then12.if_end7_crit_edge ], [ %134, %call_end11 ]
  %132 = icmp sgt i32 %131, 0
  br i1 %132, label %for_body17.lr.ph, label %if_end, !prof !5

for_body17.lr.ph:                                 ; preds = %if_end7
  %133 = load i32, i32* %99, align 128, !tbaa !271
  %wide.trip.count137 = zext i32 %131 to i64
  br label %for_body17

call_end11:                                       ; preds = %if_then6
  %134 = load i32, i32* %98, align 128, !tbaa !243
  %135 = icmp sgt i32 %134, 2
  br i1 %135, label %if_then12, label %if_end7, !prof !5

if_then12:                                        ; preds = %call_end11
  %136 = alloca %8, align 8
  %137 = getelementptr inbounds %8, %8* %136, i64 0, i32 0
  store i8* %4, i8** %137, align 8
  %138 = getelementptr inbounds %8, %8* %136, i64 0, i32 1
  store i32* %11, i32** %138, align 8
  %139 = getelementptr inbounds %8, %8* %136, i64 0, i32 2
  store i8* %8, i8** %139, align 8
  %140 = getelementptr inbounds %8, %8* %136, i64 0, i32 3
  store float* %.sub125, float** %140, align 8
  %141 = load i32 (i32 (i32, %1*, i8*)*, i8*, i32)*, i32 (i32 (i32, %1*, i8*)*, i8*, i32)** @__TVMBackendParallelLaunch, align 8, !tbaa !6
  %142 = bitcast %8* %136 to i8*
  %143 = call i32 %141(i32 (i32, %1*, i8*)* nonnull @__tvm_parallel_lambda.50, i8* nonnull %142, i32 0)
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %if_then12.if_end7_crit_edge, label %call_fail, !prof !5

if_then12.if_end7_crit_edge:                      ; preds = %if_then12
  %.pre = load i32, i32* %98, align 128, !tbaa !243
  br label %if_end7

for_body17:                                       ; preds = %if_end20, %for_body17.lr.ph
  %indvars.iv135 = phi i64 [ 0, %for_body17.lr.ph ], [ %indvars.iv.next136, %if_end20 ]
  %.0107128 = phi i32 [ 0, %for_body17.lr.ph ], [ %.1, %if_end20 ]
  %145 = icmp eq i32 %.0107128, %133
  %146 = trunc i64 %indvars.iv135 to i32
  %147 = mul nsw i32 %146, 6
  br i1 %145, label %for_body23.preheader, label %if_else21

for_body23.preheader:                             ; preds = %for_body17
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds float, float* %100, i64 %148
  store float -1.000000e+00, float* %149, align 8, !tbaa !285
  %150 = or i64 %148, 1
  %151 = getelementptr inbounds float, float* %100, i64 %150
  store float -1.000000e+00, float* %151, align 4, !tbaa !285
  %152 = add nuw nsw i64 %148, 2
  %153 = getelementptr inbounds float, float* %100, i64 %152
  store float -1.000000e+00, float* %153, align 8, !tbaa !285
  %154 = add nuw nsw i64 %148, 3
  %155 = getelementptr inbounds float, float* %100, i64 %154
  store float -1.000000e+00, float* %155, align 4, !tbaa !285
  %156 = add nuw nsw i64 %148, 4
  %157 = getelementptr inbounds float, float* %100, i64 %156
  store float -1.000000e+00, float* %157, align 8, !tbaa !285
  %158 = add nuw nsw i64 %148, 5
  %159 = getelementptr inbounds float, float* %100, i64 %158
  store float -1.000000e+00, float* %159, align 4, !tbaa !285
  %160 = getelementptr inbounds [5 x float], [5 x float]* %13, i64 0, i64 %indvars.iv135
  %161 = bitcast float* %160 to i32*
  store i32 -1, i32* %161, align 4, !tbaa !176
  br label %if_end20

if_end20:                                         ; preds = %for_body43.preheader, %if_else41, %if_else21, %for_body23.preheader
  %.1 = phi i32 [ %133, %for_body23.preheader ], [ %.0107128, %for_body43.preheader ], [ %271, %if_else41 ], [ %.0107128, %if_else21 ]
  %indvars.iv.next136 = add nuw nsw i64 %indvars.iv135, 1
  %exitcond138 = icmp eq i64 %indvars.iv.next136, %wide.trip.count137
  br i1 %exitcond138, label %if_end, label %for_body17, !prof !55

if_else21:                                        ; preds = %for_body17
  %162 = or i32 %147, 1
  %163 = zext i32 %162 to i64
  %164 = getelementptr inbounds float, float* %100, i64 %163
  %165 = load float, float* %164, align 4, !tbaa !285
  %166 = fcmp ogt float %165, 0.000000e+00
  br i1 %166, label %if_then25, label %if_end20, !prof !5

if_then25:                                        ; preds = %if_else21
  %167 = add nuw nsw i32 %147, 2
  %168 = zext i32 %167 to i64
  %169 = getelementptr inbounds float, float* %100, i64 %168
  %170 = load float, float* %169, align 8, !tbaa !285
  %171 = add nuw nsw i32 %147, 4
  %172 = zext i32 %171 to i64
  %173 = getelementptr inbounds float, float* %100, i64 %172
  %174 = load float, float* %173, align 8, !tbaa !285
  %175 = fcmp olt float %170, %174
  %176 = select i1 %175, float %170, float %174
  %177 = add nuw nsw i32 %147, 3
  %178 = zext i32 %177 to i64
  %179 = getelementptr inbounds float, float* %100, i64 %178
  %180 = load float, float* %179, align 4, !tbaa !285
  %181 = add nuw nsw i32 %147, 5
  %182 = zext i32 %181 to i64
  %183 = getelementptr inbounds float, float* %100, i64 %182
  %184 = load float, float* %183, align 4, !tbaa !285
  %185 = fcmp olt float %180, %184
  %186 = select i1 %185, float %180, float %184
  %187 = fcmp ogt float %170, %174
  %188 = select i1 %187, float %170, float %174
  %189 = fcmp ogt float %180, %184
  %190 = select i1 %189, float %180, float %184
  %191 = icmp eq i64 %indvars.iv135, 0
  br i1 %191, label %if_else41, label %for_body28.lr.ph, !prof !55

for_body28.lr.ph:                                 ; preds = %if_then25
  %192 = fsub float %190, %186
  %193 = fsub float %188, %176
  %194 = fmul float %193, %192
  br label %for_body28

for_body28:                                       ; preds = %if_end33, %for_body28.lr.ph
  %indvars.iv = phi i64 [ 0, %for_body28.lr.ph ], [ %indvars.iv.next, %if_end33 ]
  %.0108127 = phi i32 [ 1, %for_body28.lr.ph ], [ %.1109, %if_end33 ]
  %195 = trunc i64 %indvars.iv to i32
  %196 = mul nsw i32 %195, 6
  %197 = zext i32 %196 to i64
  %198 = getelementptr inbounds float, float* %100, i64 %197
  %199 = load float, float* %198, align 8, !tbaa !285
  %200 = fcmp oge float %199, 0.000000e+00
  %201 = or i32 %196, 1
  %202 = zext i32 %201 to i64
  %203 = getelementptr inbounds float, float* %100, i64 %202
  %204 = load float, float* %203, align 4, !tbaa !285
  %205 = fcmp ogt float %204, 0.000000e+00
  %206 = icmp eq i32 %.0108127, 1
  %207 = and i1 %206, %205
  %208 = and i1 %200, %207
  br i1 %208, label %if_then32, label %if_end33, !prof !5

for_end29:                                        ; preds = %if_end33
  %209 = icmp eq i32 %.1109, 0
  br i1 %209, label %for_body43.preheader, label %if_else41

for_body43.preheader:                             ; preds = %for_end29
  %210 = zext i32 %147 to i64
  %211 = getelementptr inbounds float, float* %100, i64 %210
  store float -1.000000e+00, float* %211, align 8, !tbaa !285
  %212 = or i64 %210, 1
  %213 = getelementptr inbounds float, float* %100, i64 %212
  store float -1.000000e+00, float* %213, align 4, !tbaa !285
  %214 = add nuw nsw i64 %210, 2
  %215 = getelementptr inbounds float, float* %100, i64 %214
  store float -1.000000e+00, float* %215, align 8, !tbaa !285
  %216 = add nuw nsw i64 %210, 3
  %217 = getelementptr inbounds float, float* %100, i64 %216
  store float -1.000000e+00, float* %217, align 4, !tbaa !285
  %218 = add nuw nsw i64 %210, 4
  %219 = getelementptr inbounds float, float* %100, i64 %218
  store float -1.000000e+00, float* %219, align 8, !tbaa !285
  %220 = add nuw nsw i64 %210, 5
  %221 = getelementptr inbounds float, float* %100, i64 %220
  store float -1.000000e+00, float* %221, align 4, !tbaa !285
  %222 = getelementptr inbounds [5 x float], [5 x float]* %13, i64 0, i64 %indvars.iv135
  %223 = bitcast float* %222 to i32*
  store i32 -1, i32* %223, align 4, !tbaa !176
  br label %if_end20

if_then32:                                        ; preds = %for_body28
  %224 = add nuw nsw i32 %196, 2
  %225 = zext i32 %224 to i64
  %226 = getelementptr inbounds float, float* %100, i64 %225
  %227 = load float, float* %226, align 8, !tbaa !285
  %228 = add nuw nsw i32 %196, 4
  %229 = zext i32 %228 to i64
  %230 = getelementptr inbounds float, float* %100, i64 %229
  %231 = load float, float* %230, align 8, !tbaa !285
  %232 = fcmp olt float %227, %231
  %233 = select i1 %232, float %227, float %231
  %234 = add nuw nsw i32 %196, 3
  %235 = zext i32 %234 to i64
  %236 = getelementptr inbounds float, float* %100, i64 %235
  %237 = load float, float* %236, align 4, !tbaa !285
  %238 = add nuw nsw i32 %196, 5
  %239 = zext i32 %238 to i64
  %240 = getelementptr inbounds float, float* %100, i64 %239
  %241 = load float, float* %240, align 4, !tbaa !285
  %242 = fcmp olt float %237, %241
  %243 = select i1 %242, float %237, float %241
  %244 = fcmp ogt float %227, %231
  %245 = select i1 %244, float %227, float %231
  %246 = fcmp ogt float %237, %241
  %247 = select i1 %246, float %237, float %241
  %248 = fcmp ogt float %176, %233
  %249 = select i1 %248, float %176, float %233
  %250 = fcmp olt float %188, %245
  %251 = select i1 %250, float %188, float %245
  %252 = fsub float %251, %249
  %253 = fcmp olt float %252, 0.000000e+00
  %254 = select i1 %253, float 0.000000e+00, float %252
  %255 = fcmp ogt float %186, %243
  %256 = select i1 %255, float %186, float %243
  %257 = fcmp olt float %190, %247
  %258 = select i1 %257, float %190, float %247
  %259 = fsub float %258, %256
  %260 = fcmp olt float %259, 0.000000e+00
  %261 = select i1 %260, float 0.000000e+00, float %259
  %262 = fmul float %254, %261
  %263 = fsub float %245, %233
  %264 = fsub float %247, %243
  %265 = call float @llvm.fmuladd.f32(float %263, float %264, float %194)
  %266 = fsub float %265, %262
  %267 = fcmp ugt float %266, 0.000000e+00
  %268 = fdiv float %262, %266
  %269 = select i1 %267, float %268, float 0.000000e+00
  %270 = fcmp ugt float %96, %269
  br i1 %270, label %if_end33, label %if_then37, !prof !55

if_end33:                                         ; preds = %if_then32, %if_then37, %for_body28
  %.1109 = phi i32 [ 0, %if_then37 ], [ 1, %if_then32 ], [ %.0108127, %for_body28 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, %indvars.iv135
  br i1 %exitcond, label %for_end29, label %for_body28, !prof !55

if_then37:                                        ; preds = %if_then32
  br label %if_end33

if_else41:                                        ; preds = %if_then25, %for_end29
  %271 = add nsw i32 %.0107128, 1
  br label %if_end20
}

; Function Attrs: nofree norecurse nounwind
define private i32 @__tvm_parallel_lambda(i32, %1* nocapture readonly, i8* nocapture readonly) #2 {
entry:
  %3 = bitcast i8* %2 to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = getelementptr inbounds i8, i8* %2, i64 8
  %6 = bitcast i8* %5 to float**
  %7 = load float*, float** %6, align 8
  %8 = getelementptr inbounds i8, i8* %2, i64 16
  %9 = bitcast i8* %8 to float**
  %10 = load float*, float** %9, align 8
  %11 = getelementptr inbounds i8, i8* %2, i64 24
  %12 = bitcast i8* %11 to i32**
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i8, i8* %2, i64 32
  %15 = bitcast i8* %14 to i32**
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds %1, %1* %1, i64 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %4, align 4, !tbaa !257
  %20 = add i32 %18, -1
  %21 = add i32 %20, %19
  %22 = sdiv i32 %21, %18
  %23 = add nsw i32 %0, 1
  %24 = mul nsw i32 %22, %23
  %25 = icmp slt i32 %24, %19
  %26 = select i1 %25, i32 %24, i32 %19
  %27 = mul nsw i32 %22, %0
  %28 = icmp slt i32 %27, %19
  %29 = select i1 %28, i32 %27, i32 %19
  %30 = icmp slt i32 %29, %26
  br i1 %30, label %for_begin1.preheader.preheader, label %for_end, !prof !5

for_begin1.preheader.preheader:                   ; preds = %entry
  %31 = sext i32 %29 to i64
  %32 = sext i32 %26 to i64
  br label %for_begin1.preheader

for_begin1.preheader:                             ; preds = %for_begin1.preheader.preheader, %for_begin1.preheader
  %indvars.iv = phi i64 [ %31, %for_begin1.preheader.preheader ], [ %indvars.iv.next, %for_begin1.preheader ]
  %33 = mul nsw i64 %indvars.iv, 6
  %34 = getelementptr inbounds i32, i32* %13, i64 %indvars.iv
  %35 = load i32, i32* %34, align 4, !tbaa !288
  %36 = mul nsw i32 %35, 6
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds float, float* %10, i64 %37
  %39 = load float, float* %38, align 4, !tbaa !173
  %40 = getelementptr inbounds float, float* %7, i64 %33
  store float %39, float* %40, align 4, !tbaa !285
  %41 = or i64 %33, 1
  %42 = or i64 %37, 1
  %43 = getelementptr inbounds float, float* %10, i64 %42
  %44 = load float, float* %43, align 4, !tbaa !173
  %45 = getelementptr inbounds float, float* %7, i64 %41
  store float %44, float* %45, align 4, !tbaa !285
  %46 = add nsw i64 %33, 2
  %47 = add nsw i64 %37, 2
  %48 = getelementptr inbounds float, float* %10, i64 %47
  %49 = load float, float* %48, align 4, !tbaa !173
  %50 = getelementptr inbounds float, float* %7, i64 %46
  store float %49, float* %50, align 4, !tbaa !285
  %51 = add nsw i64 %33, 3
  %52 = add nsw i64 %37, 3
  %53 = getelementptr inbounds float, float* %10, i64 %52
  %54 = load float, float* %53, align 4, !tbaa !173
  %55 = getelementptr inbounds float, float* %7, i64 %51
  store float %54, float* %55, align 4, !tbaa !285
  %56 = add nsw i64 %33, 4
  %57 = add nsw i64 %37, 4
  %58 = getelementptr inbounds float, float* %10, i64 %57
  %59 = load float, float* %58, align 4, !tbaa !173
  %60 = getelementptr inbounds float, float* %7, i64 %56
  store float %59, float* %60, align 4, !tbaa !285
  %61 = add nsw i64 %33, 5
  %62 = add nsw i64 %37, 5
  %63 = getelementptr inbounds float, float* %10, i64 %62
  %64 = load float, float* %63, align 4, !tbaa !173
  %65 = getelementptr inbounds float, float* %7, i64 %61
  store float %64, float* %65, align 4, !tbaa !285
  %66 = getelementptr inbounds i32, i32* %16, i64 %indvars.iv
  store i32 %35, i32* %66, align 4, !tbaa !176
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %67 = icmp slt i64 %indvars.iv.next, %32
  br i1 %67, label %for_begin1.preheader, label %for_end, !prof !5

for_end:                                          ; preds = %for_begin1.preheader, %entry
  ret i32 0
}

; Function Attrs: nofree norecurse nounwind
define private i32 @__tvm_parallel_lambda.50(i32, %1* nocapture readonly, i8* nocapture readonly) #2 {
entry:
  %3 = bitcast i8* %2 to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = getelementptr inbounds i8, i8* %2, i64 8
  %6 = bitcast i8* %5 to i32**
  %7 = load i32*, i32** %6, align 8
  %8 = getelementptr inbounds i8, i8* %2, i64 16
  %9 = bitcast i8* %8 to float**
  %10 = load float*, float** %9, align 8
  %11 = getelementptr inbounds i8, i8* %2, i64 24
  %12 = bitcast i8* %11 to i32**
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds %1, %1* %1, i64 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %7, align 4, !tbaa !257
  %17 = load i32, i32* %4, align 128, !tbaa !243
  %18 = sub nsw i32 %17, %16
  %19 = add i32 %15, -1
  %20 = add i32 %19, %18
  %21 = sdiv i32 %20, %15
  %22 = add nsw i32 %0, 1
  %23 = mul nsw i32 %21, %22
  %24 = icmp slt i32 %23, %18
  %25 = select i1 %24, i32 %23, i32 %18
  %26 = mul nsw i32 %21, %0
  %27 = icmp slt i32 %26, %18
  %28 = select i1 %27, i32 %26, i32 %18
  %29 = icmp slt i32 %28, %25
  br i1 %29, label %for_begin1.preheader.preheader, label %for_end, !prof !5

for_begin1.preheader.preheader:                   ; preds = %entry
  %30 = sext i32 %28 to i64
  %31 = sext i32 %25 to i64
  br label %for_begin1.preheader

for_begin1.preheader:                             ; preds = %for_begin1.preheader.preheader, %for_begin1.preheader
  %indvars.iv = phi i64 [ %30, %for_begin1.preheader.preheader ], [ %indvars.iv.next, %for_begin1.preheader ]
  %32 = trunc i64 %indvars.iv to i32
  %33 = add i32 %16, %32
  %34 = mul i32 %33, 6
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds float, float* %10, i64 %35
  store float -1.000000e+00, float* %36, align 4, !tbaa !285
  %37 = or i64 %35, 1
  %38 = getelementptr inbounds float, float* %10, i64 %37
  store float -1.000000e+00, float* %38, align 4, !tbaa !285
  %39 = add nsw i64 %35, 2
  %40 = getelementptr inbounds float, float* %10, i64 %39
  store float -1.000000e+00, float* %40, align 4, !tbaa !285
  %41 = add nsw i64 %35, 3
  %42 = getelementptr inbounds float, float* %10, i64 %41
  store float -1.000000e+00, float* %42, align 4, !tbaa !285
  %43 = add nsw i64 %35, 4
  %44 = getelementptr inbounds float, float* %10, i64 %43
  store float -1.000000e+00, float* %44, align 4, !tbaa !285
  %45 = add nsw i64 %35, 5
  %46 = getelementptr inbounds float, float* %10, i64 %45
  store float -1.000000e+00, float* %46, align 4, !tbaa !285
  %47 = sext i32 %33 to i64
  %48 = getelementptr inbounds i32, i32* %13, i64 %47
  store i32 -1, i32* %48, align 4, !tbaa !176
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %49 = icmp slt i64 %indvars.iv.next, %31
  br i1 %49, label %for_begin1.preheader, label %for_end, !prof !5

for_end:                                          ; preds = %for_begin1.preheader, %entry
  ret i32 0
}

; Function Attrs: nounwind readnone speculatable
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: nofree norecurse nounwind
define private i32 @__tvm_parallel_lambda.51(i32, %1* nocapture readonly, i8* nocapture readonly) #2 {
entry:
  %3 = bitcast i8* %2 to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = getelementptr inbounds i8, i8* %2, i64 8
  %6 = bitcast i8* %5 to float**
  %7 = load float*, float** %6, align 8
  %8 = getelementptr inbounds i8, i8* %2, i64 16
  %9 = bitcast i8* %8 to float**
  %10 = load float*, float** %9, align 8
  %11 = getelementptr inbounds i8, i8* %2, i64 24
  %12 = bitcast i8* %11 to i32**
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds %1, %1* %1, i64 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %4, align 128, !tbaa !243
  %17 = add i32 %15, -1
  %18 = add i32 %17, %16
  %19 = sdiv i32 %18, %15
  %20 = add nsw i32 %0, 1
  %21 = mul nsw i32 %19, %20
  %22 = icmp slt i32 %21, %16
  %23 = select i1 %22, i32 %21, i32 %16
  %24 = mul nsw i32 %19, %0
  %25 = icmp slt i32 %24, %16
  %26 = select i1 %25, i32 %24, i32 %16
  %27 = icmp slt i32 %26, %23
  br i1 %27, label %for_begin1.preheader.preheader, label %for_end, !prof !5

for_begin1.preheader.preheader:                   ; preds = %entry
  %28 = sext i32 %26 to i64
  %29 = sext i32 %23 to i64
  br label %for_begin1.preheader

for_begin1.preheader:                             ; preds = %for_begin1.preheader.preheader, %for_begin1.preheader
  %indvars.iv = phi i64 [ %28, %for_begin1.preheader.preheader ], [ %indvars.iv.next, %for_begin1.preheader ]
  %30 = mul nsw i64 %indvars.iv, 6
  %31 = getelementptr inbounds float, float* %10, i64 %30
  %32 = load float, float* %31, align 4, !tbaa !173
  %33 = getelementptr inbounds float, float* %7, i64 %30
  store float %32, float* %33, align 4, !tbaa !285
  %34 = or i64 %30, 1
  %35 = getelementptr inbounds float, float* %10, i64 %34
  %36 = load float, float* %35, align 4, !tbaa !173
  %37 = getelementptr inbounds float, float* %7, i64 %34
  store float %36, float* %37, align 4, !tbaa !285
  %38 = add nsw i64 %30, 2
  %39 = getelementptr inbounds float, float* %10, i64 %38
  %40 = load float, float* %39, align 4, !tbaa !173
  %41 = getelementptr inbounds float, float* %7, i64 %38
  store float %40, float* %41, align 4, !tbaa !285
  %42 = add nsw i64 %30, 3
  %43 = getelementptr inbounds float, float* %10, i64 %42
  %44 = load float, float* %43, align 4, !tbaa !173
  %45 = getelementptr inbounds float, float* %7, i64 %42
  store float %44, float* %45, align 4, !tbaa !285
  %46 = add nsw i64 %30, 4
  %47 = getelementptr inbounds float, float* %10, i64 %46
  %48 = load float, float* %47, align 4, !tbaa !173
  %49 = getelementptr inbounds float, float* %7, i64 %46
  store float %48, float* %49, align 4, !tbaa !285
  %50 = add nsw i64 %30, 5
  %51 = getelementptr inbounds float, float* %10, i64 %50
  %52 = load float, float* %51, align 4, !tbaa !173
  %53 = getelementptr inbounds float, float* %7, i64 %50
  store float %52, float* %53, align 4, !tbaa !285
  %54 = getelementptr inbounds i32, i32* %13, i64 %indvars.iv
  %55 = trunc i64 %indvars.iv to i32
  store i32 %55, i32* %54, align 4, !tbaa !176
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %56 = icmp slt i64 %indvars.iv.next, %29
  br i1 %56, label %for_begin1.preheader, label %for_end, !prof !5

for_end:                                          ; preds = %for_begin1.preheader, %entry
  ret i32 0
}

; Function Attrs: nofree norecurse nounwind
define private i32 @__tvm_parallel_lambda.52(i32, %1* nocapture readonly, i8* nocapture readonly) #2 {
entry:
  %3 = bitcast i8* %2 to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = getelementptr inbounds i8, i8* %2, i64 8
  %6 = bitcast i8* %5 to float**
  %7 = load float*, float** %6, align 8
  %8 = getelementptr inbounds i8, i8* %2, i64 16
  %9 = bitcast i8* %8 to i32**
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds %1, %1* %1, i64 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %4, align 128, !tbaa !243
  %14 = sub nsw i32 5, %13
  %15 = add i32 %12, -1
  %16 = add i32 %15, %14
  %17 = sdiv i32 %16, %12
  %18 = add nsw i32 %0, 1
  %19 = mul nsw i32 %17, %18
  %20 = icmp slt i32 %19, %14
  %21 = select i1 %20, i32 %19, i32 %14
  %22 = mul nsw i32 %17, %0
  %23 = icmp slt i32 %22, %14
  %24 = select i1 %23, i32 %22, i32 %14
  %25 = icmp slt i32 %24, %21
  br i1 %25, label %for_begin1.preheader.preheader, label %for_end, !prof !5

for_begin1.preheader.preheader:                   ; preds = %entry
  %26 = sext i32 %24 to i64
  %27 = sext i32 %21 to i64
  br label %for_begin1.preheader

for_begin1.preheader:                             ; preds = %for_begin1.preheader.preheader, %for_begin1.preheader
  %indvars.iv = phi i64 [ %26, %for_begin1.preheader.preheader ], [ %indvars.iv.next, %for_begin1.preheader ]
  %28 = trunc i64 %indvars.iv to i32
  %29 = add i32 %13, %28
  %30 = mul i32 %29, 6
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds float, float* %7, i64 %31
  store float -1.000000e+00, float* %32, align 4, !tbaa !285
  %33 = or i64 %31, 1
  %34 = getelementptr inbounds float, float* %7, i64 %33
  store float -1.000000e+00, float* %34, align 4, !tbaa !285
  %35 = add nsw i64 %31, 2
  %36 = getelementptr inbounds float, float* %7, i64 %35
  store float -1.000000e+00, float* %36, align 4, !tbaa !285
  %37 = add nsw i64 %31, 3
  %38 = getelementptr inbounds float, float* %7, i64 %37
  store float -1.000000e+00, float* %38, align 4, !tbaa !285
  %39 = add nsw i64 %31, 4
  %40 = getelementptr inbounds float, float* %7, i64 %39
  store float -1.000000e+00, float* %40, align 4, !tbaa !285
  %41 = add nsw i64 %31, 5
  %42 = getelementptr inbounds float, float* %7, i64 %41
  store float -1.000000e+00, float* %42, align 4, !tbaa !285
  %43 = sext i32 %29 to i64
  %44 = getelementptr inbounds i32, i32* %10, i64 %43
  store i32 -1, i32* %44, align 4, !tbaa !176
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %45 = icmp slt i64 %indvars.iv.next, %27
  br i1 %45, label %for_begin1.preheader, label %for_end, !prof !5

for_end:                                          ; preds = %for_begin1.preheader, %entry
  ret i32 0
}

attributes #0 = { nounwind }
attributes #1 = { noinline }
attributes #2 = { nofree norecurse nounwind }
attributes #3 = { nounwind readnone speculatable }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4}

!0 = distinct !DICompileUnit(language: DW_LANG_C, file: !1, producer: "TVM", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, dwoId: 1)
!1 = !DIFile(filename: "model.tvm", directory: "/tmp/")
!2 = !{}
!3 = !{i32 2, !"tvm_target", !"llvm -mtriple=riscv64-unknown-elf-gnu -mcpu=generic-rv64 -mfloat-abi=hard"}
!4 = !{i32 4, !"Debug Info Version", i32 3}
!5 = !{!"branch_weights", i32 1048576, i32 1}
!6 = !{!7, !7, i64 0}
!7 = !{!"ctx_ptr", !8, i64 0}
!8 = !{!"tvm-tbaa"}
!9 = !{!10, !10, i64 0}
!10 = !{!"0x2b8c1b0.w1.b0", !11, i64 0}
!11 = !{!"0x2b8c1b0.w2.b0", !12, i64 0}
!12 = !{!"0x2b8c1b0.w4.b0", !13, i64 0}
!13 = !{!"0x2b8c1b0.w8.b0", !14, i64 0}
!14 = !{!"0x2b8c1b0.w16.b0", !15, i64 0}
!15 = !{!"0x2b8c1b0.w32.b0", !16, i64 0}
!16 = !{!"0x2b8c1b0.w64.b0", !17, i64 0}
!17 = !{!"0x2b8c1b0.w128.b0", !18, i64 0}
!18 = !{!"0x2b8c1b0.w256.b0", !19, i64 0}
!19 = !{!"0x2b8c1b0.w512.b0", !20, i64 0}
!20 = !{!"0x2b8c1b0.w1024.b0", !21, i64 0}
!21 = !{!"i8*", !22, i64 0}
!22 = !{!"0x2b8c1b0", !8, i64 0}
!23 = !{!24, !24, i64 0}
!24 = !{!"0x2b8c1b0.w1.b1", !11, i64 0}
!25 = !{!26, !26, i64 0}
!26 = !{!"0x2b8c1b0.w1.b2", !27, i64 0}
!27 = !{!"0x2b8c1b0.w2.b2", !12, i64 0}
!28 = !{!29, !29, i64 0}
!29 = !{!"0x2b8c1b0.w1.b3", !27, i64 0}
!30 = !{!31, !31, i64 0}
!31 = !{!"0x2b8c1b0.w1.b4", !32, i64 0}
!32 = !{!"0x2b8c1b0.w2.b4", !33, i64 0}
!33 = !{!"0x2b8c1b0.w4.b4", !13, i64 0}
!34 = !{!35, !35, i64 0}
!35 = !{!"0x2b8c1b0.w1.b5", !32, i64 0}
!36 = !{!37, !37, i64 0}
!37 = !{!"0x2bb90a0.w1.b0", !38, i64 0}
!38 = !{!"0x2bb90a0.w2.b0", !39, i64 0}
!39 = !{!"0x2bb90a0.w4.b0", !40, i64 0}
!40 = !{!"0x2bb90a0.w8.b0", !41, i64 0}
!41 = !{!"0x2bb90a0.w16.b0", !42, i64 0}
!42 = !{!"0x2bb90a0.w32.b0", !43, i64 0}
!43 = !{!"0x2bb90a0.w64.b0", !44, i64 0}
!44 = !{!"0x2bb90a0.w128.b0", !45, i64 0}
!45 = !{!"0x2bb90a0.w256.b0", !46, i64 0}
!46 = !{!"0x2bb90a0.w512.b0", !47, i64 0}
!47 = !{!"0x2bb90a0.w1024.b0", !48, i64 0}
!48 = !{!"i8*", !49, i64 0}
!49 = !{!"0x2bb90a0", !8, i64 0}
!50 = !{!51, !51, i64 0}
!51 = !{!"0x2bb90a0.w1.b1", !38, i64 0}
!52 = !{!53, !53, i64 0}
!53 = !{!"0x2bb90a0.w1.b2", !54, i64 0}
!54 = !{!"0x2bb90a0.w2.b2", !39, i64 0}
!55 = !{!"branch_weights", i32 1, i32 1048576}
!56 = !{!57, !57, i64 0}
!57 = !{!"0x2b879a0.w1.b0", !58, i64 0}
!58 = !{!"0x2b879a0.w2.b0", !59, i64 0}
!59 = !{!"0x2b879a0.w4.b0", !60, i64 0}
!60 = !{!"0x2b879a0.w8.b0", !61, i64 0}
!61 = !{!"0x2b879a0.w16.b0", !62, i64 0}
!62 = !{!"0x2b879a0.w32.b0", !63, i64 0}
!63 = !{!"0x2b879a0.w64.b0", !64, i64 0}
!64 = !{!"0x2b879a0.w128.b0", !65, i64 0}
!65 = !{!"0x2b879a0.w256.b0", !66, i64 0}
!66 = !{!"0x2b879a0.w512.b0", !67, i64 0}
!67 = !{!"0x2b879a0.w1024.b0", !68, i64 0}
!68 = !{!"i8*", !69, i64 0}
!69 = !{!"0x2b879a0", !8, i64 0}
!70 = !{!71, !71, i64 0}
!71 = !{!"0x2b879a0.w1.b1", !58, i64 0}
!72 = !{!73, !73, i64 0}
!73 = !{!"0x2b879a0.w1.b2", !74, i64 0}
!74 = !{!"0x2b879a0.w2.b2", !59, i64 0}
!75 = !{!76, !76, i64 0}
!76 = !{!"0x2b8b670.w1.b0", !77, i64 0}
!77 = !{!"0x2b8b670.w2.b0", !78, i64 0}
!78 = !{!"0x2b8b670.w4.b0", !79, i64 0}
!79 = !{!"0x2b8b670.w8.b0", !80, i64 0}
!80 = !{!"0x2b8b670.w16.b0", !81, i64 0}
!81 = !{!"0x2b8b670.w32.b0", !82, i64 0}
!82 = !{!"0x2b8b670.w64.b0", !83, i64 0}
!83 = !{!"0x2b8b670.w128.b0", !84, i64 0}
!84 = !{!"0x2b8b670.w256.b0", !85, i64 0}
!85 = !{!"0x2b8b670.w512.b0", !86, i64 0}
!86 = !{!"0x2b8b670.w1024.b0", !87, i64 0}
!87 = !{!"i8*", !88, i64 0}
!88 = !{!"0x2b8b670", !8, i64 0}
!89 = !{!90, !90, i64 0}
!90 = !{!"0x2bb5ad0.w1.b0", !91, i64 0}
!91 = !{!"0x2bb5ad0.w2.b0", !92, i64 0}
!92 = !{!"0x2bb5ad0.w4.b0", !93, i64 0}
!93 = !{!"0x2bb5ad0.w8.b0", !94, i64 0}
!94 = !{!"0x2bb5ad0.w16.b0", !95, i64 0}
!95 = !{!"0x2bb5ad0.w32.b0", !96, i64 0}
!96 = !{!"0x2bb5ad0.w64.b0", !97, i64 0}
!97 = !{!"0x2bb5ad0.w128.b0", !98, i64 0}
!98 = !{!"0x2bb5ad0.w256.b0", !99, i64 0}
!99 = !{!"0x2bb5ad0.w512.b0", !100, i64 0}
!100 = !{!"0x2bb5ad0.w1024.b0", !101, i64 0}
!101 = !{!"i8*", !102, i64 0}
!102 = !{!"0x2bb5ad0", !8, i64 0}
!103 = !{!104, !104, i64 0}
!104 = !{!"0x2b8b220.w1.b0", !105, i64 0}
!105 = !{!"0x2b8b220.w2.b0", !106, i64 0}
!106 = !{!"0x2b8b220.w4.b0", !107, i64 0}
!107 = !{!"0x2b8b220.w8.b0", !108, i64 0}
!108 = !{!"0x2b8b220.w16.b0", !109, i64 0}
!109 = !{!"0x2b8b220.w32.b0", !110, i64 0}
!110 = !{!"0x2b8b220.w64.b0", !111, i64 0}
!111 = !{!"0x2b8b220.w128.b0", !112, i64 0}
!112 = !{!"0x2b8b220.w256.b0", !113, i64 0}
!113 = !{!"0x2b8b220.w512.b0", !114, i64 0}
!114 = !{!"0x2b8b220.w1024.b0", !115, i64 0}
!115 = !{!"i8*", !116, i64 0}
!116 = !{!"0x2b8b220", !8, i64 0}
!117 = !{!118, !118, i64 0}
!118 = !{!"0x2b8b220.w1.b1", !105, i64 0}
!119 = !{!120, !120, i64 0}
!120 = !{!"0x2b91d20.w1.b0", !121, i64 0}
!121 = !{!"0x2b91d20.w2.b0", !122, i64 0}
!122 = !{!"0x2b91d20.w4.b0", !123, i64 0}
!123 = !{!"0x2b91d20.w8.b0", !124, i64 0}
!124 = !{!"0x2b91d20.w16.b0", !125, i64 0}
!125 = !{!"0x2b91d20.w32.b0", !126, i64 0}
!126 = !{!"0x2b91d20.w64.b0", !127, i64 0}
!127 = !{!"0x2b91d20.w128.b0", !128, i64 0}
!128 = !{!"0x2b91d20.w256.b0", !129, i64 0}
!129 = !{!"0x2b91d20.w512.b0", !130, i64 0}
!130 = !{!"0x2b91d20.w1024.b0", !131, i64 0}
!131 = !{!"i8*", !132, i64 0}
!132 = !{!"0x2b91d20", !8, i64 0}
!133 = !{!134, !134, i64 0}
!134 = !{!"0x2b91d20.w1.b1", !121, i64 0}
!135 = !{!136, !136, i64 0}
!136 = !{!"0x2b872a0.w1.b0", !137, i64 0}
!137 = !{!"0x2b872a0.w2.b0", !138, i64 0}
!138 = !{!"0x2b872a0.w4.b0", !139, i64 0}
!139 = !{!"0x2b872a0.w8.b0", !140, i64 0}
!140 = !{!"0x2b872a0.w16.b0", !141, i64 0}
!141 = !{!"0x2b872a0.w32.b0", !142, i64 0}
!142 = !{!"0x2b872a0.w64.b0", !143, i64 0}
!143 = !{!"0x2b872a0.w128.b0", !144, i64 0}
!144 = !{!"0x2b872a0.w256.b0", !145, i64 0}
!145 = !{!"0x2b872a0.w512.b0", !146, i64 0}
!146 = !{!"0x2b872a0.w1024.b0", !147, i64 0}
!147 = !{!"i8*", !148, i64 0}
!148 = !{!"0x2b872a0", !8, i64 0}
!149 = !{!150, !150, i64 0}
!150 = !{!"0x2b872a0.w1.b1", !137, i64 0}
!151 = !{!152, !152, i64 0}
!152 = !{!"0x2b872a0.w1.b2", !153, i64 0}
!153 = !{!"0x2b872a0.w2.b2", !138, i64 0}
!154 = !{!155, !155, i64 0}
!155 = !{!"0x2bc7c80.w1.b0", !156, i64 0}
!156 = !{!"0x2bc7c80.w2.b0", !157, i64 0}
!157 = !{!"0x2bc7c80.w4.b0", !158, i64 0}
!158 = !{!"0x2bc7c80.w8.b0", !159, i64 0}
!159 = !{!"0x2bc7c80.w16.b0", !160, i64 0}
!160 = !{!"0x2bc7c80.w32.b0", !161, i64 0}
!161 = !{!"0x2bc7c80.w64.b0", !162, i64 0}
!162 = !{!"0x2bc7c80.w128.b0", !163, i64 0}
!163 = !{!"0x2bc7c80.w256.b0", !164, i64 0}
!164 = !{!"0x2bc7c80.w512.b0", !165, i64 0}
!165 = !{!"0x2bc7c80.w1024.b0", !166, i64 0}
!166 = !{!"i8*", !167, i64 0}
!167 = !{!"0x2bc7c80", !8, i64 0}
!168 = !{!169, !169, i64 0}
!169 = !{!"0x2bc7c80.w1.b1", !156, i64 0}
!170 = !{!171, !171, i64 0}
!171 = !{!"0x2bc7c80.w1.b2", !172, i64 0}
!172 = !{!"0x2bc7c80.w2.b2", !157, i64 0}
!173 = !{!174, !174, i64 0}
!174 = !{!"float", !175, i64 0}
!175 = !{!"0x2ba5c00", !8, i64 0}
!176 = !{!177, !177, i64 0}
!177 = !{!"float", !178, i64 0}
!178 = !{!"0x2bb6670", !8, i64 0}
!179 = !{!180, !180, i64 0}
!180 = !{!"0x2b99900.w1.b0", !181, i64 0}
!181 = !{!"0x2b99900.w2.b0", !182, i64 0}
!182 = !{!"0x2b99900.w4.b0", !183, i64 0}
!183 = !{!"0x2b99900.w8.b0", !184, i64 0}
!184 = !{!"0x2b99900.w16.b0", !185, i64 0}
!185 = !{!"0x2b99900.w32.b0", !186, i64 0}
!186 = !{!"0x2b99900.w64.b0", !187, i64 0}
!187 = !{!"0x2b99900.w128.b0", !188, i64 0}
!188 = !{!"0x2b99900.w256.b0", !189, i64 0}
!189 = !{!"0x2b99900.w512.b0", !190, i64 0}
!190 = !{!"0x2b99900.w1024.b0", !191, i64 0}
!191 = !{!"i8*", !192, i64 0}
!192 = !{!"0x2b99900", !8, i64 0}
!193 = !{!194, !194, i64 0}
!194 = !{!"0x2b99900.w1.b1", !181, i64 0}
!195 = !{!196, !196, i64 0}
!196 = !{!"0x2b99900.w1.b2", !197, i64 0}
!197 = !{!"0x2b99900.w2.b2", !182, i64 0}
!198 = !{!199, !199, i64 0}
!199 = !{!"0x2b99900.w1.b3", !197, i64 0}
!200 = !{!201, !201, i64 0}
!201 = !{!"0x2b99900.w1.b4", !202, i64 0}
!202 = !{!"0x2b99900.w2.b4", !203, i64 0}
!203 = !{!"0x2b99900.w4.b4", !183, i64 0}
!204 = !{!205, !205, i64 0}
!205 = !{!"0x2b9d150.w1.b0", !206, i64 0}
!206 = !{!"0x2b9d150.w2.b0", !207, i64 0}
!207 = !{!"0x2b9d150.w4.b0", !208, i64 0}
!208 = !{!"0x2b9d150.w8.b0", !209, i64 0}
!209 = !{!"0x2b9d150.w16.b0", !210, i64 0}
!210 = !{!"0x2b9d150.w32.b0", !211, i64 0}
!211 = !{!"0x2b9d150.w64.b0", !212, i64 0}
!212 = !{!"0x2b9d150.w128.b0", !213, i64 0}
!213 = !{!"0x2b9d150.w256.b0", !214, i64 0}
!214 = !{!"0x2b9d150.w512.b0", !215, i64 0}
!215 = !{!"0x2b9d150.w1024.b0", !216, i64 0}
!216 = !{!"i8*", !217, i64 0}
!217 = !{!"0x2b9d150", !8, i64 0}
!218 = !{!219, !219, i64 0}
!219 = !{!"0x2b9d150.w1.b1", !206, i64 0}
!220 = !{!221, !221, i64 0}
!221 = !{!"0x2b9d150.w1.b2", !222, i64 0}
!222 = !{!"0x2b9d150.w2.b2", !207, i64 0}
!223 = !{!224, !224, i64 0}
!224 = !{!"0x2b9d150.w1.b3", !222, i64 0}
!225 = !{!226, !226, i64 0}
!226 = !{!"0x2b9d150.w1.b4", !227, i64 0}
!227 = !{!"0x2b9d150.w2.b4", !228, i64 0}
!228 = !{!"0x2b9d150.w4.b4", !208, i64 0}
!229 = !{!230, !230, i64 0}
!230 = !{!"0x2ba25e0.w1.b0", !231, i64 0}
!231 = !{!"0x2ba25e0.w2.b0", !232, i64 0}
!232 = !{!"0x2ba25e0.w4.b0", !233, i64 0}
!233 = !{!"0x2ba25e0.w8.b0", !234, i64 0}
!234 = !{!"0x2ba25e0.w16.b0", !235, i64 0}
!235 = !{!"0x2ba25e0.w32.b0", !236, i64 0}
!236 = !{!"0x2ba25e0.w64.b0", !237, i64 0}
!237 = !{!"0x2ba25e0.w128.b0", !238, i64 0}
!238 = !{!"0x2ba25e0.w256.b0", !239, i64 0}
!239 = !{!"0x2ba25e0.w512.b0", !240, i64 0}
!240 = !{!"0x2ba25e0.w1024.b0", !241, i64 0}
!241 = !{!"float", !242, i64 0}
!242 = !{!"0x2ba25e0", !8, i64 0}
!243 = !{!244, !244, i64 0}
!244 = !{!"0x2ba2720.w1.b0", !245, i64 0}
!245 = !{!"0x2ba2720.w2.b0", !246, i64 0}
!246 = !{!"0x2ba2720.w4.b0", !247, i64 0}
!247 = !{!"0x2ba2720.w8.b0", !248, i64 0}
!248 = !{!"0x2ba2720.w16.b0", !249, i64 0}
!249 = !{!"0x2ba2720.w32.b0", !250, i64 0}
!250 = !{!"0x2ba2720.w64.b0", !251, i64 0}
!251 = !{!"0x2ba2720.w128.b0", !252, i64 0}
!252 = !{!"0x2ba2720.w256.b0", !253, i64 0}
!253 = !{!"0x2ba2720.w512.b0", !254, i64 0}
!254 = !{!"0x2ba2720.w1024.b0", !255, i64 0}
!255 = !{!"i32", !256, i64 0}
!256 = !{!"0x2ba2720", !8, i64 0}
!257 = !{!258, !258, i64 0}
!258 = !{!"0x2ba5990.w1.b0", !259, i64 0}
!259 = !{!"0x2ba5990.w2.b0", !260, i64 0}
!260 = !{!"0x2ba5990.w4.b0", !261, i64 0}
!261 = !{!"0x2ba5990.w8.b0", !262, i64 0}
!262 = !{!"0x2ba5990.w16.b0", !263, i64 0}
!263 = !{!"0x2ba5990.w32.b0", !264, i64 0}
!264 = !{!"0x2ba5990.w64.b0", !265, i64 0}
!265 = !{!"0x2ba5990.w128.b0", !266, i64 0}
!266 = !{!"0x2ba5990.w256.b0", !267, i64 0}
!267 = !{!"0x2ba5990.w512.b0", !268, i64 0}
!268 = !{!"0x2ba5990.w1024.b0", !269, i64 0}
!269 = !{!"i32", !270, i64 0}
!270 = !{!"0x2ba5990", !8, i64 0}
!271 = !{!272, !272, i64 0}
!272 = !{!"0x2b9f000.w1.b0", !273, i64 0}
!273 = !{!"0x2b9f000.w2.b0", !274, i64 0}
!274 = !{!"0x2b9f000.w4.b0", !275, i64 0}
!275 = !{!"0x2b9f000.w8.b0", !276, i64 0}
!276 = !{!"0x2b9f000.w16.b0", !277, i64 0}
!277 = !{!"0x2b9f000.w32.b0", !278, i64 0}
!278 = !{!"0x2b9f000.w64.b0", !279, i64 0}
!279 = !{!"0x2b9f000.w128.b0", !280, i64 0}
!280 = !{!"0x2b9f000.w256.b0", !281, i64 0}
!281 = !{!"0x2b9f000.w512.b0", !282, i64 0}
!282 = !{!"0x2b9f000.w1024.b0", !283, i64 0}
!283 = !{!"i32", !284, i64 0}
!284 = !{!"0x2b9f000", !8, i64 0}
!285 = !{!286, !286, i64 0}
!286 = !{!"float", !287, i64 0}
!287 = !{!"0x2b9ef60", !8, i64 0}
!288 = !{!289, !289, i64 0}
!289 = !{!"i32", !290, i64 0}
!290 = !{!"0x2b7c740", !8, i64 0}
