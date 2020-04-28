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
@.str.8 = private constant [96 x i8] c"Assert fail: (32 == int32(arg0.shape[1])), Argument arg0.shape[1] has an unsatisfied constraint\00", align 1
@.str.9 = private constant [97 x i8] c"Assert fail: (274 == int32(arg0.shape[2])), Argument arg0.shape[2] has an unsatisfied constraint\00", align 1
@.str.10 = private constant [97 x i8] c"Assert fail: (274 == int32(arg0.shape[3])), Argument arg0.shape[3] has an unsatisfied constraint\00", align 1
@.str.11 = private constant [204 x i8] c"Assert fail: ((((1 == int32(arg0.strides[3])) && (274 == int32(arg0.strides[2]))) && (75076 == int32(arg0.strides[1]))) && (2402432 == int32(arg0.strides[0]))), arg0.strides: expected to be compact array\00", align 1
@.str.12 = private constant [112 x i8] c"Assert fail: ((uint64)0 == tvm_struct_get(arg0, 0, 8)), Argument arg0.byte_offset has an unsatisfied constraint\00", align 1
@.str.13 = private constant [81 x i8] c"Assert fail: (4 == tvm_struct_get(arg1, 0, 4)), arg1.ndim is expected to equal 4\00", align 1
@.str.14 = private constant [186 x i8] c"Assert fail: (((tvm_struct_get(arg1, 0, 5) == (uint8)2) && (tvm_struct_get(arg1, 0, 6) == (uint8)32)) && (tvm_struct_get(arg1, 0, 7) == (uint16)1)), arg1.dtype is expected to be float32\00", align 1
@.str.15 = private constant [96 x i8] c"Assert fail: (64 == int32(arg1.shape[0])), Argument arg1.shape[0] has an unsatisfied constraint\00", align 1
@.str.16 = private constant [96 x i8] c"Assert fail: (32 == int32(arg1.shape[1])), Argument arg1.shape[1] has an unsatisfied constraint\00", align 1
@.str.17 = private constant [95 x i8] c"Assert fail: (3 == int32(arg1.shape[2])), Argument arg1.shape[2] has an unsatisfied constraint\00", align 1
@.str.18 = private constant [95 x i8] c"Assert fail: (3 == int32(arg1.shape[3])), Argument arg1.shape[3] has an unsatisfied constraint\00", align 1
@.str.19 = private constant [194 x i8] c"Assert fail: ((((1 == int32(arg1.strides[3])) && (3 == int32(arg1.strides[2]))) && (9 == int32(arg1.strides[1]))) && (288 == int32(arg1.strides[0]))), arg1.strides: expected to be compact array\00", align 1
@.str.20 = private constant [112 x i8] c"Assert fail: ((uint64)0 == tvm_struct_get(arg1, 0, 8)), Argument arg1.byte_offset has an unsatisfied constraint\00", align 1
@.str.21 = private constant [105 x i8] c"Assert fail: (1 == tvm_struct_get(arg1, 0, 10)), Argument arg1.device_type has an unsatisfied constraint\00", align 1
@.str.22 = private constant [107 x i8] c"Assert fail: (dev_id == tvm_struct_get(arg1, 0, 9)), Argument arg1.device_id has an unsatisfied constraint\00", align 1
@.str.23 = private constant [81 x i8] c"Assert fail: (4 == tvm_struct_get(arg2, 0, 4)), arg2.ndim is expected to equal 4\00", align 1
@.str.24 = private constant [186 x i8] c"Assert fail: (((tvm_struct_get(arg2, 0, 5) == (uint8)2) && (tvm_struct_get(arg2, 0, 6) == (uint8)32)) && (tvm_struct_get(arg2, 0, 7) == (uint16)1)), arg2.dtype is expected to be float32\00", align 1
@.str.25 = private constant [95 x i8] c"Assert fail: (1 == int32(arg2.shape[0])), Argument arg2.shape[0] has an unsatisfied constraint\00", align 1
@.str.26 = private constant [96 x i8] c"Assert fail: (64 == int32(arg2.shape[1])), Argument arg2.shape[1] has an unsatisfied constraint\00", align 1
@.str.27 = private constant [97 x i8] c"Assert fail: (272 == int32(arg2.shape[2])), Argument arg2.shape[2] has an unsatisfied constraint\00", align 1
@.str.28 = private constant [97 x i8] c"Assert fail: (272 == int32(arg2.shape[3])), Argument arg2.shape[3] has an unsatisfied constraint\00", align 1
@.str.29 = private constant [204 x i8] c"Assert fail: ((((1 == int32(arg2.strides[3])) && (272 == int32(arg2.strides[2]))) && (73984 == int32(arg2.strides[1]))) && (4734976 == int32(arg2.strides[0]))), arg2.strides: expected to be compact array\00", align 1
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
  %71 = icmp eq i32 %70, 32
  br i1 %71, label %assert_end16, label %assert_fail15, !prof !5

assert_fail15:                                    ; preds = %assert_end14
  %72 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %72(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.8, i64 0, i64 0))
  ret i32 -1

assert_end16:                                     ; preds = %assert_end14
  %73 = getelementptr inbounds i64, i64* %21, i64 2
  %74 = load i64, i64* %73, align 8, !tbaa !44
  %75 = trunc i64 %74 to i32
  %76 = icmp eq i32 %75, 274
  br i1 %76, label %assert_end18, label %assert_fail17, !prof !5

assert_fail17:                                    ; preds = %assert_end16
  %77 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %77(i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.9, i64 0, i64 0))
  ret i32 -1

assert_end18:                                     ; preds = %assert_end16
  %78 = getelementptr inbounds i64, i64* %21, i64 3
  %79 = load i64, i64* %78, align 8, !tbaa !47
  %80 = trunc i64 %79 to i32
  %81 = icmp eq i32 %80, 274
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
  %87 = icmp eq <4 x i32> %86, <i32 2402432, i32 75076, i32 274, i32 1>
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
  %117 = icmp eq i32 %116, 32
  br i1 %117, label %assert_end32, label %assert_fail31, !prof !5

assert_fail31:                                    ; preds = %assert_end30
  %118 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %118(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.16, i64 0, i64 0))
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
  %133 = icmp eq <4 x i32> %132, <i32 288, i32 9, i32 3, i32 1>
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
  %176 = icmp eq i32 %175, 272
  br i1 %176, label %assert_end56, label %assert_fail55, !prof !5

assert_fail55:                                    ; preds = %assert_end54
  %177 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %177(i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.27, i64 0, i64 0))
  ret i32 -1

assert_end56:                                     ; preds = %assert_end54
  %178 = getelementptr inbounds i64, i64* %37, i64 3
  %179 = load i64, i64* %178, align 8, !tbaa !114
  %180 = trunc i64 %179 to i32
  %181 = icmp eq i32 %180, 272
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
  %187 = icmp eq <4 x i32> %186, <i32 4734976, i32 73984, i32 272, i32 1>
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
  %5 = tail call i8* %4(i32 1, i32 %3, i64 9609728, i32 2, i32 32)
  %6 = load i8* (i32, i32, i64, i32, i32)*, i8* (i32, i32, i64, i32, i32)** @__TVMBackendAllocWorkspace, align 8, !tbaa !6
  %7 = tail call i8* %6(i32 1, i32 %3, i64 73728, i32 2, i32 32)
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
  %10 = add nsw i32 %9, 8767
  %11 = sdiv i32 %10, %9
  %12 = add nsw i32 %0, 1
  %13 = mul nsw i32 %11, %12
  %14 = icmp slt i32 %13, 8768
  %15 = select i1 %14, i32 %13, i32 8768
  %16 = mul nsw i32 %11, %0
  %17 = icmp slt i32 %16, 8768
  %18 = select i1 %17, i32 %16, i32 8768
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
  %24 = mul nsw i64 %indvars.iv5, 274
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
  %162 = bitcast float* %161 to i32*
  %163 = load i32, i32* %162, align 4, !tbaa !128
  %164 = getelementptr inbounds float, float* %4, i64 %160
  %165 = bitcast float* %164 to i32*
  store i32 %163, i32* %165, align 4, !tbaa !131
  %166 = add nsw i64 %24, 257
  %167 = getelementptr inbounds float, float* %7, i64 %166
  %168 = bitcast float* %167 to i32*
  %169 = load i32, i32* %168, align 4, !tbaa !128
  %170 = getelementptr inbounds float, float* %4, i64 %166
  %171 = bitcast float* %170 to i32*
  store i32 %169, i32* %171, align 4, !tbaa !131
  %172 = add nsw i64 %24, 258
  %173 = getelementptr inbounds float, float* %7, i64 %172
  %174 = bitcast float* %173 to i32*
  %175 = load i32, i32* %174, align 4, !tbaa !128
  %176 = getelementptr inbounds float, float* %4, i64 %172
  %177 = bitcast float* %176 to i32*
  store i32 %175, i32* %177, align 4, !tbaa !131
  %178 = add nsw i64 %24, 259
  %179 = getelementptr inbounds float, float* %7, i64 %178
  %180 = bitcast float* %179 to i32*
  %181 = load i32, i32* %180, align 4, !tbaa !128
  %182 = getelementptr inbounds float, float* %4, i64 %178
  %183 = bitcast float* %182 to i32*
  store i32 %181, i32* %183, align 4, !tbaa !131
  %184 = add nsw i64 %24, 260
  %185 = getelementptr inbounds float, float* %7, i64 %184
  %186 = bitcast float* %185 to i32*
  %187 = load i32, i32* %186, align 4, !tbaa !128
  %188 = getelementptr inbounds float, float* %4, i64 %184
  %189 = bitcast float* %188 to i32*
  store i32 %187, i32* %189, align 4, !tbaa !131
  %190 = add nsw i64 %24, 261
  %191 = getelementptr inbounds float, float* %7, i64 %190
  %192 = bitcast float* %191 to i32*
  %193 = load i32, i32* %192, align 4, !tbaa !128
  %194 = getelementptr inbounds float, float* %4, i64 %190
  %195 = bitcast float* %194 to i32*
  store i32 %193, i32* %195, align 4, !tbaa !131
  %196 = add nsw i64 %24, 262
  %197 = getelementptr inbounds float, float* %7, i64 %196
  %198 = bitcast float* %197 to i32*
  %199 = load i32, i32* %198, align 4, !tbaa !128
  %200 = getelementptr inbounds float, float* %4, i64 %196
  %201 = bitcast float* %200 to i32*
  store i32 %199, i32* %201, align 4, !tbaa !131
  %202 = add nsw i64 %24, 263
  %203 = getelementptr inbounds float, float* %7, i64 %202
  %204 = bitcast float* %203 to i32*
  %205 = load i32, i32* %204, align 4, !tbaa !128
  %206 = getelementptr inbounds float, float* %4, i64 %202
  %207 = bitcast float* %206 to i32*
  store i32 %205, i32* %207, align 4, !tbaa !131
  %208 = add nsw i64 %24, 264
  %209 = getelementptr inbounds float, float* %7, i64 %208
  %210 = bitcast float* %209 to i32*
  %211 = load i32, i32* %210, align 4, !tbaa !128
  %212 = getelementptr inbounds float, float* %4, i64 %208
  %213 = bitcast float* %212 to i32*
  store i32 %211, i32* %213, align 4, !tbaa !131
  %214 = add nsw i64 %24, 265
  %215 = getelementptr inbounds float, float* %7, i64 %214
  %216 = bitcast float* %215 to i32*
  %217 = load i32, i32* %216, align 4, !tbaa !128
  %218 = getelementptr inbounds float, float* %4, i64 %214
  %219 = bitcast float* %218 to i32*
  store i32 %217, i32* %219, align 4, !tbaa !131
  %220 = add nsw i64 %24, 266
  %221 = getelementptr inbounds float, float* %7, i64 %220
  %222 = bitcast float* %221 to i32*
  %223 = load i32, i32* %222, align 4, !tbaa !128
  %224 = getelementptr inbounds float, float* %4, i64 %220
  %225 = bitcast float* %224 to i32*
  store i32 %223, i32* %225, align 4, !tbaa !131
  %226 = add nsw i64 %24, 267
  %227 = getelementptr inbounds float, float* %7, i64 %226
  %228 = bitcast float* %227 to i32*
  %229 = load i32, i32* %228, align 4, !tbaa !128
  %230 = getelementptr inbounds float, float* %4, i64 %226
  %231 = bitcast float* %230 to i32*
  store i32 %229, i32* %231, align 4, !tbaa !131
  %232 = add nsw i64 %24, 268
  %233 = getelementptr inbounds float, float* %7, i64 %232
  %234 = bitcast float* %233 to i32*
  %235 = load i32, i32* %234, align 4, !tbaa !128
  %236 = getelementptr inbounds float, float* %4, i64 %232
  %237 = bitcast float* %236 to i32*
  store i32 %235, i32* %237, align 4, !tbaa !131
  %238 = add nsw i64 %24, 269
  %239 = getelementptr inbounds float, float* %7, i64 %238
  %240 = bitcast float* %239 to i32*
  %241 = load i32, i32* %240, align 4, !tbaa !128
  %242 = getelementptr inbounds float, float* %4, i64 %238
  %243 = bitcast float* %242 to i32*
  store i32 %241, i32* %243, align 4, !tbaa !131
  %244 = add nsw i64 %24, 270
  %245 = getelementptr inbounds float, float* %7, i64 %244
  %246 = bitcast float* %245 to i32*
  %247 = load i32, i32* %246, align 4, !tbaa !128
  %248 = getelementptr inbounds float, float* %4, i64 %244
  %249 = bitcast float* %248 to i32*
  store i32 %247, i32* %249, align 4, !tbaa !131
  %250 = add nsw i64 %24, 271
  %251 = getelementptr inbounds float, float* %7, i64 %250
  %252 = bitcast float* %251 to i32*
  %253 = load i32, i32* %252, align 4, !tbaa !128
  %254 = getelementptr inbounds float, float* %4, i64 %250
  %255 = bitcast float* %254 to i32*
  store i32 %253, i32* %255, align 4, !tbaa !131
  %256 = add nsw i64 %24, 272
  %257 = getelementptr inbounds float, float* %7, i64 %256
  %258 = bitcast float* %257 to i32*
  %259 = load i32, i32* %258, align 4, !tbaa !128
  %260 = getelementptr inbounds float, float* %4, i64 %256
  %261 = bitcast float* %260 to i32*
  store i32 %259, i32* %261, align 4, !tbaa !131
  %262 = add nsw i64 %24, 273
  %263 = getelementptr inbounds float, float* %7, i64 %262
  %264 = bitcast float* %263 to i32*
  %265 = load i32, i32* %264, align 4, !tbaa !128
  %266 = getelementptr inbounds float, float* %4, i64 %262
  %267 = bitcast float* %266 to i32*
  store i32 %265, i32* %267, align 4, !tbaa !131
  %indvars.iv.next6 = add nsw i64 %indvars.iv5, 1
  %268 = icmp slt i64 %indvars.iv.next6, %23
  br i1 %268, label %for_begin1.preheader, label %for_end, !prof !5

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
  %10 = add nsw i32 %9, 11
  %11 = sdiv i32 %10, %9
  %12 = add nsw i32 %0, 1
  %13 = mul nsw i32 %11, %12
  %14 = icmp slt i32 %13, 12
  %15 = select i1 %14, i32 %13, i32 12
  %16 = mul nsw i32 %11, %0
  %17 = icmp slt i32 %16, 12
  %18 = select i1 %17, i32 %16, i32 12
  %19 = icmp slt i32 %18, %15
  br i1 %19, label %for_begin1.preheader, label %for_end, !prof !5

for_begin1.preheader:                             ; preds = %entry, %for_end3
  %20 = phi i32 [ %284, %for_end3 ], [ %18, %entry ]
  %21 = srem i32 %20, 3
  %22 = mul nsw i32 %21, 48
  %23 = sdiv i32 %20, 3
  %24 = mul nsw i32 %23, 4608
  %25 = add i32 %22, %24
  %26 = mul nsw i32 %21, 3
  %27 = add i32 %26, %24
  br label %for_begin4.preheader

for_end:                                          ; preds = %for_end3, %entry
  ret i32 0

for_begin4.preheader:                             ; preds = %for_begin4.preheader, %for_begin1.preheader
  %indvars.iv = phi i64 [ 0, %for_begin1.preheader ], [ %indvars.iv.next, %for_begin4.preheader ]
  %28 = trunc i64 %indvars.iv to i32
  %29 = mul i32 %28, 144
  %30 = add i32 %25, %29
  %31 = trunc i64 %indvars.iv to i32
  %32 = mul i32 %31, 9
  %33 = add i32 %27, %32
  %34 = add nsw i32 %33, 288
  %35 = add nsw i32 %33, 576
  %36 = add nsw i32 %33, 864
  %37 = add nsw i32 %33, 1152
  %38 = add nsw i32 %33, 1440
  %39 = add nsw i32 %33, 1728
  %40 = add nsw i32 %33, 2016
  %41 = add nsw i32 %33, 2304
  %42 = add nsw i32 %33, 2592
  %43 = add nsw i32 %33, 2880
  %44 = add nsw i32 %33, 3168
  %45 = add nsw i32 %33, 3456
  %46 = add nsw i32 %33, 3744
  %47 = add nsw i32 %33, 4032
  %48 = add nsw i32 %33, 4320
  %49 = sext i32 %33 to i64
  %50 = getelementptr inbounds float, float* %7, i64 %49
  %51 = load float, float* %50, align 4, !tbaa !134
  %52 = insertelement <16 x float> undef, float %51, i32 0
  %53 = sext i32 %34 to i64
  %54 = getelementptr inbounds float, float* %7, i64 %53
  %55 = load float, float* %54, align 4, !tbaa !134
  %56 = insertelement <16 x float> %52, float %55, i32 1
  %57 = sext i32 %35 to i64
  %58 = getelementptr inbounds float, float* %7, i64 %57
  %59 = load float, float* %58, align 4, !tbaa !134
  %60 = insertelement <16 x float> %56, float %59, i32 2
  %61 = sext i32 %36 to i64
  %62 = getelementptr inbounds float, float* %7, i64 %61
  %63 = load float, float* %62, align 4, !tbaa !134
  %64 = insertelement <16 x float> %60, float %63, i32 3
  %65 = sext i32 %37 to i64
  %66 = getelementptr inbounds float, float* %7, i64 %65
  %67 = load float, float* %66, align 4, !tbaa !134
  %68 = insertelement <16 x float> %64, float %67, i32 4
  %69 = sext i32 %38 to i64
  %70 = getelementptr inbounds float, float* %7, i64 %69
  %71 = load float, float* %70, align 4, !tbaa !134
  %72 = insertelement <16 x float> %68, float %71, i32 5
  %73 = sext i32 %39 to i64
  %74 = getelementptr inbounds float, float* %7, i64 %73
  %75 = load float, float* %74, align 4, !tbaa !134
  %76 = insertelement <16 x float> %72, float %75, i32 6
  %77 = sext i32 %40 to i64
  %78 = getelementptr inbounds float, float* %7, i64 %77
  %79 = load float, float* %78, align 4, !tbaa !134
  %80 = insertelement <16 x float> %76, float %79, i32 7
  %81 = sext i32 %41 to i64
  %82 = getelementptr inbounds float, float* %7, i64 %81
  %83 = load float, float* %82, align 4, !tbaa !134
  %84 = insertelement <16 x float> %80, float %83, i32 8
  %85 = sext i32 %42 to i64
  %86 = getelementptr inbounds float, float* %7, i64 %85
  %87 = load float, float* %86, align 4, !tbaa !134
  %88 = insertelement <16 x float> %84, float %87, i32 9
  %89 = sext i32 %43 to i64
  %90 = getelementptr inbounds float, float* %7, i64 %89
  %91 = load float, float* %90, align 4, !tbaa !134
  %92 = insertelement <16 x float> %88, float %91, i32 10
  %93 = sext i32 %44 to i64
  %94 = getelementptr inbounds float, float* %7, i64 %93
  %95 = load float, float* %94, align 4, !tbaa !134
  %96 = insertelement <16 x float> %92, float %95, i32 11
  %97 = sext i32 %45 to i64
  %98 = getelementptr inbounds float, float* %7, i64 %97
  %99 = load float, float* %98, align 4, !tbaa !134
  %100 = insertelement <16 x float> %96, float %99, i32 12
  %101 = sext i32 %46 to i64
  %102 = getelementptr inbounds float, float* %7, i64 %101
  %103 = load float, float* %102, align 4, !tbaa !134
  %104 = insertelement <16 x float> %100, float %103, i32 13
  %105 = sext i32 %47 to i64
  %106 = getelementptr inbounds float, float* %7, i64 %105
  %107 = load float, float* %106, align 4, !tbaa !134
  %108 = insertelement <16 x float> %104, float %107, i32 14
  %109 = sext i32 %48 to i64
  %110 = getelementptr inbounds float, float* %7, i64 %109
  %111 = load float, float* %110, align 4, !tbaa !134
  %112 = insertelement <16 x float> %108, float %111, i32 15
  %113 = sext i32 %30 to i64
  %114 = getelementptr inbounds float, float* %4, i64 %113
  %115 = bitcast float* %114 to <16 x float>*
  store <16 x float> %112, <16 x float>* %115, align 64, !tbaa !137
  %116 = add i32 %30, 16
  %117 = add i32 %33, 1
  %118 = add i32 %33, 289
  %119 = add i32 %33, 577
  %120 = add i32 %33, 865
  %121 = add i32 %33, 1153
  %122 = add i32 %33, 1441
  %123 = add i32 %33, 1729
  %124 = add i32 %33, 2017
  %125 = add i32 %33, 2305
  %126 = add i32 %33, 2593
  %127 = add i32 %33, 2881
  %128 = add i32 %33, 3169
  %129 = add i32 %33, 3457
  %130 = add i32 %33, 3745
  %131 = add i32 %33, 4033
  %132 = add i32 %33, 4321
  %133 = sext i32 %117 to i64
  %134 = getelementptr inbounds float, float* %7, i64 %133
  %135 = load float, float* %134, align 4, !tbaa !134
  %136 = insertelement <16 x float> undef, float %135, i32 0
  %137 = sext i32 %118 to i64
  %138 = getelementptr inbounds float, float* %7, i64 %137
  %139 = load float, float* %138, align 4, !tbaa !134
  %140 = insertelement <16 x float> %136, float %139, i32 1
  %141 = sext i32 %119 to i64
  %142 = getelementptr inbounds float, float* %7, i64 %141
  %143 = load float, float* %142, align 4, !tbaa !134
  %144 = insertelement <16 x float> %140, float %143, i32 2
  %145 = sext i32 %120 to i64
  %146 = getelementptr inbounds float, float* %7, i64 %145
  %147 = load float, float* %146, align 4, !tbaa !134
  %148 = insertelement <16 x float> %144, float %147, i32 3
  %149 = sext i32 %121 to i64
  %150 = getelementptr inbounds float, float* %7, i64 %149
  %151 = load float, float* %150, align 4, !tbaa !134
  %152 = insertelement <16 x float> %148, float %151, i32 4
  %153 = sext i32 %122 to i64
  %154 = getelementptr inbounds float, float* %7, i64 %153
  %155 = load float, float* %154, align 4, !tbaa !134
  %156 = insertelement <16 x float> %152, float %155, i32 5
  %157 = sext i32 %123 to i64
  %158 = getelementptr inbounds float, float* %7, i64 %157
  %159 = load float, float* %158, align 4, !tbaa !134
  %160 = insertelement <16 x float> %156, float %159, i32 6
  %161 = sext i32 %124 to i64
  %162 = getelementptr inbounds float, float* %7, i64 %161
  %163 = load float, float* %162, align 4, !tbaa !134
  %164 = insertelement <16 x float> %160, float %163, i32 7
  %165 = sext i32 %125 to i64
  %166 = getelementptr inbounds float, float* %7, i64 %165
  %167 = load float, float* %166, align 4, !tbaa !134
  %168 = insertelement <16 x float> %164, float %167, i32 8
  %169 = sext i32 %126 to i64
  %170 = getelementptr inbounds float, float* %7, i64 %169
  %171 = load float, float* %170, align 4, !tbaa !134
  %172 = insertelement <16 x float> %168, float %171, i32 9
  %173 = sext i32 %127 to i64
  %174 = getelementptr inbounds float, float* %7, i64 %173
  %175 = load float, float* %174, align 4, !tbaa !134
  %176 = insertelement <16 x float> %172, float %175, i32 10
  %177 = sext i32 %128 to i64
  %178 = getelementptr inbounds float, float* %7, i64 %177
  %179 = load float, float* %178, align 4, !tbaa !134
  %180 = insertelement <16 x float> %176, float %179, i32 11
  %181 = sext i32 %129 to i64
  %182 = getelementptr inbounds float, float* %7, i64 %181
  %183 = load float, float* %182, align 4, !tbaa !134
  %184 = insertelement <16 x float> %180, float %183, i32 12
  %185 = sext i32 %130 to i64
  %186 = getelementptr inbounds float, float* %7, i64 %185
  %187 = load float, float* %186, align 4, !tbaa !134
  %188 = insertelement <16 x float> %184, float %187, i32 13
  %189 = sext i32 %131 to i64
  %190 = getelementptr inbounds float, float* %7, i64 %189
  %191 = load float, float* %190, align 4, !tbaa !134
  %192 = insertelement <16 x float> %188, float %191, i32 14
  %193 = sext i32 %132 to i64
  %194 = getelementptr inbounds float, float* %7, i64 %193
  %195 = load float, float* %194, align 4, !tbaa !134
  %196 = insertelement <16 x float> %192, float %195, i32 15
  %197 = sext i32 %116 to i64
  %198 = getelementptr inbounds float, float* %4, i64 %197
  %199 = bitcast float* %198 to <16 x float>*
  store <16 x float> %196, <16 x float>* %199, align 64, !tbaa !137
  %200 = add i32 %30, 32
  %201 = add i32 %33, 2
  %202 = add i32 %33, 290
  %203 = add i32 %33, 578
  %204 = add i32 %33, 866
  %205 = add i32 %33, 1154
  %206 = add i32 %33, 1442
  %207 = add i32 %33, 1730
  %208 = add i32 %33, 2018
  %209 = add i32 %33, 2306
  %210 = add i32 %33, 2594
  %211 = add i32 %33, 2882
  %212 = add i32 %33, 3170
  %213 = add i32 %33, 3458
  %214 = add i32 %33, 3746
  %215 = add i32 %33, 4034
  %216 = add i32 %33, 4322
  %217 = sext i32 %201 to i64
  %218 = getelementptr inbounds float, float* %7, i64 %217
  %219 = load float, float* %218, align 4, !tbaa !134
  %220 = insertelement <16 x float> undef, float %219, i32 0
  %221 = sext i32 %202 to i64
  %222 = getelementptr inbounds float, float* %7, i64 %221
  %223 = load float, float* %222, align 4, !tbaa !134
  %224 = insertelement <16 x float> %220, float %223, i32 1
  %225 = sext i32 %203 to i64
  %226 = getelementptr inbounds float, float* %7, i64 %225
  %227 = load float, float* %226, align 4, !tbaa !134
  %228 = insertelement <16 x float> %224, float %227, i32 2
  %229 = sext i32 %204 to i64
  %230 = getelementptr inbounds float, float* %7, i64 %229
  %231 = load float, float* %230, align 4, !tbaa !134
  %232 = insertelement <16 x float> %228, float %231, i32 3
  %233 = sext i32 %205 to i64
  %234 = getelementptr inbounds float, float* %7, i64 %233
  %235 = load float, float* %234, align 4, !tbaa !134
  %236 = insertelement <16 x float> %232, float %235, i32 4
  %237 = sext i32 %206 to i64
  %238 = getelementptr inbounds float, float* %7, i64 %237
  %239 = load float, float* %238, align 4, !tbaa !134
  %240 = insertelement <16 x float> %236, float %239, i32 5
  %241 = sext i32 %207 to i64
  %242 = getelementptr inbounds float, float* %7, i64 %241
  %243 = load float, float* %242, align 4, !tbaa !134
  %244 = insertelement <16 x float> %240, float %243, i32 6
  %245 = sext i32 %208 to i64
  %246 = getelementptr inbounds float, float* %7, i64 %245
  %247 = load float, float* %246, align 4, !tbaa !134
  %248 = insertelement <16 x float> %244, float %247, i32 7
  %249 = sext i32 %209 to i64
  %250 = getelementptr inbounds float, float* %7, i64 %249
  %251 = load float, float* %250, align 4, !tbaa !134
  %252 = insertelement <16 x float> %248, float %251, i32 8
  %253 = sext i32 %210 to i64
  %254 = getelementptr inbounds float, float* %7, i64 %253
  %255 = load float, float* %254, align 4, !tbaa !134
  %256 = insertelement <16 x float> %252, float %255, i32 9
  %257 = sext i32 %211 to i64
  %258 = getelementptr inbounds float, float* %7, i64 %257
  %259 = load float, float* %258, align 4, !tbaa !134
  %260 = insertelement <16 x float> %256, float %259, i32 10
  %261 = sext i32 %212 to i64
  %262 = getelementptr inbounds float, float* %7, i64 %261
  %263 = load float, float* %262, align 4, !tbaa !134
  %264 = insertelement <16 x float> %260, float %263, i32 11
  %265 = sext i32 %213 to i64
  %266 = getelementptr inbounds float, float* %7, i64 %265
  %267 = load float, float* %266, align 4, !tbaa !134
  %268 = insertelement <16 x float> %264, float %267, i32 12
  %269 = sext i32 %214 to i64
  %270 = getelementptr inbounds float, float* %7, i64 %269
  %271 = load float, float* %270, align 4, !tbaa !134
  %272 = insertelement <16 x float> %268, float %271, i32 13
  %273 = sext i32 %215 to i64
  %274 = getelementptr inbounds float, float* %7, i64 %273
  %275 = load float, float* %274, align 4, !tbaa !134
  %276 = insertelement <16 x float> %272, float %275, i32 14
  %277 = sext i32 %216 to i64
  %278 = getelementptr inbounds float, float* %7, i64 %277
  %279 = load float, float* %278, align 4, !tbaa !134
  %280 = insertelement <16 x float> %276, float %279, i32 15
  %281 = sext i32 %200 to i64
  %282 = getelementptr inbounds float, float* %4, i64 %281
  %283 = bitcast float* %282 to <16 x float>*
  store <16 x float> %280, <16 x float>* %283, align 64, !tbaa !137
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 32
  br i1 %exitcond, label %for_end3, label %for_begin4.preheader, !prof !49

for_end3:                                         ; preds = %for_begin4.preheader
  %284 = add nsw i32 %20, 1
  %285 = icmp slt i32 %284, %15
  br i1 %285, label %for_begin1.preheader, label %for_end, !prof !5
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
  %35 = phi i32 [ %26, %for_body.lr.ph ], [ %430, %for_end15 ]
  %36 = load i8* (i32, i32, i64, i32, i32)*, i8* (i32, i32, i64, i32, i32)** @__TVMBackendAllocWorkspace, align 8, !tbaa !6
  %37 = tail call i8* %36(i32 1, i32 %15, i64 17408, i32 2, i32 32)
  %38 = srem i32 %35, 272
  %39 = sdiv i32 %35, 272
  %40 = mul nsw i32 %39, 4608
  %41 = sext i32 %40 to i64
  %reass.mul = mul nsw i32 %38, 274
  %42 = sext i32 %reass.mul to i64
  %43 = mul nsw i32 %38, 274
  %reass.mul.1 = add nsw i32 %43, 274
  %44 = sext i32 %reass.mul.1 to i64
  %45 = mul nsw i32 %38, 274
  %reass.mul.2 = add nsw i32 %45, 548
  %46 = sext i32 %reass.mul.2 to i64
  br label %for_body2

for_end:                                          ; preds = %for_end15, %entry
  ret i32 0

for_begin13.preheader:                            ; preds = %for_begin10.preheader
  %47 = mul nsw i32 %38, 272
  %48 = mul nsw i32 %39, 1183744
  %49 = add nsw i32 %48, %47
  %50 = bitcast i8* %37 to float*
  %51 = sext i32 %49 to i64
  br label %for_begin16.preheader

for_body2:                                        ; preds = %for_begin10.preheader, %for_body
  %indvar = phi i64 [ 0, %for_body ], [ %indvar.next, %for_begin10.preheader ]
  %52 = shl i64 %indvar, 8
  %scevgep = getelementptr i8, i8* %37, i64 %52
  %53 = shl nsw i64 %indvar, 2
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %34, i8 0, i64 256, i1 false)
  br label %for_begin7.preheader

for_begin10.preheader:                            ; preds = %for_begin7.preheader
  store <16 x float> %210, <16 x float>* %.sub, align 16, !tbaa !140
  store <16 x float> %211, <16 x float>* %29, align 16, !tbaa !140
  store <16 x float> %212, <16 x float>* %31, align 16, !tbaa !140
  store <16 x float> %218, <16 x float>* %33, align 16, !tbaa !140
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 64 %scevgep, i8* nonnull align 16 %4, i64 256, i1 false)
  %indvar.next = add nuw nsw i64 %indvar, 1
  %exitcond44 = icmp eq i64 %indvar.next, 68
  br i1 %exitcond44, label %for_begin13.preheader, label %for_body2, !prof !49

for_begin7.preheader:                             ; preds = %for_begin7.preheader, %for_body2
  %indvars.iv = phi i64 [ 0, %for_body2 ], [ %indvars.iv.next, %for_begin7.preheader ]
  %.lcssa2936 = phi <16 x float> [ zeroinitializer, %for_body2 ], [ %218, %for_begin7.preheader ]
  %.lcssa2734 = phi <16 x float> [ zeroinitializer, %for_body2 ], [ %212, %for_begin7.preheader ]
  %.lcssa2533 = phi <16 x float> [ zeroinitializer, %for_body2 ], [ %211, %for_begin7.preheader ]
  %.lcssa31 = phi <16 x float> [ zeroinitializer, %for_body2 ], [ %210, %for_begin7.preheader ]
  %54 = mul nuw nsw i64 %indvars.iv, 75076
  %55 = add nuw nsw i64 %54, %53
  %56 = mul nuw nsw i64 %indvars.iv, 144
  %57 = add nsw i64 %56, %41
  %58 = add nsw i64 %55, %42
  %59 = getelementptr inbounds float, float* %6, i64 %58
  %60 = load float, float* %59, align 8, !tbaa !131
  %61 = insertelement <16 x float> undef, float %60, i32 0
  %62 = shufflevector <16 x float> %61, <16 x float> undef, <16 x i32> zeroinitializer
  %63 = getelementptr inbounds float, float* %9, i64 %57
  %64 = bitcast float* %63 to <16 x float>*
  %65 = load <16 x float>, <16 x float>* %64, align 64, !tbaa !137
  %66 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %62, <16 x float> %65, <16 x float> %.lcssa31)
  %67 = or i64 %58, 1
  %68 = getelementptr inbounds float, float* %6, i64 %67
  %69 = load float, float* %68, align 4, !tbaa !131
  %70 = insertelement <16 x float> undef, float %69, i32 0
  %71 = shufflevector <16 x float> %70, <16 x float> undef, <16 x i32> zeroinitializer
  %72 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %71, <16 x float> %65, <16 x float> %.lcssa2533)
  %73 = add nsw i64 %58, 2
  %74 = getelementptr inbounds float, float* %6, i64 %73
  %75 = load float, float* %74, align 8, !tbaa !131
  %76 = insertelement <16 x float> undef, float %75, i32 0
  %77 = shufflevector <16 x float> %76, <16 x float> undef, <16 x i32> zeroinitializer
  %78 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %77, <16 x float> %65, <16 x float> %.lcssa2734)
  %79 = add nsw i64 %58, 3
  %80 = getelementptr inbounds float, float* %6, i64 %79
  %81 = load float, float* %80, align 4, !tbaa !131
  %82 = insertelement <16 x float> undef, float %81, i32 0
  %83 = shufflevector <16 x float> %82, <16 x float> undef, <16 x i32> zeroinitializer
  %84 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %83, <16 x float> %65, <16 x float> %.lcssa2936)
  %85 = add nsw i64 %57, 16
  %86 = getelementptr inbounds float, float* %9, i64 %85
  %87 = bitcast float* %86 to <16 x float>*
  %88 = load <16 x float>, <16 x float>* %87, align 64, !tbaa !137
  %89 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %71, <16 x float> %88, <16 x float> %66)
  %90 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %77, <16 x float> %88, <16 x float> %72)
  %91 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %83, <16 x float> %88, <16 x float> %78)
  %92 = add nsw i64 %58, 4
  %93 = getelementptr inbounds float, float* %6, i64 %92
  %94 = load float, float* %93, align 8, !tbaa !131
  %95 = insertelement <16 x float> undef, float %94, i32 0
  %96 = shufflevector <16 x float> %95, <16 x float> undef, <16 x i32> zeroinitializer
  %97 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %96, <16 x float> %88, <16 x float> %84)
  %98 = add nsw i64 %57, 32
  %99 = getelementptr inbounds float, float* %9, i64 %98
  %100 = bitcast float* %99 to <16 x float>*
  %101 = load <16 x float>, <16 x float>* %100, align 64, !tbaa !137
  %102 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %77, <16 x float> %101, <16 x float> %89)
  %103 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %83, <16 x float> %101, <16 x float> %90)
  %104 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %96, <16 x float> %101, <16 x float> %91)
  %105 = add nsw i64 %58, 5
  %106 = getelementptr inbounds float, float* %6, i64 %105
  %107 = load float, float* %106, align 4, !tbaa !131
  %108 = insertelement <16 x float> undef, float %107, i32 0
  %109 = shufflevector <16 x float> %108, <16 x float> undef, <16 x i32> zeroinitializer
  %110 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %109, <16 x float> %101, <16 x float> %97)
  %111 = add nsw i64 %55, %44
  %112 = getelementptr inbounds float, float* %6, i64 %111
  %113 = load float, float* %112, align 8, !tbaa !131
  %114 = insertelement <16 x float> undef, float %113, i32 0
  %115 = shufflevector <16 x float> %114, <16 x float> undef, <16 x i32> zeroinitializer
  %116 = add nsw i64 %57, 48
  %117 = getelementptr inbounds float, float* %9, i64 %116
  %118 = bitcast float* %117 to <16 x float>*
  %119 = load <16 x float>, <16 x float>* %118, align 64, !tbaa !137
  %120 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %115, <16 x float> %119, <16 x float> %102)
  %121 = or i64 %111, 1
  %122 = getelementptr inbounds float, float* %6, i64 %121
  %123 = load float, float* %122, align 4, !tbaa !131
  %124 = insertelement <16 x float> undef, float %123, i32 0
  %125 = shufflevector <16 x float> %124, <16 x float> undef, <16 x i32> zeroinitializer
  %126 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %125, <16 x float> %119, <16 x float> %103)
  %127 = add nsw i64 %111, 2
  %128 = getelementptr inbounds float, float* %6, i64 %127
  %129 = load float, float* %128, align 8, !tbaa !131
  %130 = insertelement <16 x float> undef, float %129, i32 0
  %131 = shufflevector <16 x float> %130, <16 x float> undef, <16 x i32> zeroinitializer
  %132 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %131, <16 x float> %119, <16 x float> %104)
  %133 = add nsw i64 %111, 3
  %134 = getelementptr inbounds float, float* %6, i64 %133
  %135 = load float, float* %134, align 4, !tbaa !131
  %136 = insertelement <16 x float> undef, float %135, i32 0
  %137 = shufflevector <16 x float> %136, <16 x float> undef, <16 x i32> zeroinitializer
  %138 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %137, <16 x float> %119, <16 x float> %110)
  %139 = add nsw i64 %57, 64
  %140 = getelementptr inbounds float, float* %9, i64 %139
  %141 = bitcast float* %140 to <16 x float>*
  %142 = load <16 x float>, <16 x float>* %141, align 64, !tbaa !137
  %143 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %125, <16 x float> %142, <16 x float> %120)
  %144 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %131, <16 x float> %142, <16 x float> %126)
  %145 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %137, <16 x float> %142, <16 x float> %132)
  %146 = add nsw i64 %111, 4
  %147 = getelementptr inbounds float, float* %6, i64 %146
  %148 = load float, float* %147, align 8, !tbaa !131
  %149 = insertelement <16 x float> undef, float %148, i32 0
  %150 = shufflevector <16 x float> %149, <16 x float> undef, <16 x i32> zeroinitializer
  %151 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %150, <16 x float> %142, <16 x float> %138)
  %152 = add nsw i64 %57, 80
  %153 = getelementptr inbounds float, float* %9, i64 %152
  %154 = bitcast float* %153 to <16 x float>*
  %155 = load <16 x float>, <16 x float>* %154, align 64, !tbaa !137
  %156 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %131, <16 x float> %155, <16 x float> %143)
  %157 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %137, <16 x float> %155, <16 x float> %144)
  %158 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %150, <16 x float> %155, <16 x float> %145)
  %159 = add nsw i64 %111, 5
  %160 = getelementptr inbounds float, float* %6, i64 %159
  %161 = load float, float* %160, align 4, !tbaa !131
  %162 = insertelement <16 x float> undef, float %161, i32 0
  %163 = shufflevector <16 x float> %162, <16 x float> undef, <16 x i32> zeroinitializer
  %164 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %163, <16 x float> %155, <16 x float> %151)
  %165 = add nsw i64 %55, %46
  %166 = getelementptr inbounds float, float* %6, i64 %165
  %167 = load float, float* %166, align 8, !tbaa !131
  %168 = insertelement <16 x float> undef, float %167, i32 0
  %169 = shufflevector <16 x float> %168, <16 x float> undef, <16 x i32> zeroinitializer
  %170 = add nsw i64 %57, 96
  %171 = getelementptr inbounds float, float* %9, i64 %170
  %172 = bitcast float* %171 to <16 x float>*
  %173 = load <16 x float>, <16 x float>* %172, align 64, !tbaa !137
  %174 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %169, <16 x float> %173, <16 x float> %156)
  %175 = or i64 %165, 1
  %176 = getelementptr inbounds float, float* %6, i64 %175
  %177 = load float, float* %176, align 4, !tbaa !131
  %178 = insertelement <16 x float> undef, float %177, i32 0
  %179 = shufflevector <16 x float> %178, <16 x float> undef, <16 x i32> zeroinitializer
  %180 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %179, <16 x float> %173, <16 x float> %157)
  %181 = add nsw i64 %165, 2
  %182 = getelementptr inbounds float, float* %6, i64 %181
  %183 = load float, float* %182, align 8, !tbaa !131
  %184 = insertelement <16 x float> undef, float %183, i32 0
  %185 = shufflevector <16 x float> %184, <16 x float> undef, <16 x i32> zeroinitializer
  %186 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %185, <16 x float> %173, <16 x float> %158)
  %187 = add nsw i64 %165, 3
  %188 = getelementptr inbounds float, float* %6, i64 %187
  %189 = load float, float* %188, align 4, !tbaa !131
  %190 = insertelement <16 x float> undef, float %189, i32 0
  %191 = shufflevector <16 x float> %190, <16 x float> undef, <16 x i32> zeroinitializer
  %192 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %191, <16 x float> %173, <16 x float> %164)
  %193 = add nsw i64 %57, 112
  %194 = getelementptr inbounds float, float* %9, i64 %193
  %195 = bitcast float* %194 to <16 x float>*
  %196 = load <16 x float>, <16 x float>* %195, align 64, !tbaa !137
  %197 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %179, <16 x float> %196, <16 x float> %174)
  %198 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %185, <16 x float> %196, <16 x float> %180)
  %199 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %191, <16 x float> %196, <16 x float> %186)
  %200 = add nsw i64 %165, 4
  %201 = getelementptr inbounds float, float* %6, i64 %200
  %202 = load float, float* %201, align 8, !tbaa !131
  %203 = insertelement <16 x float> undef, float %202, i32 0
  %204 = shufflevector <16 x float> %203, <16 x float> undef, <16 x i32> zeroinitializer
  %205 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %204, <16 x float> %196, <16 x float> %192)
  %206 = add nsw i64 %57, 128
  %207 = getelementptr inbounds float, float* %9, i64 %206
  %208 = bitcast float* %207 to <16 x float>*
  %209 = load <16 x float>, <16 x float>* %208, align 64, !tbaa !137
  %210 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %185, <16 x float> %209, <16 x float> %197)
  %211 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %191, <16 x float> %209, <16 x float> %198)
  %212 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %204, <16 x float> %209, <16 x float> %199)
  %213 = add nsw i64 %165, 5
  %214 = getelementptr inbounds float, float* %6, i64 %213
  %215 = load float, float* %214, align 4, !tbaa !131
  %216 = insertelement <16 x float> undef, float %215, i32 0
  %217 = shufflevector <16 x float> %216, <16 x float> undef, <16 x i32> zeroinitializer
  %218 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %217, <16 x float> %209, <16 x float> %205)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 32
  br i1 %exitcond, label %for_begin10.preheader, label %for_begin7.preheader, !prof !49

for_begin16.preheader:                            ; preds = %for_begin16.preheader, %for_begin13.preheader
  %indvars.iv48 = phi i64 [ 0, %for_begin13.preheader ], [ %indvars.iv.next49, %for_begin16.preheader ]
  %219 = shl i64 %indvars.iv48, 2
  %220 = add nsw i64 %219, %51
  %221 = shl i64 %indvars.iv48, 6
  %222 = add nsw i64 %220, 73984
  %223 = add nsw i64 %220, 147968
  %224 = add nsw i64 %220, 221952
  %225 = add nsw i64 %220, 295936
  %226 = add nsw i64 %220, 369920
  %227 = add nsw i64 %220, 443904
  %228 = add nsw i64 %220, 517888
  %229 = add nsw i64 %220, 591872
  %230 = add nsw i64 %220, 665856
  %231 = add nsw i64 %220, 739840
  %232 = add nsw i64 %220, 813824
  %233 = add nsw i64 %220, 887808
  %234 = add nsw i64 %220, 961792
  %235 = add nsw i64 %220, 1035776
  %236 = add nsw i64 %220, 1109760
  %237 = getelementptr inbounds float, float* %50, i64 %221
  %238 = bitcast float* %237 to <16 x float>*
  %239 = load <16 x float>, <16 x float>* %238, align 64, !tbaa !150
  %240 = getelementptr inbounds float, float* %12, i64 %220
  %241 = extractelement <16 x float> %239, i64 0
  store float %241, float* %240, align 4, !tbaa !153
  %242 = getelementptr inbounds float, float* %12, i64 %222
  %243 = extractelement <16 x float> %239, i64 1
  store float %243, float* %242, align 4, !tbaa !153
  %244 = getelementptr inbounds float, float* %12, i64 %223
  %245 = extractelement <16 x float> %239, i64 2
  store float %245, float* %244, align 4, !tbaa !153
  %246 = getelementptr inbounds float, float* %12, i64 %224
  %247 = extractelement <16 x float> %239, i64 3
  store float %247, float* %246, align 4, !tbaa !153
  %248 = getelementptr inbounds float, float* %12, i64 %225
  %249 = extractelement <16 x float> %239, i64 4
  store float %249, float* %248, align 4, !tbaa !153
  %250 = getelementptr inbounds float, float* %12, i64 %226
  %251 = extractelement <16 x float> %239, i64 5
  store float %251, float* %250, align 4, !tbaa !153
  %252 = getelementptr inbounds float, float* %12, i64 %227
  %253 = extractelement <16 x float> %239, i64 6
  store float %253, float* %252, align 4, !tbaa !153
  %254 = getelementptr inbounds float, float* %12, i64 %228
  %255 = extractelement <16 x float> %239, i64 7
  store float %255, float* %254, align 4, !tbaa !153
  %256 = getelementptr inbounds float, float* %12, i64 %229
  %257 = extractelement <16 x float> %239, i64 8
  store float %257, float* %256, align 4, !tbaa !153
  %258 = getelementptr inbounds float, float* %12, i64 %230
  %259 = extractelement <16 x float> %239, i64 9
  store float %259, float* %258, align 4, !tbaa !153
  %260 = getelementptr inbounds float, float* %12, i64 %231
  %261 = extractelement <16 x float> %239, i64 10
  store float %261, float* %260, align 4, !tbaa !153
  %262 = getelementptr inbounds float, float* %12, i64 %232
  %263 = extractelement <16 x float> %239, i64 11
  store float %263, float* %262, align 4, !tbaa !153
  %264 = getelementptr inbounds float, float* %12, i64 %233
  %265 = extractelement <16 x float> %239, i64 12
  store float %265, float* %264, align 4, !tbaa !153
  %266 = getelementptr inbounds float, float* %12, i64 %234
  %267 = extractelement <16 x float> %239, i64 13
  store float %267, float* %266, align 4, !tbaa !153
  %268 = getelementptr inbounds float, float* %12, i64 %235
  %269 = extractelement <16 x float> %239, i64 14
  store float %269, float* %268, align 4, !tbaa !153
  %270 = getelementptr inbounds float, float* %12, i64 %236
  %271 = extractelement <16 x float> %239, i64 15
  store float %271, float* %270, align 4, !tbaa !153
  %272 = or i64 %220, 1
  %273 = add nsw i64 %272, 73984
  %274 = add nsw i64 %272, 147968
  %275 = add nsw i64 %272, 221952
  %276 = add nsw i64 %272, 295936
  %277 = add nsw i64 %272, 369920
  %278 = add nsw i64 %272, 443904
  %279 = add nsw i64 %272, 517888
  %280 = add nsw i64 %272, 591872
  %281 = add nsw i64 %272, 665856
  %282 = add nsw i64 %272, 739840
  %283 = add nsw i64 %272, 813824
  %284 = add nsw i64 %272, 887808
  %285 = add nsw i64 %272, 961792
  %286 = add nsw i64 %272, 1035776
  %287 = add nsw i64 %272, 1109760
  %288 = or i64 %221, 16
  %289 = getelementptr inbounds float, float* %50, i64 %288
  %290 = bitcast float* %289 to <16 x float>*
  %291 = load <16 x float>, <16 x float>* %290, align 64, !tbaa !150
  %292 = getelementptr inbounds float, float* %12, i64 %272
  %293 = extractelement <16 x float> %291, i64 0
  store float %293, float* %292, align 4, !tbaa !153
  %294 = getelementptr inbounds float, float* %12, i64 %273
  %295 = extractelement <16 x float> %291, i64 1
  store float %295, float* %294, align 4, !tbaa !153
  %296 = getelementptr inbounds float, float* %12, i64 %274
  %297 = extractelement <16 x float> %291, i64 2
  store float %297, float* %296, align 4, !tbaa !153
  %298 = getelementptr inbounds float, float* %12, i64 %275
  %299 = extractelement <16 x float> %291, i64 3
  store float %299, float* %298, align 4, !tbaa !153
  %300 = getelementptr inbounds float, float* %12, i64 %276
  %301 = extractelement <16 x float> %291, i64 4
  store float %301, float* %300, align 4, !tbaa !153
  %302 = getelementptr inbounds float, float* %12, i64 %277
  %303 = extractelement <16 x float> %291, i64 5
  store float %303, float* %302, align 4, !tbaa !153
  %304 = getelementptr inbounds float, float* %12, i64 %278
  %305 = extractelement <16 x float> %291, i64 6
  store float %305, float* %304, align 4, !tbaa !153
  %306 = getelementptr inbounds float, float* %12, i64 %279
  %307 = extractelement <16 x float> %291, i64 7
  store float %307, float* %306, align 4, !tbaa !153
  %308 = getelementptr inbounds float, float* %12, i64 %280
  %309 = extractelement <16 x float> %291, i64 8
  store float %309, float* %308, align 4, !tbaa !153
  %310 = getelementptr inbounds float, float* %12, i64 %281
  %311 = extractelement <16 x float> %291, i64 9
  store float %311, float* %310, align 4, !tbaa !153
  %312 = getelementptr inbounds float, float* %12, i64 %282
  %313 = extractelement <16 x float> %291, i64 10
  store float %313, float* %312, align 4, !tbaa !153
  %314 = getelementptr inbounds float, float* %12, i64 %283
  %315 = extractelement <16 x float> %291, i64 11
  store float %315, float* %314, align 4, !tbaa !153
  %316 = getelementptr inbounds float, float* %12, i64 %284
  %317 = extractelement <16 x float> %291, i64 12
  store float %317, float* %316, align 4, !tbaa !153
  %318 = getelementptr inbounds float, float* %12, i64 %285
  %319 = extractelement <16 x float> %291, i64 13
  store float %319, float* %318, align 4, !tbaa !153
  %320 = getelementptr inbounds float, float* %12, i64 %286
  %321 = extractelement <16 x float> %291, i64 14
  store float %321, float* %320, align 4, !tbaa !153
  %322 = getelementptr inbounds float, float* %12, i64 %287
  %323 = extractelement <16 x float> %291, i64 15
  store float %323, float* %322, align 4, !tbaa !153
  %324 = or i64 %220, 2
  %325 = add nsw i64 %324, 73984
  %326 = add nsw i64 %324, 147968
  %327 = add nsw i64 %324, 221952
  %328 = add nsw i64 %324, 295936
  %329 = add nsw i64 %324, 369920
  %330 = add nsw i64 %324, 443904
  %331 = add nsw i64 %324, 517888
  %332 = add nsw i64 %324, 591872
  %333 = add nsw i64 %324, 665856
  %334 = add nsw i64 %324, 739840
  %335 = add nsw i64 %324, 813824
  %336 = add nsw i64 %324, 887808
  %337 = add nsw i64 %324, 961792
  %338 = add nsw i64 %324, 1035776
  %339 = add nsw i64 %324, 1109760
  %340 = or i64 %221, 32
  %341 = getelementptr inbounds float, float* %50, i64 %340
  %342 = bitcast float* %341 to <16 x float>*
  %343 = load <16 x float>, <16 x float>* %342, align 64, !tbaa !150
  %344 = getelementptr inbounds float, float* %12, i64 %324
  %345 = extractelement <16 x float> %343, i64 0
  store float %345, float* %344, align 4, !tbaa !153
  %346 = getelementptr inbounds float, float* %12, i64 %325
  %347 = extractelement <16 x float> %343, i64 1
  store float %347, float* %346, align 4, !tbaa !153
  %348 = getelementptr inbounds float, float* %12, i64 %326
  %349 = extractelement <16 x float> %343, i64 2
  store float %349, float* %348, align 4, !tbaa !153
  %350 = getelementptr inbounds float, float* %12, i64 %327
  %351 = extractelement <16 x float> %343, i64 3
  store float %351, float* %350, align 4, !tbaa !153
  %352 = getelementptr inbounds float, float* %12, i64 %328
  %353 = extractelement <16 x float> %343, i64 4
  store float %353, float* %352, align 4, !tbaa !153
  %354 = getelementptr inbounds float, float* %12, i64 %329
  %355 = extractelement <16 x float> %343, i64 5
  store float %355, float* %354, align 4, !tbaa !153
  %356 = getelementptr inbounds float, float* %12, i64 %330
  %357 = extractelement <16 x float> %343, i64 6
  store float %357, float* %356, align 4, !tbaa !153
  %358 = getelementptr inbounds float, float* %12, i64 %331
  %359 = extractelement <16 x float> %343, i64 7
  store float %359, float* %358, align 4, !tbaa !153
  %360 = getelementptr inbounds float, float* %12, i64 %332
  %361 = extractelement <16 x float> %343, i64 8
  store float %361, float* %360, align 4, !tbaa !153
  %362 = getelementptr inbounds float, float* %12, i64 %333
  %363 = extractelement <16 x float> %343, i64 9
  store float %363, float* %362, align 4, !tbaa !153
  %364 = getelementptr inbounds float, float* %12, i64 %334
  %365 = extractelement <16 x float> %343, i64 10
  store float %365, float* %364, align 4, !tbaa !153
  %366 = getelementptr inbounds float, float* %12, i64 %335
  %367 = extractelement <16 x float> %343, i64 11
  store float %367, float* %366, align 4, !tbaa !153
  %368 = getelementptr inbounds float, float* %12, i64 %336
  %369 = extractelement <16 x float> %343, i64 12
  store float %369, float* %368, align 4, !tbaa !153
  %370 = getelementptr inbounds float, float* %12, i64 %337
  %371 = extractelement <16 x float> %343, i64 13
  store float %371, float* %370, align 4, !tbaa !153
  %372 = getelementptr inbounds float, float* %12, i64 %338
  %373 = extractelement <16 x float> %343, i64 14
  store float %373, float* %372, align 4, !tbaa !153
  %374 = getelementptr inbounds float, float* %12, i64 %339
  %375 = extractelement <16 x float> %343, i64 15
  store float %375, float* %374, align 4, !tbaa !153
  %376 = or i64 %220, 3
  %377 = add nsw i64 %376, 73984
  %378 = add nsw i64 %376, 147968
  %379 = add nsw i64 %376, 221952
  %380 = add nsw i64 %376, 295936
  %381 = add nsw i64 %376, 369920
  %382 = add nsw i64 %376, 443904
  %383 = add nsw i64 %376, 517888
  %384 = add nsw i64 %376, 591872
  %385 = add nsw i64 %376, 665856
  %386 = add nsw i64 %376, 739840
  %387 = add nsw i64 %376, 813824
  %388 = add nsw i64 %376, 887808
  %389 = add nsw i64 %376, 961792
  %390 = add nsw i64 %376, 1035776
  %391 = add nsw i64 %376, 1109760
  %392 = or i64 %221, 48
  %393 = getelementptr inbounds float, float* %50, i64 %392
  %394 = bitcast float* %393 to <16 x float>*
  %395 = load <16 x float>, <16 x float>* %394, align 64, !tbaa !150
  %396 = getelementptr inbounds float, float* %12, i64 %376
  %397 = extractelement <16 x float> %395, i64 0
  store float %397, float* %396, align 4, !tbaa !153
  %398 = getelementptr inbounds float, float* %12, i64 %377
  %399 = extractelement <16 x float> %395, i64 1
  store float %399, float* %398, align 4, !tbaa !153
  %400 = getelementptr inbounds float, float* %12, i64 %378
  %401 = extractelement <16 x float> %395, i64 2
  store float %401, float* %400, align 4, !tbaa !153
  %402 = getelementptr inbounds float, float* %12, i64 %379
  %403 = extractelement <16 x float> %395, i64 3
  store float %403, float* %402, align 4, !tbaa !153
  %404 = getelementptr inbounds float, float* %12, i64 %380
  %405 = extractelement <16 x float> %395, i64 4
  store float %405, float* %404, align 4, !tbaa !153
  %406 = getelementptr inbounds float, float* %12, i64 %381
  %407 = extractelement <16 x float> %395, i64 5
  store float %407, float* %406, align 4, !tbaa !153
  %408 = getelementptr inbounds float, float* %12, i64 %382
  %409 = extractelement <16 x float> %395, i64 6
  store float %409, float* %408, align 4, !tbaa !153
  %410 = getelementptr inbounds float, float* %12, i64 %383
  %411 = extractelement <16 x float> %395, i64 7
  store float %411, float* %410, align 4, !tbaa !153
  %412 = getelementptr inbounds float, float* %12, i64 %384
  %413 = extractelement <16 x float> %395, i64 8
  store float %413, float* %412, align 4, !tbaa !153
  %414 = getelementptr inbounds float, float* %12, i64 %385
  %415 = extractelement <16 x float> %395, i64 9
  store float %415, float* %414, align 4, !tbaa !153
  %416 = getelementptr inbounds float, float* %12, i64 %386
  %417 = extractelement <16 x float> %395, i64 10
  store float %417, float* %416, align 4, !tbaa !153
  %418 = getelementptr inbounds float, float* %12, i64 %387
  %419 = extractelement <16 x float> %395, i64 11
  store float %419, float* %418, align 4, !tbaa !153
  %420 = getelementptr inbounds float, float* %12, i64 %388
  %421 = extractelement <16 x float> %395, i64 12
  store float %421, float* %420, align 4, !tbaa !153
  %422 = getelementptr inbounds float, float* %12, i64 %389
  %423 = extractelement <16 x float> %395, i64 13
  store float %423, float* %422, align 4, !tbaa !153
  %424 = getelementptr inbounds float, float* %12, i64 %390
  %425 = extractelement <16 x float> %395, i64 14
  store float %425, float* %424, align 4, !tbaa !153
  %426 = getelementptr inbounds float, float* %12, i64 %391
  %427 = extractelement <16 x float> %395, i64 15
  store float %427, float* %426, align 4, !tbaa !153
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 1
  %exitcond50 = icmp eq i64 %indvars.iv.next49, 68
  br i1 %exitcond50, label %for_end15, label %for_begin16.preheader, !prof !49

for_end15:                                        ; preds = %for_begin16.preheader
  %428 = load i32 (i32, i32, i8*)*, i32 (i32, i32, i8*)** @__TVMBackendFreeWorkspace, align 8, !tbaa !6
  %429 = tail call i32 %428(i32 1, i32 %15, i8* nonnull %37)
  %430 = add nsw i32 %35, 1
  %431 = icmp slt i32 %430, %23
  br i1 %431, label %for_body, label %for_end, !prof !5
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
!10 = !{!"0x1e66ac0.w1.b0", !11, i64 0}
!11 = !{!"0x1e66ac0.w2.b0", !12, i64 0}
!12 = !{!"0x1e66ac0.w4.b0", !13, i64 0}
!13 = !{!"0x1e66ac0.w8.b0", !14, i64 0}
!14 = !{!"0x1e66ac0.w16.b0", !15, i64 0}
!15 = !{!"0x1e66ac0.w32.b0", !16, i64 0}
!16 = !{!"0x1e66ac0.w64.b0", !17, i64 0}
!17 = !{!"0x1e66ac0.w128.b0", !18, i64 0}
!18 = !{!"0x1e66ac0.w256.b0", !19, i64 0}
!19 = !{!"0x1e66ac0.w512.b0", !20, i64 0}
!20 = !{!"0x1e66ac0.w1024.b0", !21, i64 0}
!21 = !{!"int32", !22, i64 0}
!22 = !{!"0x1e66ac0", !8, i64 0}
!23 = !{!24, !24, i64 0}
!24 = !{!"0x1e66ac0.w1.b2", !25, i64 0}
!25 = !{!"0x1e66ac0.w2.b2", !12, i64 0}
!26 = !{!27, !27, i64 0}
!27 = !{!"0x1e66ac0.w1.b1", !11, i64 0}
!28 = !{!29, !29, i64 0}
!29 = !{!"0x1e721e0.w1.b0", !30, i64 0}
!30 = !{!"0x1e721e0.w2.b0", !31, i64 0}
!31 = !{!"0x1e721e0.w4.b0", !32, i64 0}
!32 = !{!"0x1e721e0.w8.b0", !33, i64 0}
!33 = !{!"0x1e721e0.w16.b0", !34, i64 0}
!34 = !{!"0x1e721e0.w32.b0", !35, i64 0}
!35 = !{!"0x1e721e0.w64.b0", !36, i64 0}
!36 = !{!"0x1e721e0.w128.b0", !37, i64 0}
!37 = !{!"0x1e721e0.w256.b0", !38, i64 0}
!38 = !{!"0x1e721e0.w512.b0", !39, i64 0}
!39 = !{!"0x1e721e0.w1024.b0", !40, i64 0}
!40 = !{!"int64", !41, i64 0}
!41 = !{!"0x1e721e0", !8, i64 0}
!42 = !{!43, !43, i64 0}
!43 = !{!"0x1e721e0.w1.b1", !30, i64 0}
!44 = !{!45, !45, i64 0}
!45 = !{!"0x1e721e0.w1.b2", !46, i64 0}
!46 = !{!"0x1e721e0.w2.b2", !31, i64 0}
!47 = !{!48, !48, i64 0}
!48 = !{!"0x1e721e0.w1.b3", !46, i64 0}
!49 = !{!"branch_weights", i32 1, i32 1048576}
!50 = !{!51, !51, i64 0}
!51 = !{!"0x1e5dd20.w4.b0", !52, i64 0}
!52 = !{!"0x1e5dd20.w8.b0", !53, i64 0}
!53 = !{!"0x1e5dd20.w16.b0", !54, i64 0}
!54 = !{!"0x1e5dd20.w32.b0", !55, i64 0}
!55 = !{!"0x1e5dd20.w64.b0", !56, i64 0}
!56 = !{!"0x1e5dd20.w128.b0", !57, i64 0}
!57 = !{!"0x1e5dd20.w256.b0", !58, i64 0}
!58 = !{!"0x1e5dd20.w512.b0", !59, i64 0}
!59 = !{!"0x1e5dd20.w1024.b0", !60, i64 0}
!60 = !{!"int64", !61, i64 0}
!61 = !{!"0x1e5dd20", !8, i64 0}
!62 = !{!63, !63, i64 0}
!63 = !{!"0x1d1a0b0.w1.b0", !64, i64 0}
!64 = !{!"0x1d1a0b0.w2.b0", !65, i64 0}
!65 = !{!"0x1d1a0b0.w4.b0", !66, i64 0}
!66 = !{!"0x1d1a0b0.w8.b0", !67, i64 0}
!67 = !{!"0x1d1a0b0.w16.b0", !68, i64 0}
!68 = !{!"0x1d1a0b0.w32.b0", !69, i64 0}
!69 = !{!"0x1d1a0b0.w64.b0", !70, i64 0}
!70 = !{!"0x1d1a0b0.w128.b0", !71, i64 0}
!71 = !{!"0x1d1a0b0.w256.b0", !72, i64 0}
!72 = !{!"0x1d1a0b0.w512.b0", !73, i64 0}
!73 = !{!"0x1d1a0b0.w1024.b0", !74, i64 0}
!74 = !{!"int64", !75, i64 0}
!75 = !{!"0x1d1a0b0", !8, i64 0}
!76 = !{!77, !77, i64 0}
!77 = !{!"0x1d1a0b0.w1.b1", !64, i64 0}
!78 = !{!79, !79, i64 0}
!79 = !{!"0x1d1a0b0.w1.b2", !80, i64 0}
!80 = !{!"0x1d1a0b0.w2.b2", !65, i64 0}
!81 = !{!82, !82, i64 0}
!82 = !{!"0x1d1a0b0.w1.b3", !80, i64 0}
!83 = !{!84, !84, i64 0}
!84 = !{!"0x1d4d660.w4.b0", !85, i64 0}
!85 = !{!"0x1d4d660.w8.b0", !86, i64 0}
!86 = !{!"0x1d4d660.w16.b0", !87, i64 0}
!87 = !{!"0x1d4d660.w32.b0", !88, i64 0}
!88 = !{!"0x1d4d660.w64.b0", !89, i64 0}
!89 = !{!"0x1d4d660.w128.b0", !90, i64 0}
!90 = !{!"0x1d4d660.w256.b0", !91, i64 0}
!91 = !{!"0x1d4d660.w512.b0", !92, i64 0}
!92 = !{!"0x1d4d660.w1024.b0", !93, i64 0}
!93 = !{!"int64", !94, i64 0}
!94 = !{!"0x1d4d660", !8, i64 0}
!95 = !{!96, !96, i64 0}
!96 = !{!"0x1e66e20.w1.b0", !97, i64 0}
!97 = !{!"0x1e66e20.w2.b0", !98, i64 0}
!98 = !{!"0x1e66e20.w4.b0", !99, i64 0}
!99 = !{!"0x1e66e20.w8.b0", !100, i64 0}
!100 = !{!"0x1e66e20.w16.b0", !101, i64 0}
!101 = !{!"0x1e66e20.w32.b0", !102, i64 0}
!102 = !{!"0x1e66e20.w64.b0", !103, i64 0}
!103 = !{!"0x1e66e20.w128.b0", !104, i64 0}
!104 = !{!"0x1e66e20.w256.b0", !105, i64 0}
!105 = !{!"0x1e66e20.w512.b0", !106, i64 0}
!106 = !{!"0x1e66e20.w1024.b0", !107, i64 0}
!107 = !{!"int64", !108, i64 0}
!108 = !{!"0x1e66e20", !8, i64 0}
!109 = !{!110, !110, i64 0}
!110 = !{!"0x1e66e20.w1.b1", !97, i64 0}
!111 = !{!112, !112, i64 0}
!112 = !{!"0x1e66e20.w1.b2", !113, i64 0}
!113 = !{!"0x1e66e20.w2.b2", !98, i64 0}
!114 = !{!115, !115, i64 0}
!115 = !{!"0x1e66e20.w1.b3", !113, i64 0}
!116 = !{!117, !117, i64 0}
!117 = !{!"0x1d451e0.w4.b0", !118, i64 0}
!118 = !{!"0x1d451e0.w8.b0", !119, i64 0}
!119 = !{!"0x1d451e0.w16.b0", !120, i64 0}
!120 = !{!"0x1d451e0.w32.b0", !121, i64 0}
!121 = !{!"0x1d451e0.w64.b0", !122, i64 0}
!122 = !{!"0x1d451e0.w128.b0", !123, i64 0}
!123 = !{!"0x1d451e0.w256.b0", !124, i64 0}
!124 = !{!"0x1d451e0.w512.b0", !125, i64 0}
!125 = !{!"0x1d451e0.w1024.b0", !126, i64 0}
!126 = !{!"int64", !127, i64 0}
!127 = !{!"0x1d451e0", !8, i64 0}
!128 = !{!129, !129, i64 0}
!129 = !{!"float32", !130, i64 0}
!130 = !{!"0x1e80450", !8, i64 0}
!131 = !{!132, !132, i64 0}
!132 = !{!"float32", !133, i64 0}
!133 = !{!"0x1e840f0", !8, i64 0}
!134 = !{!135, !135, i64 0}
!135 = !{!"float32", !136, i64 0}
!136 = !{!"0x1e7fcd0", !8, i64 0}
!137 = !{!138, !138, i64 0}
!138 = !{!"float32", !139, i64 0}
!139 = !{!"0x1e5d9a0", !8, i64 0}
!140 = !{!141, !141, i64 0}
!141 = !{!"0x1e5dce0.w16.b0", !142, i64 0}
!142 = !{!"0x1e5dce0.w32.b0", !143, i64 0}
!143 = !{!"0x1e5dce0.w64.b0", !144, i64 0}
!144 = !{!"0x1e5dce0.w128.b0", !145, i64 0}
!145 = !{!"0x1e5dce0.w256.b0", !146, i64 0}
!146 = !{!"0x1e5dce0.w512.b0", !147, i64 0}
!147 = !{!"0x1e5dce0.w1024.b0", !148, i64 0}
!148 = !{!"float32", !149, i64 0}
!149 = !{!"0x1e5dce0", !8, i64 0}
!150 = !{!151, !151, i64 0}
!151 = !{!"float32", !152, i64 0}
!152 = !{!"0x1d1a110", !8, i64 0}
!153 = !{!154, !154, i64 0}
!154 = !{!"float32", !155, i64 0}
!155 = !{!"0x1e5dc20", !8, i64 0}
