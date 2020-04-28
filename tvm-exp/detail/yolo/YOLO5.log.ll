; ModuleID = 'fconv'
source_filename = "fconv"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%0 = type { i32*, i32 }
%1 = type { i8*, %2, i32, %3, i64*, i64*, i64 }
%2 = type { i32, i32 }
%3 = type { i8, i8, i16 }
%4 = type { i8*, i8* }
%5 = type { i8*, i8* }
%6 = type { i8*, i8*, i8*, i32 }

@__TVMAPISetLastError = linkonce dllexport local_unnamed_addr global void (i8*)* null, align 8
@__TVMBackendParallelLaunch = linkonce dllexport local_unnamed_addr global i32 (i32 (i32, %0*, i8*)*, i8*, i32)* null, align 8
@.str = private constant [58 x i8] c"Assert fail: (num_args == 3), fconv: num_args should be 3\00", align 1
@.str.1 = private constant [133 x i8] c"Assert fail: ((((arg0.code == 3) || (arg0.code == 13)) || (arg0.code == 7)) || (arg0.code == 4)), fconv: Expect arg[0] to be pointer\00", align 1
@.str.2 = private constant [133 x i8] c"Assert fail: ((((arg1.code == 3) || (arg1.code == 13)) || (arg1.code == 7)) || (arg1.code == 4)), fconv: Expect arg[1] to be pointer\00", align 1
@.str.3 = private constant [133 x i8] c"Assert fail: ((((arg2.code == 3) || (arg2.code == 13)) || (arg2.code == 7)) || (arg2.code == 4)), fconv: Expect arg[2] to be pointer\00", align 1
@.str.4 = private constant [55 x i8] c"Assert fail: (dev_type == 1), device_type need to be 1\00", align 1
@.str.5 = private constant [81 x i8] c"Assert fail: (4 == tvm_struct_get(arg0, 0, 4)), arg0.ndim is expected to equal 4\00", align 1
@.str.6 = private constant [186 x i8] c"Assert fail: (((tvm_struct_get(arg0, 0, 5) == (uint8)2) && (tvm_struct_get(arg0, 0, 6) == (uint8)32)) && (tvm_struct_get(arg0, 0, 7) == (uint16)1)), arg0.dtype is expected to be float32\00", align 1
@.str.7 = private constant [95 x i8] c"Assert fail: (1 == int32(arg0.shape[0])), Argument arg0.shape[0] has an unsatisfied constraint\00", align 1
@.str.8 = private constant [97 x i8] c"Assert fail: (256 == int32(arg0.shape[1])), Argument arg0.shape[1] has an unsatisfied constraint\00", align 1
@.str.9 = private constant [96 x i8] c"Assert fail: (68 == int32(arg0.shape[2])), Argument arg0.shape[2] has an unsatisfied constraint\00", align 1
@.str.10 = private constant [96 x i8] c"Assert fail: (68 == int32(arg0.shape[3])), Argument arg0.shape[3] has an unsatisfied constraint\00", align 1
@.str.11 = private constant [202 x i8] c"Assert fail: ((((1 == int32(arg0.strides[3])) && (68 == int32(arg0.strides[2]))) && (4624 == int32(arg0.strides[1]))) && (1183744 == int32(arg0.strides[0]))), arg0.strides: expected to be compact array\00", align 1
@.str.12 = private constant [112 x i8] c"Assert fail: ((uint64)0 == tvm_struct_get(arg0, 0, 8)), Argument arg0.byte_offset has an unsatisfied constraint\00", align 1
@.str.13 = private constant [81 x i8] c"Assert fail: (4 == tvm_struct_get(arg1, 0, 4)), arg1.ndim is expected to equal 4\00", align 1
@.str.14 = private constant [186 x i8] c"Assert fail: (((tvm_struct_get(arg1, 0, 5) == (uint8)2) && (tvm_struct_get(arg1, 0, 6) == (uint8)32)) && (tvm_struct_get(arg1, 0, 7) == (uint16)1)), arg1.dtype is expected to be float32\00", align 1
@.str.15 = private constant [97 x i8] c"Assert fail: (128 == int32(arg1.shape[0])), Argument arg1.shape[0] has an unsatisfied constraint\00", align 1
@.str.16 = private constant [97 x i8] c"Assert fail: (256 == int32(arg1.shape[1])), Argument arg1.shape[1] has an unsatisfied constraint\00", align 1
@.str.17 = private constant [95 x i8] c"Assert fail: (1 == int32(arg1.shape[2])), Argument arg1.shape[2] has an unsatisfied constraint\00", align 1
@.str.18 = private constant [95 x i8] c"Assert fail: (1 == int32(arg1.shape[3])), Argument arg1.shape[3] has an unsatisfied constraint\00", align 1
@.str.19 = private constant [194 x i8] c"Assert fail: ((((1 == int32(arg1.strides[3])) && (1 == int32(arg1.strides[2]))) && (1 == int32(arg1.strides[1]))) && (256 == int32(arg1.strides[0]))), arg1.strides: expected to be compact array\00", align 1
@.str.20 = private constant [112 x i8] c"Assert fail: ((uint64)0 == tvm_struct_get(arg1, 0, 8)), Argument arg1.byte_offset has an unsatisfied constraint\00", align 1
@.str.21 = private constant [105 x i8] c"Assert fail: (1 == tvm_struct_get(arg1, 0, 10)), Argument arg1.device_type has an unsatisfied constraint\00", align 1
@.str.22 = private constant [107 x i8] c"Assert fail: (dev_id == tvm_struct_get(arg1, 0, 9)), Argument arg1.device_id has an unsatisfied constraint\00", align 1
@.str.23 = private constant [81 x i8] c"Assert fail: (4 == tvm_struct_get(arg2, 0, 4)), arg2.ndim is expected to equal 4\00", align 1
@.str.24 = private constant [186 x i8] c"Assert fail: (((tvm_struct_get(arg2, 0, 5) == (uint8)2) && (tvm_struct_get(arg2, 0, 6) == (uint8)32)) && (tvm_struct_get(arg2, 0, 7) == (uint16)1)), arg2.dtype is expected to be float32\00", align 1
@.str.25 = private constant [95 x i8] c"Assert fail: (1 == int32(arg2.shape[0])), Argument arg2.shape[0] has an unsatisfied constraint\00", align 1
@.str.26 = private constant [97 x i8] c"Assert fail: (128 == int32(arg2.shape[1])), Argument arg2.shape[1] has an unsatisfied constraint\00", align 1
@.str.27 = private constant [96 x i8] c"Assert fail: (68 == int32(arg2.shape[2])), Argument arg2.shape[2] has an unsatisfied constraint\00", align 1
@.str.28 = private constant [96 x i8] c"Assert fail: (68 == int32(arg2.shape[3])), Argument arg2.shape[3] has an unsatisfied constraint\00", align 1
@.str.29 = private constant [201 x i8] c"Assert fail: ((((1 == int32(arg2.strides[3])) && (68 == int32(arg2.strides[2]))) && (4624 == int32(arg2.strides[1]))) && (591872 == int32(arg2.strides[0]))), arg2.strides: expected to be compact array\00", align 1
@.str.30 = private constant [112 x i8] c"Assert fail: ((uint64)0 == tvm_struct_get(arg2, 0, 8)), Argument arg2.byte_offset has an unsatisfied constraint\00", align 1
@.str.31 = private constant [105 x i8] c"Assert fail: (1 == tvm_struct_get(arg2, 0, 10)), Argument arg2.device_type has an unsatisfied constraint\00", align 1
@.str.32 = private constant [107 x i8] c"Assert fail: (dev_id == tvm_struct_get(arg2, 0, 9)), Argument arg2.device_id has an unsatisfied constraint\00", align 1
@__TVMBackendAllocWorkspace = linkonce dllexport local_unnamed_addr global i8* (i32, i32, i64, i32, i32)* null, align 8
@__TVMBackendFreeWorkspace = linkonce dllexport local_unnamed_addr global i32 (i32, i32, i8*)* null, align 8
@__tvm_main__ = weak local_unnamed_addr constant [6 x i8] c"fconv\00", align 1

define dllexport i32 @fconv(i8* noalias nocapture readonly, i8* noalias nocapture readonly, i32) local_unnamed_addr {
entry:
  call void @get_time(i32 1)
  %3 = icmp eq i32 %2, 3
  br i1 %3, label %assert_end, label %assert_fail, !prof !5

assert_fail:                                      ; preds = %entry
  %4 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %4(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  ret i32 -1

assert_end:                                       ; preds = %entry
  %5 = bitcast i8* %0 to %1**
  %6 = load %1*, %1** %5, align 8
  %7 = bitcast i8* %1 to i32*
  %8 = load i32, i32* %7, align 4, !tbaa !9
  %9 = getelementptr inbounds i8, i8* %0, i64 8
  %10 = bitcast i8* %9 to %1**
  %11 = load %1*, %1** %10, align 8
  %12 = getelementptr inbounds i8, i8* %0, i64 16
  %13 = bitcast i8* %12 to %1**
  %14 = load %1*, %1** %13, align 8
  %15 = getelementptr inbounds i8, i8* %1, i64 8
  %16 = bitcast i8* %15 to i32*
  %17 = load i32, i32* %16, align 4, !tbaa !23
  %18 = getelementptr inbounds %1, %1* %6, i64 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = getelementptr inbounds %1, %1* %6, i64 0, i32 4
  %21 = load i64*, i64** %20, align 8
  %22 = getelementptr inbounds %1, %1* %6, i64 0, i32 5
  %23 = load i64*, i64** %22, align 8
  %24 = getelementptr inbounds %1, %1* %6, i64 0, i32 1, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %1, %1* %6, i64 0, i32 1, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %1, %1* %11, i64 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = getelementptr inbounds %1, %1* %11, i64 0, i32 4
  %31 = load i64*, i64** %30, align 8
  %32 = getelementptr inbounds %1, %1* %11, i64 0, i32 5
  %33 = load i64*, i64** %32, align 8
  %34 = getelementptr inbounds %1, %1* %14, i64 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = getelementptr inbounds %1, %1* %14, i64 0, i32 4
  %37 = load i64*, i64** %36, align 8
  %38 = getelementptr inbounds %1, %1* %14, i64 0, i32 5
  %39 = load i64*, i64** %38, align 8
  switch i32 %8, label %assert_fail1 [
    i32 13, label %assert_end2
    i32 7, label %assert_end2
    i32 4, label %assert_end2
    i32 3, label %assert_end2
  ]

assert_fail1:                                     ; preds = %assert_end
  %40 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %40(i8* getelementptr inbounds ([133 x i8], [133 x i8]* @.str.1, i64 0, i64 0))
  ret i32 -1

assert_end2:                                      ; preds = %assert_end, %assert_end, %assert_end, %assert_end
  %41 = getelementptr inbounds i8, i8* %1, i64 4
  %42 = bitcast i8* %41 to i32*
  %43 = load i32, i32* %42, align 4, !tbaa !26
  switch i32 %43, label %assert_fail3 [
    i32 13, label %assert_end4
    i32 7, label %assert_end4
    i32 4, label %assert_end4
    i32 3, label %assert_end4
  ]

assert_fail3:                                     ; preds = %assert_end2
  %44 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %44(i8* getelementptr inbounds ([133 x i8], [133 x i8]* @.str.2, i64 0, i64 0))
  ret i32 -1

assert_end4:                                      ; preds = %assert_end2, %assert_end2, %assert_end2, %assert_end2
  switch i32 %17, label %assert_fail5 [
    i32 13, label %assert_end6
    i32 7, label %assert_end6
    i32 4, label %assert_end6
    i32 3, label %assert_end6
  ]

assert_fail5:                                     ; preds = %assert_end4
  %45 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %45(i8* getelementptr inbounds ([133 x i8], [133 x i8]* @.str.3, i64 0, i64 0))
  ret i32 -1

assert_end6:                                      ; preds = %assert_end4, %assert_end4, %assert_end4, %assert_end4
  %46 = icmp eq i32 %25, 1
  br i1 %46, label %assert_end8, label %assert_fail7, !prof !5

assert_fail7:                                     ; preds = %assert_end6
  %47 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %47(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0))
  ret i32 -1

assert_end8:                                      ; preds = %assert_end6
  %48 = getelementptr inbounds %1, %1* %6, i64 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 %49, 4
  br i1 %50, label %assert_end10, label %assert_fail9, !prof !5

assert_fail9:                                     ; preds = %assert_end8
  %51 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %51(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.5, i64 0, i64 0))
  ret i32 -1

assert_end10:                                     ; preds = %assert_end8
  %52 = getelementptr inbounds %1, %1* %6, i64 0, i32 3, i32 2
  %53 = load i16, i16* %52, align 2
  %54 = icmp eq i16 %53, 1
  %55 = getelementptr inbounds %1, %1* %6, i64 0, i32 3, i32 1
  %56 = load i8, i8* %55, align 1
  %57 = icmp eq i8 %56, 32
  %58 = getelementptr inbounds %1, %1* %6, i64 0, i32 3, i32 0
  %59 = load i8, i8* %58, align 1
  %60 = icmp eq i8 %59, 2
  %61 = and i1 %57, %60
  %62 = and i1 %54, %61
  br i1 %62, label %assert_end12, label %assert_fail11, !prof !5

assert_fail11:                                    ; preds = %assert_end10
  %63 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %63(i8* getelementptr inbounds ([186 x i8], [186 x i8]* @.str.6, i64 0, i64 0))
  ret i32 -1

assert_end12:                                     ; preds = %assert_end10
  %64 = load i64, i64* %21, align 8, !tbaa !28
  %65 = trunc i64 %64 to i32
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %assert_end14, label %assert_fail13, !prof !5

assert_fail13:                                    ; preds = %assert_end12
  %67 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %67(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.7, i64 0, i64 0))
  ret i32 -1

assert_end14:                                     ; preds = %assert_end12
  %68 = getelementptr inbounds i64, i64* %21, i64 1
  %69 = load i64, i64* %68, align 8, !tbaa !42
  %70 = trunc i64 %69 to i32
  %71 = icmp eq i32 %70, 256
  br i1 %71, label %assert_end16, label %assert_fail15, !prof !5

assert_fail15:                                    ; preds = %assert_end14
  %72 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %72(i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.8, i64 0, i64 0))
  ret i32 -1

assert_end16:                                     ; preds = %assert_end14
  %73 = getelementptr inbounds i64, i64* %21, i64 2
  %74 = load i64, i64* %73, align 8, !tbaa !44
  %75 = trunc i64 %74 to i32
  %76 = icmp eq i32 %75, 68
  br i1 %76, label %assert_end18, label %assert_fail17, !prof !5

assert_fail17:                                    ; preds = %assert_end16
  %77 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %77(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.9, i64 0, i64 0))
  ret i32 -1

assert_end18:                                     ; preds = %assert_end16
  %78 = getelementptr inbounds i64, i64* %21, i64 3
  %79 = load i64, i64* %78, align 8, !tbaa !47
  %80 = trunc i64 %79 to i32
  %81 = icmp eq i32 %80, 68
  br i1 %81, label %assert_end20, label %assert_fail19, !prof !5

assert_fail19:                                    ; preds = %assert_end18
  %82 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %82(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.10, i64 0, i64 0))
  ret i32 -1

assert_end20:                                     ; preds = %assert_end18
  %83 = icmp eq i64* %23, null
  br i1 %83, label %if_end, label %if_then, !prof !49

if_then:                                          ; preds = %assert_end20
  %84 = bitcast i64* %23 to <4 x i64>*
  %85 = load <4 x i64>, <4 x i64>* %84, align 8, !tbaa !50
  %86 = trunc <4 x i64> %85 to <4 x i32>
  %87 = icmp eq <4 x i32> %86, <i32 1183744, i32 4624, i32 68, i32 1>
  %rdx.shuf75 = shufflevector <4 x i1> %87, <4 x i1> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>
  %bin.rdx76 = and <4 x i1> %87, %rdx.shuf75
  %rdx.shuf77 = shufflevector <4 x i1> %bin.rdx76, <4 x i1> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>
  %bin.rdx78 = and <4 x i1> %bin.rdx76, %rdx.shuf77
  %88 = extractelement <4 x i1> %bin.rdx78, i32 0
  br i1 %88, label %if_end, label %assert_fail21, !prof !5

if_end:                                           ; preds = %assert_end20, %if_then
  %89 = getelementptr inbounds %1, %1* %6, i64 0, i32 6
  %90 = load i64, i64* %89, align 8
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %assert_end24, label %assert_fail23, !prof !5

assert_fail21:                                    ; preds = %if_then
  %92 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %92(i8* getelementptr inbounds ([202 x i8], [202 x i8]* @.str.11, i64 0, i64 0))
  ret i32 -1

assert_fail23:                                    ; preds = %if_end
  %93 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %93(i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.12, i64 0, i64 0))
  ret i32 -1

assert_end24:                                     ; preds = %if_end
  %94 = getelementptr inbounds %1, %1* %11, i64 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = icmp eq i32 %95, 4
  br i1 %96, label %assert_end26, label %assert_fail25, !prof !5

assert_fail25:                                    ; preds = %assert_end24
  %97 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %97(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.13, i64 0, i64 0))
  ret i32 -1

assert_end26:                                     ; preds = %assert_end24
  %98 = getelementptr inbounds %1, %1* %11, i64 0, i32 3, i32 2
  %99 = load i16, i16* %98, align 2
  %100 = icmp eq i16 %99, 1
  %101 = getelementptr inbounds %1, %1* %11, i64 0, i32 3, i32 1
  %102 = load i8, i8* %101, align 1
  %103 = icmp eq i8 %102, 32
  %104 = getelementptr inbounds %1, %1* %11, i64 0, i32 3, i32 0
  %105 = load i8, i8* %104, align 1
  %106 = icmp eq i8 %105, 2
  %107 = and i1 %103, %106
  %108 = and i1 %100, %107
  br i1 %108, label %assert_end28, label %assert_fail27, !prof !5

assert_fail27:                                    ; preds = %assert_end26
  %109 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %109(i8* getelementptr inbounds ([186 x i8], [186 x i8]* @.str.14, i64 0, i64 0))
  ret i32 -1

assert_end28:                                     ; preds = %assert_end26
  %110 = load i64, i64* %31, align 8, !tbaa !62
  %111 = trunc i64 %110 to i32
  %112 = icmp eq i32 %111, 128
  br i1 %112, label %assert_end30, label %assert_fail29, !prof !5

assert_fail29:                                    ; preds = %assert_end28
  %113 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %113(i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.15, i64 0, i64 0))
  ret i32 -1

assert_end30:                                     ; preds = %assert_end28
  %114 = getelementptr inbounds i64, i64* %31, i64 1
  %115 = load i64, i64* %114, align 8, !tbaa !76
  %116 = trunc i64 %115 to i32
  %117 = icmp eq i32 %116, 256
  br i1 %117, label %assert_end32, label %assert_fail31, !prof !5

assert_fail31:                                    ; preds = %assert_end30
  %118 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %118(i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.16, i64 0, i64 0))
  ret i32 -1

assert_end32:                                     ; preds = %assert_end30
  %119 = getelementptr inbounds i64, i64* %31, i64 2
  %120 = load i64, i64* %119, align 8, !tbaa !78
  %121 = trunc i64 %120 to i32
  %122 = icmp eq i32 %121, 1
  br i1 %122, label %assert_end34, label %assert_fail33, !prof !5

assert_fail33:                                    ; preds = %assert_end32
  %123 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %123(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.17, i64 0, i64 0))
  ret i32 -1

assert_end34:                                     ; preds = %assert_end32
  %124 = getelementptr inbounds i64, i64* %31, i64 3
  %125 = load i64, i64* %124, align 8, !tbaa !81
  %126 = trunc i64 %125 to i32
  %127 = icmp eq i32 %126, 1
  br i1 %127, label %assert_end36, label %assert_fail35, !prof !5

assert_fail35:                                    ; preds = %assert_end34
  %128 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %128(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.18, i64 0, i64 0))
  ret i32 -1

assert_end36:                                     ; preds = %assert_end34
  %129 = icmp eq i64* %33, null
  br i1 %129, label %if_end38, label %if_then37, !prof !49

if_then37:                                        ; preds = %assert_end36
  %130 = bitcast i64* %33 to <4 x i64>*
  %131 = load <4 x i64>, <4 x i64>* %130, align 8, !tbaa !83
  %132 = trunc <4 x i64> %131 to <4 x i32>
  %133 = icmp eq <4 x i32> %132, <i32 256, i32 1, i32 1, i32 1>
  %rdx.shuf71 = shufflevector <4 x i1> %133, <4 x i1> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>
  %bin.rdx72 = and <4 x i1> %133, %rdx.shuf71
  %rdx.shuf73 = shufflevector <4 x i1> %bin.rdx72, <4 x i1> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>
  %bin.rdx74 = and <4 x i1> %bin.rdx72, %rdx.shuf73
  %134 = extractelement <4 x i1> %bin.rdx74, i32 0
  br i1 %134, label %if_end38, label %assert_fail39, !prof !5

if_end38:                                         ; preds = %assert_end36, %if_then37
  %135 = getelementptr inbounds %1, %1* %11, i64 0, i32 6
  %136 = load i64, i64* %135, align 8
  %137 = icmp eq i64 %136, 0
  br i1 %137, label %assert_end42, label %assert_fail41, !prof !5

assert_fail39:                                    ; preds = %if_then37
  %138 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %138(i8* getelementptr inbounds ([194 x i8], [194 x i8]* @.str.19, i64 0, i64 0))
  ret i32 -1

assert_fail41:                                    ; preds = %if_end38
  %139 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %139(i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.20, i64 0, i64 0))
  ret i32 -1

assert_end42:                                     ; preds = %if_end38
  %140 = getelementptr inbounds %1, %1* %11, i64 0, i32 1, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = icmp eq i32 %141, 1
  br i1 %142, label %assert_end44, label %assert_fail43, !prof !5

assert_fail43:                                    ; preds = %assert_end42
  %143 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %143(i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.21, i64 0, i64 0))
  ret i32 -1

assert_end44:                                     ; preds = %assert_end42
  %144 = getelementptr inbounds %1, %1* %11, i64 0, i32 1, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = icmp eq i32 %27, %145
  br i1 %146, label %assert_end46, label %assert_fail45, !prof !5

assert_fail45:                                    ; preds = %assert_end44
  %147 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %147(i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.22, i64 0, i64 0))
  ret i32 -1

assert_end46:                                     ; preds = %assert_end44
  %148 = getelementptr inbounds %1, %1* %14, i64 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = icmp eq i32 %149, 4
  br i1 %150, label %assert_end48, label %assert_fail47, !prof !5

assert_fail47:                                    ; preds = %assert_end46
  %151 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %151(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.23, i64 0, i64 0))
  ret i32 -1

assert_end48:                                     ; preds = %assert_end46
  %152 = getelementptr inbounds %1, %1* %14, i64 0, i32 3, i32 2
  %153 = load i16, i16* %152, align 2
  %154 = icmp eq i16 %153, 1
  %155 = getelementptr inbounds %1, %1* %14, i64 0, i32 3, i32 1
  %156 = load i8, i8* %155, align 1
  %157 = icmp eq i8 %156, 32
  %158 = getelementptr inbounds %1, %1* %14, i64 0, i32 3, i32 0
  %159 = load i8, i8* %158, align 1
  %160 = icmp eq i8 %159, 2
  %161 = and i1 %157, %160
  %162 = and i1 %154, %161
  br i1 %162, label %assert_end50, label %assert_fail49, !prof !5

assert_fail49:                                    ; preds = %assert_end48
  %163 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %163(i8* getelementptr inbounds ([186 x i8], [186 x i8]* @.str.24, i64 0, i64 0))
  ret i32 -1

assert_end50:                                     ; preds = %assert_end48
  %164 = load i64, i64* %37, align 8, !tbaa !95
  %165 = trunc i64 %164 to i32
  %166 = icmp eq i32 %165, 1
  br i1 %166, label %assert_end52, label %assert_fail51, !prof !5

assert_fail51:                                    ; preds = %assert_end50
  %167 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %167(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.25, i64 0, i64 0))
  ret i32 -1

assert_end52:                                     ; preds = %assert_end50
  %168 = getelementptr inbounds i64, i64* %37, i64 1
  %169 = load i64, i64* %168, align 8, !tbaa !109
  %170 = trunc i64 %169 to i32
  %171 = icmp eq i32 %170, 128
  br i1 %171, label %assert_end54, label %assert_fail53, !prof !5

assert_fail53:                                    ; preds = %assert_end52
  %172 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %172(i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.26, i64 0, i64 0))
  ret i32 -1

assert_end54:                                     ; preds = %assert_end52
  %173 = getelementptr inbounds i64, i64* %37, i64 2
  %174 = load i64, i64* %173, align 8, !tbaa !111
  %175 = trunc i64 %174 to i32
  %176 = icmp eq i32 %175, 68
  br i1 %176, label %assert_end56, label %assert_fail55, !prof !5

assert_fail55:                                    ; preds = %assert_end54
  %177 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %177(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.27, i64 0, i64 0))
  ret i32 -1

assert_end56:                                     ; preds = %assert_end54
  %178 = getelementptr inbounds i64, i64* %37, i64 3
  %179 = load i64, i64* %178, align 8, !tbaa !114
  %180 = trunc i64 %179 to i32
  %181 = icmp eq i32 %180, 68
  br i1 %181, label %assert_end58, label %assert_fail57, !prof !5

assert_fail57:                                    ; preds = %assert_end56
  %182 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %182(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.28, i64 0, i64 0))
  ret i32 -1

assert_end58:                                     ; preds = %assert_end56
  %183 = icmp eq i64* %39, null
  br i1 %183, label %if_end60, label %if_then59, !prof !49

if_then59:                                        ; preds = %assert_end58
  %184 = bitcast i64* %39 to <4 x i64>*
  %185 = load <4 x i64>, <4 x i64>* %184, align 8, !tbaa !116
  %186 = trunc <4 x i64> %185 to <4 x i32>
  %187 = icmp eq <4 x i32> %186, <i32 591872, i32 4624, i32 68, i32 1>
  %rdx.shuf = shufflevector <4 x i1> %187, <4 x i1> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>
  %bin.rdx = and <4 x i1> %187, %rdx.shuf
  %rdx.shuf69 = shufflevector <4 x i1> %bin.rdx, <4 x i1> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>
  %bin.rdx70 = and <4 x i1> %bin.rdx, %rdx.shuf69
  %188 = extractelement <4 x i1> %bin.rdx70, i32 0
  br i1 %188, label %if_end60, label %assert_fail61, !prof !5

if_end60:                                         ; preds = %assert_end58, %if_then59
  %189 = getelementptr inbounds %1, %1* %14, i64 0, i32 6
  %190 = load i64, i64* %189, align 8
  %191 = icmp eq i64 %190, 0
  br i1 %191, label %assert_end64, label %assert_fail63, !prof !5

assert_fail61:                                    ; preds = %if_then59
  %192 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %192(i8* getelementptr inbounds ([201 x i8], [201 x i8]* @.str.29, i64 0, i64 0))
  ret i32 -1

assert_fail63:                                    ; preds = %if_end60
  %193 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %193(i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.30, i64 0, i64 0))
  ret i32 -1

assert_end64:                                     ; preds = %if_end60
  %194 = getelementptr inbounds %1, %1* %14, i64 0, i32 1, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = icmp eq i32 %195, 1
  br i1 %196, label %assert_end66, label %assert_fail65, !prof !5

assert_fail65:                                    ; preds = %assert_end64
  %197 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %197(i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.31, i64 0, i64 0))
  ret i32 -1

assert_end66:                                     ; preds = %assert_end64
  %198 = getelementptr inbounds %1, %1* %14, i64 0, i32 1, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = icmp eq i32 %27, %199
  br i1 %200, label %assert_end68, label %assert_fail67, !prof !5

assert_fail67:                                    ; preds = %assert_end66
  %201 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %201(i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.32, i64 0, i64 0))
  ret i32 -1

assert_end68:                                     ; preds = %assert_end66
  %202 = call fastcc i32 @fconv_compute_(i8* %19, i8* %29, i8* %35, i32 %27)
  call void @get_time(i32 0)
  ret i32 %202
}

; Function Attrs: noinline
define private fastcc i32 @fconv_compute_(i8* noalias, i8* noalias, i8* noalias, i32) unnamed_addr #0 {
entry:
  %4 = load i8* (i32, i32, i64, i32, i32)*, i8* (i32, i32, i64, i32, i32)** @__TVMBackendAllocWorkspace, align 8, !tbaa !6
  %5 = tail call i8* %4(i32 1, i32 %3, i64 4734976, i32 2, i32 32)
  %6 = load i8* (i32, i32, i64, i32, i32)*, i8* (i32, i32, i64, i32, i32)** @__TVMBackendAllocWorkspace, align 8, !tbaa !6
  %7 = tail call i8* %6(i32 1, i32 %3, i64 131072, i32 2, i32 32)
  %8 = alloca %4, align 8
  %9 = getelementptr inbounds %4, %4* %8, i64 0, i32 0
  store i8* %5, i8** %9, align 8
  %10 = getelementptr inbounds %4, %4* %8, i64 0, i32 1
  store i8* %0, i8** %10, align 8
  %11 = bitcast %4* %8 to i8*
  %12 = load i32 (i32 (i32, %0*, i8*)*, i8*, i32)*, i32 (i32 (i32, %0*, i8*)*, i8*, i32)** @__TVMBackendParallelLaunch, align 8, !tbaa !6
  %13 = call i32 %12(i32 (i32, %0*, i8*)* nonnull @__tvm_parallel_lambda, i8* nonnull %11, i32 0)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %call_end, label %call_fail, !prof !5

call_fail:                                        ; preds = %call_end4, %call_end, %call_end6, %entry
  %merge = phi i32 [ %13, %entry ], [ 0, %call_end6 ], [ %20, %call_end ], [ %29, %call_end4 ]
  ret i32 %merge

call_end:                                         ; preds = %entry
  %15 = alloca %5, align 8
  %16 = getelementptr inbounds %5, %5* %15, i64 0, i32 0
  store i8* %7, i8** %16, align 8
  %17 = getelementptr inbounds %5, %5* %15, i64 0, i32 1
  store i8* %1, i8** %17, align 8
  %18 = bitcast %5* %15 to i8*
  %19 = load i32 (i32 (i32, %0*, i8*)*, i8*, i32)*, i32 (i32 (i32, %0*, i8*)*, i8*, i32)** @__TVMBackendParallelLaunch, align 8, !tbaa !6
  %20 = call i32 %19(i32 (i32, %0*, i8*)* nonnull @__tvm_parallel_lambda.33, i8* nonnull %18, i32 0)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %call_end4, label %call_fail, !prof !5

call_end4:                                        ; preds = %call_end
  %22 = alloca %6, align 8
  %23 = getelementptr inbounds %6, %6* %22, i64 0, i32 0
  store i8* %5, i8** %23, align 8
  %24 = getelementptr inbounds %6, %6* %22, i64 0, i32 1
  store i8* %7, i8** %24, align 8
  %25 = getelementptr inbounds %6, %6* %22, i64 0, i32 2
  store i8* %2, i8** %25, align 8
  %26 = getelementptr inbounds %6, %6* %22, i64 0, i32 3
  store i32 %3, i32* %26, align 8
  %27 = bitcast %6* %22 to i8*
  %28 = load i32 (i32 (i32, %0*, i8*)*, i8*, i32)*, i32 (i32 (i32, %0*, i8*)*, i8*, i32)** @__TVMBackendParallelLaunch, align 8, !tbaa !6
  %29 = call i32 %28(i32 (i32, %0*, i8*)* nonnull @__tvm_parallel_lambda.34, i8* nonnull %27, i32 0)
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %call_end6, label %call_fail, !prof !5

call_end6:                                        ; preds = %call_end4
  %31 = load i32 (i32, i32, i8*)*, i32 (i32, i32, i8*)** @__TVMBackendFreeWorkspace, align 8, !tbaa !6
  %32 = call i32 %31(i32 1, i32 %3, i8* %7)
  %33 = load i32 (i32, i32, i8*)*, i32 (i32, i32, i8*)** @__TVMBackendFreeWorkspace, align 8, !tbaa !6
  %34 = call i32 %33(i32 1, i32 %3, i8* %5)
  br label %call_fail
}

; Function Attrs: norecurse nounwind
define private i32 @__tvm_parallel_lambda(i32, %0* nocapture readonly, i8* nocapture readonly) #1 {
entry:
  %3 = bitcast i8* %2 to float**
  %4 = load float*, float** %3, align 8
  %5 = getelementptr inbounds i8, i8* %2, i64 8
  %6 = bitcast i8* %5 to float**
  %7 = load float*, float** %6, align 8
  %8 = getelementptr inbounds %0, %0* %1, i64 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = add nsw i32 %9, 67
  %11 = sdiv i32 %10, %9
  %12 = add nsw i32 %0, 1
  %13 = mul nsw i32 %11, %12
  %14 = icmp slt i32 %13, 68
  %15 = select i1 %14, i32 %13, i32 68
  %16 = mul nsw i32 %11, %0
  %17 = icmp slt i32 %16, 68
  %18 = select i1 %17, i32 %16, i32 68
  %19 = icmp slt i32 %18, %15
  br i1 %19, label %for_begin1.preheader.preheader, label %for_end, !prof !5

for_begin1.preheader.preheader:                   ; preds = %entry
  %20 = add i32 %18, 1
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %21, -1
  %23 = sext i32 %15 to i64
  br label %for_begin1.preheader

for_begin1.preheader:                             ; preds = %for_begin1.preheader.preheader, %for_end3
  %indvars.iv11 = phi i64 [ %22, %for_begin1.preheader.preheader ], [ %indvars.iv.next12, %for_end3 ]
  %24 = mul nsw i64 %indvars.iv11, 17408
  %25 = mul nsw i64 %indvars.iv11, 68
  br label %for_begin4.preheader

for_end:                                          ; preds = %for_end3, %entry
  ret i32 0

for_begin4.preheader:                             ; preds = %for_begin4.preheader, %for_begin1.preheader
  %indvar7 = phi i64 [ 0, %for_begin1.preheader ], [ %indvar.next8, %for_begin4.preheader ]
  %26 = mul nuw nsw i64 %indvar7, 68
  %27 = add nsw i64 %26, %24
  %28 = mul nuw nsw i64 %indvar7, 4624
  %29 = add nsw i64 %28, %25
  %30 = getelementptr inbounds float, float* %7, i64 %29
  %31 = bitcast float* %30 to <8 x i32>*
  %wide.load = load <8 x i32>, <8 x i32>* %31, align 4, !tbaa !128
  %32 = getelementptr inbounds float, float* %4, i64 %27
  %33 = bitcast float* %32 to <8 x i32>*
  store <8 x i32> %wide.load, <8 x i32>* %33, align 4, !tbaa !131
  %34 = add nsw i64 %27, 8
  %35 = add nsw i64 %29, 8
  %36 = getelementptr inbounds float, float* %7, i64 %35
  %37 = bitcast float* %36 to <8 x i32>*
  %wide.load.1 = load <8 x i32>, <8 x i32>* %37, align 4, !tbaa !128
  %38 = getelementptr inbounds float, float* %4, i64 %34
  %39 = bitcast float* %38 to <8 x i32>*
  store <8 x i32> %wide.load.1, <8 x i32>* %39, align 4, !tbaa !131
  %40 = add nsw i64 %27, 16
  %41 = add nsw i64 %29, 16
  %42 = getelementptr inbounds float, float* %7, i64 %41
  %43 = bitcast float* %42 to <8 x i32>*
  %wide.load.2 = load <8 x i32>, <8 x i32>* %43, align 4, !tbaa !128
  %44 = getelementptr inbounds float, float* %4, i64 %40
  %45 = bitcast float* %44 to <8 x i32>*
  store <8 x i32> %wide.load.2, <8 x i32>* %45, align 4, !tbaa !131
  %46 = add nsw i64 %27, 24
  %47 = add nsw i64 %29, 24
  %48 = getelementptr inbounds float, float* %7, i64 %47
  %49 = bitcast float* %48 to <8 x i32>*
  %wide.load.3 = load <8 x i32>, <8 x i32>* %49, align 4, !tbaa !128
  %50 = getelementptr inbounds float, float* %4, i64 %46
  %51 = bitcast float* %50 to <8 x i32>*
  store <8 x i32> %wide.load.3, <8 x i32>* %51, align 4, !tbaa !131
  %52 = add nsw i64 %27, 32
  %53 = add nsw i64 %29, 32
  %54 = getelementptr inbounds float, float* %7, i64 %53
  %55 = bitcast float* %54 to <8 x i32>*
  %wide.load.4 = load <8 x i32>, <8 x i32>* %55, align 4, !tbaa !128
  %56 = getelementptr inbounds float, float* %4, i64 %52
  %57 = bitcast float* %56 to <8 x i32>*
  store <8 x i32> %wide.load.4, <8 x i32>* %57, align 4, !tbaa !131
  %58 = add nsw i64 %27, 40
  %59 = add nsw i64 %29, 40
  %60 = getelementptr inbounds float, float* %7, i64 %59
  %61 = bitcast float* %60 to <8 x i32>*
  %wide.load.5 = load <8 x i32>, <8 x i32>* %61, align 4, !tbaa !128
  %62 = getelementptr inbounds float, float* %4, i64 %58
  %63 = bitcast float* %62 to <8 x i32>*
  store <8 x i32> %wide.load.5, <8 x i32>* %63, align 4, !tbaa !131
  %64 = add nsw i64 %27, 48
  %65 = add nsw i64 %29, 48
  %66 = getelementptr inbounds float, float* %7, i64 %65
  %67 = bitcast float* %66 to <8 x i32>*
  %wide.load.6 = load <8 x i32>, <8 x i32>* %67, align 4, !tbaa !128
  %68 = getelementptr inbounds float, float* %4, i64 %64
  %69 = bitcast float* %68 to <8 x i32>*
  store <8 x i32> %wide.load.6, <8 x i32>* %69, align 4, !tbaa !131
  %70 = add nsw i64 %27, 56
  %71 = add nsw i64 %29, 56
  %72 = getelementptr inbounds float, float* %7, i64 %71
  %73 = bitcast float* %72 to <8 x i32>*
  %wide.load.7 = load <8 x i32>, <8 x i32>* %73, align 4, !tbaa !128
  %74 = getelementptr inbounds float, float* %4, i64 %70
  %75 = bitcast float* %74 to <8 x i32>*
  store <8 x i32> %wide.load.7, <8 x i32>* %75, align 4, !tbaa !131
  %76 = add nsw i64 %27, 64
  %77 = add nsw i64 %29, 64
  %78 = getelementptr inbounds float, float* %7, i64 %77
  %79 = bitcast float* %78 to i32*
  %80 = load i32, i32* %79, align 4, !tbaa !128
  %81 = getelementptr inbounds float, float* %4, i64 %76
  %82 = bitcast float* %81 to i32*
  store i32 %80, i32* %82, align 4, !tbaa !131
  %83 = add nsw i64 %27, 65
  %84 = add nsw i64 %29, 65
  %85 = getelementptr inbounds float, float* %7, i64 %84
  %86 = bitcast float* %85 to i32*
  %87 = load i32, i32* %86, align 4, !tbaa !128
  %88 = getelementptr inbounds float, float* %4, i64 %83
  %89 = bitcast float* %88 to i32*
  store i32 %87, i32* %89, align 4, !tbaa !131
  %90 = add nsw i64 %27, 66
  %91 = add nsw i64 %29, 66
  %92 = getelementptr inbounds float, float* %7, i64 %91
  %93 = bitcast float* %92 to i32*
  %94 = load i32, i32* %93, align 4, !tbaa !128
  %95 = getelementptr inbounds float, float* %4, i64 %90
  %96 = bitcast float* %95 to i32*
  store i32 %94, i32* %96, align 4, !tbaa !131
  %97 = add nsw i64 %27, 67
  %98 = add nsw i64 %29, 67
  %99 = getelementptr inbounds float, float* %7, i64 %98
  %100 = bitcast float* %99 to i32*
  %101 = load i32, i32* %100, align 4, !tbaa !128
  %102 = getelementptr inbounds float, float* %4, i64 %97
  %103 = bitcast float* %102 to i32*
  store i32 %101, i32* %103, align 4, !tbaa !131
  %indvar.next8 = add nuw nsw i64 %indvar7, 1
  %exitcond10 = icmp eq i64 %indvar.next8, 256
  br i1 %exitcond10, label %for_end3, label %for_begin4.preheader, !prof !49

for_end3:                                         ; preds = %for_begin4.preheader
  %indvars.iv.next12 = add nsw i64 %indvars.iv11, 1
  %104 = icmp slt i64 %indvars.iv.next12, %23
  br i1 %104, label %for_begin1.preheader, label %for_end, !prof !5
}

; Function Attrs: norecurse nounwind
define private i32 @__tvm_parallel_lambda.33(i32, %0* nocapture readonly, i8* nocapture readonly) #1 {
entry:
  %3 = bitcast i8* %2 to float**
  %4 = load float*, float** %3, align 8
  %5 = getelementptr inbounds i8, i8* %2, i64 8
  %6 = bitcast i8* %5 to float**
  %7 = load float*, float** %6, align 8
  %8 = getelementptr inbounds %0, %0* %1, i64 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = add nsw i32 %9, 7
  %11 = sdiv i32 %10, %9
  %12 = add nsw i32 %0, 1
  %13 = mul nsw i32 %11, %12
  %14 = icmp slt i32 %13, 8
  %15 = select i1 %14, i32 %13, i32 8
  %16 = mul nsw i32 %11, %0
  %17 = icmp slt i32 %16, 8
  %18 = select i1 %17, i32 %16, i32 8
  %19 = icmp slt i32 %18, %15
  br i1 %19, label %for_begin1.preheader.preheader, label %for_end, !prof !5

for_begin1.preheader.preheader:                   ; preds = %entry
  %20 = add i32 %18, 1
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %21, -1
  %23 = sext i32 %15 to i64
  br label %for_begin1.preheader

for_begin1.preheader:                             ; preds = %for_begin1.preheader.preheader, %for_end3
  %indvars.iv4 = phi i64 [ %22, %for_begin1.preheader.preheader ], [ %indvars.iv.next5, %for_end3 ]
  %24 = phi i32 [ %18, %for_begin1.preheader.preheader ], [ %95, %for_end3 ]
  %25 = shl nsw i32 %24, 12
  %26 = sext i32 %25 to i64
  br label %for_body2

for_end:                                          ; preds = %for_end3, %entry
  ret i32 0

for_body2:                                        ; preds = %for_body2, %for_begin1.preheader
  %indvars.iv = phi i64 [ 0, %for_begin1.preheader ], [ %indvars.iv.next, %for_body2 ]
  %27 = shl i64 %indvars.iv, 4
  %28 = add nsw i64 %27, %26
  %29 = add nuw nsw i64 %indvars.iv, %26
  %30 = add nsw i64 %29, 256
  %31 = add nsw i64 %29, 512
  %32 = add nsw i64 %29, 768
  %33 = add nsw i64 %29, 1024
  %34 = add nsw i64 %29, 1280
  %35 = add nsw i64 %29, 1536
  %36 = add nsw i64 %29, 1792
  %37 = add nsw i64 %29, 2048
  %38 = add nsw i64 %29, 2304
  %39 = add nsw i64 %29, 2560
  %40 = add nsw i64 %29, 2816
  %41 = add nsw i64 %29, 3072
  %42 = add nsw i64 %29, 3328
  %43 = add nsw i64 %29, 3584
  %44 = add nsw i64 %29, 3840
  %45 = getelementptr inbounds float, float* %7, i64 %29
  %46 = load float, float* %45, align 4, !tbaa !134
  %47 = insertelement <16 x float> undef, float %46, i32 0
  %48 = getelementptr inbounds float, float* %7, i64 %30
  %49 = load float, float* %48, align 4, !tbaa !134
  %50 = insertelement <16 x float> %47, float %49, i32 1
  %51 = getelementptr inbounds float, float* %7, i64 %31
  %52 = load float, float* %51, align 4, !tbaa !134
  %53 = insertelement <16 x float> %50, float %52, i32 2
  %54 = getelementptr inbounds float, float* %7, i64 %32
  %55 = load float, float* %54, align 4, !tbaa !134
  %56 = insertelement <16 x float> %53, float %55, i32 3
  %57 = getelementptr inbounds float, float* %7, i64 %33
  %58 = load float, float* %57, align 4, !tbaa !134
  %59 = insertelement <16 x float> %56, float %58, i32 4
  %60 = getelementptr inbounds float, float* %7, i64 %34
  %61 = load float, float* %60, align 4, !tbaa !134
  %62 = insertelement <16 x float> %59, float %61, i32 5
  %63 = getelementptr inbounds float, float* %7, i64 %35
  %64 = load float, float* %63, align 4, !tbaa !134
  %65 = insertelement <16 x float> %62, float %64, i32 6
  %66 = getelementptr inbounds float, float* %7, i64 %36
  %67 = load float, float* %66, align 4, !tbaa !134
  %68 = insertelement <16 x float> %65, float %67, i32 7
  %69 = getelementptr inbounds float, float* %7, i64 %37
  %70 = load float, float* %69, align 4, !tbaa !134
  %71 = insertelement <16 x float> %68, float %70, i32 8
  %72 = getelementptr inbounds float, float* %7, i64 %38
  %73 = load float, float* %72, align 4, !tbaa !134
  %74 = insertelement <16 x float> %71, float %73, i32 9
  %75 = getelementptr inbounds float, float* %7, i64 %39
  %76 = load float, float* %75, align 4, !tbaa !134
  %77 = insertelement <16 x float> %74, float %76, i32 10
  %78 = getelementptr inbounds float, float* %7, i64 %40
  %79 = load float, float* %78, align 4, !tbaa !134
  %80 = insertelement <16 x float> %77, float %79, i32 11
  %81 = getelementptr inbounds float, float* %7, i64 %41
  %82 = load float, float* %81, align 4, !tbaa !134
  %83 = insertelement <16 x float> %80, float %82, i32 12
  %84 = getelementptr inbounds float, float* %7, i64 %42
  %85 = load float, float* %84, align 4, !tbaa !134
  %86 = insertelement <16 x float> %83, float %85, i32 13
  %87 = getelementptr inbounds float, float* %7, i64 %43
  %88 = load float, float* %87, align 4, !tbaa !134
  %89 = insertelement <16 x float> %86, float %88, i32 14
  %90 = getelementptr inbounds float, float* %7, i64 %44
  %91 = load float, float* %90, align 4, !tbaa !134
  %92 = insertelement <16 x float> %89, float %91, i32 15
  %93 = getelementptr inbounds float, float* %4, i64 %28
  %94 = bitcast float* %93 to <16 x float>*
  store <16 x float> %92, <16 x float>* %94, align 64, !tbaa !137
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 256
  br i1 %exitcond, label %for_end3, label %for_body2, !prof !49

for_end3:                                         ; preds = %for_body2
  %indvars.iv.next5 = add nsw i64 %indvars.iv4, 1
  %95 = add nsw i32 %24, 1
  %96 = icmp slt i64 %indvars.iv.next5, %23
  br i1 %96, label %for_begin1.preheader, label %for_end, !prof !5
}

define private i32 @__tvm_parallel_lambda.34(i32, %0* nocapture readonly, i8* nocapture readonly) {
entry:
  %3 = bitcast i8* %2 to float**
  %4 = load float*, float** %3, align 8
  %5 = getelementptr inbounds i8, i8* %2, i64 8
  %6 = bitcast i8* %5 to float**
  %7 = load float*, float** %6, align 8
  %8 = getelementptr inbounds i8, i8* %2, i64 16
  %9 = bitcast i8* %8 to float**
  %10 = load float*, float** %9, align 8
  %11 = getelementptr inbounds i8, i8* %2, i64 24
  %12 = bitcast i8* %11 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds %0, %0* %1, i64 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %15, 543
  %17 = sdiv i32 %16, %15
  %18 = add nsw i32 %0, 1
  %19 = mul nsw i32 %17, %18
  %20 = icmp slt i32 %19, 544
  %21 = select i1 %20, i32 %19, i32 544
  %22 = mul nsw i32 %17, %0
  %23 = icmp slt i32 %22, 544
  %24 = select i1 %23, i32 %22, i32 544
  %25 = icmp slt i32 %24, %21
  br i1 %25, label %for_body, label %for_end, !prof !5

for_body:                                         ; preds = %entry, %for_end9
  %26 = phi i32 [ %299, %for_end9 ], [ %24, %entry ]
  %27 = load i8* (i32, i32, i64, i32, i32)*, i8* (i32, i32, i64, i32, i32)** @__TVMBackendAllocWorkspace, align 8, !tbaa !6
  %28 = tail call i8* %27(i32 1, i32 %13, i64 4352, i32 2, i32 32)
  %29 = bitcast i8* %28 to float*
  %30 = srem i32 %26, 68
  %31 = mul nsw i32 %30, 17408
  %32 = sdiv i32 %26, 68
  %33 = shl i32 %32, 12
  %34 = sext i32 %33 to i64
  %35 = sext i32 %31 to i64
  br label %for_body2

for_end:                                          ; preds = %for_end9, %entry
  ret i32 0

for_begin7.preheader:                             ; preds = %for_end6
  %36 = mul nsw i32 %30, 68
  %37 = mul nsw i32 %32, 73984
  %38 = add nsw i32 %37, %36
  %39 = sext i32 %38 to i64
  br label %for_begin10.preheader

for_body2:                                        ; preds = %for_end6, %for_body
  %indvars.iv27 = phi i64 [ 0, %for_body ], [ %indvars.iv.next28, %for_end6 ]
  %40 = shl nsw i64 %indvars.iv27, 6
  %41 = getelementptr inbounds float, float* %29, i64 %40
  %42 = bitcast float* %41 to <16 x float>*
  store <16 x float> zeroinitializer, <16 x float>* %42, align 64, !tbaa !140
  %43 = or i64 %40, 16
  %44 = getelementptr inbounds float, float* %29, i64 %43
  %45 = bitcast float* %44 to <16 x float>*
  store <16 x float> zeroinitializer, <16 x float>* %45, align 64, !tbaa !140
  %46 = or i64 %40, 32
  %47 = getelementptr inbounds float, float* %29, i64 %46
  %48 = bitcast float* %47 to <16 x float>*
  store <16 x float> zeroinitializer, <16 x float>* %48, align 64, !tbaa !140
  %49 = or i64 %40, 48
  %50 = getelementptr inbounds float, float* %29, i64 %49
  %51 = bitcast float* %50 to <16 x float>*
  store <16 x float> zeroinitializer, <16 x float>* %51, align 64, !tbaa !140
  %52 = shl nsw i64 %indvars.iv27, 2
  %53 = add nuw nsw i64 %52, %35
  br label %for_body5

for_body5:                                        ; preds = %for_body5, %for_body2
  %indvars.iv = phi i64 [ 0, %for_body2 ], [ %indvars.iv.next, %for_body5 ]
  %54 = phi <16 x float> [ zeroinitializer, %for_body2 ], [ %87, %for_body5 ]
  %55 = phi <16 x float> [ zeroinitializer, %for_body2 ], [ %81, %for_body5 ]
  %56 = phi <16 x float> [ zeroinitializer, %for_body2 ], [ %75, %for_body5 ]
  %57 = phi <16 x float> [ zeroinitializer, %for_body2 ], [ %69, %for_body5 ]
  %58 = mul nuw nsw i64 %indvars.iv, 68
  %59 = add nsw i64 %53, %58
  %60 = getelementptr inbounds float, float* %4, i64 %59
  %61 = load float, float* %60, align 16, !tbaa !131
  %62 = insertelement <16 x float> undef, float %61, i32 0
  %63 = shufflevector <16 x float> %62, <16 x float> undef, <16 x i32> zeroinitializer
  %64 = shl i64 %indvars.iv, 4
  %65 = add nuw nsw i64 %64, %34
  %66 = getelementptr inbounds float, float* %7, i64 %65
  %67 = bitcast float* %66 to <16 x float>*
  %68 = load <16 x float>, <16 x float>* %67, align 64, !tbaa !137
  %69 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %63, <16 x float> %68, <16 x float> %57)
  %70 = or i64 %59, 1
  %71 = getelementptr inbounds float, float* %4, i64 %70
  %72 = load float, float* %71, align 4, !tbaa !131
  %73 = insertelement <16 x float> undef, float %72, i32 0
  %74 = shufflevector <16 x float> %73, <16 x float> undef, <16 x i32> zeroinitializer
  %75 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %74, <16 x float> %68, <16 x float> %56)
  %76 = or i64 %59, 2
  %77 = getelementptr inbounds float, float* %4, i64 %76
  %78 = load float, float* %77, align 8, !tbaa !131
  %79 = insertelement <16 x float> undef, float %78, i32 0
  %80 = shufflevector <16 x float> %79, <16 x float> undef, <16 x i32> zeroinitializer
  %81 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %80, <16 x float> %68, <16 x float> %55)
  %82 = or i64 %59, 3
  %83 = getelementptr inbounds float, float* %4, i64 %82
  %84 = load float, float* %83, align 4, !tbaa !131
  %85 = insertelement <16 x float> undef, float %84, i32 0
  %86 = shufflevector <16 x float> %85, <16 x float> undef, <16 x i32> zeroinitializer
  %87 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %86, <16 x float> %68, <16 x float> %54)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 256
  br i1 %exitcond, label %for_end6, label %for_body5, !prof !49

for_end6:                                         ; preds = %for_body5
  store <16 x float> %69, <16 x float>* %42, align 64, !tbaa !140
  store <16 x float> %75, <16 x float>* %45, align 64, !tbaa !140
  store <16 x float> %81, <16 x float>* %48, align 64, !tbaa !140
  store <16 x float> %87, <16 x float>* %51, align 64, !tbaa !140
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1
  %exitcond29 = icmp eq i64 %indvars.iv.next28, 17
  br i1 %exitcond29, label %for_begin7.preheader, label %for_body2, !prof !49

for_begin10.preheader:                            ; preds = %for_begin10.preheader, %for_begin7.preheader
  %indvars.iv33 = phi i64 [ 0, %for_begin7.preheader ], [ %indvars.iv.next34, %for_begin10.preheader ]
  %88 = shl i64 %indvars.iv33, 2
  %89 = add nsw i64 %88, %39
  %90 = shl i64 %indvars.iv33, 6
  %91 = add nsw i64 %89, 4624
  %92 = add nsw i64 %89, 9248
  %93 = add nsw i64 %89, 13872
  %94 = add nsw i64 %89, 18496
  %95 = add nsw i64 %89, 23120
  %96 = add nsw i64 %89, 27744
  %97 = add nsw i64 %89, 32368
  %98 = add nsw i64 %89, 36992
  %99 = add nsw i64 %89, 41616
  %100 = add nsw i64 %89, 46240
  %101 = add nsw i64 %89, 50864
  %102 = add nsw i64 %89, 55488
  %103 = add nsw i64 %89, 60112
  %104 = add nsw i64 %89, 64736
  %105 = add nsw i64 %89, 69360
  %106 = getelementptr inbounds float, float* %29, i64 %90
  %107 = bitcast float* %106 to <16 x float>*
  %108 = load <16 x float>, <16 x float>* %107, align 64, !tbaa !140
  %109 = getelementptr inbounds float, float* %10, i64 %89
  %110 = extractelement <16 x float> %108, i64 0
  store float %110, float* %109, align 4, !tbaa !143
  %111 = getelementptr inbounds float, float* %10, i64 %91
  %112 = extractelement <16 x float> %108, i64 1
  store float %112, float* %111, align 4, !tbaa !143
  %113 = getelementptr inbounds float, float* %10, i64 %92
  %114 = extractelement <16 x float> %108, i64 2
  store float %114, float* %113, align 4, !tbaa !143
  %115 = getelementptr inbounds float, float* %10, i64 %93
  %116 = extractelement <16 x float> %108, i64 3
  store float %116, float* %115, align 4, !tbaa !143
  %117 = getelementptr inbounds float, float* %10, i64 %94
  %118 = extractelement <16 x float> %108, i64 4
  store float %118, float* %117, align 4, !tbaa !143
  %119 = getelementptr inbounds float, float* %10, i64 %95
  %120 = extractelement <16 x float> %108, i64 5
  store float %120, float* %119, align 4, !tbaa !143
  %121 = getelementptr inbounds float, float* %10, i64 %96
  %122 = extractelement <16 x float> %108, i64 6
  store float %122, float* %121, align 4, !tbaa !143
  %123 = getelementptr inbounds float, float* %10, i64 %97
  %124 = extractelement <16 x float> %108, i64 7
  store float %124, float* %123, align 4, !tbaa !143
  %125 = getelementptr inbounds float, float* %10, i64 %98
  %126 = extractelement <16 x float> %108, i64 8
  store float %126, float* %125, align 4, !tbaa !143
  %127 = getelementptr inbounds float, float* %10, i64 %99
  %128 = extractelement <16 x float> %108, i64 9
  store float %128, float* %127, align 4, !tbaa !143
  %129 = getelementptr inbounds float, float* %10, i64 %100
  %130 = extractelement <16 x float> %108, i64 10
  store float %130, float* %129, align 4, !tbaa !143
  %131 = getelementptr inbounds float, float* %10, i64 %101
  %132 = extractelement <16 x float> %108, i64 11
  store float %132, float* %131, align 4, !tbaa !143
  %133 = getelementptr inbounds float, float* %10, i64 %102
  %134 = extractelement <16 x float> %108, i64 12
  store float %134, float* %133, align 4, !tbaa !143
  %135 = getelementptr inbounds float, float* %10, i64 %103
  %136 = extractelement <16 x float> %108, i64 13
  store float %136, float* %135, align 4, !tbaa !143
  %137 = getelementptr inbounds float, float* %10, i64 %104
  %138 = extractelement <16 x float> %108, i64 14
  store float %138, float* %137, align 4, !tbaa !143
  %139 = getelementptr inbounds float, float* %10, i64 %105
  %140 = extractelement <16 x float> %108, i64 15
  store float %140, float* %139, align 4, !tbaa !143
  %141 = or i64 %89, 1
  %142 = add nsw i64 %141, 4624
  %143 = add nsw i64 %141, 9248
  %144 = add nsw i64 %141, 13872
  %145 = add nsw i64 %141, 18496
  %146 = add nsw i64 %141, 23120
  %147 = add nsw i64 %141, 27744
  %148 = add nsw i64 %141, 32368
  %149 = add nsw i64 %141, 36992
  %150 = add nsw i64 %141, 41616
  %151 = add nsw i64 %141, 46240
  %152 = add nsw i64 %141, 50864
  %153 = add nsw i64 %141, 55488
  %154 = add nsw i64 %141, 60112
  %155 = add nsw i64 %141, 64736
  %156 = add nsw i64 %141, 69360
  %157 = or i64 %90, 16
  %158 = getelementptr inbounds float, float* %29, i64 %157
  %159 = bitcast float* %158 to <16 x float>*
  %160 = load <16 x float>, <16 x float>* %159, align 64, !tbaa !140
  %161 = getelementptr inbounds float, float* %10, i64 %141
  %162 = extractelement <16 x float> %160, i64 0
  store float %162, float* %161, align 4, !tbaa !143
  %163 = getelementptr inbounds float, float* %10, i64 %142
  %164 = extractelement <16 x float> %160, i64 1
  store float %164, float* %163, align 4, !tbaa !143
  %165 = getelementptr inbounds float, float* %10, i64 %143
  %166 = extractelement <16 x float> %160, i64 2
  store float %166, float* %165, align 4, !tbaa !143
  %167 = getelementptr inbounds float, float* %10, i64 %144
  %168 = extractelement <16 x float> %160, i64 3
  store float %168, float* %167, align 4, !tbaa !143
  %169 = getelementptr inbounds float, float* %10, i64 %145
  %170 = extractelement <16 x float> %160, i64 4
  store float %170, float* %169, align 4, !tbaa !143
  %171 = getelementptr inbounds float, float* %10, i64 %146
  %172 = extractelement <16 x float> %160, i64 5
  store float %172, float* %171, align 4, !tbaa !143
  %173 = getelementptr inbounds float, float* %10, i64 %147
  %174 = extractelement <16 x float> %160, i64 6
  store float %174, float* %173, align 4, !tbaa !143
  %175 = getelementptr inbounds float, float* %10, i64 %148
  %176 = extractelement <16 x float> %160, i64 7
  store float %176, float* %175, align 4, !tbaa !143
  %177 = getelementptr inbounds float, float* %10, i64 %149
  %178 = extractelement <16 x float> %160, i64 8
  store float %178, float* %177, align 4, !tbaa !143
  %179 = getelementptr inbounds float, float* %10, i64 %150
  %180 = extractelement <16 x float> %160, i64 9
  store float %180, float* %179, align 4, !tbaa !143
  %181 = getelementptr inbounds float, float* %10, i64 %151
  %182 = extractelement <16 x float> %160, i64 10
  store float %182, float* %181, align 4, !tbaa !143
  %183 = getelementptr inbounds float, float* %10, i64 %152
  %184 = extractelement <16 x float> %160, i64 11
  store float %184, float* %183, align 4, !tbaa !143
  %185 = getelementptr inbounds float, float* %10, i64 %153
  %186 = extractelement <16 x float> %160, i64 12
  store float %186, float* %185, align 4, !tbaa !143
  %187 = getelementptr inbounds float, float* %10, i64 %154
  %188 = extractelement <16 x float> %160, i64 13
  store float %188, float* %187, align 4, !tbaa !143
  %189 = getelementptr inbounds float, float* %10, i64 %155
  %190 = extractelement <16 x float> %160, i64 14
  store float %190, float* %189, align 4, !tbaa !143
  %191 = getelementptr inbounds float, float* %10, i64 %156
  %192 = extractelement <16 x float> %160, i64 15
  store float %192, float* %191, align 4, !tbaa !143
  %193 = or i64 %89, 2
  %194 = add nsw i64 %193, 4624
  %195 = add nsw i64 %193, 9248
  %196 = add nsw i64 %193, 13872
  %197 = add nsw i64 %193, 18496
  %198 = add nsw i64 %193, 23120
  %199 = add nsw i64 %193, 27744
  %200 = add nsw i64 %193, 32368
  %201 = add nsw i64 %193, 36992
  %202 = add nsw i64 %193, 41616
  %203 = add nsw i64 %193, 46240
  %204 = add nsw i64 %193, 50864
  %205 = add nsw i64 %193, 55488
  %206 = add nsw i64 %193, 60112
  %207 = add nsw i64 %193, 64736
  %208 = add nsw i64 %193, 69360
  %209 = or i64 %90, 32
  %210 = getelementptr inbounds float, float* %29, i64 %209
  %211 = bitcast float* %210 to <16 x float>*
  %212 = load <16 x float>, <16 x float>* %211, align 64, !tbaa !140
  %213 = getelementptr inbounds float, float* %10, i64 %193
  %214 = extractelement <16 x float> %212, i64 0
  store float %214, float* %213, align 4, !tbaa !143
  %215 = getelementptr inbounds float, float* %10, i64 %194
  %216 = extractelement <16 x float> %212, i64 1
  store float %216, float* %215, align 4, !tbaa !143
  %217 = getelementptr inbounds float, float* %10, i64 %195
  %218 = extractelement <16 x float> %212, i64 2
  store float %218, float* %217, align 4, !tbaa !143
  %219 = getelementptr inbounds float, float* %10, i64 %196
  %220 = extractelement <16 x float> %212, i64 3
  store float %220, float* %219, align 4, !tbaa !143
  %221 = getelementptr inbounds float, float* %10, i64 %197
  %222 = extractelement <16 x float> %212, i64 4
  store float %222, float* %221, align 4, !tbaa !143
  %223 = getelementptr inbounds float, float* %10, i64 %198
  %224 = extractelement <16 x float> %212, i64 5
  store float %224, float* %223, align 4, !tbaa !143
  %225 = getelementptr inbounds float, float* %10, i64 %199
  %226 = extractelement <16 x float> %212, i64 6
  store float %226, float* %225, align 4, !tbaa !143
  %227 = getelementptr inbounds float, float* %10, i64 %200
  %228 = extractelement <16 x float> %212, i64 7
  store float %228, float* %227, align 4, !tbaa !143
  %229 = getelementptr inbounds float, float* %10, i64 %201
  %230 = extractelement <16 x float> %212, i64 8
  store float %230, float* %229, align 4, !tbaa !143
  %231 = getelementptr inbounds float, float* %10, i64 %202
  %232 = extractelement <16 x float> %212, i64 9
  store float %232, float* %231, align 4, !tbaa !143
  %233 = getelementptr inbounds float, float* %10, i64 %203
  %234 = extractelement <16 x float> %212, i64 10
  store float %234, float* %233, align 4, !tbaa !143
  %235 = getelementptr inbounds float, float* %10, i64 %204
  %236 = extractelement <16 x float> %212, i64 11
  store float %236, float* %235, align 4, !tbaa !143
  %237 = getelementptr inbounds float, float* %10, i64 %205
  %238 = extractelement <16 x float> %212, i64 12
  store float %238, float* %237, align 4, !tbaa !143
  %239 = getelementptr inbounds float, float* %10, i64 %206
  %240 = extractelement <16 x float> %212, i64 13
  store float %240, float* %239, align 4, !tbaa !143
  %241 = getelementptr inbounds float, float* %10, i64 %207
  %242 = extractelement <16 x float> %212, i64 14
  store float %242, float* %241, align 4, !tbaa !143
  %243 = getelementptr inbounds float, float* %10, i64 %208
  %244 = extractelement <16 x float> %212, i64 15
  store float %244, float* %243, align 4, !tbaa !143
  %245 = or i64 %89, 3
  %246 = add nsw i64 %245, 4624
  %247 = add nsw i64 %245, 9248
  %248 = add nsw i64 %245, 13872
  %249 = add nsw i64 %245, 18496
  %250 = add nsw i64 %245, 23120
  %251 = add nsw i64 %245, 27744
  %252 = add nsw i64 %245, 32368
  %253 = add nsw i64 %245, 36992
  %254 = add nsw i64 %245, 41616
  %255 = add nsw i64 %245, 46240
  %256 = add nsw i64 %245, 50864
  %257 = add nsw i64 %245, 55488
  %258 = add nsw i64 %245, 60112
  %259 = add nsw i64 %245, 64736
  %260 = add nsw i64 %245, 69360
  %261 = or i64 %90, 48
  %262 = getelementptr inbounds float, float* %29, i64 %261
  %263 = bitcast float* %262 to <16 x float>*
  %264 = load <16 x float>, <16 x float>* %263, align 64, !tbaa !140
  %265 = getelementptr inbounds float, float* %10, i64 %245
  %266 = extractelement <16 x float> %264, i64 0
  store float %266, float* %265, align 4, !tbaa !143
  %267 = getelementptr inbounds float, float* %10, i64 %246
  %268 = extractelement <16 x float> %264, i64 1
  store float %268, float* %267, align 4, !tbaa !143
  %269 = getelementptr inbounds float, float* %10, i64 %247
  %270 = extractelement <16 x float> %264, i64 2
  store float %270, float* %269, align 4, !tbaa !143
  %271 = getelementptr inbounds float, float* %10, i64 %248
  %272 = extractelement <16 x float> %264, i64 3
  store float %272, float* %271, align 4, !tbaa !143
  %273 = getelementptr inbounds float, float* %10, i64 %249
  %274 = extractelement <16 x float> %264, i64 4
  store float %274, float* %273, align 4, !tbaa !143
  %275 = getelementptr inbounds float, float* %10, i64 %250
  %276 = extractelement <16 x float> %264, i64 5
  store float %276, float* %275, align 4, !tbaa !143
  %277 = getelementptr inbounds float, float* %10, i64 %251
  %278 = extractelement <16 x float> %264, i64 6
  store float %278, float* %277, align 4, !tbaa !143
  %279 = getelementptr inbounds float, float* %10, i64 %252
  %280 = extractelement <16 x float> %264, i64 7
  store float %280, float* %279, align 4, !tbaa !143
  %281 = getelementptr inbounds float, float* %10, i64 %253
  %282 = extractelement <16 x float> %264, i64 8
  store float %282, float* %281, align 4, !tbaa !143
  %283 = getelementptr inbounds float, float* %10, i64 %254
  %284 = extractelement <16 x float> %264, i64 9
  store float %284, float* %283, align 4, !tbaa !143
  %285 = getelementptr inbounds float, float* %10, i64 %255
  %286 = extractelement <16 x float> %264, i64 10
  store float %286, float* %285, align 4, !tbaa !143
  %287 = getelementptr inbounds float, float* %10, i64 %256
  %288 = extractelement <16 x float> %264, i64 11
  store float %288, float* %287, align 4, !tbaa !143
  %289 = getelementptr inbounds float, float* %10, i64 %257
  %290 = extractelement <16 x float> %264, i64 12
  store float %290, float* %289, align 4, !tbaa !143
  %291 = getelementptr inbounds float, float* %10, i64 %258
  %292 = extractelement <16 x float> %264, i64 13
  store float %292, float* %291, align 4, !tbaa !143
  %293 = getelementptr inbounds float, float* %10, i64 %259
  %294 = extractelement <16 x float> %264, i64 14
  store float %294, float* %293, align 4, !tbaa !143
  %295 = getelementptr inbounds float, float* %10, i64 %260
  %296 = extractelement <16 x float> %264, i64 15
  store float %296, float* %295, align 4, !tbaa !143
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1
  %exitcond35 = icmp eq i64 %indvars.iv.next34, 17
  br i1 %exitcond35, label %for_end9, label %for_begin10.preheader, !prof !49

for_end9:                                         ; preds = %for_begin10.preheader
  %297 = load i32 (i32, i32, i8*)*, i32 (i32, i32, i8*)** @__TVMBackendFreeWorkspace, align 8, !tbaa !6
  %298 = tail call i32 %297(i32 1, i32 %13, i8* nonnull %28)
  %299 = add nsw i32 %26, 1
  %300 = icmp slt i32 %299, %21
  br i1 %300, label %for_body, label %for_end, !prof !5
}

; Function Attrs: nounwind readnone speculatable
declare <16 x float> @llvm.fmuladd.v16f32(<16 x float>, <16 x float>, <16 x float>) #2
declare void @get_time(i32)
attributes #0 = { noinline }
attributes #1 = { norecurse nounwind }
attributes #2 = { nounwind readnone speculatable }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4}

!0 = distinct !DICompileUnit(language: DW_LANG_C, file: !1, producer: "TVM", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, dwoId: 1)
!1 = !DIFile(filename: "model.tvm", directory: "/tmp/")
!2 = !{}
!3 = !{i32 2, !"tvm_target", !"llvm -mcpu=core-avx2"}
!4 = !{i32 4, !"Debug Info Version", i32 3}
!5 = !{!"branch_weights", i32 1048576, i32 1}
!6 = !{!7, !7, i64 0}
!7 = !{!"ctx_ptr", !8, i64 0}
!8 = !{!"tvm-tbaa"}
!9 = !{!10, !10, i64 0}
!10 = !{!"0x2c12160.w1.b0", !11, i64 0}
!11 = !{!"0x2c12160.w2.b0", !12, i64 0}
!12 = !{!"0x2c12160.w4.b0", !13, i64 0}
!13 = !{!"0x2c12160.w8.b0", !14, i64 0}
!14 = !{!"0x2c12160.w16.b0", !15, i64 0}
!15 = !{!"0x2c12160.w32.b0", !16, i64 0}
!16 = !{!"0x2c12160.w64.b0", !17, i64 0}
!17 = !{!"0x2c12160.w128.b0", !18, i64 0}
!18 = !{!"0x2c12160.w256.b0", !19, i64 0}
!19 = !{!"0x2c12160.w512.b0", !20, i64 0}
!20 = !{!"0x2c12160.w1024.b0", !21, i64 0}
!21 = !{!"int32", !22, i64 0}
!22 = !{!"0x2c12160", !8, i64 0}
!23 = !{!24, !24, i64 0}
!24 = !{!"0x2c12160.w1.b2", !25, i64 0}
!25 = !{!"0x2c12160.w2.b2", !12, i64 0}
!26 = !{!27, !27, i64 0}
!27 = !{!"0x2c12160.w1.b1", !11, i64 0}
!28 = !{!29, !29, i64 0}
!29 = !{!"0x2f998b0.w1.b0", !30, i64 0}
!30 = !{!"0x2f998b0.w2.b0", !31, i64 0}
!31 = !{!"0x2f998b0.w4.b0", !32, i64 0}
!32 = !{!"0x2f998b0.w8.b0", !33, i64 0}
!33 = !{!"0x2f998b0.w16.b0", !34, i64 0}
!34 = !{!"0x2f998b0.w32.b0", !35, i64 0}
!35 = !{!"0x2f998b0.w64.b0", !36, i64 0}
!36 = !{!"0x2f998b0.w128.b0", !37, i64 0}
!37 = !{!"0x2f998b0.w256.b0", !38, i64 0}
!38 = !{!"0x2f998b0.w512.b0", !39, i64 0}
!39 = !{!"0x2f998b0.w1024.b0", !40, i64 0}
!40 = !{!"int64", !41, i64 0}
!41 = !{!"0x2f998b0", !8, i64 0}
!42 = !{!43, !43, i64 0}
!43 = !{!"0x2f998b0.w1.b1", !30, i64 0}
!44 = !{!45, !45, i64 0}
!45 = !{!"0x2f998b0.w1.b2", !46, i64 0}
!46 = !{!"0x2f998b0.w2.b2", !31, i64 0}
!47 = !{!48, !48, i64 0}
!48 = !{!"0x2f998b0.w1.b3", !46, i64 0}
!49 = !{!"branch_weights", i32 1, i32 1048576}
!50 = !{!51, !51, i64 0}
!51 = !{!"0x30642b0.w4.b0", !52, i64 0}
!52 = !{!"0x30642b0.w8.b0", !53, i64 0}
!53 = !{!"0x30642b0.w16.b0", !54, i64 0}
!54 = !{!"0x30642b0.w32.b0", !55, i64 0}
!55 = !{!"0x30642b0.w64.b0", !56, i64 0}
!56 = !{!"0x30642b0.w128.b0", !57, i64 0}
!57 = !{!"0x30642b0.w256.b0", !58, i64 0}
!58 = !{!"0x30642b0.w512.b0", !59, i64 0}
!59 = !{!"0x30642b0.w1024.b0", !60, i64 0}
!60 = !{!"int64", !61, i64 0}
!61 = !{!"0x30642b0", !8, i64 0}
!62 = !{!63, !63, i64 0}
!63 = !{!"0x304ba80.w1.b0", !64, i64 0}
!64 = !{!"0x304ba80.w2.b0", !65, i64 0}
!65 = !{!"0x304ba80.w4.b0", !66, i64 0}
!66 = !{!"0x304ba80.w8.b0", !67, i64 0}
!67 = !{!"0x304ba80.w16.b0", !68, i64 0}
!68 = !{!"0x304ba80.w32.b0", !69, i64 0}
!69 = !{!"0x304ba80.w64.b0", !70, i64 0}
!70 = !{!"0x304ba80.w128.b0", !71, i64 0}
!71 = !{!"0x304ba80.w256.b0", !72, i64 0}
!72 = !{!"0x304ba80.w512.b0", !73, i64 0}
!73 = !{!"0x304ba80.w1024.b0", !74, i64 0}
!74 = !{!"int64", !75, i64 0}
!75 = !{!"0x304ba80", !8, i64 0}
!76 = !{!77, !77, i64 0}
!77 = !{!"0x304ba80.w1.b1", !64, i64 0}
!78 = !{!79, !79, i64 0}
!79 = !{!"0x304ba80.w1.b2", !80, i64 0}
!80 = !{!"0x304ba80.w2.b2", !65, i64 0}
!81 = !{!82, !82, i64 0}
!82 = !{!"0x304ba80.w1.b3", !80, i64 0}
!83 = !{!84, !84, i64 0}
!84 = !{!"0x2c121c0.w4.b0", !85, i64 0}
!85 = !{!"0x2c121c0.w8.b0", !86, i64 0}
!86 = !{!"0x2c121c0.w16.b0", !87, i64 0}
!87 = !{!"0x2c121c0.w32.b0", !88, i64 0}
!88 = !{!"0x2c121c0.w64.b0", !89, i64 0}
!89 = !{!"0x2c121c0.w128.b0", !90, i64 0}
!90 = !{!"0x2c121c0.w256.b0", !91, i64 0}
!91 = !{!"0x2c121c0.w512.b0", !92, i64 0}
!92 = !{!"0x2c121c0.w1024.b0", !93, i64 0}
!93 = !{!"int64", !94, i64 0}
!94 = !{!"0x2c121c0", !8, i64 0}
!95 = !{!96, !96, i64 0}
!96 = !{!"0x3086750.w1.b0", !97, i64 0}
!97 = !{!"0x3086750.w2.b0", !98, i64 0}
!98 = !{!"0x3086750.w4.b0", !99, i64 0}
!99 = !{!"0x3086750.w8.b0", !100, i64 0}
!100 = !{!"0x3086750.w16.b0", !101, i64 0}
!101 = !{!"0x3086750.w32.b0", !102, i64 0}
!102 = !{!"0x3086750.w64.b0", !103, i64 0}
!103 = !{!"0x3086750.w128.b0", !104, i64 0}
!104 = !{!"0x3086750.w256.b0", !105, i64 0}
!105 = !{!"0x3086750.w512.b0", !106, i64 0}
!106 = !{!"0x3086750.w1024.b0", !107, i64 0}
!107 = !{!"int64", !108, i64 0}
!108 = !{!"0x3086750", !8, i64 0}
!109 = !{!110, !110, i64 0}
!110 = !{!"0x3086750.w1.b1", !97, i64 0}
!111 = !{!112, !112, i64 0}
!112 = !{!"0x3086750.w1.b2", !113, i64 0}
!113 = !{!"0x3086750.w2.b2", !98, i64 0}
!114 = !{!115, !115, i64 0}
!115 = !{!"0x3086750.w1.b3", !113, i64 0}
!116 = !{!117, !117, i64 0}
!117 = !{!"0x2f275b0.w4.b0", !118, i64 0}
!118 = !{!"0x2f275b0.w8.b0", !119, i64 0}
!119 = !{!"0x2f275b0.w16.b0", !120, i64 0}
!120 = !{!"0x2f275b0.w32.b0", !121, i64 0}
!121 = !{!"0x2f275b0.w64.b0", !122, i64 0}
!122 = !{!"0x2f275b0.w128.b0", !123, i64 0}
!123 = !{!"0x2f275b0.w256.b0", !124, i64 0}
!124 = !{!"0x2f275b0.w512.b0", !125, i64 0}
!125 = !{!"0x2f275b0.w1024.b0", !126, i64 0}
!126 = !{!"int64", !127, i64 0}
!127 = !{!"0x2f275b0", !8, i64 0}
!128 = !{!129, !129, i64 0}
!129 = !{!"float32", !130, i64 0}
!130 = !{!"0x28266f0", !8, i64 0}
!131 = !{!132, !132, i64 0}
!132 = !{!"float32", !133, i64 0}
!133 = !{!"0x30859b0", !8, i64 0}
!134 = !{!135, !135, i64 0}
!135 = !{!"float32", !136, i64 0}
!136 = !{!"0x2f998f0", !8, i64 0}
!137 = !{!138, !138, i64 0}
!138 = !{!"float32", !139, i64 0}
!139 = !{!"0x2f54230", !8, i64 0}
!140 = !{!141, !141, i64 0}
!141 = !{!"float32", !142, i64 0}
!142 = !{!"0x3066470", !8, i64 0}
!143 = !{!144, !144, i64 0}
!144 = !{!"float32", !145, i64 0}
!145 = !{!"0x3085240", !8, i64 0}
