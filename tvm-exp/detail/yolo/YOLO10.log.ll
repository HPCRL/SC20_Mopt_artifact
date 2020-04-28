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
@.str.9 = private constant [96 x i8] c"Assert fail: (17 == int32(arg0.shape[2])), Argument arg0.shape[2] has an unsatisfied constraint\00", align 1
@.str.10 = private constant [96 x i8] c"Assert fail: (17 == int32(arg0.shape[3])), Argument arg0.shape[3] has an unsatisfied constraint\00", align 1
@.str.11 = private constant [200 x i8] c"Assert fail: ((((1 == int32(arg0.strides[3])) && (17 == int32(arg0.strides[2]))) && (289 == int32(arg0.strides[1]))) && (295936 == int32(arg0.strides[0]))), arg0.strides: expected to be compact array\00", align 1
@.str.12 = private constant [112 x i8] c"Assert fail: ((uint64)0 == tvm_struct_get(arg0, 0, 8)), Argument arg0.byte_offset has an unsatisfied constraint\00", align 1
@.str.13 = private constant [81 x i8] c"Assert fail: (4 == tvm_struct_get(arg1, 0, 4)), arg1.ndim is expected to equal 4\00", align 1
@.str.14 = private constant [186 x i8] c"Assert fail: (((tvm_struct_get(arg1, 0, 5) == (uint8)2) && (tvm_struct_get(arg1, 0, 6) == (uint8)32)) && (tvm_struct_get(arg1, 0, 7) == (uint16)1)), arg1.dtype is expected to be float32\00", align 1
@.str.15 = private constant [99 x i8] c"Assert fail: (28269 == int32(arg1.shape[0])), Argument arg1.shape[0] has an unsatisfied constraint\00", align 1
@.str.16 = private constant [98 x i8] c"Assert fail: (1024 == int32(arg1.shape[1])), Argument arg1.shape[1] has an unsatisfied constraint\00", align 1
@.str.17 = private constant [95 x i8] c"Assert fail: (1 == int32(arg1.shape[2])), Argument arg1.shape[2] has an unsatisfied constraint\00", align 1
@.str.18 = private constant [95 x i8] c"Assert fail: (1 == int32(arg1.shape[3])), Argument arg1.shape[3] has an unsatisfied constraint\00", align 1
@.str.19 = private constant [195 x i8] c"Assert fail: ((((1 == int32(arg1.strides[3])) && (1 == int32(arg1.strides[2]))) && (1 == int32(arg1.strides[1]))) && (1024 == int32(arg1.strides[0]))), arg1.strides: expected to be compact array\00", align 1
@.str.20 = private constant [112 x i8] c"Assert fail: ((uint64)0 == tvm_struct_get(arg1, 0, 8)), Argument arg1.byte_offset has an unsatisfied constraint\00", align 1
@.str.21 = private constant [105 x i8] c"Assert fail: (1 == tvm_struct_get(arg1, 0, 10)), Argument arg1.device_type has an unsatisfied constraint\00", align 1
@.str.22 = private constant [107 x i8] c"Assert fail: (dev_id == tvm_struct_get(arg1, 0, 9)), Argument arg1.device_id has an unsatisfied constraint\00", align 1
@.str.23 = private constant [81 x i8] c"Assert fail: (4 == tvm_struct_get(arg2, 0, 4)), arg2.ndim is expected to equal 4\00", align 1
@.str.24 = private constant [186 x i8] c"Assert fail: (((tvm_struct_get(arg2, 0, 5) == (uint8)2) && (tvm_struct_get(arg2, 0, 6) == (uint8)32)) && (tvm_struct_get(arg2, 0, 7) == (uint16)1)), arg2.dtype is expected to be float32\00", align 1
@.str.25 = private constant [95 x i8] c"Assert fail: (1 == int32(arg2.shape[0])), Argument arg2.shape[0] has an unsatisfied constraint\00", align 1
@.str.26 = private constant [99 x i8] c"Assert fail: (28269 == int32(arg2.shape[1])), Argument arg2.shape[1] has an unsatisfied constraint\00", align 1
@.str.27 = private constant [96 x i8] c"Assert fail: (17 == int32(arg2.shape[2])), Argument arg2.shape[2] has an unsatisfied constraint\00", align 1
@.str.28 = private constant [96 x i8] c"Assert fail: (17 == int32(arg2.shape[3])), Argument arg2.shape[3] has an unsatisfied constraint\00", align 1
@.str.29 = private constant [201 x i8] c"Assert fail: ((((1 == int32(arg2.strides[3])) && (17 == int32(arg2.strides[2]))) && (289 == int32(arg2.strides[1]))) && (8169741 == int32(arg2.strides[0]))), arg2.strides: expected to be compact array\00", align 1
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
  %87 = icmp eq <4 x i32> %86, <i32 295936, i32 289, i32 17, i32 1>
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
  %112 = icmp eq i32 %111, 28269
  br i1 %112, label %assert_end30, label %assert_fail29, !prof !5

assert_fail29:                                    ; preds = %assert_end28
  %113 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %113(i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.15, i64 0, i64 0))
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
  %133 = icmp eq <4 x i32> %132, <i32 1024, i32 1, i32 1, i32 1>
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
  %171 = icmp eq i32 %170, 28269
  br i1 %171, label %assert_end54, label %assert_fail53, !prof !5

assert_fail53:                                    ; preds = %assert_end52
  %172 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %172(i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.26, i64 0, i64 0))
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
  %187 = icmp eq <4 x i32> %186, <i32 8169741, i32 289, i32 17, i32 1>
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
  %5 = tail call i8* %4(i32 1, i32 %3, i64 1183744, i32 2, i32 32)
  %6 = load i8* (i32, i32, i64, i32, i32)*, i8* (i32, i32, i64, i32, i32)** @__TVMBackendAllocWorkspace, align 8, !tbaa !6
  %7 = tail call i8* %6(i32 1, i32 %3, i64 115789824, i32 2, i32 32)
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
  %10 = add nsw i32 %9, 33
  %11 = sdiv i32 %10, %9
  %12 = add nsw i32 %0, 1
  %13 = mul nsw i32 %11, %12
  %14 = icmp slt i32 %13, 34
  %15 = select i1 %14, i32 %13, i32 34
  %16 = mul nsw i32 %11, %0
  %17 = icmp slt i32 %16, 34
  %18 = select i1 %17, i32 %16, i32 34
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
  %24 = mul nsw i64 %indvars.iv7, 8704
  %25 = trunc i64 %indvars.iv7 to i32
  %26 = srem i32 %25, 17
  %27 = mul nsw i32 %26, 17
  %28 = sdiv i32 %25, 17
  %29 = mul nsw i32 %28, 147968
  %30 = add i32 %27, %29
  br label %for_begin4.preheader

for_end:                                          ; preds = %for_end3, %entry
  ret i32 0

for_begin4.preheader:                             ; preds = %for_begin4.preheader, %for_begin1.preheader
  %indvars.iv = phi i64 [ 0, %for_begin1.preheader ], [ %indvars.iv.next, %for_begin4.preheader ]
  %31 = mul nuw nsw i64 %indvars.iv, 17
  %32 = add nsw i64 %31, %24
  %33 = trunc i64 %indvars.iv to i32
  %34 = mul i32 %33, 289
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
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 512
  br i1 %exitcond, label %for_end3, label %for_begin4.preheader, !prof !49

for_end3:                                         ; preds = %for_begin4.preheader
  %indvars.iv.next8 = add nsw i64 %indvars.iv7, 1
  %170 = icmp slt i64 %indvars.iv.next8, %23
  br i1 %170, label %for_begin1.preheader, label %for_end, !prof !5
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
  %10 = add nsw i32 %9, 9422
  %11 = sdiv i32 %10, %9
  %12 = add nsw i32 %0, 1
  %13 = mul nsw i32 %11, %12
  %14 = icmp slt i32 %13, 9423
  %15 = select i1 %14, i32 %13, i32 9423
  %16 = mul nsw i32 %11, %0
  %17 = icmp slt i32 %16, 9423
  %18 = select i1 %17, i32 %16, i32 9423
  %19 = icmp slt i32 %18, %15
  br i1 %19, label %for_begin1.preheader.preheader, label %for_end, !prof !5

for_begin1.preheader.preheader:                   ; preds = %entry
  %20 = add i32 %18, 1
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %21, -1
  %23 = sext i32 %15 to i64
  br label %for_begin1.preheader

for_begin1.preheader:                             ; preds = %for_begin1.preheader.preheader, %for_end6.1
  %indvars.iv10 = phi i64 [ %22, %for_begin1.preheader.preheader ], [ %indvars.iv.next11, %for_end6.1 ]
  %24 = mul nsw i64 %indvars.iv10, 3072
  br label %for_body5

for_end:                                          ; preds = %for_end6.1, %entry
  ret i32 0

for_body5:                                        ; preds = %for_body5, %for_begin1.preheader
  %indvars.iv = phi i64 [ 0, %for_begin1.preheader ], [ %indvars.iv.next.113, %for_body5 ]
  %25 = mul nuw nsw i64 %indvars.iv, 3
  %26 = add nsw i64 %24, %25
  %27 = add nsw i64 %24, %indvars.iv
  %28 = add nsw i64 %27, 1024
  %29 = add nsw i64 %27, 2048
  %30 = getelementptr inbounds float, float* %7, i64 %27
  %31 = load float, float* %30, align 4, !tbaa !134
  %32 = insertelement <3 x float> undef, float %31, i32 0
  %33 = getelementptr inbounds float, float* %7, i64 %28
  %34 = load float, float* %33, align 4, !tbaa !134
  %35 = insertelement <3 x float> %32, float %34, i32 1
  %36 = getelementptr inbounds float, float* %7, i64 %29
  %37 = load float, float* %36, align 4, !tbaa !134
  %38 = insertelement <3 x float> %35, float %37, i32 2
  %39 = getelementptr inbounds float, float* %4, i64 %26
  %40 = bitcast float* %39 to <3 x float>*
  store <3 x float> %38, <3 x float>* %40, align 4, !tbaa !137
  %indvars.iv.next = or i64 %indvars.iv, 1
  %41 = mul nuw nsw i64 %indvars.iv.next, 3
  %42 = add nsw i64 %24, %41
  %43 = add nsw i64 %24, %indvars.iv.next
  %44 = add nsw i64 %43, 1024
  %45 = add nsw i64 %43, 2048
  %46 = getelementptr inbounds float, float* %7, i64 %43
  %47 = load float, float* %46, align 4, !tbaa !134
  %48 = insertelement <3 x float> undef, float %47, i32 0
  %49 = getelementptr inbounds float, float* %7, i64 %44
  %50 = load float, float* %49, align 4, !tbaa !134
  %51 = insertelement <3 x float> %48, float %50, i32 1
  %52 = getelementptr inbounds float, float* %7, i64 %45
  %53 = load float, float* %52, align 4, !tbaa !134
  %54 = insertelement <3 x float> %51, float %53, i32 2
  %55 = getelementptr inbounds float, float* %4, i64 %42
  %56 = bitcast float* %55 to <3 x float>*
  store <3 x float> %54, <3 x float>* %56, align 4, !tbaa !137
  %indvars.iv.next.113 = add nuw nsw i64 %indvars.iv, 2
  %exitcond.114 = icmp eq i64 %indvars.iv.next.113, 512
  br i1 %exitcond.114, label %for_end6, label %for_body5, !prof !49

for_end6:                                         ; preds = %for_body5
  %57 = add nsw i64 %24, 1536
  %58 = or i64 %24, 512
  br label %for_body5.1

for_body5.1:                                      ; preds = %for_body5.1, %for_end6
  %indvars.iv.1 = phi i64 [ 0, %for_end6 ], [ %indvars.iv.next.1.1, %for_body5.1 ]
  %59 = mul nuw nsw i64 %indvars.iv.1, 3
  %60 = add nsw i64 %57, %59
  %61 = add nsw i64 %58, %indvars.iv.1
  %62 = add nsw i64 %61, 1024
  %63 = add nsw i64 %61, 2048
  %64 = getelementptr inbounds float, float* %7, i64 %61
  %65 = load float, float* %64, align 4, !tbaa !134
  %66 = insertelement <3 x float> undef, float %65, i32 0
  %67 = getelementptr inbounds float, float* %7, i64 %62
  %68 = load float, float* %67, align 4, !tbaa !134
  %69 = insertelement <3 x float> %66, float %68, i32 1
  %70 = getelementptr inbounds float, float* %7, i64 %63
  %71 = load float, float* %70, align 4, !tbaa !134
  %72 = insertelement <3 x float> %69, float %71, i32 2
  %73 = getelementptr inbounds float, float* %4, i64 %60
  %74 = bitcast float* %73 to <3 x float>*
  store <3 x float> %72, <3 x float>* %74, align 4, !tbaa !137
  %indvars.iv.next.1 = or i64 %indvars.iv.1, 1
  %75 = mul nuw nsw i64 %indvars.iv.next.1, 3
  %76 = add nsw i64 %57, %75
  %77 = add nsw i64 %58, %indvars.iv.next.1
  %78 = add nsw i64 %77, 1024
  %79 = add nsw i64 %77, 2048
  %80 = getelementptr inbounds float, float* %7, i64 %77
  %81 = load float, float* %80, align 4, !tbaa !134
  %82 = insertelement <3 x float> undef, float %81, i32 0
  %83 = getelementptr inbounds float, float* %7, i64 %78
  %84 = load float, float* %83, align 4, !tbaa !134
  %85 = insertelement <3 x float> %82, float %84, i32 1
  %86 = getelementptr inbounds float, float* %7, i64 %79
  %87 = load float, float* %86, align 4, !tbaa !134
  %88 = insertelement <3 x float> %85, float %87, i32 2
  %89 = getelementptr inbounds float, float* %4, i64 %76
  %90 = bitcast float* %89 to <3 x float>*
  store <3 x float> %88, <3 x float>* %90, align 4, !tbaa !137
  %indvars.iv.next.1.1 = add nuw nsw i64 %indvars.iv.1, 2
  %exitcond.1.1 = icmp eq i64 %indvars.iv.next.1.1, 512
  br i1 %exitcond.1.1, label %for_end6.1, label %for_body5.1, !prof !49

for_end6.1:                                       ; preds = %for_body5.1
  %indvars.iv.next11 = add nsw i64 %indvars.iv10, 1
  %91 = icmp slt i64 %indvars.iv.next11, %23
  br i1 %91, label %for_begin1.preheader, label %for_end, !prof !5
}

; Function Attrs: nounwind
define private i32 @__tvm_parallel_lambda.34(i32, %0* nocapture readonly, i8* nocapture readonly) #2 {
entry:
  %3 = alloca [17 x <3 x float>], align 16
  %.sub = getelementptr inbounds [17 x <3 x float>], [17 x <3 x float>]* %3, i64 0, i64 0
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
  %14 = add nsw i32 %13, 160190
  %15 = sdiv i32 %14, %13
  %16 = add nsw i32 %0, 1
  %17 = mul nsw i32 %15, %16
  %18 = icmp slt i32 %17, 160191
  %19 = select i1 %18, i32 %17, i32 160191
  %20 = mul nsw i32 %15, %0
  %21 = icmp slt i32 %20, 160191
  %22 = select i1 %21, i32 %20, i32 160191
  %23 = icmp slt i32 %22, %19
  br i1 %23, label %for_body.lr.ph, label %for_end, !prof !5

for_body.lr.ph:                                   ; preds = %entry
  %24 = getelementptr inbounds [17 x <3 x float>], [17 x <3 x float>]* %3, i64 0, i64 0, i64 3
  %25 = bitcast float* %24 to <3 x float>*
  %26 = getelementptr inbounds [17 x <3 x float>], [17 x <3 x float>]* %3, i64 0, i64 0, i64 6
  %27 = bitcast float* %26 to <3 x float>*
  %28 = getelementptr inbounds [17 x <3 x float>], [17 x <3 x float>]* %3, i64 0, i64 0, i64 9
  %29 = bitcast float* %28 to <3 x float>*
  %30 = getelementptr inbounds [17 x <3 x float>], [17 x <3 x float>]* %3, i64 0, i64 0, i64 12
  %31 = bitcast float* %30 to <3 x float>*
  %32 = getelementptr inbounds [17 x <3 x float>], [17 x <3 x float>]* %3, i64 0, i64 0, i64 15
  %33 = bitcast float* %32 to <3 x float>*
  %34 = getelementptr inbounds [17 x <3 x float>], [17 x <3 x float>]* %3, i64 0, i64 0, i64 18
  %35 = bitcast float* %34 to <3 x float>*
  %36 = getelementptr inbounds [17 x <3 x float>], [17 x <3 x float>]* %3, i64 0, i64 0, i64 21
  %37 = bitcast float* %36 to <3 x float>*
  %38 = getelementptr inbounds [17 x <3 x float>], [17 x <3 x float>]* %3, i64 0, i64 0, i64 24
  %39 = bitcast float* %38 to <3 x float>*
  %40 = getelementptr inbounds [17 x <3 x float>], [17 x <3 x float>]* %3, i64 0, i64 0, i64 27
  %41 = bitcast float* %40 to <3 x float>*
  %42 = getelementptr inbounds [17 x <3 x float>], [17 x <3 x float>]* %3, i64 0, i64 0, i64 30
  %43 = bitcast float* %42 to <3 x float>*
  %44 = getelementptr inbounds [17 x <3 x float>], [17 x <3 x float>]* %3, i64 0, i64 0, i64 33
  %45 = bitcast float* %44 to <3 x float>*
  %46 = getelementptr inbounds [17 x <3 x float>], [17 x <3 x float>]* %3, i64 0, i64 0, i64 36
  %47 = bitcast float* %46 to <3 x float>*
  %48 = getelementptr inbounds [17 x <3 x float>], [17 x <3 x float>]* %3, i64 0, i64 0, i64 39
  %49 = bitcast float* %48 to <3 x float>*
  %50 = getelementptr inbounds [17 x <3 x float>], [17 x <3 x float>]* %3, i64 0, i64 0, i64 42
  %51 = bitcast float* %50 to <3 x float>*
  %52 = getelementptr inbounds [17 x <3 x float>], [17 x <3 x float>]* %3, i64 0, i64 0, i64 45
  %53 = bitcast float* %52 to <3 x float>*
  %54 = getelementptr inbounds [17 x <3 x float>], [17 x <3 x float>]* %3, i64 0, i64 0, i64 48
  %55 = bitcast float* %54 to <3 x float>*
  %56 = bitcast [17 x <3 x float>]* %3 to i8*
  br label %for_body

for_body:                                         ; preds = %for_body.lr.ph, %for_end6.1
  %57 = phi i32 [ %22, %for_body.lr.ph ], [ %482, %for_end6.1 ]
  %58 = srem i32 %57, 17
  %59 = mul nsw i32 %58, 8704
  %60 = sdiv i32 %57, 17
  %61 = mul nsw i32 %60, 3072
  %62 = sext i32 %61 to i64
  %63 = sext i32 %59 to i64
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %56, i8 0, i64 204, i1 false)
  br label %for_body5

for_end:                                          ; preds = %for_end6.1, %entry
  ret i32 0

for_body5:                                        ; preds = %for_body5, %for_body
  %indvars.iv = phi i64 [ 0, %for_body ], [ %indvars.iv.next, %for_body5 ]
  %64 = phi <3 x float> [ zeroinitializer, %for_body ], [ %188, %for_body5 ]
  %65 = phi <3 x float> [ zeroinitializer, %for_body ], [ %182, %for_body5 ]
  %66 = phi <3 x float> [ zeroinitializer, %for_body ], [ %176, %for_body5 ]
  %67 = phi <3 x float> [ zeroinitializer, %for_body ], [ %170, %for_body5 ]
  %68 = phi <3 x float> [ zeroinitializer, %for_body ], [ %164, %for_body5 ]
  %69 = phi <3 x float> [ zeroinitializer, %for_body ], [ %158, %for_body5 ]
  %70 = phi <3 x float> [ zeroinitializer, %for_body ], [ %152, %for_body5 ]
  %71 = phi <3 x float> [ zeroinitializer, %for_body ], [ %146, %for_body5 ]
  %72 = phi <3 x float> [ zeroinitializer, %for_body ], [ %140, %for_body5 ]
  %73 = phi <3 x float> [ zeroinitializer, %for_body ], [ %134, %for_body5 ]
  %74 = phi <3 x float> [ zeroinitializer, %for_body ], [ %128, %for_body5 ]
  %75 = phi <3 x float> [ zeroinitializer, %for_body ], [ %122, %for_body5 ]
  %76 = phi <3 x float> [ zeroinitializer, %for_body ], [ %116, %for_body5 ]
  %77 = phi <3 x float> [ zeroinitializer, %for_body ], [ %110, %for_body5 ]
  %78 = phi <3 x float> [ zeroinitializer, %for_body ], [ %104, %for_body5 ]
  %79 = phi <3 x float> [ zeroinitializer, %for_body ], [ %98, %for_body5 ]
  %80 = phi <3 x float> [ zeroinitializer, %for_body ], [ %92, %for_body5 ]
  %81 = mul nuw nsw i64 %indvars.iv, 17
  %82 = add nsw i64 %81, %63
  %83 = getelementptr inbounds float, float* %5, i64 %82
  %84 = load float, float* %83, align 4, !tbaa !131
  %85 = insertelement <3 x float> undef, float %84, i32 0
  %86 = shufflevector <3 x float> %85, <3 x float> undef, <3 x i32> zeroinitializer
  %87 = mul nuw nsw i64 %indvars.iv, 3
  %88 = add nsw i64 %87, %62
  %89 = getelementptr inbounds float, float* %8, i64 %88
  %90 = bitcast float* %89 to <3 x float>*
  %91 = load <3 x float>, <3 x float>* %90, align 4, !tbaa !137
  %92 = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %86, <3 x float> %91, <3 x float> %80)
  %93 = add nsw i64 %82, 1
  %94 = getelementptr inbounds float, float* %5, i64 %93
  %95 = load float, float* %94, align 4, !tbaa !131
  %96 = insertelement <3 x float> undef, float %95, i32 0
  %97 = shufflevector <3 x float> %96, <3 x float> undef, <3 x i32> zeroinitializer
  %98 = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %97, <3 x float> %91, <3 x float> %79)
  %99 = add nsw i64 %82, 2
  %100 = getelementptr inbounds float, float* %5, i64 %99
  %101 = load float, float* %100, align 4, !tbaa !131
  %102 = insertelement <3 x float> undef, float %101, i32 0
  %103 = shufflevector <3 x float> %102, <3 x float> undef, <3 x i32> zeroinitializer
  %104 = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %103, <3 x float> %91, <3 x float> %78)
  %105 = add nsw i64 %82, 3
  %106 = getelementptr inbounds float, float* %5, i64 %105
  %107 = load float, float* %106, align 4, !tbaa !131
  %108 = insertelement <3 x float> undef, float %107, i32 0
  %109 = shufflevector <3 x float> %108, <3 x float> undef, <3 x i32> zeroinitializer
  %110 = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %109, <3 x float> %91, <3 x float> %77)
  %111 = add nsw i64 %82, 4
  %112 = getelementptr inbounds float, float* %5, i64 %111
  %113 = load float, float* %112, align 4, !tbaa !131
  %114 = insertelement <3 x float> undef, float %113, i32 0
  %115 = shufflevector <3 x float> %114, <3 x float> undef, <3 x i32> zeroinitializer
  %116 = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %115, <3 x float> %91, <3 x float> %76)
  %117 = add nsw i64 %82, 5
  %118 = getelementptr inbounds float, float* %5, i64 %117
  %119 = load float, float* %118, align 4, !tbaa !131
  %120 = insertelement <3 x float> undef, float %119, i32 0
  %121 = shufflevector <3 x float> %120, <3 x float> undef, <3 x i32> zeroinitializer
  %122 = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %121, <3 x float> %91, <3 x float> %75)
  %123 = add nsw i64 %82, 6
  %124 = getelementptr inbounds float, float* %5, i64 %123
  %125 = load float, float* %124, align 4, !tbaa !131
  %126 = insertelement <3 x float> undef, float %125, i32 0
  %127 = shufflevector <3 x float> %126, <3 x float> undef, <3 x i32> zeroinitializer
  %128 = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %127, <3 x float> %91, <3 x float> %74)
  %129 = add nsw i64 %82, 7
  %130 = getelementptr inbounds float, float* %5, i64 %129
  %131 = load float, float* %130, align 4, !tbaa !131
  %132 = insertelement <3 x float> undef, float %131, i32 0
  %133 = shufflevector <3 x float> %132, <3 x float> undef, <3 x i32> zeroinitializer
  %134 = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %133, <3 x float> %91, <3 x float> %73)
  %135 = add nsw i64 %82, 8
  %136 = getelementptr inbounds float, float* %5, i64 %135
  %137 = load float, float* %136, align 4, !tbaa !131
  %138 = insertelement <3 x float> undef, float %137, i32 0
  %139 = shufflevector <3 x float> %138, <3 x float> undef, <3 x i32> zeroinitializer
  %140 = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %139, <3 x float> %91, <3 x float> %72)
  %141 = add nsw i64 %82, 9
  %142 = getelementptr inbounds float, float* %5, i64 %141
  %143 = load float, float* %142, align 4, !tbaa !131
  %144 = insertelement <3 x float> undef, float %143, i32 0
  %145 = shufflevector <3 x float> %144, <3 x float> undef, <3 x i32> zeroinitializer
  %146 = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %145, <3 x float> %91, <3 x float> %71)
  %147 = add nsw i64 %82, 10
  %148 = getelementptr inbounds float, float* %5, i64 %147
  %149 = load float, float* %148, align 4, !tbaa !131
  %150 = insertelement <3 x float> undef, float %149, i32 0
  %151 = shufflevector <3 x float> %150, <3 x float> undef, <3 x i32> zeroinitializer
  %152 = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %151, <3 x float> %91, <3 x float> %70)
  %153 = add nsw i64 %82, 11
  %154 = getelementptr inbounds float, float* %5, i64 %153
  %155 = load float, float* %154, align 4, !tbaa !131
  %156 = insertelement <3 x float> undef, float %155, i32 0
  %157 = shufflevector <3 x float> %156, <3 x float> undef, <3 x i32> zeroinitializer
  %158 = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %157, <3 x float> %91, <3 x float> %69)
  %159 = add nsw i64 %82, 12
  %160 = getelementptr inbounds float, float* %5, i64 %159
  %161 = load float, float* %160, align 4, !tbaa !131
  %162 = insertelement <3 x float> undef, float %161, i32 0
  %163 = shufflevector <3 x float> %162, <3 x float> undef, <3 x i32> zeroinitializer
  %164 = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %163, <3 x float> %91, <3 x float> %68)
  %165 = add nsw i64 %82, 13
  %166 = getelementptr inbounds float, float* %5, i64 %165
  %167 = load float, float* %166, align 4, !tbaa !131
  %168 = insertelement <3 x float> undef, float %167, i32 0
  %169 = shufflevector <3 x float> %168, <3 x float> undef, <3 x i32> zeroinitializer
  %170 = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %169, <3 x float> %91, <3 x float> %67)
  %171 = add nsw i64 %82, 14
  %172 = getelementptr inbounds float, float* %5, i64 %171
  %173 = load float, float* %172, align 4, !tbaa !131
  %174 = insertelement <3 x float> undef, float %173, i32 0
  %175 = shufflevector <3 x float> %174, <3 x float> undef, <3 x i32> zeroinitializer
  %176 = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %175, <3 x float> %91, <3 x float> %66)
  %177 = add nsw i64 %82, 15
  %178 = getelementptr inbounds float, float* %5, i64 %177
  %179 = load float, float* %178, align 4, !tbaa !131
  %180 = insertelement <3 x float> undef, float %179, i32 0
  %181 = shufflevector <3 x float> %180, <3 x float> undef, <3 x i32> zeroinitializer
  %182 = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %181, <3 x float> %91, <3 x float> %65)
  %183 = add nsw i64 %82, 16
  %184 = getelementptr inbounds float, float* %5, i64 %183
  %185 = load float, float* %184, align 4, !tbaa !131
  %186 = insertelement <3 x float> undef, float %185, i32 0
  %187 = shufflevector <3 x float> %186, <3 x float> undef, <3 x i32> zeroinitializer
  %188 = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %187, <3 x float> %91, <3 x float> %64)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 512
  br i1 %exitcond, label %for_end6, label %for_body5, !prof !49

for_end6:                                         ; preds = %for_body5
  %189 = add nsw i64 %63, 147968
  %190 = add nsw i64 %62, 1536
  br label %for_body5.1

for_body5.1:                                      ; preds = %for_body5.1, %for_end6
  %indvars.iv.1 = phi i64 [ 0, %for_end6 ], [ %indvars.iv.next.1, %for_body5.1 ]
  %191 = phi <3 x float> [ %188, %for_end6 ], [ %315, %for_body5.1 ]
  %192 = phi <3 x float> [ %182, %for_end6 ], [ %309, %for_body5.1 ]
  %193 = phi <3 x float> [ %176, %for_end6 ], [ %303, %for_body5.1 ]
  %194 = phi <3 x float> [ %170, %for_end6 ], [ %297, %for_body5.1 ]
  %195 = phi <3 x float> [ %164, %for_end6 ], [ %291, %for_body5.1 ]
  %196 = phi <3 x float> [ %158, %for_end6 ], [ %285, %for_body5.1 ]
  %197 = phi <3 x float> [ %152, %for_end6 ], [ %279, %for_body5.1 ]
  %198 = phi <3 x float> [ %146, %for_end6 ], [ %273, %for_body5.1 ]
  %199 = phi <3 x float> [ %140, %for_end6 ], [ %267, %for_body5.1 ]
  %200 = phi <3 x float> [ %134, %for_end6 ], [ %261, %for_body5.1 ]
  %201 = phi <3 x float> [ %128, %for_end6 ], [ %255, %for_body5.1 ]
  %202 = phi <3 x float> [ %122, %for_end6 ], [ %249, %for_body5.1 ]
  %203 = phi <3 x float> [ %116, %for_end6 ], [ %243, %for_body5.1 ]
  %204 = phi <3 x float> [ %110, %for_end6 ], [ %237, %for_body5.1 ]
  %205 = phi <3 x float> [ %104, %for_end6 ], [ %231, %for_body5.1 ]
  %206 = phi <3 x float> [ %98, %for_end6 ], [ %225, %for_body5.1 ]
  %207 = phi <3 x float> [ %92, %for_end6 ], [ %219, %for_body5.1 ]
  %208 = mul nuw nsw i64 %indvars.iv.1, 17
  %209 = add nsw i64 %189, %208
  %210 = getelementptr inbounds float, float* %5, i64 %209
  %211 = load float, float* %210, align 4, !tbaa !131
  %212 = insertelement <3 x float> undef, float %211, i32 0
  %213 = shufflevector <3 x float> %212, <3 x float> undef, <3 x i32> zeroinitializer
  %214 = mul nuw nsw i64 %indvars.iv.1, 3
  %215 = add nsw i64 %190, %214
  %216 = getelementptr inbounds float, float* %8, i64 %215
  %217 = bitcast float* %216 to <3 x float>*
  %218 = load <3 x float>, <3 x float>* %217, align 4, !tbaa !137
  %219 = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %213, <3 x float> %218, <3 x float> %207)
  %220 = add nsw i64 %209, 1
  %221 = getelementptr inbounds float, float* %5, i64 %220
  %222 = load float, float* %221, align 4, !tbaa !131
  %223 = insertelement <3 x float> undef, float %222, i32 0
  %224 = shufflevector <3 x float> %223, <3 x float> undef, <3 x i32> zeroinitializer
  %225 = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %224, <3 x float> %218, <3 x float> %206)
  %226 = add nsw i64 %209, 2
  %227 = getelementptr inbounds float, float* %5, i64 %226
  %228 = load float, float* %227, align 4, !tbaa !131
  %229 = insertelement <3 x float> undef, float %228, i32 0
  %230 = shufflevector <3 x float> %229, <3 x float> undef, <3 x i32> zeroinitializer
  %231 = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %230, <3 x float> %218, <3 x float> %205)
  %232 = add nsw i64 %209, 3
  %233 = getelementptr inbounds float, float* %5, i64 %232
  %234 = load float, float* %233, align 4, !tbaa !131
  %235 = insertelement <3 x float> undef, float %234, i32 0
  %236 = shufflevector <3 x float> %235, <3 x float> undef, <3 x i32> zeroinitializer
  %237 = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %236, <3 x float> %218, <3 x float> %204)
  %238 = add nsw i64 %209, 4
  %239 = getelementptr inbounds float, float* %5, i64 %238
  %240 = load float, float* %239, align 4, !tbaa !131
  %241 = insertelement <3 x float> undef, float %240, i32 0
  %242 = shufflevector <3 x float> %241, <3 x float> undef, <3 x i32> zeroinitializer
  %243 = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %242, <3 x float> %218, <3 x float> %203)
  %244 = add nsw i64 %209, 5
  %245 = getelementptr inbounds float, float* %5, i64 %244
  %246 = load float, float* %245, align 4, !tbaa !131
  %247 = insertelement <3 x float> undef, float %246, i32 0
  %248 = shufflevector <3 x float> %247, <3 x float> undef, <3 x i32> zeroinitializer
  %249 = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %248, <3 x float> %218, <3 x float> %202)
  %250 = add nsw i64 %209, 6
  %251 = getelementptr inbounds float, float* %5, i64 %250
  %252 = load float, float* %251, align 4, !tbaa !131
  %253 = insertelement <3 x float> undef, float %252, i32 0
  %254 = shufflevector <3 x float> %253, <3 x float> undef, <3 x i32> zeroinitializer
  %255 = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %254, <3 x float> %218, <3 x float> %201)
  %256 = add nsw i64 %209, 7
  %257 = getelementptr inbounds float, float* %5, i64 %256
  %258 = load float, float* %257, align 4, !tbaa !131
  %259 = insertelement <3 x float> undef, float %258, i32 0
  %260 = shufflevector <3 x float> %259, <3 x float> undef, <3 x i32> zeroinitializer
  %261 = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %260, <3 x float> %218, <3 x float> %200)
  %262 = add nsw i64 %209, 8
  %263 = getelementptr inbounds float, float* %5, i64 %262
  %264 = load float, float* %263, align 4, !tbaa !131
  %265 = insertelement <3 x float> undef, float %264, i32 0
  %266 = shufflevector <3 x float> %265, <3 x float> undef, <3 x i32> zeroinitializer
  %267 = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %266, <3 x float> %218, <3 x float> %199)
  %268 = add nsw i64 %209, 9
  %269 = getelementptr inbounds float, float* %5, i64 %268
  %270 = load float, float* %269, align 4, !tbaa !131
  %271 = insertelement <3 x float> undef, float %270, i32 0
  %272 = shufflevector <3 x float> %271, <3 x float> undef, <3 x i32> zeroinitializer
  %273 = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %272, <3 x float> %218, <3 x float> %198)
  %274 = add nsw i64 %209, 10
  %275 = getelementptr inbounds float, float* %5, i64 %274
  %276 = load float, float* %275, align 4, !tbaa !131
  %277 = insertelement <3 x float> undef, float %276, i32 0
  %278 = shufflevector <3 x float> %277, <3 x float> undef, <3 x i32> zeroinitializer
  %279 = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %278, <3 x float> %218, <3 x float> %197)
  %280 = add nsw i64 %209, 11
  %281 = getelementptr inbounds float, float* %5, i64 %280
  %282 = load float, float* %281, align 4, !tbaa !131
  %283 = insertelement <3 x float> undef, float %282, i32 0
  %284 = shufflevector <3 x float> %283, <3 x float> undef, <3 x i32> zeroinitializer
  %285 = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %284, <3 x float> %218, <3 x float> %196)
  %286 = add nsw i64 %209, 12
  %287 = getelementptr inbounds float, float* %5, i64 %286
  %288 = load float, float* %287, align 4, !tbaa !131
  %289 = insertelement <3 x float> undef, float %288, i32 0
  %290 = shufflevector <3 x float> %289, <3 x float> undef, <3 x i32> zeroinitializer
  %291 = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %290, <3 x float> %218, <3 x float> %195)
  %292 = add nsw i64 %209, 13
  %293 = getelementptr inbounds float, float* %5, i64 %292
  %294 = load float, float* %293, align 4, !tbaa !131
  %295 = insertelement <3 x float> undef, float %294, i32 0
  %296 = shufflevector <3 x float> %295, <3 x float> undef, <3 x i32> zeroinitializer
  %297 = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %296, <3 x float> %218, <3 x float> %194)
  %298 = add nsw i64 %209, 14
  %299 = getelementptr inbounds float, float* %5, i64 %298
  %300 = load float, float* %299, align 4, !tbaa !131
  %301 = insertelement <3 x float> undef, float %300, i32 0
  %302 = shufflevector <3 x float> %301, <3 x float> undef, <3 x i32> zeroinitializer
  %303 = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %302, <3 x float> %218, <3 x float> %193)
  %304 = add nsw i64 %209, 15
  %305 = getelementptr inbounds float, float* %5, i64 %304
  %306 = load float, float* %305, align 4, !tbaa !131
  %307 = insertelement <3 x float> undef, float %306, i32 0
  %308 = shufflevector <3 x float> %307, <3 x float> undef, <3 x i32> zeroinitializer
  %309 = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %308, <3 x float> %218, <3 x float> %192)
  %310 = add nsw i64 %209, 16
  %311 = getelementptr inbounds float, float* %5, i64 %310
  %312 = load float, float* %311, align 4, !tbaa !131
  %313 = insertelement <3 x float> undef, float %312, i32 0
  %314 = shufflevector <3 x float> %313, <3 x float> undef, <3 x i32> zeroinitializer
  %315 = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %314, <3 x float> %218, <3 x float> %191)
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1
  %exitcond.1 = icmp eq i64 %indvars.iv.next.1, 512
  br i1 %exitcond.1, label %for_end6.1, label %for_body5.1, !prof !49

for_end6.1:                                       ; preds = %for_body5.1
  store <3 x float> %219, <3 x float>* %.sub, align 16, !tbaa !140
  store <3 x float> %225, <3 x float>* %25, align 4, !tbaa !152
  store <3 x float> %231, <3 x float>* %27, align 8, !tbaa !153
  store <3 x float> %237, <3 x float>* %29, align 4, !tbaa !152
  store <3 x float> %243, <3 x float>* %31, align 16, !tbaa !140
  store <3 x float> %249, <3 x float>* %33, align 4, !tbaa !154
  store <3 x float> %255, <3 x float>* %35, align 8, !tbaa !152
  store <3 x float> %261, <3 x float>* %37, align 4, !tbaa !153
  store <3 x float> %267, <3 x float>* %39, align 16, !tbaa !140
  store <3 x float> %273, <3 x float>* %41, align 4, !tbaa !152
  store <3 x float> %279, <3 x float>* %43, align 8, !tbaa !155
  store <3 x float> %285, <3 x float>* %45, align 4, !tbaa !152
  store <3 x float> %291, <3 x float>* %47, align 16, !tbaa !140
  store <3 x float> %297, <3 x float>* %49, align 4, !tbaa !153
  store <3 x float> %303, <3 x float>* %51, align 8, !tbaa !152
  store <3 x float> %309, <3 x float>* %53, align 4, !tbaa !154
  store <3 x float> %315, <3 x float>* %55, align 16, !tbaa !140
  %316 = mul nsw i32 %58, 17
  %317 = mul nsw i32 %60, 867
  %318 = add nsw i32 %317, %316
  %319 = sext i32 %318 to i64
  %320 = add nsw i64 %319, 289
  %321 = add nsw i64 %319, 578
  %322 = getelementptr inbounds float, float* %11, i64 %319
  %323 = extractelement <3 x float> %219, i64 0
  store float %323, float* %322, align 4, !tbaa !156
  %324 = getelementptr inbounds float, float* %11, i64 %320
  %325 = extractelement <3 x float> %219, i64 1
  store float %325, float* %324, align 4, !tbaa !156
  %326 = getelementptr inbounds float, float* %11, i64 %321
  %327 = extractelement <3 x float> %219, i64 2
  store float %327, float* %326, align 4, !tbaa !156
  %328 = add nsw i64 %319, 1
  %329 = add nsw i64 %319, 290
  %330 = add nsw i64 %319, 579
  %331 = getelementptr inbounds float, float* %11, i64 %328
  %332 = extractelement <3 x float> %225, i64 0
  store float %332, float* %331, align 4, !tbaa !156
  %333 = getelementptr inbounds float, float* %11, i64 %329
  %334 = extractelement <3 x float> %225, i64 1
  store float %334, float* %333, align 4, !tbaa !156
  %335 = getelementptr inbounds float, float* %11, i64 %330
  %336 = extractelement <3 x float> %225, i64 2
  store float %336, float* %335, align 4, !tbaa !156
  %337 = add nsw i64 %319, 2
  %338 = add nsw i64 %319, 291
  %339 = add nsw i64 %319, 580
  %340 = getelementptr inbounds float, float* %11, i64 %337
  %341 = extractelement <3 x float> %231, i64 0
  store float %341, float* %340, align 4, !tbaa !156
  %342 = getelementptr inbounds float, float* %11, i64 %338
  %343 = extractelement <3 x float> %231, i64 1
  store float %343, float* %342, align 4, !tbaa !156
  %344 = getelementptr inbounds float, float* %11, i64 %339
  %345 = extractelement <3 x float> %231, i64 2
  store float %345, float* %344, align 4, !tbaa !156
  %346 = add nsw i64 %319, 3
  %347 = add nsw i64 %319, 292
  %348 = add nsw i64 %319, 581
  %349 = getelementptr inbounds float, float* %11, i64 %346
  %350 = extractelement <3 x float> %237, i64 0
  store float %350, float* %349, align 4, !tbaa !156
  %351 = getelementptr inbounds float, float* %11, i64 %347
  %352 = extractelement <3 x float> %237, i64 1
  store float %352, float* %351, align 4, !tbaa !156
  %353 = getelementptr inbounds float, float* %11, i64 %348
  %354 = extractelement <3 x float> %237, i64 2
  store float %354, float* %353, align 4, !tbaa !156
  %355 = add nsw i64 %319, 4
  %356 = add nsw i64 %319, 293
  %357 = add nsw i64 %319, 582
  %358 = getelementptr inbounds float, float* %11, i64 %355
  %359 = extractelement <3 x float> %243, i64 0
  store float %359, float* %358, align 4, !tbaa !156
  %360 = getelementptr inbounds float, float* %11, i64 %356
  %361 = extractelement <3 x float> %243, i64 1
  store float %361, float* %360, align 4, !tbaa !156
  %362 = getelementptr inbounds float, float* %11, i64 %357
  %363 = extractelement <3 x float> %243, i64 2
  store float %363, float* %362, align 4, !tbaa !156
  %364 = add nsw i64 %319, 5
  %365 = add nsw i64 %319, 294
  %366 = add nsw i64 %319, 583
  %367 = getelementptr inbounds float, float* %11, i64 %364
  %368 = extractelement <3 x float> %249, i64 0
  store float %368, float* %367, align 4, !tbaa !156
  %369 = getelementptr inbounds float, float* %11, i64 %365
  %370 = extractelement <3 x float> %249, i64 1
  store float %370, float* %369, align 4, !tbaa !156
  %371 = getelementptr inbounds float, float* %11, i64 %366
  %372 = extractelement <3 x float> %249, i64 2
  store float %372, float* %371, align 4, !tbaa !156
  %373 = add nsw i64 %319, 6
  %374 = add nsw i64 %319, 295
  %375 = add nsw i64 %319, 584
  %376 = getelementptr inbounds float, float* %11, i64 %373
  %377 = extractelement <3 x float> %255, i64 0
  store float %377, float* %376, align 4, !tbaa !156
  %378 = getelementptr inbounds float, float* %11, i64 %374
  %379 = extractelement <3 x float> %255, i64 1
  store float %379, float* %378, align 4, !tbaa !156
  %380 = getelementptr inbounds float, float* %11, i64 %375
  %381 = extractelement <3 x float> %255, i64 2
  store float %381, float* %380, align 4, !tbaa !156
  %382 = add nsw i64 %319, 7
  %383 = add nsw i64 %319, 296
  %384 = add nsw i64 %319, 585
  %385 = load <3 x float>, <3 x float>* %37, align 4, !tbaa !159
  %386 = getelementptr inbounds float, float* %11, i64 %382
  %387 = extractelement <3 x float> %385, i64 0
  store float %387, float* %386, align 4, !tbaa !156
  %388 = getelementptr inbounds float, float* %11, i64 %383
  %389 = extractelement <3 x float> %385, i64 1
  store float %389, float* %388, align 4, !tbaa !156
  %390 = getelementptr inbounds float, float* %11, i64 %384
  %391 = extractelement <3 x float> %385, i64 2
  store float %391, float* %390, align 4, !tbaa !156
  %392 = add nsw i64 %319, 8
  %393 = add nsw i64 %319, 297
  %394 = add nsw i64 %319, 586
  %395 = load <3 x float>, <3 x float>* %39, align 16, !tbaa !159
  %396 = getelementptr inbounds float, float* %11, i64 %392
  %397 = extractelement <3 x float> %395, i64 0
  store float %397, float* %396, align 4, !tbaa !156
  %398 = getelementptr inbounds float, float* %11, i64 %393
  %399 = extractelement <3 x float> %395, i64 1
  store float %399, float* %398, align 4, !tbaa !156
  %400 = getelementptr inbounds float, float* %11, i64 %394
  %401 = extractelement <3 x float> %395, i64 2
  store float %401, float* %400, align 4, !tbaa !156
  %402 = add nsw i64 %319, 9
  %403 = add nsw i64 %319, 298
  %404 = add nsw i64 %319, 587
  %405 = load <3 x float>, <3 x float>* %41, align 4, !tbaa !159
  %406 = getelementptr inbounds float, float* %11, i64 %402
  %407 = extractelement <3 x float> %405, i64 0
  store float %407, float* %406, align 4, !tbaa !156
  %408 = getelementptr inbounds float, float* %11, i64 %403
  %409 = extractelement <3 x float> %405, i64 1
  store float %409, float* %408, align 4, !tbaa !156
  %410 = getelementptr inbounds float, float* %11, i64 %404
  %411 = extractelement <3 x float> %405, i64 2
  store float %411, float* %410, align 4, !tbaa !156
  %412 = add nsw i64 %319, 10
  %413 = add nsw i64 %319, 299
  %414 = add nsw i64 %319, 588
  %415 = load <3 x float>, <3 x float>* %43, align 8, !tbaa !159
  %416 = getelementptr inbounds float, float* %11, i64 %412
  %417 = extractelement <3 x float> %415, i64 0
  store float %417, float* %416, align 4, !tbaa !156
  %418 = getelementptr inbounds float, float* %11, i64 %413
  %419 = extractelement <3 x float> %415, i64 1
  store float %419, float* %418, align 4, !tbaa !156
  %420 = getelementptr inbounds float, float* %11, i64 %414
  %421 = extractelement <3 x float> %415, i64 2
  store float %421, float* %420, align 4, !tbaa !156
  %422 = add nsw i64 %319, 11
  %423 = add nsw i64 %319, 300
  %424 = add nsw i64 %319, 589
  %425 = load <3 x float>, <3 x float>* %45, align 4, !tbaa !159
  %426 = getelementptr inbounds float, float* %11, i64 %422
  %427 = extractelement <3 x float> %425, i64 0
  store float %427, float* %426, align 4, !tbaa !156
  %428 = getelementptr inbounds float, float* %11, i64 %423
  %429 = extractelement <3 x float> %425, i64 1
  store float %429, float* %428, align 4, !tbaa !156
  %430 = getelementptr inbounds float, float* %11, i64 %424
  %431 = extractelement <3 x float> %425, i64 2
  store float %431, float* %430, align 4, !tbaa !156
  %432 = add nsw i64 %319, 12
  %433 = add nsw i64 %319, 301
  %434 = add nsw i64 %319, 590
  %435 = load <3 x float>, <3 x float>* %47, align 16, !tbaa !159
  %436 = getelementptr inbounds float, float* %11, i64 %432
  %437 = extractelement <3 x float> %435, i64 0
  store float %437, float* %436, align 4, !tbaa !156
  %438 = getelementptr inbounds float, float* %11, i64 %433
  %439 = extractelement <3 x float> %435, i64 1
  store float %439, float* %438, align 4, !tbaa !156
  %440 = getelementptr inbounds float, float* %11, i64 %434
  %441 = extractelement <3 x float> %435, i64 2
  store float %441, float* %440, align 4, !tbaa !156
  %442 = add nsw i64 %319, 13
  %443 = add nsw i64 %319, 302
  %444 = add nsw i64 %319, 591
  %445 = load <3 x float>, <3 x float>* %49, align 4, !tbaa !159
  %446 = getelementptr inbounds float, float* %11, i64 %442
  %447 = extractelement <3 x float> %445, i64 0
  store float %447, float* %446, align 4, !tbaa !156
  %448 = getelementptr inbounds float, float* %11, i64 %443
  %449 = extractelement <3 x float> %445, i64 1
  store float %449, float* %448, align 4, !tbaa !156
  %450 = getelementptr inbounds float, float* %11, i64 %444
  %451 = extractelement <3 x float> %445, i64 2
  store float %451, float* %450, align 4, !tbaa !156
  %452 = add nsw i64 %319, 14
  %453 = add nsw i64 %319, 303
  %454 = add nsw i64 %319, 592
  %455 = load <3 x float>, <3 x float>* %51, align 8, !tbaa !159
  %456 = getelementptr inbounds float, float* %11, i64 %452
  %457 = extractelement <3 x float> %455, i64 0
  store float %457, float* %456, align 4, !tbaa !156
  %458 = getelementptr inbounds float, float* %11, i64 %453
  %459 = extractelement <3 x float> %455, i64 1
  store float %459, float* %458, align 4, !tbaa !156
  %460 = getelementptr inbounds float, float* %11, i64 %454
  %461 = extractelement <3 x float> %455, i64 2
  store float %461, float* %460, align 4, !tbaa !156
  %462 = add nsw i64 %319, 15
  %463 = add nsw i64 %319, 304
  %464 = add nsw i64 %319, 593
  %465 = load <3 x float>, <3 x float>* %53, align 4, !tbaa !159
  %466 = getelementptr inbounds float, float* %11, i64 %462
  %467 = extractelement <3 x float> %465, i64 0
  store float %467, float* %466, align 4, !tbaa !156
  %468 = getelementptr inbounds float, float* %11, i64 %463
  %469 = extractelement <3 x float> %465, i64 1
  store float %469, float* %468, align 4, !tbaa !156
  %470 = getelementptr inbounds float, float* %11, i64 %464
  %471 = extractelement <3 x float> %465, i64 2
  store float %471, float* %470, align 4, !tbaa !156
  %472 = add nsw i64 %319, 16
  %473 = add nsw i64 %319, 305
  %474 = add nsw i64 %319, 594
  %475 = load <3 x float>, <3 x float>* %55, align 16, !tbaa !159
  %476 = getelementptr inbounds float, float* %11, i64 %472
  %477 = extractelement <3 x float> %475, i64 0
  store float %477, float* %476, align 4, !tbaa !156
  %478 = getelementptr inbounds float, float* %11, i64 %473
  %479 = extractelement <3 x float> %475, i64 1
  store float %479, float* %478, align 4, !tbaa !156
  %480 = getelementptr inbounds float, float* %11, i64 %474
  %481 = extractelement <3 x float> %475, i64 2
  store float %481, float* %480, align 4, !tbaa !156
  %482 = add nsw i32 %57, 1
  %483 = icmp slt i32 %482, %19
  br i1 %483, label %for_body, label %for_end, !prof !5
}

; Function Attrs: nounwind readnone speculatable
declare <3 x float> @llvm.fmuladd.v3f32(<3 x float>, <3 x float>, <3 x float>) #3

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
!10 = !{!"0x182bc40.w1.b0", !11, i64 0}
!11 = !{!"0x182bc40.w2.b0", !12, i64 0}
!12 = !{!"0x182bc40.w4.b0", !13, i64 0}
!13 = !{!"0x182bc40.w8.b0", !14, i64 0}
!14 = !{!"0x182bc40.w16.b0", !15, i64 0}
!15 = !{!"0x182bc40.w32.b0", !16, i64 0}
!16 = !{!"0x182bc40.w64.b0", !17, i64 0}
!17 = !{!"0x182bc40.w128.b0", !18, i64 0}
!18 = !{!"0x182bc40.w256.b0", !19, i64 0}
!19 = !{!"0x182bc40.w512.b0", !20, i64 0}
!20 = !{!"0x182bc40.w1024.b0", !21, i64 0}
!21 = !{!"int32", !22, i64 0}
!22 = !{!"0x182bc40", !8, i64 0}
!23 = !{!24, !24, i64 0}
!24 = !{!"0x182bc40.w1.b2", !25, i64 0}
!25 = !{!"0x182bc40.w2.b2", !12, i64 0}
!26 = !{!27, !27, i64 0}
!27 = !{!"0x182bc40.w1.b1", !11, i64 0}
!28 = !{!29, !29, i64 0}
!29 = !{!"0x1c7d550.w1.b0", !30, i64 0}
!30 = !{!"0x1c7d550.w2.b0", !31, i64 0}
!31 = !{!"0x1c7d550.w4.b0", !32, i64 0}
!32 = !{!"0x1c7d550.w8.b0", !33, i64 0}
!33 = !{!"0x1c7d550.w16.b0", !34, i64 0}
!34 = !{!"0x1c7d550.w32.b0", !35, i64 0}
!35 = !{!"0x1c7d550.w64.b0", !36, i64 0}
!36 = !{!"0x1c7d550.w128.b0", !37, i64 0}
!37 = !{!"0x1c7d550.w256.b0", !38, i64 0}
!38 = !{!"0x1c7d550.w512.b0", !39, i64 0}
!39 = !{!"0x1c7d550.w1024.b0", !40, i64 0}
!40 = !{!"int64", !41, i64 0}
!41 = !{!"0x1c7d550", !8, i64 0}
!42 = !{!43, !43, i64 0}
!43 = !{!"0x1c7d550.w1.b1", !30, i64 0}
!44 = !{!45, !45, i64 0}
!45 = !{!"0x1c7d550.w1.b2", !46, i64 0}
!46 = !{!"0x1c7d550.w2.b2", !31, i64 0}
!47 = !{!48, !48, i64 0}
!48 = !{!"0x1c7d550.w1.b3", !46, i64 0}
!49 = !{!"branch_weights", i32 1, i32 1048576}
!50 = !{!51, !51, i64 0}
!51 = !{!"0x188cd30.w4.b0", !52, i64 0}
!52 = !{!"0x188cd30.w8.b0", !53, i64 0}
!53 = !{!"0x188cd30.w16.b0", !54, i64 0}
!54 = !{!"0x188cd30.w32.b0", !55, i64 0}
!55 = !{!"0x188cd30.w64.b0", !56, i64 0}
!56 = !{!"0x188cd30.w128.b0", !57, i64 0}
!57 = !{!"0x188cd30.w256.b0", !58, i64 0}
!58 = !{!"0x188cd30.w512.b0", !59, i64 0}
!59 = !{!"0x188cd30.w1024.b0", !60, i64 0}
!60 = !{!"int64", !61, i64 0}
!61 = !{!"0x188cd30", !8, i64 0}
!62 = !{!63, !63, i64 0}
!63 = !{!"0x1b44140.w1.b0", !64, i64 0}
!64 = !{!"0x1b44140.w2.b0", !65, i64 0}
!65 = !{!"0x1b44140.w4.b0", !66, i64 0}
!66 = !{!"0x1b44140.w8.b0", !67, i64 0}
!67 = !{!"0x1b44140.w16.b0", !68, i64 0}
!68 = !{!"0x1b44140.w32.b0", !69, i64 0}
!69 = !{!"0x1b44140.w64.b0", !70, i64 0}
!70 = !{!"0x1b44140.w128.b0", !71, i64 0}
!71 = !{!"0x1b44140.w256.b0", !72, i64 0}
!72 = !{!"0x1b44140.w512.b0", !73, i64 0}
!73 = !{!"0x1b44140.w1024.b0", !74, i64 0}
!74 = !{!"int64", !75, i64 0}
!75 = !{!"0x1b44140", !8, i64 0}
!76 = !{!77, !77, i64 0}
!77 = !{!"0x1b44140.w1.b1", !64, i64 0}
!78 = !{!79, !79, i64 0}
!79 = !{!"0x1b44140.w1.b2", !80, i64 0}
!80 = !{!"0x1b44140.w2.b2", !65, i64 0}
!81 = !{!82, !82, i64 0}
!82 = !{!"0x1b44140.w1.b3", !80, i64 0}
!83 = !{!84, !84, i64 0}
!84 = !{!"0x185ff60.w4.b0", !85, i64 0}
!85 = !{!"0x185ff60.w8.b0", !86, i64 0}
!86 = !{!"0x185ff60.w16.b0", !87, i64 0}
!87 = !{!"0x185ff60.w32.b0", !88, i64 0}
!88 = !{!"0x185ff60.w64.b0", !89, i64 0}
!89 = !{!"0x185ff60.w128.b0", !90, i64 0}
!90 = !{!"0x185ff60.w256.b0", !91, i64 0}
!91 = !{!"0x185ff60.w512.b0", !92, i64 0}
!92 = !{!"0x185ff60.w1024.b0", !93, i64 0}
!93 = !{!"int64", !94, i64 0}
!94 = !{!"0x185ff60", !8, i64 0}
!95 = !{!96, !96, i64 0}
!96 = !{!"0x1b4dea0.w1.b0", !97, i64 0}
!97 = !{!"0x1b4dea0.w2.b0", !98, i64 0}
!98 = !{!"0x1b4dea0.w4.b0", !99, i64 0}
!99 = !{!"0x1b4dea0.w8.b0", !100, i64 0}
!100 = !{!"0x1b4dea0.w16.b0", !101, i64 0}
!101 = !{!"0x1b4dea0.w32.b0", !102, i64 0}
!102 = !{!"0x1b4dea0.w64.b0", !103, i64 0}
!103 = !{!"0x1b4dea0.w128.b0", !104, i64 0}
!104 = !{!"0x1b4dea0.w256.b0", !105, i64 0}
!105 = !{!"0x1b4dea0.w512.b0", !106, i64 0}
!106 = !{!"0x1b4dea0.w1024.b0", !107, i64 0}
!107 = !{!"int64", !108, i64 0}
!108 = !{!"0x1b4dea0", !8, i64 0}
!109 = !{!110, !110, i64 0}
!110 = !{!"0x1b4dea0.w1.b1", !97, i64 0}
!111 = !{!112, !112, i64 0}
!112 = !{!"0x1b4dea0.w1.b2", !113, i64 0}
!113 = !{!"0x1b4dea0.w2.b2", !98, i64 0}
!114 = !{!115, !115, i64 0}
!115 = !{!"0x1b4dea0.w1.b3", !113, i64 0}
!116 = !{!117, !117, i64 0}
!117 = !{!"0x1c7bf00.w4.b0", !118, i64 0}
!118 = !{!"0x1c7bf00.w8.b0", !119, i64 0}
!119 = !{!"0x1c7bf00.w16.b0", !120, i64 0}
!120 = !{!"0x1c7bf00.w32.b0", !121, i64 0}
!121 = !{!"0x1c7bf00.w64.b0", !122, i64 0}
!122 = !{!"0x1c7bf00.w128.b0", !123, i64 0}
!123 = !{!"0x1c7bf00.w256.b0", !124, i64 0}
!124 = !{!"0x1c7bf00.w512.b0", !125, i64 0}
!125 = !{!"0x1c7bf00.w1024.b0", !126, i64 0}
!126 = !{!"int64", !127, i64 0}
!127 = !{!"0x1c7bf00", !8, i64 0}
!128 = !{!129, !129, i64 0}
!129 = !{!"float32", !130, i64 0}
!130 = !{!"0x182bcf0", !8, i64 0}
!131 = !{!132, !132, i64 0}
!132 = !{!"float32", !133, i64 0}
!133 = !{!"0x1a87cb0", !8, i64 0}
!134 = !{!135, !135, i64 0}
!135 = !{!"float32", !136, i64 0}
!136 = !{!"0x173bb70", !8, i64 0}
!137 = !{!138, !138, i64 0}
!138 = !{!"float32", !139, i64 0}
!139 = !{!"0x1c7d350", !8, i64 0}
!140 = !{!141, !141, i64 0}
!141 = !{!"0x1b63cb0.w4.b0", !142, i64 0}
!142 = !{!"0x1b63cb0.w8.b0", !143, i64 0}
!143 = !{!"0x1b63cb0.w16.b0", !144, i64 0}
!144 = !{!"0x1b63cb0.w32.b0", !145, i64 0}
!145 = !{!"0x1b63cb0.w64.b0", !146, i64 0}
!146 = !{!"0x1b63cb0.w128.b0", !147, i64 0}
!147 = !{!"0x1b63cb0.w256.b0", !148, i64 0}
!148 = !{!"0x1b63cb0.w512.b0", !149, i64 0}
!149 = !{!"0x1b63cb0.w1024.b0", !150, i64 0}
!150 = !{!"float32", !151, i64 0}
!151 = !{!"0x1b63cb0", !8, i64 0}
!152 = !{!142, !142, i64 0}
!153 = !{!143, !143, i64 0}
!154 = !{!144, !144, i64 0}
!155 = !{!145, !145, i64 0}
!156 = !{!157, !157, i64 0}
!157 = !{!"float32", !158, i64 0}
!158 = !{!"0x173baf0", !8, i64 0}
!159 = !{!150, !150, i64 0}
