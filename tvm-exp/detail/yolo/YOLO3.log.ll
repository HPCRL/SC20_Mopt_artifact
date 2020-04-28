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
@.str.8 = private constant [97 x i8] c"Assert fail: (128 == int32(arg0.shape[1])), Argument arg0.shape[1] has an unsatisfied constraint\00", align 1
@.str.9 = private constant [97 x i8] c"Assert fail: (136 == int32(arg0.shape[2])), Argument arg0.shape[2] has an unsatisfied constraint\00", align 1
@.str.10 = private constant [97 x i8] c"Assert fail: (136 == int32(arg0.shape[3])), Argument arg0.shape[3] has an unsatisfied constraint\00", align 1
@.str.11 = private constant [204 x i8] c"Assert fail: ((((1 == int32(arg0.strides[3])) && (136 == int32(arg0.strides[2]))) && (18496 == int32(arg0.strides[1]))) && (2367488 == int32(arg0.strides[0]))), arg0.strides: expected to be compact array\00", align 1
@.str.12 = private constant [112 x i8] c"Assert fail: ((uint64)0 == tvm_struct_get(arg0, 0, 8)), Argument arg0.byte_offset has an unsatisfied constraint\00", align 1
@.str.13 = private constant [81 x i8] c"Assert fail: (4 == tvm_struct_get(arg1, 0, 4)), arg1.ndim is expected to equal 4\00", align 1
@.str.14 = private constant [186 x i8] c"Assert fail: (((tvm_struct_get(arg1, 0, 5) == (uint8)2) && (tvm_struct_get(arg1, 0, 6) == (uint8)32)) && (tvm_struct_get(arg1, 0, 7) == (uint16)1)), arg1.dtype is expected to be float32\00", align 1
@.str.15 = private constant [96 x i8] c"Assert fail: (64 == int32(arg1.shape[0])), Argument arg1.shape[0] has an unsatisfied constraint\00", align 1
@.str.16 = private constant [97 x i8] c"Assert fail: (128 == int32(arg1.shape[1])), Argument arg1.shape[1] has an unsatisfied constraint\00", align 1
@.str.17 = private constant [95 x i8] c"Assert fail: (1 == int32(arg1.shape[2])), Argument arg1.shape[2] has an unsatisfied constraint\00", align 1
@.str.18 = private constant [95 x i8] c"Assert fail: (1 == int32(arg1.shape[3])), Argument arg1.shape[3] has an unsatisfied constraint\00", align 1
@.str.19 = private constant [194 x i8] c"Assert fail: ((((1 == int32(arg1.strides[3])) && (1 == int32(arg1.strides[2]))) && (1 == int32(arg1.strides[1]))) && (128 == int32(arg1.strides[0]))), arg1.strides: expected to be compact array\00", align 1
@.str.20 = private constant [112 x i8] c"Assert fail: ((uint64)0 == tvm_struct_get(arg1, 0, 8)), Argument arg1.byte_offset has an unsatisfied constraint\00", align 1
@.str.21 = private constant [105 x i8] c"Assert fail: (1 == tvm_struct_get(arg1, 0, 10)), Argument arg1.device_type has an unsatisfied constraint\00", align 1
@.str.22 = private constant [107 x i8] c"Assert fail: (dev_id == tvm_struct_get(arg1, 0, 9)), Argument arg1.device_id has an unsatisfied constraint\00", align 1
@.str.23 = private constant [81 x i8] c"Assert fail: (4 == tvm_struct_get(arg2, 0, 4)), arg2.ndim is expected to equal 4\00", align 1
@.str.24 = private constant [186 x i8] c"Assert fail: (((tvm_struct_get(arg2, 0, 5) == (uint8)2) && (tvm_struct_get(arg2, 0, 6) == (uint8)32)) && (tvm_struct_get(arg2, 0, 7) == (uint16)1)), arg2.dtype is expected to be float32\00", align 1
@.str.25 = private constant [95 x i8] c"Assert fail: (1 == int32(arg2.shape[0])), Argument arg2.shape[0] has an unsatisfied constraint\00", align 1
@.str.26 = private constant [96 x i8] c"Assert fail: (64 == int32(arg2.shape[1])), Argument arg2.shape[1] has an unsatisfied constraint\00", align 1
@.str.27 = private constant [97 x i8] c"Assert fail: (136 == int32(arg2.shape[2])), Argument arg2.shape[2] has an unsatisfied constraint\00", align 1
@.str.28 = private constant [97 x i8] c"Assert fail: (136 == int32(arg2.shape[3])), Argument arg2.shape[3] has an unsatisfied constraint\00", align 1
@.str.29 = private constant [204 x i8] c"Assert fail: ((((1 == int32(arg2.strides[3])) && (136 == int32(arg2.strides[2]))) && (18496 == int32(arg2.strides[1]))) && (1183744 == int32(arg2.strides[0]))), arg2.strides: expected to be compact array\00", align 1
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
  %71 = icmp eq i32 %70, 128
  br i1 %71, label %assert_end16, label %assert_fail15, !prof !5

assert_fail15:                                    ; preds = %assert_end14
  %72 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %72(i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.8, i64 0, i64 0))
  ret i32 -1

assert_end16:                                     ; preds = %assert_end14
  %73 = getelementptr inbounds i64, i64* %21, i64 2
  %74 = load i64, i64* %73, align 8, !tbaa !44
  %75 = trunc i64 %74 to i32
  %76 = icmp eq i32 %75, 136
  br i1 %76, label %assert_end18, label %assert_fail17, !prof !5

assert_fail17:                                    ; preds = %assert_end16
  %77 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %77(i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.9, i64 0, i64 0))
  ret i32 -1

assert_end18:                                     ; preds = %assert_end16
  %78 = getelementptr inbounds i64, i64* %21, i64 3
  %79 = load i64, i64* %78, align 8, !tbaa !47
  %80 = trunc i64 %79 to i32
  %81 = icmp eq i32 %80, 136
  br i1 %81, label %assert_end20, label %assert_fail19, !prof !5

assert_fail19:                                    ; preds = %assert_end18
  %82 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %82(i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.10, i64 0, i64 0))
  ret i32 -1

assert_end20:                                     ; preds = %assert_end18
  %83 = icmp eq i64* %23, null
  br i1 %83, label %if_end, label %if_then, !prof !49

if_then:                                          ; preds = %assert_end20
  %84 = bitcast i64* %23 to <4 x i64>*
  %85 = load <4 x i64>, <4 x i64>* %84, align 8, !tbaa !50
  %86 = trunc <4 x i64> %85 to <4 x i32>
  %87 = icmp eq <4 x i32> %86, <i32 2367488, i32 18496, i32 136, i32 1>
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
  tail call void %92(i8* getelementptr inbounds ([204 x i8], [204 x i8]* @.str.11, i64 0, i64 0))
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
  %112 = icmp eq i32 %111, 64
  br i1 %112, label %assert_end30, label %assert_fail29, !prof !5

assert_fail29:                                    ; preds = %assert_end28
  %113 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %113(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.15, i64 0, i64 0))
  ret i32 -1

assert_end30:                                     ; preds = %assert_end28
  %114 = getelementptr inbounds i64, i64* %31, i64 1
  %115 = load i64, i64* %114, align 8, !tbaa !76
  %116 = trunc i64 %115 to i32
  %117 = icmp eq i32 %116, 128
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
  %133 = icmp eq <4 x i32> %132, <i32 128, i32 1, i32 1, i32 1>
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
  %171 = icmp eq i32 %170, 64
  br i1 %171, label %assert_end54, label %assert_fail53, !prof !5

assert_fail53:                                    ; preds = %assert_end52
  %172 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %172(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.26, i64 0, i64 0))
  ret i32 -1

assert_end54:                                     ; preds = %assert_end52
  %173 = getelementptr inbounds i64, i64* %37, i64 2
  %174 = load i64, i64* %173, align 8, !tbaa !111
  %175 = trunc i64 %174 to i32
  %176 = icmp eq i32 %175, 136
  br i1 %176, label %assert_end56, label %assert_fail55, !prof !5

assert_fail55:                                    ; preds = %assert_end54
  %177 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %177(i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.27, i64 0, i64 0))
  ret i32 -1

assert_end56:                                     ; preds = %assert_end54
  %178 = getelementptr inbounds i64, i64* %37, i64 3
  %179 = load i64, i64* %178, align 8, !tbaa !114
  %180 = trunc i64 %179 to i32
  %181 = icmp eq i32 %180, 136
  br i1 %181, label %assert_end58, label %assert_fail57, !prof !5

assert_fail57:                                    ; preds = %assert_end56
  %182 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %182(i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.28, i64 0, i64 0))
  ret i32 -1

assert_end58:                                     ; preds = %assert_end56
  %183 = icmp eq i64* %39, null
  br i1 %183, label %if_end60, label %if_then59, !prof !49

if_then59:                                        ; preds = %assert_end58
  %184 = bitcast i64* %39 to <4 x i64>*
  %185 = load <4 x i64>, <4 x i64>* %184, align 8, !tbaa !116
  %186 = trunc <4 x i64> %185 to <4 x i32>
  %187 = icmp eq <4 x i32> %186, <i32 1183744, i32 18496, i32 136, i32 1>
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
  tail call void %192(i8* getelementptr inbounds ([204 x i8], [204 x i8]* @.str.29, i64 0, i64 0))
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
  %5 = tail call i8* %4(i32 1, i32 %3, i64 9469952, i32 2, i32 32)
  %6 = load i8* (i32, i32, i64, i32, i32)*, i8* (i32, i32, i64, i32, i32)** @__TVMBackendAllocWorkspace, align 8, !tbaa !6
  %7 = tail call i8* %6(i32 1, i32 %3, i64 32768, i32 2, i32 32)
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
  %10 = add nsw i32 %9, 543
  %11 = sdiv i32 %10, %9
  %12 = add nsw i32 %0, 1
  %13 = mul nsw i32 %11, %12
  %14 = icmp slt i32 %13, 544
  %15 = select i1 %14, i32 %13, i32 544
  %16 = mul nsw i32 %11, %0
  %17 = icmp slt i32 %16, 544
  %18 = select i1 %17, i32 %16, i32 544
  %19 = icmp slt i32 %18, %15
  br i1 %19, label %for_begin1.preheader.preheader, label %for_end, !prof !5

for_begin1.preheader.preheader:                   ; preds = %entry
  %20 = add i32 %18, 1
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %21, -1
  %23 = sext i32 %15 to i64
  br label %for_begin1.preheader

for_begin1.preheader:                             ; preds = %for_begin1.preheader.preheader, %for_end3
  %indvars.iv10 = phi i64 [ %22, %for_begin1.preheader.preheader ], [ %indvars.iv.next11, %for_end3 ]
  %24 = mul nsw i64 %indvars.iv10, 4352
  %25 = trunc i64 %indvars.iv10 to i32
  %26 = srem i32 %25, 136
  %27 = mul nsw i32 %26, 136
  %28 = sdiv i32 %25, 136
  %29 = mul nsw i32 %28, 591872
  %30 = add i32 %27, %29
  %31 = mul i32 %28, 591872
  %32 = add i32 %31, %27
  br label %for_begin4.preheader

for_end:                                          ; preds = %for_end3, %entry
  ret i32 0

for_begin4.preheader:                             ; preds = %for_end6, %for_begin1.preheader
  %indvars.iv7 = phi i64 [ 0, %for_begin1.preheader ], [ %indvars.iv.next8, %for_end6 ]
  %33 = mul nuw nsw i64 %indvars.iv7, 136
  %34 = add nsw i64 %33, %24
  %35 = trunc i64 %indvars.iv7 to i32
  %36 = mul i32 %35, 18496
  %37 = add i32 %30, %36
  %38 = trunc i64 %indvars.iv7 to i32
  %39 = mul i32 %38, 18496
  %40 = add i32 %32, %39
  %41 = icmp sgt i32 %40, 2147483512
  br i1 %41, label %for_body5.preheader, label %vector.body

for_body5.preheader:                              ; preds = %vector.body, %for_begin4.preheader
  %indvars.iv.ph = phi i64 [ 0, %for_begin4.preheader ], [ 128, %vector.body ]
  br label %for_body5

vector.body:                                      ; preds = %for_begin4.preheader
  %42 = sext i32 %37 to i64
  %43 = getelementptr inbounds float, float* %7, i64 %42
  %44 = bitcast float* %43 to <8 x i32>*
  %wide.load = load <8 x i32>, <8 x i32>* %44, align 4, !tbaa !128
  %45 = getelementptr inbounds float, float* %43, i64 8
  %46 = bitcast float* %45 to <8 x i32>*
  %wide.load21 = load <8 x i32>, <8 x i32>* %46, align 4, !tbaa !128
  %47 = getelementptr inbounds float, float* %43, i64 16
  %48 = bitcast float* %47 to <8 x i32>*
  %wide.load22 = load <8 x i32>, <8 x i32>* %48, align 4, !tbaa !128
  %49 = getelementptr inbounds float, float* %43, i64 24
  %50 = bitcast float* %49 to <8 x i32>*
  %wide.load23 = load <8 x i32>, <8 x i32>* %50, align 4, !tbaa !128
  %51 = getelementptr inbounds float, float* %4, i64 %34
  %52 = bitcast float* %51 to <8 x i32>*
  store <8 x i32> %wide.load, <8 x i32>* %52, align 4, !tbaa !131
  %53 = getelementptr inbounds float, float* %51, i64 8
  %54 = bitcast float* %53 to <8 x i32>*
  store <8 x i32> %wide.load21, <8 x i32>* %54, align 4, !tbaa !131
  %55 = getelementptr inbounds float, float* %51, i64 16
  %56 = bitcast float* %55 to <8 x i32>*
  store <8 x i32> %wide.load22, <8 x i32>* %56, align 4, !tbaa !131
  %57 = getelementptr inbounds float, float* %51, i64 24
  %58 = bitcast float* %57 to <8 x i32>*
  store <8 x i32> %wide.load23, <8 x i32>* %58, align 4, !tbaa !131
  %59 = add nsw i64 %34, 32
  %60 = add i32 %37, 32
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds float, float* %7, i64 %61
  %63 = bitcast float* %62 to <8 x i32>*
  %wide.load.1 = load <8 x i32>, <8 x i32>* %63, align 4, !tbaa !128
  %64 = getelementptr inbounds float, float* %62, i64 8
  %65 = bitcast float* %64 to <8 x i32>*
  %wide.load21.1 = load <8 x i32>, <8 x i32>* %65, align 4, !tbaa !128
  %66 = getelementptr inbounds float, float* %62, i64 16
  %67 = bitcast float* %66 to <8 x i32>*
  %wide.load22.1 = load <8 x i32>, <8 x i32>* %67, align 4, !tbaa !128
  %68 = getelementptr inbounds float, float* %62, i64 24
  %69 = bitcast float* %68 to <8 x i32>*
  %wide.load23.1 = load <8 x i32>, <8 x i32>* %69, align 4, !tbaa !128
  %70 = getelementptr inbounds float, float* %4, i64 %59
  %71 = bitcast float* %70 to <8 x i32>*
  store <8 x i32> %wide.load.1, <8 x i32>* %71, align 4, !tbaa !131
  %72 = getelementptr inbounds float, float* %70, i64 8
  %73 = bitcast float* %72 to <8 x i32>*
  store <8 x i32> %wide.load21.1, <8 x i32>* %73, align 4, !tbaa !131
  %74 = getelementptr inbounds float, float* %70, i64 16
  %75 = bitcast float* %74 to <8 x i32>*
  store <8 x i32> %wide.load22.1, <8 x i32>* %75, align 4, !tbaa !131
  %76 = getelementptr inbounds float, float* %70, i64 24
  %77 = bitcast float* %76 to <8 x i32>*
  store <8 x i32> %wide.load23.1, <8 x i32>* %77, align 4, !tbaa !131
  %78 = add nsw i64 %34, 64
  %79 = add i32 %37, 64
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds float, float* %7, i64 %80
  %82 = bitcast float* %81 to <8 x i32>*
  %wide.load.2 = load <8 x i32>, <8 x i32>* %82, align 4, !tbaa !128
  %83 = getelementptr inbounds float, float* %81, i64 8
  %84 = bitcast float* %83 to <8 x i32>*
  %wide.load21.2 = load <8 x i32>, <8 x i32>* %84, align 4, !tbaa !128
  %85 = getelementptr inbounds float, float* %81, i64 16
  %86 = bitcast float* %85 to <8 x i32>*
  %wide.load22.2 = load <8 x i32>, <8 x i32>* %86, align 4, !tbaa !128
  %87 = getelementptr inbounds float, float* %81, i64 24
  %88 = bitcast float* %87 to <8 x i32>*
  %wide.load23.2 = load <8 x i32>, <8 x i32>* %88, align 4, !tbaa !128
  %89 = getelementptr inbounds float, float* %4, i64 %78
  %90 = bitcast float* %89 to <8 x i32>*
  store <8 x i32> %wide.load.2, <8 x i32>* %90, align 4, !tbaa !131
  %91 = getelementptr inbounds float, float* %89, i64 8
  %92 = bitcast float* %91 to <8 x i32>*
  store <8 x i32> %wide.load21.2, <8 x i32>* %92, align 4, !tbaa !131
  %93 = getelementptr inbounds float, float* %89, i64 16
  %94 = bitcast float* %93 to <8 x i32>*
  store <8 x i32> %wide.load22.2, <8 x i32>* %94, align 4, !tbaa !131
  %95 = getelementptr inbounds float, float* %89, i64 24
  %96 = bitcast float* %95 to <8 x i32>*
  store <8 x i32> %wide.load23.2, <8 x i32>* %96, align 4, !tbaa !131
  %97 = add nsw i64 %34, 96
  %98 = add i32 %37, 96
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds float, float* %7, i64 %99
  %101 = bitcast float* %100 to <8 x i32>*
  %wide.load.3 = load <8 x i32>, <8 x i32>* %101, align 4, !tbaa !128
  %102 = getelementptr inbounds float, float* %100, i64 8
  %103 = bitcast float* %102 to <8 x i32>*
  %wide.load21.3 = load <8 x i32>, <8 x i32>* %103, align 4, !tbaa !128
  %104 = getelementptr inbounds float, float* %100, i64 16
  %105 = bitcast float* %104 to <8 x i32>*
  %wide.load22.3 = load <8 x i32>, <8 x i32>* %105, align 4, !tbaa !128
  %106 = getelementptr inbounds float, float* %100, i64 24
  %107 = bitcast float* %106 to <8 x i32>*
  %wide.load23.3 = load <8 x i32>, <8 x i32>* %107, align 4, !tbaa !128
  %108 = getelementptr inbounds float, float* %4, i64 %97
  %109 = bitcast float* %108 to <8 x i32>*
  store <8 x i32> %wide.load.3, <8 x i32>* %109, align 4, !tbaa !131
  %110 = getelementptr inbounds float, float* %108, i64 8
  %111 = bitcast float* %110 to <8 x i32>*
  store <8 x i32> %wide.load21.3, <8 x i32>* %111, align 4, !tbaa !131
  %112 = getelementptr inbounds float, float* %108, i64 16
  %113 = bitcast float* %112 to <8 x i32>*
  store <8 x i32> %wide.load22.3, <8 x i32>* %113, align 4, !tbaa !131
  %114 = getelementptr inbounds float, float* %108, i64 24
  %115 = bitcast float* %114 to <8 x i32>*
  store <8 x i32> %wide.load23.3, <8 x i32>* %115, align 4, !tbaa !131
  br label %for_body5.preheader

for_end3:                                         ; preds = %for_end6
  %indvars.iv.next11 = add nsw i64 %indvars.iv10, 1
  %116 = icmp slt i64 %indvars.iv.next11, %23
  br i1 %116, label %for_begin1.preheader, label %for_end, !prof !5

for_body5:                                        ; preds = %for_body5, %for_body5.preheader
  %indvars.iv = phi i64 [ %indvars.iv.ph, %for_body5.preheader ], [ %indvars.iv.next.7, %for_body5 ]
  %117 = add nsw i64 %34, %indvars.iv
  %118 = trunc i64 %indvars.iv to i32
  %119 = add i32 %37, %118
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds float, float* %7, i64 %120
  %122 = bitcast float* %121 to i32*
  %123 = load i32, i32* %122, align 4, !tbaa !128
  %124 = getelementptr inbounds float, float* %4, i64 %117
  %125 = bitcast float* %124 to i32*
  store i32 %123, i32* %125, align 4, !tbaa !131
  %indvars.iv.next = or i64 %indvars.iv, 1
  %126 = add nsw i64 %34, %indvars.iv.next
  %127 = trunc i64 %indvars.iv.next to i32
  %128 = add i32 %37, %127
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds float, float* %7, i64 %129
  %131 = bitcast float* %130 to i32*
  %132 = load i32, i32* %131, align 4, !tbaa !128
  %133 = getelementptr inbounds float, float* %4, i64 %126
  %134 = bitcast float* %133 to i32*
  store i32 %132, i32* %134, align 4, !tbaa !131
  %indvars.iv.next.1 = or i64 %indvars.iv, 2
  %135 = add nsw i64 %34, %indvars.iv.next.1
  %136 = trunc i64 %indvars.iv.next.1 to i32
  %137 = add i32 %37, %136
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds float, float* %7, i64 %138
  %140 = bitcast float* %139 to i32*
  %141 = load i32, i32* %140, align 4, !tbaa !128
  %142 = getelementptr inbounds float, float* %4, i64 %135
  %143 = bitcast float* %142 to i32*
  store i32 %141, i32* %143, align 4, !tbaa !131
  %indvars.iv.next.2 = or i64 %indvars.iv, 3
  %144 = add nsw i64 %34, %indvars.iv.next.2
  %145 = trunc i64 %indvars.iv.next.2 to i32
  %146 = add i32 %37, %145
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds float, float* %7, i64 %147
  %149 = bitcast float* %148 to i32*
  %150 = load i32, i32* %149, align 4, !tbaa !128
  %151 = getelementptr inbounds float, float* %4, i64 %144
  %152 = bitcast float* %151 to i32*
  store i32 %150, i32* %152, align 4, !tbaa !131
  %indvars.iv.next.3 = or i64 %indvars.iv, 4
  %153 = add nsw i64 %34, %indvars.iv.next.3
  %154 = trunc i64 %indvars.iv.next.3 to i32
  %155 = add i32 %37, %154
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds float, float* %7, i64 %156
  %158 = bitcast float* %157 to i32*
  %159 = load i32, i32* %158, align 4, !tbaa !128
  %160 = getelementptr inbounds float, float* %4, i64 %153
  %161 = bitcast float* %160 to i32*
  store i32 %159, i32* %161, align 4, !tbaa !131
  %indvars.iv.next.4 = or i64 %indvars.iv, 5
  %162 = add nsw i64 %34, %indvars.iv.next.4
  %163 = trunc i64 %indvars.iv.next.4 to i32
  %164 = add i32 %37, %163
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds float, float* %7, i64 %165
  %167 = bitcast float* %166 to i32*
  %168 = load i32, i32* %167, align 4, !tbaa !128
  %169 = getelementptr inbounds float, float* %4, i64 %162
  %170 = bitcast float* %169 to i32*
  store i32 %168, i32* %170, align 4, !tbaa !131
  %indvars.iv.next.5 = or i64 %indvars.iv, 6
  %171 = add nsw i64 %34, %indvars.iv.next.5
  %172 = trunc i64 %indvars.iv.next.5 to i32
  %173 = add i32 %37, %172
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds float, float* %7, i64 %174
  %176 = bitcast float* %175 to i32*
  %177 = load i32, i32* %176, align 4, !tbaa !128
  %178 = getelementptr inbounds float, float* %4, i64 %171
  %179 = bitcast float* %178 to i32*
  store i32 %177, i32* %179, align 4, !tbaa !131
  %indvars.iv.next.6 = or i64 %indvars.iv, 7
  %180 = add nsw i64 %34, %indvars.iv.next.6
  %181 = trunc i64 %indvars.iv.next.6 to i32
  %182 = add i32 %37, %181
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds float, float* %7, i64 %183
  %185 = bitcast float* %184 to i32*
  %186 = load i32, i32* %185, align 4, !tbaa !128
  %187 = getelementptr inbounds float, float* %4, i64 %180
  %188 = bitcast float* %187 to i32*
  store i32 %186, i32* %188, align 4, !tbaa !131
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8
  %exitcond.7 = icmp eq i64 %indvars.iv.next.7, 136
  br i1 %exitcond.7, label %for_end6, label %for_body5, !prof !49, !llvm.loop !134

for_end6:                                         ; preds = %for_body5
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv7, 1
  %exitcond9 = icmp eq i64 %indvars.iv.next8, 32
  br i1 %exitcond9, label %for_end3, label %for_begin4.preheader, !prof !49
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
  %10 = add nsw i32 %9, 1
  %11 = sdiv i32 %10, %9
  %12 = add nsw i32 %0, 1
  %13 = mul nsw i32 %11, %12
  %14 = icmp slt i32 %13, 2
  %15 = select i1 %14, i32 %13, i32 2
  %16 = mul nsw i32 %11, %0
  %17 = icmp slt i32 %16, 2
  %18 = select i1 %17, i32 %16, i32 2
  %19 = icmp slt i32 %18, %15
  br i1 %19, label %for_begin1.preheader.preheader, label %for_end, !prof !5

for_begin1.preheader.preheader:                   ; preds = %entry
  %20 = add i32 %18, 1
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %21, -1
  %23 = sext i32 %15 to i64
  br label %for_begin1.preheader

for_begin1.preheader:                             ; preds = %for_begin1.preheader.preheader, %for_end3
  %indvars.iv10 = phi i64 [ %22, %for_begin1.preheader.preheader ], [ %indvars.iv.next11, %for_end3 ]
  %24 = phi i32 [ %18, %for_begin1.preheader.preheader ], [ %31, %for_end3 ]
  %25 = shl nsw i32 %24, 12
  %26 = sext i32 %25 to i64
  br label %for_begin4.preheader

for_end:                                          ; preds = %for_end3, %entry
  ret i32 0

for_begin4.preheader:                             ; preds = %for_end6, %for_begin1.preheader
  %indvars.iv7 = phi i64 [ 0, %for_begin1.preheader ], [ %indvars.iv.next8, %for_end6 ]
  %27 = shl i64 %indvars.iv7, 10
  %28 = add nsw i64 %27, %26
  %29 = shl i64 %indvars.iv7, 5
  %30 = add nuw nsw i64 %29, %26
  br label %for_body5

for_end3:                                         ; preds = %for_end6
  %indvars.iv.next11 = add nsw i64 %indvars.iv10, 1
  %31 = add nsw i32 %24, 1
  %32 = icmp slt i64 %indvars.iv.next11, %23
  br i1 %32, label %for_begin1.preheader, label %for_end, !prof !5

for_body5:                                        ; preds = %for_body5, %for_begin4.preheader
  %indvars.iv = phi i64 [ 0, %for_begin4.preheader ], [ %indvars.iv.next, %for_body5 ]
  %33 = shl i64 %indvars.iv, 5
  %34 = add nsw i64 %28, %33
  %35 = add nuw nsw i64 %30, %indvars.iv
  %36 = add nsw i64 %35, 128
  %37 = add nsw i64 %35, 256
  %38 = add nsw i64 %35, 384
  %39 = add nsw i64 %35, 512
  %40 = add nsw i64 %35, 640
  %41 = add nsw i64 %35, 768
  %42 = add nsw i64 %35, 896
  %43 = add nsw i64 %35, 1024
  %44 = add nsw i64 %35, 1152
  %45 = add nsw i64 %35, 1280
  %46 = add nsw i64 %35, 1408
  %47 = add nsw i64 %35, 1536
  %48 = add nsw i64 %35, 1664
  %49 = add nsw i64 %35, 1792
  %50 = add nsw i64 %35, 1920
  %51 = add nsw i64 %35, 2048
  %52 = add nsw i64 %35, 2176
  %53 = add nsw i64 %35, 2304
  %54 = add nsw i64 %35, 2432
  %55 = add nsw i64 %35, 2560
  %56 = add nsw i64 %35, 2688
  %57 = add nsw i64 %35, 2816
  %58 = add nsw i64 %35, 2944
  %59 = add nsw i64 %35, 3072
  %60 = add nsw i64 %35, 3200
  %61 = add nsw i64 %35, 3328
  %62 = add nsw i64 %35, 3456
  %63 = add nsw i64 %35, 3584
  %64 = add nsw i64 %35, 3712
  %65 = add nsw i64 %35, 3840
  %66 = add nsw i64 %35, 3968
  %67 = getelementptr inbounds float, float* %7, i64 %35
  %68 = load float, float* %67, align 4, !tbaa !136
  %69 = insertelement <32 x float> undef, float %68, i32 0
  %70 = getelementptr inbounds float, float* %7, i64 %36
  %71 = load float, float* %70, align 4, !tbaa !136
  %72 = insertelement <32 x float> %69, float %71, i32 1
  %73 = getelementptr inbounds float, float* %7, i64 %37
  %74 = load float, float* %73, align 4, !tbaa !136
  %75 = insertelement <32 x float> %72, float %74, i32 2
  %76 = getelementptr inbounds float, float* %7, i64 %38
  %77 = load float, float* %76, align 4, !tbaa !136
  %78 = insertelement <32 x float> %75, float %77, i32 3
  %79 = getelementptr inbounds float, float* %7, i64 %39
  %80 = load float, float* %79, align 4, !tbaa !136
  %81 = insertelement <32 x float> %78, float %80, i32 4
  %82 = getelementptr inbounds float, float* %7, i64 %40
  %83 = load float, float* %82, align 4, !tbaa !136
  %84 = insertelement <32 x float> %81, float %83, i32 5
  %85 = getelementptr inbounds float, float* %7, i64 %41
  %86 = load float, float* %85, align 4, !tbaa !136
  %87 = insertelement <32 x float> %84, float %86, i32 6
  %88 = getelementptr inbounds float, float* %7, i64 %42
  %89 = load float, float* %88, align 4, !tbaa !136
  %90 = insertelement <32 x float> %87, float %89, i32 7
  %91 = getelementptr inbounds float, float* %7, i64 %43
  %92 = load float, float* %91, align 4, !tbaa !136
  %93 = insertelement <32 x float> %90, float %92, i32 8
  %94 = getelementptr inbounds float, float* %7, i64 %44
  %95 = load float, float* %94, align 4, !tbaa !136
  %96 = insertelement <32 x float> %93, float %95, i32 9
  %97 = getelementptr inbounds float, float* %7, i64 %45
  %98 = load float, float* %97, align 4, !tbaa !136
  %99 = insertelement <32 x float> %96, float %98, i32 10
  %100 = getelementptr inbounds float, float* %7, i64 %46
  %101 = load float, float* %100, align 4, !tbaa !136
  %102 = insertelement <32 x float> %99, float %101, i32 11
  %103 = getelementptr inbounds float, float* %7, i64 %47
  %104 = load float, float* %103, align 4, !tbaa !136
  %105 = insertelement <32 x float> %102, float %104, i32 12
  %106 = getelementptr inbounds float, float* %7, i64 %48
  %107 = load float, float* %106, align 4, !tbaa !136
  %108 = insertelement <32 x float> %105, float %107, i32 13
  %109 = getelementptr inbounds float, float* %7, i64 %49
  %110 = load float, float* %109, align 4, !tbaa !136
  %111 = insertelement <32 x float> %108, float %110, i32 14
  %112 = getelementptr inbounds float, float* %7, i64 %50
  %113 = load float, float* %112, align 4, !tbaa !136
  %114 = insertelement <32 x float> %111, float %113, i32 15
  %115 = getelementptr inbounds float, float* %7, i64 %51
  %116 = load float, float* %115, align 4, !tbaa !136
  %117 = insertelement <32 x float> %114, float %116, i32 16
  %118 = getelementptr inbounds float, float* %7, i64 %52
  %119 = load float, float* %118, align 4, !tbaa !136
  %120 = insertelement <32 x float> %117, float %119, i32 17
  %121 = getelementptr inbounds float, float* %7, i64 %53
  %122 = load float, float* %121, align 4, !tbaa !136
  %123 = insertelement <32 x float> %120, float %122, i32 18
  %124 = getelementptr inbounds float, float* %7, i64 %54
  %125 = load float, float* %124, align 4, !tbaa !136
  %126 = insertelement <32 x float> %123, float %125, i32 19
  %127 = getelementptr inbounds float, float* %7, i64 %55
  %128 = load float, float* %127, align 4, !tbaa !136
  %129 = insertelement <32 x float> %126, float %128, i32 20
  %130 = getelementptr inbounds float, float* %7, i64 %56
  %131 = load float, float* %130, align 4, !tbaa !136
  %132 = insertelement <32 x float> %129, float %131, i32 21
  %133 = getelementptr inbounds float, float* %7, i64 %57
  %134 = load float, float* %133, align 4, !tbaa !136
  %135 = insertelement <32 x float> %132, float %134, i32 22
  %136 = getelementptr inbounds float, float* %7, i64 %58
  %137 = load float, float* %136, align 4, !tbaa !136
  %138 = insertelement <32 x float> %135, float %137, i32 23
  %139 = getelementptr inbounds float, float* %7, i64 %59
  %140 = load float, float* %139, align 4, !tbaa !136
  %141 = insertelement <32 x float> %138, float %140, i32 24
  %142 = getelementptr inbounds float, float* %7, i64 %60
  %143 = load float, float* %142, align 4, !tbaa !136
  %144 = insertelement <32 x float> %141, float %143, i32 25
  %145 = getelementptr inbounds float, float* %7, i64 %61
  %146 = load float, float* %145, align 4, !tbaa !136
  %147 = insertelement <32 x float> %144, float %146, i32 26
  %148 = getelementptr inbounds float, float* %7, i64 %62
  %149 = load float, float* %148, align 4, !tbaa !136
  %150 = insertelement <32 x float> %147, float %149, i32 27
  %151 = getelementptr inbounds float, float* %7, i64 %63
  %152 = load float, float* %151, align 4, !tbaa !136
  %153 = insertelement <32 x float> %150, float %152, i32 28
  %154 = getelementptr inbounds float, float* %7, i64 %64
  %155 = load float, float* %154, align 4, !tbaa !136
  %156 = insertelement <32 x float> %153, float %155, i32 29
  %157 = getelementptr inbounds float, float* %7, i64 %65
  %158 = load float, float* %157, align 4, !tbaa !136
  %159 = insertelement <32 x float> %156, float %158, i32 30
  %160 = getelementptr inbounds float, float* %7, i64 %66
  %161 = load float, float* %160, align 4, !tbaa !136
  %162 = insertelement <32 x float> %159, float %161, i32 31
  %163 = getelementptr inbounds float, float* %4, i64 %34
  %164 = bitcast float* %163 to <32 x float>*
  store <32 x float> %162, <32 x float>* %164, align 64, !tbaa !139
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 32
  br i1 %exitcond, label %for_end6, label %for_body5, !prof !49

for_end6:                                         ; preds = %for_body5
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv7, 1
  %exitcond9 = icmp eq i64 %indvars.iv.next8, 4
  br i1 %exitcond9, label %for_end3, label %for_begin4.preheader, !prof !49
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
  %16 = add nsw i32 %15, 271
  %17 = sdiv i32 %16, %15
  %18 = add nsw i32 %0, 1
  %19 = mul nsw i32 %17, %18
  %20 = icmp slt i32 %19, 272
  %21 = select i1 %20, i32 %19, i32 272
  %22 = mul nsw i32 %17, %0
  %23 = icmp slt i32 %22, 272
  %24 = select i1 %23, i32 %22, i32 272
  %25 = icmp slt i32 %24, %21
  br i1 %25, label %for_body, label %for_end, !prof !5

for_body:                                         ; preds = %entry, %for_end12
  %26 = phi i32 [ %293, %for_end12 ], [ %24, %entry ]
  %27 = load i8* (i32, i32, i64, i32, i32)*, i8* (i32, i32, i64, i32, i32)** @__TVMBackendAllocWorkspace, align 8, !tbaa !6
  %28 = tail call i8* %27(i32 1, i32 %13, i64 17408, i32 2, i32 32)
  %29 = bitcast i8* %28 to float*
  %30 = srem i32 %26, 136
  %31 = mul nsw i32 %30, 4352
  %32 = sdiv i32 %26, 136
  %33 = shl i32 %32, 12
  %34 = sext i32 %33 to i64
  %35 = sext i32 %31 to i64
  %36 = or i64 %34, 1024
  %37 = or i64 %34, 2048
  %38 = or i64 %34, 3072
  br label %for_body2

for_end:                                          ; preds = %for_end12, %entry
  ret i32 0

for_begin10.preheader:                            ; preds = %for_end9.3
  %39 = mul nsw i32 %30, 136
  %40 = mul nsw i32 %32, 591872
  %41 = add nsw i32 %40, %39
  %42 = sext i32 %41 to i64
  br label %for_begin13.preheader

for_body2:                                        ; preds = %for_end9.3, %for_body
  %indvars.iv30 = phi i64 [ 0, %for_body ], [ %indvars.iv.next31, %for_end9.3 ]
  %43 = shl nsw i64 %indvars.iv30, 6
  %44 = getelementptr inbounds float, float* %29, i64 %43
  %45 = bitcast float* %44 to <32 x float>*
  store <32 x float> zeroinitializer, <32 x float>* %45, align 64, !tbaa !142
  %46 = or i64 %43, 32
  %47 = getelementptr inbounds float, float* %29, i64 %46
  %48 = bitcast float* %47 to <32 x float>*
  store <32 x float> zeroinitializer, <32 x float>* %48, align 64, !tbaa !142
  %49 = shl nuw nsw i64 %indvars.iv30, 1
  %50 = add nuw nsw i64 %49, %35
  br label %for_body8

for_body8:                                        ; preds = %for_body8, %for_body2
  %indvars.iv = phi i64 [ 0, %for_body2 ], [ %indvars.iv.next.161, %for_body8 ]
  %51 = phi <32 x float> [ zeroinitializer, %for_body2 ], [ %88, %for_body8 ]
  %52 = phi <32 x float> [ zeroinitializer, %for_body2 ], [ %82, %for_body8 ]
  %53 = mul nuw nsw i64 %indvars.iv, 136
  %54 = add nsw i64 %50, %53
  %55 = getelementptr inbounds float, float* %4, i64 %54
  %56 = load float, float* %55, align 8, !tbaa !131
  %57 = insertelement <32 x float> undef, float %56, i32 0
  %58 = shufflevector <32 x float> %57, <32 x float> undef, <32 x i32> zeroinitializer
  %59 = shl i64 %indvars.iv, 5
  %60 = add nuw nsw i64 %59, %34
  %61 = getelementptr inbounds float, float* %7, i64 %60
  %62 = bitcast float* %61 to <32 x float>*
  %63 = load <32 x float>, <32 x float>* %62, align 64, !tbaa !139
  %64 = tail call <32 x float> @llvm.fmuladd.v32f32(<32 x float> %58, <32 x float> %63, <32 x float> %52)
  %65 = or i64 %54, 1
  %66 = getelementptr inbounds float, float* %4, i64 %65
  %67 = load float, float* %66, align 4, !tbaa !131
  %68 = insertelement <32 x float> undef, float %67, i32 0
  %69 = shufflevector <32 x float> %68, <32 x float> undef, <32 x i32> zeroinitializer
  %70 = tail call <32 x float> @llvm.fmuladd.v32f32(<32 x float> %69, <32 x float> %63, <32 x float> %51)
  %indvars.iv.next = or i64 %indvars.iv, 1
  %71 = mul nuw nsw i64 %indvars.iv.next, 136
  %72 = add nsw i64 %50, %71
  %73 = getelementptr inbounds float, float* %4, i64 %72
  %74 = load float, float* %73, align 8, !tbaa !131
  %75 = insertelement <32 x float> undef, float %74, i32 0
  %76 = shufflevector <32 x float> %75, <32 x float> undef, <32 x i32> zeroinitializer
  %77 = shl i64 %indvars.iv.next, 5
  %78 = add nuw nsw i64 %77, %34
  %79 = getelementptr inbounds float, float* %7, i64 %78
  %80 = bitcast float* %79 to <32 x float>*
  %81 = load <32 x float>, <32 x float>* %80, align 64, !tbaa !139
  %82 = tail call <32 x float> @llvm.fmuladd.v32f32(<32 x float> %76, <32 x float> %81, <32 x float> %64)
  %83 = or i64 %72, 1
  %84 = getelementptr inbounds float, float* %4, i64 %83
  %85 = load float, float* %84, align 4, !tbaa !131
  %86 = insertelement <32 x float> undef, float %85, i32 0
  %87 = shufflevector <32 x float> %86, <32 x float> undef, <32 x i32> zeroinitializer
  %88 = tail call <32 x float> @llvm.fmuladd.v32f32(<32 x float> %87, <32 x float> %81, <32 x float> %70)
  %indvars.iv.next.161 = add nuw nsw i64 %indvars.iv, 2
  %exitcond.162 = icmp eq i64 %indvars.iv.next.161, 32
  br i1 %exitcond.162, label %for_end9, label %for_body8, !prof !49

for_end9:                                         ; preds = %for_body8
  %89 = add nsw i64 %50, 591872
  br label %for_body8.1

for_begin13.preheader:                            ; preds = %for_begin13.preheader, %for_begin10.preheader
  %indvars.iv36 = phi i64 [ 0, %for_begin10.preheader ], [ %indvars.iv.next37, %for_begin13.preheader ]
  %90 = shl nuw nsw i64 %indvars.iv36, 1
  %91 = add nsw i64 %90, %42
  %92 = shl i64 %indvars.iv36, 6
  %93 = add nsw i64 %91, 18496
  %94 = add nsw i64 %91, 36992
  %95 = add nsw i64 %91, 55488
  %96 = add nsw i64 %91, 73984
  %97 = add nsw i64 %91, 92480
  %98 = add nsw i64 %91, 110976
  %99 = add nsw i64 %91, 129472
  %100 = add nsw i64 %91, 147968
  %101 = add nsw i64 %91, 166464
  %102 = add nsw i64 %91, 184960
  %103 = add nsw i64 %91, 203456
  %104 = add nsw i64 %91, 221952
  %105 = add nsw i64 %91, 240448
  %106 = add nsw i64 %91, 258944
  %107 = add nsw i64 %91, 277440
  %108 = add nsw i64 %91, 295936
  %109 = add nsw i64 %91, 314432
  %110 = add nsw i64 %91, 332928
  %111 = add nsw i64 %91, 351424
  %112 = add nsw i64 %91, 369920
  %113 = add nsw i64 %91, 388416
  %114 = add nsw i64 %91, 406912
  %115 = add nsw i64 %91, 425408
  %116 = add nsw i64 %91, 443904
  %117 = add nsw i64 %91, 462400
  %118 = add nsw i64 %91, 480896
  %119 = add nsw i64 %91, 499392
  %120 = add nsw i64 %91, 517888
  %121 = add nsw i64 %91, 536384
  %122 = add nsw i64 %91, 554880
  %123 = add nsw i64 %91, 573376
  %124 = getelementptr inbounds float, float* %29, i64 %92
  %125 = bitcast float* %124 to <32 x float>*
  %126 = load <32 x float>, <32 x float>* %125, align 64, !tbaa !142
  %127 = getelementptr inbounds float, float* %10, i64 %91
  %128 = extractelement <32 x float> %126, i64 0
  store float %128, float* %127, align 4, !tbaa !145
  %129 = getelementptr inbounds float, float* %10, i64 %93
  %130 = extractelement <32 x float> %126, i64 1
  store float %130, float* %129, align 4, !tbaa !145
  %131 = getelementptr inbounds float, float* %10, i64 %94
  %132 = extractelement <32 x float> %126, i64 2
  store float %132, float* %131, align 4, !tbaa !145
  %133 = getelementptr inbounds float, float* %10, i64 %95
  %134 = extractelement <32 x float> %126, i64 3
  store float %134, float* %133, align 4, !tbaa !145
  %135 = getelementptr inbounds float, float* %10, i64 %96
  %136 = extractelement <32 x float> %126, i64 4
  store float %136, float* %135, align 4, !tbaa !145
  %137 = getelementptr inbounds float, float* %10, i64 %97
  %138 = extractelement <32 x float> %126, i64 5
  store float %138, float* %137, align 4, !tbaa !145
  %139 = getelementptr inbounds float, float* %10, i64 %98
  %140 = extractelement <32 x float> %126, i64 6
  store float %140, float* %139, align 4, !tbaa !145
  %141 = getelementptr inbounds float, float* %10, i64 %99
  %142 = extractelement <32 x float> %126, i64 7
  store float %142, float* %141, align 4, !tbaa !145
  %143 = getelementptr inbounds float, float* %10, i64 %100
  %144 = extractelement <32 x float> %126, i64 8
  store float %144, float* %143, align 4, !tbaa !145
  %145 = getelementptr inbounds float, float* %10, i64 %101
  %146 = extractelement <32 x float> %126, i64 9
  store float %146, float* %145, align 4, !tbaa !145
  %147 = getelementptr inbounds float, float* %10, i64 %102
  %148 = extractelement <32 x float> %126, i64 10
  store float %148, float* %147, align 4, !tbaa !145
  %149 = getelementptr inbounds float, float* %10, i64 %103
  %150 = extractelement <32 x float> %126, i64 11
  store float %150, float* %149, align 4, !tbaa !145
  %151 = getelementptr inbounds float, float* %10, i64 %104
  %152 = extractelement <32 x float> %126, i64 12
  store float %152, float* %151, align 4, !tbaa !145
  %153 = getelementptr inbounds float, float* %10, i64 %105
  %154 = extractelement <32 x float> %126, i64 13
  store float %154, float* %153, align 4, !tbaa !145
  %155 = getelementptr inbounds float, float* %10, i64 %106
  %156 = extractelement <32 x float> %126, i64 14
  store float %156, float* %155, align 4, !tbaa !145
  %157 = getelementptr inbounds float, float* %10, i64 %107
  %158 = extractelement <32 x float> %126, i64 15
  store float %158, float* %157, align 4, !tbaa !145
  %159 = getelementptr inbounds float, float* %10, i64 %108
  %160 = extractelement <32 x float> %126, i64 16
  store float %160, float* %159, align 4, !tbaa !145
  %161 = getelementptr inbounds float, float* %10, i64 %109
  %162 = extractelement <32 x float> %126, i64 17
  store float %162, float* %161, align 4, !tbaa !145
  %163 = getelementptr inbounds float, float* %10, i64 %110
  %164 = extractelement <32 x float> %126, i64 18
  store float %164, float* %163, align 4, !tbaa !145
  %165 = getelementptr inbounds float, float* %10, i64 %111
  %166 = extractelement <32 x float> %126, i64 19
  store float %166, float* %165, align 4, !tbaa !145
  %167 = getelementptr inbounds float, float* %10, i64 %112
  %168 = extractelement <32 x float> %126, i64 20
  store float %168, float* %167, align 4, !tbaa !145
  %169 = getelementptr inbounds float, float* %10, i64 %113
  %170 = extractelement <32 x float> %126, i64 21
  store float %170, float* %169, align 4, !tbaa !145
  %171 = getelementptr inbounds float, float* %10, i64 %114
  %172 = extractelement <32 x float> %126, i64 22
  store float %172, float* %171, align 4, !tbaa !145
  %173 = getelementptr inbounds float, float* %10, i64 %115
  %174 = extractelement <32 x float> %126, i64 23
  store float %174, float* %173, align 4, !tbaa !145
  %175 = getelementptr inbounds float, float* %10, i64 %116
  %176 = extractelement <32 x float> %126, i64 24
  store float %176, float* %175, align 4, !tbaa !145
  %177 = getelementptr inbounds float, float* %10, i64 %117
  %178 = extractelement <32 x float> %126, i64 25
  store float %178, float* %177, align 4, !tbaa !145
  %179 = getelementptr inbounds float, float* %10, i64 %118
  %180 = extractelement <32 x float> %126, i64 26
  store float %180, float* %179, align 4, !tbaa !145
  %181 = getelementptr inbounds float, float* %10, i64 %119
  %182 = extractelement <32 x float> %126, i64 27
  store float %182, float* %181, align 4, !tbaa !145
  %183 = getelementptr inbounds float, float* %10, i64 %120
  %184 = extractelement <32 x float> %126, i64 28
  store float %184, float* %183, align 4, !tbaa !145
  %185 = getelementptr inbounds float, float* %10, i64 %121
  %186 = extractelement <32 x float> %126, i64 29
  store float %186, float* %185, align 4, !tbaa !145
  %187 = getelementptr inbounds float, float* %10, i64 %122
  %188 = extractelement <32 x float> %126, i64 30
  store float %188, float* %187, align 4, !tbaa !145
  %189 = getelementptr inbounds float, float* %10, i64 %123
  %190 = extractelement <32 x float> %126, i64 31
  store float %190, float* %189, align 4, !tbaa !145
  %191 = or i64 %91, 1
  %192 = add nsw i64 %191, 18496
  %193 = add nsw i64 %191, 36992
  %194 = add nsw i64 %191, 55488
  %195 = add nsw i64 %191, 73984
  %196 = add nsw i64 %191, 92480
  %197 = add nsw i64 %191, 110976
  %198 = add nsw i64 %191, 129472
  %199 = add nsw i64 %191, 147968
  %200 = add nsw i64 %191, 166464
  %201 = add nsw i64 %191, 184960
  %202 = add nsw i64 %191, 203456
  %203 = add nsw i64 %191, 221952
  %204 = add nsw i64 %191, 240448
  %205 = add nsw i64 %191, 258944
  %206 = add nsw i64 %191, 277440
  %207 = add nsw i64 %191, 295936
  %208 = add nsw i64 %191, 314432
  %209 = add nsw i64 %191, 332928
  %210 = add nsw i64 %191, 351424
  %211 = add nsw i64 %191, 369920
  %212 = add nsw i64 %191, 388416
  %213 = add nsw i64 %191, 406912
  %214 = add nsw i64 %191, 425408
  %215 = add nsw i64 %191, 443904
  %216 = add nsw i64 %191, 462400
  %217 = add nsw i64 %191, 480896
  %218 = add nsw i64 %191, 499392
  %219 = add nsw i64 %191, 517888
  %220 = add nsw i64 %191, 536384
  %221 = add nsw i64 %191, 554880
  %222 = add nsw i64 %191, 573376
  %223 = or i64 %92, 32
  %224 = getelementptr inbounds float, float* %29, i64 %223
  %225 = bitcast float* %224 to <32 x float>*
  %226 = load <32 x float>, <32 x float>* %225, align 64, !tbaa !142
  %227 = getelementptr inbounds float, float* %10, i64 %191
  %228 = extractelement <32 x float> %226, i64 0
  store float %228, float* %227, align 4, !tbaa !145
  %229 = getelementptr inbounds float, float* %10, i64 %192
  %230 = extractelement <32 x float> %226, i64 1
  store float %230, float* %229, align 4, !tbaa !145
  %231 = getelementptr inbounds float, float* %10, i64 %193
  %232 = extractelement <32 x float> %226, i64 2
  store float %232, float* %231, align 4, !tbaa !145
  %233 = getelementptr inbounds float, float* %10, i64 %194
  %234 = extractelement <32 x float> %226, i64 3
  store float %234, float* %233, align 4, !tbaa !145
  %235 = getelementptr inbounds float, float* %10, i64 %195
  %236 = extractelement <32 x float> %226, i64 4
  store float %236, float* %235, align 4, !tbaa !145
  %237 = getelementptr inbounds float, float* %10, i64 %196
  %238 = extractelement <32 x float> %226, i64 5
  store float %238, float* %237, align 4, !tbaa !145
  %239 = getelementptr inbounds float, float* %10, i64 %197
  %240 = extractelement <32 x float> %226, i64 6
  store float %240, float* %239, align 4, !tbaa !145
  %241 = getelementptr inbounds float, float* %10, i64 %198
  %242 = extractelement <32 x float> %226, i64 7
  store float %242, float* %241, align 4, !tbaa !145
  %243 = getelementptr inbounds float, float* %10, i64 %199
  %244 = extractelement <32 x float> %226, i64 8
  store float %244, float* %243, align 4, !tbaa !145
  %245 = getelementptr inbounds float, float* %10, i64 %200
  %246 = extractelement <32 x float> %226, i64 9
  store float %246, float* %245, align 4, !tbaa !145
  %247 = getelementptr inbounds float, float* %10, i64 %201
  %248 = extractelement <32 x float> %226, i64 10
  store float %248, float* %247, align 4, !tbaa !145
  %249 = getelementptr inbounds float, float* %10, i64 %202
  %250 = extractelement <32 x float> %226, i64 11
  store float %250, float* %249, align 4, !tbaa !145
  %251 = getelementptr inbounds float, float* %10, i64 %203
  %252 = extractelement <32 x float> %226, i64 12
  store float %252, float* %251, align 4, !tbaa !145
  %253 = getelementptr inbounds float, float* %10, i64 %204
  %254 = extractelement <32 x float> %226, i64 13
  store float %254, float* %253, align 4, !tbaa !145
  %255 = getelementptr inbounds float, float* %10, i64 %205
  %256 = extractelement <32 x float> %226, i64 14
  store float %256, float* %255, align 4, !tbaa !145
  %257 = getelementptr inbounds float, float* %10, i64 %206
  %258 = extractelement <32 x float> %226, i64 15
  store float %258, float* %257, align 4, !tbaa !145
  %259 = getelementptr inbounds float, float* %10, i64 %207
  %260 = extractelement <32 x float> %226, i64 16
  store float %260, float* %259, align 4, !tbaa !145
  %261 = getelementptr inbounds float, float* %10, i64 %208
  %262 = extractelement <32 x float> %226, i64 17
  store float %262, float* %261, align 4, !tbaa !145
  %263 = getelementptr inbounds float, float* %10, i64 %209
  %264 = extractelement <32 x float> %226, i64 18
  store float %264, float* %263, align 4, !tbaa !145
  %265 = getelementptr inbounds float, float* %10, i64 %210
  %266 = extractelement <32 x float> %226, i64 19
  store float %266, float* %265, align 4, !tbaa !145
  %267 = getelementptr inbounds float, float* %10, i64 %211
  %268 = extractelement <32 x float> %226, i64 20
  store float %268, float* %267, align 4, !tbaa !145
  %269 = getelementptr inbounds float, float* %10, i64 %212
  %270 = extractelement <32 x float> %226, i64 21
  store float %270, float* %269, align 4, !tbaa !145
  %271 = getelementptr inbounds float, float* %10, i64 %213
  %272 = extractelement <32 x float> %226, i64 22
  store float %272, float* %271, align 4, !tbaa !145
  %273 = getelementptr inbounds float, float* %10, i64 %214
  %274 = extractelement <32 x float> %226, i64 23
  store float %274, float* %273, align 4, !tbaa !145
  %275 = getelementptr inbounds float, float* %10, i64 %215
  %276 = extractelement <32 x float> %226, i64 24
  store float %276, float* %275, align 4, !tbaa !145
  %277 = getelementptr inbounds float, float* %10, i64 %216
  %278 = extractelement <32 x float> %226, i64 25
  store float %278, float* %277, align 4, !tbaa !145
  %279 = getelementptr inbounds float, float* %10, i64 %217
  %280 = extractelement <32 x float> %226, i64 26
  store float %280, float* %279, align 4, !tbaa !145
  %281 = getelementptr inbounds float, float* %10, i64 %218
  %282 = extractelement <32 x float> %226, i64 27
  store float %282, float* %281, align 4, !tbaa !145
  %283 = getelementptr inbounds float, float* %10, i64 %219
  %284 = extractelement <32 x float> %226, i64 28
  store float %284, float* %283, align 4, !tbaa !145
  %285 = getelementptr inbounds float, float* %10, i64 %220
  %286 = extractelement <32 x float> %226, i64 29
  store float %286, float* %285, align 4, !tbaa !145
  %287 = getelementptr inbounds float, float* %10, i64 %221
  %288 = extractelement <32 x float> %226, i64 30
  store float %288, float* %287, align 4, !tbaa !145
  %289 = getelementptr inbounds float, float* %10, i64 %222
  %290 = extractelement <32 x float> %226, i64 31
  store float %290, float* %289, align 4, !tbaa !145
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1
  %exitcond38 = icmp eq i64 %indvars.iv.next37, 68
  br i1 %exitcond38, label %for_end12, label %for_begin13.preheader, !prof !49

for_end12:                                        ; preds = %for_begin13.preheader
  %291 = load i32 (i32, i32, i8*)*, i32 (i32, i32, i8*)** @__TVMBackendFreeWorkspace, align 8, !tbaa !6
  %292 = tail call i32 %291(i32 1, i32 %13, i8* nonnull %28)
  %293 = add nsw i32 %26, 1
  %294 = icmp slt i32 %293, %21
  br i1 %294, label %for_body, label %for_end, !prof !5

for_body8.1:                                      ; preds = %for_body8.1, %for_end9
  %indvars.iv.1 = phi i64 [ 0, %for_end9 ], [ %indvars.iv.next.1.1, %for_body8.1 ]
  %295 = phi <32 x float> [ %88, %for_end9 ], [ %332, %for_body8.1 ]
  %296 = phi <32 x float> [ %82, %for_end9 ], [ %326, %for_body8.1 ]
  %297 = mul nuw nsw i64 %indvars.iv.1, 136
  %298 = add nsw i64 %89, %297
  %299 = getelementptr inbounds float, float* %4, i64 %298
  %300 = load float, float* %299, align 8, !tbaa !131
  %301 = insertelement <32 x float> undef, float %300, i32 0
  %302 = shufflevector <32 x float> %301, <32 x float> undef, <32 x i32> zeroinitializer
  %303 = shl i64 %indvars.iv.1, 5
  %304 = add nuw nsw i64 %36, %303
  %305 = getelementptr inbounds float, float* %7, i64 %304
  %306 = bitcast float* %305 to <32 x float>*
  %307 = load <32 x float>, <32 x float>* %306, align 64, !tbaa !139
  %308 = tail call <32 x float> @llvm.fmuladd.v32f32(<32 x float> %302, <32 x float> %307, <32 x float> %296)
  %309 = or i64 %298, 1
  %310 = getelementptr inbounds float, float* %4, i64 %309
  %311 = load float, float* %310, align 4, !tbaa !131
  %312 = insertelement <32 x float> undef, float %311, i32 0
  %313 = shufflevector <32 x float> %312, <32 x float> undef, <32 x i32> zeroinitializer
  %314 = tail call <32 x float> @llvm.fmuladd.v32f32(<32 x float> %313, <32 x float> %307, <32 x float> %295)
  %indvars.iv.next.1 = or i64 %indvars.iv.1, 1
  %315 = mul nuw nsw i64 %indvars.iv.next.1, 136
  %316 = add nsw i64 %89, %315
  %317 = getelementptr inbounds float, float* %4, i64 %316
  %318 = load float, float* %317, align 8, !tbaa !131
  %319 = insertelement <32 x float> undef, float %318, i32 0
  %320 = shufflevector <32 x float> %319, <32 x float> undef, <32 x i32> zeroinitializer
  %321 = shl i64 %indvars.iv.next.1, 5
  %322 = add nuw nsw i64 %36, %321
  %323 = getelementptr inbounds float, float* %7, i64 %322
  %324 = bitcast float* %323 to <32 x float>*
  %325 = load <32 x float>, <32 x float>* %324, align 64, !tbaa !139
  %326 = tail call <32 x float> @llvm.fmuladd.v32f32(<32 x float> %320, <32 x float> %325, <32 x float> %308)
  %327 = or i64 %316, 1
  %328 = getelementptr inbounds float, float* %4, i64 %327
  %329 = load float, float* %328, align 4, !tbaa !131
  %330 = insertelement <32 x float> undef, float %329, i32 0
  %331 = shufflevector <32 x float> %330, <32 x float> undef, <32 x i32> zeroinitializer
  %332 = tail call <32 x float> @llvm.fmuladd.v32f32(<32 x float> %331, <32 x float> %325, <32 x float> %314)
  %indvars.iv.next.1.1 = add nuw nsw i64 %indvars.iv.1, 2
  %exitcond.1.1 = icmp eq i64 %indvars.iv.next.1.1, 32
  br i1 %exitcond.1.1, label %for_end9.1, label %for_body8.1, !prof !49

for_end9.1:                                       ; preds = %for_body8.1
  %333 = add nsw i64 %50, 1183744
  br label %for_body8.2

for_body8.2:                                      ; preds = %for_body8.2, %for_end9.1
  %indvars.iv.2 = phi i64 [ 0, %for_end9.1 ], [ %indvars.iv.next.2.1, %for_body8.2 ]
  %334 = phi <32 x float> [ %332, %for_end9.1 ], [ %371, %for_body8.2 ]
  %335 = phi <32 x float> [ %326, %for_end9.1 ], [ %365, %for_body8.2 ]
  %336 = mul nuw nsw i64 %indvars.iv.2, 136
  %337 = add nuw nsw i64 %333, %336
  %338 = getelementptr inbounds float, float* %4, i64 %337
  %339 = load float, float* %338, align 8, !tbaa !131
  %340 = insertelement <32 x float> undef, float %339, i32 0
  %341 = shufflevector <32 x float> %340, <32 x float> undef, <32 x i32> zeroinitializer
  %342 = shl i64 %indvars.iv.2, 5
  %343 = add nuw nsw i64 %37, %342
  %344 = getelementptr inbounds float, float* %7, i64 %343
  %345 = bitcast float* %344 to <32 x float>*
  %346 = load <32 x float>, <32 x float>* %345, align 64, !tbaa !139
  %347 = tail call <32 x float> @llvm.fmuladd.v32f32(<32 x float> %341, <32 x float> %346, <32 x float> %335)
  %348 = or i64 %337, 1
  %349 = getelementptr inbounds float, float* %4, i64 %348
  %350 = load float, float* %349, align 4, !tbaa !131
  %351 = insertelement <32 x float> undef, float %350, i32 0
  %352 = shufflevector <32 x float> %351, <32 x float> undef, <32 x i32> zeroinitializer
  %353 = tail call <32 x float> @llvm.fmuladd.v32f32(<32 x float> %352, <32 x float> %346, <32 x float> %334)
  %indvars.iv.next.2 = or i64 %indvars.iv.2, 1
  %354 = mul nuw nsw i64 %indvars.iv.next.2, 136
  %355 = add nuw nsw i64 %333, %354
  %356 = getelementptr inbounds float, float* %4, i64 %355
  %357 = load float, float* %356, align 8, !tbaa !131
  %358 = insertelement <32 x float> undef, float %357, i32 0
  %359 = shufflevector <32 x float> %358, <32 x float> undef, <32 x i32> zeroinitializer
  %360 = shl i64 %indvars.iv.next.2, 5
  %361 = add nuw nsw i64 %37, %360
  %362 = getelementptr inbounds float, float* %7, i64 %361
  %363 = bitcast float* %362 to <32 x float>*
  %364 = load <32 x float>, <32 x float>* %363, align 64, !tbaa !139
  %365 = tail call <32 x float> @llvm.fmuladd.v32f32(<32 x float> %359, <32 x float> %364, <32 x float> %347)
  %366 = or i64 %355, 1
  %367 = getelementptr inbounds float, float* %4, i64 %366
  %368 = load float, float* %367, align 4, !tbaa !131
  %369 = insertelement <32 x float> undef, float %368, i32 0
  %370 = shufflevector <32 x float> %369, <32 x float> undef, <32 x i32> zeroinitializer
  %371 = tail call <32 x float> @llvm.fmuladd.v32f32(<32 x float> %370, <32 x float> %364, <32 x float> %353)
  %indvars.iv.next.2.1 = add nuw nsw i64 %indvars.iv.2, 2
  %exitcond.2.1 = icmp eq i64 %indvars.iv.next.2.1, 32
  br i1 %exitcond.2.1, label %for_end9.2, label %for_body8.2, !prof !49

for_end9.2:                                       ; preds = %for_body8.2
  %372 = add nsw i64 %50, 1775616
  br label %for_body8.3

for_body8.3:                                      ; preds = %for_body8.3, %for_end9.2
  %indvars.iv.3 = phi i64 [ 0, %for_end9.2 ], [ %indvars.iv.next.3.1, %for_body8.3 ]
  %373 = phi <32 x float> [ %371, %for_end9.2 ], [ %410, %for_body8.3 ]
  %374 = phi <32 x float> [ %365, %for_end9.2 ], [ %404, %for_body8.3 ]
  %375 = mul nuw nsw i64 %indvars.iv.3, 136
  %376 = add nuw nsw i64 %372, %375
  %377 = getelementptr inbounds float, float* %4, i64 %376
  %378 = load float, float* %377, align 8, !tbaa !131
  %379 = insertelement <32 x float> undef, float %378, i32 0
  %380 = shufflevector <32 x float> %379, <32 x float> undef, <32 x i32> zeroinitializer
  %381 = shl i64 %indvars.iv.3, 5
  %382 = add nuw nsw i64 %38, %381
  %383 = getelementptr inbounds float, float* %7, i64 %382
  %384 = bitcast float* %383 to <32 x float>*
  %385 = load <32 x float>, <32 x float>* %384, align 64, !tbaa !139
  %386 = tail call <32 x float> @llvm.fmuladd.v32f32(<32 x float> %380, <32 x float> %385, <32 x float> %374)
  %387 = or i64 %376, 1
  %388 = getelementptr inbounds float, float* %4, i64 %387
  %389 = load float, float* %388, align 4, !tbaa !131
  %390 = insertelement <32 x float> undef, float %389, i32 0
  %391 = shufflevector <32 x float> %390, <32 x float> undef, <32 x i32> zeroinitializer
  %392 = tail call <32 x float> @llvm.fmuladd.v32f32(<32 x float> %391, <32 x float> %385, <32 x float> %373)
  %indvars.iv.next.3 = or i64 %indvars.iv.3, 1
  %393 = mul nuw nsw i64 %indvars.iv.next.3, 136
  %394 = add nuw nsw i64 %372, %393
  %395 = getelementptr inbounds float, float* %4, i64 %394
  %396 = load float, float* %395, align 8, !tbaa !131
  %397 = insertelement <32 x float> undef, float %396, i32 0
  %398 = shufflevector <32 x float> %397, <32 x float> undef, <32 x i32> zeroinitializer
  %399 = shl i64 %indvars.iv.next.3, 5
  %400 = add nuw nsw i64 %38, %399
  %401 = getelementptr inbounds float, float* %7, i64 %400
  %402 = bitcast float* %401 to <32 x float>*
  %403 = load <32 x float>, <32 x float>* %402, align 64, !tbaa !139
  %404 = tail call <32 x float> @llvm.fmuladd.v32f32(<32 x float> %398, <32 x float> %403, <32 x float> %386)
  %405 = or i64 %394, 1
  %406 = getelementptr inbounds float, float* %4, i64 %405
  %407 = load float, float* %406, align 4, !tbaa !131
  %408 = insertelement <32 x float> undef, float %407, i32 0
  %409 = shufflevector <32 x float> %408, <32 x float> undef, <32 x i32> zeroinitializer
  %410 = tail call <32 x float> @llvm.fmuladd.v32f32(<32 x float> %409, <32 x float> %403, <32 x float> %392)
  %indvars.iv.next.3.1 = add nuw nsw i64 %indvars.iv.3, 2
  %exitcond.3.1 = icmp eq i64 %indvars.iv.next.3.1, 32
  br i1 %exitcond.3.1, label %for_end9.3, label %for_body8.3, !prof !49

for_end9.3:                                       ; preds = %for_body8.3
  store <32 x float> %404, <32 x float>* %45, align 64, !tbaa !142
  store <32 x float> %410, <32 x float>* %48, align 64, !tbaa !142
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1
  %exitcond32 = icmp eq i64 %indvars.iv.next31, 68
  br i1 %exitcond32, label %for_begin10.preheader, label %for_body2, !prof !49
}

; Function Attrs: nounwind readnone speculatable
declare <32 x float> @llvm.fmuladd.v32f32(<32 x float>, <32 x float>, <32 x float>) #2
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
!10 = !{!"0x25d04b0.w1.b0", !11, i64 0}
!11 = !{!"0x25d04b0.w2.b0", !12, i64 0}
!12 = !{!"0x25d04b0.w4.b0", !13, i64 0}
!13 = !{!"0x25d04b0.w8.b0", !14, i64 0}
!14 = !{!"0x25d04b0.w16.b0", !15, i64 0}
!15 = !{!"0x25d04b0.w32.b0", !16, i64 0}
!16 = !{!"0x25d04b0.w64.b0", !17, i64 0}
!17 = !{!"0x25d04b0.w128.b0", !18, i64 0}
!18 = !{!"0x25d04b0.w256.b0", !19, i64 0}
!19 = !{!"0x25d04b0.w512.b0", !20, i64 0}
!20 = !{!"0x25d04b0.w1024.b0", !21, i64 0}
!21 = !{!"int32", !22, i64 0}
!22 = !{!"0x25d04b0", !8, i64 0}
!23 = !{!24, !24, i64 0}
!24 = !{!"0x25d04b0.w1.b2", !25, i64 0}
!25 = !{!"0x25d04b0.w2.b2", !12, i64 0}
!26 = !{!27, !27, i64 0}
!27 = !{!"0x25d04b0.w1.b1", !11, i64 0}
!28 = !{!29, !29, i64 0}
!29 = !{!"0x25f0b90.w1.b0", !30, i64 0}
!30 = !{!"0x25f0b90.w2.b0", !31, i64 0}
!31 = !{!"0x25f0b90.w4.b0", !32, i64 0}
!32 = !{!"0x25f0b90.w8.b0", !33, i64 0}
!33 = !{!"0x25f0b90.w16.b0", !34, i64 0}
!34 = !{!"0x25f0b90.w32.b0", !35, i64 0}
!35 = !{!"0x25f0b90.w64.b0", !36, i64 0}
!36 = !{!"0x25f0b90.w128.b0", !37, i64 0}
!37 = !{!"0x25f0b90.w256.b0", !38, i64 0}
!38 = !{!"0x25f0b90.w512.b0", !39, i64 0}
!39 = !{!"0x25f0b90.w1024.b0", !40, i64 0}
!40 = !{!"int64", !41, i64 0}
!41 = !{!"0x25f0b90", !8, i64 0}
!42 = !{!43, !43, i64 0}
!43 = !{!"0x25f0b90.w1.b1", !30, i64 0}
!44 = !{!45, !45, i64 0}
!45 = !{!"0x25f0b90.w1.b2", !46, i64 0}
!46 = !{!"0x25f0b90.w2.b2", !31, i64 0}
!47 = !{!48, !48, i64 0}
!48 = !{!"0x25f0b90.w1.b3", !46, i64 0}
!49 = !{!"branch_weights", i32 1, i32 1048576}
!50 = !{!51, !51, i64 0}
!51 = !{!"0x25df4f0.w4.b0", !52, i64 0}
!52 = !{!"0x25df4f0.w8.b0", !53, i64 0}
!53 = !{!"0x25df4f0.w16.b0", !54, i64 0}
!54 = !{!"0x25df4f0.w32.b0", !55, i64 0}
!55 = !{!"0x25df4f0.w64.b0", !56, i64 0}
!56 = !{!"0x25df4f0.w128.b0", !57, i64 0}
!57 = !{!"0x25df4f0.w256.b0", !58, i64 0}
!58 = !{!"0x25df4f0.w512.b0", !59, i64 0}
!59 = !{!"0x25df4f0.w1024.b0", !60, i64 0}
!60 = !{!"int64", !61, i64 0}
!61 = !{!"0x25df4f0", !8, i64 0}
!62 = !{!63, !63, i64 0}
!63 = !{!"0x248aff0.w1.b0", !64, i64 0}
!64 = !{!"0x248aff0.w2.b0", !65, i64 0}
!65 = !{!"0x248aff0.w4.b0", !66, i64 0}
!66 = !{!"0x248aff0.w8.b0", !67, i64 0}
!67 = !{!"0x248aff0.w16.b0", !68, i64 0}
!68 = !{!"0x248aff0.w32.b0", !69, i64 0}
!69 = !{!"0x248aff0.w64.b0", !70, i64 0}
!70 = !{!"0x248aff0.w128.b0", !71, i64 0}
!71 = !{!"0x248aff0.w256.b0", !72, i64 0}
!72 = !{!"0x248aff0.w512.b0", !73, i64 0}
!73 = !{!"0x248aff0.w1024.b0", !74, i64 0}
!74 = !{!"int64", !75, i64 0}
!75 = !{!"0x248aff0", !8, i64 0}
!76 = !{!77, !77, i64 0}
!77 = !{!"0x248aff0.w1.b1", !64, i64 0}
!78 = !{!79, !79, i64 0}
!79 = !{!"0x248aff0.w1.b2", !80, i64 0}
!80 = !{!"0x248aff0.w2.b2", !65, i64 0}
!81 = !{!82, !82, i64 0}
!82 = !{!"0x248aff0.w1.b3", !80, i64 0}
!83 = !{!84, !84, i64 0}
!84 = !{!"0x248d3a0.w4.b0", !85, i64 0}
!85 = !{!"0x248d3a0.w8.b0", !86, i64 0}
!86 = !{!"0x248d3a0.w16.b0", !87, i64 0}
!87 = !{!"0x248d3a0.w32.b0", !88, i64 0}
!88 = !{!"0x248d3a0.w64.b0", !89, i64 0}
!89 = !{!"0x248d3a0.w128.b0", !90, i64 0}
!90 = !{!"0x248d3a0.w256.b0", !91, i64 0}
!91 = !{!"0x248d3a0.w512.b0", !92, i64 0}
!92 = !{!"0x248d3a0.w1024.b0", !93, i64 0}
!93 = !{!"int64", !94, i64 0}
!94 = !{!"0x248d3a0", !8, i64 0}
!95 = !{!96, !96, i64 0}
!96 = !{!"0x25b2240.w1.b0", !97, i64 0}
!97 = !{!"0x25b2240.w2.b0", !98, i64 0}
!98 = !{!"0x25b2240.w4.b0", !99, i64 0}
!99 = !{!"0x25b2240.w8.b0", !100, i64 0}
!100 = !{!"0x25b2240.w16.b0", !101, i64 0}
!101 = !{!"0x25b2240.w32.b0", !102, i64 0}
!102 = !{!"0x25b2240.w64.b0", !103, i64 0}
!103 = !{!"0x25b2240.w128.b0", !104, i64 0}
!104 = !{!"0x25b2240.w256.b0", !105, i64 0}
!105 = !{!"0x25b2240.w512.b0", !106, i64 0}
!106 = !{!"0x25b2240.w1024.b0", !107, i64 0}
!107 = !{!"int64", !108, i64 0}
!108 = !{!"0x25b2240", !8, i64 0}
!109 = !{!110, !110, i64 0}
!110 = !{!"0x25b2240.w1.b1", !97, i64 0}
!111 = !{!112, !112, i64 0}
!112 = !{!"0x25b2240.w1.b2", !113, i64 0}
!113 = !{!"0x25b2240.w2.b2", !98, i64 0}
!114 = !{!115, !115, i64 0}
!115 = !{!"0x25b2240.w1.b3", !113, i64 0}
!116 = !{!117, !117, i64 0}
!117 = !{!"0x24fdbd0.w4.b0", !118, i64 0}
!118 = !{!"0x24fdbd0.w8.b0", !119, i64 0}
!119 = !{!"0x24fdbd0.w16.b0", !120, i64 0}
!120 = !{!"0x24fdbd0.w32.b0", !121, i64 0}
!121 = !{!"0x24fdbd0.w64.b0", !122, i64 0}
!122 = !{!"0x24fdbd0.w128.b0", !123, i64 0}
!123 = !{!"0x24fdbd0.w256.b0", !124, i64 0}
!124 = !{!"0x24fdbd0.w512.b0", !125, i64 0}
!125 = !{!"0x24fdbd0.w1024.b0", !126, i64 0}
!126 = !{!"int64", !127, i64 0}
!127 = !{!"0x24fdbd0", !8, i64 0}
!128 = !{!129, !129, i64 0}
!129 = !{!"float32", !130, i64 0}
!130 = !{!"0x2480f50", !8, i64 0}
!131 = !{!132, !132, i64 0}
!132 = !{!"float32", !133, i64 0}
!133 = !{!"0x247fad0", !8, i64 0}
!134 = distinct !{!134, !135}
!135 = !{!"llvm.loop.isvectorized", i32 1}
!136 = !{!137, !137, i64 0}
!137 = !{!"float32", !138, i64 0}
!138 = !{!"0x2488ce0", !8, i64 0}
!139 = !{!140, !140, i64 0}
!140 = !{!"float32", !141, i64 0}
!141 = !{!"0x25b2000", !8, i64 0}
!142 = !{!143, !143, i64 0}
!143 = !{!"float32", !144, i64 0}
!144 = !{!"0x25b17a0", !8, i64 0}
!145 = !{!146, !146, i64 0}
!146 = !{!"float32", !147, i64 0}
!147 = !{!"0x25d1890", !8, i64 0}
