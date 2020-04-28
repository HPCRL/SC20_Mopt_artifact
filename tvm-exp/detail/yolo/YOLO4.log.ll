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
@.str.9 = private constant [96 x i8] c"Assert fail: (70 == int32(arg0.shape[2])), Argument arg0.shape[2] has an unsatisfied constraint\00", align 1
@.str.10 = private constant [96 x i8] c"Assert fail: (70 == int32(arg0.shape[3])), Argument arg0.shape[3] has an unsatisfied constraint\00", align 1
@.str.11 = private constant [201 x i8] c"Assert fail: ((((1 == int32(arg0.strides[3])) && (70 == int32(arg0.strides[2]))) && (4900 == int32(arg0.strides[1]))) && (627200 == int32(arg0.strides[0]))), arg0.strides: expected to be compact array\00", align 1
@.str.12 = private constant [112 x i8] c"Assert fail: ((uint64)0 == tvm_struct_get(arg0, 0, 8)), Argument arg0.byte_offset has an unsatisfied constraint\00", align 1
@.str.13 = private constant [81 x i8] c"Assert fail: (4 == tvm_struct_get(arg1, 0, 4)), arg1.ndim is expected to equal 4\00", align 1
@.str.14 = private constant [186 x i8] c"Assert fail: (((tvm_struct_get(arg1, 0, 5) == (uint8)2) && (tvm_struct_get(arg1, 0, 6) == (uint8)32)) && (tvm_struct_get(arg1, 0, 7) == (uint16)1)), arg1.dtype is expected to be float32\00", align 1
@.str.15 = private constant [97 x i8] c"Assert fail: (256 == int32(arg1.shape[0])), Argument arg1.shape[0] has an unsatisfied constraint\00", align 1
@.str.16 = private constant [97 x i8] c"Assert fail: (128 == int32(arg1.shape[1])), Argument arg1.shape[1] has an unsatisfied constraint\00", align 1
@.str.17 = private constant [95 x i8] c"Assert fail: (3 == int32(arg1.shape[2])), Argument arg1.shape[2] has an unsatisfied constraint\00", align 1
@.str.18 = private constant [95 x i8] c"Assert fail: (3 == int32(arg1.shape[3])), Argument arg1.shape[3] has an unsatisfied constraint\00", align 1
@.str.19 = private constant [195 x i8] c"Assert fail: ((((1 == int32(arg1.strides[3])) && (3 == int32(arg1.strides[2]))) && (9 == int32(arg1.strides[1]))) && (1152 == int32(arg1.strides[0]))), arg1.strides: expected to be compact array\00", align 1
@.str.20 = private constant [112 x i8] c"Assert fail: ((uint64)0 == tvm_struct_get(arg1, 0, 8)), Argument arg1.byte_offset has an unsatisfied constraint\00", align 1
@.str.21 = private constant [105 x i8] c"Assert fail: (1 == tvm_struct_get(arg1, 0, 10)), Argument arg1.device_type has an unsatisfied constraint\00", align 1
@.str.22 = private constant [107 x i8] c"Assert fail: (dev_id == tvm_struct_get(arg1, 0, 9)), Argument arg1.device_id has an unsatisfied constraint\00", align 1
@.str.23 = private constant [81 x i8] c"Assert fail: (4 == tvm_struct_get(arg2, 0, 4)), arg2.ndim is expected to equal 4\00", align 1
@.str.24 = private constant [186 x i8] c"Assert fail: (((tvm_struct_get(arg2, 0, 5) == (uint8)2) && (tvm_struct_get(arg2, 0, 6) == (uint8)32)) && (tvm_struct_get(arg2, 0, 7) == (uint16)1)), arg2.dtype is expected to be float32\00", align 1
@.str.25 = private constant [95 x i8] c"Assert fail: (1 == int32(arg2.shape[0])), Argument arg2.shape[0] has an unsatisfied constraint\00", align 1
@.str.26 = private constant [97 x i8] c"Assert fail: (256 == int32(arg2.shape[1])), Argument arg2.shape[1] has an unsatisfied constraint\00", align 1
@.str.27 = private constant [96 x i8] c"Assert fail: (68 == int32(arg2.shape[2])), Argument arg2.shape[2] has an unsatisfied constraint\00", align 1
@.str.28 = private constant [96 x i8] c"Assert fail: (68 == int32(arg2.shape[3])), Argument arg2.shape[3] has an unsatisfied constraint\00", align 1
@.str.29 = private constant [202 x i8] c"Assert fail: ((((1 == int32(arg2.strides[3])) && (68 == int32(arg2.strides[2]))) && (4624 == int32(arg2.strides[1]))) && (1183744 == int32(arg2.strides[0]))), arg2.strides: expected to be compact array\00", align 1
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
  %76 = icmp eq i32 %75, 70
  br i1 %76, label %assert_end18, label %assert_fail17, !prof !5

assert_fail17:                                    ; preds = %assert_end16
  %77 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %77(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.9, i64 0, i64 0))
  ret i32 -1

assert_end18:                                     ; preds = %assert_end16
  %78 = getelementptr inbounds i64, i64* %21, i64 3
  %79 = load i64, i64* %78, align 8, !tbaa !47
  %80 = trunc i64 %79 to i32
  %81 = icmp eq i32 %80, 70
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
  %87 = icmp eq <4 x i32> %86, <i32 627200, i32 4900, i32 70, i32 1>
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
  tail call void %92(i8* getelementptr inbounds ([201 x i8], [201 x i8]* @.str.11, i64 0, i64 0))
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
  %112 = icmp eq i32 %111, 256
  br i1 %112, label %assert_end30, label %assert_fail29, !prof !5

assert_fail29:                                    ; preds = %assert_end28
  %113 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %113(i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.15, i64 0, i64 0))
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
  %122 = icmp eq i32 %121, 3
  br i1 %122, label %assert_end34, label %assert_fail33, !prof !5

assert_fail33:                                    ; preds = %assert_end32
  %123 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %123(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.17, i64 0, i64 0))
  ret i32 -1

assert_end34:                                     ; preds = %assert_end32
  %124 = getelementptr inbounds i64, i64* %31, i64 3
  %125 = load i64, i64* %124, align 8, !tbaa !81
  %126 = trunc i64 %125 to i32
  %127 = icmp eq i32 %126, 3
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
  %133 = icmp eq <4 x i32> %132, <i32 1152, i32 9, i32 3, i32 1>
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
  tail call void %138(i8* getelementptr inbounds ([195 x i8], [195 x i8]* @.str.19, i64 0, i64 0))
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
  %171 = icmp eq i32 %170, 256
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
  %187 = icmp eq <4 x i32> %186, <i32 1183744, i32 4624, i32 68, i32 1>
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
  tail call void %192(i8* getelementptr inbounds ([202 x i8], [202 x i8]* @.str.29, i64 0, i64 0))
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
  %5 = tail call i8* %4(i32 1, i32 %3, i64 2508800, i32 2, i32 32)
  %6 = load i8* (i32, i32, i64, i32, i32)*, i8* (i32, i32, i64, i32, i32)** @__TVMBackendAllocWorkspace, align 8, !tbaa !6
  %7 = tail call i8* %6(i32 1, i32 %3, i64 1179648, i32 2, i32 32)
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
  %10 = add nsw i32 %9, 69
  %11 = sdiv i32 %10, %9
  %12 = add nsw i32 %0, 1
  %13 = mul nsw i32 %11, %12
  %14 = icmp slt i32 %13, 70
  %15 = select i1 %14, i32 %13, i32 70
  %16 = mul nsw i32 %11, %0
  %17 = icmp slt i32 %16, 70
  %18 = select i1 %17, i32 %16, i32 70
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
  %24 = mul nsw i64 %indvars.iv11, 8960
  %25 = mul nsw i64 %indvars.iv11, 70
  br label %for_begin4.preheader

for_end:                                          ; preds = %for_end3, %entry
  ret i32 0

for_begin4.preheader:                             ; preds = %for_begin4.preheader, %for_begin1.preheader
  %indvar7 = phi i64 [ 0, %for_begin1.preheader ], [ %indvar.next8, %for_begin4.preheader ]
  %26 = mul nuw nsw i64 %indvar7, 70
  %27 = add nsw i64 %26, %24
  %28 = mul nuw nsw i64 %indvar7, 4900
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
  %104 = add nsw i64 %27, 68
  %105 = add nsw i64 %29, 68
  %106 = getelementptr inbounds float, float* %7, i64 %105
  %107 = bitcast float* %106 to i32*
  %108 = load i32, i32* %107, align 4, !tbaa !128
  %109 = getelementptr inbounds float, float* %4, i64 %104
  %110 = bitcast float* %109 to i32*
  store i32 %108, i32* %110, align 4, !tbaa !131
  %111 = add nsw i64 %27, 69
  %112 = add nsw i64 %29, 69
  %113 = getelementptr inbounds float, float* %7, i64 %112
  %114 = bitcast float* %113 to i32*
  %115 = load i32, i32* %114, align 4, !tbaa !128
  %116 = getelementptr inbounds float, float* %4, i64 %111
  %117 = bitcast float* %116 to i32*
  store i32 %115, i32* %117, align 4, !tbaa !131
  %indvar.next8 = add nuw nsw i64 %indvar7, 1
  %exitcond10 = icmp eq i64 %indvar.next8, 128
  br i1 %exitcond10, label %for_end3, label %for_begin4.preheader, !prof !49

for_end3:                                         ; preds = %for_begin4.preheader
  %indvars.iv.next12 = add nsw i64 %indvars.iv11, 1
  %118 = icmp slt i64 %indvars.iv.next12, %23
  br i1 %118, label %for_begin1.preheader, label %for_end, !prof !5
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
  %10 = add nsw i32 %9, 47
  %11 = sdiv i32 %10, %9
  %12 = add nsw i32 %0, 1
  %13 = mul nsw i32 %11, %12
  %14 = icmp slt i32 %13, 48
  %15 = select i1 %14, i32 %13, i32 48
  %16 = mul nsw i32 %11, %0
  %17 = icmp slt i32 %16, 48
  %18 = select i1 %17, i32 %16, i32 48
  %19 = icmp slt i32 %18, %15
  br i1 %19, label %for_begin1.preheader.preheader, label %for_end, !prof !5

for_begin1.preheader.preheader:                   ; preds = %entry
  %20 = add i32 %18, 1
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %21, -1
  %23 = sext i32 %15 to i64
  br label %for_begin1.preheader

for_begin1.preheader:                             ; preds = %for_begin1.preheader.preheader, %for_end6.2
  %indvars.iv10 = phi i64 [ %22, %for_begin1.preheader.preheader ], [ %indvars.iv.next11, %for_end6.2 ]
  %24 = mul nsw i64 %indvars.iv10, 6144
  %25 = trunc i64 %indvars.iv10 to i32
  %26 = srem i32 %25, 3
  %27 = mul nsw i32 %26, 3
  %28 = sdiv i32 %25, 3
  %29 = mul nsw i32 %28, 18432
  %30 = add i32 %27, %29
  br label %for_body5

for_end:                                          ; preds = %for_end6.2, %entry
  ret i32 0

for_body5:                                        ; preds = %for_body5, %for_begin1.preheader
  %indvars.iv = phi i64 [ 0, %for_begin1.preheader ], [ %indvars.iv.next, %for_body5 ]
  %31 = shl i64 %indvars.iv, 4
  %32 = add nsw i64 %24, %31
  %33 = trunc i64 %indvars.iv to i32
  %34 = mul i32 %33, 9
  %35 = add i32 %30, %34
  %36 = add nsw i32 %35, 1152
  %37 = add nsw i32 %35, 2304
  %38 = add nsw i32 %35, 3456
  %39 = add nsw i32 %35, 4608
  %40 = add nsw i32 %35, 5760
  %41 = add nsw i32 %35, 6912
  %42 = add nsw i32 %35, 8064
  %43 = add nsw i32 %35, 9216
  %44 = add nsw i32 %35, 10368
  %45 = add nsw i32 %35, 11520
  %46 = add nsw i32 %35, 12672
  %47 = add nsw i32 %35, 13824
  %48 = add nsw i32 %35, 14976
  %49 = add nsw i32 %35, 16128
  %50 = add nsw i32 %35, 17280
  %51 = sext i32 %35 to i64
  %52 = getelementptr inbounds float, float* %7, i64 %51
  %53 = load float, float* %52, align 4, !tbaa !134
  %54 = insertelement <16 x float> undef, float %53, i32 0
  %55 = sext i32 %36 to i64
  %56 = getelementptr inbounds float, float* %7, i64 %55
  %57 = load float, float* %56, align 4, !tbaa !134
  %58 = insertelement <16 x float> %54, float %57, i32 1
  %59 = sext i32 %37 to i64
  %60 = getelementptr inbounds float, float* %7, i64 %59
  %61 = load float, float* %60, align 4, !tbaa !134
  %62 = insertelement <16 x float> %58, float %61, i32 2
  %63 = sext i32 %38 to i64
  %64 = getelementptr inbounds float, float* %7, i64 %63
  %65 = load float, float* %64, align 4, !tbaa !134
  %66 = insertelement <16 x float> %62, float %65, i32 3
  %67 = sext i32 %39 to i64
  %68 = getelementptr inbounds float, float* %7, i64 %67
  %69 = load float, float* %68, align 4, !tbaa !134
  %70 = insertelement <16 x float> %66, float %69, i32 4
  %71 = sext i32 %40 to i64
  %72 = getelementptr inbounds float, float* %7, i64 %71
  %73 = load float, float* %72, align 4, !tbaa !134
  %74 = insertelement <16 x float> %70, float %73, i32 5
  %75 = sext i32 %41 to i64
  %76 = getelementptr inbounds float, float* %7, i64 %75
  %77 = load float, float* %76, align 4, !tbaa !134
  %78 = insertelement <16 x float> %74, float %77, i32 6
  %79 = sext i32 %42 to i64
  %80 = getelementptr inbounds float, float* %7, i64 %79
  %81 = load float, float* %80, align 4, !tbaa !134
  %82 = insertelement <16 x float> %78, float %81, i32 7
  %83 = sext i32 %43 to i64
  %84 = getelementptr inbounds float, float* %7, i64 %83
  %85 = load float, float* %84, align 4, !tbaa !134
  %86 = insertelement <16 x float> %82, float %85, i32 8
  %87 = sext i32 %44 to i64
  %88 = getelementptr inbounds float, float* %7, i64 %87
  %89 = load float, float* %88, align 4, !tbaa !134
  %90 = insertelement <16 x float> %86, float %89, i32 9
  %91 = sext i32 %45 to i64
  %92 = getelementptr inbounds float, float* %7, i64 %91
  %93 = load float, float* %92, align 4, !tbaa !134
  %94 = insertelement <16 x float> %90, float %93, i32 10
  %95 = sext i32 %46 to i64
  %96 = getelementptr inbounds float, float* %7, i64 %95
  %97 = load float, float* %96, align 4, !tbaa !134
  %98 = insertelement <16 x float> %94, float %97, i32 11
  %99 = sext i32 %47 to i64
  %100 = getelementptr inbounds float, float* %7, i64 %99
  %101 = load float, float* %100, align 4, !tbaa !134
  %102 = insertelement <16 x float> %98, float %101, i32 12
  %103 = sext i32 %48 to i64
  %104 = getelementptr inbounds float, float* %7, i64 %103
  %105 = load float, float* %104, align 4, !tbaa !134
  %106 = insertelement <16 x float> %102, float %105, i32 13
  %107 = sext i32 %49 to i64
  %108 = getelementptr inbounds float, float* %7, i64 %107
  %109 = load float, float* %108, align 4, !tbaa !134
  %110 = insertelement <16 x float> %106, float %109, i32 14
  %111 = sext i32 %50 to i64
  %112 = getelementptr inbounds float, float* %7, i64 %111
  %113 = load float, float* %112, align 4, !tbaa !134
  %114 = insertelement <16 x float> %110, float %113, i32 15
  %115 = getelementptr inbounds float, float* %4, i64 %32
  %116 = bitcast float* %115 to <16 x float>*
  store <16 x float> %114, <16 x float>* %116, align 64, !tbaa !137
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 128
  br i1 %exitcond, label %for_end6, label %for_body5, !prof !49

for_end6:                                         ; preds = %for_body5
  %117 = add nsw i64 %24, 2048
  %118 = add i32 %30, 1
  br label %for_body5.1

for_body5.1:                                      ; preds = %for_body5.1, %for_end6
  %indvars.iv.1 = phi i64 [ 0, %for_end6 ], [ %indvars.iv.next.1, %for_body5.1 ]
  %119 = shl i64 %indvars.iv.1, 4
  %120 = add nsw i64 %117, %119
  %121 = trunc i64 %indvars.iv.1 to i32
  %122 = mul i32 %121, 9
  %123 = add i32 %118, %122
  %124 = add nsw i32 %123, 1152
  %125 = add nsw i32 %123, 2304
  %126 = add nsw i32 %123, 3456
  %127 = add nsw i32 %123, 4608
  %128 = add nsw i32 %123, 5760
  %129 = add nsw i32 %123, 6912
  %130 = add nsw i32 %123, 8064
  %131 = add nsw i32 %123, 9216
  %132 = add nsw i32 %123, 10368
  %133 = add nsw i32 %123, 11520
  %134 = add nsw i32 %123, 12672
  %135 = add nsw i32 %123, 13824
  %136 = add nsw i32 %123, 14976
  %137 = add nsw i32 %123, 16128
  %138 = add nsw i32 %123, 17280
  %139 = sext i32 %123 to i64
  %140 = getelementptr inbounds float, float* %7, i64 %139
  %141 = load float, float* %140, align 4, !tbaa !134
  %142 = insertelement <16 x float> undef, float %141, i32 0
  %143 = sext i32 %124 to i64
  %144 = getelementptr inbounds float, float* %7, i64 %143
  %145 = load float, float* %144, align 4, !tbaa !134
  %146 = insertelement <16 x float> %142, float %145, i32 1
  %147 = sext i32 %125 to i64
  %148 = getelementptr inbounds float, float* %7, i64 %147
  %149 = load float, float* %148, align 4, !tbaa !134
  %150 = insertelement <16 x float> %146, float %149, i32 2
  %151 = sext i32 %126 to i64
  %152 = getelementptr inbounds float, float* %7, i64 %151
  %153 = load float, float* %152, align 4, !tbaa !134
  %154 = insertelement <16 x float> %150, float %153, i32 3
  %155 = sext i32 %127 to i64
  %156 = getelementptr inbounds float, float* %7, i64 %155
  %157 = load float, float* %156, align 4, !tbaa !134
  %158 = insertelement <16 x float> %154, float %157, i32 4
  %159 = sext i32 %128 to i64
  %160 = getelementptr inbounds float, float* %7, i64 %159
  %161 = load float, float* %160, align 4, !tbaa !134
  %162 = insertelement <16 x float> %158, float %161, i32 5
  %163 = sext i32 %129 to i64
  %164 = getelementptr inbounds float, float* %7, i64 %163
  %165 = load float, float* %164, align 4, !tbaa !134
  %166 = insertelement <16 x float> %162, float %165, i32 6
  %167 = sext i32 %130 to i64
  %168 = getelementptr inbounds float, float* %7, i64 %167
  %169 = load float, float* %168, align 4, !tbaa !134
  %170 = insertelement <16 x float> %166, float %169, i32 7
  %171 = sext i32 %131 to i64
  %172 = getelementptr inbounds float, float* %7, i64 %171
  %173 = load float, float* %172, align 4, !tbaa !134
  %174 = insertelement <16 x float> %170, float %173, i32 8
  %175 = sext i32 %132 to i64
  %176 = getelementptr inbounds float, float* %7, i64 %175
  %177 = load float, float* %176, align 4, !tbaa !134
  %178 = insertelement <16 x float> %174, float %177, i32 9
  %179 = sext i32 %133 to i64
  %180 = getelementptr inbounds float, float* %7, i64 %179
  %181 = load float, float* %180, align 4, !tbaa !134
  %182 = insertelement <16 x float> %178, float %181, i32 10
  %183 = sext i32 %134 to i64
  %184 = getelementptr inbounds float, float* %7, i64 %183
  %185 = load float, float* %184, align 4, !tbaa !134
  %186 = insertelement <16 x float> %182, float %185, i32 11
  %187 = sext i32 %135 to i64
  %188 = getelementptr inbounds float, float* %7, i64 %187
  %189 = load float, float* %188, align 4, !tbaa !134
  %190 = insertelement <16 x float> %186, float %189, i32 12
  %191 = sext i32 %136 to i64
  %192 = getelementptr inbounds float, float* %7, i64 %191
  %193 = load float, float* %192, align 4, !tbaa !134
  %194 = insertelement <16 x float> %190, float %193, i32 13
  %195 = sext i32 %137 to i64
  %196 = getelementptr inbounds float, float* %7, i64 %195
  %197 = load float, float* %196, align 4, !tbaa !134
  %198 = insertelement <16 x float> %194, float %197, i32 14
  %199 = sext i32 %138 to i64
  %200 = getelementptr inbounds float, float* %7, i64 %199
  %201 = load float, float* %200, align 4, !tbaa !134
  %202 = insertelement <16 x float> %198, float %201, i32 15
  %203 = getelementptr inbounds float, float* %4, i64 %120
  %204 = bitcast float* %203 to <16 x float>*
  store <16 x float> %202, <16 x float>* %204, align 64, !tbaa !137
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1
  %exitcond.1 = icmp eq i64 %indvars.iv.next.1, 128
  br i1 %exitcond.1, label %for_end6.1, label %for_body5.1, !prof !49

for_end6.1:                                       ; preds = %for_body5.1
  %205 = add nsw i64 %24, 4096
  %206 = add i32 %30, 2
  br label %for_body5.2

for_body5.2:                                      ; preds = %for_body5.2, %for_end6.1
  %indvars.iv.2 = phi i64 [ 0, %for_end6.1 ], [ %indvars.iv.next.2, %for_body5.2 ]
  %207 = shl i64 %indvars.iv.2, 4
  %208 = add nsw i64 %205, %207
  %209 = trunc i64 %indvars.iv.2 to i32
  %210 = mul i32 %209, 9
  %211 = add i32 %206, %210
  %212 = add nsw i32 %211, 1152
  %213 = add nsw i32 %211, 2304
  %214 = add nsw i32 %211, 3456
  %215 = add nsw i32 %211, 4608
  %216 = add nsw i32 %211, 5760
  %217 = add nsw i32 %211, 6912
  %218 = add nsw i32 %211, 8064
  %219 = add nsw i32 %211, 9216
  %220 = add nsw i32 %211, 10368
  %221 = add nsw i32 %211, 11520
  %222 = add nsw i32 %211, 12672
  %223 = add nsw i32 %211, 13824
  %224 = add nsw i32 %211, 14976
  %225 = add nsw i32 %211, 16128
  %226 = add nsw i32 %211, 17280
  %227 = sext i32 %211 to i64
  %228 = getelementptr inbounds float, float* %7, i64 %227
  %229 = load float, float* %228, align 4, !tbaa !134
  %230 = insertelement <16 x float> undef, float %229, i32 0
  %231 = sext i32 %212 to i64
  %232 = getelementptr inbounds float, float* %7, i64 %231
  %233 = load float, float* %232, align 4, !tbaa !134
  %234 = insertelement <16 x float> %230, float %233, i32 1
  %235 = sext i32 %213 to i64
  %236 = getelementptr inbounds float, float* %7, i64 %235
  %237 = load float, float* %236, align 4, !tbaa !134
  %238 = insertelement <16 x float> %234, float %237, i32 2
  %239 = sext i32 %214 to i64
  %240 = getelementptr inbounds float, float* %7, i64 %239
  %241 = load float, float* %240, align 4, !tbaa !134
  %242 = insertelement <16 x float> %238, float %241, i32 3
  %243 = sext i32 %215 to i64
  %244 = getelementptr inbounds float, float* %7, i64 %243
  %245 = load float, float* %244, align 4, !tbaa !134
  %246 = insertelement <16 x float> %242, float %245, i32 4
  %247 = sext i32 %216 to i64
  %248 = getelementptr inbounds float, float* %7, i64 %247
  %249 = load float, float* %248, align 4, !tbaa !134
  %250 = insertelement <16 x float> %246, float %249, i32 5
  %251 = sext i32 %217 to i64
  %252 = getelementptr inbounds float, float* %7, i64 %251
  %253 = load float, float* %252, align 4, !tbaa !134
  %254 = insertelement <16 x float> %250, float %253, i32 6
  %255 = sext i32 %218 to i64
  %256 = getelementptr inbounds float, float* %7, i64 %255
  %257 = load float, float* %256, align 4, !tbaa !134
  %258 = insertelement <16 x float> %254, float %257, i32 7
  %259 = sext i32 %219 to i64
  %260 = getelementptr inbounds float, float* %7, i64 %259
  %261 = load float, float* %260, align 4, !tbaa !134
  %262 = insertelement <16 x float> %258, float %261, i32 8
  %263 = sext i32 %220 to i64
  %264 = getelementptr inbounds float, float* %7, i64 %263
  %265 = load float, float* %264, align 4, !tbaa !134
  %266 = insertelement <16 x float> %262, float %265, i32 9
  %267 = sext i32 %221 to i64
  %268 = getelementptr inbounds float, float* %7, i64 %267
  %269 = load float, float* %268, align 4, !tbaa !134
  %270 = insertelement <16 x float> %266, float %269, i32 10
  %271 = sext i32 %222 to i64
  %272 = getelementptr inbounds float, float* %7, i64 %271
  %273 = load float, float* %272, align 4, !tbaa !134
  %274 = insertelement <16 x float> %270, float %273, i32 11
  %275 = sext i32 %223 to i64
  %276 = getelementptr inbounds float, float* %7, i64 %275
  %277 = load float, float* %276, align 4, !tbaa !134
  %278 = insertelement <16 x float> %274, float %277, i32 12
  %279 = sext i32 %224 to i64
  %280 = getelementptr inbounds float, float* %7, i64 %279
  %281 = load float, float* %280, align 4, !tbaa !134
  %282 = insertelement <16 x float> %278, float %281, i32 13
  %283 = sext i32 %225 to i64
  %284 = getelementptr inbounds float, float* %7, i64 %283
  %285 = load float, float* %284, align 4, !tbaa !134
  %286 = insertelement <16 x float> %282, float %285, i32 14
  %287 = sext i32 %226 to i64
  %288 = getelementptr inbounds float, float* %7, i64 %287
  %289 = load float, float* %288, align 4, !tbaa !134
  %290 = insertelement <16 x float> %286, float %289, i32 15
  %291 = getelementptr inbounds float, float* %4, i64 %208
  %292 = bitcast float* %291 to <16 x float>*
  store <16 x float> %290, <16 x float>* %292, align 64, !tbaa !137
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv.2, 1
  %exitcond.2 = icmp eq i64 %indvars.iv.next.2, 128
  br i1 %exitcond.2, label %for_end6.2, label %for_body5.2, !prof !49

for_end6.2:                                       ; preds = %for_body5.2
  %indvars.iv.next11 = add nsw i64 %indvars.iv10, 1
  %293 = icmp slt i64 %indvars.iv.next11, %23
  br i1 %293, label %for_begin1.preheader, label %for_end, !prof !5
}

define private i32 @__tvm_parallel_lambda.34(i32, %0* nocapture readonly, i8* nocapture readonly) {
entry:
  %3 = alloca [4 x <16 x float>], align 16
  %4 = bitcast [4 x <16 x float>]* %3 to i8*
  %.sub = getelementptr inbounds [4 x <16 x float>], [4 x <16 x float>]* %3, i64 0, i64 0
  %5 = bitcast i8* %2 to float**
  %6 = load float*, float** %5, align 8
  %7 = getelementptr inbounds i8, i8* %2, i64 8
  %8 = bitcast i8* %7 to float**
  %9 = load float*, float** %8, align 8
  %10 = getelementptr inbounds i8, i8* %2, i64 16
  %11 = bitcast i8* %10 to float**
  %12 = load float*, float** %11, align 8
  %13 = getelementptr inbounds i8, i8* %2, i64 24
  %14 = bitcast i8* %13 to i32*
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %0, %0* %1, i64 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, 1087
  %19 = sdiv i32 %18, %17
  %20 = add nsw i32 %0, 1
  %21 = mul nsw i32 %19, %20
  %22 = icmp slt i32 %21, 1088
  %23 = select i1 %22, i32 %21, i32 1088
  %24 = mul nsw i32 %19, %0
  %25 = icmp slt i32 %24, 1088
  %26 = select i1 %25, i32 %24, i32 1088
  %27 = icmp slt i32 %26, %23
  br i1 %27, label %for_body.lr.ph, label %for_end, !prof !5

for_body.lr.ph:                                   ; preds = %entry
  %28 = getelementptr inbounds [4 x <16 x float>], [4 x <16 x float>]* %3, i64 0, i64 0, i64 16
  %29 = bitcast float* %28 to <16 x float>*
  %30 = getelementptr inbounds [4 x <16 x float>], [4 x <16 x float>]* %3, i64 0, i64 0, i64 32
  %31 = bitcast float* %30 to <16 x float>*
  %32 = getelementptr inbounds [4 x <16 x float>], [4 x <16 x float>]* %3, i64 0, i64 0, i64 48
  %33 = bitcast float* %32 to <16 x float>*
  %34 = bitcast [4 x <16 x float>]* %3 to i8*
  br label %for_body

for_body:                                         ; preds = %for_body.lr.ph, %for_end15
  %35 = phi i32 [ %26, %for_body.lr.ph ], [ %332, %for_end15 ]
  %36 = load i8* (i32, i32, i64, i32, i32)*, i8* (i32, i32, i64, i32, i32)** @__TVMBackendAllocWorkspace, align 8, !tbaa !6
  %37 = tail call i8* %36(i32 1, i32 %15, i64 4352, i32 2, i32 32)
  %38 = srem i32 %35, 68
  %39 = sdiv i32 %35, 68
  %40 = mul nsw i32 %39, 18432
  %41 = sext i32 %40 to i64
  %42 = mul nsw i32 %38, 8960
  %43 = sext i32 %42 to i64
  %44 = mul nsw i32 %38, 8960
  %45 = add nsw i32 %44, 8960
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %41, 6144
  %48 = mul nsw i32 %38, 8960
  %49 = add nsw i32 %48, 17920
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %41, 12288
  br label %for_body2

for_end:                                          ; preds = %for_end15, %entry
  ret i32 0

for_begin13.preheader:                            ; preds = %for_end9.2
  %52 = mul nsw i32 %38, 68
  %53 = mul nsw i32 %39, 73984
  %54 = add nsw i32 %53, %52
  %55 = bitcast i8* %37 to float*
  %56 = sext i32 %54 to i64
  br label %for_begin16.preheader

for_body2:                                        ; preds = %for_end9.2, %for_body
  %indvar = phi i64 [ 0, %for_body ], [ %indvar.next, %for_end9.2 ]
  %57 = shl i64 %indvar, 8
  %scevgep = getelementptr i8, i8* %37, i64 %57
  %58 = shl nsw i64 %indvar, 2
  %59 = add nuw nsw i64 %58, %43
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %34, i8 0, i64 256, i1 false)
  br label %for_body8

for_body8:                                        ; preds = %for_body8, %for_body2
  %indvars.iv = phi i64 [ 0, %for_body2 ], [ %indvars.iv.next, %for_body8 ]
  %60 = phi <16 x float> [ zeroinitializer, %for_body2 ], [ %119, %for_body8 ]
  %61 = phi <16 x float> [ zeroinitializer, %for_body2 ], [ %113, %for_body8 ]
  %62 = phi <16 x float> [ zeroinitializer, %for_body2 ], [ %112, %for_body8 ]
  %63 = phi <16 x float> [ zeroinitializer, %for_body2 ], [ %111, %for_body8 ]
  %64 = mul nuw nsw i64 %indvars.iv, 70
  %65 = add nsw i64 %59, %64
  %66 = getelementptr inbounds float, float* %6, i64 %65
  %67 = load float, float* %66, align 8, !tbaa !131
  %68 = insertelement <16 x float> undef, float %67, i32 0
  %69 = shufflevector <16 x float> %68, <16 x float> undef, <16 x i32> zeroinitializer
  %70 = shl nsw i64 %indvars.iv, 4
  %71 = add nsw i64 %70, %41
  %72 = getelementptr inbounds float, float* %9, i64 %71
  %73 = bitcast float* %72 to <16 x float>*
  %74 = load <16 x float>, <16 x float>* %73, align 64, !tbaa !137
  %75 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %69, <16 x float> %74, <16 x float> %63)
  %76 = or i64 %65, 1
  %77 = getelementptr inbounds float, float* %6, i64 %76
  %78 = load float, float* %77, align 4, !tbaa !131
  %79 = insertelement <16 x float> undef, float %78, i32 0
  %80 = shufflevector <16 x float> %79, <16 x float> undef, <16 x i32> zeroinitializer
  %81 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %80, <16 x float> %74, <16 x float> %62)
  %82 = add nsw i64 %65, 2
  %83 = getelementptr inbounds float, float* %6, i64 %82
  %84 = load float, float* %83, align 8, !tbaa !131
  %85 = insertelement <16 x float> undef, float %84, i32 0
  %86 = shufflevector <16 x float> %85, <16 x float> undef, <16 x i32> zeroinitializer
  %87 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %86, <16 x float> %74, <16 x float> %61)
  %88 = add nsw i64 %65, 3
  %89 = getelementptr inbounds float, float* %6, i64 %88
  %90 = load float, float* %89, align 4, !tbaa !131
  %91 = insertelement <16 x float> undef, float %90, i32 0
  %92 = shufflevector <16 x float> %91, <16 x float> undef, <16 x i32> zeroinitializer
  %93 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %92, <16 x float> %74, <16 x float> %60)
  %94 = add nsw i64 %71, 2048
  %95 = getelementptr inbounds float, float* %9, i64 %94
  %96 = bitcast float* %95 to <16 x float>*
  %97 = load <16 x float>, <16 x float>* %96, align 64, !tbaa !137
  %98 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %80, <16 x float> %97, <16 x float> %75)
  %99 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %86, <16 x float> %97, <16 x float> %81)
  %100 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %92, <16 x float> %97, <16 x float> %87)
  %101 = add nsw i64 %65, 4
  %102 = getelementptr inbounds float, float* %6, i64 %101
  %103 = load float, float* %102, align 8, !tbaa !131
  %104 = insertelement <16 x float> undef, float %103, i32 0
  %105 = shufflevector <16 x float> %104, <16 x float> undef, <16 x i32> zeroinitializer
  %106 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %105, <16 x float> %97, <16 x float> %93)
  %107 = add nsw i64 %71, 4096
  %108 = getelementptr inbounds float, float* %9, i64 %107
  %109 = bitcast float* %108 to <16 x float>*
  %110 = load <16 x float>, <16 x float>* %109, align 64, !tbaa !137
  %111 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %86, <16 x float> %110, <16 x float> %98)
  %112 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %92, <16 x float> %110, <16 x float> %99)
  %113 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %105, <16 x float> %110, <16 x float> %100)
  %114 = add nsw i64 %65, 5
  %115 = getelementptr inbounds float, float* %6, i64 %114
  %116 = load float, float* %115, align 4, !tbaa !131
  %117 = insertelement <16 x float> undef, float %116, i32 0
  %118 = shufflevector <16 x float> %117, <16 x float> undef, <16 x i32> zeroinitializer
  %119 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %118, <16 x float> %110, <16 x float> %106)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 128
  br i1 %exitcond, label %for_end9, label %for_body8, !prof !49

for_end9:                                         ; preds = %for_body8
  %120 = add nuw nsw i64 %58, %46
  br label %for_body8.1

for_begin16.preheader:                            ; preds = %for_begin16.preheader, %for_begin13.preheader
  %indvars.iv50 = phi i64 [ 0, %for_begin13.preheader ], [ %indvars.iv.next51, %for_begin16.preheader ]
  %121 = shl i64 %indvars.iv50, 2
  %122 = add nsw i64 %121, %56
  %123 = shl i64 %indvars.iv50, 6
  %124 = add nsw i64 %122, 4624
  %125 = add nsw i64 %122, 9248
  %126 = add nsw i64 %122, 13872
  %127 = add nsw i64 %122, 18496
  %128 = add nsw i64 %122, 23120
  %129 = add nsw i64 %122, 27744
  %130 = add nsw i64 %122, 32368
  %131 = add nsw i64 %122, 36992
  %132 = add nsw i64 %122, 41616
  %133 = add nsw i64 %122, 46240
  %134 = add nsw i64 %122, 50864
  %135 = add nsw i64 %122, 55488
  %136 = add nsw i64 %122, 60112
  %137 = add nsw i64 %122, 64736
  %138 = add nsw i64 %122, 69360
  %139 = getelementptr inbounds float, float* %55, i64 %123
  %140 = bitcast float* %139 to <16 x float>*
  %141 = load <16 x float>, <16 x float>* %140, align 64, !tbaa !140
  %142 = getelementptr inbounds float, float* %12, i64 %122
  %143 = extractelement <16 x float> %141, i64 0
  store float %143, float* %142, align 4, !tbaa !143
  %144 = getelementptr inbounds float, float* %12, i64 %124
  %145 = extractelement <16 x float> %141, i64 1
  store float %145, float* %144, align 4, !tbaa !143
  %146 = getelementptr inbounds float, float* %12, i64 %125
  %147 = extractelement <16 x float> %141, i64 2
  store float %147, float* %146, align 4, !tbaa !143
  %148 = getelementptr inbounds float, float* %12, i64 %126
  %149 = extractelement <16 x float> %141, i64 3
  store float %149, float* %148, align 4, !tbaa !143
  %150 = getelementptr inbounds float, float* %12, i64 %127
  %151 = extractelement <16 x float> %141, i64 4
  store float %151, float* %150, align 4, !tbaa !143
  %152 = getelementptr inbounds float, float* %12, i64 %128
  %153 = extractelement <16 x float> %141, i64 5
  store float %153, float* %152, align 4, !tbaa !143
  %154 = getelementptr inbounds float, float* %12, i64 %129
  %155 = extractelement <16 x float> %141, i64 6
  store float %155, float* %154, align 4, !tbaa !143
  %156 = getelementptr inbounds float, float* %12, i64 %130
  %157 = extractelement <16 x float> %141, i64 7
  store float %157, float* %156, align 4, !tbaa !143
  %158 = getelementptr inbounds float, float* %12, i64 %131
  %159 = extractelement <16 x float> %141, i64 8
  store float %159, float* %158, align 4, !tbaa !143
  %160 = getelementptr inbounds float, float* %12, i64 %132
  %161 = extractelement <16 x float> %141, i64 9
  store float %161, float* %160, align 4, !tbaa !143
  %162 = getelementptr inbounds float, float* %12, i64 %133
  %163 = extractelement <16 x float> %141, i64 10
  store float %163, float* %162, align 4, !tbaa !143
  %164 = getelementptr inbounds float, float* %12, i64 %134
  %165 = extractelement <16 x float> %141, i64 11
  store float %165, float* %164, align 4, !tbaa !143
  %166 = getelementptr inbounds float, float* %12, i64 %135
  %167 = extractelement <16 x float> %141, i64 12
  store float %167, float* %166, align 4, !tbaa !143
  %168 = getelementptr inbounds float, float* %12, i64 %136
  %169 = extractelement <16 x float> %141, i64 13
  store float %169, float* %168, align 4, !tbaa !143
  %170 = getelementptr inbounds float, float* %12, i64 %137
  %171 = extractelement <16 x float> %141, i64 14
  store float %171, float* %170, align 4, !tbaa !143
  %172 = getelementptr inbounds float, float* %12, i64 %138
  %173 = extractelement <16 x float> %141, i64 15
  store float %173, float* %172, align 4, !tbaa !143
  %174 = or i64 %122, 1
  %175 = add nsw i64 %174, 4624
  %176 = add nsw i64 %174, 9248
  %177 = add nsw i64 %174, 13872
  %178 = add nsw i64 %174, 18496
  %179 = add nsw i64 %174, 23120
  %180 = add nsw i64 %174, 27744
  %181 = add nsw i64 %174, 32368
  %182 = add nsw i64 %174, 36992
  %183 = add nsw i64 %174, 41616
  %184 = add nsw i64 %174, 46240
  %185 = add nsw i64 %174, 50864
  %186 = add nsw i64 %174, 55488
  %187 = add nsw i64 %174, 60112
  %188 = add nsw i64 %174, 64736
  %189 = add nsw i64 %174, 69360
  %190 = or i64 %123, 16
  %191 = getelementptr inbounds float, float* %55, i64 %190
  %192 = bitcast float* %191 to <16 x float>*
  %193 = load <16 x float>, <16 x float>* %192, align 64, !tbaa !140
  %194 = getelementptr inbounds float, float* %12, i64 %174
  %195 = extractelement <16 x float> %193, i64 0
  store float %195, float* %194, align 4, !tbaa !143
  %196 = getelementptr inbounds float, float* %12, i64 %175
  %197 = extractelement <16 x float> %193, i64 1
  store float %197, float* %196, align 4, !tbaa !143
  %198 = getelementptr inbounds float, float* %12, i64 %176
  %199 = extractelement <16 x float> %193, i64 2
  store float %199, float* %198, align 4, !tbaa !143
  %200 = getelementptr inbounds float, float* %12, i64 %177
  %201 = extractelement <16 x float> %193, i64 3
  store float %201, float* %200, align 4, !tbaa !143
  %202 = getelementptr inbounds float, float* %12, i64 %178
  %203 = extractelement <16 x float> %193, i64 4
  store float %203, float* %202, align 4, !tbaa !143
  %204 = getelementptr inbounds float, float* %12, i64 %179
  %205 = extractelement <16 x float> %193, i64 5
  store float %205, float* %204, align 4, !tbaa !143
  %206 = getelementptr inbounds float, float* %12, i64 %180
  %207 = extractelement <16 x float> %193, i64 6
  store float %207, float* %206, align 4, !tbaa !143
  %208 = getelementptr inbounds float, float* %12, i64 %181
  %209 = extractelement <16 x float> %193, i64 7
  store float %209, float* %208, align 4, !tbaa !143
  %210 = getelementptr inbounds float, float* %12, i64 %182
  %211 = extractelement <16 x float> %193, i64 8
  store float %211, float* %210, align 4, !tbaa !143
  %212 = getelementptr inbounds float, float* %12, i64 %183
  %213 = extractelement <16 x float> %193, i64 9
  store float %213, float* %212, align 4, !tbaa !143
  %214 = getelementptr inbounds float, float* %12, i64 %184
  %215 = extractelement <16 x float> %193, i64 10
  store float %215, float* %214, align 4, !tbaa !143
  %216 = getelementptr inbounds float, float* %12, i64 %185
  %217 = extractelement <16 x float> %193, i64 11
  store float %217, float* %216, align 4, !tbaa !143
  %218 = getelementptr inbounds float, float* %12, i64 %186
  %219 = extractelement <16 x float> %193, i64 12
  store float %219, float* %218, align 4, !tbaa !143
  %220 = getelementptr inbounds float, float* %12, i64 %187
  %221 = extractelement <16 x float> %193, i64 13
  store float %221, float* %220, align 4, !tbaa !143
  %222 = getelementptr inbounds float, float* %12, i64 %188
  %223 = extractelement <16 x float> %193, i64 14
  store float %223, float* %222, align 4, !tbaa !143
  %224 = getelementptr inbounds float, float* %12, i64 %189
  %225 = extractelement <16 x float> %193, i64 15
  store float %225, float* %224, align 4, !tbaa !143
  %226 = or i64 %122, 2
  %227 = add nsw i64 %226, 4624
  %228 = add nsw i64 %226, 9248
  %229 = add nsw i64 %226, 13872
  %230 = add nsw i64 %226, 18496
  %231 = add nsw i64 %226, 23120
  %232 = add nsw i64 %226, 27744
  %233 = add nsw i64 %226, 32368
  %234 = add nsw i64 %226, 36992
  %235 = add nsw i64 %226, 41616
  %236 = add nsw i64 %226, 46240
  %237 = add nsw i64 %226, 50864
  %238 = add nsw i64 %226, 55488
  %239 = add nsw i64 %226, 60112
  %240 = add nsw i64 %226, 64736
  %241 = add nsw i64 %226, 69360
  %242 = or i64 %123, 32
  %243 = getelementptr inbounds float, float* %55, i64 %242
  %244 = bitcast float* %243 to <16 x float>*
  %245 = load <16 x float>, <16 x float>* %244, align 64, !tbaa !140
  %246 = getelementptr inbounds float, float* %12, i64 %226
  %247 = extractelement <16 x float> %245, i64 0
  store float %247, float* %246, align 4, !tbaa !143
  %248 = getelementptr inbounds float, float* %12, i64 %227
  %249 = extractelement <16 x float> %245, i64 1
  store float %249, float* %248, align 4, !tbaa !143
  %250 = getelementptr inbounds float, float* %12, i64 %228
  %251 = extractelement <16 x float> %245, i64 2
  store float %251, float* %250, align 4, !tbaa !143
  %252 = getelementptr inbounds float, float* %12, i64 %229
  %253 = extractelement <16 x float> %245, i64 3
  store float %253, float* %252, align 4, !tbaa !143
  %254 = getelementptr inbounds float, float* %12, i64 %230
  %255 = extractelement <16 x float> %245, i64 4
  store float %255, float* %254, align 4, !tbaa !143
  %256 = getelementptr inbounds float, float* %12, i64 %231
  %257 = extractelement <16 x float> %245, i64 5
  store float %257, float* %256, align 4, !tbaa !143
  %258 = getelementptr inbounds float, float* %12, i64 %232
  %259 = extractelement <16 x float> %245, i64 6
  store float %259, float* %258, align 4, !tbaa !143
  %260 = getelementptr inbounds float, float* %12, i64 %233
  %261 = extractelement <16 x float> %245, i64 7
  store float %261, float* %260, align 4, !tbaa !143
  %262 = getelementptr inbounds float, float* %12, i64 %234
  %263 = extractelement <16 x float> %245, i64 8
  store float %263, float* %262, align 4, !tbaa !143
  %264 = getelementptr inbounds float, float* %12, i64 %235
  %265 = extractelement <16 x float> %245, i64 9
  store float %265, float* %264, align 4, !tbaa !143
  %266 = getelementptr inbounds float, float* %12, i64 %236
  %267 = extractelement <16 x float> %245, i64 10
  store float %267, float* %266, align 4, !tbaa !143
  %268 = getelementptr inbounds float, float* %12, i64 %237
  %269 = extractelement <16 x float> %245, i64 11
  store float %269, float* %268, align 4, !tbaa !143
  %270 = getelementptr inbounds float, float* %12, i64 %238
  %271 = extractelement <16 x float> %245, i64 12
  store float %271, float* %270, align 4, !tbaa !143
  %272 = getelementptr inbounds float, float* %12, i64 %239
  %273 = extractelement <16 x float> %245, i64 13
  store float %273, float* %272, align 4, !tbaa !143
  %274 = getelementptr inbounds float, float* %12, i64 %240
  %275 = extractelement <16 x float> %245, i64 14
  store float %275, float* %274, align 4, !tbaa !143
  %276 = getelementptr inbounds float, float* %12, i64 %241
  %277 = extractelement <16 x float> %245, i64 15
  store float %277, float* %276, align 4, !tbaa !143
  %278 = or i64 %122, 3
  %279 = add nsw i64 %278, 4624
  %280 = add nsw i64 %278, 9248
  %281 = add nsw i64 %278, 13872
  %282 = add nsw i64 %278, 18496
  %283 = add nsw i64 %278, 23120
  %284 = add nsw i64 %278, 27744
  %285 = add nsw i64 %278, 32368
  %286 = add nsw i64 %278, 36992
  %287 = add nsw i64 %278, 41616
  %288 = add nsw i64 %278, 46240
  %289 = add nsw i64 %278, 50864
  %290 = add nsw i64 %278, 55488
  %291 = add nsw i64 %278, 60112
  %292 = add nsw i64 %278, 64736
  %293 = add nsw i64 %278, 69360
  %294 = or i64 %123, 48
  %295 = getelementptr inbounds float, float* %55, i64 %294
  %296 = bitcast float* %295 to <16 x float>*
  %297 = load <16 x float>, <16 x float>* %296, align 64, !tbaa !140
  %298 = getelementptr inbounds float, float* %12, i64 %278
  %299 = extractelement <16 x float> %297, i64 0
  store float %299, float* %298, align 4, !tbaa !143
  %300 = getelementptr inbounds float, float* %12, i64 %279
  %301 = extractelement <16 x float> %297, i64 1
  store float %301, float* %300, align 4, !tbaa !143
  %302 = getelementptr inbounds float, float* %12, i64 %280
  %303 = extractelement <16 x float> %297, i64 2
  store float %303, float* %302, align 4, !tbaa !143
  %304 = getelementptr inbounds float, float* %12, i64 %281
  %305 = extractelement <16 x float> %297, i64 3
  store float %305, float* %304, align 4, !tbaa !143
  %306 = getelementptr inbounds float, float* %12, i64 %282
  %307 = extractelement <16 x float> %297, i64 4
  store float %307, float* %306, align 4, !tbaa !143
  %308 = getelementptr inbounds float, float* %12, i64 %283
  %309 = extractelement <16 x float> %297, i64 5
  store float %309, float* %308, align 4, !tbaa !143
  %310 = getelementptr inbounds float, float* %12, i64 %284
  %311 = extractelement <16 x float> %297, i64 6
  store float %311, float* %310, align 4, !tbaa !143
  %312 = getelementptr inbounds float, float* %12, i64 %285
  %313 = extractelement <16 x float> %297, i64 7
  store float %313, float* %312, align 4, !tbaa !143
  %314 = getelementptr inbounds float, float* %12, i64 %286
  %315 = extractelement <16 x float> %297, i64 8
  store float %315, float* %314, align 4, !tbaa !143
  %316 = getelementptr inbounds float, float* %12, i64 %287
  %317 = extractelement <16 x float> %297, i64 9
  store float %317, float* %316, align 4, !tbaa !143
  %318 = getelementptr inbounds float, float* %12, i64 %288
  %319 = extractelement <16 x float> %297, i64 10
  store float %319, float* %318, align 4, !tbaa !143
  %320 = getelementptr inbounds float, float* %12, i64 %289
  %321 = extractelement <16 x float> %297, i64 11
  store float %321, float* %320, align 4, !tbaa !143
  %322 = getelementptr inbounds float, float* %12, i64 %290
  %323 = extractelement <16 x float> %297, i64 12
  store float %323, float* %322, align 4, !tbaa !143
  %324 = getelementptr inbounds float, float* %12, i64 %291
  %325 = extractelement <16 x float> %297, i64 13
  store float %325, float* %324, align 4, !tbaa !143
  %326 = getelementptr inbounds float, float* %12, i64 %292
  %327 = extractelement <16 x float> %297, i64 14
  store float %327, float* %326, align 4, !tbaa !143
  %328 = getelementptr inbounds float, float* %12, i64 %293
  %329 = extractelement <16 x float> %297, i64 15
  store float %329, float* %328, align 4, !tbaa !143
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1
  %exitcond52 = icmp eq i64 %indvars.iv.next51, 17
  br i1 %exitcond52, label %for_end15, label %for_begin16.preheader, !prof !49

for_end15:                                        ; preds = %for_begin16.preheader
  %330 = load i32 (i32, i32, i8*)*, i32 (i32, i32, i8*)** @__TVMBackendFreeWorkspace, align 8, !tbaa !6
  %331 = tail call i32 %330(i32 1, i32 %15, i8* nonnull %37)
  %332 = add nsw i32 %35, 1
  %333 = icmp slt i32 %332, %23
  br i1 %333, label %for_body, label %for_end, !prof !5

for_body8.1:                                      ; preds = %for_body8.1, %for_end9
  %indvars.iv.1 = phi i64 [ 0, %for_end9 ], [ %indvars.iv.next.1, %for_body8.1 ]
  %334 = phi <16 x float> [ %119, %for_end9 ], [ %393, %for_body8.1 ]
  %335 = phi <16 x float> [ %113, %for_end9 ], [ %387, %for_body8.1 ]
  %336 = phi <16 x float> [ %112, %for_end9 ], [ %386, %for_body8.1 ]
  %337 = phi <16 x float> [ %111, %for_end9 ], [ %385, %for_body8.1 ]
  %338 = mul nuw nsw i64 %indvars.iv.1, 70
  %339 = add nsw i64 %120, %338
  %340 = getelementptr inbounds float, float* %6, i64 %339
  %341 = load float, float* %340, align 8, !tbaa !131
  %342 = insertelement <16 x float> undef, float %341, i32 0
  %343 = shufflevector <16 x float> %342, <16 x float> undef, <16 x i32> zeroinitializer
  %344 = shl nsw i64 %indvars.iv.1, 4
  %345 = add nsw i64 %47, %344
  %346 = getelementptr inbounds float, float* %9, i64 %345
  %347 = bitcast float* %346 to <16 x float>*
  %348 = load <16 x float>, <16 x float>* %347, align 64, !tbaa !137
  %349 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %343, <16 x float> %348, <16 x float> %337)
  %350 = or i64 %339, 1
  %351 = getelementptr inbounds float, float* %6, i64 %350
  %352 = load float, float* %351, align 4, !tbaa !131
  %353 = insertelement <16 x float> undef, float %352, i32 0
  %354 = shufflevector <16 x float> %353, <16 x float> undef, <16 x i32> zeroinitializer
  %355 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %354, <16 x float> %348, <16 x float> %336)
  %356 = add nsw i64 %339, 2
  %357 = getelementptr inbounds float, float* %6, i64 %356
  %358 = load float, float* %357, align 8, !tbaa !131
  %359 = insertelement <16 x float> undef, float %358, i32 0
  %360 = shufflevector <16 x float> %359, <16 x float> undef, <16 x i32> zeroinitializer
  %361 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %360, <16 x float> %348, <16 x float> %335)
  %362 = add nsw i64 %339, 3
  %363 = getelementptr inbounds float, float* %6, i64 %362
  %364 = load float, float* %363, align 4, !tbaa !131
  %365 = insertelement <16 x float> undef, float %364, i32 0
  %366 = shufflevector <16 x float> %365, <16 x float> undef, <16 x i32> zeroinitializer
  %367 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %366, <16 x float> %348, <16 x float> %334)
  %368 = add nsw i64 %345, 2048
  %369 = getelementptr inbounds float, float* %9, i64 %368
  %370 = bitcast float* %369 to <16 x float>*
  %371 = load <16 x float>, <16 x float>* %370, align 64, !tbaa !137
  %372 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %354, <16 x float> %371, <16 x float> %349)
  %373 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %360, <16 x float> %371, <16 x float> %355)
  %374 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %366, <16 x float> %371, <16 x float> %361)
  %375 = add nsw i64 %339, 4
  %376 = getelementptr inbounds float, float* %6, i64 %375
  %377 = load float, float* %376, align 8, !tbaa !131
  %378 = insertelement <16 x float> undef, float %377, i32 0
  %379 = shufflevector <16 x float> %378, <16 x float> undef, <16 x i32> zeroinitializer
  %380 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %379, <16 x float> %371, <16 x float> %367)
  %381 = add nsw i64 %345, 4096
  %382 = getelementptr inbounds float, float* %9, i64 %381
  %383 = bitcast float* %382 to <16 x float>*
  %384 = load <16 x float>, <16 x float>* %383, align 64, !tbaa !137
  %385 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %360, <16 x float> %384, <16 x float> %372)
  %386 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %366, <16 x float> %384, <16 x float> %373)
  %387 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %379, <16 x float> %384, <16 x float> %374)
  %388 = add nsw i64 %339, 5
  %389 = getelementptr inbounds float, float* %6, i64 %388
  %390 = load float, float* %389, align 4, !tbaa !131
  %391 = insertelement <16 x float> undef, float %390, i32 0
  %392 = shufflevector <16 x float> %391, <16 x float> undef, <16 x i32> zeroinitializer
  %393 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %392, <16 x float> %384, <16 x float> %380)
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1
  %exitcond.1 = icmp eq i64 %indvars.iv.next.1, 128
  br i1 %exitcond.1, label %for_end9.1, label %for_body8.1, !prof !49

for_end9.1:                                       ; preds = %for_body8.1
  %394 = add nuw nsw i64 %58, %50
  br label %for_body8.2

for_body8.2:                                      ; preds = %for_body8.2, %for_end9.1
  %indvars.iv.2 = phi i64 [ 0, %for_end9.1 ], [ %indvars.iv.next.2, %for_body8.2 ]
  %395 = phi <16 x float> [ %393, %for_end9.1 ], [ %454, %for_body8.2 ]
  %396 = phi <16 x float> [ %387, %for_end9.1 ], [ %448, %for_body8.2 ]
  %397 = phi <16 x float> [ %386, %for_end9.1 ], [ %447, %for_body8.2 ]
  %398 = phi <16 x float> [ %385, %for_end9.1 ], [ %446, %for_body8.2 ]
  %399 = mul nuw nsw i64 %indvars.iv.2, 70
  %400 = add nsw i64 %394, %399
  %401 = getelementptr inbounds float, float* %6, i64 %400
  %402 = load float, float* %401, align 8, !tbaa !131
  %403 = insertelement <16 x float> undef, float %402, i32 0
  %404 = shufflevector <16 x float> %403, <16 x float> undef, <16 x i32> zeroinitializer
  %405 = shl nsw i64 %indvars.iv.2, 4
  %406 = add nsw i64 %51, %405
  %407 = getelementptr inbounds float, float* %9, i64 %406
  %408 = bitcast float* %407 to <16 x float>*
  %409 = load <16 x float>, <16 x float>* %408, align 64, !tbaa !137
  %410 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %404, <16 x float> %409, <16 x float> %398)
  %411 = or i64 %400, 1
  %412 = getelementptr inbounds float, float* %6, i64 %411
  %413 = load float, float* %412, align 4, !tbaa !131
  %414 = insertelement <16 x float> undef, float %413, i32 0
  %415 = shufflevector <16 x float> %414, <16 x float> undef, <16 x i32> zeroinitializer
  %416 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %415, <16 x float> %409, <16 x float> %397)
  %417 = add nsw i64 %400, 2
  %418 = getelementptr inbounds float, float* %6, i64 %417
  %419 = load float, float* %418, align 8, !tbaa !131
  %420 = insertelement <16 x float> undef, float %419, i32 0
  %421 = shufflevector <16 x float> %420, <16 x float> undef, <16 x i32> zeroinitializer
  %422 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %421, <16 x float> %409, <16 x float> %396)
  %423 = add nsw i64 %400, 3
  %424 = getelementptr inbounds float, float* %6, i64 %423
  %425 = load float, float* %424, align 4, !tbaa !131
  %426 = insertelement <16 x float> undef, float %425, i32 0
  %427 = shufflevector <16 x float> %426, <16 x float> undef, <16 x i32> zeroinitializer
  %428 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %427, <16 x float> %409, <16 x float> %395)
  %429 = add nsw i64 %406, 2048
  %430 = getelementptr inbounds float, float* %9, i64 %429
  %431 = bitcast float* %430 to <16 x float>*
  %432 = load <16 x float>, <16 x float>* %431, align 64, !tbaa !137
  %433 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %415, <16 x float> %432, <16 x float> %410)
  %434 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %421, <16 x float> %432, <16 x float> %416)
  %435 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %427, <16 x float> %432, <16 x float> %422)
  %436 = add nsw i64 %400, 4
  %437 = getelementptr inbounds float, float* %6, i64 %436
  %438 = load float, float* %437, align 8, !tbaa !131
  %439 = insertelement <16 x float> undef, float %438, i32 0
  %440 = shufflevector <16 x float> %439, <16 x float> undef, <16 x i32> zeroinitializer
  %441 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %440, <16 x float> %432, <16 x float> %428)
  %442 = add nsw i64 %406, 4096
  %443 = getelementptr inbounds float, float* %9, i64 %442
  %444 = bitcast float* %443 to <16 x float>*
  %445 = load <16 x float>, <16 x float>* %444, align 64, !tbaa !137
  %446 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %421, <16 x float> %445, <16 x float> %433)
  %447 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %427, <16 x float> %445, <16 x float> %434)
  %448 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %440, <16 x float> %445, <16 x float> %435)
  %449 = add nsw i64 %400, 5
  %450 = getelementptr inbounds float, float* %6, i64 %449
  %451 = load float, float* %450, align 4, !tbaa !131
  %452 = insertelement <16 x float> undef, float %451, i32 0
  %453 = shufflevector <16 x float> %452, <16 x float> undef, <16 x i32> zeroinitializer
  %454 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %453, <16 x float> %445, <16 x float> %441)
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv.2, 1
  %exitcond.2 = icmp eq i64 %indvars.iv.next.2, 128
  br i1 %exitcond.2, label %for_end9.2, label %for_body8.2, !prof !49

for_end9.2:                                       ; preds = %for_body8.2
  store <16 x float> %446, <16 x float>* %.sub, align 16, !tbaa !146
  store <16 x float> %447, <16 x float>* %29, align 16, !tbaa !146
  store <16 x float> %448, <16 x float>* %31, align 16, !tbaa !146
  store <16 x float> %454, <16 x float>* %33, align 16, !tbaa !146
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 64 %scevgep, i8* nonnull align 16 %4, i64 256, i1 false)
  %indvar.next = add nuw nsw i64 %indvar, 1
  %exitcond46 = icmp eq i64 %indvar.next, 17
  br i1 %exitcond46, label %for_begin13.preheader, label %for_body2, !prof !49
}

; Function Attrs: nounwind readnone speculatable
declare <16 x float> @llvm.fmuladd.v16f32(<16 x float>, <16 x float>, <16 x float>) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #3
declare void @get_time(i32)
attributes #0 = { noinline }
attributes #1 = { norecurse nounwind }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { argmemonly nounwind }

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
!10 = !{!"0x209ff50.w1.b0", !11, i64 0}
!11 = !{!"0x209ff50.w2.b0", !12, i64 0}
!12 = !{!"0x209ff50.w4.b0", !13, i64 0}
!13 = !{!"0x209ff50.w8.b0", !14, i64 0}
!14 = !{!"0x209ff50.w16.b0", !15, i64 0}
!15 = !{!"0x209ff50.w32.b0", !16, i64 0}
!16 = !{!"0x209ff50.w64.b0", !17, i64 0}
!17 = !{!"0x209ff50.w128.b0", !18, i64 0}
!18 = !{!"0x209ff50.w256.b0", !19, i64 0}
!19 = !{!"0x209ff50.w512.b0", !20, i64 0}
!20 = !{!"0x209ff50.w1024.b0", !21, i64 0}
!21 = !{!"int32", !22, i64 0}
!22 = !{!"0x209ff50", !8, i64 0}
!23 = !{!24, !24, i64 0}
!24 = !{!"0x209ff50.w1.b2", !25, i64 0}
!25 = !{!"0x209ff50.w2.b2", !12, i64 0}
!26 = !{!27, !27, i64 0}
!27 = !{!"0x209ff50.w1.b1", !11, i64 0}
!28 = !{!29, !29, i64 0}
!29 = !{!"0x2094860.w1.b0", !30, i64 0}
!30 = !{!"0x2094860.w2.b0", !31, i64 0}
!31 = !{!"0x2094860.w4.b0", !32, i64 0}
!32 = !{!"0x2094860.w8.b0", !33, i64 0}
!33 = !{!"0x2094860.w16.b0", !34, i64 0}
!34 = !{!"0x2094860.w32.b0", !35, i64 0}
!35 = !{!"0x2094860.w64.b0", !36, i64 0}
!36 = !{!"0x2094860.w128.b0", !37, i64 0}
!37 = !{!"0x2094860.w256.b0", !38, i64 0}
!38 = !{!"0x2094860.w512.b0", !39, i64 0}
!39 = !{!"0x2094860.w1024.b0", !40, i64 0}
!40 = !{!"int64", !41, i64 0}
!41 = !{!"0x2094860", !8, i64 0}
!42 = !{!43, !43, i64 0}
!43 = !{!"0x2094860.w1.b1", !30, i64 0}
!44 = !{!45, !45, i64 0}
!45 = !{!"0x2094860.w1.b2", !46, i64 0}
!46 = !{!"0x2094860.w2.b2", !31, i64 0}
!47 = !{!48, !48, i64 0}
!48 = !{!"0x2094860.w1.b3", !46, i64 0}
!49 = !{!"branch_weights", i32 1, i32 1048576}
!50 = !{!51, !51, i64 0}
!51 = !{!"0x20177c0.w4.b0", !52, i64 0}
!52 = !{!"0x20177c0.w8.b0", !53, i64 0}
!53 = !{!"0x20177c0.w16.b0", !54, i64 0}
!54 = !{!"0x20177c0.w32.b0", !55, i64 0}
!55 = !{!"0x20177c0.w64.b0", !56, i64 0}
!56 = !{!"0x20177c0.w128.b0", !57, i64 0}
!57 = !{!"0x20177c0.w256.b0", !58, i64 0}
!58 = !{!"0x20177c0.w512.b0", !59, i64 0}
!59 = !{!"0x20177c0.w1024.b0", !60, i64 0}
!60 = !{!"int64", !61, i64 0}
!61 = !{!"0x20177c0", !8, i64 0}
!62 = !{!63, !63, i64 0}
!63 = !{!"0x1fa0500.w1.b0", !64, i64 0}
!64 = !{!"0x1fa0500.w2.b0", !65, i64 0}
!65 = !{!"0x1fa0500.w4.b0", !66, i64 0}
!66 = !{!"0x1fa0500.w8.b0", !67, i64 0}
!67 = !{!"0x1fa0500.w16.b0", !68, i64 0}
!68 = !{!"0x1fa0500.w32.b0", !69, i64 0}
!69 = !{!"0x1fa0500.w64.b0", !70, i64 0}
!70 = !{!"0x1fa0500.w128.b0", !71, i64 0}
!71 = !{!"0x1fa0500.w256.b0", !72, i64 0}
!72 = !{!"0x1fa0500.w512.b0", !73, i64 0}
!73 = !{!"0x1fa0500.w1024.b0", !74, i64 0}
!74 = !{!"int64", !75, i64 0}
!75 = !{!"0x1fa0500", !8, i64 0}
!76 = !{!77, !77, i64 0}
!77 = !{!"0x1fa0500.w1.b1", !64, i64 0}
!78 = !{!79, !79, i64 0}
!79 = !{!"0x1fa0500.w1.b2", !80, i64 0}
!80 = !{!"0x1fa0500.w2.b2", !65, i64 0}
!81 = !{!82, !82, i64 0}
!82 = !{!"0x1fa0500.w1.b3", !80, i64 0}
!83 = !{!84, !84, i64 0}
!84 = !{!"0x1feda70.w4.b0", !85, i64 0}
!85 = !{!"0x1feda70.w8.b0", !86, i64 0}
!86 = !{!"0x1feda70.w16.b0", !87, i64 0}
!87 = !{!"0x1feda70.w32.b0", !88, i64 0}
!88 = !{!"0x1feda70.w64.b0", !89, i64 0}
!89 = !{!"0x1feda70.w128.b0", !90, i64 0}
!90 = !{!"0x1feda70.w256.b0", !91, i64 0}
!91 = !{!"0x1feda70.w512.b0", !92, i64 0}
!92 = !{!"0x1feda70.w1024.b0", !93, i64 0}
!93 = !{!"int64", !94, i64 0}
!94 = !{!"0x1feda70", !8, i64 0}
!95 = !{!96, !96, i64 0}
!96 = !{!"0x20a0930.w1.b0", !97, i64 0}
!97 = !{!"0x20a0930.w2.b0", !98, i64 0}
!98 = !{!"0x20a0930.w4.b0", !99, i64 0}
!99 = !{!"0x20a0930.w8.b0", !100, i64 0}
!100 = !{!"0x20a0930.w16.b0", !101, i64 0}
!101 = !{!"0x20a0930.w32.b0", !102, i64 0}
!102 = !{!"0x20a0930.w64.b0", !103, i64 0}
!103 = !{!"0x20a0930.w128.b0", !104, i64 0}
!104 = !{!"0x20a0930.w256.b0", !105, i64 0}
!105 = !{!"0x20a0930.w512.b0", !106, i64 0}
!106 = !{!"0x20a0930.w1024.b0", !107, i64 0}
!107 = !{!"int64", !108, i64 0}
!108 = !{!"0x20a0930", !8, i64 0}
!109 = !{!110, !110, i64 0}
!110 = !{!"0x20a0930.w1.b1", !97, i64 0}
!111 = !{!112, !112, i64 0}
!112 = !{!"0x20a0930.w1.b2", !113, i64 0}
!113 = !{!"0x20a0930.w2.b2", !98, i64 0}
!114 = !{!115, !115, i64 0}
!115 = !{!"0x20a0930.w1.b3", !113, i64 0}
!116 = !{!117, !117, i64 0}
!117 = !{!"0x1fedfb0.w4.b0", !118, i64 0}
!118 = !{!"0x1fedfb0.w8.b0", !119, i64 0}
!119 = !{!"0x1fedfb0.w16.b0", !120, i64 0}
!120 = !{!"0x1fedfb0.w32.b0", !121, i64 0}
!121 = !{!"0x1fedfb0.w64.b0", !122, i64 0}
!122 = !{!"0x1fedfb0.w128.b0", !123, i64 0}
!123 = !{!"0x1fedfb0.w256.b0", !124, i64 0}
!124 = !{!"0x1fedfb0.w512.b0", !125, i64 0}
!125 = !{!"0x1fedfb0.w1024.b0", !126, i64 0}
!126 = !{!"int64", !127, i64 0}
!127 = !{!"0x1fedfb0", !8, i64 0}
!128 = !{!129, !129, i64 0}
!129 = !{!"float32", !130, i64 0}
!130 = !{!"0x1f9e6e0", !8, i64 0}
!131 = !{!132, !132, i64 0}
!132 = !{!"float32", !133, i64 0}
!133 = !{!"0x1f9e7a0", !8, i64 0}
!134 = !{!135, !135, i64 0}
!135 = !{!"float32", !136, i64 0}
!136 = !{!"0x1f68730", !8, i64 0}
!137 = !{!138, !138, i64 0}
!138 = !{!"float32", !139, i64 0}
!139 = !{!"0x2002df0", !8, i64 0}
!140 = !{!141, !141, i64 0}
!141 = !{!"float32", !142, i64 0}
!142 = !{!"0x1f9b5f0", !8, i64 0}
!143 = !{!144, !144, i64 0}
!144 = !{!"float32", !145, i64 0}
!145 = !{!"0x20ab100", !8, i64 0}
!146 = !{!147, !147, i64 0}
!147 = !{!"0x1fa0e50.w16.b0", !148, i64 0}
!148 = !{!"0x1fa0e50.w32.b0", !149, i64 0}
!149 = !{!"0x1fa0e50.w64.b0", !150, i64 0}
!150 = !{!"0x1fa0e50.w128.b0", !151, i64 0}
!151 = !{!"0x1fa0e50.w256.b0", !152, i64 0}
!152 = !{!"0x1fa0e50.w512.b0", !153, i64 0}
!153 = !{!"0x1fa0e50.w1024.b0", !154, i64 0}
!154 = !{!"float32", !155, i64 0}
!155 = !{!"0x1fa0e50", !8, i64 0}
