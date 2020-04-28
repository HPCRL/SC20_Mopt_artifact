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
@.str.8 = private constant [97 x i8] c"Assert fail: (512 == int32(arg0.shape[1])), Argument arg0.shape[1] has an unsatisfied constraint\00", align 1
@.str.9 = private constant [96 x i8] c"Assert fail: (34 == int32(arg0.shape[2])), Argument arg0.shape[2] has an unsatisfied constraint\00", align 1
@.str.10 = private constant [96 x i8] c"Assert fail: (34 == int32(arg0.shape[3])), Argument arg0.shape[3] has an unsatisfied constraint\00", align 1
@.str.11 = private constant [201 x i8] c"Assert fail: ((((1 == int32(arg0.strides[3])) && (34 == int32(arg0.strides[2]))) && (1156 == int32(arg0.strides[1]))) && (591872 == int32(arg0.strides[0]))), arg0.strides: expected to be compact array\00", align 1
@.str.12 = private constant [112 x i8] c"Assert fail: ((uint64)0 == tvm_struct_get(arg0, 0, 8)), Argument arg0.byte_offset has an unsatisfied constraint\00", align 1
@.str.13 = private constant [81 x i8] c"Assert fail: (4 == tvm_struct_get(arg1, 0, 4)), arg1.ndim is expected to equal 4\00", align 1
@.str.14 = private constant [186 x i8] c"Assert fail: (((tvm_struct_get(arg1, 0, 5) == (uint8)2) && (tvm_struct_get(arg1, 0, 6) == (uint8)32)) && (tvm_struct_get(arg1, 0, 7) == (uint16)1)), arg1.dtype is expected to be float32\00", align 1
@.str.15 = private constant [97 x i8] c"Assert fail: (256 == int32(arg1.shape[0])), Argument arg1.shape[0] has an unsatisfied constraint\00", align 1
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
@.str.26 = private constant [97 x i8] c"Assert fail: (256 == int32(arg2.shape[1])), Argument arg2.shape[1] has an unsatisfied constraint\00", align 1
@.str.27 = private constant [96 x i8] c"Assert fail: (34 == int32(arg2.shape[2])), Argument arg2.shape[2] has an unsatisfied constraint\00", align 1
@.str.28 = private constant [96 x i8] c"Assert fail: (34 == int32(arg2.shape[3])), Argument arg2.shape[3] has an unsatisfied constraint\00", align 1
@.str.29 = private constant [201 x i8] c"Assert fail: ((((1 == int32(arg2.strides[3])) && (34 == int32(arg2.strides[2]))) && (1156 == int32(arg2.strides[1]))) && (295936 == int32(arg2.strides[0]))), arg2.strides: expected to be compact array\00", align 1
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
  %76 = icmp eq i32 %75, 34
  br i1 %76, label %assert_end18, label %assert_fail17, !prof !5

assert_fail17:                                    ; preds = %assert_end16
  %77 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %77(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.9, i64 0, i64 0))
  ret i32 -1

assert_end18:                                     ; preds = %assert_end16
  %78 = getelementptr inbounds i64, i64* %21, i64 3
  %79 = load i64, i64* %78, align 8, !tbaa !47
  %80 = trunc i64 %79 to i32
  %81 = icmp eq i32 %80, 34
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
  %87 = icmp eq <4 x i32> %86, <i32 591872, i32 1156, i32 34, i32 1>
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
  %176 = icmp eq i32 %175, 34
  br i1 %176, label %assert_end56, label %assert_fail55, !prof !5

assert_fail55:                                    ; preds = %assert_end54
  %177 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %177(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.27, i64 0, i64 0))
  ret i32 -1

assert_end56:                                     ; preds = %assert_end54
  %178 = getelementptr inbounds i64, i64* %37, i64 3
  %179 = load i64, i64* %178, align 8, !tbaa !114
  %180 = trunc i64 %179 to i32
  %181 = icmp eq i32 %180, 34
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
  %187 = icmp eq <4 x i32> %186, <i32 295936, i32 1156, i32 34, i32 1>
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
  %5 = tail call i8* %4(i32 1, i32 %3, i64 2367488, i32 2, i32 32)
  %6 = load i8* (i32, i32, i64, i32, i32)*, i8* (i32, i32, i64, i32, i32)** @__TVMBackendAllocWorkspace, align 8, !tbaa !6
  %7 = tail call i8* %6(i32 1, i32 %3, i64 524288, i32 2, i32 32)
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
  %10 = add nsw i32 %9, 135
  %11 = sdiv i32 %10, %9
  %12 = add nsw i32 %0, 1
  %13 = mul nsw i32 %11, %12
  %14 = icmp slt i32 %13, 136
  %15 = select i1 %14, i32 %13, i32 136
  %16 = mul nsw i32 %11, %0
  %17 = icmp slt i32 %16, 136
  %18 = select i1 %17, i32 %16, i32 136
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
  %24 = mul nsw i64 %indvars.iv7, 4352
  %25 = trunc i64 %indvars.iv7 to i32
  %26 = srem i32 %25, 34
  %27 = mul nsw i32 %26, 34
  %28 = sdiv i32 %25, 34
  %29 = mul nsw i32 %28, 147968
  %30 = add i32 %27, %29
  br label %for_begin4.preheader

for_end:                                          ; preds = %for_end3, %entry
  ret i32 0

for_begin4.preheader:                             ; preds = %for_begin4.preheader, %for_begin1.preheader
  %indvars.iv = phi i64 [ 0, %for_begin1.preheader ], [ %indvars.iv.next, %for_begin4.preheader ]
  %31 = mul nuw nsw i64 %indvars.iv, 34
  %32 = add nsw i64 %31, %24
  %33 = trunc i64 %indvars.iv to i32
  %34 = mul i32 %33, 1156
  %35 = add i32 %30, %34
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds float, float* %7, i64 %36
  %38 = bitcast float* %37 to i32*
  %39 = load i32, i32* %38, align 4, !tbaa !128
  %40 = getelementptr inbounds float, float* %4, i64 %32
  %41 = bitcast float* %40 to i32*
  store i32 %39, i32* %41, align 4, !tbaa !131
  %42 = or i64 %32, 1
  %43 = or i32 %35, 1
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
  %186 = add nsw i64 %32, 19
  %187 = add i32 %35, 19
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds float, float* %7, i64 %188
  %190 = bitcast float* %189 to i32*
  %191 = load i32, i32* %190, align 4, !tbaa !128
  %192 = getelementptr inbounds float, float* %4, i64 %186
  %193 = bitcast float* %192 to i32*
  store i32 %191, i32* %193, align 4, !tbaa !131
  %194 = add nsw i64 %32, 20
  %195 = add i32 %35, 20
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds float, float* %7, i64 %196
  %198 = bitcast float* %197 to i32*
  %199 = load i32, i32* %198, align 4, !tbaa !128
  %200 = getelementptr inbounds float, float* %4, i64 %194
  %201 = bitcast float* %200 to i32*
  store i32 %199, i32* %201, align 4, !tbaa !131
  %202 = add nsw i64 %32, 21
  %203 = add i32 %35, 21
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds float, float* %7, i64 %204
  %206 = bitcast float* %205 to i32*
  %207 = load i32, i32* %206, align 4, !tbaa !128
  %208 = getelementptr inbounds float, float* %4, i64 %202
  %209 = bitcast float* %208 to i32*
  store i32 %207, i32* %209, align 4, !tbaa !131
  %210 = add nsw i64 %32, 22
  %211 = add i32 %35, 22
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds float, float* %7, i64 %212
  %214 = bitcast float* %213 to i32*
  %215 = load i32, i32* %214, align 4, !tbaa !128
  %216 = getelementptr inbounds float, float* %4, i64 %210
  %217 = bitcast float* %216 to i32*
  store i32 %215, i32* %217, align 4, !tbaa !131
  %218 = add nsw i64 %32, 23
  %219 = add i32 %35, 23
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds float, float* %7, i64 %220
  %222 = bitcast float* %221 to i32*
  %223 = load i32, i32* %222, align 4, !tbaa !128
  %224 = getelementptr inbounds float, float* %4, i64 %218
  %225 = bitcast float* %224 to i32*
  store i32 %223, i32* %225, align 4, !tbaa !131
  %226 = add nsw i64 %32, 24
  %227 = add i32 %35, 24
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds float, float* %7, i64 %228
  %230 = bitcast float* %229 to i32*
  %231 = load i32, i32* %230, align 4, !tbaa !128
  %232 = getelementptr inbounds float, float* %4, i64 %226
  %233 = bitcast float* %232 to i32*
  store i32 %231, i32* %233, align 4, !tbaa !131
  %234 = add nsw i64 %32, 25
  %235 = add i32 %35, 25
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds float, float* %7, i64 %236
  %238 = bitcast float* %237 to i32*
  %239 = load i32, i32* %238, align 4, !tbaa !128
  %240 = getelementptr inbounds float, float* %4, i64 %234
  %241 = bitcast float* %240 to i32*
  store i32 %239, i32* %241, align 4, !tbaa !131
  %242 = add nsw i64 %32, 26
  %243 = add i32 %35, 26
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds float, float* %7, i64 %244
  %246 = bitcast float* %245 to i32*
  %247 = load i32, i32* %246, align 4, !tbaa !128
  %248 = getelementptr inbounds float, float* %4, i64 %242
  %249 = bitcast float* %248 to i32*
  store i32 %247, i32* %249, align 4, !tbaa !131
  %250 = add nsw i64 %32, 27
  %251 = add i32 %35, 27
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds float, float* %7, i64 %252
  %254 = bitcast float* %253 to i32*
  %255 = load i32, i32* %254, align 4, !tbaa !128
  %256 = getelementptr inbounds float, float* %4, i64 %250
  %257 = bitcast float* %256 to i32*
  store i32 %255, i32* %257, align 4, !tbaa !131
  %258 = add nsw i64 %32, 28
  %259 = add i32 %35, 28
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds float, float* %7, i64 %260
  %262 = bitcast float* %261 to i32*
  %263 = load i32, i32* %262, align 4, !tbaa !128
  %264 = getelementptr inbounds float, float* %4, i64 %258
  %265 = bitcast float* %264 to i32*
  store i32 %263, i32* %265, align 4, !tbaa !131
  %266 = add nsw i64 %32, 29
  %267 = add i32 %35, 29
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds float, float* %7, i64 %268
  %270 = bitcast float* %269 to i32*
  %271 = load i32, i32* %270, align 4, !tbaa !128
  %272 = getelementptr inbounds float, float* %4, i64 %266
  %273 = bitcast float* %272 to i32*
  store i32 %271, i32* %273, align 4, !tbaa !131
  %274 = add nsw i64 %32, 30
  %275 = add i32 %35, 30
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds float, float* %7, i64 %276
  %278 = bitcast float* %277 to i32*
  %279 = load i32, i32* %278, align 4, !tbaa !128
  %280 = getelementptr inbounds float, float* %4, i64 %274
  %281 = bitcast float* %280 to i32*
  store i32 %279, i32* %281, align 4, !tbaa !131
  %282 = add nsw i64 %32, 31
  %283 = add i32 %35, 31
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds float, float* %7, i64 %284
  %286 = bitcast float* %285 to i32*
  %287 = load i32, i32* %286, align 4, !tbaa !128
  %288 = getelementptr inbounds float, float* %4, i64 %282
  %289 = bitcast float* %288 to i32*
  store i32 %287, i32* %289, align 4, !tbaa !131
  %290 = add nsw i64 %32, 32
  %291 = add i32 %35, 32
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds float, float* %7, i64 %292
  %294 = bitcast float* %293 to i32*
  %295 = load i32, i32* %294, align 4, !tbaa !128
  %296 = getelementptr inbounds float, float* %4, i64 %290
  %297 = bitcast float* %296 to i32*
  store i32 %295, i32* %297, align 4, !tbaa !131
  %298 = add nsw i64 %32, 33
  %299 = add i32 %35, 33
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds float, float* %7, i64 %300
  %302 = bitcast float* %301 to i32*
  %303 = load i32, i32* %302, align 4, !tbaa !128
  %304 = getelementptr inbounds float, float* %4, i64 %298
  %305 = bitcast float* %304 to i32*
  store i32 %303, i32* %305, align 4, !tbaa !131
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 128
  br i1 %exitcond, label %for_end3, label %for_begin4.preheader, !prof !49

for_end3:                                         ; preds = %for_begin4.preheader
  %indvars.iv.next8 = add nsw i64 %indvars.iv7, 1
  %306 = icmp slt i64 %indvars.iv.next8, %23
  br i1 %306, label %for_begin1.preheader, label %for_end, !prof !5
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
  %indvars.iv10 = phi i64 [ %22, %for_begin1.preheader.preheader ], [ %indvars.iv.next11, %for_end3 ]
  %24 = phi i32 [ %18, %for_begin1.preheader.preheader ], [ %31, %for_end3 ]
  %25 = shl nsw i32 %24, 14
  %26 = sext i32 %25 to i64
  br label %for_begin4.preheader

for_end:                                          ; preds = %for_end3, %entry
  ret i32 0

for_begin4.preheader:                             ; preds = %for_end6, %for_begin1.preheader
  %indvars.iv7 = phi i64 [ 0, %for_begin1.preheader ], [ %indvars.iv.next8, %for_end6 ]
  %27 = shl i64 %indvars.iv7, 12
  %28 = add nsw i64 %27, %26
  %29 = shl i64 %indvars.iv7, 7
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
  %36 = add nsw i64 %35, 512
  %37 = add nsw i64 %35, 1024
  %38 = add nsw i64 %35, 1536
  %39 = add nsw i64 %35, 2048
  %40 = add nsw i64 %35, 2560
  %41 = add nsw i64 %35, 3072
  %42 = add nsw i64 %35, 3584
  %43 = add nsw i64 %35, 4096
  %44 = add nsw i64 %35, 4608
  %45 = add nsw i64 %35, 5120
  %46 = add nsw i64 %35, 5632
  %47 = add nsw i64 %35, 6144
  %48 = add nsw i64 %35, 6656
  %49 = add nsw i64 %35, 7168
  %50 = add nsw i64 %35, 7680
  %51 = add nsw i64 %35, 8192
  %52 = add nsw i64 %35, 8704
  %53 = add nsw i64 %35, 9216
  %54 = add nsw i64 %35, 9728
  %55 = add nsw i64 %35, 10240
  %56 = add nsw i64 %35, 10752
  %57 = add nsw i64 %35, 11264
  %58 = add nsw i64 %35, 11776
  %59 = add nsw i64 %35, 12288
  %60 = add nsw i64 %35, 12800
  %61 = add nsw i64 %35, 13312
  %62 = add nsw i64 %35, 13824
  %63 = add nsw i64 %35, 14336
  %64 = add nsw i64 %35, 14848
  %65 = add nsw i64 %35, 15360
  %66 = add nsw i64 %35, 15872
  %67 = getelementptr inbounds float, float* %7, i64 %35
  %68 = load float, float* %67, align 4, !tbaa !134
  %69 = insertelement <32 x float> undef, float %68, i32 0
  %70 = getelementptr inbounds float, float* %7, i64 %36
  %71 = load float, float* %70, align 4, !tbaa !134
  %72 = insertelement <32 x float> %69, float %71, i32 1
  %73 = getelementptr inbounds float, float* %7, i64 %37
  %74 = load float, float* %73, align 4, !tbaa !134
  %75 = insertelement <32 x float> %72, float %74, i32 2
  %76 = getelementptr inbounds float, float* %7, i64 %38
  %77 = load float, float* %76, align 4, !tbaa !134
  %78 = insertelement <32 x float> %75, float %77, i32 3
  %79 = getelementptr inbounds float, float* %7, i64 %39
  %80 = load float, float* %79, align 4, !tbaa !134
  %81 = insertelement <32 x float> %78, float %80, i32 4
  %82 = getelementptr inbounds float, float* %7, i64 %40
  %83 = load float, float* %82, align 4, !tbaa !134
  %84 = insertelement <32 x float> %81, float %83, i32 5
  %85 = getelementptr inbounds float, float* %7, i64 %41
  %86 = load float, float* %85, align 4, !tbaa !134
  %87 = insertelement <32 x float> %84, float %86, i32 6
  %88 = getelementptr inbounds float, float* %7, i64 %42
  %89 = load float, float* %88, align 4, !tbaa !134
  %90 = insertelement <32 x float> %87, float %89, i32 7
  %91 = getelementptr inbounds float, float* %7, i64 %43
  %92 = load float, float* %91, align 4, !tbaa !134
  %93 = insertelement <32 x float> %90, float %92, i32 8
  %94 = getelementptr inbounds float, float* %7, i64 %44
  %95 = load float, float* %94, align 4, !tbaa !134
  %96 = insertelement <32 x float> %93, float %95, i32 9
  %97 = getelementptr inbounds float, float* %7, i64 %45
  %98 = load float, float* %97, align 4, !tbaa !134
  %99 = insertelement <32 x float> %96, float %98, i32 10
  %100 = getelementptr inbounds float, float* %7, i64 %46
  %101 = load float, float* %100, align 4, !tbaa !134
  %102 = insertelement <32 x float> %99, float %101, i32 11
  %103 = getelementptr inbounds float, float* %7, i64 %47
  %104 = load float, float* %103, align 4, !tbaa !134
  %105 = insertelement <32 x float> %102, float %104, i32 12
  %106 = getelementptr inbounds float, float* %7, i64 %48
  %107 = load float, float* %106, align 4, !tbaa !134
  %108 = insertelement <32 x float> %105, float %107, i32 13
  %109 = getelementptr inbounds float, float* %7, i64 %49
  %110 = load float, float* %109, align 4, !tbaa !134
  %111 = insertelement <32 x float> %108, float %110, i32 14
  %112 = getelementptr inbounds float, float* %7, i64 %50
  %113 = load float, float* %112, align 4, !tbaa !134
  %114 = insertelement <32 x float> %111, float %113, i32 15
  %115 = getelementptr inbounds float, float* %7, i64 %51
  %116 = load float, float* %115, align 4, !tbaa !134
  %117 = insertelement <32 x float> %114, float %116, i32 16
  %118 = getelementptr inbounds float, float* %7, i64 %52
  %119 = load float, float* %118, align 4, !tbaa !134
  %120 = insertelement <32 x float> %117, float %119, i32 17
  %121 = getelementptr inbounds float, float* %7, i64 %53
  %122 = load float, float* %121, align 4, !tbaa !134
  %123 = insertelement <32 x float> %120, float %122, i32 18
  %124 = getelementptr inbounds float, float* %7, i64 %54
  %125 = load float, float* %124, align 4, !tbaa !134
  %126 = insertelement <32 x float> %123, float %125, i32 19
  %127 = getelementptr inbounds float, float* %7, i64 %55
  %128 = load float, float* %127, align 4, !tbaa !134
  %129 = insertelement <32 x float> %126, float %128, i32 20
  %130 = getelementptr inbounds float, float* %7, i64 %56
  %131 = load float, float* %130, align 4, !tbaa !134
  %132 = insertelement <32 x float> %129, float %131, i32 21
  %133 = getelementptr inbounds float, float* %7, i64 %57
  %134 = load float, float* %133, align 4, !tbaa !134
  %135 = insertelement <32 x float> %132, float %134, i32 22
  %136 = getelementptr inbounds float, float* %7, i64 %58
  %137 = load float, float* %136, align 4, !tbaa !134
  %138 = insertelement <32 x float> %135, float %137, i32 23
  %139 = getelementptr inbounds float, float* %7, i64 %59
  %140 = load float, float* %139, align 4, !tbaa !134
  %141 = insertelement <32 x float> %138, float %140, i32 24
  %142 = getelementptr inbounds float, float* %7, i64 %60
  %143 = load float, float* %142, align 4, !tbaa !134
  %144 = insertelement <32 x float> %141, float %143, i32 25
  %145 = getelementptr inbounds float, float* %7, i64 %61
  %146 = load float, float* %145, align 4, !tbaa !134
  %147 = insertelement <32 x float> %144, float %146, i32 26
  %148 = getelementptr inbounds float, float* %7, i64 %62
  %149 = load float, float* %148, align 4, !tbaa !134
  %150 = insertelement <32 x float> %147, float %149, i32 27
  %151 = getelementptr inbounds float, float* %7, i64 %63
  %152 = load float, float* %151, align 4, !tbaa !134
  %153 = insertelement <32 x float> %150, float %152, i32 28
  %154 = getelementptr inbounds float, float* %7, i64 %64
  %155 = load float, float* %154, align 4, !tbaa !134
  %156 = insertelement <32 x float> %153, float %155, i32 29
  %157 = getelementptr inbounds float, float* %7, i64 %65
  %158 = load float, float* %157, align 4, !tbaa !134
  %159 = insertelement <32 x float> %156, float %158, i32 30
  %160 = getelementptr inbounds float, float* %7, i64 %66
  %161 = load float, float* %160, align 4, !tbaa !134
  %162 = insertelement <32 x float> %159, float %161, i32 31
  %163 = getelementptr inbounds float, float* %4, i64 %34
  %164 = bitcast float* %163 to <32 x float>*
  store <32 x float> %162, <32 x float>* %164, align 64, !tbaa !137
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 128
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
  %28 = tail call i8* %27(i32 1, i32 %13, i64 4352, i32 2, i32 32)
  %29 = bitcast i8* %28 to float*
  %30 = srem i32 %26, 34
  %31 = mul nsw i32 %30, 4352
  %32 = sdiv i32 %26, 34
  %33 = shl i32 %32, 14
  %34 = sext i32 %33 to i64
  %35 = sext i32 %31 to i64
  %36 = or i64 %34, 4096
  %37 = or i64 %34, 8192
  %38 = or i64 %34, 12288
  br label %for_body2

for_end:                                          ; preds = %for_end12, %entry
  ret i32 0

for_begin10.preheader:                            ; preds = %for_end9.3
  %39 = mul nsw i32 %30, 34
  %40 = mul nsw i32 %32, 36992
  %41 = add nsw i32 %40, %39
  %42 = sext i32 %41 to i64
  br label %for_begin13.preheader

for_body2:                                        ; preds = %for_end9.3, %for_body
  %indvars.iv30 = phi i64 [ 0, %for_body ], [ %indvars.iv.next31, %for_end9.3 ]
  %43 = shl nsw i64 %indvars.iv30, 6
  %44 = getelementptr inbounds float, float* %29, i64 %43
  %45 = bitcast float* %44 to <32 x float>*
  store <32 x float> zeroinitializer, <32 x float>* %45, align 64, !tbaa !140
  %46 = or i64 %43, 32
  %47 = getelementptr inbounds float, float* %29, i64 %46
  %48 = bitcast float* %47 to <32 x float>*
  store <32 x float> zeroinitializer, <32 x float>* %48, align 64, !tbaa !140
  %49 = shl nuw nsw i64 %indvars.iv30, 1
  %50 = add nuw nsw i64 %49, %35
  br label %for_body8

for_body8:                                        ; preds = %for_body8, %for_body2
  %indvars.iv = phi i64 [ 0, %for_body2 ], [ %indvars.iv.next.161, %for_body8 ]
  %51 = phi <32 x float> [ zeroinitializer, %for_body2 ], [ %88, %for_body8 ]
  %52 = phi <32 x float> [ zeroinitializer, %for_body2 ], [ %82, %for_body8 ]
  %53 = mul nuw nsw i64 %indvars.iv, 34
  %54 = add nsw i64 %50, %53
  %55 = getelementptr inbounds float, float* %4, i64 %54
  %56 = load float, float* %55, align 8, !tbaa !131
  %57 = insertelement <32 x float> undef, float %56, i32 0
  %58 = shufflevector <32 x float> %57, <32 x float> undef, <32 x i32> zeroinitializer
  %59 = shl i64 %indvars.iv, 5
  %60 = add nuw nsw i64 %59, %34
  %61 = getelementptr inbounds float, float* %7, i64 %60
  %62 = bitcast float* %61 to <32 x float>*
  %63 = load <32 x float>, <32 x float>* %62, align 64, !tbaa !137
  %64 = tail call <32 x float> @llvm.fmuladd.v32f32(<32 x float> %58, <32 x float> %63, <32 x float> %52)
  %65 = or i64 %54, 1
  %66 = getelementptr inbounds float, float* %4, i64 %65
  %67 = load float, float* %66, align 4, !tbaa !131
  %68 = insertelement <32 x float> undef, float %67, i32 0
  %69 = shufflevector <32 x float> %68, <32 x float> undef, <32 x i32> zeroinitializer
  %70 = tail call <32 x float> @llvm.fmuladd.v32f32(<32 x float> %69, <32 x float> %63, <32 x float> %51)
  %indvars.iv.next = or i64 %indvars.iv, 1
  %71 = mul nuw nsw i64 %indvars.iv.next, 34
  %72 = add nsw i64 %50, %71
  %73 = getelementptr inbounds float, float* %4, i64 %72
  %74 = load float, float* %73, align 8, !tbaa !131
  %75 = insertelement <32 x float> undef, float %74, i32 0
  %76 = shufflevector <32 x float> %75, <32 x float> undef, <32 x i32> zeroinitializer
  %77 = shl i64 %indvars.iv.next, 5
  %78 = add nuw nsw i64 %77, %34
  %79 = getelementptr inbounds float, float* %7, i64 %78
  %80 = bitcast float* %79 to <32 x float>*
  %81 = load <32 x float>, <32 x float>* %80, align 64, !tbaa !137
  %82 = tail call <32 x float> @llvm.fmuladd.v32f32(<32 x float> %76, <32 x float> %81, <32 x float> %64)
  %83 = or i64 %72, 1
  %84 = getelementptr inbounds float, float* %4, i64 %83
  %85 = load float, float* %84, align 4, !tbaa !131
  %86 = insertelement <32 x float> undef, float %85, i32 0
  %87 = shufflevector <32 x float> %86, <32 x float> undef, <32 x i32> zeroinitializer
  %88 = tail call <32 x float> @llvm.fmuladd.v32f32(<32 x float> %87, <32 x float> %81, <32 x float> %70)
  %indvars.iv.next.161 = add nuw nsw i64 %indvars.iv, 2
  %exitcond.162 = icmp eq i64 %indvars.iv.next.161, 128
  br i1 %exitcond.162, label %for_end9, label %for_body8, !prof !49

for_end9:                                         ; preds = %for_body8
  %89 = add nsw i64 %50, 147968
  br label %for_body8.1

for_begin13.preheader:                            ; preds = %for_begin13.preheader, %for_begin10.preheader
  %indvars.iv36 = phi i64 [ 0, %for_begin10.preheader ], [ %indvars.iv.next37, %for_begin13.preheader ]
  %90 = shl nuw nsw i64 %indvars.iv36, 1
  %91 = add nsw i64 %90, %42
  %92 = shl i64 %indvars.iv36, 6
  %93 = add nsw i64 %91, 1156
  %94 = add nsw i64 %91, 2312
  %95 = add nsw i64 %91, 3468
  %96 = add nsw i64 %91, 4624
  %97 = add nsw i64 %91, 5780
  %98 = add nsw i64 %91, 6936
  %99 = add nsw i64 %91, 8092
  %100 = add nsw i64 %91, 9248
  %101 = add nsw i64 %91, 10404
  %102 = add nsw i64 %91, 11560
  %103 = add nsw i64 %91, 12716
  %104 = add nsw i64 %91, 13872
  %105 = add nsw i64 %91, 15028
  %106 = add nsw i64 %91, 16184
  %107 = add nsw i64 %91, 17340
  %108 = add nsw i64 %91, 18496
  %109 = add nsw i64 %91, 19652
  %110 = add nsw i64 %91, 20808
  %111 = add nsw i64 %91, 21964
  %112 = add nsw i64 %91, 23120
  %113 = add nsw i64 %91, 24276
  %114 = add nsw i64 %91, 25432
  %115 = add nsw i64 %91, 26588
  %116 = add nsw i64 %91, 27744
  %117 = add nsw i64 %91, 28900
  %118 = add nsw i64 %91, 30056
  %119 = add nsw i64 %91, 31212
  %120 = add nsw i64 %91, 32368
  %121 = add nsw i64 %91, 33524
  %122 = add nsw i64 %91, 34680
  %123 = add nsw i64 %91, 35836
  %124 = getelementptr inbounds float, float* %29, i64 %92
  %125 = bitcast float* %124 to <32 x float>*
  %126 = load <32 x float>, <32 x float>* %125, align 64, !tbaa !140
  %127 = getelementptr inbounds float, float* %10, i64 %91
  %128 = extractelement <32 x float> %126, i64 0
  store float %128, float* %127, align 4, !tbaa !143
  %129 = getelementptr inbounds float, float* %10, i64 %93
  %130 = extractelement <32 x float> %126, i64 1
  store float %130, float* %129, align 4, !tbaa !143
  %131 = getelementptr inbounds float, float* %10, i64 %94
  %132 = extractelement <32 x float> %126, i64 2
  store float %132, float* %131, align 4, !tbaa !143
  %133 = getelementptr inbounds float, float* %10, i64 %95
  %134 = extractelement <32 x float> %126, i64 3
  store float %134, float* %133, align 4, !tbaa !143
  %135 = getelementptr inbounds float, float* %10, i64 %96
  %136 = extractelement <32 x float> %126, i64 4
  store float %136, float* %135, align 4, !tbaa !143
  %137 = getelementptr inbounds float, float* %10, i64 %97
  %138 = extractelement <32 x float> %126, i64 5
  store float %138, float* %137, align 4, !tbaa !143
  %139 = getelementptr inbounds float, float* %10, i64 %98
  %140 = extractelement <32 x float> %126, i64 6
  store float %140, float* %139, align 4, !tbaa !143
  %141 = getelementptr inbounds float, float* %10, i64 %99
  %142 = extractelement <32 x float> %126, i64 7
  store float %142, float* %141, align 4, !tbaa !143
  %143 = getelementptr inbounds float, float* %10, i64 %100
  %144 = extractelement <32 x float> %126, i64 8
  store float %144, float* %143, align 4, !tbaa !143
  %145 = getelementptr inbounds float, float* %10, i64 %101
  %146 = extractelement <32 x float> %126, i64 9
  store float %146, float* %145, align 4, !tbaa !143
  %147 = getelementptr inbounds float, float* %10, i64 %102
  %148 = extractelement <32 x float> %126, i64 10
  store float %148, float* %147, align 4, !tbaa !143
  %149 = getelementptr inbounds float, float* %10, i64 %103
  %150 = extractelement <32 x float> %126, i64 11
  store float %150, float* %149, align 4, !tbaa !143
  %151 = getelementptr inbounds float, float* %10, i64 %104
  %152 = extractelement <32 x float> %126, i64 12
  store float %152, float* %151, align 4, !tbaa !143
  %153 = getelementptr inbounds float, float* %10, i64 %105
  %154 = extractelement <32 x float> %126, i64 13
  store float %154, float* %153, align 4, !tbaa !143
  %155 = getelementptr inbounds float, float* %10, i64 %106
  %156 = extractelement <32 x float> %126, i64 14
  store float %156, float* %155, align 4, !tbaa !143
  %157 = getelementptr inbounds float, float* %10, i64 %107
  %158 = extractelement <32 x float> %126, i64 15
  store float %158, float* %157, align 4, !tbaa !143
  %159 = getelementptr inbounds float, float* %10, i64 %108
  %160 = extractelement <32 x float> %126, i64 16
  store float %160, float* %159, align 4, !tbaa !143
  %161 = getelementptr inbounds float, float* %10, i64 %109
  %162 = extractelement <32 x float> %126, i64 17
  store float %162, float* %161, align 4, !tbaa !143
  %163 = getelementptr inbounds float, float* %10, i64 %110
  %164 = extractelement <32 x float> %126, i64 18
  store float %164, float* %163, align 4, !tbaa !143
  %165 = getelementptr inbounds float, float* %10, i64 %111
  %166 = extractelement <32 x float> %126, i64 19
  store float %166, float* %165, align 4, !tbaa !143
  %167 = getelementptr inbounds float, float* %10, i64 %112
  %168 = extractelement <32 x float> %126, i64 20
  store float %168, float* %167, align 4, !tbaa !143
  %169 = getelementptr inbounds float, float* %10, i64 %113
  %170 = extractelement <32 x float> %126, i64 21
  store float %170, float* %169, align 4, !tbaa !143
  %171 = getelementptr inbounds float, float* %10, i64 %114
  %172 = extractelement <32 x float> %126, i64 22
  store float %172, float* %171, align 4, !tbaa !143
  %173 = getelementptr inbounds float, float* %10, i64 %115
  %174 = extractelement <32 x float> %126, i64 23
  store float %174, float* %173, align 4, !tbaa !143
  %175 = getelementptr inbounds float, float* %10, i64 %116
  %176 = extractelement <32 x float> %126, i64 24
  store float %176, float* %175, align 4, !tbaa !143
  %177 = getelementptr inbounds float, float* %10, i64 %117
  %178 = extractelement <32 x float> %126, i64 25
  store float %178, float* %177, align 4, !tbaa !143
  %179 = getelementptr inbounds float, float* %10, i64 %118
  %180 = extractelement <32 x float> %126, i64 26
  store float %180, float* %179, align 4, !tbaa !143
  %181 = getelementptr inbounds float, float* %10, i64 %119
  %182 = extractelement <32 x float> %126, i64 27
  store float %182, float* %181, align 4, !tbaa !143
  %183 = getelementptr inbounds float, float* %10, i64 %120
  %184 = extractelement <32 x float> %126, i64 28
  store float %184, float* %183, align 4, !tbaa !143
  %185 = getelementptr inbounds float, float* %10, i64 %121
  %186 = extractelement <32 x float> %126, i64 29
  store float %186, float* %185, align 4, !tbaa !143
  %187 = getelementptr inbounds float, float* %10, i64 %122
  %188 = extractelement <32 x float> %126, i64 30
  store float %188, float* %187, align 4, !tbaa !143
  %189 = getelementptr inbounds float, float* %10, i64 %123
  %190 = extractelement <32 x float> %126, i64 31
  store float %190, float* %189, align 4, !tbaa !143
  %191 = or i64 %91, 1
  %192 = add nsw i64 %191, 1156
  %193 = add nsw i64 %191, 2312
  %194 = add nsw i64 %191, 3468
  %195 = add nsw i64 %191, 4624
  %196 = add nsw i64 %191, 5780
  %197 = add nsw i64 %191, 6936
  %198 = add nsw i64 %191, 8092
  %199 = add nsw i64 %191, 9248
  %200 = add nsw i64 %191, 10404
  %201 = add nsw i64 %191, 11560
  %202 = add nsw i64 %191, 12716
  %203 = add nsw i64 %191, 13872
  %204 = add nsw i64 %191, 15028
  %205 = add nsw i64 %191, 16184
  %206 = add nsw i64 %191, 17340
  %207 = add nsw i64 %191, 18496
  %208 = add nsw i64 %191, 19652
  %209 = add nsw i64 %191, 20808
  %210 = add nsw i64 %191, 21964
  %211 = add nsw i64 %191, 23120
  %212 = add nsw i64 %191, 24276
  %213 = add nsw i64 %191, 25432
  %214 = add nsw i64 %191, 26588
  %215 = add nsw i64 %191, 27744
  %216 = add nsw i64 %191, 28900
  %217 = add nsw i64 %191, 30056
  %218 = add nsw i64 %191, 31212
  %219 = add nsw i64 %191, 32368
  %220 = add nsw i64 %191, 33524
  %221 = add nsw i64 %191, 34680
  %222 = add nsw i64 %191, 35836
  %223 = or i64 %92, 32
  %224 = getelementptr inbounds float, float* %29, i64 %223
  %225 = bitcast float* %224 to <32 x float>*
  %226 = load <32 x float>, <32 x float>* %225, align 64, !tbaa !140
  %227 = getelementptr inbounds float, float* %10, i64 %191
  %228 = extractelement <32 x float> %226, i64 0
  store float %228, float* %227, align 4, !tbaa !143
  %229 = getelementptr inbounds float, float* %10, i64 %192
  %230 = extractelement <32 x float> %226, i64 1
  store float %230, float* %229, align 4, !tbaa !143
  %231 = getelementptr inbounds float, float* %10, i64 %193
  %232 = extractelement <32 x float> %226, i64 2
  store float %232, float* %231, align 4, !tbaa !143
  %233 = getelementptr inbounds float, float* %10, i64 %194
  %234 = extractelement <32 x float> %226, i64 3
  store float %234, float* %233, align 4, !tbaa !143
  %235 = getelementptr inbounds float, float* %10, i64 %195
  %236 = extractelement <32 x float> %226, i64 4
  store float %236, float* %235, align 4, !tbaa !143
  %237 = getelementptr inbounds float, float* %10, i64 %196
  %238 = extractelement <32 x float> %226, i64 5
  store float %238, float* %237, align 4, !tbaa !143
  %239 = getelementptr inbounds float, float* %10, i64 %197
  %240 = extractelement <32 x float> %226, i64 6
  store float %240, float* %239, align 4, !tbaa !143
  %241 = getelementptr inbounds float, float* %10, i64 %198
  %242 = extractelement <32 x float> %226, i64 7
  store float %242, float* %241, align 4, !tbaa !143
  %243 = getelementptr inbounds float, float* %10, i64 %199
  %244 = extractelement <32 x float> %226, i64 8
  store float %244, float* %243, align 4, !tbaa !143
  %245 = getelementptr inbounds float, float* %10, i64 %200
  %246 = extractelement <32 x float> %226, i64 9
  store float %246, float* %245, align 4, !tbaa !143
  %247 = getelementptr inbounds float, float* %10, i64 %201
  %248 = extractelement <32 x float> %226, i64 10
  store float %248, float* %247, align 4, !tbaa !143
  %249 = getelementptr inbounds float, float* %10, i64 %202
  %250 = extractelement <32 x float> %226, i64 11
  store float %250, float* %249, align 4, !tbaa !143
  %251 = getelementptr inbounds float, float* %10, i64 %203
  %252 = extractelement <32 x float> %226, i64 12
  store float %252, float* %251, align 4, !tbaa !143
  %253 = getelementptr inbounds float, float* %10, i64 %204
  %254 = extractelement <32 x float> %226, i64 13
  store float %254, float* %253, align 4, !tbaa !143
  %255 = getelementptr inbounds float, float* %10, i64 %205
  %256 = extractelement <32 x float> %226, i64 14
  store float %256, float* %255, align 4, !tbaa !143
  %257 = getelementptr inbounds float, float* %10, i64 %206
  %258 = extractelement <32 x float> %226, i64 15
  store float %258, float* %257, align 4, !tbaa !143
  %259 = getelementptr inbounds float, float* %10, i64 %207
  %260 = extractelement <32 x float> %226, i64 16
  store float %260, float* %259, align 4, !tbaa !143
  %261 = getelementptr inbounds float, float* %10, i64 %208
  %262 = extractelement <32 x float> %226, i64 17
  store float %262, float* %261, align 4, !tbaa !143
  %263 = getelementptr inbounds float, float* %10, i64 %209
  %264 = extractelement <32 x float> %226, i64 18
  store float %264, float* %263, align 4, !tbaa !143
  %265 = getelementptr inbounds float, float* %10, i64 %210
  %266 = extractelement <32 x float> %226, i64 19
  store float %266, float* %265, align 4, !tbaa !143
  %267 = getelementptr inbounds float, float* %10, i64 %211
  %268 = extractelement <32 x float> %226, i64 20
  store float %268, float* %267, align 4, !tbaa !143
  %269 = getelementptr inbounds float, float* %10, i64 %212
  %270 = extractelement <32 x float> %226, i64 21
  store float %270, float* %269, align 4, !tbaa !143
  %271 = getelementptr inbounds float, float* %10, i64 %213
  %272 = extractelement <32 x float> %226, i64 22
  store float %272, float* %271, align 4, !tbaa !143
  %273 = getelementptr inbounds float, float* %10, i64 %214
  %274 = extractelement <32 x float> %226, i64 23
  store float %274, float* %273, align 4, !tbaa !143
  %275 = getelementptr inbounds float, float* %10, i64 %215
  %276 = extractelement <32 x float> %226, i64 24
  store float %276, float* %275, align 4, !tbaa !143
  %277 = getelementptr inbounds float, float* %10, i64 %216
  %278 = extractelement <32 x float> %226, i64 25
  store float %278, float* %277, align 4, !tbaa !143
  %279 = getelementptr inbounds float, float* %10, i64 %217
  %280 = extractelement <32 x float> %226, i64 26
  store float %280, float* %279, align 4, !tbaa !143
  %281 = getelementptr inbounds float, float* %10, i64 %218
  %282 = extractelement <32 x float> %226, i64 27
  store float %282, float* %281, align 4, !tbaa !143
  %283 = getelementptr inbounds float, float* %10, i64 %219
  %284 = extractelement <32 x float> %226, i64 28
  store float %284, float* %283, align 4, !tbaa !143
  %285 = getelementptr inbounds float, float* %10, i64 %220
  %286 = extractelement <32 x float> %226, i64 29
  store float %286, float* %285, align 4, !tbaa !143
  %287 = getelementptr inbounds float, float* %10, i64 %221
  %288 = extractelement <32 x float> %226, i64 30
  store float %288, float* %287, align 4, !tbaa !143
  %289 = getelementptr inbounds float, float* %10, i64 %222
  %290 = extractelement <32 x float> %226, i64 31
  store float %290, float* %289, align 4, !tbaa !143
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1
  %exitcond38 = icmp eq i64 %indvars.iv.next37, 17
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
  %297 = mul nuw nsw i64 %indvars.iv.1, 34
  %298 = add nsw i64 %89, %297
  %299 = getelementptr inbounds float, float* %4, i64 %298
  %300 = load float, float* %299, align 8, !tbaa !131
  %301 = insertelement <32 x float> undef, float %300, i32 0
  %302 = shufflevector <32 x float> %301, <32 x float> undef, <32 x i32> zeroinitializer
  %303 = shl i64 %indvars.iv.1, 5
  %304 = add nuw nsw i64 %36, %303
  %305 = getelementptr inbounds float, float* %7, i64 %304
  %306 = bitcast float* %305 to <32 x float>*
  %307 = load <32 x float>, <32 x float>* %306, align 64, !tbaa !137
  %308 = tail call <32 x float> @llvm.fmuladd.v32f32(<32 x float> %302, <32 x float> %307, <32 x float> %296)
  %309 = or i64 %298, 1
  %310 = getelementptr inbounds float, float* %4, i64 %309
  %311 = load float, float* %310, align 4, !tbaa !131
  %312 = insertelement <32 x float> undef, float %311, i32 0
  %313 = shufflevector <32 x float> %312, <32 x float> undef, <32 x i32> zeroinitializer
  %314 = tail call <32 x float> @llvm.fmuladd.v32f32(<32 x float> %313, <32 x float> %307, <32 x float> %295)
  %indvars.iv.next.1 = or i64 %indvars.iv.1, 1
  %315 = mul nuw nsw i64 %indvars.iv.next.1, 34
  %316 = add nsw i64 %89, %315
  %317 = getelementptr inbounds float, float* %4, i64 %316
  %318 = load float, float* %317, align 8, !tbaa !131
  %319 = insertelement <32 x float> undef, float %318, i32 0
  %320 = shufflevector <32 x float> %319, <32 x float> undef, <32 x i32> zeroinitializer
  %321 = shl i64 %indvars.iv.next.1, 5
  %322 = add nuw nsw i64 %36, %321
  %323 = getelementptr inbounds float, float* %7, i64 %322
  %324 = bitcast float* %323 to <32 x float>*
  %325 = load <32 x float>, <32 x float>* %324, align 64, !tbaa !137
  %326 = tail call <32 x float> @llvm.fmuladd.v32f32(<32 x float> %320, <32 x float> %325, <32 x float> %308)
  %327 = or i64 %316, 1
  %328 = getelementptr inbounds float, float* %4, i64 %327
  %329 = load float, float* %328, align 4, !tbaa !131
  %330 = insertelement <32 x float> undef, float %329, i32 0
  %331 = shufflevector <32 x float> %330, <32 x float> undef, <32 x i32> zeroinitializer
  %332 = tail call <32 x float> @llvm.fmuladd.v32f32(<32 x float> %331, <32 x float> %325, <32 x float> %314)
  %indvars.iv.next.1.1 = add nuw nsw i64 %indvars.iv.1, 2
  %exitcond.1.1 = icmp eq i64 %indvars.iv.next.1.1, 128
  br i1 %exitcond.1.1, label %for_end9.1, label %for_body8.1, !prof !49

for_end9.1:                                       ; preds = %for_body8.1
  %333 = add nsw i64 %50, 295936
  br label %for_body8.2

for_body8.2:                                      ; preds = %for_body8.2, %for_end9.1
  %indvars.iv.2 = phi i64 [ 0, %for_end9.1 ], [ %indvars.iv.next.2.1, %for_body8.2 ]
  %334 = phi <32 x float> [ %332, %for_end9.1 ], [ %371, %for_body8.2 ]
  %335 = phi <32 x float> [ %326, %for_end9.1 ], [ %365, %for_body8.2 ]
  %336 = mul nuw nsw i64 %indvars.iv.2, 34
  %337 = add nuw nsw i64 %333, %336
  %338 = getelementptr inbounds float, float* %4, i64 %337
  %339 = load float, float* %338, align 8, !tbaa !131
  %340 = insertelement <32 x float> undef, float %339, i32 0
  %341 = shufflevector <32 x float> %340, <32 x float> undef, <32 x i32> zeroinitializer
  %342 = shl i64 %indvars.iv.2, 5
  %343 = add nuw nsw i64 %37, %342
  %344 = getelementptr inbounds float, float* %7, i64 %343
  %345 = bitcast float* %344 to <32 x float>*
  %346 = load <32 x float>, <32 x float>* %345, align 64, !tbaa !137
  %347 = tail call <32 x float> @llvm.fmuladd.v32f32(<32 x float> %341, <32 x float> %346, <32 x float> %335)
  %348 = or i64 %337, 1
  %349 = getelementptr inbounds float, float* %4, i64 %348
  %350 = load float, float* %349, align 4, !tbaa !131
  %351 = insertelement <32 x float> undef, float %350, i32 0
  %352 = shufflevector <32 x float> %351, <32 x float> undef, <32 x i32> zeroinitializer
  %353 = tail call <32 x float> @llvm.fmuladd.v32f32(<32 x float> %352, <32 x float> %346, <32 x float> %334)
  %indvars.iv.next.2 = or i64 %indvars.iv.2, 1
  %354 = mul nuw nsw i64 %indvars.iv.next.2, 34
  %355 = add nuw nsw i64 %333, %354
  %356 = getelementptr inbounds float, float* %4, i64 %355
  %357 = load float, float* %356, align 8, !tbaa !131
  %358 = insertelement <32 x float> undef, float %357, i32 0
  %359 = shufflevector <32 x float> %358, <32 x float> undef, <32 x i32> zeroinitializer
  %360 = shl i64 %indvars.iv.next.2, 5
  %361 = add nuw nsw i64 %37, %360
  %362 = getelementptr inbounds float, float* %7, i64 %361
  %363 = bitcast float* %362 to <32 x float>*
  %364 = load <32 x float>, <32 x float>* %363, align 64, !tbaa !137
  %365 = tail call <32 x float> @llvm.fmuladd.v32f32(<32 x float> %359, <32 x float> %364, <32 x float> %347)
  %366 = or i64 %355, 1
  %367 = getelementptr inbounds float, float* %4, i64 %366
  %368 = load float, float* %367, align 4, !tbaa !131
  %369 = insertelement <32 x float> undef, float %368, i32 0
  %370 = shufflevector <32 x float> %369, <32 x float> undef, <32 x i32> zeroinitializer
  %371 = tail call <32 x float> @llvm.fmuladd.v32f32(<32 x float> %370, <32 x float> %364, <32 x float> %353)
  %indvars.iv.next.2.1 = add nuw nsw i64 %indvars.iv.2, 2
  %exitcond.2.1 = icmp eq i64 %indvars.iv.next.2.1, 128
  br i1 %exitcond.2.1, label %for_end9.2, label %for_body8.2, !prof !49

for_end9.2:                                       ; preds = %for_body8.2
  %372 = add nsw i64 %50, 443904
  br label %for_body8.3

for_body8.3:                                      ; preds = %for_body8.3, %for_end9.2
  %indvars.iv.3 = phi i64 [ 0, %for_end9.2 ], [ %indvars.iv.next.3.1, %for_body8.3 ]
  %373 = phi <32 x float> [ %371, %for_end9.2 ], [ %410, %for_body8.3 ]
  %374 = phi <32 x float> [ %365, %for_end9.2 ], [ %404, %for_body8.3 ]
  %375 = mul nuw nsw i64 %indvars.iv.3, 34
  %376 = add nuw nsw i64 %372, %375
  %377 = getelementptr inbounds float, float* %4, i64 %376
  %378 = load float, float* %377, align 8, !tbaa !131
  %379 = insertelement <32 x float> undef, float %378, i32 0
  %380 = shufflevector <32 x float> %379, <32 x float> undef, <32 x i32> zeroinitializer
  %381 = shl i64 %indvars.iv.3, 5
  %382 = add nuw nsw i64 %38, %381
  %383 = getelementptr inbounds float, float* %7, i64 %382
  %384 = bitcast float* %383 to <32 x float>*
  %385 = load <32 x float>, <32 x float>* %384, align 64, !tbaa !137
  %386 = tail call <32 x float> @llvm.fmuladd.v32f32(<32 x float> %380, <32 x float> %385, <32 x float> %374)
  %387 = or i64 %376, 1
  %388 = getelementptr inbounds float, float* %4, i64 %387
  %389 = load float, float* %388, align 4, !tbaa !131
  %390 = insertelement <32 x float> undef, float %389, i32 0
  %391 = shufflevector <32 x float> %390, <32 x float> undef, <32 x i32> zeroinitializer
  %392 = tail call <32 x float> @llvm.fmuladd.v32f32(<32 x float> %391, <32 x float> %385, <32 x float> %373)
  %indvars.iv.next.3 = or i64 %indvars.iv.3, 1
  %393 = mul nuw nsw i64 %indvars.iv.next.3, 34
  %394 = add nuw nsw i64 %372, %393
  %395 = getelementptr inbounds float, float* %4, i64 %394
  %396 = load float, float* %395, align 8, !tbaa !131
  %397 = insertelement <32 x float> undef, float %396, i32 0
  %398 = shufflevector <32 x float> %397, <32 x float> undef, <32 x i32> zeroinitializer
  %399 = shl i64 %indvars.iv.next.3, 5
  %400 = add nuw nsw i64 %38, %399
  %401 = getelementptr inbounds float, float* %7, i64 %400
  %402 = bitcast float* %401 to <32 x float>*
  %403 = load <32 x float>, <32 x float>* %402, align 64, !tbaa !137
  %404 = tail call <32 x float> @llvm.fmuladd.v32f32(<32 x float> %398, <32 x float> %403, <32 x float> %386)
  %405 = or i64 %394, 1
  %406 = getelementptr inbounds float, float* %4, i64 %405
  %407 = load float, float* %406, align 4, !tbaa !131
  %408 = insertelement <32 x float> undef, float %407, i32 0
  %409 = shufflevector <32 x float> %408, <32 x float> undef, <32 x i32> zeroinitializer
  %410 = tail call <32 x float> @llvm.fmuladd.v32f32(<32 x float> %409, <32 x float> %403, <32 x float> %392)
  %indvars.iv.next.3.1 = add nuw nsw i64 %indvars.iv.3, 2
  %exitcond.3.1 = icmp eq i64 %indvars.iv.next.3.1, 128
  br i1 %exitcond.3.1, label %for_end9.3, label %for_body8.3, !prof !49

for_end9.3:                                       ; preds = %for_body8.3
  store <32 x float> %404, <32 x float>* %45, align 64, !tbaa !140
  store <32 x float> %410, <32 x float>* %48, align 64, !tbaa !140
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1
  %exitcond32 = icmp eq i64 %indvars.iv.next31, 17
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
!10 = !{!"0x3197230.w1.b0", !11, i64 0}
!11 = !{!"0x3197230.w2.b0", !12, i64 0}
!12 = !{!"0x3197230.w4.b0", !13, i64 0}
!13 = !{!"0x3197230.w8.b0", !14, i64 0}
!14 = !{!"0x3197230.w16.b0", !15, i64 0}
!15 = !{!"0x3197230.w32.b0", !16, i64 0}
!16 = !{!"0x3197230.w64.b0", !17, i64 0}
!17 = !{!"0x3197230.w128.b0", !18, i64 0}
!18 = !{!"0x3197230.w256.b0", !19, i64 0}
!19 = !{!"0x3197230.w512.b0", !20, i64 0}
!20 = !{!"0x3197230.w1024.b0", !21, i64 0}
!21 = !{!"int32", !22, i64 0}
!22 = !{!"0x3197230", !8, i64 0}
!23 = !{!24, !24, i64 0}
!24 = !{!"0x3197230.w1.b2", !25, i64 0}
!25 = !{!"0x3197230.w2.b2", !12, i64 0}
!26 = !{!27, !27, i64 0}
!27 = !{!"0x3197230.w1.b1", !11, i64 0}
!28 = !{!29, !29, i64 0}
!29 = !{!"0x3068b30.w1.b0", !30, i64 0}
!30 = !{!"0x3068b30.w2.b0", !31, i64 0}
!31 = !{!"0x3068b30.w4.b0", !32, i64 0}
!32 = !{!"0x3068b30.w8.b0", !33, i64 0}
!33 = !{!"0x3068b30.w16.b0", !34, i64 0}
!34 = !{!"0x3068b30.w32.b0", !35, i64 0}
!35 = !{!"0x3068b30.w64.b0", !36, i64 0}
!36 = !{!"0x3068b30.w128.b0", !37, i64 0}
!37 = !{!"0x3068b30.w256.b0", !38, i64 0}
!38 = !{!"0x3068b30.w512.b0", !39, i64 0}
!39 = !{!"0x3068b30.w1024.b0", !40, i64 0}
!40 = !{!"int64", !41, i64 0}
!41 = !{!"0x3068b30", !8, i64 0}
!42 = !{!43, !43, i64 0}
!43 = !{!"0x3068b30.w1.b1", !30, i64 0}
!44 = !{!45, !45, i64 0}
!45 = !{!"0x3068b30.w1.b2", !46, i64 0}
!46 = !{!"0x3068b30.w2.b2", !31, i64 0}
!47 = !{!48, !48, i64 0}
!48 = !{!"0x3068b30.w1.b3", !46, i64 0}
!49 = !{!"branch_weights", i32 1, i32 1048576}
!50 = !{!51, !51, i64 0}
!51 = !{!"0x31984f0.w4.b0", !52, i64 0}
!52 = !{!"0x31984f0.w8.b0", !53, i64 0}
!53 = !{!"0x31984f0.w16.b0", !54, i64 0}
!54 = !{!"0x31984f0.w32.b0", !55, i64 0}
!55 = !{!"0x31984f0.w64.b0", !56, i64 0}
!56 = !{!"0x31984f0.w128.b0", !57, i64 0}
!57 = !{!"0x31984f0.w256.b0", !58, i64 0}
!58 = !{!"0x31984f0.w512.b0", !59, i64 0}
!59 = !{!"0x31984f0.w1024.b0", !60, i64 0}
!60 = !{!"int64", !61, i64 0}
!61 = !{!"0x31984f0", !8, i64 0}
!62 = !{!63, !63, i64 0}
!63 = !{!"0x316f230.w1.b0", !64, i64 0}
!64 = !{!"0x316f230.w2.b0", !65, i64 0}
!65 = !{!"0x316f230.w4.b0", !66, i64 0}
!66 = !{!"0x316f230.w8.b0", !67, i64 0}
!67 = !{!"0x316f230.w16.b0", !68, i64 0}
!68 = !{!"0x316f230.w32.b0", !69, i64 0}
!69 = !{!"0x316f230.w64.b0", !70, i64 0}
!70 = !{!"0x316f230.w128.b0", !71, i64 0}
!71 = !{!"0x316f230.w256.b0", !72, i64 0}
!72 = !{!"0x316f230.w512.b0", !73, i64 0}
!73 = !{!"0x316f230.w1024.b0", !74, i64 0}
!74 = !{!"int64", !75, i64 0}
!75 = !{!"0x316f230", !8, i64 0}
!76 = !{!77, !77, i64 0}
!77 = !{!"0x316f230.w1.b1", !64, i64 0}
!78 = !{!79, !79, i64 0}
!79 = !{!"0x316f230.w1.b2", !80, i64 0}
!80 = !{!"0x316f230.w2.b2", !65, i64 0}
!81 = !{!82, !82, i64 0}
!82 = !{!"0x316f230.w1.b3", !80, i64 0}
!83 = !{!84, !84, i64 0}
!84 = !{!"0x3058d80.w4.b0", !85, i64 0}
!85 = !{!"0x3058d80.w8.b0", !86, i64 0}
!86 = !{!"0x3058d80.w16.b0", !87, i64 0}
!87 = !{!"0x3058d80.w32.b0", !88, i64 0}
!88 = !{!"0x3058d80.w64.b0", !89, i64 0}
!89 = !{!"0x3058d80.w128.b0", !90, i64 0}
!90 = !{!"0x3058d80.w256.b0", !91, i64 0}
!91 = !{!"0x3058d80.w512.b0", !92, i64 0}
!92 = !{!"0x3058d80.w1024.b0", !93, i64 0}
!93 = !{!"int64", !94, i64 0}
!94 = !{!"0x3058d80", !8, i64 0}
!95 = !{!96, !96, i64 0}
!96 = !{!"0x3198ba0.w1.b0", !97, i64 0}
!97 = !{!"0x3198ba0.w2.b0", !98, i64 0}
!98 = !{!"0x3198ba0.w4.b0", !99, i64 0}
!99 = !{!"0x3198ba0.w8.b0", !100, i64 0}
!100 = !{!"0x3198ba0.w16.b0", !101, i64 0}
!101 = !{!"0x3198ba0.w32.b0", !102, i64 0}
!102 = !{!"0x3198ba0.w64.b0", !103, i64 0}
!103 = !{!"0x3198ba0.w128.b0", !104, i64 0}
!104 = !{!"0x3198ba0.w256.b0", !105, i64 0}
!105 = !{!"0x3198ba0.w512.b0", !106, i64 0}
!106 = !{!"0x3198ba0.w1024.b0", !107, i64 0}
!107 = !{!"int64", !108, i64 0}
!108 = !{!"0x3198ba0", !8, i64 0}
!109 = !{!110, !110, i64 0}
!110 = !{!"0x3198ba0.w1.b1", !97, i64 0}
!111 = !{!112, !112, i64 0}
!112 = !{!"0x3198ba0.w1.b2", !113, i64 0}
!113 = !{!"0x3198ba0.w2.b2", !98, i64 0}
!114 = !{!115, !115, i64 0}
!115 = !{!"0x3198ba0.w1.b3", !113, i64 0}
!116 = !{!117, !117, i64 0}
!117 = !{!"0x3198110.w4.b0", !118, i64 0}
!118 = !{!"0x3198110.w8.b0", !119, i64 0}
!119 = !{!"0x3198110.w16.b0", !120, i64 0}
!120 = !{!"0x3198110.w32.b0", !121, i64 0}
!121 = !{!"0x3198110.w64.b0", !122, i64 0}
!122 = !{!"0x3198110.w128.b0", !123, i64 0}
!123 = !{!"0x3198110.w256.b0", !124, i64 0}
!124 = !{!"0x3198110.w512.b0", !125, i64 0}
!125 = !{!"0x3198110.w1024.b0", !126, i64 0}
!126 = !{!"int64", !127, i64 0}
!127 = !{!"0x3198110", !8, i64 0}
!128 = !{!129, !129, i64 0}
!129 = !{!"float32", !130, i64 0}
!130 = !{!"0x31abc30", !8, i64 0}
!131 = !{!132, !132, i64 0}
!132 = !{!"float32", !133, i64 0}
!133 = !{!"0x31afdc0", !8, i64 0}
!134 = !{!135, !135, i64 0}
!135 = !{!"float32", !136, i64 0}
!136 = !{!"0x31b1ed0", !8, i64 0}
!137 = !{!138, !138, i64 0}
!138 = !{!"float32", !139, i64 0}
!139 = !{!"0x31989a0", !8, i64 0}
!140 = !{!141, !141, i64 0}
!141 = !{!"float32", !142, i64 0}
!142 = !{!"0x31981e0", !8, i64 0}
!143 = !{!144, !144, i64 0}
!144 = !{!"float32", !145, i64 0}
!145 = !{!"0x3196030", !8, i64 0}
