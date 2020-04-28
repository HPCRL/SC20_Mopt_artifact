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
@.str.8 = private constant [95 x i8] c"Assert fail: (3 == int32(arg0.shape[1])), Argument arg0.shape[1] has an unsatisfied constraint\00", align 1
@.str.9 = private constant [97 x i8] c"Assert fail: (546 == int32(arg0.shape[2])), Argument arg0.shape[2] has an unsatisfied constraint\00", align 1
@.str.10 = private constant [97 x i8] c"Assert fail: (546 == int32(arg0.shape[3])), Argument arg0.shape[3] has an unsatisfied constraint\00", align 1
@.str.11 = private constant [204 x i8] c"Assert fail: ((((1 == int32(arg0.strides[3])) && (546 == int32(arg0.strides[2]))) && (298116 == int32(arg0.strides[1]))) && (894348 == int32(arg0.strides[0]))), arg0.strides: expected to be compact array\00", align 1
@.str.12 = private constant [112 x i8] c"Assert fail: ((uint64)0 == tvm_struct_get(arg0, 0, 8)), Argument arg0.byte_offset has an unsatisfied constraint\00", align 1
@.str.13 = private constant [81 x i8] c"Assert fail: (4 == tvm_struct_get(arg1, 0, 4)), arg1.ndim is expected to equal 4\00", align 1
@.str.14 = private constant [186 x i8] c"Assert fail: (((tvm_struct_get(arg1, 0, 5) == (uint8)2) && (tvm_struct_get(arg1, 0, 6) == (uint8)32)) && (tvm_struct_get(arg1, 0, 7) == (uint16)1)), arg1.dtype is expected to be float32\00", align 1
@.str.15 = private constant [96 x i8] c"Assert fail: (32 == int32(arg1.shape[0])), Argument arg1.shape[0] has an unsatisfied constraint\00", align 1
@.str.16 = private constant [95 x i8] c"Assert fail: (3 == int32(arg1.shape[1])), Argument arg1.shape[1] has an unsatisfied constraint\00", align 1
@.str.17 = private constant [95 x i8] c"Assert fail: (3 == int32(arg1.shape[2])), Argument arg1.shape[2] has an unsatisfied constraint\00", align 1
@.str.18 = private constant [95 x i8] c"Assert fail: (3 == int32(arg1.shape[3])), Argument arg1.shape[3] has an unsatisfied constraint\00", align 1
@.str.19 = private constant [193 x i8] c"Assert fail: ((((1 == int32(arg1.strides[3])) && (3 == int32(arg1.strides[2]))) && (9 == int32(arg1.strides[1]))) && (27 == int32(arg1.strides[0]))), arg1.strides: expected to be compact array\00", align 1
@.str.20 = private constant [112 x i8] c"Assert fail: ((uint64)0 == tvm_struct_get(arg1, 0, 8)), Argument arg1.byte_offset has an unsatisfied constraint\00", align 1
@.str.21 = private constant [105 x i8] c"Assert fail: (1 == tvm_struct_get(arg1, 0, 10)), Argument arg1.device_type has an unsatisfied constraint\00", align 1
@.str.22 = private constant [107 x i8] c"Assert fail: (dev_id == tvm_struct_get(arg1, 0, 9)), Argument arg1.device_id has an unsatisfied constraint\00", align 1
@.str.23 = private constant [81 x i8] c"Assert fail: (4 == tvm_struct_get(arg2, 0, 4)), arg2.ndim is expected to equal 4\00", align 1
@.str.24 = private constant [186 x i8] c"Assert fail: (((tvm_struct_get(arg2, 0, 5) == (uint8)2) && (tvm_struct_get(arg2, 0, 6) == (uint8)32)) && (tvm_struct_get(arg2, 0, 7) == (uint16)1)), arg2.dtype is expected to be float32\00", align 1
@.str.25 = private constant [95 x i8] c"Assert fail: (1 == int32(arg2.shape[0])), Argument arg2.shape[0] has an unsatisfied constraint\00", align 1
@.str.26 = private constant [96 x i8] c"Assert fail: (32 == int32(arg2.shape[1])), Argument arg2.shape[1] has an unsatisfied constraint\00", align 1
@.str.27 = private constant [97 x i8] c"Assert fail: (544 == int32(arg2.shape[2])), Argument arg2.shape[2] has an unsatisfied constraint\00", align 1
@.str.28 = private constant [97 x i8] c"Assert fail: (544 == int32(arg2.shape[3])), Argument arg2.shape[3] has an unsatisfied constraint\00", align 1
@.str.29 = private constant [205 x i8] c"Assert fail: ((((1 == int32(arg2.strides[3])) && (544 == int32(arg2.strides[2]))) && (295936 == int32(arg2.strides[1]))) && (9469952 == int32(arg2.strides[0]))), arg2.strides: expected to be compact array\00", align 1
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
  %71 = icmp eq i32 %70, 3
  br i1 %71, label %assert_end16, label %assert_fail15, !prof !5

assert_fail15:                                    ; preds = %assert_end14
  %72 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %72(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.8, i64 0, i64 0))
  ret i32 -1

assert_end16:                                     ; preds = %assert_end14
  %73 = getelementptr inbounds i64, i64* %21, i64 2
  %74 = load i64, i64* %73, align 8, !tbaa !44
  %75 = trunc i64 %74 to i32
  %76 = icmp eq i32 %75, 546
  br i1 %76, label %assert_end18, label %assert_fail17, !prof !5

assert_fail17:                                    ; preds = %assert_end16
  %77 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %77(i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.9, i64 0, i64 0))
  ret i32 -1

assert_end18:                                     ; preds = %assert_end16
  %78 = getelementptr inbounds i64, i64* %21, i64 3
  %79 = load i64, i64* %78, align 8, !tbaa !47
  %80 = trunc i64 %79 to i32
  %81 = icmp eq i32 %80, 546
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
  %87 = icmp eq <4 x i32> %86, <i32 894348, i32 298116, i32 546, i32 1>
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
  %112 = icmp eq i32 %111, 32
  br i1 %112, label %assert_end30, label %assert_fail29, !prof !5

assert_fail29:                                    ; preds = %assert_end28
  %113 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %113(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.15, i64 0, i64 0))
  ret i32 -1

assert_end30:                                     ; preds = %assert_end28
  %114 = getelementptr inbounds i64, i64* %31, i64 1
  %115 = load i64, i64* %114, align 8, !tbaa !76
  %116 = trunc i64 %115 to i32
  %117 = icmp eq i32 %116, 3
  br i1 %117, label %assert_end32, label %assert_fail31, !prof !5

assert_fail31:                                    ; preds = %assert_end30
  %118 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %118(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.16, i64 0, i64 0))
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
  %133 = icmp eq <4 x i32> %132, <i32 27, i32 9, i32 3, i32 1>
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
  tail call void %138(i8* getelementptr inbounds ([193 x i8], [193 x i8]* @.str.19, i64 0, i64 0))
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
  %171 = icmp eq i32 %170, 32
  br i1 %171, label %assert_end54, label %assert_fail53, !prof !5

assert_fail53:                                    ; preds = %assert_end52
  %172 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %172(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.26, i64 0, i64 0))
  ret i32 -1

assert_end54:                                     ; preds = %assert_end52
  %173 = getelementptr inbounds i64, i64* %37, i64 2
  %174 = load i64, i64* %173, align 8, !tbaa !111
  %175 = trunc i64 %174 to i32
  %176 = icmp eq i32 %175, 544
  br i1 %176, label %assert_end56, label %assert_fail55, !prof !5

assert_fail55:                                    ; preds = %assert_end54
  %177 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %177(i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.27, i64 0, i64 0))
  ret i32 -1

assert_end56:                                     ; preds = %assert_end54
  %178 = getelementptr inbounds i64, i64* %37, i64 3
  %179 = load i64, i64* %178, align 8, !tbaa !114
  %180 = trunc i64 %179 to i32
  %181 = icmp eq i32 %180, 544
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
  %187 = icmp eq <4 x i32> %186, <i32 9469952, i32 295936, i32 544, i32 1>
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
  tail call void %192(i8* getelementptr inbounds ([205 x i8], [205 x i8]* @.str.29, i64 0, i64 0))
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
  %5 = tail call i8* %4(i32 1, i32 %3, i64 3577392, i32 2, i32 32)
  %6 = load i8* (i32, i32, i64, i32, i32)*, i8* (i32, i32, i64, i32, i32)** @__TVMBackendAllocWorkspace, align 8, !tbaa !6
  %7 = tail call i8* %6(i32 1, i32 %3, i64 3456, i32 2, i32 32)
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
  %10 = add nsw i32 %9, 1637
  %11 = sdiv i32 %10, %9
  %12 = add nsw i32 %0, 1
  %13 = mul nsw i32 %11, %12
  %14 = icmp slt i32 %13, 1638
  %15 = select i1 %14, i32 %13, i32 1638
  %16 = mul nsw i32 %11, %0
  %17 = icmp slt i32 %16, 1638
  %18 = select i1 %17, i32 %16, i32 1638
  %19 = icmp slt i32 %18, %15
  br i1 %19, label %for_begin1.preheader.preheader, label %for_end, !prof !5

for_begin1.preheader.preheader:                   ; preds = %entry
  %20 = add i32 %18, 1
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %21, -1
  %23 = sext i32 %15 to i64
  br label %for_begin1.preheader

for_begin1.preheader:                             ; preds = %for_begin1.preheader.preheader, %for_begin1.preheader
  %indvars.iv5 = phi i64 [ %22, %for_begin1.preheader.preheader ], [ %indvars.iv.next6, %for_begin1.preheader ]
  %24 = mul nsw i64 %indvars.iv5, 546
  %25 = getelementptr inbounds float, float* %7, i64 %24
  %26 = bitcast float* %25 to <8 x i32>*
  %wide.load = load <8 x i32>, <8 x i32>* %26, align 4, !tbaa !128
  %27 = getelementptr inbounds float, float* %25, i64 8
  %28 = bitcast float* %27 to <8 x i32>*
  %wide.load10 = load <8 x i32>, <8 x i32>* %28, align 4, !tbaa !128
  %29 = getelementptr inbounds float, float* %25, i64 16
  %30 = bitcast float* %29 to <8 x i32>*
  %wide.load11 = load <8 x i32>, <8 x i32>* %30, align 4, !tbaa !128
  %31 = getelementptr inbounds float, float* %25, i64 24
  %32 = bitcast float* %31 to <8 x i32>*
  %wide.load12 = load <8 x i32>, <8 x i32>* %32, align 4, !tbaa !128
  %33 = getelementptr inbounds float, float* %4, i64 %24
  %34 = bitcast float* %33 to <8 x i32>*
  store <8 x i32> %wide.load, <8 x i32>* %34, align 4, !tbaa !131
  %35 = getelementptr inbounds float, float* %33, i64 8
  %36 = bitcast float* %35 to <8 x i32>*
  store <8 x i32> %wide.load10, <8 x i32>* %36, align 4, !tbaa !131
  %37 = getelementptr inbounds float, float* %33, i64 16
  %38 = bitcast float* %37 to <8 x i32>*
  store <8 x i32> %wide.load11, <8 x i32>* %38, align 4, !tbaa !131
  %39 = getelementptr inbounds float, float* %33, i64 24
  %40 = bitcast float* %39 to <8 x i32>*
  store <8 x i32> %wide.load12, <8 x i32>* %40, align 4, !tbaa !131
  %41 = add nsw i64 %24, 32
  %42 = getelementptr inbounds float, float* %7, i64 %41
  %43 = bitcast float* %42 to <8 x i32>*
  %wide.load.1 = load <8 x i32>, <8 x i32>* %43, align 4, !tbaa !128
  %44 = getelementptr inbounds float, float* %42, i64 8
  %45 = bitcast float* %44 to <8 x i32>*
  %wide.load10.1 = load <8 x i32>, <8 x i32>* %45, align 4, !tbaa !128
  %46 = getelementptr inbounds float, float* %42, i64 16
  %47 = bitcast float* %46 to <8 x i32>*
  %wide.load11.1 = load <8 x i32>, <8 x i32>* %47, align 4, !tbaa !128
  %48 = getelementptr inbounds float, float* %42, i64 24
  %49 = bitcast float* %48 to <8 x i32>*
  %wide.load12.1 = load <8 x i32>, <8 x i32>* %49, align 4, !tbaa !128
  %50 = getelementptr inbounds float, float* %4, i64 %41
  %51 = bitcast float* %50 to <8 x i32>*
  store <8 x i32> %wide.load.1, <8 x i32>* %51, align 4, !tbaa !131
  %52 = getelementptr inbounds float, float* %50, i64 8
  %53 = bitcast float* %52 to <8 x i32>*
  store <8 x i32> %wide.load10.1, <8 x i32>* %53, align 4, !tbaa !131
  %54 = getelementptr inbounds float, float* %50, i64 16
  %55 = bitcast float* %54 to <8 x i32>*
  store <8 x i32> %wide.load11.1, <8 x i32>* %55, align 4, !tbaa !131
  %56 = getelementptr inbounds float, float* %50, i64 24
  %57 = bitcast float* %56 to <8 x i32>*
  store <8 x i32> %wide.load12.1, <8 x i32>* %57, align 4, !tbaa !131
  %58 = add nsw i64 %24, 64
  %59 = getelementptr inbounds float, float* %7, i64 %58
  %60 = bitcast float* %59 to <8 x i32>*
  %wide.load.2 = load <8 x i32>, <8 x i32>* %60, align 4, !tbaa !128
  %61 = getelementptr inbounds float, float* %59, i64 8
  %62 = bitcast float* %61 to <8 x i32>*
  %wide.load10.2 = load <8 x i32>, <8 x i32>* %62, align 4, !tbaa !128
  %63 = getelementptr inbounds float, float* %59, i64 16
  %64 = bitcast float* %63 to <8 x i32>*
  %wide.load11.2 = load <8 x i32>, <8 x i32>* %64, align 4, !tbaa !128
  %65 = getelementptr inbounds float, float* %59, i64 24
  %66 = bitcast float* %65 to <8 x i32>*
  %wide.load12.2 = load <8 x i32>, <8 x i32>* %66, align 4, !tbaa !128
  %67 = getelementptr inbounds float, float* %4, i64 %58
  %68 = bitcast float* %67 to <8 x i32>*
  store <8 x i32> %wide.load.2, <8 x i32>* %68, align 4, !tbaa !131
  %69 = getelementptr inbounds float, float* %67, i64 8
  %70 = bitcast float* %69 to <8 x i32>*
  store <8 x i32> %wide.load10.2, <8 x i32>* %70, align 4, !tbaa !131
  %71 = getelementptr inbounds float, float* %67, i64 16
  %72 = bitcast float* %71 to <8 x i32>*
  store <8 x i32> %wide.load11.2, <8 x i32>* %72, align 4, !tbaa !131
  %73 = getelementptr inbounds float, float* %67, i64 24
  %74 = bitcast float* %73 to <8 x i32>*
  store <8 x i32> %wide.load12.2, <8 x i32>* %74, align 4, !tbaa !131
  %75 = add nsw i64 %24, 96
  %76 = getelementptr inbounds float, float* %7, i64 %75
  %77 = bitcast float* %76 to <8 x i32>*
  %wide.load.3 = load <8 x i32>, <8 x i32>* %77, align 4, !tbaa !128
  %78 = getelementptr inbounds float, float* %76, i64 8
  %79 = bitcast float* %78 to <8 x i32>*
  %wide.load10.3 = load <8 x i32>, <8 x i32>* %79, align 4, !tbaa !128
  %80 = getelementptr inbounds float, float* %76, i64 16
  %81 = bitcast float* %80 to <8 x i32>*
  %wide.load11.3 = load <8 x i32>, <8 x i32>* %81, align 4, !tbaa !128
  %82 = getelementptr inbounds float, float* %76, i64 24
  %83 = bitcast float* %82 to <8 x i32>*
  %wide.load12.3 = load <8 x i32>, <8 x i32>* %83, align 4, !tbaa !128
  %84 = getelementptr inbounds float, float* %4, i64 %75
  %85 = bitcast float* %84 to <8 x i32>*
  store <8 x i32> %wide.load.3, <8 x i32>* %85, align 4, !tbaa !131
  %86 = getelementptr inbounds float, float* %84, i64 8
  %87 = bitcast float* %86 to <8 x i32>*
  store <8 x i32> %wide.load10.3, <8 x i32>* %87, align 4, !tbaa !131
  %88 = getelementptr inbounds float, float* %84, i64 16
  %89 = bitcast float* %88 to <8 x i32>*
  store <8 x i32> %wide.load11.3, <8 x i32>* %89, align 4, !tbaa !131
  %90 = getelementptr inbounds float, float* %84, i64 24
  %91 = bitcast float* %90 to <8 x i32>*
  store <8 x i32> %wide.load12.3, <8 x i32>* %91, align 4, !tbaa !131
  %92 = add nsw i64 %24, 128
  %93 = getelementptr inbounds float, float* %7, i64 %92
  %94 = bitcast float* %93 to <8 x i32>*
  %wide.load.4 = load <8 x i32>, <8 x i32>* %94, align 4, !tbaa !128
  %95 = getelementptr inbounds float, float* %93, i64 8
  %96 = bitcast float* %95 to <8 x i32>*
  %wide.load10.4 = load <8 x i32>, <8 x i32>* %96, align 4, !tbaa !128
  %97 = getelementptr inbounds float, float* %93, i64 16
  %98 = bitcast float* %97 to <8 x i32>*
  %wide.load11.4 = load <8 x i32>, <8 x i32>* %98, align 4, !tbaa !128
  %99 = getelementptr inbounds float, float* %93, i64 24
  %100 = bitcast float* %99 to <8 x i32>*
  %wide.load12.4 = load <8 x i32>, <8 x i32>* %100, align 4, !tbaa !128
  %101 = getelementptr inbounds float, float* %4, i64 %92
  %102 = bitcast float* %101 to <8 x i32>*
  store <8 x i32> %wide.load.4, <8 x i32>* %102, align 4, !tbaa !131
  %103 = getelementptr inbounds float, float* %101, i64 8
  %104 = bitcast float* %103 to <8 x i32>*
  store <8 x i32> %wide.load10.4, <8 x i32>* %104, align 4, !tbaa !131
  %105 = getelementptr inbounds float, float* %101, i64 16
  %106 = bitcast float* %105 to <8 x i32>*
  store <8 x i32> %wide.load11.4, <8 x i32>* %106, align 4, !tbaa !131
  %107 = getelementptr inbounds float, float* %101, i64 24
  %108 = bitcast float* %107 to <8 x i32>*
  store <8 x i32> %wide.load12.4, <8 x i32>* %108, align 4, !tbaa !131
  %109 = add nsw i64 %24, 160
  %110 = getelementptr inbounds float, float* %7, i64 %109
  %111 = bitcast float* %110 to <8 x i32>*
  %wide.load.5 = load <8 x i32>, <8 x i32>* %111, align 4, !tbaa !128
  %112 = getelementptr inbounds float, float* %110, i64 8
  %113 = bitcast float* %112 to <8 x i32>*
  %wide.load10.5 = load <8 x i32>, <8 x i32>* %113, align 4, !tbaa !128
  %114 = getelementptr inbounds float, float* %110, i64 16
  %115 = bitcast float* %114 to <8 x i32>*
  %wide.load11.5 = load <8 x i32>, <8 x i32>* %115, align 4, !tbaa !128
  %116 = getelementptr inbounds float, float* %110, i64 24
  %117 = bitcast float* %116 to <8 x i32>*
  %wide.load12.5 = load <8 x i32>, <8 x i32>* %117, align 4, !tbaa !128
  %118 = getelementptr inbounds float, float* %4, i64 %109
  %119 = bitcast float* %118 to <8 x i32>*
  store <8 x i32> %wide.load.5, <8 x i32>* %119, align 4, !tbaa !131
  %120 = getelementptr inbounds float, float* %118, i64 8
  %121 = bitcast float* %120 to <8 x i32>*
  store <8 x i32> %wide.load10.5, <8 x i32>* %121, align 4, !tbaa !131
  %122 = getelementptr inbounds float, float* %118, i64 16
  %123 = bitcast float* %122 to <8 x i32>*
  store <8 x i32> %wide.load11.5, <8 x i32>* %123, align 4, !tbaa !131
  %124 = getelementptr inbounds float, float* %118, i64 24
  %125 = bitcast float* %124 to <8 x i32>*
  store <8 x i32> %wide.load12.5, <8 x i32>* %125, align 4, !tbaa !131
  %126 = add nsw i64 %24, 192
  %127 = getelementptr inbounds float, float* %7, i64 %126
  %128 = bitcast float* %127 to <8 x i32>*
  %wide.load.6 = load <8 x i32>, <8 x i32>* %128, align 4, !tbaa !128
  %129 = getelementptr inbounds float, float* %127, i64 8
  %130 = bitcast float* %129 to <8 x i32>*
  %wide.load10.6 = load <8 x i32>, <8 x i32>* %130, align 4, !tbaa !128
  %131 = getelementptr inbounds float, float* %127, i64 16
  %132 = bitcast float* %131 to <8 x i32>*
  %wide.load11.6 = load <8 x i32>, <8 x i32>* %132, align 4, !tbaa !128
  %133 = getelementptr inbounds float, float* %127, i64 24
  %134 = bitcast float* %133 to <8 x i32>*
  %wide.load12.6 = load <8 x i32>, <8 x i32>* %134, align 4, !tbaa !128
  %135 = getelementptr inbounds float, float* %4, i64 %126
  %136 = bitcast float* %135 to <8 x i32>*
  store <8 x i32> %wide.load.6, <8 x i32>* %136, align 4, !tbaa !131
  %137 = getelementptr inbounds float, float* %135, i64 8
  %138 = bitcast float* %137 to <8 x i32>*
  store <8 x i32> %wide.load10.6, <8 x i32>* %138, align 4, !tbaa !131
  %139 = getelementptr inbounds float, float* %135, i64 16
  %140 = bitcast float* %139 to <8 x i32>*
  store <8 x i32> %wide.load11.6, <8 x i32>* %140, align 4, !tbaa !131
  %141 = getelementptr inbounds float, float* %135, i64 24
  %142 = bitcast float* %141 to <8 x i32>*
  store <8 x i32> %wide.load12.6, <8 x i32>* %142, align 4, !tbaa !131
  %143 = add nsw i64 %24, 224
  %144 = getelementptr inbounds float, float* %7, i64 %143
  %145 = bitcast float* %144 to <8 x i32>*
  %wide.load.7 = load <8 x i32>, <8 x i32>* %145, align 4, !tbaa !128
  %146 = getelementptr inbounds float, float* %144, i64 8
  %147 = bitcast float* %146 to <8 x i32>*
  %wide.load10.7 = load <8 x i32>, <8 x i32>* %147, align 4, !tbaa !128
  %148 = getelementptr inbounds float, float* %144, i64 16
  %149 = bitcast float* %148 to <8 x i32>*
  %wide.load11.7 = load <8 x i32>, <8 x i32>* %149, align 4, !tbaa !128
  %150 = getelementptr inbounds float, float* %144, i64 24
  %151 = bitcast float* %150 to <8 x i32>*
  %wide.load12.7 = load <8 x i32>, <8 x i32>* %151, align 4, !tbaa !128
  %152 = getelementptr inbounds float, float* %4, i64 %143
  %153 = bitcast float* %152 to <8 x i32>*
  store <8 x i32> %wide.load.7, <8 x i32>* %153, align 4, !tbaa !131
  %154 = getelementptr inbounds float, float* %152, i64 8
  %155 = bitcast float* %154 to <8 x i32>*
  store <8 x i32> %wide.load10.7, <8 x i32>* %155, align 4, !tbaa !131
  %156 = getelementptr inbounds float, float* %152, i64 16
  %157 = bitcast float* %156 to <8 x i32>*
  store <8 x i32> %wide.load11.7, <8 x i32>* %157, align 4, !tbaa !131
  %158 = getelementptr inbounds float, float* %152, i64 24
  %159 = bitcast float* %158 to <8 x i32>*
  store <8 x i32> %wide.load12.7, <8 x i32>* %159, align 4, !tbaa !131
  %160 = add nsw i64 %24, 256
  %161 = getelementptr inbounds float, float* %7, i64 %160
  %162 = bitcast float* %161 to <8 x i32>*
  %wide.load.8 = load <8 x i32>, <8 x i32>* %162, align 4, !tbaa !128
  %163 = getelementptr inbounds float, float* %161, i64 8
  %164 = bitcast float* %163 to <8 x i32>*
  %wide.load10.8 = load <8 x i32>, <8 x i32>* %164, align 4, !tbaa !128
  %165 = getelementptr inbounds float, float* %161, i64 16
  %166 = bitcast float* %165 to <8 x i32>*
  %wide.load11.8 = load <8 x i32>, <8 x i32>* %166, align 4, !tbaa !128
  %167 = getelementptr inbounds float, float* %161, i64 24
  %168 = bitcast float* %167 to <8 x i32>*
  %wide.load12.8 = load <8 x i32>, <8 x i32>* %168, align 4, !tbaa !128
  %169 = getelementptr inbounds float, float* %4, i64 %160
  %170 = bitcast float* %169 to <8 x i32>*
  store <8 x i32> %wide.load.8, <8 x i32>* %170, align 4, !tbaa !131
  %171 = getelementptr inbounds float, float* %169, i64 8
  %172 = bitcast float* %171 to <8 x i32>*
  store <8 x i32> %wide.load10.8, <8 x i32>* %172, align 4, !tbaa !131
  %173 = getelementptr inbounds float, float* %169, i64 16
  %174 = bitcast float* %173 to <8 x i32>*
  store <8 x i32> %wide.load11.8, <8 x i32>* %174, align 4, !tbaa !131
  %175 = getelementptr inbounds float, float* %169, i64 24
  %176 = bitcast float* %175 to <8 x i32>*
  store <8 x i32> %wide.load12.8, <8 x i32>* %176, align 4, !tbaa !131
  %177 = add nsw i64 %24, 288
  %178 = getelementptr inbounds float, float* %7, i64 %177
  %179 = bitcast float* %178 to <8 x i32>*
  %wide.load.9 = load <8 x i32>, <8 x i32>* %179, align 4, !tbaa !128
  %180 = getelementptr inbounds float, float* %178, i64 8
  %181 = bitcast float* %180 to <8 x i32>*
  %wide.load10.9 = load <8 x i32>, <8 x i32>* %181, align 4, !tbaa !128
  %182 = getelementptr inbounds float, float* %178, i64 16
  %183 = bitcast float* %182 to <8 x i32>*
  %wide.load11.9 = load <8 x i32>, <8 x i32>* %183, align 4, !tbaa !128
  %184 = getelementptr inbounds float, float* %178, i64 24
  %185 = bitcast float* %184 to <8 x i32>*
  %wide.load12.9 = load <8 x i32>, <8 x i32>* %185, align 4, !tbaa !128
  %186 = getelementptr inbounds float, float* %4, i64 %177
  %187 = bitcast float* %186 to <8 x i32>*
  store <8 x i32> %wide.load.9, <8 x i32>* %187, align 4, !tbaa !131
  %188 = getelementptr inbounds float, float* %186, i64 8
  %189 = bitcast float* %188 to <8 x i32>*
  store <8 x i32> %wide.load10.9, <8 x i32>* %189, align 4, !tbaa !131
  %190 = getelementptr inbounds float, float* %186, i64 16
  %191 = bitcast float* %190 to <8 x i32>*
  store <8 x i32> %wide.load11.9, <8 x i32>* %191, align 4, !tbaa !131
  %192 = getelementptr inbounds float, float* %186, i64 24
  %193 = bitcast float* %192 to <8 x i32>*
  store <8 x i32> %wide.load12.9, <8 x i32>* %193, align 4, !tbaa !131
  %194 = add nsw i64 %24, 320
  %195 = getelementptr inbounds float, float* %7, i64 %194
  %196 = bitcast float* %195 to <8 x i32>*
  %wide.load.10 = load <8 x i32>, <8 x i32>* %196, align 4, !tbaa !128
  %197 = getelementptr inbounds float, float* %195, i64 8
  %198 = bitcast float* %197 to <8 x i32>*
  %wide.load10.10 = load <8 x i32>, <8 x i32>* %198, align 4, !tbaa !128
  %199 = getelementptr inbounds float, float* %195, i64 16
  %200 = bitcast float* %199 to <8 x i32>*
  %wide.load11.10 = load <8 x i32>, <8 x i32>* %200, align 4, !tbaa !128
  %201 = getelementptr inbounds float, float* %195, i64 24
  %202 = bitcast float* %201 to <8 x i32>*
  %wide.load12.10 = load <8 x i32>, <8 x i32>* %202, align 4, !tbaa !128
  %203 = getelementptr inbounds float, float* %4, i64 %194
  %204 = bitcast float* %203 to <8 x i32>*
  store <8 x i32> %wide.load.10, <8 x i32>* %204, align 4, !tbaa !131
  %205 = getelementptr inbounds float, float* %203, i64 8
  %206 = bitcast float* %205 to <8 x i32>*
  store <8 x i32> %wide.load10.10, <8 x i32>* %206, align 4, !tbaa !131
  %207 = getelementptr inbounds float, float* %203, i64 16
  %208 = bitcast float* %207 to <8 x i32>*
  store <8 x i32> %wide.load11.10, <8 x i32>* %208, align 4, !tbaa !131
  %209 = getelementptr inbounds float, float* %203, i64 24
  %210 = bitcast float* %209 to <8 x i32>*
  store <8 x i32> %wide.load12.10, <8 x i32>* %210, align 4, !tbaa !131
  %211 = add nsw i64 %24, 352
  %212 = getelementptr inbounds float, float* %7, i64 %211
  %213 = bitcast float* %212 to <8 x i32>*
  %wide.load.11 = load <8 x i32>, <8 x i32>* %213, align 4, !tbaa !128
  %214 = getelementptr inbounds float, float* %212, i64 8
  %215 = bitcast float* %214 to <8 x i32>*
  %wide.load10.11 = load <8 x i32>, <8 x i32>* %215, align 4, !tbaa !128
  %216 = getelementptr inbounds float, float* %212, i64 16
  %217 = bitcast float* %216 to <8 x i32>*
  %wide.load11.11 = load <8 x i32>, <8 x i32>* %217, align 4, !tbaa !128
  %218 = getelementptr inbounds float, float* %212, i64 24
  %219 = bitcast float* %218 to <8 x i32>*
  %wide.load12.11 = load <8 x i32>, <8 x i32>* %219, align 4, !tbaa !128
  %220 = getelementptr inbounds float, float* %4, i64 %211
  %221 = bitcast float* %220 to <8 x i32>*
  store <8 x i32> %wide.load.11, <8 x i32>* %221, align 4, !tbaa !131
  %222 = getelementptr inbounds float, float* %220, i64 8
  %223 = bitcast float* %222 to <8 x i32>*
  store <8 x i32> %wide.load10.11, <8 x i32>* %223, align 4, !tbaa !131
  %224 = getelementptr inbounds float, float* %220, i64 16
  %225 = bitcast float* %224 to <8 x i32>*
  store <8 x i32> %wide.load11.11, <8 x i32>* %225, align 4, !tbaa !131
  %226 = getelementptr inbounds float, float* %220, i64 24
  %227 = bitcast float* %226 to <8 x i32>*
  store <8 x i32> %wide.load12.11, <8 x i32>* %227, align 4, !tbaa !131
  %228 = add nsw i64 %24, 384
  %229 = getelementptr inbounds float, float* %7, i64 %228
  %230 = bitcast float* %229 to <8 x i32>*
  %wide.load.12 = load <8 x i32>, <8 x i32>* %230, align 4, !tbaa !128
  %231 = getelementptr inbounds float, float* %229, i64 8
  %232 = bitcast float* %231 to <8 x i32>*
  %wide.load10.12 = load <8 x i32>, <8 x i32>* %232, align 4, !tbaa !128
  %233 = getelementptr inbounds float, float* %229, i64 16
  %234 = bitcast float* %233 to <8 x i32>*
  %wide.load11.12 = load <8 x i32>, <8 x i32>* %234, align 4, !tbaa !128
  %235 = getelementptr inbounds float, float* %229, i64 24
  %236 = bitcast float* %235 to <8 x i32>*
  %wide.load12.12 = load <8 x i32>, <8 x i32>* %236, align 4, !tbaa !128
  %237 = getelementptr inbounds float, float* %4, i64 %228
  %238 = bitcast float* %237 to <8 x i32>*
  store <8 x i32> %wide.load.12, <8 x i32>* %238, align 4, !tbaa !131
  %239 = getelementptr inbounds float, float* %237, i64 8
  %240 = bitcast float* %239 to <8 x i32>*
  store <8 x i32> %wide.load10.12, <8 x i32>* %240, align 4, !tbaa !131
  %241 = getelementptr inbounds float, float* %237, i64 16
  %242 = bitcast float* %241 to <8 x i32>*
  store <8 x i32> %wide.load11.12, <8 x i32>* %242, align 4, !tbaa !131
  %243 = getelementptr inbounds float, float* %237, i64 24
  %244 = bitcast float* %243 to <8 x i32>*
  store <8 x i32> %wide.load12.12, <8 x i32>* %244, align 4, !tbaa !131
  %245 = add nsw i64 %24, 416
  %246 = getelementptr inbounds float, float* %7, i64 %245
  %247 = bitcast float* %246 to <8 x i32>*
  %wide.load.13 = load <8 x i32>, <8 x i32>* %247, align 4, !tbaa !128
  %248 = getelementptr inbounds float, float* %246, i64 8
  %249 = bitcast float* %248 to <8 x i32>*
  %wide.load10.13 = load <8 x i32>, <8 x i32>* %249, align 4, !tbaa !128
  %250 = getelementptr inbounds float, float* %246, i64 16
  %251 = bitcast float* %250 to <8 x i32>*
  %wide.load11.13 = load <8 x i32>, <8 x i32>* %251, align 4, !tbaa !128
  %252 = getelementptr inbounds float, float* %246, i64 24
  %253 = bitcast float* %252 to <8 x i32>*
  %wide.load12.13 = load <8 x i32>, <8 x i32>* %253, align 4, !tbaa !128
  %254 = getelementptr inbounds float, float* %4, i64 %245
  %255 = bitcast float* %254 to <8 x i32>*
  store <8 x i32> %wide.load.13, <8 x i32>* %255, align 4, !tbaa !131
  %256 = getelementptr inbounds float, float* %254, i64 8
  %257 = bitcast float* %256 to <8 x i32>*
  store <8 x i32> %wide.load10.13, <8 x i32>* %257, align 4, !tbaa !131
  %258 = getelementptr inbounds float, float* %254, i64 16
  %259 = bitcast float* %258 to <8 x i32>*
  store <8 x i32> %wide.load11.13, <8 x i32>* %259, align 4, !tbaa !131
  %260 = getelementptr inbounds float, float* %254, i64 24
  %261 = bitcast float* %260 to <8 x i32>*
  store <8 x i32> %wide.load12.13, <8 x i32>* %261, align 4, !tbaa !131
  %262 = add nsw i64 %24, 448
  %263 = getelementptr inbounds float, float* %7, i64 %262
  %264 = bitcast float* %263 to <8 x i32>*
  %wide.load.14 = load <8 x i32>, <8 x i32>* %264, align 4, !tbaa !128
  %265 = getelementptr inbounds float, float* %263, i64 8
  %266 = bitcast float* %265 to <8 x i32>*
  %wide.load10.14 = load <8 x i32>, <8 x i32>* %266, align 4, !tbaa !128
  %267 = getelementptr inbounds float, float* %263, i64 16
  %268 = bitcast float* %267 to <8 x i32>*
  %wide.load11.14 = load <8 x i32>, <8 x i32>* %268, align 4, !tbaa !128
  %269 = getelementptr inbounds float, float* %263, i64 24
  %270 = bitcast float* %269 to <8 x i32>*
  %wide.load12.14 = load <8 x i32>, <8 x i32>* %270, align 4, !tbaa !128
  %271 = getelementptr inbounds float, float* %4, i64 %262
  %272 = bitcast float* %271 to <8 x i32>*
  store <8 x i32> %wide.load.14, <8 x i32>* %272, align 4, !tbaa !131
  %273 = getelementptr inbounds float, float* %271, i64 8
  %274 = bitcast float* %273 to <8 x i32>*
  store <8 x i32> %wide.load10.14, <8 x i32>* %274, align 4, !tbaa !131
  %275 = getelementptr inbounds float, float* %271, i64 16
  %276 = bitcast float* %275 to <8 x i32>*
  store <8 x i32> %wide.load11.14, <8 x i32>* %276, align 4, !tbaa !131
  %277 = getelementptr inbounds float, float* %271, i64 24
  %278 = bitcast float* %277 to <8 x i32>*
  store <8 x i32> %wide.load12.14, <8 x i32>* %278, align 4, !tbaa !131
  %279 = add nsw i64 %24, 480
  %280 = getelementptr inbounds float, float* %7, i64 %279
  %281 = bitcast float* %280 to <8 x i32>*
  %wide.load.15 = load <8 x i32>, <8 x i32>* %281, align 4, !tbaa !128
  %282 = getelementptr inbounds float, float* %280, i64 8
  %283 = bitcast float* %282 to <8 x i32>*
  %wide.load10.15 = load <8 x i32>, <8 x i32>* %283, align 4, !tbaa !128
  %284 = getelementptr inbounds float, float* %280, i64 16
  %285 = bitcast float* %284 to <8 x i32>*
  %wide.load11.15 = load <8 x i32>, <8 x i32>* %285, align 4, !tbaa !128
  %286 = getelementptr inbounds float, float* %280, i64 24
  %287 = bitcast float* %286 to <8 x i32>*
  %wide.load12.15 = load <8 x i32>, <8 x i32>* %287, align 4, !tbaa !128
  %288 = getelementptr inbounds float, float* %4, i64 %279
  %289 = bitcast float* %288 to <8 x i32>*
  store <8 x i32> %wide.load.15, <8 x i32>* %289, align 4, !tbaa !131
  %290 = getelementptr inbounds float, float* %288, i64 8
  %291 = bitcast float* %290 to <8 x i32>*
  store <8 x i32> %wide.load10.15, <8 x i32>* %291, align 4, !tbaa !131
  %292 = getelementptr inbounds float, float* %288, i64 16
  %293 = bitcast float* %292 to <8 x i32>*
  store <8 x i32> %wide.load11.15, <8 x i32>* %293, align 4, !tbaa !131
  %294 = getelementptr inbounds float, float* %288, i64 24
  %295 = bitcast float* %294 to <8 x i32>*
  store <8 x i32> %wide.load12.15, <8 x i32>* %295, align 4, !tbaa !131
  %296 = add nsw i64 %24, 512
  %297 = getelementptr inbounds float, float* %7, i64 %296
  %298 = bitcast float* %297 to <8 x i32>*
  %wide.load.16 = load <8 x i32>, <8 x i32>* %298, align 4, !tbaa !128
  %299 = getelementptr inbounds float, float* %297, i64 8
  %300 = bitcast float* %299 to <8 x i32>*
  %wide.load10.16 = load <8 x i32>, <8 x i32>* %300, align 4, !tbaa !128
  %301 = getelementptr inbounds float, float* %297, i64 16
  %302 = bitcast float* %301 to <8 x i32>*
  %wide.load11.16 = load <8 x i32>, <8 x i32>* %302, align 4, !tbaa !128
  %303 = getelementptr inbounds float, float* %297, i64 24
  %304 = bitcast float* %303 to <8 x i32>*
  %wide.load12.16 = load <8 x i32>, <8 x i32>* %304, align 4, !tbaa !128
  %305 = getelementptr inbounds float, float* %4, i64 %296
  %306 = bitcast float* %305 to <8 x i32>*
  store <8 x i32> %wide.load.16, <8 x i32>* %306, align 4, !tbaa !131
  %307 = getelementptr inbounds float, float* %305, i64 8
  %308 = bitcast float* %307 to <8 x i32>*
  store <8 x i32> %wide.load10.16, <8 x i32>* %308, align 4, !tbaa !131
  %309 = getelementptr inbounds float, float* %305, i64 16
  %310 = bitcast float* %309 to <8 x i32>*
  store <8 x i32> %wide.load11.16, <8 x i32>* %310, align 4, !tbaa !131
  %311 = getelementptr inbounds float, float* %305, i64 24
  %312 = bitcast float* %311 to <8 x i32>*
  store <8 x i32> %wide.load12.16, <8 x i32>* %312, align 4, !tbaa !131
  %313 = add nsw i64 %24, 544
  %314 = getelementptr inbounds float, float* %7, i64 %313
  %315 = bitcast float* %314 to i32*
  %316 = load i32, i32* %315, align 4, !tbaa !128
  %317 = getelementptr inbounds float, float* %4, i64 %313
  %318 = bitcast float* %317 to i32*
  store i32 %316, i32* %318, align 4, !tbaa !131
  %319 = add nsw i64 %24, 545
  %320 = getelementptr inbounds float, float* %7, i64 %319
  %321 = bitcast float* %320 to i32*
  %322 = load i32, i32* %321, align 4, !tbaa !128
  %323 = getelementptr inbounds float, float* %4, i64 %319
  %324 = bitcast float* %323 to i32*
  store i32 %322, i32* %324, align 4, !tbaa !131
  %indvars.iv.next6 = add nsw i64 %indvars.iv5, 1
  %325 = icmp slt i64 %indvars.iv.next6, %23
  br i1 %325, label %for_begin1.preheader, label %for_end, !prof !5

for_end:                                          ; preds = %for_begin1.preheader, %entry
  ret i32 0
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
  %10 = add nsw i32 %9, 95
  %11 = sdiv i32 %10, %9
  %12 = add nsw i32 %0, 1
  %13 = mul nsw i32 %11, %12
  %14 = icmp slt i32 %13, 96
  %15 = select i1 %14, i32 %13, i32 96
  %16 = mul nsw i32 %11, %0
  %17 = icmp slt i32 %16, 96
  %18 = select i1 %17, i32 %16, i32 96
  %19 = icmp slt i32 %18, %15
  br i1 %19, label %for_begin1.preheader, label %for_end, !prof !5

for_begin1.preheader:                             ; preds = %entry, %for_begin1.preheader
  %20 = phi i32 [ %84, %for_begin1.preheader ], [ %18, %entry ]
  %21 = srem i32 %20, 3
  %22 = mul nsw i32 %21, 3
  %23 = sdiv i32 %20, 3
  %24 = mul nsw i32 %23, 27
  %25 = add i32 %22, %24
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds float, float* %7, i64 %26
  %28 = bitcast float* %27 to i32*
  %29 = load i32, i32* %28, align 4, !tbaa !134
  %30 = getelementptr inbounds float, float* %4, i64 %26
  %31 = bitcast float* %30 to i32*
  store i32 %29, i32* %31, align 4, !tbaa !137
  %32 = insertelement <8 x i32> undef, i32 %25, i32 0
  %33 = shufflevector <8 x i32> %32, <8 x i32> undef, <8 x i32> zeroinitializer
  %34 = add <8 x i32> %33, <i32 1, i32 2, i32 9, i32 10, i32 11, i32 18, i32 19, i32 20>
  %35 = sext <8 x i32> %34 to <8 x i64>
  %36 = extractelement <8 x i64> %35, i32 0
  %37 = getelementptr inbounds float, float* %7, i64 %36
  %38 = bitcast float* %37 to i32*
  %39 = load i32, i32* %38, align 4, !tbaa !134
  %40 = getelementptr inbounds float, float* %4, i64 %36
  %41 = bitcast float* %40 to i32*
  store i32 %39, i32* %41, align 4, !tbaa !137
  %42 = extractelement <8 x i64> %35, i32 1
  %43 = getelementptr inbounds float, float* %7, i64 %42
  %44 = bitcast float* %43 to i32*
  %45 = load i32, i32* %44, align 4, !tbaa !134
  %46 = getelementptr inbounds float, float* %4, i64 %42
  %47 = bitcast float* %46 to i32*
  store i32 %45, i32* %47, align 4, !tbaa !137
  %48 = extractelement <8 x i64> %35, i32 2
  %49 = getelementptr inbounds float, float* %7, i64 %48
  %50 = bitcast float* %49 to i32*
  %51 = load i32, i32* %50, align 4, !tbaa !134
  %52 = getelementptr inbounds float, float* %4, i64 %48
  %53 = bitcast float* %52 to i32*
  store i32 %51, i32* %53, align 4, !tbaa !137
  %54 = extractelement <8 x i64> %35, i32 3
  %55 = getelementptr inbounds float, float* %7, i64 %54
  %56 = bitcast float* %55 to i32*
  %57 = load i32, i32* %56, align 4, !tbaa !134
  %58 = getelementptr inbounds float, float* %4, i64 %54
  %59 = bitcast float* %58 to i32*
  store i32 %57, i32* %59, align 4, !tbaa !137
  %60 = extractelement <8 x i64> %35, i32 4
  %61 = getelementptr inbounds float, float* %7, i64 %60
  %62 = bitcast float* %61 to i32*
  %63 = load i32, i32* %62, align 4, !tbaa !134
  %64 = getelementptr inbounds float, float* %4, i64 %60
  %65 = bitcast float* %64 to i32*
  store i32 %63, i32* %65, align 4, !tbaa !137
  %66 = extractelement <8 x i64> %35, i32 5
  %67 = getelementptr inbounds float, float* %7, i64 %66
  %68 = bitcast float* %67 to i32*
  %69 = load i32, i32* %68, align 4, !tbaa !134
  %70 = getelementptr inbounds float, float* %4, i64 %66
  %71 = bitcast float* %70 to i32*
  store i32 %69, i32* %71, align 4, !tbaa !137
  %72 = extractelement <8 x i64> %35, i32 6
  %73 = getelementptr inbounds float, float* %7, i64 %72
  %74 = bitcast float* %73 to i32*
  %75 = load i32, i32* %74, align 4, !tbaa !134
  %76 = getelementptr inbounds float, float* %4, i64 %72
  %77 = bitcast float* %76 to i32*
  store i32 %75, i32* %77, align 4, !tbaa !137
  %78 = extractelement <8 x i64> %35, i32 7
  %79 = getelementptr inbounds float, float* %7, i64 %78
  %80 = bitcast float* %79 to i32*
  %81 = load i32, i32* %80, align 4, !tbaa !134
  %82 = getelementptr inbounds float, float* %4, i64 %78
  %83 = bitcast float* %82 to i32*
  store i32 %81, i32* %83, align 4, !tbaa !137
  %84 = add nsw i32 %20, 1
  %85 = icmp slt i32 %84, %15
  br i1 %85, label %for_begin1.preheader, label %for_end, !prof !5

for_end:                                          ; preds = %for_begin1.preheader, %entry
  ret i32 0
}

define private i32 @__tvm_parallel_lambda.34(i32, %0* nocapture readonly, i8* nocapture readonly) {
entry:
  %3 = alloca [32 x float], align 16
  %4 = bitcast i8* %2 to float**
  %5 = load float*, float** %4, align 8
  %6 = getelementptr inbounds i8, i8* %2, i64 8
  %7 = bitcast i8* %6 to float**
  %8 = load float*, float** %7, align 8
  %9 = getelementptr inbounds i8, i8* %2, i64 16
  %10 = bitcast i8* %9 to float**
  %11 = load float*, float** %10, align 8
  %12 = getelementptr inbounds i8, i8* %2, i64 24
  %13 = bitcast i8* %12 to i32*
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %0, %0* %1, i64 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %16, 17407
  %18 = sdiv i32 %17, %16
  %19 = add nsw i32 %0, 1
  %20 = mul nsw i32 %18, %19
  %21 = icmp slt i32 %20, 17408
  %22 = select i1 %21, i32 %20, i32 17408
  %23 = mul nsw i32 %18, %0
  %24 = icmp slt i32 %23, 17408
  %25 = select i1 %24, i32 %23, i32 17408
  %26 = icmp slt i32 %25, %22
  br i1 %26, label %for_body.lr.ph, label %for_end, !prof !5

for_body.lr.ph:                                   ; preds = %entry
  %27 = getelementptr inbounds [32 x float], [32 x float]* %3, i64 0, i64 8
  %28 = getelementptr inbounds [32 x float], [32 x float]* %3, i64 0, i64 14
  %29 = getelementptr inbounds [32 x float], [32 x float]* %3, i64 0, i64 15
  %30 = getelementptr inbounds [32 x float], [32 x float]* %3, i64 0, i64 16
  %31 = getelementptr inbounds [32 x float], [32 x float]* %3, i64 0, i64 24
  %32 = bitcast [32 x float]* %3 to i8*
  %33 = bitcast float* %28 to i32*
  %34 = bitcast float* %29 to i32*
  %35 = bitcast [32 x float]* %3 to <8 x float>*
  %36 = bitcast float* %27 to <8 x float>*
  %37 = bitcast float* %30 to <8 x float>*
  %38 = bitcast float* %31 to <8 x float>*
  %39 = bitcast float* %30 to <8 x i32>*
  %40 = bitcast float* %31 to <8 x i32>*
  br label %for_body

for_body:                                         ; preds = %for_body.lr.ph, %for_end18
  %41 = phi i32 [ %25, %for_body.lr.ph ], [ %627, %for_end18 ]
  %42 = load i8* (i32, i32, i64, i32, i32)*, i8* (i32, i32, i64, i32, i32)** @__TVMBackendAllocWorkspace, align 8, !tbaa !6
  %43 = tail call i8* %42(i32 1, i32 %14, i64 2176, i32 2, i32 32)
  %44 = srem i32 %41, 544
  %45 = sdiv i32 %41, 544
  %46 = mul nsw i32 %45, 27
  %47 = bitcast i8* %43 to float*
  %48 = sext i32 %46 to i64
  %reass.mul = mul nsw i32 %44, 546
  %49 = mul nsw i32 %44, 546
  %reass.mul.1 = add nsw i32 %49, 546
  %50 = mul nsw i32 %44, 546
  %reass.mul.2 = add nsw i32 %50, 1092
  br label %for_body2

for_end:                                          ; preds = %for_end18, %entry
  ret i32 0

for_begin16.preheader:                            ; preds = %for_begin13.preheader
  %51 = mul nsw i32 %41, 544
  br label %for_begin19.preheader

for_body2:                                        ; preds = %for_begin13.preheader, %for_body
  %indvar = phi i64 [ 0, %for_body ], [ %indvar.next, %for_begin13.preheader ]
  %52 = shl i64 %indvar, 5
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %32, i8 0, i64 128, i1 false)
  br label %for_begin7.preheader

for_begin13.preheader:                            ; preds = %for_begin7.preheader
  %53 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %272, <8 x float> %274, <8 x float> %245)
  %54 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %279, <8 x float> %274, <8 x float> %250)
  %55 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %295, <8 x float> %297, <8 x float> %53)
  %56 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %302, <8 x float> %297, <8 x float> %54)
  %57 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %318, <8 x float> %320, <8 x float> %55)
  %58 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %325, <8 x float> %320, <8 x float> %56)
  %59 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %289, <8 x float> %274, <8 x float> %260)
  %60 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %312, <8 x float> %297, <8 x float> %59)
  %61 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %335, <8 x float> %320, <8 x float> %60)
  %62 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %284, <8 x float> %274, <8 x float> %255)
  %63 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %307, <8 x float> %297, <8 x float> %62)
  %64 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %330, <8 x float> %320, <8 x float> %63)
  store <8 x float> %57, <8 x float>* %35, align 16, !tbaa !140
  store <8 x float> %58, <8 x float>* %36, align 16, !tbaa !151
  store <8 x float> %64, <8 x float>* %37, align 16, !tbaa !153
  store <8 x float> %61, <8 x float>* %38, align 16, !tbaa !156
  %65 = getelementptr inbounds float, float* %47, i64 %52
  %66 = bitcast float* %65 to <8 x float>*
  store <8 x float> %57, <8 x float>* %66, align 4, !tbaa !158
  %67 = or i64 %52, 8
  %68 = getelementptr inbounds float, float* %47, i64 %67
  %69 = extractelement <8 x float> %58, i32 0
  store float %69, float* %68, align 4, !tbaa !158
  %70 = or i64 %52, 9
  %71 = getelementptr inbounds float, float* %47, i64 %70
  %72 = extractelement <8 x float> %58, i32 1
  store float %72, float* %71, align 4, !tbaa !158
  %73 = or i64 %52, 10
  %74 = getelementptr inbounds float, float* %47, i64 %73
  %75 = extractelement <8 x float> %58, i32 2
  store float %75, float* %74, align 4, !tbaa !158
  %76 = or i64 %52, 11
  %77 = getelementptr inbounds float, float* %47, i64 %76
  %78 = extractelement <8 x float> %58, i32 3
  store float %78, float* %77, align 4, !tbaa !158
  %79 = or i64 %52, 12
  %80 = getelementptr inbounds float, float* %47, i64 %79
  %81 = extractelement <8 x float> %58, i32 4
  store float %81, float* %80, align 4, !tbaa !158
  %82 = or i64 %52, 13
  %83 = getelementptr inbounds float, float* %47, i64 %82
  %84 = extractelement <8 x float> %58, i32 5
  store float %84, float* %83, align 4, !tbaa !158
  %85 = or i64 %52, 14
  %86 = load i32, i32* %33, align 8, !tbaa !161
  %87 = getelementptr inbounds float, float* %47, i64 %85
  %88 = bitcast float* %87 to i32*
  store i32 %86, i32* %88, align 4, !tbaa !158
  %89 = or i64 %52, 15
  %90 = load i32, i32* %34, align 4, !tbaa !161
  %91 = getelementptr inbounds float, float* %47, i64 %89
  %92 = bitcast float* %91 to i32*
  store i32 %90, i32* %92, align 4, !tbaa !158
  %93 = or i64 %52, 16
  %94 = getelementptr inbounds float, float* %47, i64 %93
  %95 = load <8 x i32>, <8 x i32>* %39, align 16, !tbaa !161
  %96 = bitcast float* %94 to <8 x i32>*
  store <8 x i32> %95, <8 x i32>* %96, align 4, !tbaa !158
  %97 = or i64 %52, 24
  %98 = getelementptr inbounds float, float* %47, i64 %97
  %99 = load <8 x i32>, <8 x i32>* %40, align 16, !tbaa !161
  %100 = bitcast float* %98 to <8 x i32>*
  store <8 x i32> %99, <8 x i32>* %100, align 4, !tbaa !158
  %indvar.next = add nuw nsw i64 %indvar, 1
  %exitcond252 = icmp eq i64 %indvar.next, 17
  br i1 %exitcond252, label %for_begin16.preheader, label %for_body2, !prof !49

for_begin7.preheader:                             ; preds = %for_begin7.preheader, %for_body2
  %indvars.iv246 = phi i64 [ 0, %for_body2 ], [ %indvars.iv.next247, %for_begin7.preheader ]
  %101 = phi <8 x float> [ zeroinitializer, %for_body2 ], [ %321, %for_begin7.preheader ]
  %102 = phi <8 x float> [ zeroinitializer, %for_body2 ], [ %326, %for_begin7.preheader ]
  %103 = phi <8 x float> [ zeroinitializer, %for_body2 ], [ %331, %for_begin7.preheader ]
  %104 = phi <8 x float> [ zeroinitializer, %for_body2 ], [ %336, %for_begin7.preheader ]
  %105 = mul nuw nsw i64 %indvars.iv246, 298116
  %106 = add nuw nsw i64 %105, %52
  %107 = mul nuw nsw i64 %indvars.iv246, 9
  %108 = add nsw i64 %107, %48
  %109 = trunc i64 %106 to i32
  %110 = add nsw i32 %reass.mul, %109
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds float, float* %5, i64 %111
  %113 = getelementptr inbounds float, float* %8, i64 %108
  %114 = load float, float* %113, align 4, !tbaa !137
  %115 = or i64 %111, 1
  %116 = getelementptr inbounds float, float* %5, i64 %115
  %117 = add nsw i64 %111, 2
  %118 = getelementptr inbounds float, float* %5, i64 %117
  %119 = bitcast float* %112 to <8 x float>*
  %120 = load <8 x float>, <8 x float>* %119, align 4, !tbaa !131
  %121 = insertelement <8 x float> undef, float %114, i32 0
  %122 = shufflevector <8 x float> %121, <8 x float> undef, <8 x i32> zeroinitializer
  %123 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %120, <8 x float> %122, <8 x float> %101)
  %124 = add nsw i64 %111, 8
  %125 = getelementptr inbounds float, float* %5, i64 %124
  %126 = bitcast float* %125 to <8 x float>*
  %127 = load <8 x float>, <8 x float>* %126, align 4, !tbaa !131
  %128 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %127, <8 x float> %122, <8 x float> %102)
  %129 = add nsw i64 %111, 16
  %130 = getelementptr inbounds float, float* %5, i64 %129
  %131 = bitcast float* %130 to <8 x float>*
  %132 = load <8 x float>, <8 x float>* %131, align 4, !tbaa !131
  %133 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %132, <8 x float> %122, <8 x float> %103)
  %134 = add nsw i64 %111, 24
  %135 = getelementptr inbounds float, float* %5, i64 %134
  %136 = bitcast float* %135 to <8 x float>*
  %137 = load <8 x float>, <8 x float>* %136, align 4, !tbaa !131
  %138 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %137, <8 x float> %122, <8 x float> %104)
  %139 = add nsw i64 %108, 1
  %140 = getelementptr inbounds float, float* %8, i64 %139
  %141 = load float, float* %140, align 4, !tbaa !137
  %142 = bitcast float* %116 to <8 x float>*
  %143 = load <8 x float>, <8 x float>* %142, align 4, !tbaa !131
  %144 = insertelement <8 x float> undef, float %141, i32 0
  %145 = shufflevector <8 x float> %144, <8 x float> undef, <8 x i32> zeroinitializer
  %146 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %143, <8 x float> %145, <8 x float> %123)
  %147 = add nsw i64 %115, 8
  %148 = getelementptr inbounds float, float* %5, i64 %147
  %149 = bitcast float* %148 to <8 x float>*
  %150 = load <8 x float>, <8 x float>* %149, align 4, !tbaa !131
  %151 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %150, <8 x float> %145, <8 x float> %128)
  %152 = add nsw i64 %115, 16
  %153 = getelementptr inbounds float, float* %5, i64 %152
  %154 = bitcast float* %153 to <8 x float>*
  %155 = load <8 x float>, <8 x float>* %154, align 4, !tbaa !131
  %156 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %155, <8 x float> %145, <8 x float> %133)
  %157 = add nsw i64 %115, 24
  %158 = getelementptr inbounds float, float* %5, i64 %157
  %159 = bitcast float* %158 to <8 x float>*
  %160 = load <8 x float>, <8 x float>* %159, align 4, !tbaa !131
  %161 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %160, <8 x float> %145, <8 x float> %138)
  %162 = add nsw i64 %108, 2
  %163 = getelementptr inbounds float, float* %8, i64 %162
  %164 = load float, float* %163, align 4, !tbaa !137
  %165 = bitcast float* %118 to <8 x float>*
  %166 = load <8 x float>, <8 x float>* %165, align 4, !tbaa !131
  %167 = insertelement <8 x float> undef, float %164, i32 0
  %168 = shufflevector <8 x float> %167, <8 x float> undef, <8 x i32> zeroinitializer
  %169 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %166, <8 x float> %168, <8 x float> %146)
  %170 = add nsw i64 %111, 10
  %171 = getelementptr inbounds float, float* %5, i64 %170
  %172 = bitcast float* %171 to <8 x float>*
  %173 = load <8 x float>, <8 x float>* %172, align 4, !tbaa !131
  %174 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %173, <8 x float> %168, <8 x float> %151)
  %175 = add nsw i64 %111, 18
  %176 = getelementptr inbounds float, float* %5, i64 %175
  %177 = bitcast float* %176 to <8 x float>*
  %178 = load <8 x float>, <8 x float>* %177, align 4, !tbaa !131
  %179 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %178, <8 x float> %168, <8 x float> %156)
  %180 = add nsw i64 %111, 26
  %181 = getelementptr inbounds float, float* %5, i64 %180
  %182 = bitcast float* %181 to <8 x float>*
  %183 = load <8 x float>, <8 x float>* %182, align 4, !tbaa !131
  %184 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %183, <8 x float> %168, <8 x float> %161)
  %185 = add nsw i32 %reass.mul.1, %109
  %186 = add nsw i64 %108, 3
  %187 = sext i32 %185 to i64
  %188 = getelementptr inbounds float, float* %5, i64 %187
  %189 = getelementptr inbounds float, float* %8, i64 %186
  %190 = load float, float* %189, align 4, !tbaa !137
  %191 = or i64 %187, 1
  %192 = getelementptr inbounds float, float* %5, i64 %191
  %193 = add nsw i64 %187, 2
  %194 = getelementptr inbounds float, float* %5, i64 %193
  %195 = bitcast float* %188 to <8 x float>*
  %196 = load <8 x float>, <8 x float>* %195, align 4, !tbaa !131
  %197 = insertelement <8 x float> undef, float %190, i32 0
  %198 = shufflevector <8 x float> %197, <8 x float> undef, <8 x i32> zeroinitializer
  %199 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %196, <8 x float> %198, <8 x float> %169)
  %200 = add nsw i64 %187, 8
  %201 = getelementptr inbounds float, float* %5, i64 %200
  %202 = bitcast float* %201 to <8 x float>*
  %203 = load <8 x float>, <8 x float>* %202, align 4, !tbaa !131
  %204 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %203, <8 x float> %198, <8 x float> %174)
  %205 = add nsw i64 %187, 16
  %206 = getelementptr inbounds float, float* %5, i64 %205
  %207 = bitcast float* %206 to <8 x float>*
  %208 = load <8 x float>, <8 x float>* %207, align 4, !tbaa !131
  %209 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %208, <8 x float> %198, <8 x float> %179)
  %210 = add nsw i64 %187, 24
  %211 = getelementptr inbounds float, float* %5, i64 %210
  %212 = bitcast float* %211 to <8 x float>*
  %213 = load <8 x float>, <8 x float>* %212, align 4, !tbaa !131
  %214 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %213, <8 x float> %198, <8 x float> %184)
  %215 = add nsw i64 %108, 4
  %216 = getelementptr inbounds float, float* %8, i64 %215
  %217 = load float, float* %216, align 4, !tbaa !137
  %218 = bitcast float* %192 to <8 x float>*
  %219 = load <8 x float>, <8 x float>* %218, align 4, !tbaa !131
  %220 = insertelement <8 x float> undef, float %217, i32 0
  %221 = shufflevector <8 x float> %220, <8 x float> undef, <8 x i32> zeroinitializer
  %222 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %219, <8 x float> %221, <8 x float> %199)
  %223 = add nsw i64 %191, 8
  %224 = getelementptr inbounds float, float* %5, i64 %223
  %225 = bitcast float* %224 to <8 x float>*
  %226 = load <8 x float>, <8 x float>* %225, align 4, !tbaa !131
  %227 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %226, <8 x float> %221, <8 x float> %204)
  %228 = add nsw i64 %191, 16
  %229 = getelementptr inbounds float, float* %5, i64 %228
  %230 = bitcast float* %229 to <8 x float>*
  %231 = load <8 x float>, <8 x float>* %230, align 4, !tbaa !131
  %232 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %231, <8 x float> %221, <8 x float> %209)
  %233 = add nsw i64 %191, 24
  %234 = getelementptr inbounds float, float* %5, i64 %233
  %235 = bitcast float* %234 to <8 x float>*
  %236 = load <8 x float>, <8 x float>* %235, align 4, !tbaa !131
  %237 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %236, <8 x float> %221, <8 x float> %214)
  %238 = add nsw i64 %108, 5
  %239 = getelementptr inbounds float, float* %8, i64 %238
  %240 = load float, float* %239, align 4, !tbaa !137
  %241 = bitcast float* %194 to <8 x float>*
  %242 = load <8 x float>, <8 x float>* %241, align 4, !tbaa !131
  %243 = insertelement <8 x float> undef, float %240, i32 0
  %244 = shufflevector <8 x float> %243, <8 x float> undef, <8 x i32> zeroinitializer
  %245 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %242, <8 x float> %244, <8 x float> %222)
  %246 = add nsw i64 %187, 10
  %247 = getelementptr inbounds float, float* %5, i64 %246
  %248 = bitcast float* %247 to <8 x float>*
  %249 = load <8 x float>, <8 x float>* %248, align 4, !tbaa !131
  %250 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %249, <8 x float> %244, <8 x float> %227)
  %251 = add nsw i64 %187, 18
  %252 = getelementptr inbounds float, float* %5, i64 %251
  %253 = bitcast float* %252 to <8 x float>*
  %254 = load <8 x float>, <8 x float>* %253, align 4, !tbaa !131
  %255 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %254, <8 x float> %244, <8 x float> %232)
  %256 = add nsw i64 %187, 26
  %257 = getelementptr inbounds float, float* %5, i64 %256
  %258 = bitcast float* %257 to <8 x float>*
  %259 = load <8 x float>, <8 x float>* %258, align 4, !tbaa !131
  %260 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %259, <8 x float> %244, <8 x float> %237)
  %261 = add nsw i32 %reass.mul.2, %109
  %262 = add nsw i64 %108, 6
  %263 = sext i32 %261 to i64
  %264 = getelementptr inbounds float, float* %5, i64 %263
  %265 = getelementptr inbounds float, float* %8, i64 %262
  %266 = load float, float* %265, align 4, !tbaa !137
  %267 = or i64 %263, 1
  %268 = getelementptr inbounds float, float* %5, i64 %267
  %269 = add nsw i64 %263, 2
  %270 = getelementptr inbounds float, float* %5, i64 %269
  %271 = bitcast float* %264 to <8 x float>*
  %272 = load <8 x float>, <8 x float>* %271, align 4, !tbaa !131
  %273 = insertelement <8 x float> undef, float %266, i32 0
  %274 = shufflevector <8 x float> %273, <8 x float> undef, <8 x i32> zeroinitializer
  %275 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %272, <8 x float> %274, <8 x float> %245)
  %276 = add nsw i64 %263, 8
  %277 = getelementptr inbounds float, float* %5, i64 %276
  %278 = bitcast float* %277 to <8 x float>*
  %279 = load <8 x float>, <8 x float>* %278, align 4, !tbaa !131
  %280 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %279, <8 x float> %274, <8 x float> %250)
  %281 = add nsw i64 %263, 16
  %282 = getelementptr inbounds float, float* %5, i64 %281
  %283 = bitcast float* %282 to <8 x float>*
  %284 = load <8 x float>, <8 x float>* %283, align 4, !tbaa !131
  %285 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %284, <8 x float> %274, <8 x float> %255)
  %286 = add nsw i64 %263, 24
  %287 = getelementptr inbounds float, float* %5, i64 %286
  %288 = bitcast float* %287 to <8 x float>*
  %289 = load <8 x float>, <8 x float>* %288, align 4, !tbaa !131
  %290 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %289, <8 x float> %274, <8 x float> %260)
  %291 = add nsw i64 %108, 7
  %292 = getelementptr inbounds float, float* %8, i64 %291
  %293 = load float, float* %292, align 4, !tbaa !137
  %294 = bitcast float* %268 to <8 x float>*
  %295 = load <8 x float>, <8 x float>* %294, align 4, !tbaa !131
  %296 = insertelement <8 x float> undef, float %293, i32 0
  %297 = shufflevector <8 x float> %296, <8 x float> undef, <8 x i32> zeroinitializer
  %298 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %295, <8 x float> %297, <8 x float> %275)
  %299 = add nsw i64 %267, 8
  %300 = getelementptr inbounds float, float* %5, i64 %299
  %301 = bitcast float* %300 to <8 x float>*
  %302 = load <8 x float>, <8 x float>* %301, align 4, !tbaa !131
  %303 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %302, <8 x float> %297, <8 x float> %280)
  %304 = add nsw i64 %267, 16
  %305 = getelementptr inbounds float, float* %5, i64 %304
  %306 = bitcast float* %305 to <8 x float>*
  %307 = load <8 x float>, <8 x float>* %306, align 4, !tbaa !131
  %308 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %307, <8 x float> %297, <8 x float> %285)
  %309 = add nsw i64 %267, 24
  %310 = getelementptr inbounds float, float* %5, i64 %309
  %311 = bitcast float* %310 to <8 x float>*
  %312 = load <8 x float>, <8 x float>* %311, align 4, !tbaa !131
  %313 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %312, <8 x float> %297, <8 x float> %290)
  %314 = add nsw i64 %108, 8
  %315 = getelementptr inbounds float, float* %8, i64 %314
  %316 = load float, float* %315, align 4, !tbaa !137
  %317 = bitcast float* %270 to <8 x float>*
  %318 = load <8 x float>, <8 x float>* %317, align 4, !tbaa !131
  %319 = insertelement <8 x float> undef, float %316, i32 0
  %320 = shufflevector <8 x float> %319, <8 x float> undef, <8 x i32> zeroinitializer
  %321 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %318, <8 x float> %320, <8 x float> %298)
  %322 = add nsw i64 %263, 10
  %323 = getelementptr inbounds float, float* %5, i64 %322
  %324 = bitcast float* %323 to <8 x float>*
  %325 = load <8 x float>, <8 x float>* %324, align 4, !tbaa !131
  %326 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %325, <8 x float> %320, <8 x float> %303)
  %327 = add nsw i64 %263, 18
  %328 = getelementptr inbounds float, float* %5, i64 %327
  %329 = bitcast float* %328 to <8 x float>*
  %330 = load <8 x float>, <8 x float>* %329, align 4, !tbaa !131
  %331 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %330, <8 x float> %320, <8 x float> %308)
  %332 = add nsw i64 %263, 26
  %333 = getelementptr inbounds float, float* %5, i64 %332
  %334 = bitcast float* %333 to <8 x float>*
  %335 = load <8 x float>, <8 x float>* %334, align 4, !tbaa !131
  %336 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %335, <8 x float> %320, <8 x float> %313)
  %indvars.iv.next247 = add nuw nsw i64 %indvars.iv246, 1
  %exitcond248 = icmp eq i64 %indvars.iv.next247, 3
  br i1 %exitcond248, label %for_begin13.preheader, label %for_begin7.preheader, !prof !49

for_begin19.preheader:                            ; preds = %for_begin19.preheader, %for_begin16.preheader
  %indvars.iv256 = phi i64 [ 0, %for_begin16.preheader ], [ %indvars.iv.next257, %for_begin19.preheader ]
  %337 = shl nsw i64 %indvars.iv256, 5
  %338 = trunc i64 %337 to i32
  %339 = add i32 %51, %338
  %340 = getelementptr inbounds float, float* %47, i64 %337
  %341 = bitcast float* %340 to i32*
  %342 = load i32, i32* %341, align 4, !tbaa !158
  %343 = sext i32 %339 to i64
  %344 = getelementptr inbounds float, float* %11, i64 %343
  %345 = bitcast float* %344 to i32*
  store i32 %342, i32* %345, align 4, !tbaa !162
  %346 = or i64 %337, 1
  %347 = trunc i64 %346 to i32
  %348 = add i32 %51, %347
  %349 = getelementptr inbounds float, float* %47, i64 %346
  %350 = bitcast float* %349 to i32*
  %351 = load i32, i32* %350, align 4, !tbaa !158
  %352 = sext i32 %348 to i64
  %353 = getelementptr inbounds float, float* %11, i64 %352
  %354 = bitcast float* %353 to i32*
  store i32 %351, i32* %354, align 4, !tbaa !162
  %355 = or i64 %337, 2
  %356 = trunc i64 %355 to i32
  %357 = add i32 %51, %356
  %358 = getelementptr inbounds float, float* %47, i64 %355
  %359 = bitcast float* %358 to i32*
  %360 = load i32, i32* %359, align 4, !tbaa !158
  %361 = sext i32 %357 to i64
  %362 = getelementptr inbounds float, float* %11, i64 %361
  %363 = bitcast float* %362 to i32*
  store i32 %360, i32* %363, align 4, !tbaa !162
  %364 = or i64 %337, 3
  %365 = trunc i64 %364 to i32
  %366 = add i32 %51, %365
  %367 = getelementptr inbounds float, float* %47, i64 %364
  %368 = bitcast float* %367 to i32*
  %369 = load i32, i32* %368, align 4, !tbaa !158
  %370 = sext i32 %366 to i64
  %371 = getelementptr inbounds float, float* %11, i64 %370
  %372 = bitcast float* %371 to i32*
  store i32 %369, i32* %372, align 4, !tbaa !162
  %373 = or i64 %337, 4
  %374 = trunc i64 %373 to i32
  %375 = add i32 %51, %374
  %376 = getelementptr inbounds float, float* %47, i64 %373
  %377 = bitcast float* %376 to i32*
  %378 = load i32, i32* %377, align 4, !tbaa !158
  %379 = sext i32 %375 to i64
  %380 = getelementptr inbounds float, float* %11, i64 %379
  %381 = bitcast float* %380 to i32*
  store i32 %378, i32* %381, align 4, !tbaa !162
  %382 = or i64 %337, 5
  %383 = trunc i64 %382 to i32
  %384 = add i32 %51, %383
  %385 = getelementptr inbounds float, float* %47, i64 %382
  %386 = bitcast float* %385 to i32*
  %387 = load i32, i32* %386, align 4, !tbaa !158
  %388 = sext i32 %384 to i64
  %389 = getelementptr inbounds float, float* %11, i64 %388
  %390 = bitcast float* %389 to i32*
  store i32 %387, i32* %390, align 4, !tbaa !162
  %391 = or i64 %337, 6
  %392 = trunc i64 %391 to i32
  %393 = add i32 %51, %392
  %394 = getelementptr inbounds float, float* %47, i64 %391
  %395 = bitcast float* %394 to i32*
  %396 = load i32, i32* %395, align 4, !tbaa !158
  %397 = sext i32 %393 to i64
  %398 = getelementptr inbounds float, float* %11, i64 %397
  %399 = bitcast float* %398 to i32*
  store i32 %396, i32* %399, align 4, !tbaa !162
  %400 = or i64 %337, 7
  %401 = trunc i64 %400 to i32
  %402 = add i32 %51, %401
  %403 = getelementptr inbounds float, float* %47, i64 %400
  %404 = bitcast float* %403 to i32*
  %405 = load i32, i32* %404, align 4, !tbaa !158
  %406 = sext i32 %402 to i64
  %407 = getelementptr inbounds float, float* %11, i64 %406
  %408 = bitcast float* %407 to i32*
  store i32 %405, i32* %408, align 4, !tbaa !162
  %409 = or i64 %337, 8
  %410 = trunc i64 %409 to i32
  %411 = add i32 %51, %410
  %412 = getelementptr inbounds float, float* %47, i64 %409
  %413 = bitcast float* %412 to i32*
  %414 = load i32, i32* %413, align 4, !tbaa !158
  %415 = sext i32 %411 to i64
  %416 = getelementptr inbounds float, float* %11, i64 %415
  %417 = bitcast float* %416 to i32*
  store i32 %414, i32* %417, align 4, !tbaa !162
  %418 = or i64 %337, 9
  %419 = trunc i64 %418 to i32
  %420 = add i32 %51, %419
  %421 = getelementptr inbounds float, float* %47, i64 %418
  %422 = bitcast float* %421 to i32*
  %423 = load i32, i32* %422, align 4, !tbaa !158
  %424 = sext i32 %420 to i64
  %425 = getelementptr inbounds float, float* %11, i64 %424
  %426 = bitcast float* %425 to i32*
  store i32 %423, i32* %426, align 4, !tbaa !162
  %427 = or i64 %337, 10
  %428 = trunc i64 %427 to i32
  %429 = add i32 %51, %428
  %430 = getelementptr inbounds float, float* %47, i64 %427
  %431 = bitcast float* %430 to i32*
  %432 = load i32, i32* %431, align 4, !tbaa !158
  %433 = sext i32 %429 to i64
  %434 = getelementptr inbounds float, float* %11, i64 %433
  %435 = bitcast float* %434 to i32*
  store i32 %432, i32* %435, align 4, !tbaa !162
  %436 = or i64 %337, 11
  %437 = trunc i64 %436 to i32
  %438 = add i32 %51, %437
  %439 = getelementptr inbounds float, float* %47, i64 %436
  %440 = bitcast float* %439 to i32*
  %441 = load i32, i32* %440, align 4, !tbaa !158
  %442 = sext i32 %438 to i64
  %443 = getelementptr inbounds float, float* %11, i64 %442
  %444 = bitcast float* %443 to i32*
  store i32 %441, i32* %444, align 4, !tbaa !162
  %445 = or i64 %337, 12
  %446 = trunc i64 %445 to i32
  %447 = add i32 %51, %446
  %448 = getelementptr inbounds float, float* %47, i64 %445
  %449 = bitcast float* %448 to i32*
  %450 = load i32, i32* %449, align 4, !tbaa !158
  %451 = sext i32 %447 to i64
  %452 = getelementptr inbounds float, float* %11, i64 %451
  %453 = bitcast float* %452 to i32*
  store i32 %450, i32* %453, align 4, !tbaa !162
  %454 = or i64 %337, 13
  %455 = trunc i64 %454 to i32
  %456 = add i32 %51, %455
  %457 = getelementptr inbounds float, float* %47, i64 %454
  %458 = bitcast float* %457 to i32*
  %459 = load i32, i32* %458, align 4, !tbaa !158
  %460 = sext i32 %456 to i64
  %461 = getelementptr inbounds float, float* %11, i64 %460
  %462 = bitcast float* %461 to i32*
  store i32 %459, i32* %462, align 4, !tbaa !162
  %463 = or i64 %337, 14
  %464 = trunc i64 %463 to i32
  %465 = add i32 %51, %464
  %466 = getelementptr inbounds float, float* %47, i64 %463
  %467 = bitcast float* %466 to i32*
  %468 = load i32, i32* %467, align 4, !tbaa !158
  %469 = sext i32 %465 to i64
  %470 = getelementptr inbounds float, float* %11, i64 %469
  %471 = bitcast float* %470 to i32*
  store i32 %468, i32* %471, align 4, !tbaa !162
  %472 = or i64 %337, 15
  %473 = trunc i64 %472 to i32
  %474 = add i32 %51, %473
  %475 = getelementptr inbounds float, float* %47, i64 %472
  %476 = bitcast float* %475 to i32*
  %477 = load i32, i32* %476, align 4, !tbaa !158
  %478 = sext i32 %474 to i64
  %479 = getelementptr inbounds float, float* %11, i64 %478
  %480 = bitcast float* %479 to i32*
  store i32 %477, i32* %480, align 4, !tbaa !162
  %481 = or i64 %337, 16
  %482 = trunc i64 %481 to i32
  %483 = add i32 %51, %482
  %484 = getelementptr inbounds float, float* %47, i64 %481
  %485 = bitcast float* %484 to i32*
  %486 = load i32, i32* %485, align 4, !tbaa !158
  %487 = sext i32 %483 to i64
  %488 = getelementptr inbounds float, float* %11, i64 %487
  %489 = bitcast float* %488 to i32*
  store i32 %486, i32* %489, align 4, !tbaa !162
  %490 = or i64 %337, 17
  %491 = trunc i64 %490 to i32
  %492 = add i32 %51, %491
  %493 = getelementptr inbounds float, float* %47, i64 %490
  %494 = bitcast float* %493 to i32*
  %495 = load i32, i32* %494, align 4, !tbaa !158
  %496 = sext i32 %492 to i64
  %497 = getelementptr inbounds float, float* %11, i64 %496
  %498 = bitcast float* %497 to i32*
  store i32 %495, i32* %498, align 4, !tbaa !162
  %499 = or i64 %337, 18
  %500 = trunc i64 %499 to i32
  %501 = add i32 %51, %500
  %502 = getelementptr inbounds float, float* %47, i64 %499
  %503 = bitcast float* %502 to i32*
  %504 = load i32, i32* %503, align 4, !tbaa !158
  %505 = sext i32 %501 to i64
  %506 = getelementptr inbounds float, float* %11, i64 %505
  %507 = bitcast float* %506 to i32*
  store i32 %504, i32* %507, align 4, !tbaa !162
  %508 = or i64 %337, 19
  %509 = trunc i64 %508 to i32
  %510 = add i32 %51, %509
  %511 = getelementptr inbounds float, float* %47, i64 %508
  %512 = bitcast float* %511 to i32*
  %513 = load i32, i32* %512, align 4, !tbaa !158
  %514 = sext i32 %510 to i64
  %515 = getelementptr inbounds float, float* %11, i64 %514
  %516 = bitcast float* %515 to i32*
  store i32 %513, i32* %516, align 4, !tbaa !162
  %517 = or i64 %337, 20
  %518 = trunc i64 %517 to i32
  %519 = add i32 %51, %518
  %520 = getelementptr inbounds float, float* %47, i64 %517
  %521 = bitcast float* %520 to i32*
  %522 = load i32, i32* %521, align 4, !tbaa !158
  %523 = sext i32 %519 to i64
  %524 = getelementptr inbounds float, float* %11, i64 %523
  %525 = bitcast float* %524 to i32*
  store i32 %522, i32* %525, align 4, !tbaa !162
  %526 = or i64 %337, 21
  %527 = trunc i64 %526 to i32
  %528 = add i32 %51, %527
  %529 = getelementptr inbounds float, float* %47, i64 %526
  %530 = bitcast float* %529 to i32*
  %531 = load i32, i32* %530, align 4, !tbaa !158
  %532 = sext i32 %528 to i64
  %533 = getelementptr inbounds float, float* %11, i64 %532
  %534 = bitcast float* %533 to i32*
  store i32 %531, i32* %534, align 4, !tbaa !162
  %535 = or i64 %337, 22
  %536 = trunc i64 %535 to i32
  %537 = add i32 %51, %536
  %538 = getelementptr inbounds float, float* %47, i64 %535
  %539 = bitcast float* %538 to i32*
  %540 = load i32, i32* %539, align 4, !tbaa !158
  %541 = sext i32 %537 to i64
  %542 = getelementptr inbounds float, float* %11, i64 %541
  %543 = bitcast float* %542 to i32*
  store i32 %540, i32* %543, align 4, !tbaa !162
  %544 = or i64 %337, 23
  %545 = trunc i64 %544 to i32
  %546 = add i32 %51, %545
  %547 = getelementptr inbounds float, float* %47, i64 %544
  %548 = bitcast float* %547 to i32*
  %549 = load i32, i32* %548, align 4, !tbaa !158
  %550 = sext i32 %546 to i64
  %551 = getelementptr inbounds float, float* %11, i64 %550
  %552 = bitcast float* %551 to i32*
  store i32 %549, i32* %552, align 4, !tbaa !162
  %553 = or i64 %337, 24
  %554 = trunc i64 %553 to i32
  %555 = add i32 %51, %554
  %556 = getelementptr inbounds float, float* %47, i64 %553
  %557 = bitcast float* %556 to i32*
  %558 = load i32, i32* %557, align 4, !tbaa !158
  %559 = sext i32 %555 to i64
  %560 = getelementptr inbounds float, float* %11, i64 %559
  %561 = bitcast float* %560 to i32*
  store i32 %558, i32* %561, align 4, !tbaa !162
  %562 = or i64 %337, 25
  %563 = trunc i64 %562 to i32
  %564 = add i32 %51, %563
  %565 = getelementptr inbounds float, float* %47, i64 %562
  %566 = bitcast float* %565 to i32*
  %567 = load i32, i32* %566, align 4, !tbaa !158
  %568 = sext i32 %564 to i64
  %569 = getelementptr inbounds float, float* %11, i64 %568
  %570 = bitcast float* %569 to i32*
  store i32 %567, i32* %570, align 4, !tbaa !162
  %571 = or i64 %337, 26
  %572 = trunc i64 %571 to i32
  %573 = add i32 %51, %572
  %574 = getelementptr inbounds float, float* %47, i64 %571
  %575 = bitcast float* %574 to i32*
  %576 = load i32, i32* %575, align 4, !tbaa !158
  %577 = sext i32 %573 to i64
  %578 = getelementptr inbounds float, float* %11, i64 %577
  %579 = bitcast float* %578 to i32*
  store i32 %576, i32* %579, align 4, !tbaa !162
  %580 = or i64 %337, 27
  %581 = trunc i64 %580 to i32
  %582 = add i32 %51, %581
  %583 = getelementptr inbounds float, float* %47, i64 %580
  %584 = bitcast float* %583 to i32*
  %585 = load i32, i32* %584, align 4, !tbaa !158
  %586 = sext i32 %582 to i64
  %587 = getelementptr inbounds float, float* %11, i64 %586
  %588 = bitcast float* %587 to i32*
  store i32 %585, i32* %588, align 4, !tbaa !162
  %589 = or i64 %337, 28
  %590 = trunc i64 %589 to i32
  %591 = add i32 %51, %590
  %592 = getelementptr inbounds float, float* %47, i64 %589
  %593 = bitcast float* %592 to i32*
  %594 = load i32, i32* %593, align 4, !tbaa !158
  %595 = sext i32 %591 to i64
  %596 = getelementptr inbounds float, float* %11, i64 %595
  %597 = bitcast float* %596 to i32*
  store i32 %594, i32* %597, align 4, !tbaa !162
  %598 = or i64 %337, 29
  %599 = trunc i64 %598 to i32
  %600 = add i32 %51, %599
  %601 = getelementptr inbounds float, float* %47, i64 %598
  %602 = bitcast float* %601 to i32*
  %603 = load i32, i32* %602, align 4, !tbaa !158
  %604 = sext i32 %600 to i64
  %605 = getelementptr inbounds float, float* %11, i64 %604
  %606 = bitcast float* %605 to i32*
  store i32 %603, i32* %606, align 4, !tbaa !162
  %607 = or i64 %337, 30
  %608 = trunc i64 %607 to i32
  %609 = add i32 %51, %608
  %610 = getelementptr inbounds float, float* %47, i64 %607
  %611 = bitcast float* %610 to i32*
  %612 = load i32, i32* %611, align 4, !tbaa !158
  %613 = sext i32 %609 to i64
  %614 = getelementptr inbounds float, float* %11, i64 %613
  %615 = bitcast float* %614 to i32*
  store i32 %612, i32* %615, align 4, !tbaa !162
  %616 = or i64 %337, 31
  %617 = trunc i64 %616 to i32
  %618 = add i32 %51, %617
  %619 = getelementptr inbounds float, float* %47, i64 %616
  %620 = bitcast float* %619 to i32*
  %621 = load i32, i32* %620, align 4, !tbaa !158
  %622 = sext i32 %618 to i64
  %623 = getelementptr inbounds float, float* %11, i64 %622
  %624 = bitcast float* %623 to i32*
  store i32 %621, i32* %624, align 4, !tbaa !162
  %indvars.iv.next257 = add nuw nsw i64 %indvars.iv256, 1
  %exitcond258 = icmp eq i64 %indvars.iv.next257, 17
  br i1 %exitcond258, label %for_end18, label %for_begin19.preheader, !prof !49

for_end18:                                        ; preds = %for_begin19.preheader
  %625 = load i32 (i32, i32, i8*)*, i32 (i32, i32, i8*)** @__TVMBackendFreeWorkspace, align 8, !tbaa !6
  %626 = tail call i32 %625(i32 1, i32 %14, i8* nonnull %43)
  %627 = add nsw i32 %41, 1
  %628 = icmp slt i32 %627, %22
  br i1 %628, label %for_body, label %for_end, !prof !5
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #2

; Function Attrs: nounwind readnone speculatable
declare <8 x float> @llvm.fmuladd.v8f32(<8 x float>, <8 x float>, <8 x float>) #3
declare void @get_time(i32)
attributes #0 = { noinline }
attributes #1 = { norecurse nounwind }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind readnone speculatable }

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
!10 = !{!"0x2c664c0.w1.b0", !11, i64 0}
!11 = !{!"0x2c664c0.w2.b0", !12, i64 0}
!12 = !{!"0x2c664c0.w4.b0", !13, i64 0}
!13 = !{!"0x2c664c0.w8.b0", !14, i64 0}
!14 = !{!"0x2c664c0.w16.b0", !15, i64 0}
!15 = !{!"0x2c664c0.w32.b0", !16, i64 0}
!16 = !{!"0x2c664c0.w64.b0", !17, i64 0}
!17 = !{!"0x2c664c0.w128.b0", !18, i64 0}
!18 = !{!"0x2c664c0.w256.b0", !19, i64 0}
!19 = !{!"0x2c664c0.w512.b0", !20, i64 0}
!20 = !{!"0x2c664c0.w1024.b0", !21, i64 0}
!21 = !{!"int32", !22, i64 0}
!22 = !{!"0x2c664c0", !8, i64 0}
!23 = !{!24, !24, i64 0}
!24 = !{!"0x2c664c0.w1.b2", !25, i64 0}
!25 = !{!"0x2c664c0.w2.b2", !12, i64 0}
!26 = !{!27, !27, i64 0}
!27 = !{!"0x2c664c0.w1.b1", !11, i64 0}
!28 = !{!29, !29, i64 0}
!29 = !{!"0x2c65290.w1.b0", !30, i64 0}
!30 = !{!"0x2c65290.w2.b0", !31, i64 0}
!31 = !{!"0x2c65290.w4.b0", !32, i64 0}
!32 = !{!"0x2c65290.w8.b0", !33, i64 0}
!33 = !{!"0x2c65290.w16.b0", !34, i64 0}
!34 = !{!"0x2c65290.w32.b0", !35, i64 0}
!35 = !{!"0x2c65290.w64.b0", !36, i64 0}
!36 = !{!"0x2c65290.w128.b0", !37, i64 0}
!37 = !{!"0x2c65290.w256.b0", !38, i64 0}
!38 = !{!"0x2c65290.w512.b0", !39, i64 0}
!39 = !{!"0x2c65290.w1024.b0", !40, i64 0}
!40 = !{!"int64", !41, i64 0}
!41 = !{!"0x2c65290", !8, i64 0}
!42 = !{!43, !43, i64 0}
!43 = !{!"0x2c65290.w1.b1", !30, i64 0}
!44 = !{!45, !45, i64 0}
!45 = !{!"0x2c65290.w1.b2", !46, i64 0}
!46 = !{!"0x2c65290.w2.b2", !31, i64 0}
!47 = !{!48, !48, i64 0}
!48 = !{!"0x2c65290.w1.b3", !46, i64 0}
!49 = !{!"branch_weights", i32 1, i32 1048576}
!50 = !{!51, !51, i64 0}
!51 = !{!"0x2b38260.w4.b0", !52, i64 0}
!52 = !{!"0x2b38260.w8.b0", !53, i64 0}
!53 = !{!"0x2b38260.w16.b0", !54, i64 0}
!54 = !{!"0x2b38260.w32.b0", !55, i64 0}
!55 = !{!"0x2b38260.w64.b0", !56, i64 0}
!56 = !{!"0x2b38260.w128.b0", !57, i64 0}
!57 = !{!"0x2b38260.w256.b0", !58, i64 0}
!58 = !{!"0x2b38260.w512.b0", !59, i64 0}
!59 = !{!"0x2b38260.w1024.b0", !60, i64 0}
!60 = !{!"int64", !61, i64 0}
!61 = !{!"0x2b38260", !8, i64 0}
!62 = !{!63, !63, i64 0}
!63 = !{!"0x2b39fc0.w1.b0", !64, i64 0}
!64 = !{!"0x2b39fc0.w2.b0", !65, i64 0}
!65 = !{!"0x2b39fc0.w4.b0", !66, i64 0}
!66 = !{!"0x2b39fc0.w8.b0", !67, i64 0}
!67 = !{!"0x2b39fc0.w16.b0", !68, i64 0}
!68 = !{!"0x2b39fc0.w32.b0", !69, i64 0}
!69 = !{!"0x2b39fc0.w64.b0", !70, i64 0}
!70 = !{!"0x2b39fc0.w128.b0", !71, i64 0}
!71 = !{!"0x2b39fc0.w256.b0", !72, i64 0}
!72 = !{!"0x2b39fc0.w512.b0", !73, i64 0}
!73 = !{!"0x2b39fc0.w1024.b0", !74, i64 0}
!74 = !{!"int64", !75, i64 0}
!75 = !{!"0x2b39fc0", !8, i64 0}
!76 = !{!77, !77, i64 0}
!77 = !{!"0x2b39fc0.w1.b1", !64, i64 0}
!78 = !{!79, !79, i64 0}
!79 = !{!"0x2b39fc0.w1.b2", !80, i64 0}
!80 = !{!"0x2b39fc0.w2.b2", !65, i64 0}
!81 = !{!82, !82, i64 0}
!82 = !{!"0x2b39fc0.w1.b3", !80, i64 0}
!83 = !{!84, !84, i64 0}
!84 = !{!"0x2b2af30.w4.b0", !85, i64 0}
!85 = !{!"0x2b2af30.w8.b0", !86, i64 0}
!86 = !{!"0x2b2af30.w16.b0", !87, i64 0}
!87 = !{!"0x2b2af30.w32.b0", !88, i64 0}
!88 = !{!"0x2b2af30.w64.b0", !89, i64 0}
!89 = !{!"0x2b2af30.w128.b0", !90, i64 0}
!90 = !{!"0x2b2af30.w256.b0", !91, i64 0}
!91 = !{!"0x2b2af30.w512.b0", !92, i64 0}
!92 = !{!"0x2b2af30.w1024.b0", !93, i64 0}
!93 = !{!"int64", !94, i64 0}
!94 = !{!"0x2b2af30", !8, i64 0}
!95 = !{!96, !96, i64 0}
!96 = !{!"0x2b37f60.w1.b0", !97, i64 0}
!97 = !{!"0x2b37f60.w2.b0", !98, i64 0}
!98 = !{!"0x2b37f60.w4.b0", !99, i64 0}
!99 = !{!"0x2b37f60.w8.b0", !100, i64 0}
!100 = !{!"0x2b37f60.w16.b0", !101, i64 0}
!101 = !{!"0x2b37f60.w32.b0", !102, i64 0}
!102 = !{!"0x2b37f60.w64.b0", !103, i64 0}
!103 = !{!"0x2b37f60.w128.b0", !104, i64 0}
!104 = !{!"0x2b37f60.w256.b0", !105, i64 0}
!105 = !{!"0x2b37f60.w512.b0", !106, i64 0}
!106 = !{!"0x2b37f60.w1024.b0", !107, i64 0}
!107 = !{!"int64", !108, i64 0}
!108 = !{!"0x2b37f60", !8, i64 0}
!109 = !{!110, !110, i64 0}
!110 = !{!"0x2b37f60.w1.b1", !97, i64 0}
!111 = !{!112, !112, i64 0}
!112 = !{!"0x2b37f60.w1.b2", !113, i64 0}
!113 = !{!"0x2b37f60.w2.b2", !98, i64 0}
!114 = !{!115, !115, i64 0}
!115 = !{!"0x2b37f60.w1.b3", !113, i64 0}
!116 = !{!117, !117, i64 0}
!117 = !{!"0x2b377b0.w4.b0", !118, i64 0}
!118 = !{!"0x2b377b0.w8.b0", !119, i64 0}
!119 = !{!"0x2b377b0.w16.b0", !120, i64 0}
!120 = !{!"0x2b377b0.w32.b0", !121, i64 0}
!121 = !{!"0x2b377b0.w64.b0", !122, i64 0}
!122 = !{!"0x2b377b0.w128.b0", !123, i64 0}
!123 = !{!"0x2b377b0.w256.b0", !124, i64 0}
!124 = !{!"0x2b377b0.w512.b0", !125, i64 0}
!125 = !{!"0x2b377b0.w1024.b0", !126, i64 0}
!126 = !{!"int64", !127, i64 0}
!127 = !{!"0x2b377b0", !8, i64 0}
!128 = !{!129, !129, i64 0}
!129 = !{!"float32", !130, i64 0}
!130 = !{!"0x2c6bad0", !8, i64 0}
!131 = !{!132, !132, i64 0}
!132 = !{!"float32", !133, i64 0}
!133 = !{!"0x2c60650", !8, i64 0}
!134 = !{!135, !135, i64 0}
!135 = !{!"float32", !136, i64 0}
!136 = !{!"0x2c6bda0", !8, i64 0}
!137 = !{!138, !138, i64 0}
!138 = !{!"float32", !139, i64 0}
!139 = !{!"0x2b2a080", !8, i64 0}
!140 = !{!141, !141, i64 0}
!141 = !{!"0x2b2c8b0.w8.b0", !142, i64 0}
!142 = !{!"0x2b2c8b0.w16.b0", !143, i64 0}
!143 = !{!"0x2b2c8b0.w32.b0", !144, i64 0}
!144 = !{!"0x2b2c8b0.w64.b0", !145, i64 0}
!145 = !{!"0x2b2c8b0.w128.b0", !146, i64 0}
!146 = !{!"0x2b2c8b0.w256.b0", !147, i64 0}
!147 = !{!"0x2b2c8b0.w512.b0", !148, i64 0}
!148 = !{!"0x2b2c8b0.w1024.b0", !149, i64 0}
!149 = !{!"float32", !150, i64 0}
!150 = !{!"0x2b2c8b0", !8, i64 0}
!151 = !{!152, !152, i64 0}
!152 = !{!"0x2b2c8b0.w8.b8", !142, i64 0}
!153 = !{!154, !154, i64 0}
!154 = !{!"0x2b2c8b0.w8.b16", !155, i64 0}
!155 = !{!"0x2b2c8b0.w16.b16", !143, i64 0}
!156 = !{!157, !157, i64 0}
!157 = !{!"0x2b2c8b0.w8.b24", !155, i64 0}
!158 = !{!159, !159, i64 0}
!159 = !{!"float32", !160, i64 0}
!160 = !{!"0x2c6bbd0", !8, i64 0}
!161 = !{!149, !149, i64 0}
!162 = !{!163, !163, i64 0}
!163 = !{!"float32", !164, i64 0}
!164 = !{!"0x2c6bd20", !8, i64 0}
