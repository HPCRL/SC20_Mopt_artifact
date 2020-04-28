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
%6 = type { i8*, i8*, i8* }

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
@.str.8 = private constant [98 x i8] c"Assert fail: (1024 == int32(arg0.shape[1])), Argument arg0.shape[1] has an unsatisfied constraint\00", align 1
@.str.9 = private constant [96 x i8] c"Assert fail: (19 == int32(arg0.shape[2])), Argument arg0.shape[2] has an unsatisfied constraint\00", align 1
@.str.10 = private constant [96 x i8] c"Assert fail: (19 == int32(arg0.shape[3])), Argument arg0.shape[3] has an unsatisfied constraint\00", align 1
@.str.11 = private constant [200 x i8] c"Assert fail: ((((1 == int32(arg0.strides[3])) && (19 == int32(arg0.strides[2]))) && (361 == int32(arg0.strides[1]))) && (369664 == int32(arg0.strides[0]))), arg0.strides: expected to be compact array\00", align 1
@.str.12 = private constant [112 x i8] c"Assert fail: ((uint64)0 == tvm_struct_get(arg0, 0, 8)), Argument arg0.byte_offset has an unsatisfied constraint\00", align 1
@.str.13 = private constant [81 x i8] c"Assert fail: (4 == tvm_struct_get(arg1, 0, 4)), arg1.ndim is expected to equal 4\00", align 1
@.str.14 = private constant [186 x i8] c"Assert fail: (((tvm_struct_get(arg1, 0, 5) == (uint8)2) && (tvm_struct_get(arg1, 0, 6) == (uint8)32)) && (tvm_struct_get(arg1, 0, 7) == (uint16)1)), arg1.dtype is expected to be float32\00", align 1
@.str.15 = private constant [97 x i8] c"Assert fail: (512 == int32(arg1.shape[0])), Argument arg1.shape[0] has an unsatisfied constraint\00", align 1
@.str.16 = private constant [98 x i8] c"Assert fail: (1024 == int32(arg1.shape[1])), Argument arg1.shape[1] has an unsatisfied constraint\00", align 1
@.str.17 = private constant [95 x i8] c"Assert fail: (3 == int32(arg1.shape[2])), Argument arg1.shape[2] has an unsatisfied constraint\00", align 1
@.str.18 = private constant [95 x i8] c"Assert fail: (3 == int32(arg1.shape[3])), Argument arg1.shape[3] has an unsatisfied constraint\00", align 1
@.str.19 = private constant [195 x i8] c"Assert fail: ((((1 == int32(arg1.strides[3])) && (3 == int32(arg1.strides[2]))) && (9 == int32(arg1.strides[1]))) && (9216 == int32(arg1.strides[0]))), arg1.strides: expected to be compact array\00", align 1
@.str.20 = private constant [112 x i8] c"Assert fail: ((uint64)0 == tvm_struct_get(arg1, 0, 8)), Argument arg1.byte_offset has an unsatisfied constraint\00", align 1
@.str.21 = private constant [105 x i8] c"Assert fail: (1 == tvm_struct_get(arg1, 0, 10)), Argument arg1.device_type has an unsatisfied constraint\00", align 1
@.str.22 = private constant [107 x i8] c"Assert fail: (dev_id == tvm_struct_get(arg1, 0, 9)), Argument arg1.device_id has an unsatisfied constraint\00", align 1
@.str.23 = private constant [81 x i8] c"Assert fail: (4 == tvm_struct_get(arg2, 0, 4)), arg2.ndim is expected to equal 4\00", align 1
@.str.24 = private constant [186 x i8] c"Assert fail: (((tvm_struct_get(arg2, 0, 5) == (uint8)2) && (tvm_struct_get(arg2, 0, 6) == (uint8)32)) && (tvm_struct_get(arg2, 0, 7) == (uint16)1)), arg2.dtype is expected to be float32\00", align 1
@.str.25 = private constant [95 x i8] c"Assert fail: (1 == int32(arg2.shape[0])), Argument arg2.shape[0] has an unsatisfied constraint\00", align 1
@.str.26 = private constant [97 x i8] c"Assert fail: (512 == int32(arg2.shape[1])), Argument arg2.shape[1] has an unsatisfied constraint\00", align 1
@.str.27 = private constant [96 x i8] c"Assert fail: (17 == int32(arg2.shape[2])), Argument arg2.shape[2] has an unsatisfied constraint\00", align 1
@.str.28 = private constant [96 x i8] c"Assert fail: (17 == int32(arg2.shape[3])), Argument arg2.shape[3] has an unsatisfied constraint\00", align 1
@.str.29 = private constant [200 x i8] c"Assert fail: ((((1 == int32(arg2.strides[3])) && (17 == int32(arg2.strides[2]))) && (289 == int32(arg2.strides[1]))) && (147968 == int32(arg2.strides[0]))), arg2.strides: expected to be compact array\00", align 1
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
  %71 = icmp eq i32 %70, 1024
  br i1 %71, label %assert_end16, label %assert_fail15, !prof !5

assert_fail15:                                    ; preds = %assert_end14
  %72 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %72(i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.8, i64 0, i64 0))
  ret i32 -1

assert_end16:                                     ; preds = %assert_end14
  %73 = getelementptr inbounds i64, i64* %21, i64 2
  %74 = load i64, i64* %73, align 8, !tbaa !44
  %75 = trunc i64 %74 to i32
  %76 = icmp eq i32 %75, 19
  br i1 %76, label %assert_end18, label %assert_fail17, !prof !5

assert_fail17:                                    ; preds = %assert_end16
  %77 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %77(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.9, i64 0, i64 0))
  ret i32 -1

assert_end18:                                     ; preds = %assert_end16
  %78 = getelementptr inbounds i64, i64* %21, i64 3
  %79 = load i64, i64* %78, align 8, !tbaa !47
  %80 = trunc i64 %79 to i32
  %81 = icmp eq i32 %80, 19
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
  %87 = icmp eq <4 x i32> %86, <i32 369664, i32 361, i32 19, i32 1>
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
  tail call void %92(i8* getelementptr inbounds ([200 x i8], [200 x i8]* @.str.11, i64 0, i64 0))
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
  %112 = icmp eq i32 %111, 512
  br i1 %112, label %assert_end30, label %assert_fail29, !prof !5

assert_fail29:                                    ; preds = %assert_end28
  %113 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %113(i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.15, i64 0, i64 0))
  ret i32 -1

assert_end30:                                     ; preds = %assert_end28
  %114 = getelementptr inbounds i64, i64* %31, i64 1
  %115 = load i64, i64* %114, align 8, !tbaa !76
  %116 = trunc i64 %115 to i32
  %117 = icmp eq i32 %116, 1024
  br i1 %117, label %assert_end32, label %assert_fail31, !prof !5

assert_fail31:                                    ; preds = %assert_end30
  %118 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %118(i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.16, i64 0, i64 0))
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
  %133 = icmp eq <4 x i32> %132, <i32 9216, i32 9, i32 3, i32 1>
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
  %171 = icmp eq i32 %170, 512
  br i1 %171, label %assert_end54, label %assert_fail53, !prof !5

assert_fail53:                                    ; preds = %assert_end52
  %172 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %172(i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.26, i64 0, i64 0))
  ret i32 -1

assert_end54:                                     ; preds = %assert_end52
  %173 = getelementptr inbounds i64, i64* %37, i64 2
  %174 = load i64, i64* %173, align 8, !tbaa !111
  %175 = trunc i64 %174 to i32
  %176 = icmp eq i32 %175, 17
  br i1 %176, label %assert_end56, label %assert_fail55, !prof !5

assert_fail55:                                    ; preds = %assert_end54
  %177 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %177(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.27, i64 0, i64 0))
  ret i32 -1

assert_end56:                                     ; preds = %assert_end54
  %178 = getelementptr inbounds i64, i64* %37, i64 3
  %179 = load i64, i64* %178, align 8, !tbaa !114
  %180 = trunc i64 %179 to i32
  %181 = icmp eq i32 %180, 17
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
  %187 = icmp eq <4 x i32> %186, <i32 147968, i32 289, i32 17, i32 1>
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
  tail call void %192(i8* getelementptr inbounds ([200 x i8], [200 x i8]* @.str.29, i64 0, i64 0))
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
  %5 = tail call i8* %4(i32 1, i32 %3, i64 1478656, i32 2, i32 32)
  %6 = load i8* (i32, i32, i64, i32, i32)*, i8* (i32, i32, i64, i32, i32)** @__TVMBackendAllocWorkspace, align 8, !tbaa !6
  %7 = tail call i8* %6(i32 1, i32 %3, i64 18874368, i32 2, i32 32)
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
  %merge = phi i32 [ %13, %entry ], [ 0, %call_end6 ], [ %20, %call_end ], [ %28, %call_end4 ]
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
  %26 = bitcast %6* %22 to i8*
  %27 = load i32 (i32 (i32, %0*, i8*)*, i8*, i32)*, i32 (i32 (i32, %0*, i8*)*, i8*, i32)** @__TVMBackendParallelLaunch, align 8, !tbaa !6
  %28 = call i32 %27(i32 (i32, %0*, i8*)* nonnull @__tvm_parallel_lambda.34, i8* nonnull %26, i32 0)
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %call_end6, label %call_fail, !prof !5

call_end6:                                        ; preds = %call_end4
  %30 = load i32 (i32, i32, i8*)*, i32 (i32, i32, i8*)** @__TVMBackendFreeWorkspace, align 8, !tbaa !6
  %31 = call i32 %30(i32 1, i32 %3, i8* %7)
  %32 = load i32 (i32, i32, i8*)*, i32 (i32, i32, i8*)** @__TVMBackendFreeWorkspace, align 8, !tbaa !6
  %33 = call i32 %32(i32 1, i32 %3, i8* %5)
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
  %10 = add nsw i32 %9, 75
  %11 = sdiv i32 %10, %9
  %12 = add nsw i32 %0, 1
  %13 = mul nsw i32 %11, %12
  %14 = icmp slt i32 %13, 76
  %15 = select i1 %14, i32 %13, i32 76
  %16 = mul nsw i32 %11, %0
  %17 = icmp slt i32 %16, 76
  %18 = select i1 %17, i32 %16, i32 76
  %19 = icmp slt i32 %18, %15
  br i1 %19, label %for_begin1.preheader.preheader, label %for_end, !prof !5

for_begin1.preheader.preheader:                   ; preds = %entry
  %20 = add i32 %18, 1
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %21, -1
  %23 = sext i32 %15 to i64
  br label %for_begin1.preheader

for_begin1.preheader:                             ; preds = %for_begin1.preheader.preheader, %for_end3
  %indvars.iv7 = phi i64 [ %22, %for_begin1.preheader.preheader ], [ %indvars.iv.next8, %for_end3 ]
  %24 = mul nsw i64 %indvars.iv7, 4864
  %25 = trunc i64 %indvars.iv7 to i32
  %26 = srem i32 %25, 19
  %27 = mul nsw i32 %26, 19
  %28 = sdiv i32 %25, 19
  %29 = mul nsw i32 %28, 92416
  %30 = add i32 %27, %29
  br label %for_begin4.preheader

for_end:                                          ; preds = %for_end3, %entry
  ret i32 0

for_begin4.preheader:                             ; preds = %for_begin4.preheader, %for_begin1.preheader
  %indvars.iv = phi i64 [ 0, %for_begin1.preheader ], [ %indvars.iv.next, %for_begin4.preheader ]
  %31 = mul nuw nsw i64 %indvars.iv, 19
  %32 = add nsw i64 %31, %24
  %33 = trunc i64 %indvars.iv to i32
  %34 = mul i32 %33, 361
  %35 = add i32 %30, %34
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds float, float* %7, i64 %36
  %38 = bitcast float* %37 to i32*
  %39 = load i32, i32* %38, align 4, !tbaa !128
  %40 = getelementptr inbounds float, float* %4, i64 %32
  %41 = bitcast float* %40 to i32*
  store i32 %39, i32* %41, align 4, !tbaa !131
  %42 = add nsw i64 %32, 1
  %43 = add i32 %35, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds float, float* %7, i64 %44
  %46 = bitcast float* %45 to i32*
  %47 = load i32, i32* %46, align 4, !tbaa !128
  %48 = getelementptr inbounds float, float* %4, i64 %42
  %49 = bitcast float* %48 to i32*
  store i32 %47, i32* %49, align 4, !tbaa !131
  %50 = add nsw i64 %32, 2
  %51 = add i32 %35, 2
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds float, float* %7, i64 %52
  %54 = bitcast float* %53 to i32*
  %55 = load i32, i32* %54, align 4, !tbaa !128
  %56 = getelementptr inbounds float, float* %4, i64 %50
  %57 = bitcast float* %56 to i32*
  store i32 %55, i32* %57, align 4, !tbaa !131
  %58 = add nsw i64 %32, 3
  %59 = add i32 %35, 3
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds float, float* %7, i64 %60
  %62 = bitcast float* %61 to i32*
  %63 = load i32, i32* %62, align 4, !tbaa !128
  %64 = getelementptr inbounds float, float* %4, i64 %58
  %65 = bitcast float* %64 to i32*
  store i32 %63, i32* %65, align 4, !tbaa !131
  %66 = add nsw i64 %32, 4
  %67 = add i32 %35, 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds float, float* %7, i64 %68
  %70 = bitcast float* %69 to i32*
  %71 = load i32, i32* %70, align 4, !tbaa !128
  %72 = getelementptr inbounds float, float* %4, i64 %66
  %73 = bitcast float* %72 to i32*
  store i32 %71, i32* %73, align 4, !tbaa !131
  %74 = add nsw i64 %32, 5
  %75 = add i32 %35, 5
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds float, float* %7, i64 %76
  %78 = bitcast float* %77 to i32*
  %79 = load i32, i32* %78, align 4, !tbaa !128
  %80 = getelementptr inbounds float, float* %4, i64 %74
  %81 = bitcast float* %80 to i32*
  store i32 %79, i32* %81, align 4, !tbaa !131
  %82 = add nsw i64 %32, 6
  %83 = add i32 %35, 6
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds float, float* %7, i64 %84
  %86 = bitcast float* %85 to i32*
  %87 = load i32, i32* %86, align 4, !tbaa !128
  %88 = getelementptr inbounds float, float* %4, i64 %82
  %89 = bitcast float* %88 to i32*
  store i32 %87, i32* %89, align 4, !tbaa !131
  %90 = add nsw i64 %32, 7
  %91 = add i32 %35, 7
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds float, float* %7, i64 %92
  %94 = bitcast float* %93 to i32*
  %95 = load i32, i32* %94, align 4, !tbaa !128
  %96 = getelementptr inbounds float, float* %4, i64 %90
  %97 = bitcast float* %96 to i32*
  store i32 %95, i32* %97, align 4, !tbaa !131
  %98 = add nsw i64 %32, 8
  %99 = add i32 %35, 8
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds float, float* %7, i64 %100
  %102 = bitcast float* %101 to i32*
  %103 = load i32, i32* %102, align 4, !tbaa !128
  %104 = getelementptr inbounds float, float* %4, i64 %98
  %105 = bitcast float* %104 to i32*
  store i32 %103, i32* %105, align 4, !tbaa !131
  %106 = add nsw i64 %32, 9
  %107 = add i32 %35, 9
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds float, float* %7, i64 %108
  %110 = bitcast float* %109 to i32*
  %111 = load i32, i32* %110, align 4, !tbaa !128
  %112 = getelementptr inbounds float, float* %4, i64 %106
  %113 = bitcast float* %112 to i32*
  store i32 %111, i32* %113, align 4, !tbaa !131
  %114 = add nsw i64 %32, 10
  %115 = add i32 %35, 10
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds float, float* %7, i64 %116
  %118 = bitcast float* %117 to i32*
  %119 = load i32, i32* %118, align 4, !tbaa !128
  %120 = getelementptr inbounds float, float* %4, i64 %114
  %121 = bitcast float* %120 to i32*
  store i32 %119, i32* %121, align 4, !tbaa !131
  %122 = add nsw i64 %32, 11
  %123 = add i32 %35, 11
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds float, float* %7, i64 %124
  %126 = bitcast float* %125 to i32*
  %127 = load i32, i32* %126, align 4, !tbaa !128
  %128 = getelementptr inbounds float, float* %4, i64 %122
  %129 = bitcast float* %128 to i32*
  store i32 %127, i32* %129, align 4, !tbaa !131
  %130 = add nsw i64 %32, 12
  %131 = add i32 %35, 12
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds float, float* %7, i64 %132
  %134 = bitcast float* %133 to i32*
  %135 = load i32, i32* %134, align 4, !tbaa !128
  %136 = getelementptr inbounds float, float* %4, i64 %130
  %137 = bitcast float* %136 to i32*
  store i32 %135, i32* %137, align 4, !tbaa !131
  %138 = add nsw i64 %32, 13
  %139 = add i32 %35, 13
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds float, float* %7, i64 %140
  %142 = bitcast float* %141 to i32*
  %143 = load i32, i32* %142, align 4, !tbaa !128
  %144 = getelementptr inbounds float, float* %4, i64 %138
  %145 = bitcast float* %144 to i32*
  store i32 %143, i32* %145, align 4, !tbaa !131
  %146 = add nsw i64 %32, 14
  %147 = add i32 %35, 14
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds float, float* %7, i64 %148
  %150 = bitcast float* %149 to i32*
  %151 = load i32, i32* %150, align 4, !tbaa !128
  %152 = getelementptr inbounds float, float* %4, i64 %146
  %153 = bitcast float* %152 to i32*
  store i32 %151, i32* %153, align 4, !tbaa !131
  %154 = add nsw i64 %32, 15
  %155 = add i32 %35, 15
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds float, float* %7, i64 %156
  %158 = bitcast float* %157 to i32*
  %159 = load i32, i32* %158, align 4, !tbaa !128
  %160 = getelementptr inbounds float, float* %4, i64 %154
  %161 = bitcast float* %160 to i32*
  store i32 %159, i32* %161, align 4, !tbaa !131
  %162 = add nsw i64 %32, 16
  %163 = add i32 %35, 16
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds float, float* %7, i64 %164
  %166 = bitcast float* %165 to i32*
  %167 = load i32, i32* %166, align 4, !tbaa !128
  %168 = getelementptr inbounds float, float* %4, i64 %162
  %169 = bitcast float* %168 to i32*
  store i32 %167, i32* %169, align 4, !tbaa !131
  %170 = add nsw i64 %32, 17
  %171 = add i32 %35, 17
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds float, float* %7, i64 %172
  %174 = bitcast float* %173 to i32*
  %175 = load i32, i32* %174, align 4, !tbaa !128
  %176 = getelementptr inbounds float, float* %4, i64 %170
  %177 = bitcast float* %176 to i32*
  store i32 %175, i32* %177, align 4, !tbaa !131
  %178 = add nsw i64 %32, 18
  %179 = add i32 %35, 18
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds float, float* %7, i64 %180
  %182 = bitcast float* %181 to i32*
  %183 = load i32, i32* %182, align 4, !tbaa !128
  %184 = getelementptr inbounds float, float* %4, i64 %178
  %185 = bitcast float* %184 to i32*
  store i32 %183, i32* %185, align 4, !tbaa !131
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 256
  br i1 %exitcond, label %for_end3, label %for_begin4.preheader, !prof !49

for_end3:                                         ; preds = %for_begin4.preheader
  %indvars.iv.next8 = add nsw i64 %indvars.iv7, 1
  %186 = icmp slt i64 %indvars.iv.next8, %23
  br i1 %186, label %for_begin1.preheader, label %for_end, !prof !5
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
  %10 = add nsw i32 %9, 191
  %11 = sdiv i32 %10, %9
  %12 = add nsw i32 %0, 1
  %13 = mul nsw i32 %11, %12
  %14 = icmp slt i32 %13, 192
  %15 = select i1 %14, i32 %13, i32 192
  %16 = mul nsw i32 %11, %0
  %17 = icmp slt i32 %16, 192
  %18 = select i1 %17, i32 %16, i32 192
  %19 = icmp slt i32 %18, %15
  br i1 %19, label %for_begin1.preheader, label %for_end, !prof !5

for_begin1.preheader:                             ; preds = %entry, %for_end3
  %20 = phi i32 [ %33, %for_end3 ], [ %18, %entry ]
  %21 = srem i32 %20, 3
  %22 = mul nsw i32 %21, 6144
  %23 = sdiv i32 %20, 3
  %24 = mul nsw i32 %23, 73728
  %25 = add i32 %22, %24
  %26 = mul nsw i32 %21, 3
  %27 = add i32 %26, %24
  br label %for_begin4.preheader

for_end:                                          ; preds = %for_end3, %entry
  ret i32 0

for_begin4.preheader:                             ; preds = %for_end9.2, %for_begin1.preheader
  %28 = phi i32 [ 0, %for_begin1.preheader ], [ %180, %for_end9.2 ]
  %29 = mul nuw nsw i32 %28, 18432
  %30 = add i32 %25, %29
  %31 = mul nuw nsw i32 %28, 2304
  %32 = add i32 %27, %31
  br label %for_body8

for_end3:                                         ; preds = %for_end9.2
  %33 = add nsw i32 %20, 1
  %34 = icmp slt i32 %33, %15
  br i1 %34, label %for_begin1.preheader, label %for_end, !prof !5

for_body8:                                        ; preds = %for_body8, %for_begin4.preheader
  %indvars.iv = phi i64 [ 0, %for_begin4.preheader ], [ %indvars.iv.next, %for_body8 ]
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %35 = shl i32 %indvars.iv.tr, 3
  %36 = add i32 %30, %35
  %37 = trunc i64 %indvars.iv to i32
  %38 = mul i32 %37, 9
  %39 = add i32 %32, %38
  %40 = add nsw i32 %39, 9216
  %41 = add nsw i32 %39, 18432
  %42 = add nsw i32 %39, 27648
  %43 = add nsw i32 %39, 36864
  %44 = add nsw i32 %39, 46080
  %45 = add nsw i32 %39, 55296
  %46 = add nsw i32 %39, 64512
  %47 = sext i32 %39 to i64
  %48 = getelementptr inbounds float, float* %7, i64 %47
  %49 = load float, float* %48, align 4, !tbaa !134
  %50 = insertelement <8 x float> undef, float %49, i32 0
  %51 = sext i32 %40 to i64
  %52 = getelementptr inbounds float, float* %7, i64 %51
  %53 = load float, float* %52, align 4, !tbaa !134
  %54 = insertelement <8 x float> %50, float %53, i32 1
  %55 = sext i32 %41 to i64
  %56 = getelementptr inbounds float, float* %7, i64 %55
  %57 = load float, float* %56, align 4, !tbaa !134
  %58 = insertelement <8 x float> %54, float %57, i32 2
  %59 = sext i32 %42 to i64
  %60 = getelementptr inbounds float, float* %7, i64 %59
  %61 = load float, float* %60, align 4, !tbaa !134
  %62 = insertelement <8 x float> %58, float %61, i32 3
  %63 = sext i32 %43 to i64
  %64 = getelementptr inbounds float, float* %7, i64 %63
  %65 = load float, float* %64, align 4, !tbaa !134
  %66 = insertelement <8 x float> %62, float %65, i32 4
  %67 = sext i32 %44 to i64
  %68 = getelementptr inbounds float, float* %7, i64 %67
  %69 = load float, float* %68, align 4, !tbaa !134
  %70 = insertelement <8 x float> %66, float %69, i32 5
  %71 = sext i32 %45 to i64
  %72 = getelementptr inbounds float, float* %7, i64 %71
  %73 = load float, float* %72, align 4, !tbaa !134
  %74 = insertelement <8 x float> %70, float %73, i32 6
  %75 = sext i32 %46 to i64
  %76 = getelementptr inbounds float, float* %7, i64 %75
  %77 = load float, float* %76, align 4, !tbaa !134
  %78 = insertelement <8 x float> %74, float %77, i32 7
  %79 = sext i32 %36 to i64
  %80 = getelementptr inbounds float, float* %4, i64 %79
  %81 = bitcast float* %80 to <8 x float>*
  store <8 x float> %78, <8 x float>* %81, align 32, !tbaa !137
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 256
  br i1 %exitcond, label %for_end9, label %for_body8, !prof !49

for_end9:                                         ; preds = %for_body8
  %82 = add i32 %30, 2048
  %83 = add i32 %32, 1
  br label %for_body8.1

for_body8.1:                                      ; preds = %for_body8.1, %for_end9
  %indvars.iv.1 = phi i64 [ 0, %for_end9 ], [ %indvars.iv.next.1, %for_body8.1 ]
  %indvars.iv.1.tr = trunc i64 %indvars.iv.1 to i32
  %84 = shl i32 %indvars.iv.1.tr, 3
  %85 = add i32 %82, %84
  %86 = trunc i64 %indvars.iv.1 to i32
  %87 = mul i32 %86, 9
  %88 = add i32 %83, %87
  %89 = add nsw i32 %88, 9216
  %90 = add nsw i32 %88, 18432
  %91 = add nsw i32 %88, 27648
  %92 = add nsw i32 %88, 36864
  %93 = add nsw i32 %88, 46080
  %94 = add nsw i32 %88, 55296
  %95 = add nsw i32 %88, 64512
  %96 = sext i32 %88 to i64
  %97 = getelementptr inbounds float, float* %7, i64 %96
  %98 = load float, float* %97, align 4, !tbaa !134
  %99 = insertelement <8 x float> undef, float %98, i32 0
  %100 = sext i32 %89 to i64
  %101 = getelementptr inbounds float, float* %7, i64 %100
  %102 = load float, float* %101, align 4, !tbaa !134
  %103 = insertelement <8 x float> %99, float %102, i32 1
  %104 = sext i32 %90 to i64
  %105 = getelementptr inbounds float, float* %7, i64 %104
  %106 = load float, float* %105, align 4, !tbaa !134
  %107 = insertelement <8 x float> %103, float %106, i32 2
  %108 = sext i32 %91 to i64
  %109 = getelementptr inbounds float, float* %7, i64 %108
  %110 = load float, float* %109, align 4, !tbaa !134
  %111 = insertelement <8 x float> %107, float %110, i32 3
  %112 = sext i32 %92 to i64
  %113 = getelementptr inbounds float, float* %7, i64 %112
  %114 = load float, float* %113, align 4, !tbaa !134
  %115 = insertelement <8 x float> %111, float %114, i32 4
  %116 = sext i32 %93 to i64
  %117 = getelementptr inbounds float, float* %7, i64 %116
  %118 = load float, float* %117, align 4, !tbaa !134
  %119 = insertelement <8 x float> %115, float %118, i32 5
  %120 = sext i32 %94 to i64
  %121 = getelementptr inbounds float, float* %7, i64 %120
  %122 = load float, float* %121, align 4, !tbaa !134
  %123 = insertelement <8 x float> %119, float %122, i32 6
  %124 = sext i32 %95 to i64
  %125 = getelementptr inbounds float, float* %7, i64 %124
  %126 = load float, float* %125, align 4, !tbaa !134
  %127 = insertelement <8 x float> %123, float %126, i32 7
  %128 = sext i32 %85 to i64
  %129 = getelementptr inbounds float, float* %4, i64 %128
  %130 = bitcast float* %129 to <8 x float>*
  store <8 x float> %127, <8 x float>* %130, align 32, !tbaa !137
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1
  %exitcond.1 = icmp eq i64 %indvars.iv.next.1, 256
  br i1 %exitcond.1, label %for_end9.1, label %for_body8.1, !prof !49

for_end9.1:                                       ; preds = %for_body8.1
  %131 = add i32 %30, 4096
  %132 = add i32 %32, 2
  br label %for_body8.2

for_body8.2:                                      ; preds = %for_body8.2, %for_end9.1
  %indvars.iv.2 = phi i64 [ 0, %for_end9.1 ], [ %indvars.iv.next.2, %for_body8.2 ]
  %indvars.iv.2.tr = trunc i64 %indvars.iv.2 to i32
  %133 = shl i32 %indvars.iv.2.tr, 3
  %134 = add i32 %131, %133
  %135 = trunc i64 %indvars.iv.2 to i32
  %136 = mul i32 %135, 9
  %137 = add i32 %132, %136
  %138 = add nsw i32 %137, 9216
  %139 = add nsw i32 %137, 18432
  %140 = add nsw i32 %137, 27648
  %141 = add nsw i32 %137, 36864
  %142 = add nsw i32 %137, 46080
  %143 = add nsw i32 %137, 55296
  %144 = add nsw i32 %137, 64512
  %145 = sext i32 %137 to i64
  %146 = getelementptr inbounds float, float* %7, i64 %145
  %147 = load float, float* %146, align 4, !tbaa !134
  %148 = insertelement <8 x float> undef, float %147, i32 0
  %149 = sext i32 %138 to i64
  %150 = getelementptr inbounds float, float* %7, i64 %149
  %151 = load float, float* %150, align 4, !tbaa !134
  %152 = insertelement <8 x float> %148, float %151, i32 1
  %153 = sext i32 %139 to i64
  %154 = getelementptr inbounds float, float* %7, i64 %153
  %155 = load float, float* %154, align 4, !tbaa !134
  %156 = insertelement <8 x float> %152, float %155, i32 2
  %157 = sext i32 %140 to i64
  %158 = getelementptr inbounds float, float* %7, i64 %157
  %159 = load float, float* %158, align 4, !tbaa !134
  %160 = insertelement <8 x float> %156, float %159, i32 3
  %161 = sext i32 %141 to i64
  %162 = getelementptr inbounds float, float* %7, i64 %161
  %163 = load float, float* %162, align 4, !tbaa !134
  %164 = insertelement <8 x float> %160, float %163, i32 4
  %165 = sext i32 %142 to i64
  %166 = getelementptr inbounds float, float* %7, i64 %165
  %167 = load float, float* %166, align 4, !tbaa !134
  %168 = insertelement <8 x float> %164, float %167, i32 5
  %169 = sext i32 %143 to i64
  %170 = getelementptr inbounds float, float* %7, i64 %169
  %171 = load float, float* %170, align 4, !tbaa !134
  %172 = insertelement <8 x float> %168, float %171, i32 6
  %173 = sext i32 %144 to i64
  %174 = getelementptr inbounds float, float* %7, i64 %173
  %175 = load float, float* %174, align 4, !tbaa !134
  %176 = insertelement <8 x float> %172, float %175, i32 7
  %177 = sext i32 %134 to i64
  %178 = getelementptr inbounds float, float* %4, i64 %177
  %179 = bitcast float* %178 to <8 x float>*
  store <8 x float> %176, <8 x float>* %179, align 32, !tbaa !137
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv.2, 1
  %exitcond.2 = icmp eq i64 %indvars.iv.next.2, 256
  br i1 %exitcond.2, label %for_end9.2, label %for_body8.2, !prof !49

for_end9.2:                                       ; preds = %for_body8.2
  %180 = add nuw nsw i32 %28, 1
  %exitcond11 = icmp eq i32 %180, 4
  br i1 %exitcond11, label %for_end3, label %for_begin4.preheader, !prof !49
}

; Function Attrs: nounwind
define private i32 @__tvm_parallel_lambda.34(i32, %0* nocapture readonly, i8* nocapture readonly) #2 {
entry:
  %3 = alloca [17 x <8 x float>], align 32
  %.sub = getelementptr inbounds [17 x <8 x float>], [17 x <8 x float>]* %3, i64 0, i64 0
  %4 = bitcast i8* %2 to float**
  %5 = load float*, float** %4, align 8
  %6 = getelementptr inbounds i8, i8* %2, i64 8
  %7 = bitcast i8* %6 to float**
  %8 = load float*, float** %7, align 8
  %9 = getelementptr inbounds i8, i8* %2, i64 16
  %10 = bitcast i8* %9 to float**
  %11 = load float*, float** %10, align 8
  %12 = getelementptr inbounds %0, %0* %1, i64 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = add nsw i32 %13, 1087
  %15 = sdiv i32 %14, %13
  %16 = add nsw i32 %0, 1
  %17 = mul nsw i32 %15, %16
  %18 = icmp slt i32 %17, 1088
  %19 = select i1 %18, i32 %17, i32 1088
  %20 = mul nsw i32 %15, %0
  %21 = icmp slt i32 %20, 1088
  %22 = select i1 %21, i32 %20, i32 1088
  %23 = icmp slt i32 %22, %19
  br i1 %23, label %for_body.lr.ph, label %for_end, !prof !5

for_body.lr.ph:                                   ; preds = %entry
  %24 = getelementptr inbounds [17 x <8 x float>], [17 x <8 x float>]* %3, i64 0, i64 0, i64 8
  %25 = bitcast float* %24 to <8 x float>*
  %26 = getelementptr inbounds [17 x <8 x float>], [17 x <8 x float>]* %3, i64 0, i64 0, i64 16
  %27 = bitcast float* %26 to <8 x float>*
  %28 = getelementptr inbounds [17 x <8 x float>], [17 x <8 x float>]* %3, i64 0, i64 0, i64 24
  %29 = bitcast float* %28 to <8 x float>*
  %30 = getelementptr inbounds [17 x <8 x float>], [17 x <8 x float>]* %3, i64 0, i64 0, i64 32
  %31 = bitcast float* %30 to <8 x float>*
  %32 = getelementptr inbounds [17 x <8 x float>], [17 x <8 x float>]* %3, i64 0, i64 0, i64 40
  %33 = bitcast float* %32 to <8 x float>*
  %34 = getelementptr inbounds [17 x <8 x float>], [17 x <8 x float>]* %3, i64 0, i64 0, i64 48
  %35 = bitcast float* %34 to <8 x float>*
  %36 = getelementptr inbounds [17 x <8 x float>], [17 x <8 x float>]* %3, i64 0, i64 0, i64 56
  %37 = bitcast float* %36 to <8 x float>*
  %38 = getelementptr inbounds [17 x <8 x float>], [17 x <8 x float>]* %3, i64 0, i64 0, i64 64
  %39 = bitcast float* %38 to <8 x float>*
  %40 = getelementptr inbounds [17 x <8 x float>], [17 x <8 x float>]* %3, i64 0, i64 0, i64 72
  %41 = bitcast float* %40 to <8 x float>*
  %42 = getelementptr inbounds [17 x <8 x float>], [17 x <8 x float>]* %3, i64 0, i64 0, i64 80
  %43 = bitcast float* %42 to <8 x float>*
  %44 = getelementptr inbounds [17 x <8 x float>], [17 x <8 x float>]* %3, i64 0, i64 0, i64 88
  %45 = bitcast float* %44 to <8 x float>*
  %46 = getelementptr inbounds [17 x <8 x float>], [17 x <8 x float>]* %3, i64 0, i64 0, i64 96
  %47 = bitcast float* %46 to <8 x float>*
  %48 = getelementptr inbounds [17 x <8 x float>], [17 x <8 x float>]* %3, i64 0, i64 0, i64 104
  %49 = bitcast float* %48 to <8 x float>*
  %50 = getelementptr inbounds [17 x <8 x float>], [17 x <8 x float>]* %3, i64 0, i64 0, i64 112
  %51 = bitcast float* %50 to <8 x float>*
  %52 = getelementptr inbounds [17 x <8 x float>], [17 x <8 x float>]* %3, i64 0, i64 0, i64 120
  %53 = bitcast float* %52 to <8 x float>*
  %54 = getelementptr inbounds [17 x <8 x float>], [17 x <8 x float>]* %3, i64 0, i64 0, i64 128
  %55 = bitcast float* %54 to <8 x float>*
  %56 = bitcast [17 x <8 x float>]* %3 to i8*
  br label %for_body

for_body:                                         ; preds = %for_body.lr.ph, %for_end15
  %57 = phi i32 [ %22, %for_body.lr.ph ], [ %238, %for_end15 ]
  %58 = srem i32 %57, 17
  %59 = sdiv i32 %57, 17
  %60 = mul nsw i32 %59, 73728
  %61 = sext i32 %60 to i64
  call void @llvm.memset.p0i8.i64(i8* nonnull align 32 %56, i8 0, i64 544, i1 false)
  br label %for_begin4.preheader

for_end:                                          ; preds = %for_end15, %entry
  ret i32 0

for_begin13.preheader:                            ; preds = %for_end6
  store <8 x float> %395, <8 x float>* %.sub, align 32, !tbaa !140
  store <8 x float> %401, <8 x float>* %25, align 32, !tbaa !140
  store <8 x float> %407, <8 x float>* %27, align 32, !tbaa !140
  store <8 x float> %413, <8 x float>* %29, align 32, !tbaa !140
  store <8 x float> %419, <8 x float>* %31, align 32, !tbaa !140
  store <8 x float> %425, <8 x float>* %33, align 32, !tbaa !140
  store <8 x float> %431, <8 x float>* %35, align 32, !tbaa !140
  store <8 x float> %437, <8 x float>* %37, align 32, !tbaa !140
  store <8 x float> %443, <8 x float>* %39, align 32, !tbaa !140
  store <8 x float> %449, <8 x float>* %41, align 32, !tbaa !140
  store <8 x float> %455, <8 x float>* %43, align 32, !tbaa !140
  store <8 x float> %461, <8 x float>* %45, align 32, !tbaa !140
  store <8 x float> %467, <8 x float>* %47, align 32, !tbaa !140
  store <8 x float> %473, <8 x float>* %49, align 32, !tbaa !140
  store <8 x float> %479, <8 x float>* %51, align 32, !tbaa !140
  store <8 x float> %485, <8 x float>* %53, align 32, !tbaa !140
  store <8 x float> %491, <8 x float>* %55, align 32, !tbaa !140
  %62 = mul nsw i32 %58, 17
  %63 = mul nsw i32 %59, 2312
  %64 = add nsw i32 %63, %62
  br label %for_body14

for_begin4.preheader:                             ; preds = %for_end6, %for_body
  %indvars.iv170 = phi i64 [ 0, %for_body ], [ %indvars.iv.next171, %for_end6 ]
  %.lcssa48.lcssa.lcssa146 = phi <8 x float> [ zeroinitializer, %for_body ], [ %491, %for_end6 ]
  %.lcssa46.lcssa.lcssa144 = phi <8 x float> [ zeroinitializer, %for_body ], [ %485, %for_end6 ]
  %.lcssa44.lcssa.lcssa142 = phi <8 x float> [ zeroinitializer, %for_body ], [ %479, %for_end6 ]
  %.lcssa42.lcssa.lcssa140 = phi <8 x float> [ zeroinitializer, %for_body ], [ %473, %for_end6 ]
  %.lcssa40.lcssa.lcssa138 = phi <8 x float> [ zeroinitializer, %for_body ], [ %467, %for_end6 ]
  %.lcssa38.lcssa.lcssa136 = phi <8 x float> [ zeroinitializer, %for_body ], [ %461, %for_end6 ]
  %.lcssa36.lcssa.lcssa134 = phi <8 x float> [ zeroinitializer, %for_body ], [ %455, %for_end6 ]
  %.lcssa34.lcssa.lcssa132 = phi <8 x float> [ zeroinitializer, %for_body ], [ %449, %for_end6 ]
  %.lcssa32.lcssa.lcssa130 = phi <8 x float> [ zeroinitializer, %for_body ], [ %443, %for_end6 ]
  %.lcssa30.lcssa.lcssa128 = phi <8 x float> [ zeroinitializer, %for_body ], [ %437, %for_end6 ]
  %.lcssa28.lcssa.lcssa126 = phi <8 x float> [ zeroinitializer, %for_body ], [ %431, %for_end6 ]
  %.lcssa26.lcssa.lcssa124 = phi <8 x float> [ zeroinitializer, %for_body ], [ %425, %for_end6 ]
  %.lcssa24.lcssa.lcssa122 = phi <8 x float> [ zeroinitializer, %for_body ], [ %419, %for_end6 ]
  %.lcssa22.lcssa.lcssa121 = phi <8 x float> [ zeroinitializer, %for_body ], [ %413, %for_end6 ]
  %.lcssa20.lcssa.lcssa119 = phi <8 x float> [ zeroinitializer, %for_body ], [ %407, %for_end6 ]
  %.lcssa18.lcssa.lcssa117 = phi <8 x float> [ zeroinitializer, %for_body ], [ %401, %for_end6 ]
  %.lcssa.lcssa.lcssa115 = phi <8 x float> [ zeroinitializer, %for_body ], [ %395, %for_end6 ]
  %65 = mul nuw nsw i64 %indvars.iv170, 18432
  %66 = add nsw i64 %65, %61
  %67 = trunc i64 %indvars.iv170 to i32
  %68 = mul i32 %67, 92416
  br label %for_begin7.preheader

for_begin7.preheader:                             ; preds = %for_end12.2, %for_begin4.preheader
  %indvars.iv166 = phi i64 [ 0, %for_begin4.preheader ], [ %indvars.iv.next167, %for_end12.2 ]
  %.lcssa48.lcssa113 = phi <8 x float> [ %.lcssa48.lcssa.lcssa146, %for_begin4.preheader ], [ %491, %for_end12.2 ]
  %.lcssa46.lcssa111 = phi <8 x float> [ %.lcssa46.lcssa.lcssa144, %for_begin4.preheader ], [ %485, %for_end12.2 ]
  %.lcssa44.lcssa109 = phi <8 x float> [ %.lcssa44.lcssa.lcssa142, %for_begin4.preheader ], [ %479, %for_end12.2 ]
  %.lcssa42.lcssa107 = phi <8 x float> [ %.lcssa42.lcssa.lcssa140, %for_begin4.preheader ], [ %473, %for_end12.2 ]
  %.lcssa40.lcssa105 = phi <8 x float> [ %.lcssa40.lcssa.lcssa138, %for_begin4.preheader ], [ %467, %for_end12.2 ]
  %.lcssa38.lcssa103 = phi <8 x float> [ %.lcssa38.lcssa.lcssa136, %for_begin4.preheader ], [ %461, %for_end12.2 ]
  %.lcssa36.lcssa101 = phi <8 x float> [ %.lcssa36.lcssa.lcssa134, %for_begin4.preheader ], [ %455, %for_end12.2 ]
  %.lcssa34.lcssa99 = phi <8 x float> [ %.lcssa34.lcssa.lcssa132, %for_begin4.preheader ], [ %449, %for_end12.2 ]
  %.lcssa32.lcssa97 = phi <8 x float> [ %.lcssa32.lcssa.lcssa130, %for_begin4.preheader ], [ %443, %for_end12.2 ]
  %.lcssa30.lcssa95 = phi <8 x float> [ %.lcssa30.lcssa.lcssa128, %for_begin4.preheader ], [ %437, %for_end12.2 ]
  %.lcssa28.lcssa93 = phi <8 x float> [ %.lcssa28.lcssa.lcssa126, %for_begin4.preheader ], [ %431, %for_end12.2 ]
  %.lcssa26.lcssa91 = phi <8 x float> [ %.lcssa26.lcssa.lcssa124, %for_begin4.preheader ], [ %425, %for_end12.2 ]
  %.lcssa24.lcssa89 = phi <8 x float> [ %.lcssa24.lcssa.lcssa122, %for_begin4.preheader ], [ %419, %for_end12.2 ]
  %.lcssa22.lcssa87 = phi <8 x float> [ %.lcssa22.lcssa.lcssa121, %for_begin4.preheader ], [ %413, %for_end12.2 ]
  %.lcssa20.lcssa86 = phi <8 x float> [ %.lcssa20.lcssa.lcssa119, %for_begin4.preheader ], [ %407, %for_end12.2 ]
  %.lcssa18.lcssa84 = phi <8 x float> [ %.lcssa18.lcssa.lcssa117, %for_begin4.preheader ], [ %401, %for_end12.2 ]
  %.lcssa.lcssa82 = phi <8 x float> [ %.lcssa.lcssa.lcssa115, %for_begin4.preheader ], [ %395, %for_end12.2 ]
  %69 = phi i32 [ 0, %for_begin4.preheader ], [ %492, %for_end12.2 ]
  %reass.add = add nsw i32 %69, %58
  %reass.mul = mul i32 %reass.add, 4864
  %70 = add nsw i32 %reass.mul, %68
  %71 = mul nuw nsw i64 %indvars.iv166, 6144
  %72 = add nsw i64 %66, %71
  %73 = sext i32 %70 to i64
  br label %for_body11

for_end6:                                         ; preds = %for_end12.2
  %indvars.iv.next171 = add nuw nsw i64 %indvars.iv170, 1
  %exitcond172 = icmp eq i64 %indvars.iv.next171, 4
  br i1 %exitcond172, label %for_begin13.preheader, label %for_begin4.preheader, !prof !49

for_body11:                                       ; preds = %for_body11, %for_begin7.preheader
  %indvars.iv = phi i64 [ 0, %for_begin7.preheader ], [ %indvars.iv.next, %for_body11 ]
  %74 = phi <8 x float> [ %.lcssa48.lcssa113, %for_begin7.preheader ], [ %198, %for_body11 ]
  %75 = phi <8 x float> [ %.lcssa46.lcssa111, %for_begin7.preheader ], [ %192, %for_body11 ]
  %76 = phi <8 x float> [ %.lcssa44.lcssa109, %for_begin7.preheader ], [ %186, %for_body11 ]
  %77 = phi <8 x float> [ %.lcssa42.lcssa107, %for_begin7.preheader ], [ %180, %for_body11 ]
  %78 = phi <8 x float> [ %.lcssa40.lcssa105, %for_begin7.preheader ], [ %174, %for_body11 ]
  %79 = phi <8 x float> [ %.lcssa38.lcssa103, %for_begin7.preheader ], [ %168, %for_body11 ]
  %80 = phi <8 x float> [ %.lcssa36.lcssa101, %for_begin7.preheader ], [ %162, %for_body11 ]
  %81 = phi <8 x float> [ %.lcssa34.lcssa99, %for_begin7.preheader ], [ %156, %for_body11 ]
  %82 = phi <8 x float> [ %.lcssa32.lcssa97, %for_begin7.preheader ], [ %150, %for_body11 ]
  %83 = phi <8 x float> [ %.lcssa30.lcssa95, %for_begin7.preheader ], [ %144, %for_body11 ]
  %84 = phi <8 x float> [ %.lcssa28.lcssa93, %for_begin7.preheader ], [ %138, %for_body11 ]
  %85 = phi <8 x float> [ %.lcssa26.lcssa91, %for_begin7.preheader ], [ %132, %for_body11 ]
  %86 = phi <8 x float> [ %.lcssa24.lcssa89, %for_begin7.preheader ], [ %126, %for_body11 ]
  %87 = phi <8 x float> [ %.lcssa22.lcssa87, %for_begin7.preheader ], [ %120, %for_body11 ]
  %88 = phi <8 x float> [ %.lcssa20.lcssa86, %for_begin7.preheader ], [ %114, %for_body11 ]
  %89 = phi <8 x float> [ %.lcssa18.lcssa84, %for_begin7.preheader ], [ %108, %for_body11 ]
  %90 = phi <8 x float> [ %.lcssa.lcssa82, %for_begin7.preheader ], [ %102, %for_body11 ]
  %91 = mul nuw nsw i64 %indvars.iv, 19
  %92 = add nsw i64 %91, %73
  %93 = getelementptr inbounds float, float* %5, i64 %92
  %94 = load float, float* %93, align 4, !tbaa !131
  %95 = insertelement <8 x float> undef, float %94, i32 0
  %96 = shufflevector <8 x float> %95, <8 x float> undef, <8 x i32> zeroinitializer
  %97 = shl i64 %indvars.iv, 3
  %98 = add nsw i64 %72, %97
  %99 = getelementptr inbounds float, float* %8, i64 %98
  %100 = bitcast float* %99 to <8 x float>*
  %101 = load <8 x float>, <8 x float>* %100, align 32, !tbaa !137
  %102 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %96, <8 x float> %101, <8 x float> %90)
  %103 = add nsw i64 %92, 1
  %104 = getelementptr inbounds float, float* %5, i64 %103
  %105 = load float, float* %104, align 4, !tbaa !131
  %106 = insertelement <8 x float> undef, float %105, i32 0
  %107 = shufflevector <8 x float> %106, <8 x float> undef, <8 x i32> zeroinitializer
  %108 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %107, <8 x float> %101, <8 x float> %89)
  %109 = add nsw i64 %92, 2
  %110 = getelementptr inbounds float, float* %5, i64 %109
  %111 = load float, float* %110, align 4, !tbaa !131
  %112 = insertelement <8 x float> undef, float %111, i32 0
  %113 = shufflevector <8 x float> %112, <8 x float> undef, <8 x i32> zeroinitializer
  %114 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %113, <8 x float> %101, <8 x float> %88)
  %115 = add nsw i64 %92, 3
  %116 = getelementptr inbounds float, float* %5, i64 %115
  %117 = load float, float* %116, align 4, !tbaa !131
  %118 = insertelement <8 x float> undef, float %117, i32 0
  %119 = shufflevector <8 x float> %118, <8 x float> undef, <8 x i32> zeroinitializer
  %120 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %119, <8 x float> %101, <8 x float> %87)
  %121 = add nsw i64 %92, 4
  %122 = getelementptr inbounds float, float* %5, i64 %121
  %123 = load float, float* %122, align 4, !tbaa !131
  %124 = insertelement <8 x float> undef, float %123, i32 0
  %125 = shufflevector <8 x float> %124, <8 x float> undef, <8 x i32> zeroinitializer
  %126 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %125, <8 x float> %101, <8 x float> %86)
  %127 = add nsw i64 %92, 5
  %128 = getelementptr inbounds float, float* %5, i64 %127
  %129 = load float, float* %128, align 4, !tbaa !131
  %130 = insertelement <8 x float> undef, float %129, i32 0
  %131 = shufflevector <8 x float> %130, <8 x float> undef, <8 x i32> zeroinitializer
  %132 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %131, <8 x float> %101, <8 x float> %85)
  %133 = add nsw i64 %92, 6
  %134 = getelementptr inbounds float, float* %5, i64 %133
  %135 = load float, float* %134, align 4, !tbaa !131
  %136 = insertelement <8 x float> undef, float %135, i32 0
  %137 = shufflevector <8 x float> %136, <8 x float> undef, <8 x i32> zeroinitializer
  %138 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %137, <8 x float> %101, <8 x float> %84)
  %139 = add nsw i64 %92, 7
  %140 = getelementptr inbounds float, float* %5, i64 %139
  %141 = load float, float* %140, align 4, !tbaa !131
  %142 = insertelement <8 x float> undef, float %141, i32 0
  %143 = shufflevector <8 x float> %142, <8 x float> undef, <8 x i32> zeroinitializer
  %144 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %143, <8 x float> %101, <8 x float> %83)
  %145 = add nsw i64 %92, 8
  %146 = getelementptr inbounds float, float* %5, i64 %145
  %147 = load float, float* %146, align 4, !tbaa !131
  %148 = insertelement <8 x float> undef, float %147, i32 0
  %149 = shufflevector <8 x float> %148, <8 x float> undef, <8 x i32> zeroinitializer
  %150 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %149, <8 x float> %101, <8 x float> %82)
  %151 = add nsw i64 %92, 9
  %152 = getelementptr inbounds float, float* %5, i64 %151
  %153 = load float, float* %152, align 4, !tbaa !131
  %154 = insertelement <8 x float> undef, float %153, i32 0
  %155 = shufflevector <8 x float> %154, <8 x float> undef, <8 x i32> zeroinitializer
  %156 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %155, <8 x float> %101, <8 x float> %81)
  %157 = add nsw i64 %92, 10
  %158 = getelementptr inbounds float, float* %5, i64 %157
  %159 = load float, float* %158, align 4, !tbaa !131
  %160 = insertelement <8 x float> undef, float %159, i32 0
  %161 = shufflevector <8 x float> %160, <8 x float> undef, <8 x i32> zeroinitializer
  %162 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %161, <8 x float> %101, <8 x float> %80)
  %163 = add nsw i64 %92, 11
  %164 = getelementptr inbounds float, float* %5, i64 %163
  %165 = load float, float* %164, align 4, !tbaa !131
  %166 = insertelement <8 x float> undef, float %165, i32 0
  %167 = shufflevector <8 x float> %166, <8 x float> undef, <8 x i32> zeroinitializer
  %168 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %167, <8 x float> %101, <8 x float> %79)
  %169 = add nsw i64 %92, 12
  %170 = getelementptr inbounds float, float* %5, i64 %169
  %171 = load float, float* %170, align 4, !tbaa !131
  %172 = insertelement <8 x float> undef, float %171, i32 0
  %173 = shufflevector <8 x float> %172, <8 x float> undef, <8 x i32> zeroinitializer
  %174 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %173, <8 x float> %101, <8 x float> %78)
  %175 = add nsw i64 %92, 13
  %176 = getelementptr inbounds float, float* %5, i64 %175
  %177 = load float, float* %176, align 4, !tbaa !131
  %178 = insertelement <8 x float> undef, float %177, i32 0
  %179 = shufflevector <8 x float> %178, <8 x float> undef, <8 x i32> zeroinitializer
  %180 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %179, <8 x float> %101, <8 x float> %77)
  %181 = add nsw i64 %92, 14
  %182 = getelementptr inbounds float, float* %5, i64 %181
  %183 = load float, float* %182, align 4, !tbaa !131
  %184 = insertelement <8 x float> undef, float %183, i32 0
  %185 = shufflevector <8 x float> %184, <8 x float> undef, <8 x i32> zeroinitializer
  %186 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %185, <8 x float> %101, <8 x float> %76)
  %187 = add nsw i64 %92, 15
  %188 = getelementptr inbounds float, float* %5, i64 %187
  %189 = load float, float* %188, align 4, !tbaa !131
  %190 = insertelement <8 x float> undef, float %189, i32 0
  %191 = shufflevector <8 x float> %190, <8 x float> undef, <8 x i32> zeroinitializer
  %192 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %191, <8 x float> %101, <8 x float> %75)
  %193 = add nsw i64 %92, 16
  %194 = getelementptr inbounds float, float* %5, i64 %193
  %195 = load float, float* %194, align 4, !tbaa !131
  %196 = insertelement <8 x float> undef, float %195, i32 0
  %197 = shufflevector <8 x float> %196, <8 x float> undef, <8 x i32> zeroinitializer
  %198 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %197, <8 x float> %101, <8 x float> %74)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 256
  br i1 %exitcond, label %for_end12, label %for_body11, !prof !49

for_end12:                                        ; preds = %for_body11
  %199 = or i64 %73, 1
  %200 = add nsw i64 %72, 2048
  br label %for_body11.1

for_body14:                                       ; preds = %for_body14, %for_begin13.preheader
  %indvars.iv173 = phi i64 [ 0, %for_begin13.preheader ], [ %indvars.iv.next174, %for_body14 ]
  %201 = trunc i64 %indvars.iv173 to i32
  %202 = add nsw i32 %64, %201
  %203 = add nsw i32 %202, 289
  %204 = add nsw i32 %202, 578
  %205 = add nsw i32 %202, 867
  %206 = add nsw i32 %202, 1156
  %207 = add nsw i32 %202, 1445
  %208 = add nsw i32 %202, 1734
  %209 = add nsw i32 %202, 2023
  %210 = shl nsw i64 %indvars.iv173, 3
  %211 = getelementptr inbounds [17 x <8 x float>], [17 x <8 x float>]* %3, i64 0, i64 0, i64 %210
  %212 = bitcast float* %211 to <8 x float>*
  %213 = load <8 x float>, <8 x float>* %212, align 32, !tbaa !151
  %214 = sext i32 %202 to i64
  %215 = getelementptr inbounds float, float* %11, i64 %214
  %216 = extractelement <8 x float> %213, i64 0
  store float %216, float* %215, align 4, !tbaa !152
  %217 = sext i32 %203 to i64
  %218 = getelementptr inbounds float, float* %11, i64 %217
  %219 = extractelement <8 x float> %213, i64 1
  store float %219, float* %218, align 4, !tbaa !152
  %220 = sext i32 %204 to i64
  %221 = getelementptr inbounds float, float* %11, i64 %220
  %222 = extractelement <8 x float> %213, i64 2
  store float %222, float* %221, align 4, !tbaa !152
  %223 = sext i32 %205 to i64
  %224 = getelementptr inbounds float, float* %11, i64 %223
  %225 = extractelement <8 x float> %213, i64 3
  store float %225, float* %224, align 4, !tbaa !152
  %226 = sext i32 %206 to i64
  %227 = getelementptr inbounds float, float* %11, i64 %226
  %228 = extractelement <8 x float> %213, i64 4
  store float %228, float* %227, align 4, !tbaa !152
  %229 = sext i32 %207 to i64
  %230 = getelementptr inbounds float, float* %11, i64 %229
  %231 = extractelement <8 x float> %213, i64 5
  store float %231, float* %230, align 4, !tbaa !152
  %232 = sext i32 %208 to i64
  %233 = getelementptr inbounds float, float* %11, i64 %232
  %234 = extractelement <8 x float> %213, i64 6
  store float %234, float* %233, align 4, !tbaa !152
  %235 = sext i32 %209 to i64
  %236 = getelementptr inbounds float, float* %11, i64 %235
  %237 = extractelement <8 x float> %213, i64 7
  store float %237, float* %236, align 4, !tbaa !152
  %indvars.iv.next174 = add nuw nsw i64 %indvars.iv173, 1
  %exitcond175 = icmp eq i64 %indvars.iv.next174, 17
  br i1 %exitcond175, label %for_end15, label %for_body14, !prof !49

for_end15:                                        ; preds = %for_body14
  %238 = add nsw i32 %57, 1
  %239 = icmp slt i32 %238, %19
  br i1 %239, label %for_body, label %for_end, !prof !5

for_body11.1:                                     ; preds = %for_body11.1, %for_end12
  %indvars.iv.1 = phi i64 [ 0, %for_end12 ], [ %indvars.iv.next.1, %for_body11.1 ]
  %240 = phi <8 x float> [ %198, %for_end12 ], [ %364, %for_body11.1 ]
  %241 = phi <8 x float> [ %192, %for_end12 ], [ %358, %for_body11.1 ]
  %242 = phi <8 x float> [ %186, %for_end12 ], [ %352, %for_body11.1 ]
  %243 = phi <8 x float> [ %180, %for_end12 ], [ %346, %for_body11.1 ]
  %244 = phi <8 x float> [ %174, %for_end12 ], [ %340, %for_body11.1 ]
  %245 = phi <8 x float> [ %168, %for_end12 ], [ %334, %for_body11.1 ]
  %246 = phi <8 x float> [ %162, %for_end12 ], [ %328, %for_body11.1 ]
  %247 = phi <8 x float> [ %156, %for_end12 ], [ %322, %for_body11.1 ]
  %248 = phi <8 x float> [ %150, %for_end12 ], [ %316, %for_body11.1 ]
  %249 = phi <8 x float> [ %144, %for_end12 ], [ %310, %for_body11.1 ]
  %250 = phi <8 x float> [ %138, %for_end12 ], [ %304, %for_body11.1 ]
  %251 = phi <8 x float> [ %132, %for_end12 ], [ %298, %for_body11.1 ]
  %252 = phi <8 x float> [ %126, %for_end12 ], [ %292, %for_body11.1 ]
  %253 = phi <8 x float> [ %120, %for_end12 ], [ %286, %for_body11.1 ]
  %254 = phi <8 x float> [ %114, %for_end12 ], [ %280, %for_body11.1 ]
  %255 = phi <8 x float> [ %108, %for_end12 ], [ %274, %for_body11.1 ]
  %256 = phi <8 x float> [ %102, %for_end12 ], [ %268, %for_body11.1 ]
  %257 = mul nuw nsw i64 %indvars.iv.1, 19
  %258 = add nsw i64 %199, %257
  %259 = getelementptr inbounds float, float* %5, i64 %258
  %260 = load float, float* %259, align 4, !tbaa !131
  %261 = insertelement <8 x float> undef, float %260, i32 0
  %262 = shufflevector <8 x float> %261, <8 x float> undef, <8 x i32> zeroinitializer
  %263 = shl i64 %indvars.iv.1, 3
  %264 = add nsw i64 %200, %263
  %265 = getelementptr inbounds float, float* %8, i64 %264
  %266 = bitcast float* %265 to <8 x float>*
  %267 = load <8 x float>, <8 x float>* %266, align 32, !tbaa !137
  %268 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %262, <8 x float> %267, <8 x float> %256)
  %269 = add nsw i64 %258, 1
  %270 = getelementptr inbounds float, float* %5, i64 %269
  %271 = load float, float* %270, align 4, !tbaa !131
  %272 = insertelement <8 x float> undef, float %271, i32 0
  %273 = shufflevector <8 x float> %272, <8 x float> undef, <8 x i32> zeroinitializer
  %274 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %273, <8 x float> %267, <8 x float> %255)
  %275 = add nsw i64 %258, 2
  %276 = getelementptr inbounds float, float* %5, i64 %275
  %277 = load float, float* %276, align 4, !tbaa !131
  %278 = insertelement <8 x float> undef, float %277, i32 0
  %279 = shufflevector <8 x float> %278, <8 x float> undef, <8 x i32> zeroinitializer
  %280 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %279, <8 x float> %267, <8 x float> %254)
  %281 = add nsw i64 %258, 3
  %282 = getelementptr inbounds float, float* %5, i64 %281
  %283 = load float, float* %282, align 4, !tbaa !131
  %284 = insertelement <8 x float> undef, float %283, i32 0
  %285 = shufflevector <8 x float> %284, <8 x float> undef, <8 x i32> zeroinitializer
  %286 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %285, <8 x float> %267, <8 x float> %253)
  %287 = add nsw i64 %258, 4
  %288 = getelementptr inbounds float, float* %5, i64 %287
  %289 = load float, float* %288, align 4, !tbaa !131
  %290 = insertelement <8 x float> undef, float %289, i32 0
  %291 = shufflevector <8 x float> %290, <8 x float> undef, <8 x i32> zeroinitializer
  %292 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %291, <8 x float> %267, <8 x float> %252)
  %293 = add nsw i64 %258, 5
  %294 = getelementptr inbounds float, float* %5, i64 %293
  %295 = load float, float* %294, align 4, !tbaa !131
  %296 = insertelement <8 x float> undef, float %295, i32 0
  %297 = shufflevector <8 x float> %296, <8 x float> undef, <8 x i32> zeroinitializer
  %298 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %297, <8 x float> %267, <8 x float> %251)
  %299 = add nsw i64 %258, 6
  %300 = getelementptr inbounds float, float* %5, i64 %299
  %301 = load float, float* %300, align 4, !tbaa !131
  %302 = insertelement <8 x float> undef, float %301, i32 0
  %303 = shufflevector <8 x float> %302, <8 x float> undef, <8 x i32> zeroinitializer
  %304 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %303, <8 x float> %267, <8 x float> %250)
  %305 = add nsw i64 %258, 7
  %306 = getelementptr inbounds float, float* %5, i64 %305
  %307 = load float, float* %306, align 4, !tbaa !131
  %308 = insertelement <8 x float> undef, float %307, i32 0
  %309 = shufflevector <8 x float> %308, <8 x float> undef, <8 x i32> zeroinitializer
  %310 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %309, <8 x float> %267, <8 x float> %249)
  %311 = add nsw i64 %258, 8
  %312 = getelementptr inbounds float, float* %5, i64 %311
  %313 = load float, float* %312, align 4, !tbaa !131
  %314 = insertelement <8 x float> undef, float %313, i32 0
  %315 = shufflevector <8 x float> %314, <8 x float> undef, <8 x i32> zeroinitializer
  %316 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %315, <8 x float> %267, <8 x float> %248)
  %317 = add nsw i64 %258, 9
  %318 = getelementptr inbounds float, float* %5, i64 %317
  %319 = load float, float* %318, align 4, !tbaa !131
  %320 = insertelement <8 x float> undef, float %319, i32 0
  %321 = shufflevector <8 x float> %320, <8 x float> undef, <8 x i32> zeroinitializer
  %322 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %321, <8 x float> %267, <8 x float> %247)
  %323 = add nsw i64 %258, 10
  %324 = getelementptr inbounds float, float* %5, i64 %323
  %325 = load float, float* %324, align 4, !tbaa !131
  %326 = insertelement <8 x float> undef, float %325, i32 0
  %327 = shufflevector <8 x float> %326, <8 x float> undef, <8 x i32> zeroinitializer
  %328 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %327, <8 x float> %267, <8 x float> %246)
  %329 = add nsw i64 %258, 11
  %330 = getelementptr inbounds float, float* %5, i64 %329
  %331 = load float, float* %330, align 4, !tbaa !131
  %332 = insertelement <8 x float> undef, float %331, i32 0
  %333 = shufflevector <8 x float> %332, <8 x float> undef, <8 x i32> zeroinitializer
  %334 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %333, <8 x float> %267, <8 x float> %245)
  %335 = add nsw i64 %258, 12
  %336 = getelementptr inbounds float, float* %5, i64 %335
  %337 = load float, float* %336, align 4, !tbaa !131
  %338 = insertelement <8 x float> undef, float %337, i32 0
  %339 = shufflevector <8 x float> %338, <8 x float> undef, <8 x i32> zeroinitializer
  %340 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %339, <8 x float> %267, <8 x float> %244)
  %341 = add nsw i64 %258, 13
  %342 = getelementptr inbounds float, float* %5, i64 %341
  %343 = load float, float* %342, align 4, !tbaa !131
  %344 = insertelement <8 x float> undef, float %343, i32 0
  %345 = shufflevector <8 x float> %344, <8 x float> undef, <8 x i32> zeroinitializer
  %346 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %345, <8 x float> %267, <8 x float> %243)
  %347 = add nsw i64 %258, 14
  %348 = getelementptr inbounds float, float* %5, i64 %347
  %349 = load float, float* %348, align 4, !tbaa !131
  %350 = insertelement <8 x float> undef, float %349, i32 0
  %351 = shufflevector <8 x float> %350, <8 x float> undef, <8 x i32> zeroinitializer
  %352 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %351, <8 x float> %267, <8 x float> %242)
  %353 = add nsw i64 %258, 15
  %354 = getelementptr inbounds float, float* %5, i64 %353
  %355 = load float, float* %354, align 4, !tbaa !131
  %356 = insertelement <8 x float> undef, float %355, i32 0
  %357 = shufflevector <8 x float> %356, <8 x float> undef, <8 x i32> zeroinitializer
  %358 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %357, <8 x float> %267, <8 x float> %241)
  %359 = add nsw i64 %258, 16
  %360 = getelementptr inbounds float, float* %5, i64 %359
  %361 = load float, float* %360, align 4, !tbaa !131
  %362 = insertelement <8 x float> undef, float %361, i32 0
  %363 = shufflevector <8 x float> %362, <8 x float> undef, <8 x i32> zeroinitializer
  %364 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %363, <8 x float> %267, <8 x float> %240)
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1
  %exitcond.1 = icmp eq i64 %indvars.iv.next.1, 256
  br i1 %exitcond.1, label %for_end12.1, label %for_body11.1, !prof !49

for_end12.1:                                      ; preds = %for_body11.1
  %365 = or i64 %73, 2
  %366 = add nsw i64 %72, 4096
  br label %for_body11.2

for_body11.2:                                     ; preds = %for_body11.2, %for_end12.1
  %indvars.iv.2 = phi i64 [ 0, %for_end12.1 ], [ %indvars.iv.next.2, %for_body11.2 ]
  %367 = phi <8 x float> [ %364, %for_end12.1 ], [ %491, %for_body11.2 ]
  %368 = phi <8 x float> [ %358, %for_end12.1 ], [ %485, %for_body11.2 ]
  %369 = phi <8 x float> [ %352, %for_end12.1 ], [ %479, %for_body11.2 ]
  %370 = phi <8 x float> [ %346, %for_end12.1 ], [ %473, %for_body11.2 ]
  %371 = phi <8 x float> [ %340, %for_end12.1 ], [ %467, %for_body11.2 ]
  %372 = phi <8 x float> [ %334, %for_end12.1 ], [ %461, %for_body11.2 ]
  %373 = phi <8 x float> [ %328, %for_end12.1 ], [ %455, %for_body11.2 ]
  %374 = phi <8 x float> [ %322, %for_end12.1 ], [ %449, %for_body11.2 ]
  %375 = phi <8 x float> [ %316, %for_end12.1 ], [ %443, %for_body11.2 ]
  %376 = phi <8 x float> [ %310, %for_end12.1 ], [ %437, %for_body11.2 ]
  %377 = phi <8 x float> [ %304, %for_end12.1 ], [ %431, %for_body11.2 ]
  %378 = phi <8 x float> [ %298, %for_end12.1 ], [ %425, %for_body11.2 ]
  %379 = phi <8 x float> [ %292, %for_end12.1 ], [ %419, %for_body11.2 ]
  %380 = phi <8 x float> [ %286, %for_end12.1 ], [ %413, %for_body11.2 ]
  %381 = phi <8 x float> [ %280, %for_end12.1 ], [ %407, %for_body11.2 ]
  %382 = phi <8 x float> [ %274, %for_end12.1 ], [ %401, %for_body11.2 ]
  %383 = phi <8 x float> [ %268, %for_end12.1 ], [ %395, %for_body11.2 ]
  %384 = mul nuw nsw i64 %indvars.iv.2, 19
  %385 = add nsw i64 %365, %384
  %386 = getelementptr inbounds float, float* %5, i64 %385
  %387 = load float, float* %386, align 4, !tbaa !131
  %388 = insertelement <8 x float> undef, float %387, i32 0
  %389 = shufflevector <8 x float> %388, <8 x float> undef, <8 x i32> zeroinitializer
  %390 = shl i64 %indvars.iv.2, 3
  %391 = add nsw i64 %366, %390
  %392 = getelementptr inbounds float, float* %8, i64 %391
  %393 = bitcast float* %392 to <8 x float>*
  %394 = load <8 x float>, <8 x float>* %393, align 32, !tbaa !137
  %395 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %389, <8 x float> %394, <8 x float> %383)
  %396 = add nsw i64 %385, 1
  %397 = getelementptr inbounds float, float* %5, i64 %396
  %398 = load float, float* %397, align 4, !tbaa !131
  %399 = insertelement <8 x float> undef, float %398, i32 0
  %400 = shufflevector <8 x float> %399, <8 x float> undef, <8 x i32> zeroinitializer
  %401 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %400, <8 x float> %394, <8 x float> %382)
  %402 = add nsw i64 %385, 2
  %403 = getelementptr inbounds float, float* %5, i64 %402
  %404 = load float, float* %403, align 4, !tbaa !131
  %405 = insertelement <8 x float> undef, float %404, i32 0
  %406 = shufflevector <8 x float> %405, <8 x float> undef, <8 x i32> zeroinitializer
  %407 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %406, <8 x float> %394, <8 x float> %381)
  %408 = add nsw i64 %385, 3
  %409 = getelementptr inbounds float, float* %5, i64 %408
  %410 = load float, float* %409, align 4, !tbaa !131
  %411 = insertelement <8 x float> undef, float %410, i32 0
  %412 = shufflevector <8 x float> %411, <8 x float> undef, <8 x i32> zeroinitializer
  %413 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %412, <8 x float> %394, <8 x float> %380)
  %414 = add nsw i64 %385, 4
  %415 = getelementptr inbounds float, float* %5, i64 %414
  %416 = load float, float* %415, align 4, !tbaa !131
  %417 = insertelement <8 x float> undef, float %416, i32 0
  %418 = shufflevector <8 x float> %417, <8 x float> undef, <8 x i32> zeroinitializer
  %419 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %418, <8 x float> %394, <8 x float> %379)
  %420 = add nsw i64 %385, 5
  %421 = getelementptr inbounds float, float* %5, i64 %420
  %422 = load float, float* %421, align 4, !tbaa !131
  %423 = insertelement <8 x float> undef, float %422, i32 0
  %424 = shufflevector <8 x float> %423, <8 x float> undef, <8 x i32> zeroinitializer
  %425 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %424, <8 x float> %394, <8 x float> %378)
  %426 = add nsw i64 %385, 6
  %427 = getelementptr inbounds float, float* %5, i64 %426
  %428 = load float, float* %427, align 4, !tbaa !131
  %429 = insertelement <8 x float> undef, float %428, i32 0
  %430 = shufflevector <8 x float> %429, <8 x float> undef, <8 x i32> zeroinitializer
  %431 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %430, <8 x float> %394, <8 x float> %377)
  %432 = add nsw i64 %385, 7
  %433 = getelementptr inbounds float, float* %5, i64 %432
  %434 = load float, float* %433, align 4, !tbaa !131
  %435 = insertelement <8 x float> undef, float %434, i32 0
  %436 = shufflevector <8 x float> %435, <8 x float> undef, <8 x i32> zeroinitializer
  %437 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %436, <8 x float> %394, <8 x float> %376)
  %438 = add nsw i64 %385, 8
  %439 = getelementptr inbounds float, float* %5, i64 %438
  %440 = load float, float* %439, align 4, !tbaa !131
  %441 = insertelement <8 x float> undef, float %440, i32 0
  %442 = shufflevector <8 x float> %441, <8 x float> undef, <8 x i32> zeroinitializer
  %443 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %442, <8 x float> %394, <8 x float> %375)
  %444 = add nsw i64 %385, 9
  %445 = getelementptr inbounds float, float* %5, i64 %444
  %446 = load float, float* %445, align 4, !tbaa !131
  %447 = insertelement <8 x float> undef, float %446, i32 0
  %448 = shufflevector <8 x float> %447, <8 x float> undef, <8 x i32> zeroinitializer
  %449 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %448, <8 x float> %394, <8 x float> %374)
  %450 = add nsw i64 %385, 10
  %451 = getelementptr inbounds float, float* %5, i64 %450
  %452 = load float, float* %451, align 4, !tbaa !131
  %453 = insertelement <8 x float> undef, float %452, i32 0
  %454 = shufflevector <8 x float> %453, <8 x float> undef, <8 x i32> zeroinitializer
  %455 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %454, <8 x float> %394, <8 x float> %373)
  %456 = add nsw i64 %385, 11
  %457 = getelementptr inbounds float, float* %5, i64 %456
  %458 = load float, float* %457, align 4, !tbaa !131
  %459 = insertelement <8 x float> undef, float %458, i32 0
  %460 = shufflevector <8 x float> %459, <8 x float> undef, <8 x i32> zeroinitializer
  %461 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %460, <8 x float> %394, <8 x float> %372)
  %462 = add nsw i64 %385, 12
  %463 = getelementptr inbounds float, float* %5, i64 %462
  %464 = load float, float* %463, align 4, !tbaa !131
  %465 = insertelement <8 x float> undef, float %464, i32 0
  %466 = shufflevector <8 x float> %465, <8 x float> undef, <8 x i32> zeroinitializer
  %467 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %466, <8 x float> %394, <8 x float> %371)
  %468 = add nsw i64 %385, 13
  %469 = getelementptr inbounds float, float* %5, i64 %468
  %470 = load float, float* %469, align 4, !tbaa !131
  %471 = insertelement <8 x float> undef, float %470, i32 0
  %472 = shufflevector <8 x float> %471, <8 x float> undef, <8 x i32> zeroinitializer
  %473 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %472, <8 x float> %394, <8 x float> %370)
  %474 = add nsw i64 %385, 14
  %475 = getelementptr inbounds float, float* %5, i64 %474
  %476 = load float, float* %475, align 4, !tbaa !131
  %477 = insertelement <8 x float> undef, float %476, i32 0
  %478 = shufflevector <8 x float> %477, <8 x float> undef, <8 x i32> zeroinitializer
  %479 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %478, <8 x float> %394, <8 x float> %369)
  %480 = add nsw i64 %385, 15
  %481 = getelementptr inbounds float, float* %5, i64 %480
  %482 = load float, float* %481, align 4, !tbaa !131
  %483 = insertelement <8 x float> undef, float %482, i32 0
  %484 = shufflevector <8 x float> %483, <8 x float> undef, <8 x i32> zeroinitializer
  %485 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %484, <8 x float> %394, <8 x float> %368)
  %486 = add nsw i64 %385, 16
  %487 = getelementptr inbounds float, float* %5, i64 %486
  %488 = load float, float* %487, align 4, !tbaa !131
  %489 = insertelement <8 x float> undef, float %488, i32 0
  %490 = shufflevector <8 x float> %489, <8 x float> undef, <8 x i32> zeroinitializer
  %491 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %490, <8 x float> %394, <8 x float> %367)
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv.2, 1
  %exitcond.2 = icmp eq i64 %indvars.iv.next.2, 256
  br i1 %exitcond.2, label %for_end12.2, label %for_body11.2, !prof !49

for_end12.2:                                      ; preds = %for_body11.2
  %indvars.iv.next167 = add nuw nsw i64 %indvars.iv166, 1
  %492 = add nuw nsw i32 %69, 1
  %exitcond169 = icmp eq i64 %indvars.iv.next167, 3
  br i1 %exitcond169, label %for_end6, label %for_begin7.preheader, !prof !49
}

; Function Attrs: nounwind readnone speculatable
declare <8 x float> @llvm.fmuladd.v8f32(<8 x float>, <8 x float>, <8 x float>) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #4
declare void @get_time(i32)
attributes #0 = { noinline }
attributes #1 = { norecurse nounwind }
attributes #2 = { nounwind }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { argmemonly nounwind }

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
!10 = !{!"0x2c21a50.w1.b0", !11, i64 0}
!11 = !{!"0x2c21a50.w2.b0", !12, i64 0}
!12 = !{!"0x2c21a50.w4.b0", !13, i64 0}
!13 = !{!"0x2c21a50.w8.b0", !14, i64 0}
!14 = !{!"0x2c21a50.w16.b0", !15, i64 0}
!15 = !{!"0x2c21a50.w32.b0", !16, i64 0}
!16 = !{!"0x2c21a50.w64.b0", !17, i64 0}
!17 = !{!"0x2c21a50.w128.b0", !18, i64 0}
!18 = !{!"0x2c21a50.w256.b0", !19, i64 0}
!19 = !{!"0x2c21a50.w512.b0", !20, i64 0}
!20 = !{!"0x2c21a50.w1024.b0", !21, i64 0}
!21 = !{!"int32", !22, i64 0}
!22 = !{!"0x2c21a50", !8, i64 0}
!23 = !{!24, !24, i64 0}
!24 = !{!"0x2c21a50.w1.b2", !25, i64 0}
!25 = !{!"0x2c21a50.w2.b2", !12, i64 0}
!26 = !{!27, !27, i64 0}
!27 = !{!"0x2c21a50.w1.b1", !11, i64 0}
!28 = !{!29, !29, i64 0}
!29 = !{!"0x2d691c0.w1.b0", !30, i64 0}
!30 = !{!"0x2d691c0.w2.b0", !31, i64 0}
!31 = !{!"0x2d691c0.w4.b0", !32, i64 0}
!32 = !{!"0x2d691c0.w8.b0", !33, i64 0}
!33 = !{!"0x2d691c0.w16.b0", !34, i64 0}
!34 = !{!"0x2d691c0.w32.b0", !35, i64 0}
!35 = !{!"0x2d691c0.w64.b0", !36, i64 0}
!36 = !{!"0x2d691c0.w128.b0", !37, i64 0}
!37 = !{!"0x2d691c0.w256.b0", !38, i64 0}
!38 = !{!"0x2d691c0.w512.b0", !39, i64 0}
!39 = !{!"0x2d691c0.w1024.b0", !40, i64 0}
!40 = !{!"int64", !41, i64 0}
!41 = !{!"0x2d691c0", !8, i64 0}
!42 = !{!43, !43, i64 0}
!43 = !{!"0x2d691c0.w1.b1", !30, i64 0}
!44 = !{!45, !45, i64 0}
!45 = !{!"0x2d691c0.w1.b2", !46, i64 0}
!46 = !{!"0x2d691c0.w2.b2", !31, i64 0}
!47 = !{!48, !48, i64 0}
!48 = !{!"0x2d691c0.w1.b3", !46, i64 0}
!49 = !{!"branch_weights", i32 1, i32 1048576}
!50 = !{!51, !51, i64 0}
!51 = !{!"0x2653820.w4.b0", !52, i64 0}
!52 = !{!"0x2653820.w8.b0", !53, i64 0}
!53 = !{!"0x2653820.w16.b0", !54, i64 0}
!54 = !{!"0x2653820.w32.b0", !55, i64 0}
!55 = !{!"0x2653820.w64.b0", !56, i64 0}
!56 = !{!"0x2653820.w128.b0", !57, i64 0}
!57 = !{!"0x2653820.w256.b0", !58, i64 0}
!58 = !{!"0x2653820.w512.b0", !59, i64 0}
!59 = !{!"0x2653820.w1024.b0", !60, i64 0}
!60 = !{!"int64", !61, i64 0}
!61 = !{!"0x2653820", !8, i64 0}
!62 = !{!63, !63, i64 0}
!63 = !{!"0x2d29520.w1.b0", !64, i64 0}
!64 = !{!"0x2d29520.w2.b0", !65, i64 0}
!65 = !{!"0x2d29520.w4.b0", !66, i64 0}
!66 = !{!"0x2d29520.w8.b0", !67, i64 0}
!67 = !{!"0x2d29520.w16.b0", !68, i64 0}
!68 = !{!"0x2d29520.w32.b0", !69, i64 0}
!69 = !{!"0x2d29520.w64.b0", !70, i64 0}
!70 = !{!"0x2d29520.w128.b0", !71, i64 0}
!71 = !{!"0x2d29520.w256.b0", !72, i64 0}
!72 = !{!"0x2d29520.w512.b0", !73, i64 0}
!73 = !{!"0x2d29520.w1024.b0", !74, i64 0}
!74 = !{!"int64", !75, i64 0}
!75 = !{!"0x2d29520", !8, i64 0}
!76 = !{!77, !77, i64 0}
!77 = !{!"0x2d29520.w1.b1", !64, i64 0}
!78 = !{!79, !79, i64 0}
!79 = !{!"0x2d29520.w1.b2", !80, i64 0}
!80 = !{!"0x2d29520.w2.b2", !65, i64 0}
!81 = !{!82, !82, i64 0}
!82 = !{!"0x2d29520.w1.b3", !80, i64 0}
!83 = !{!84, !84, i64 0}
!84 = !{!"0x2c32050.w4.b0", !85, i64 0}
!85 = !{!"0x2c32050.w8.b0", !86, i64 0}
!86 = !{!"0x2c32050.w16.b0", !87, i64 0}
!87 = !{!"0x2c32050.w32.b0", !88, i64 0}
!88 = !{!"0x2c32050.w64.b0", !89, i64 0}
!89 = !{!"0x2c32050.w128.b0", !90, i64 0}
!90 = !{!"0x2c32050.w256.b0", !91, i64 0}
!91 = !{!"0x2c32050.w512.b0", !92, i64 0}
!92 = !{!"0x2c32050.w1024.b0", !93, i64 0}
!93 = !{!"int64", !94, i64 0}
!94 = !{!"0x2c32050", !8, i64 0}
!95 = !{!96, !96, i64 0}
!96 = !{!"0x2c36190.w1.b0", !97, i64 0}
!97 = !{!"0x2c36190.w2.b0", !98, i64 0}
!98 = !{!"0x2c36190.w4.b0", !99, i64 0}
!99 = !{!"0x2c36190.w8.b0", !100, i64 0}
!100 = !{!"0x2c36190.w16.b0", !101, i64 0}
!101 = !{!"0x2c36190.w32.b0", !102, i64 0}
!102 = !{!"0x2c36190.w64.b0", !103, i64 0}
!103 = !{!"0x2c36190.w128.b0", !104, i64 0}
!104 = !{!"0x2c36190.w256.b0", !105, i64 0}
!105 = !{!"0x2c36190.w512.b0", !106, i64 0}
!106 = !{!"0x2c36190.w1024.b0", !107, i64 0}
!107 = !{!"int64", !108, i64 0}
!108 = !{!"0x2c36190", !8, i64 0}
!109 = !{!110, !110, i64 0}
!110 = !{!"0x2c36190.w1.b1", !97, i64 0}
!111 = !{!112, !112, i64 0}
!112 = !{!"0x2c36190.w1.b2", !113, i64 0}
!113 = !{!"0x2c36190.w2.b2", !98, i64 0}
!114 = !{!115, !115, i64 0}
!115 = !{!"0x2c36190.w1.b3", !113, i64 0}
!116 = !{!117, !117, i64 0}
!117 = !{!"0x2c35ee0.w4.b0", !118, i64 0}
!118 = !{!"0x2c35ee0.w8.b0", !119, i64 0}
!119 = !{!"0x2c35ee0.w16.b0", !120, i64 0}
!120 = !{!"0x2c35ee0.w32.b0", !121, i64 0}
!121 = !{!"0x2c35ee0.w64.b0", !122, i64 0}
!122 = !{!"0x2c35ee0.w128.b0", !123, i64 0}
!123 = !{!"0x2c35ee0.w256.b0", !124, i64 0}
!124 = !{!"0x2c35ee0.w512.b0", !125, i64 0}
!125 = !{!"0x2c35ee0.w1024.b0", !126, i64 0}
!126 = !{!"int64", !127, i64 0}
!127 = !{!"0x2c35ee0", !8, i64 0}
!128 = !{!129, !129, i64 0}
!129 = !{!"float32", !130, i64 0}
!130 = !{!"0x2d289f0", !8, i64 0}
!131 = !{!132, !132, i64 0}
!132 = !{!"float32", !133, i64 0}
!133 = !{!"0x2b6de20", !8, i64 0}
!134 = !{!135, !135, i64 0}
!135 = !{!"float32", !136, i64 0}
!136 = !{!"0x2c21080", !8, i64 0}
!137 = !{!138, !138, i64 0}
!138 = !{!"float32", !139, i64 0}
!139 = !{!"0x2c31b80", !8, i64 0}
!140 = !{!141, !141, i64 0}
!141 = !{!"0x2c1d370.w8.b0", !142, i64 0}
!142 = !{!"0x2c1d370.w16.b0", !143, i64 0}
!143 = !{!"0x2c1d370.w32.b0", !144, i64 0}
!144 = !{!"0x2c1d370.w64.b0", !145, i64 0}
!145 = !{!"0x2c1d370.w128.b0", !146, i64 0}
!146 = !{!"0x2c1d370.w256.b0", !147, i64 0}
!147 = !{!"0x2c1d370.w512.b0", !148, i64 0}
!148 = !{!"0x2c1d370.w1024.b0", !149, i64 0}
!149 = !{!"float32", !150, i64 0}
!150 = !{!"0x2c1d370", !8, i64 0}
!151 = !{!149, !149, i64 0}
!152 = !{!153, !153, i64 0}
!153 = !{!"float32", !154, i64 0}
!154 = !{!"0x2d28c90", !8, i64 0}
