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
@.str.8 = private constant [97 x i8] c"Assert fail: (512 == int32(arg0.shape[1])), Argument arg0.shape[1] has an unsatisfied constraint\00", align 1
@.str.9 = private constant [96 x i8] c"Assert fail: (17 == int32(arg0.shape[2])), Argument arg0.shape[2] has an unsatisfied constraint\00", align 1
@.str.10 = private constant [96 x i8] c"Assert fail: (17 == int32(arg0.shape[3])), Argument arg0.shape[3] has an unsatisfied constraint\00", align 1
@.str.11 = private constant [200 x i8] c"Assert fail: ((((1 == int32(arg0.strides[3])) && (17 == int32(arg0.strides[2]))) && (289 == int32(arg0.strides[1]))) && (147968 == int32(arg0.strides[0]))), arg0.strides: expected to be compact array\00", align 1
@.str.12 = private constant [112 x i8] c"Assert fail: ((uint64)0 == tvm_struct_get(arg0, 0, 8)), Argument arg0.byte_offset has an unsatisfied constraint\00", align 1
@.str.13 = private constant [81 x i8] c"Assert fail: (4 == tvm_struct_get(arg1, 0, 4)), arg1.ndim is expected to equal 4\00", align 1
@.str.14 = private constant [186 x i8] c"Assert fail: (((tvm_struct_get(arg1, 0, 5) == (uint8)2) && (tvm_struct_get(arg1, 0, 6) == (uint8)32)) && (tvm_struct_get(arg1, 0, 7) == (uint16)1)), arg1.dtype is expected to be float32\00", align 1
@.str.15 = private constant [98 x i8] c"Assert fail: (1024 == int32(arg1.shape[0])), Argument arg1.shape[0] has an unsatisfied constraint\00", align 1
@.str.16 = private constant [97 x i8] c"Assert fail: (512 == int32(arg1.shape[1])), Argument arg1.shape[1] has an unsatisfied constraint\00", align 1
@.str.17 = private constant [95 x i8] c"Assert fail: (1 == int32(arg1.shape[2])), Argument arg1.shape[2] has an unsatisfied constraint\00", align 1
@.str.18 = private constant [95 x i8] c"Assert fail: (1 == int32(arg1.shape[3])), Argument arg1.shape[3] has an unsatisfied constraint\00", align 1
@.str.19 = private constant [194 x i8] c"Assert fail: ((((1 == int32(arg1.strides[3])) && (1 == int32(arg1.strides[2]))) && (1 == int32(arg1.strides[1]))) && (512 == int32(arg1.strides[0]))), arg1.strides: expected to be compact array\00", align 1
@.str.20 = private constant [112 x i8] c"Assert fail: ((uint64)0 == tvm_struct_get(arg1, 0, 8)), Argument arg1.byte_offset has an unsatisfied constraint\00", align 1
@.str.21 = private constant [105 x i8] c"Assert fail: (1 == tvm_struct_get(arg1, 0, 10)), Argument arg1.device_type has an unsatisfied constraint\00", align 1
@.str.22 = private constant [107 x i8] c"Assert fail: (dev_id == tvm_struct_get(arg1, 0, 9)), Argument arg1.device_id has an unsatisfied constraint\00", align 1
@.str.23 = private constant [81 x i8] c"Assert fail: (4 == tvm_struct_get(arg2, 0, 4)), arg2.ndim is expected to equal 4\00", align 1
@.str.24 = private constant [186 x i8] c"Assert fail: (((tvm_struct_get(arg2, 0, 5) == (uint8)2) && (tvm_struct_get(arg2, 0, 6) == (uint8)32)) && (tvm_struct_get(arg2, 0, 7) == (uint16)1)), arg2.dtype is expected to be float32\00", align 1
@.str.25 = private constant [95 x i8] c"Assert fail: (1 == int32(arg2.shape[0])), Argument arg2.shape[0] has an unsatisfied constraint\00", align 1
@.str.26 = private constant [98 x i8] c"Assert fail: (1024 == int32(arg2.shape[1])), Argument arg2.shape[1] has an unsatisfied constraint\00", align 1
@.str.27 = private constant [96 x i8] c"Assert fail: (17 == int32(arg2.shape[2])), Argument arg2.shape[2] has an unsatisfied constraint\00", align 1
@.str.28 = private constant [96 x i8] c"Assert fail: (17 == int32(arg2.shape[3])), Argument arg2.shape[3] has an unsatisfied constraint\00", align 1
@.str.29 = private constant [200 x i8] c"Assert fail: ((((1 == int32(arg2.strides[3])) && (17 == int32(arg2.strides[2]))) && (289 == int32(arg2.strides[1]))) && (295936 == int32(arg2.strides[0]))), arg2.strides: expected to be compact array\00", align 1
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
  %71 = icmp eq i32 %70, 512
  br i1 %71, label %assert_end16, label %assert_fail15, !prof !5

assert_fail15:                                    ; preds = %assert_end14
  %72 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %72(i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.8, i64 0, i64 0))
  ret i32 -1

assert_end16:                                     ; preds = %assert_end14
  %73 = getelementptr inbounds i64, i64* %21, i64 2
  %74 = load i64, i64* %73, align 8, !tbaa !44
  %75 = trunc i64 %74 to i32
  %76 = icmp eq i32 %75, 17
  br i1 %76, label %assert_end18, label %assert_fail17, !prof !5

assert_fail17:                                    ; preds = %assert_end16
  %77 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %77(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.9, i64 0, i64 0))
  ret i32 -1

assert_end18:                                     ; preds = %assert_end16
  %78 = getelementptr inbounds i64, i64* %21, i64 3
  %79 = load i64, i64* %78, align 8, !tbaa !47
  %80 = trunc i64 %79 to i32
  %81 = icmp eq i32 %80, 17
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
  %87 = icmp eq <4 x i32> %86, <i32 147968, i32 289, i32 17, i32 1>
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
  %112 = icmp eq i32 %111, 1024
  br i1 %112, label %assert_end30, label %assert_fail29, !prof !5

assert_fail29:                                    ; preds = %assert_end28
  %113 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %113(i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.15, i64 0, i64 0))
  ret i32 -1

assert_end30:                                     ; preds = %assert_end28
  %114 = getelementptr inbounds i64, i64* %31, i64 1
  %115 = load i64, i64* %114, align 8, !tbaa !76
  %116 = trunc i64 %115 to i32
  %117 = icmp eq i32 %116, 512
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
  %133 = icmp eq <4 x i32> %132, <i32 512, i32 1, i32 1, i32 1>
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
  %171 = icmp eq i32 %170, 1024
  br i1 %171, label %assert_end54, label %assert_fail53, !prof !5

assert_fail53:                                    ; preds = %assert_end52
  %172 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %172(i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.26, i64 0, i64 0))
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
  %187 = icmp eq <4 x i32> %186, <i32 295936, i32 289, i32 17, i32 1>
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
  %5 = tail call i8* %4(i32 1, i32 %3, i64 591872, i32 2, i32 32)
  %6 = load i8* (i32, i32, i64, i32, i32)*, i8* (i32, i32, i64, i32, i32)** @__TVMBackendAllocWorkspace, align 8, !tbaa !6
  %7 = tail call i8* %6(i32 1, i32 %3, i64 2097152, i32 2, i32 32)
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
  %10 = add nsw i32 %9, 16
  %11 = sdiv i32 %10, %9
  %12 = add nsw i32 %0, 1
  %13 = mul nsw i32 %11, %12
  %14 = icmp slt i32 %13, 17
  %15 = select i1 %14, i32 %13, i32 17
  %16 = mul nsw i32 %11, %0
  %17 = icmp slt i32 %16, 17
  %18 = select i1 %17, i32 %16, i32 17
  %19 = icmp slt i32 %18, %15
  br i1 %19, label %for_begin1.preheader.preheader, label %for_end, !prof !5

for_begin1.preheader.preheader:                   ; preds = %entry
  %20 = add i32 %18, 1
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %21, -1
  %23 = sext i32 %15 to i64
  br label %for_begin1.preheader

for_begin1.preheader:                             ; preds = %for_begin1.preheader.preheader, %for_end3
  %indvars.iv = phi i64 [ %22, %for_begin1.preheader.preheader ], [ %indvars.iv.next, %for_end3 ]
  %24 = mul nsw i64 %indvars.iv, 8704
  %25 = mul nsw i64 %indvars.iv, 17
  br label %for_begin4.preheader

for_end:                                          ; preds = %for_end3, %entry
  ret i32 0

for_begin4.preheader:                             ; preds = %for_begin4.preheader, %for_begin1.preheader
  %indvar7 = phi i64 [ 0, %for_begin1.preheader ], [ %indvar.next8.1, %for_begin4.preheader ]
  %26 = mul nuw nsw i64 %indvar7, 17
  %27 = add nsw i64 %26, %24
  %28 = mul nuw nsw i64 %indvar7, 289
  %29 = add nsw i64 %28, %25
  %30 = getelementptr inbounds float, float* %7, i64 %29
  %31 = getelementptr inbounds float, float* %4, i64 %27
  %32 = bitcast float* %30 to <8 x i32>*
  %33 = load <8 x i32>, <8 x i32>* %32, align 4, !tbaa !128
  %34 = bitcast float* %31 to <8 x i32>*
  store <8 x i32> %33, <8 x i32>* %34, align 4, !tbaa !131
  %35 = add nsw i64 %27, 8
  %36 = add nsw i64 %29, 8
  %37 = getelementptr inbounds float, float* %7, i64 %36
  %38 = getelementptr inbounds float, float* %4, i64 %35
  %39 = bitcast float* %37 to <8 x i32>*
  %40 = load <8 x i32>, <8 x i32>* %39, align 4, !tbaa !128
  %41 = bitcast float* %38 to <8 x i32>*
  store <8 x i32> %40, <8 x i32>* %41, align 4, !tbaa !131
  %42 = add nsw i64 %27, 16
  %43 = add nsw i64 %29, 16
  %44 = getelementptr inbounds float, float* %7, i64 %43
  %45 = bitcast float* %44 to i32*
  %46 = load i32, i32* %45, align 4, !tbaa !128
  %47 = getelementptr inbounds float, float* %4, i64 %42
  %48 = bitcast float* %47 to i32*
  store i32 %46, i32* %48, align 4, !tbaa !131
  %indvar.next8 = or i64 %indvar7, 1
  %49 = mul nuw nsw i64 %indvar.next8, 17
  %50 = add nsw i64 %49, %24
  %51 = mul nuw nsw i64 %indvar.next8, 289
  %52 = add nsw i64 %51, %25
  %53 = getelementptr inbounds float, float* %7, i64 %52
  %54 = getelementptr inbounds float, float* %4, i64 %50
  %55 = bitcast float* %53 to <8 x i32>*
  %56 = load <8 x i32>, <8 x i32>* %55, align 4, !tbaa !128
  %57 = bitcast float* %54 to <8 x i32>*
  store <8 x i32> %56, <8 x i32>* %57, align 4, !tbaa !131
  %58 = add nsw i64 %50, 8
  %59 = add nsw i64 %52, 8
  %60 = getelementptr inbounds float, float* %7, i64 %59
  %61 = getelementptr inbounds float, float* %4, i64 %58
  %62 = bitcast float* %60 to <8 x i32>*
  %63 = load <8 x i32>, <8 x i32>* %62, align 4, !tbaa !128
  %64 = bitcast float* %61 to <8 x i32>*
  store <8 x i32> %63, <8 x i32>* %64, align 4, !tbaa !131
  %65 = add nsw i64 %50, 16
  %66 = add nsw i64 %52, 16
  %67 = getelementptr inbounds float, float* %7, i64 %66
  %68 = bitcast float* %67 to i32*
  %69 = load i32, i32* %68, align 4, !tbaa !128
  %70 = getelementptr inbounds float, float* %4, i64 %65
  %71 = bitcast float* %70 to i32*
  store i32 %69, i32* %71, align 4, !tbaa !131
  %indvar.next8.1 = add nuw nsw i64 %indvar7, 2
  %exitcond.1 = icmp eq i64 %indvar.next8.1, 512
  br i1 %exitcond.1, label %for_end3, label %for_begin4.preheader, !prof !49

for_end3:                                         ; preds = %for_begin4.preheader
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %72 = icmp slt i64 %indvars.iv.next, %23
  br i1 %72, label %for_begin1.preheader, label %for_end, !prof !5
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
  %10 = add nsw i32 %9, 127
  %11 = sdiv i32 %10, %9
  %12 = add nsw i32 %0, 1
  %13 = mul nsw i32 %11, %12
  %14 = icmp slt i32 %13, 128
  %15 = select i1 %14, i32 %13, i32 128
  %16 = mul nsw i32 %11, %0
  %17 = icmp slt i32 %16, 128
  %18 = select i1 %17, i32 %16, i32 128
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
  %24 = phi i32 [ %18, %for_begin1.preheader.preheader ], [ %63, %for_end3 ]
  %25 = shl nsw i32 %24, 12
  %26 = sext i32 %25 to i64
  br label %for_body2

for_end:                                          ; preds = %for_end3, %entry
  ret i32 0

for_body2:                                        ; preds = %for_body2, %for_begin1.preheader
  %indvars.iv = phi i64 [ 0, %for_begin1.preheader ], [ %indvars.iv.next, %for_body2 ]
  %27 = shl i64 %indvars.iv, 3
  %28 = add nsw i64 %27, %26
  %29 = add nuw nsw i64 %indvars.iv, %26
  %30 = add nsw i64 %29, 512
  %31 = add nsw i64 %29, 1024
  %32 = add nsw i64 %29, 1536
  %33 = add nsw i64 %29, 2048
  %34 = add nsw i64 %29, 2560
  %35 = add nsw i64 %29, 3072
  %36 = add nsw i64 %29, 3584
  %37 = getelementptr inbounds float, float* %7, i64 %29
  %38 = load float, float* %37, align 4, !tbaa !134
  %39 = insertelement <8 x float> undef, float %38, i32 0
  %40 = getelementptr inbounds float, float* %7, i64 %30
  %41 = load float, float* %40, align 4, !tbaa !134
  %42 = insertelement <8 x float> %39, float %41, i32 1
  %43 = getelementptr inbounds float, float* %7, i64 %31
  %44 = load float, float* %43, align 4, !tbaa !134
  %45 = insertelement <8 x float> %42, float %44, i32 2
  %46 = getelementptr inbounds float, float* %7, i64 %32
  %47 = load float, float* %46, align 4, !tbaa !134
  %48 = insertelement <8 x float> %45, float %47, i32 3
  %49 = getelementptr inbounds float, float* %7, i64 %33
  %50 = load float, float* %49, align 4, !tbaa !134
  %51 = insertelement <8 x float> %48, float %50, i32 4
  %52 = getelementptr inbounds float, float* %7, i64 %34
  %53 = load float, float* %52, align 4, !tbaa !134
  %54 = insertelement <8 x float> %51, float %53, i32 5
  %55 = getelementptr inbounds float, float* %7, i64 %35
  %56 = load float, float* %55, align 4, !tbaa !134
  %57 = insertelement <8 x float> %54, float %56, i32 6
  %58 = getelementptr inbounds float, float* %7, i64 %36
  %59 = load float, float* %58, align 4, !tbaa !134
  %60 = insertelement <8 x float> %57, float %59, i32 7
  %61 = getelementptr inbounds float, float* %4, i64 %28
  %62 = bitcast float* %61 to <8 x float>*
  store <8 x float> %60, <8 x float>* %62, align 32, !tbaa !137
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 512
  br i1 %exitcond, label %for_end3, label %for_body2, !prof !49

for_end3:                                         ; preds = %for_body2
  %indvars.iv.next5 = add nsw i64 %indvars.iv4, 1
  %63 = add nsw i32 %24, 1
  %64 = icmp slt i64 %indvars.iv.next5, %23
  br i1 %64, label %for_begin1.preheader, label %for_end, !prof !5
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
  %14 = add nsw i32 %13, 2175
  %15 = sdiv i32 %14, %13
  %16 = add nsw i32 %0, 1
  %17 = mul nsw i32 %15, %16
  %18 = icmp slt i32 %17, 2176
  %19 = select i1 %18, i32 %17, i32 2176
  %20 = mul nsw i32 %15, %0
  %21 = icmp slt i32 %20, 2176
  %22 = select i1 %21, i32 %20, i32 2176
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

for_body:                                         ; preds = %for_body.lr.ph, %for_end6
  %57 = phi i32 [ %22, %for_body.lr.ph ], [ %229, %for_end6 ]
  %58 = srem i32 %57, 17
  %59 = mul nsw i32 %58, 8704
  %60 = sdiv i32 %57, 17
  %61 = shl i32 %60, 12
  %62 = sext i32 %59 to i64
  %63 = sext i32 %61 to i64
  call void @llvm.memset.p0i8.i64(i8* nonnull align 32 %56, i8 0, i64 544, i1 false)
  br label %for_body2

for_end:                                          ; preds = %for_end6, %entry
  ret i32 0

for_begin4.preheader:                             ; preds = %for_body2
  store <8 x float> %95, <8 x float>* %.sub, align 32, !tbaa !140
  store <8 x float> %101, <8 x float>* %25, align 32, !tbaa !140
  store <8 x float> %107, <8 x float>* %27, align 32, !tbaa !140
  store <8 x float> %113, <8 x float>* %29, align 32, !tbaa !140
  store <8 x float> %119, <8 x float>* %31, align 32, !tbaa !140
  store <8 x float> %125, <8 x float>* %33, align 32, !tbaa !140
  store <8 x float> %131, <8 x float>* %35, align 32, !tbaa !140
  store <8 x float> %137, <8 x float>* %37, align 32, !tbaa !140
  store <8 x float> %143, <8 x float>* %39, align 32, !tbaa !140
  store <8 x float> %149, <8 x float>* %41, align 32, !tbaa !140
  store <8 x float> %155, <8 x float>* %43, align 32, !tbaa !140
  store <8 x float> %161, <8 x float>* %45, align 32, !tbaa !140
  store <8 x float> %167, <8 x float>* %47, align 32, !tbaa !140
  store <8 x float> %173, <8 x float>* %49, align 32, !tbaa !140
  store <8 x float> %179, <8 x float>* %51, align 32, !tbaa !140
  store <8 x float> %185, <8 x float>* %53, align 32, !tbaa !140
  store <8 x float> %191, <8 x float>* %55, align 32, !tbaa !140
  %64 = mul nsw i32 %58, 17
  %65 = mul nsw i32 %60, 2312
  %66 = add nsw i32 %65, %64
  br label %for_body5

for_body2:                                        ; preds = %for_body2, %for_body
  %indvars.iv = phi i64 [ 0, %for_body ], [ %indvars.iv.next, %for_body2 ]
  %67 = phi <8 x float> [ zeroinitializer, %for_body ], [ %191, %for_body2 ]
  %68 = phi <8 x float> [ zeroinitializer, %for_body ], [ %185, %for_body2 ]
  %69 = phi <8 x float> [ zeroinitializer, %for_body ], [ %179, %for_body2 ]
  %70 = phi <8 x float> [ zeroinitializer, %for_body ], [ %173, %for_body2 ]
  %71 = phi <8 x float> [ zeroinitializer, %for_body ], [ %167, %for_body2 ]
  %72 = phi <8 x float> [ zeroinitializer, %for_body ], [ %161, %for_body2 ]
  %73 = phi <8 x float> [ zeroinitializer, %for_body ], [ %155, %for_body2 ]
  %74 = phi <8 x float> [ zeroinitializer, %for_body ], [ %149, %for_body2 ]
  %75 = phi <8 x float> [ zeroinitializer, %for_body ], [ %143, %for_body2 ]
  %76 = phi <8 x float> [ zeroinitializer, %for_body ], [ %137, %for_body2 ]
  %77 = phi <8 x float> [ zeroinitializer, %for_body ], [ %131, %for_body2 ]
  %78 = phi <8 x float> [ zeroinitializer, %for_body ], [ %125, %for_body2 ]
  %79 = phi <8 x float> [ zeroinitializer, %for_body ], [ %119, %for_body2 ]
  %80 = phi <8 x float> [ zeroinitializer, %for_body ], [ %113, %for_body2 ]
  %81 = phi <8 x float> [ zeroinitializer, %for_body ], [ %107, %for_body2 ]
  %82 = phi <8 x float> [ zeroinitializer, %for_body ], [ %101, %for_body2 ]
  %83 = phi <8 x float> [ zeroinitializer, %for_body ], [ %95, %for_body2 ]
  %84 = mul nuw nsw i64 %indvars.iv, 17
  %85 = add nsw i64 %84, %62
  %86 = getelementptr inbounds float, float* %5, i64 %85
  %87 = load float, float* %86, align 4, !tbaa !131
  %88 = insertelement <8 x float> undef, float %87, i32 0
  %89 = shufflevector <8 x float> %88, <8 x float> undef, <8 x i32> zeroinitializer
  %90 = shl i64 %indvars.iv, 3
  %91 = add nuw nsw i64 %90, %63
  %92 = getelementptr inbounds float, float* %8, i64 %91
  %93 = bitcast float* %92 to <8 x float>*
  %94 = load <8 x float>, <8 x float>* %93, align 32, !tbaa !137
  %95 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %89, <8 x float> %94, <8 x float> %83)
  %96 = add nsw i64 %85, 1
  %97 = getelementptr inbounds float, float* %5, i64 %96
  %98 = load float, float* %97, align 4, !tbaa !131
  %99 = insertelement <8 x float> undef, float %98, i32 0
  %100 = shufflevector <8 x float> %99, <8 x float> undef, <8 x i32> zeroinitializer
  %101 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %100, <8 x float> %94, <8 x float> %82)
  %102 = add nsw i64 %85, 2
  %103 = getelementptr inbounds float, float* %5, i64 %102
  %104 = load float, float* %103, align 4, !tbaa !131
  %105 = insertelement <8 x float> undef, float %104, i32 0
  %106 = shufflevector <8 x float> %105, <8 x float> undef, <8 x i32> zeroinitializer
  %107 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %106, <8 x float> %94, <8 x float> %81)
  %108 = add nsw i64 %85, 3
  %109 = getelementptr inbounds float, float* %5, i64 %108
  %110 = load float, float* %109, align 4, !tbaa !131
  %111 = insertelement <8 x float> undef, float %110, i32 0
  %112 = shufflevector <8 x float> %111, <8 x float> undef, <8 x i32> zeroinitializer
  %113 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %112, <8 x float> %94, <8 x float> %80)
  %114 = add nsw i64 %85, 4
  %115 = getelementptr inbounds float, float* %5, i64 %114
  %116 = load float, float* %115, align 4, !tbaa !131
  %117 = insertelement <8 x float> undef, float %116, i32 0
  %118 = shufflevector <8 x float> %117, <8 x float> undef, <8 x i32> zeroinitializer
  %119 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %118, <8 x float> %94, <8 x float> %79)
  %120 = add nsw i64 %85, 5
  %121 = getelementptr inbounds float, float* %5, i64 %120
  %122 = load float, float* %121, align 4, !tbaa !131
  %123 = insertelement <8 x float> undef, float %122, i32 0
  %124 = shufflevector <8 x float> %123, <8 x float> undef, <8 x i32> zeroinitializer
  %125 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %124, <8 x float> %94, <8 x float> %78)
  %126 = add nsw i64 %85, 6
  %127 = getelementptr inbounds float, float* %5, i64 %126
  %128 = load float, float* %127, align 4, !tbaa !131
  %129 = insertelement <8 x float> undef, float %128, i32 0
  %130 = shufflevector <8 x float> %129, <8 x float> undef, <8 x i32> zeroinitializer
  %131 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %130, <8 x float> %94, <8 x float> %77)
  %132 = add nsw i64 %85, 7
  %133 = getelementptr inbounds float, float* %5, i64 %132
  %134 = load float, float* %133, align 4, !tbaa !131
  %135 = insertelement <8 x float> undef, float %134, i32 0
  %136 = shufflevector <8 x float> %135, <8 x float> undef, <8 x i32> zeroinitializer
  %137 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %136, <8 x float> %94, <8 x float> %76)
  %138 = add nsw i64 %85, 8
  %139 = getelementptr inbounds float, float* %5, i64 %138
  %140 = load float, float* %139, align 4, !tbaa !131
  %141 = insertelement <8 x float> undef, float %140, i32 0
  %142 = shufflevector <8 x float> %141, <8 x float> undef, <8 x i32> zeroinitializer
  %143 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %142, <8 x float> %94, <8 x float> %75)
  %144 = add nsw i64 %85, 9
  %145 = getelementptr inbounds float, float* %5, i64 %144
  %146 = load float, float* %145, align 4, !tbaa !131
  %147 = insertelement <8 x float> undef, float %146, i32 0
  %148 = shufflevector <8 x float> %147, <8 x float> undef, <8 x i32> zeroinitializer
  %149 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %148, <8 x float> %94, <8 x float> %74)
  %150 = add nsw i64 %85, 10
  %151 = getelementptr inbounds float, float* %5, i64 %150
  %152 = load float, float* %151, align 4, !tbaa !131
  %153 = insertelement <8 x float> undef, float %152, i32 0
  %154 = shufflevector <8 x float> %153, <8 x float> undef, <8 x i32> zeroinitializer
  %155 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %154, <8 x float> %94, <8 x float> %73)
  %156 = add nsw i64 %85, 11
  %157 = getelementptr inbounds float, float* %5, i64 %156
  %158 = load float, float* %157, align 4, !tbaa !131
  %159 = insertelement <8 x float> undef, float %158, i32 0
  %160 = shufflevector <8 x float> %159, <8 x float> undef, <8 x i32> zeroinitializer
  %161 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %160, <8 x float> %94, <8 x float> %72)
  %162 = add nsw i64 %85, 12
  %163 = getelementptr inbounds float, float* %5, i64 %162
  %164 = load float, float* %163, align 4, !tbaa !131
  %165 = insertelement <8 x float> undef, float %164, i32 0
  %166 = shufflevector <8 x float> %165, <8 x float> undef, <8 x i32> zeroinitializer
  %167 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %166, <8 x float> %94, <8 x float> %71)
  %168 = add nsw i64 %85, 13
  %169 = getelementptr inbounds float, float* %5, i64 %168
  %170 = load float, float* %169, align 4, !tbaa !131
  %171 = insertelement <8 x float> undef, float %170, i32 0
  %172 = shufflevector <8 x float> %171, <8 x float> undef, <8 x i32> zeroinitializer
  %173 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %172, <8 x float> %94, <8 x float> %70)
  %174 = add nsw i64 %85, 14
  %175 = getelementptr inbounds float, float* %5, i64 %174
  %176 = load float, float* %175, align 4, !tbaa !131
  %177 = insertelement <8 x float> undef, float %176, i32 0
  %178 = shufflevector <8 x float> %177, <8 x float> undef, <8 x i32> zeroinitializer
  %179 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %178, <8 x float> %94, <8 x float> %69)
  %180 = add nsw i64 %85, 15
  %181 = getelementptr inbounds float, float* %5, i64 %180
  %182 = load float, float* %181, align 4, !tbaa !131
  %183 = insertelement <8 x float> undef, float %182, i32 0
  %184 = shufflevector <8 x float> %183, <8 x float> undef, <8 x i32> zeroinitializer
  %185 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %184, <8 x float> %94, <8 x float> %68)
  %186 = add nsw i64 %85, 16
  %187 = getelementptr inbounds float, float* %5, i64 %186
  %188 = load float, float* %187, align 4, !tbaa !131
  %189 = insertelement <8 x float> undef, float %188, i32 0
  %190 = shufflevector <8 x float> %189, <8 x float> undef, <8 x i32> zeroinitializer
  %191 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %190, <8 x float> %94, <8 x float> %67)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 512
  br i1 %exitcond, label %for_begin4.preheader, label %for_body2, !prof !49

for_body5:                                        ; preds = %for_body5, %for_begin4.preheader
  %indvars.iv56 = phi i64 [ 0, %for_begin4.preheader ], [ %indvars.iv.next57, %for_body5 ]
  %192 = trunc i64 %indvars.iv56 to i32
  %193 = add nsw i32 %66, %192
  %194 = add nsw i32 %193, 289
  %195 = add nsw i32 %193, 578
  %196 = add nsw i32 %193, 867
  %197 = add nsw i32 %193, 1156
  %198 = add nsw i32 %193, 1445
  %199 = add nsw i32 %193, 1734
  %200 = add nsw i32 %193, 2023
  %201 = shl nsw i64 %indvars.iv56, 3
  %202 = getelementptr inbounds [17 x <8 x float>], [17 x <8 x float>]* %3, i64 0, i64 0, i64 %201
  %203 = bitcast float* %202 to <8 x float>*
  %204 = load <8 x float>, <8 x float>* %203, align 32, !tbaa !151
  %205 = sext i32 %193 to i64
  %206 = getelementptr inbounds float, float* %11, i64 %205
  %207 = extractelement <8 x float> %204, i64 0
  store float %207, float* %206, align 4, !tbaa !152
  %208 = sext i32 %194 to i64
  %209 = getelementptr inbounds float, float* %11, i64 %208
  %210 = extractelement <8 x float> %204, i64 1
  store float %210, float* %209, align 4, !tbaa !152
  %211 = sext i32 %195 to i64
  %212 = getelementptr inbounds float, float* %11, i64 %211
  %213 = extractelement <8 x float> %204, i64 2
  store float %213, float* %212, align 4, !tbaa !152
  %214 = sext i32 %196 to i64
  %215 = getelementptr inbounds float, float* %11, i64 %214
  %216 = extractelement <8 x float> %204, i64 3
  store float %216, float* %215, align 4, !tbaa !152
  %217 = sext i32 %197 to i64
  %218 = getelementptr inbounds float, float* %11, i64 %217
  %219 = extractelement <8 x float> %204, i64 4
  store float %219, float* %218, align 4, !tbaa !152
  %220 = sext i32 %198 to i64
  %221 = getelementptr inbounds float, float* %11, i64 %220
  %222 = extractelement <8 x float> %204, i64 5
  store float %222, float* %221, align 4, !tbaa !152
  %223 = sext i32 %199 to i64
  %224 = getelementptr inbounds float, float* %11, i64 %223
  %225 = extractelement <8 x float> %204, i64 6
  store float %225, float* %224, align 4, !tbaa !152
  %226 = sext i32 %200 to i64
  %227 = getelementptr inbounds float, float* %11, i64 %226
  %228 = extractelement <8 x float> %204, i64 7
  store float %228, float* %227, align 4, !tbaa !152
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1
  %exitcond58 = icmp eq i64 %indvars.iv.next57, 17
  br i1 %exitcond58, label %for_end6, label %for_body5, !prof !49

for_end6:                                         ; preds = %for_body5
  %229 = add nsw i32 %57, 1
  %230 = icmp slt i32 %229, %19
  br i1 %230, label %for_body, label %for_end, !prof !5
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
!10 = !{!"0x3263ef0.w1.b0", !11, i64 0}
!11 = !{!"0x3263ef0.w2.b0", !12, i64 0}
!12 = !{!"0x3263ef0.w4.b0", !13, i64 0}
!13 = !{!"0x3263ef0.w8.b0", !14, i64 0}
!14 = !{!"0x3263ef0.w16.b0", !15, i64 0}
!15 = !{!"0x3263ef0.w32.b0", !16, i64 0}
!16 = !{!"0x3263ef0.w64.b0", !17, i64 0}
!17 = !{!"0x3263ef0.w128.b0", !18, i64 0}
!18 = !{!"0x3263ef0.w256.b0", !19, i64 0}
!19 = !{!"0x3263ef0.w512.b0", !20, i64 0}
!20 = !{!"0x3263ef0.w1024.b0", !21, i64 0}
!21 = !{!"int32", !22, i64 0}
!22 = !{!"0x3263ef0", !8, i64 0}
!23 = !{!24, !24, i64 0}
!24 = !{!"0x3263ef0.w1.b2", !25, i64 0}
!25 = !{!"0x3263ef0.w2.b2", !12, i64 0}
!26 = !{!27, !27, i64 0}
!27 = !{!"0x3263ef0.w1.b1", !11, i64 0}
!28 = !{!29, !29, i64 0}
!29 = !{!"0x3291780.w1.b0", !30, i64 0}
!30 = !{!"0x3291780.w2.b0", !31, i64 0}
!31 = !{!"0x3291780.w4.b0", !32, i64 0}
!32 = !{!"0x3291780.w8.b0", !33, i64 0}
!33 = !{!"0x3291780.w16.b0", !34, i64 0}
!34 = !{!"0x3291780.w32.b0", !35, i64 0}
!35 = !{!"0x3291780.w64.b0", !36, i64 0}
!36 = !{!"0x3291780.w128.b0", !37, i64 0}
!37 = !{!"0x3291780.w256.b0", !38, i64 0}
!38 = !{!"0x3291780.w512.b0", !39, i64 0}
!39 = !{!"0x3291780.w1024.b0", !40, i64 0}
!40 = !{!"int64", !41, i64 0}
!41 = !{!"0x3291780", !8, i64 0}
!42 = !{!43, !43, i64 0}
!43 = !{!"0x3291780.w1.b1", !30, i64 0}
!44 = !{!45, !45, i64 0}
!45 = !{!"0x3291780.w1.b2", !46, i64 0}
!46 = !{!"0x3291780.w2.b2", !31, i64 0}
!47 = !{!48, !48, i64 0}
!48 = !{!"0x3291780.w1.b3", !46, i64 0}
!49 = !{!"branch_weights", i32 1, i32 1048576}
!50 = !{!51, !51, i64 0}
!51 = !{!"0x329f2a0.w4.b0", !52, i64 0}
!52 = !{!"0x329f2a0.w8.b0", !53, i64 0}
!53 = !{!"0x329f2a0.w16.b0", !54, i64 0}
!54 = !{!"0x329f2a0.w32.b0", !55, i64 0}
!55 = !{!"0x329f2a0.w64.b0", !56, i64 0}
!56 = !{!"0x329f2a0.w128.b0", !57, i64 0}
!57 = !{!"0x329f2a0.w256.b0", !58, i64 0}
!58 = !{!"0x329f2a0.w512.b0", !59, i64 0}
!59 = !{!"0x329f2a0.w1024.b0", !60, i64 0}
!60 = !{!"int64", !61, i64 0}
!61 = !{!"0x329f2a0", !8, i64 0}
!62 = !{!63, !63, i64 0}
!63 = !{!"0x325f440.w1.b0", !64, i64 0}
!64 = !{!"0x325f440.w2.b0", !65, i64 0}
!65 = !{!"0x325f440.w4.b0", !66, i64 0}
!66 = !{!"0x325f440.w8.b0", !67, i64 0}
!67 = !{!"0x325f440.w16.b0", !68, i64 0}
!68 = !{!"0x325f440.w32.b0", !69, i64 0}
!69 = !{!"0x325f440.w64.b0", !70, i64 0}
!70 = !{!"0x325f440.w128.b0", !71, i64 0}
!71 = !{!"0x325f440.w256.b0", !72, i64 0}
!72 = !{!"0x325f440.w512.b0", !73, i64 0}
!73 = !{!"0x325f440.w1024.b0", !74, i64 0}
!74 = !{!"int64", !75, i64 0}
!75 = !{!"0x325f440", !8, i64 0}
!76 = !{!77, !77, i64 0}
!77 = !{!"0x325f440.w1.b1", !64, i64 0}
!78 = !{!79, !79, i64 0}
!79 = !{!"0x325f440.w1.b2", !80, i64 0}
!80 = !{!"0x325f440.w2.b2", !65, i64 0}
!81 = !{!82, !82, i64 0}
!82 = !{!"0x325f440.w1.b3", !80, i64 0}
!83 = !{!84, !84, i64 0}
!84 = !{!"0x3162c90.w4.b0", !85, i64 0}
!85 = !{!"0x3162c90.w8.b0", !86, i64 0}
!86 = !{!"0x3162c90.w16.b0", !87, i64 0}
!87 = !{!"0x3162c90.w32.b0", !88, i64 0}
!88 = !{!"0x3162c90.w64.b0", !89, i64 0}
!89 = !{!"0x3162c90.w128.b0", !90, i64 0}
!90 = !{!"0x3162c90.w256.b0", !91, i64 0}
!91 = !{!"0x3162c90.w512.b0", !92, i64 0}
!92 = !{!"0x3162c90.w1024.b0", !93, i64 0}
!93 = !{!"int64", !94, i64 0}
!94 = !{!"0x3162c90", !8, i64 0}
!95 = !{!96, !96, i64 0}
!96 = !{!"0x31a8190.w1.b0", !97, i64 0}
!97 = !{!"0x31a8190.w2.b0", !98, i64 0}
!98 = !{!"0x31a8190.w4.b0", !99, i64 0}
!99 = !{!"0x31a8190.w8.b0", !100, i64 0}
!100 = !{!"0x31a8190.w16.b0", !101, i64 0}
!101 = !{!"0x31a8190.w32.b0", !102, i64 0}
!102 = !{!"0x31a8190.w64.b0", !103, i64 0}
!103 = !{!"0x31a8190.w128.b0", !104, i64 0}
!104 = !{!"0x31a8190.w256.b0", !105, i64 0}
!105 = !{!"0x31a8190.w512.b0", !106, i64 0}
!106 = !{!"0x31a8190.w1024.b0", !107, i64 0}
!107 = !{!"int64", !108, i64 0}
!108 = !{!"0x31a8190", !8, i64 0}
!109 = !{!110, !110, i64 0}
!110 = !{!"0x31a8190.w1.b1", !97, i64 0}
!111 = !{!112, !112, i64 0}
!112 = !{!"0x31a8190.w1.b2", !113, i64 0}
!113 = !{!"0x31a8190.w2.b2", !98, i64 0}
!114 = !{!115, !115, i64 0}
!115 = !{!"0x31a8190.w1.b3", !113, i64 0}
!116 = !{!117, !117, i64 0}
!117 = !{!"0x31b1b20.w4.b0", !118, i64 0}
!118 = !{!"0x31b1b20.w8.b0", !119, i64 0}
!119 = !{!"0x31b1b20.w16.b0", !120, i64 0}
!120 = !{!"0x31b1b20.w32.b0", !121, i64 0}
!121 = !{!"0x31b1b20.w64.b0", !122, i64 0}
!122 = !{!"0x31b1b20.w128.b0", !123, i64 0}
!123 = !{!"0x31b1b20.w256.b0", !124, i64 0}
!124 = !{!"0x31b1b20.w512.b0", !125, i64 0}
!125 = !{!"0x31b1b20.w1024.b0", !126, i64 0}
!126 = !{!"int64", !127, i64 0}
!127 = !{!"0x31b1b20", !8, i64 0}
!128 = !{!129, !129, i64 0}
!129 = !{!"float32", !130, i64 0}
!130 = !{!"0x31b1980", !8, i64 0}
!131 = !{!132, !132, i64 0}
!132 = !{!"float32", !133, i64 0}
!133 = !{!"0x32a6990", !8, i64 0}
!134 = !{!135, !135, i64 0}
!135 = !{!"float32", !136, i64 0}
!136 = !{!"0x32a6950", !8, i64 0}
!137 = !{!138, !138, i64 0}
!138 = !{!"float32", !139, i64 0}
!139 = !{!"0x31b1920", !8, i64 0}
!140 = !{!141, !141, i64 0}
!141 = !{!"0x3283d20.w8.b0", !142, i64 0}
!142 = !{!"0x3283d20.w16.b0", !143, i64 0}
!143 = !{!"0x3283d20.w32.b0", !144, i64 0}
!144 = !{!"0x3283d20.w64.b0", !145, i64 0}
!145 = !{!"0x3283d20.w128.b0", !146, i64 0}
!146 = !{!"0x3283d20.w256.b0", !147, i64 0}
!147 = !{!"0x3283d20.w512.b0", !148, i64 0}
!148 = !{!"0x3283d20.w1024.b0", !149, i64 0}
!149 = !{!"float32", !150, i64 0}
!150 = !{!"0x3283d20", !8, i64 0}
!151 = !{!149, !149, i64 0}
!152 = !{!153, !153, i64 0}
!153 = !{!"float32", !154, i64 0}
!154 = !{!"0x3162a50", !8, i64 0}
