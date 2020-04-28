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
@.str.9 = private constant [96 x i8] c"Assert fail: (36 == int32(arg0.shape[2])), Argument arg0.shape[2] has an unsatisfied constraint\00", align 1
@.str.10 = private constant [96 x i8] c"Assert fail: (36 == int32(arg0.shape[3])), Argument arg0.shape[3] has an unsatisfied constraint\00", align 1
@.str.11 = private constant [201 x i8] c"Assert fail: ((((1 == int32(arg0.strides[3])) && (36 == int32(arg0.strides[2]))) && (1296 == int32(arg0.strides[1]))) && (331776 == int32(arg0.strides[0]))), arg0.strides: expected to be compact array\00", align 1
@.str.12 = private constant [112 x i8] c"Assert fail: ((uint64)0 == tvm_struct_get(arg0, 0, 8)), Argument arg0.byte_offset has an unsatisfied constraint\00", align 1
@.str.13 = private constant [81 x i8] c"Assert fail: (4 == tvm_struct_get(arg1, 0, 4)), arg1.ndim is expected to equal 4\00", align 1
@.str.14 = private constant [186 x i8] c"Assert fail: (((tvm_struct_get(arg1, 0, 5) == (uint8)2) && (tvm_struct_get(arg1, 0, 6) == (uint8)32)) && (tvm_struct_get(arg1, 0, 7) == (uint16)1)), arg1.dtype is expected to be float32\00", align 1
@.str.15 = private constant [97 x i8] c"Assert fail: (512 == int32(arg1.shape[0])), Argument arg1.shape[0] has an unsatisfied constraint\00", align 1
@.str.16 = private constant [97 x i8] c"Assert fail: (256 == int32(arg1.shape[1])), Argument arg1.shape[1] has an unsatisfied constraint\00", align 1
@.str.17 = private constant [95 x i8] c"Assert fail: (3 == int32(arg1.shape[2])), Argument arg1.shape[2] has an unsatisfied constraint\00", align 1
@.str.18 = private constant [95 x i8] c"Assert fail: (3 == int32(arg1.shape[3])), Argument arg1.shape[3] has an unsatisfied constraint\00", align 1
@.str.19 = private constant [195 x i8] c"Assert fail: ((((1 == int32(arg1.strides[3])) && (3 == int32(arg1.strides[2]))) && (9 == int32(arg1.strides[1]))) && (2304 == int32(arg1.strides[0]))), arg1.strides: expected to be compact array\00", align 1
@.str.20 = private constant [112 x i8] c"Assert fail: ((uint64)0 == tvm_struct_get(arg1, 0, 8)), Argument arg1.byte_offset has an unsatisfied constraint\00", align 1
@.str.21 = private constant [105 x i8] c"Assert fail: (1 == tvm_struct_get(arg1, 0, 10)), Argument arg1.device_type has an unsatisfied constraint\00", align 1
@.str.22 = private constant [107 x i8] c"Assert fail: (dev_id == tvm_struct_get(arg1, 0, 9)), Argument arg1.device_id has an unsatisfied constraint\00", align 1
@.str.23 = private constant [81 x i8] c"Assert fail: (4 == tvm_struct_get(arg2, 0, 4)), arg2.ndim is expected to equal 4\00", align 1
@.str.24 = private constant [186 x i8] c"Assert fail: (((tvm_struct_get(arg2, 0, 5) == (uint8)2) && (tvm_struct_get(arg2, 0, 6) == (uint8)32)) && (tvm_struct_get(arg2, 0, 7) == (uint16)1)), arg2.dtype is expected to be float32\00", align 1
@.str.25 = private constant [95 x i8] c"Assert fail: (1 == int32(arg2.shape[0])), Argument arg2.shape[0] has an unsatisfied constraint\00", align 1
@.str.26 = private constant [97 x i8] c"Assert fail: (512 == int32(arg2.shape[1])), Argument arg2.shape[1] has an unsatisfied constraint\00", align 1
@.str.27 = private constant [96 x i8] c"Assert fail: (34 == int32(arg2.shape[2])), Argument arg2.shape[2] has an unsatisfied constraint\00", align 1
@.str.28 = private constant [96 x i8] c"Assert fail: (34 == int32(arg2.shape[3])), Argument arg2.shape[3] has an unsatisfied constraint\00", align 1
@.str.29 = private constant [201 x i8] c"Assert fail: ((((1 == int32(arg2.strides[3])) && (34 == int32(arg2.strides[2]))) && (1156 == int32(arg2.strides[1]))) && (591872 == int32(arg2.strides[0]))), arg2.strides: expected to be compact array\00", align 1
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
  %76 = icmp eq i32 %75, 36
  br i1 %76, label %assert_end18, label %assert_fail17, !prof !5

assert_fail17:                                    ; preds = %assert_end16
  %77 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %77(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.9, i64 0, i64 0))
  ret i32 -1

assert_end18:                                     ; preds = %assert_end16
  %78 = getelementptr inbounds i64, i64* %21, i64 3
  %79 = load i64, i64* %78, align 8, !tbaa !47
  %80 = trunc i64 %79 to i32
  %81 = icmp eq i32 %80, 36
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
  %87 = icmp eq <4 x i32> %86, <i32 331776, i32 1296, i32 36, i32 1>
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
  %133 = icmp eq <4 x i32> %132, <i32 2304, i32 9, i32 3, i32 1>
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
  %187 = icmp eq <4 x i32> %186, <i32 591872, i32 1156, i32 34, i32 1>
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
  %5 = tail call i8* %4(i32 1, i32 %3, i64 1327104, i32 2, i32 32)
  %6 = load i8* (i32, i32, i64, i32, i32)*, i8* (i32, i32, i64, i32, i32)** @__TVMBackendAllocWorkspace, align 8, !tbaa !6
  %7 = tail call i8* %6(i32 1, i32 %3, i64 4718592, i32 2, i32 32)
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
  %10 = add nsw i32 %9, 143
  %11 = sdiv i32 %10, %9
  %12 = add nsw i32 %0, 1
  %13 = mul nsw i32 %11, %12
  %14 = icmp slt i32 %13, 144
  %15 = select i1 %14, i32 %13, i32 144
  %16 = mul nsw i32 %11, %0
  %17 = icmp slt i32 %16, 144
  %18 = select i1 %17, i32 %16, i32 144
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
  %24 = mul nsw i64 %indvars.iv7, 2304
  %25 = trunc i64 %indvars.iv7 to i32
  %26 = srem i32 %25, 36
  %27 = mul nsw i32 %26, 36
  %28 = sdiv i32 %25, 36
  %29 = mul nsw i32 %28, 82944
  %30 = add i32 %27, %29
  br label %for_begin4.preheader

for_end:                                          ; preds = %for_end3, %entry
  ret i32 0

for_begin4.preheader:                             ; preds = %for_begin4.preheader, %for_begin1.preheader
  %indvars.iv = phi i64 [ 0, %for_begin1.preheader ], [ %indvars.iv.next, %for_begin4.preheader ]
  %31 = mul nuw nsw i64 %indvars.iv, 36
  %32 = add nsw i64 %31, %24
  %33 = trunc i64 %indvars.iv to i32
  %34 = mul i32 %33, 1296
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
  %50 = or i64 %32, 2
  %51 = or i32 %35, 2
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds float, float* %7, i64 %52
  %54 = bitcast float* %53 to i32*
  %55 = load i32, i32* %54, align 4, !tbaa !128
  %56 = getelementptr inbounds float, float* %4, i64 %50
  %57 = bitcast float* %56 to i32*
  store i32 %55, i32* %57, align 4, !tbaa !131
  %58 = or i64 %32, 3
  %59 = or i32 %35, 3
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
  %306 = add nsw i64 %32, 34
  %307 = add i32 %35, 34
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds float, float* %7, i64 %308
  %310 = bitcast float* %309 to i32*
  %311 = load i32, i32* %310, align 4, !tbaa !128
  %312 = getelementptr inbounds float, float* %4, i64 %306
  %313 = bitcast float* %312 to i32*
  store i32 %311, i32* %313, align 4, !tbaa !131
  %314 = add nsw i64 %32, 35
  %315 = add i32 %35, 35
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds float, float* %7, i64 %316
  %318 = bitcast float* %317 to i32*
  %319 = load i32, i32* %318, align 4, !tbaa !128
  %320 = getelementptr inbounds float, float* %4, i64 %314
  %321 = bitcast float* %320 to i32*
  store i32 %319, i32* %321, align 4, !tbaa !131
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 64
  br i1 %exitcond, label %for_end3, label %for_begin4.preheader, !prof !49

for_end3:                                         ; preds = %for_begin4.preheader
  %indvars.iv.next8 = add nsw i64 %indvars.iv7, 1
  %322 = icmp slt i64 %indvars.iv.next8, %23
  br i1 %322, label %for_begin1.preheader, label %for_end, !prof !5
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
  %22 = mul nsw i32 %21, 1536
  %23 = sdiv i32 %20, 3
  %24 = mul nsw i32 %23, 18432
  %25 = add i32 %22, %24
  %26 = mul nsw i32 %21, 3
  %27 = add i32 %26, %24
  br label %for_begin4.preheader

for_end:                                          ; preds = %for_end3, %entry
  ret i32 0

for_begin4.preheader:                             ; preds = %for_end9.2, %for_begin1.preheader
  %28 = phi i32 [ 0, %for_begin1.preheader ], [ %180, %for_end9.2 ]
  %29 = mul nuw nsw i32 %28, 4608
  %30 = add i32 %25, %29
  %31 = mul nuw nsw i32 %28, 576
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
  %40 = add nsw i32 %39, 2304
  %41 = add nsw i32 %39, 4608
  %42 = add nsw i32 %39, 6912
  %43 = add nsw i32 %39, 9216
  %44 = add nsw i32 %39, 11520
  %45 = add nsw i32 %39, 13824
  %46 = add nsw i32 %39, 16128
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
  %exitcond = icmp eq i64 %indvars.iv.next, 64
  br i1 %exitcond, label %for_end9, label %for_body8, !prof !49

for_end9:                                         ; preds = %for_body8
  %82 = add i32 %30, 512
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
  %89 = add nsw i32 %88, 2304
  %90 = add nsw i32 %88, 4608
  %91 = add nsw i32 %88, 6912
  %92 = add nsw i32 %88, 9216
  %93 = add nsw i32 %88, 11520
  %94 = add nsw i32 %88, 13824
  %95 = add nsw i32 %88, 16128
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
  %exitcond.1 = icmp eq i64 %indvars.iv.next.1, 64
  br i1 %exitcond.1, label %for_end9.1, label %for_body8.1, !prof !49

for_end9.1:                                       ; preds = %for_body8.1
  %131 = add i32 %30, 1024
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
  %138 = add nsw i32 %137, 2304
  %139 = add nsw i32 %137, 4608
  %140 = add nsw i32 %137, 6912
  %141 = add nsw i32 %137, 9216
  %142 = add nsw i32 %137, 11520
  %143 = add nsw i32 %137, 13824
  %144 = add nsw i32 %137, 16128
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
  %exitcond.2 = icmp eq i64 %indvars.iv.next.2, 64
  br i1 %exitcond.2, label %for_end9.2, label %for_body8.2, !prof !49

for_end9.2:                                       ; preds = %for_body8.2
  %180 = add nuw nsw i32 %28, 1
  %exitcond11 = icmp eq i32 %180, 4
  br i1 %exitcond11, label %for_end3, label %for_begin4.preheader, !prof !49
}

define private i32 @__tvm_parallel_lambda.34(i32, %0* nocapture readonly, i8* nocapture readonly) {
entry:
  %3 = alloca [17 x <8 x float>], align 32
  %4 = bitcast [17 x <8 x float>]* %3 to i8*
  %.sub = getelementptr inbounds [17 x <8 x float>], [17 x <8 x float>]* %3, i64 0, i64 0
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
  %18 = add nsw i32 %17, 2175
  %19 = sdiv i32 %18, %17
  %20 = add nsw i32 %0, 1
  %21 = mul nsw i32 %19, %20
  %22 = icmp slt i32 %21, 2176
  %23 = select i1 %22, i32 %21, i32 2176
  %24 = mul nsw i32 %19, %0
  %25 = icmp slt i32 %24, 2176
  %26 = select i1 %25, i32 %24, i32 2176
  %27 = icmp slt i32 %26, %23
  br i1 %27, label %for_body.lr.ph, label %for_end, !prof !5

for_body.lr.ph:                                   ; preds = %entry
  %28 = getelementptr inbounds [17 x <8 x float>], [17 x <8 x float>]* %3, i64 0, i64 0, i64 8
  %29 = bitcast float* %28 to <8 x float>*
  %30 = getelementptr inbounds [17 x <8 x float>], [17 x <8 x float>]* %3, i64 0, i64 0, i64 16
  %31 = bitcast float* %30 to <8 x float>*
  %32 = getelementptr inbounds [17 x <8 x float>], [17 x <8 x float>]* %3, i64 0, i64 0, i64 24
  %33 = bitcast float* %32 to <8 x float>*
  %34 = getelementptr inbounds [17 x <8 x float>], [17 x <8 x float>]* %3, i64 0, i64 0, i64 32
  %35 = bitcast float* %34 to <8 x float>*
  %36 = getelementptr inbounds [17 x <8 x float>], [17 x <8 x float>]* %3, i64 0, i64 0, i64 40
  %37 = bitcast float* %36 to <8 x float>*
  %38 = getelementptr inbounds [17 x <8 x float>], [17 x <8 x float>]* %3, i64 0, i64 0, i64 48
  %39 = bitcast float* %38 to <8 x float>*
  %40 = getelementptr inbounds [17 x <8 x float>], [17 x <8 x float>]* %3, i64 0, i64 0, i64 56
  %41 = bitcast float* %40 to <8 x float>*
  %42 = getelementptr inbounds [17 x <8 x float>], [17 x <8 x float>]* %3, i64 0, i64 0, i64 64
  %43 = bitcast float* %42 to <8 x float>*
  %44 = getelementptr inbounds [17 x <8 x float>], [17 x <8 x float>]* %3, i64 0, i64 0, i64 72
  %45 = bitcast float* %44 to <8 x float>*
  %46 = getelementptr inbounds [17 x <8 x float>], [17 x <8 x float>]* %3, i64 0, i64 0, i64 80
  %47 = bitcast float* %46 to <8 x float>*
  %48 = getelementptr inbounds [17 x <8 x float>], [17 x <8 x float>]* %3, i64 0, i64 0, i64 88
  %49 = bitcast float* %48 to <8 x float>*
  %50 = getelementptr inbounds [17 x <8 x float>], [17 x <8 x float>]* %3, i64 0, i64 0, i64 96
  %51 = bitcast float* %50 to <8 x float>*
  %52 = getelementptr inbounds [17 x <8 x float>], [17 x <8 x float>]* %3, i64 0, i64 0, i64 104
  %53 = bitcast float* %52 to <8 x float>*
  %54 = getelementptr inbounds [17 x <8 x float>], [17 x <8 x float>]* %3, i64 0, i64 0, i64 112
  %55 = bitcast float* %54 to <8 x float>*
  %56 = getelementptr inbounds [17 x <8 x float>], [17 x <8 x float>]* %3, i64 0, i64 0, i64 120
  %57 = bitcast float* %56 to <8 x float>*
  %58 = getelementptr inbounds [17 x <8 x float>], [17 x <8 x float>]* %3, i64 0, i64 0, i64 128
  %59 = bitcast float* %58 to <8 x float>*
  %60 = bitcast [17 x <8 x float>]* %3 to i8*
  br label %for_body

for_body:                                         ; preds = %for_body.lr.ph, %for_end24.1
  %61 = phi i32 [ %26, %for_body.lr.ph ], [ %525, %for_end24.1 ]
  %62 = load i8* (i32, i32, i64, i32, i32)*, i8* (i32, i32, i64, i32, i32)** @__TVMBackendAllocWorkspace, align 8, !tbaa !6
  %63 = tail call i8* %62(i32 1, i32 %15, i64 1088, i32 2, i32 32)
  %64 = srem i32 %61, 34
  %65 = sdiv i32 %61, 34
  %66 = mul nsw i32 %65, 18432
  %67 = sext i32 %66 to i64
  br label %for_body2

for_end:                                          ; preds = %for_end24.1, %entry
  ret i32 0

for_begin19.preheader:                            ; preds = %for_begin16.preheader
  %68 = mul nsw i32 %64, 34
  %69 = mul nsw i32 %65, 9248
  %70 = add nsw i32 %69, %68
  %71 = bitcast i8* %63 to float*
  %72 = sext i32 %70 to i64
  br label %for_body23

for_body2:                                        ; preds = %for_begin16.preheader, %for_body
  %indvar = phi i64 [ 0, %for_body ], [ %indvar.next, %for_begin16.preheader ]
  %73 = mul nuw nsw i64 %indvar, 544
  %scevgep = getelementptr i8, i8* %63, i64 %73
  %74 = mul nuw nsw i64 %indvar, 17
  call void @llvm.memset.p0i8.i64(i8* nonnull align 32 %60, i8 0, i64 544, i1 false)
  br label %for_begin7.preheader

for_begin16.preheader:                            ; preds = %for_end9
  store <8 x float> %396, <8 x float>* %.sub, align 32, !tbaa !140
  store <8 x float> %402, <8 x float>* %29, align 32, !tbaa !140
  store <8 x float> %408, <8 x float>* %31, align 32, !tbaa !140
  store <8 x float> %414, <8 x float>* %33, align 32, !tbaa !140
  store <8 x float> %420, <8 x float>* %35, align 32, !tbaa !140
  store <8 x float> %426, <8 x float>* %37, align 32, !tbaa !140
  store <8 x float> %432, <8 x float>* %39, align 32, !tbaa !140
  store <8 x float> %438, <8 x float>* %41, align 32, !tbaa !140
  store <8 x float> %444, <8 x float>* %43, align 32, !tbaa !140
  store <8 x float> %450, <8 x float>* %45, align 32, !tbaa !140
  store <8 x float> %456, <8 x float>* %47, align 32, !tbaa !140
  store <8 x float> %462, <8 x float>* %49, align 32, !tbaa !140
  store <8 x float> %468, <8 x float>* %51, align 32, !tbaa !140
  store <8 x float> %474, <8 x float>* %53, align 32, !tbaa !140
  store <8 x float> %480, <8 x float>* %55, align 32, !tbaa !140
  store <8 x float> %486, <8 x float>* %57, align 32, !tbaa !140
  store <8 x float> %492, <8 x float>* %59, align 32, !tbaa !140
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 32 %scevgep, i8* nonnull align 32 %4, i64 544, i1 false)
  %indvar.next = add nuw nsw i64 %indvar, 1
  %exitcond189 = icmp eq i64 %indvar.next, 2
  br i1 %exitcond189, label %for_begin19.preheader, label %for_body2, !prof !49

for_begin7.preheader:                             ; preds = %for_end9, %for_body2
  %indvars.iv183 = phi i64 [ 0, %for_body2 ], [ %indvars.iv.next184, %for_end9 ]
  %.lcssa61.lcssa.lcssa159 = phi <8 x float> [ zeroinitializer, %for_body2 ], [ %492, %for_end9 ]
  %.lcssa59.lcssa.lcssa157 = phi <8 x float> [ zeroinitializer, %for_body2 ], [ %486, %for_end9 ]
  %.lcssa57.lcssa.lcssa155 = phi <8 x float> [ zeroinitializer, %for_body2 ], [ %480, %for_end9 ]
  %.lcssa55.lcssa.lcssa153 = phi <8 x float> [ zeroinitializer, %for_body2 ], [ %474, %for_end9 ]
  %.lcssa53.lcssa.lcssa151 = phi <8 x float> [ zeroinitializer, %for_body2 ], [ %468, %for_end9 ]
  %.lcssa51.lcssa.lcssa149 = phi <8 x float> [ zeroinitializer, %for_body2 ], [ %462, %for_end9 ]
  %.lcssa49.lcssa.lcssa147 = phi <8 x float> [ zeroinitializer, %for_body2 ], [ %456, %for_end9 ]
  %.lcssa47.lcssa.lcssa145 = phi <8 x float> [ zeroinitializer, %for_body2 ], [ %450, %for_end9 ]
  %.lcssa45.lcssa.lcssa143 = phi <8 x float> [ zeroinitializer, %for_body2 ], [ %444, %for_end9 ]
  %.lcssa43.lcssa.lcssa141 = phi <8 x float> [ zeroinitializer, %for_body2 ], [ %438, %for_end9 ]
  %.lcssa41.lcssa.lcssa139 = phi <8 x float> [ zeroinitializer, %for_body2 ], [ %432, %for_end9 ]
  %.lcssa39.lcssa.lcssa137 = phi <8 x float> [ zeroinitializer, %for_body2 ], [ %426, %for_end9 ]
  %.lcssa37.lcssa.lcssa135 = phi <8 x float> [ zeroinitializer, %for_body2 ], [ %420, %for_end9 ]
  %.lcssa35.lcssa.lcssa134 = phi <8 x float> [ zeroinitializer, %for_body2 ], [ %414, %for_end9 ]
  %.lcssa33.lcssa.lcssa132 = phi <8 x float> [ zeroinitializer, %for_body2 ], [ %408, %for_end9 ]
  %.lcssa31.lcssa.lcssa130 = phi <8 x float> [ zeroinitializer, %for_body2 ], [ %402, %for_end9 ]
  %.lcssa.lcssa.lcssa128 = phi <8 x float> [ zeroinitializer, %for_body2 ], [ %396, %for_end9 ]
  %75 = mul nuw nsw i64 %indvars.iv183, 82944
  %76 = add nuw nsw i64 %75, %74
  %77 = mul nuw nsw i64 %indvars.iv183, 4608
  %78 = add nsw i64 %77, %67
  %79 = trunc i64 %76 to i32
  br label %for_begin10.preheader

for_begin10.preheader:                            ; preds = %for_end15.2, %for_begin7.preheader
  %indvars.iv179 = phi i64 [ 0, %for_begin7.preheader ], [ %indvars.iv.next180, %for_end15.2 ]
  %.lcssa61.lcssa126 = phi <8 x float> [ %.lcssa61.lcssa.lcssa159, %for_begin7.preheader ], [ %492, %for_end15.2 ]
  %.lcssa59.lcssa124 = phi <8 x float> [ %.lcssa59.lcssa.lcssa157, %for_begin7.preheader ], [ %486, %for_end15.2 ]
  %.lcssa57.lcssa122 = phi <8 x float> [ %.lcssa57.lcssa.lcssa155, %for_begin7.preheader ], [ %480, %for_end15.2 ]
  %.lcssa55.lcssa120 = phi <8 x float> [ %.lcssa55.lcssa.lcssa153, %for_begin7.preheader ], [ %474, %for_end15.2 ]
  %.lcssa53.lcssa118 = phi <8 x float> [ %.lcssa53.lcssa.lcssa151, %for_begin7.preheader ], [ %468, %for_end15.2 ]
  %.lcssa51.lcssa116 = phi <8 x float> [ %.lcssa51.lcssa.lcssa149, %for_begin7.preheader ], [ %462, %for_end15.2 ]
  %.lcssa49.lcssa114 = phi <8 x float> [ %.lcssa49.lcssa.lcssa147, %for_begin7.preheader ], [ %456, %for_end15.2 ]
  %.lcssa47.lcssa112 = phi <8 x float> [ %.lcssa47.lcssa.lcssa145, %for_begin7.preheader ], [ %450, %for_end15.2 ]
  %.lcssa45.lcssa110 = phi <8 x float> [ %.lcssa45.lcssa.lcssa143, %for_begin7.preheader ], [ %444, %for_end15.2 ]
  %.lcssa43.lcssa108 = phi <8 x float> [ %.lcssa43.lcssa.lcssa141, %for_begin7.preheader ], [ %438, %for_end15.2 ]
  %.lcssa41.lcssa106 = phi <8 x float> [ %.lcssa41.lcssa.lcssa139, %for_begin7.preheader ], [ %432, %for_end15.2 ]
  %.lcssa39.lcssa104 = phi <8 x float> [ %.lcssa39.lcssa.lcssa137, %for_begin7.preheader ], [ %426, %for_end15.2 ]
  %.lcssa37.lcssa102 = phi <8 x float> [ %.lcssa37.lcssa.lcssa135, %for_begin7.preheader ], [ %420, %for_end15.2 ]
  %.lcssa35.lcssa100 = phi <8 x float> [ %.lcssa35.lcssa.lcssa134, %for_begin7.preheader ], [ %414, %for_end15.2 ]
  %.lcssa33.lcssa99 = phi <8 x float> [ %.lcssa33.lcssa.lcssa132, %for_begin7.preheader ], [ %408, %for_end15.2 ]
  %.lcssa31.lcssa97 = phi <8 x float> [ %.lcssa31.lcssa.lcssa130, %for_begin7.preheader ], [ %402, %for_end15.2 ]
  %.lcssa.lcssa95 = phi <8 x float> [ %.lcssa.lcssa.lcssa128, %for_begin7.preheader ], [ %396, %for_end15.2 ]
  %80 = phi i32 [ 0, %for_begin7.preheader ], [ %493, %for_end15.2 ]
  %reass.add = add nsw i32 %80, %64
  %reass.mul = mul i32 %reass.add, 2304
  %81 = add nsw i32 %reass.mul, %79
  %82 = mul nuw nsw i64 %indvars.iv179, 1536
  %83 = add nsw i64 %78, %82
  %84 = sext i32 %81 to i64
  br label %for_body14

for_end9:                                         ; preds = %for_end15.2
  %indvars.iv.next184 = add nuw nsw i64 %indvars.iv183, 1
  %exitcond185 = icmp eq i64 %indvars.iv.next184, 4
  br i1 %exitcond185, label %for_begin16.preheader, label %for_begin7.preheader, !prof !49

for_body14:                                       ; preds = %for_body14, %for_begin10.preheader
  %indvars.iv = phi i64 [ 0, %for_begin10.preheader ], [ %indvars.iv.next, %for_body14 ]
  %85 = phi <8 x float> [ %.lcssa61.lcssa126, %for_begin10.preheader ], [ %209, %for_body14 ]
  %86 = phi <8 x float> [ %.lcssa59.lcssa124, %for_begin10.preheader ], [ %203, %for_body14 ]
  %87 = phi <8 x float> [ %.lcssa57.lcssa122, %for_begin10.preheader ], [ %197, %for_body14 ]
  %88 = phi <8 x float> [ %.lcssa55.lcssa120, %for_begin10.preheader ], [ %191, %for_body14 ]
  %89 = phi <8 x float> [ %.lcssa53.lcssa118, %for_begin10.preheader ], [ %185, %for_body14 ]
  %90 = phi <8 x float> [ %.lcssa51.lcssa116, %for_begin10.preheader ], [ %179, %for_body14 ]
  %91 = phi <8 x float> [ %.lcssa49.lcssa114, %for_begin10.preheader ], [ %173, %for_body14 ]
  %92 = phi <8 x float> [ %.lcssa47.lcssa112, %for_begin10.preheader ], [ %167, %for_body14 ]
  %93 = phi <8 x float> [ %.lcssa45.lcssa110, %for_begin10.preheader ], [ %161, %for_body14 ]
  %94 = phi <8 x float> [ %.lcssa43.lcssa108, %for_begin10.preheader ], [ %155, %for_body14 ]
  %95 = phi <8 x float> [ %.lcssa41.lcssa106, %for_begin10.preheader ], [ %149, %for_body14 ]
  %96 = phi <8 x float> [ %.lcssa39.lcssa104, %for_begin10.preheader ], [ %143, %for_body14 ]
  %97 = phi <8 x float> [ %.lcssa37.lcssa102, %for_begin10.preheader ], [ %137, %for_body14 ]
  %98 = phi <8 x float> [ %.lcssa35.lcssa100, %for_begin10.preheader ], [ %131, %for_body14 ]
  %99 = phi <8 x float> [ %.lcssa33.lcssa99, %for_begin10.preheader ], [ %125, %for_body14 ]
  %100 = phi <8 x float> [ %.lcssa31.lcssa97, %for_begin10.preheader ], [ %119, %for_body14 ]
  %101 = phi <8 x float> [ %.lcssa.lcssa95, %for_begin10.preheader ], [ %113, %for_body14 ]
  %102 = mul nuw nsw i64 %indvars.iv, 36
  %103 = add nsw i64 %102, %84
  %104 = getelementptr inbounds float, float* %6, i64 %103
  %105 = load float, float* %104, align 4, !tbaa !131
  %106 = insertelement <8 x float> undef, float %105, i32 0
  %107 = shufflevector <8 x float> %106, <8 x float> undef, <8 x i32> zeroinitializer
  %108 = shl i64 %indvars.iv, 3
  %109 = add nsw i64 %83, %108
  %110 = getelementptr inbounds float, float* %9, i64 %109
  %111 = bitcast float* %110 to <8 x float>*
  %112 = load <8 x float>, <8 x float>* %111, align 32, !tbaa !137
  %113 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %107, <8 x float> %112, <8 x float> %101)
  %114 = add nsw i64 %103, 1
  %115 = getelementptr inbounds float, float* %6, i64 %114
  %116 = load float, float* %115, align 4, !tbaa !131
  %117 = insertelement <8 x float> undef, float %116, i32 0
  %118 = shufflevector <8 x float> %117, <8 x float> undef, <8 x i32> zeroinitializer
  %119 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %118, <8 x float> %112, <8 x float> %100)
  %120 = add nsw i64 %103, 2
  %121 = getelementptr inbounds float, float* %6, i64 %120
  %122 = load float, float* %121, align 4, !tbaa !131
  %123 = insertelement <8 x float> undef, float %122, i32 0
  %124 = shufflevector <8 x float> %123, <8 x float> undef, <8 x i32> zeroinitializer
  %125 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %124, <8 x float> %112, <8 x float> %99)
  %126 = add nsw i64 %103, 3
  %127 = getelementptr inbounds float, float* %6, i64 %126
  %128 = load float, float* %127, align 4, !tbaa !131
  %129 = insertelement <8 x float> undef, float %128, i32 0
  %130 = shufflevector <8 x float> %129, <8 x float> undef, <8 x i32> zeroinitializer
  %131 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %130, <8 x float> %112, <8 x float> %98)
  %132 = add nsw i64 %103, 4
  %133 = getelementptr inbounds float, float* %6, i64 %132
  %134 = load float, float* %133, align 4, !tbaa !131
  %135 = insertelement <8 x float> undef, float %134, i32 0
  %136 = shufflevector <8 x float> %135, <8 x float> undef, <8 x i32> zeroinitializer
  %137 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %136, <8 x float> %112, <8 x float> %97)
  %138 = add nsw i64 %103, 5
  %139 = getelementptr inbounds float, float* %6, i64 %138
  %140 = load float, float* %139, align 4, !tbaa !131
  %141 = insertelement <8 x float> undef, float %140, i32 0
  %142 = shufflevector <8 x float> %141, <8 x float> undef, <8 x i32> zeroinitializer
  %143 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %142, <8 x float> %112, <8 x float> %96)
  %144 = add nsw i64 %103, 6
  %145 = getelementptr inbounds float, float* %6, i64 %144
  %146 = load float, float* %145, align 4, !tbaa !131
  %147 = insertelement <8 x float> undef, float %146, i32 0
  %148 = shufflevector <8 x float> %147, <8 x float> undef, <8 x i32> zeroinitializer
  %149 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %148, <8 x float> %112, <8 x float> %95)
  %150 = add nsw i64 %103, 7
  %151 = getelementptr inbounds float, float* %6, i64 %150
  %152 = load float, float* %151, align 4, !tbaa !131
  %153 = insertelement <8 x float> undef, float %152, i32 0
  %154 = shufflevector <8 x float> %153, <8 x float> undef, <8 x i32> zeroinitializer
  %155 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %154, <8 x float> %112, <8 x float> %94)
  %156 = add nsw i64 %103, 8
  %157 = getelementptr inbounds float, float* %6, i64 %156
  %158 = load float, float* %157, align 4, !tbaa !131
  %159 = insertelement <8 x float> undef, float %158, i32 0
  %160 = shufflevector <8 x float> %159, <8 x float> undef, <8 x i32> zeroinitializer
  %161 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %160, <8 x float> %112, <8 x float> %93)
  %162 = add nsw i64 %103, 9
  %163 = getelementptr inbounds float, float* %6, i64 %162
  %164 = load float, float* %163, align 4, !tbaa !131
  %165 = insertelement <8 x float> undef, float %164, i32 0
  %166 = shufflevector <8 x float> %165, <8 x float> undef, <8 x i32> zeroinitializer
  %167 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %166, <8 x float> %112, <8 x float> %92)
  %168 = add nsw i64 %103, 10
  %169 = getelementptr inbounds float, float* %6, i64 %168
  %170 = load float, float* %169, align 4, !tbaa !131
  %171 = insertelement <8 x float> undef, float %170, i32 0
  %172 = shufflevector <8 x float> %171, <8 x float> undef, <8 x i32> zeroinitializer
  %173 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %172, <8 x float> %112, <8 x float> %91)
  %174 = add nsw i64 %103, 11
  %175 = getelementptr inbounds float, float* %6, i64 %174
  %176 = load float, float* %175, align 4, !tbaa !131
  %177 = insertelement <8 x float> undef, float %176, i32 0
  %178 = shufflevector <8 x float> %177, <8 x float> undef, <8 x i32> zeroinitializer
  %179 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %178, <8 x float> %112, <8 x float> %90)
  %180 = add nsw i64 %103, 12
  %181 = getelementptr inbounds float, float* %6, i64 %180
  %182 = load float, float* %181, align 4, !tbaa !131
  %183 = insertelement <8 x float> undef, float %182, i32 0
  %184 = shufflevector <8 x float> %183, <8 x float> undef, <8 x i32> zeroinitializer
  %185 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %184, <8 x float> %112, <8 x float> %89)
  %186 = add nsw i64 %103, 13
  %187 = getelementptr inbounds float, float* %6, i64 %186
  %188 = load float, float* %187, align 4, !tbaa !131
  %189 = insertelement <8 x float> undef, float %188, i32 0
  %190 = shufflevector <8 x float> %189, <8 x float> undef, <8 x i32> zeroinitializer
  %191 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %190, <8 x float> %112, <8 x float> %88)
  %192 = add nsw i64 %103, 14
  %193 = getelementptr inbounds float, float* %6, i64 %192
  %194 = load float, float* %193, align 4, !tbaa !131
  %195 = insertelement <8 x float> undef, float %194, i32 0
  %196 = shufflevector <8 x float> %195, <8 x float> undef, <8 x i32> zeroinitializer
  %197 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %196, <8 x float> %112, <8 x float> %87)
  %198 = add nsw i64 %103, 15
  %199 = getelementptr inbounds float, float* %6, i64 %198
  %200 = load float, float* %199, align 4, !tbaa !131
  %201 = insertelement <8 x float> undef, float %200, i32 0
  %202 = shufflevector <8 x float> %201, <8 x float> undef, <8 x i32> zeroinitializer
  %203 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %202, <8 x float> %112, <8 x float> %86)
  %204 = add nsw i64 %103, 16
  %205 = getelementptr inbounds float, float* %6, i64 %204
  %206 = load float, float* %205, align 4, !tbaa !131
  %207 = insertelement <8 x float> undef, float %206, i32 0
  %208 = shufflevector <8 x float> %207, <8 x float> undef, <8 x i32> zeroinitializer
  %209 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %208, <8 x float> %112, <8 x float> %85)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 64
  br i1 %exitcond, label %for_end15, label %for_body14, !prof !49

for_end15:                                        ; preds = %for_body14
  %210 = add nsw i64 %84, 1
  %211 = add nsw i64 %83, 512
  br label %for_body14.1

for_body23:                                       ; preds = %for_body23, %for_begin19.preheader
  %indvars.iv190 = phi i64 [ 0, %for_begin19.preheader ], [ %indvars.iv.next191, %for_body23 ]
  %212 = add nsw i64 %indvars.iv190, %72
  %213 = add nsw i64 %212, 1156
  %214 = add nsw i64 %212, 2312
  %215 = add nsw i64 %212, 3468
  %216 = add nsw i64 %212, 4624
  %217 = add nsw i64 %212, 5780
  %218 = add nsw i64 %212, 6936
  %219 = add nsw i64 %212, 8092
  %220 = shl i64 %indvars.iv190, 3
  %221 = getelementptr inbounds float, float* %71, i64 %220
  %222 = bitcast float* %221 to <8 x float>*
  %223 = load <8 x float>, <8 x float>* %222, align 32, !tbaa !151
  %224 = getelementptr inbounds float, float* %12, i64 %212
  %225 = extractelement <8 x float> %223, i64 0
  store float %225, float* %224, align 4, !tbaa !154
  %226 = getelementptr inbounds float, float* %12, i64 %213
  %227 = extractelement <8 x float> %223, i64 1
  store float %227, float* %226, align 4, !tbaa !154
  %228 = getelementptr inbounds float, float* %12, i64 %214
  %229 = extractelement <8 x float> %223, i64 2
  store float %229, float* %228, align 4, !tbaa !154
  %230 = getelementptr inbounds float, float* %12, i64 %215
  %231 = extractelement <8 x float> %223, i64 3
  store float %231, float* %230, align 4, !tbaa !154
  %232 = getelementptr inbounds float, float* %12, i64 %216
  %233 = extractelement <8 x float> %223, i64 4
  store float %233, float* %232, align 4, !tbaa !154
  %234 = getelementptr inbounds float, float* %12, i64 %217
  %235 = extractelement <8 x float> %223, i64 5
  store float %235, float* %234, align 4, !tbaa !154
  %236 = getelementptr inbounds float, float* %12, i64 %218
  %237 = extractelement <8 x float> %223, i64 6
  store float %237, float* %236, align 4, !tbaa !154
  %238 = getelementptr inbounds float, float* %12, i64 %219
  %239 = extractelement <8 x float> %223, i64 7
  store float %239, float* %238, align 4, !tbaa !154
  %indvars.iv.next191 = add nuw nsw i64 %indvars.iv190, 1
  %exitcond192 = icmp eq i64 %indvars.iv.next191, 17
  br i1 %exitcond192, label %for_end24, label %for_body23, !prof !49

for_end24:                                        ; preds = %for_body23
  %240 = add nsw i64 %72, 17
  br label %for_body23.1

for_body14.1:                                     ; preds = %for_body14.1, %for_end15
  %indvars.iv.1 = phi i64 [ 0, %for_end15 ], [ %indvars.iv.next.1, %for_body14.1 ]
  %241 = phi <8 x float> [ %209, %for_end15 ], [ %365, %for_body14.1 ]
  %242 = phi <8 x float> [ %203, %for_end15 ], [ %359, %for_body14.1 ]
  %243 = phi <8 x float> [ %197, %for_end15 ], [ %353, %for_body14.1 ]
  %244 = phi <8 x float> [ %191, %for_end15 ], [ %347, %for_body14.1 ]
  %245 = phi <8 x float> [ %185, %for_end15 ], [ %341, %for_body14.1 ]
  %246 = phi <8 x float> [ %179, %for_end15 ], [ %335, %for_body14.1 ]
  %247 = phi <8 x float> [ %173, %for_end15 ], [ %329, %for_body14.1 ]
  %248 = phi <8 x float> [ %167, %for_end15 ], [ %323, %for_body14.1 ]
  %249 = phi <8 x float> [ %161, %for_end15 ], [ %317, %for_body14.1 ]
  %250 = phi <8 x float> [ %155, %for_end15 ], [ %311, %for_body14.1 ]
  %251 = phi <8 x float> [ %149, %for_end15 ], [ %305, %for_body14.1 ]
  %252 = phi <8 x float> [ %143, %for_end15 ], [ %299, %for_body14.1 ]
  %253 = phi <8 x float> [ %137, %for_end15 ], [ %293, %for_body14.1 ]
  %254 = phi <8 x float> [ %131, %for_end15 ], [ %287, %for_body14.1 ]
  %255 = phi <8 x float> [ %125, %for_end15 ], [ %281, %for_body14.1 ]
  %256 = phi <8 x float> [ %119, %for_end15 ], [ %275, %for_body14.1 ]
  %257 = phi <8 x float> [ %113, %for_end15 ], [ %269, %for_body14.1 ]
  %258 = mul nuw nsw i64 %indvars.iv.1, 36
  %259 = add nsw i64 %210, %258
  %260 = getelementptr inbounds float, float* %6, i64 %259
  %261 = load float, float* %260, align 4, !tbaa !131
  %262 = insertelement <8 x float> undef, float %261, i32 0
  %263 = shufflevector <8 x float> %262, <8 x float> undef, <8 x i32> zeroinitializer
  %264 = shl i64 %indvars.iv.1, 3
  %265 = add nsw i64 %211, %264
  %266 = getelementptr inbounds float, float* %9, i64 %265
  %267 = bitcast float* %266 to <8 x float>*
  %268 = load <8 x float>, <8 x float>* %267, align 32, !tbaa !137
  %269 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %263, <8 x float> %268, <8 x float> %257)
  %270 = add nsw i64 %259, 1
  %271 = getelementptr inbounds float, float* %6, i64 %270
  %272 = load float, float* %271, align 4, !tbaa !131
  %273 = insertelement <8 x float> undef, float %272, i32 0
  %274 = shufflevector <8 x float> %273, <8 x float> undef, <8 x i32> zeroinitializer
  %275 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %274, <8 x float> %268, <8 x float> %256)
  %276 = add nsw i64 %259, 2
  %277 = getelementptr inbounds float, float* %6, i64 %276
  %278 = load float, float* %277, align 4, !tbaa !131
  %279 = insertelement <8 x float> undef, float %278, i32 0
  %280 = shufflevector <8 x float> %279, <8 x float> undef, <8 x i32> zeroinitializer
  %281 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %280, <8 x float> %268, <8 x float> %255)
  %282 = add nsw i64 %259, 3
  %283 = getelementptr inbounds float, float* %6, i64 %282
  %284 = load float, float* %283, align 4, !tbaa !131
  %285 = insertelement <8 x float> undef, float %284, i32 0
  %286 = shufflevector <8 x float> %285, <8 x float> undef, <8 x i32> zeroinitializer
  %287 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %286, <8 x float> %268, <8 x float> %254)
  %288 = add nsw i64 %259, 4
  %289 = getelementptr inbounds float, float* %6, i64 %288
  %290 = load float, float* %289, align 4, !tbaa !131
  %291 = insertelement <8 x float> undef, float %290, i32 0
  %292 = shufflevector <8 x float> %291, <8 x float> undef, <8 x i32> zeroinitializer
  %293 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %292, <8 x float> %268, <8 x float> %253)
  %294 = add nsw i64 %259, 5
  %295 = getelementptr inbounds float, float* %6, i64 %294
  %296 = load float, float* %295, align 4, !tbaa !131
  %297 = insertelement <8 x float> undef, float %296, i32 0
  %298 = shufflevector <8 x float> %297, <8 x float> undef, <8 x i32> zeroinitializer
  %299 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %298, <8 x float> %268, <8 x float> %252)
  %300 = add nsw i64 %259, 6
  %301 = getelementptr inbounds float, float* %6, i64 %300
  %302 = load float, float* %301, align 4, !tbaa !131
  %303 = insertelement <8 x float> undef, float %302, i32 0
  %304 = shufflevector <8 x float> %303, <8 x float> undef, <8 x i32> zeroinitializer
  %305 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %304, <8 x float> %268, <8 x float> %251)
  %306 = add nsw i64 %259, 7
  %307 = getelementptr inbounds float, float* %6, i64 %306
  %308 = load float, float* %307, align 4, !tbaa !131
  %309 = insertelement <8 x float> undef, float %308, i32 0
  %310 = shufflevector <8 x float> %309, <8 x float> undef, <8 x i32> zeroinitializer
  %311 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %310, <8 x float> %268, <8 x float> %250)
  %312 = add nsw i64 %259, 8
  %313 = getelementptr inbounds float, float* %6, i64 %312
  %314 = load float, float* %313, align 4, !tbaa !131
  %315 = insertelement <8 x float> undef, float %314, i32 0
  %316 = shufflevector <8 x float> %315, <8 x float> undef, <8 x i32> zeroinitializer
  %317 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %316, <8 x float> %268, <8 x float> %249)
  %318 = add nsw i64 %259, 9
  %319 = getelementptr inbounds float, float* %6, i64 %318
  %320 = load float, float* %319, align 4, !tbaa !131
  %321 = insertelement <8 x float> undef, float %320, i32 0
  %322 = shufflevector <8 x float> %321, <8 x float> undef, <8 x i32> zeroinitializer
  %323 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %322, <8 x float> %268, <8 x float> %248)
  %324 = add nsw i64 %259, 10
  %325 = getelementptr inbounds float, float* %6, i64 %324
  %326 = load float, float* %325, align 4, !tbaa !131
  %327 = insertelement <8 x float> undef, float %326, i32 0
  %328 = shufflevector <8 x float> %327, <8 x float> undef, <8 x i32> zeroinitializer
  %329 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %328, <8 x float> %268, <8 x float> %247)
  %330 = add nsw i64 %259, 11
  %331 = getelementptr inbounds float, float* %6, i64 %330
  %332 = load float, float* %331, align 4, !tbaa !131
  %333 = insertelement <8 x float> undef, float %332, i32 0
  %334 = shufflevector <8 x float> %333, <8 x float> undef, <8 x i32> zeroinitializer
  %335 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %334, <8 x float> %268, <8 x float> %246)
  %336 = add nsw i64 %259, 12
  %337 = getelementptr inbounds float, float* %6, i64 %336
  %338 = load float, float* %337, align 4, !tbaa !131
  %339 = insertelement <8 x float> undef, float %338, i32 0
  %340 = shufflevector <8 x float> %339, <8 x float> undef, <8 x i32> zeroinitializer
  %341 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %340, <8 x float> %268, <8 x float> %245)
  %342 = add nsw i64 %259, 13
  %343 = getelementptr inbounds float, float* %6, i64 %342
  %344 = load float, float* %343, align 4, !tbaa !131
  %345 = insertelement <8 x float> undef, float %344, i32 0
  %346 = shufflevector <8 x float> %345, <8 x float> undef, <8 x i32> zeroinitializer
  %347 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %346, <8 x float> %268, <8 x float> %244)
  %348 = add nsw i64 %259, 14
  %349 = getelementptr inbounds float, float* %6, i64 %348
  %350 = load float, float* %349, align 4, !tbaa !131
  %351 = insertelement <8 x float> undef, float %350, i32 0
  %352 = shufflevector <8 x float> %351, <8 x float> undef, <8 x i32> zeroinitializer
  %353 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %352, <8 x float> %268, <8 x float> %243)
  %354 = add nsw i64 %259, 15
  %355 = getelementptr inbounds float, float* %6, i64 %354
  %356 = load float, float* %355, align 4, !tbaa !131
  %357 = insertelement <8 x float> undef, float %356, i32 0
  %358 = shufflevector <8 x float> %357, <8 x float> undef, <8 x i32> zeroinitializer
  %359 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %358, <8 x float> %268, <8 x float> %242)
  %360 = add nsw i64 %259, 16
  %361 = getelementptr inbounds float, float* %6, i64 %360
  %362 = load float, float* %361, align 4, !tbaa !131
  %363 = insertelement <8 x float> undef, float %362, i32 0
  %364 = shufflevector <8 x float> %363, <8 x float> undef, <8 x i32> zeroinitializer
  %365 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %364, <8 x float> %268, <8 x float> %241)
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1
  %exitcond.1 = icmp eq i64 %indvars.iv.next.1, 64
  br i1 %exitcond.1, label %for_end15.1, label %for_body14.1, !prof !49

for_end15.1:                                      ; preds = %for_body14.1
  %366 = add nsw i64 %84, 2
  %367 = add nsw i64 %83, 1024
  br label %for_body14.2

for_body14.2:                                     ; preds = %for_body14.2, %for_end15.1
  %indvars.iv.2 = phi i64 [ 0, %for_end15.1 ], [ %indvars.iv.next.2, %for_body14.2 ]
  %368 = phi <8 x float> [ %365, %for_end15.1 ], [ %492, %for_body14.2 ]
  %369 = phi <8 x float> [ %359, %for_end15.1 ], [ %486, %for_body14.2 ]
  %370 = phi <8 x float> [ %353, %for_end15.1 ], [ %480, %for_body14.2 ]
  %371 = phi <8 x float> [ %347, %for_end15.1 ], [ %474, %for_body14.2 ]
  %372 = phi <8 x float> [ %341, %for_end15.1 ], [ %468, %for_body14.2 ]
  %373 = phi <8 x float> [ %335, %for_end15.1 ], [ %462, %for_body14.2 ]
  %374 = phi <8 x float> [ %329, %for_end15.1 ], [ %456, %for_body14.2 ]
  %375 = phi <8 x float> [ %323, %for_end15.1 ], [ %450, %for_body14.2 ]
  %376 = phi <8 x float> [ %317, %for_end15.1 ], [ %444, %for_body14.2 ]
  %377 = phi <8 x float> [ %311, %for_end15.1 ], [ %438, %for_body14.2 ]
  %378 = phi <8 x float> [ %305, %for_end15.1 ], [ %432, %for_body14.2 ]
  %379 = phi <8 x float> [ %299, %for_end15.1 ], [ %426, %for_body14.2 ]
  %380 = phi <8 x float> [ %293, %for_end15.1 ], [ %420, %for_body14.2 ]
  %381 = phi <8 x float> [ %287, %for_end15.1 ], [ %414, %for_body14.2 ]
  %382 = phi <8 x float> [ %281, %for_end15.1 ], [ %408, %for_body14.2 ]
  %383 = phi <8 x float> [ %275, %for_end15.1 ], [ %402, %for_body14.2 ]
  %384 = phi <8 x float> [ %269, %for_end15.1 ], [ %396, %for_body14.2 ]
  %385 = mul nuw nsw i64 %indvars.iv.2, 36
  %386 = add nsw i64 %366, %385
  %387 = getelementptr inbounds float, float* %6, i64 %386
  %388 = load float, float* %387, align 4, !tbaa !131
  %389 = insertelement <8 x float> undef, float %388, i32 0
  %390 = shufflevector <8 x float> %389, <8 x float> undef, <8 x i32> zeroinitializer
  %391 = shl i64 %indvars.iv.2, 3
  %392 = add nsw i64 %367, %391
  %393 = getelementptr inbounds float, float* %9, i64 %392
  %394 = bitcast float* %393 to <8 x float>*
  %395 = load <8 x float>, <8 x float>* %394, align 32, !tbaa !137
  %396 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %390, <8 x float> %395, <8 x float> %384)
  %397 = add nsw i64 %386, 1
  %398 = getelementptr inbounds float, float* %6, i64 %397
  %399 = load float, float* %398, align 4, !tbaa !131
  %400 = insertelement <8 x float> undef, float %399, i32 0
  %401 = shufflevector <8 x float> %400, <8 x float> undef, <8 x i32> zeroinitializer
  %402 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %401, <8 x float> %395, <8 x float> %383)
  %403 = add nsw i64 %386, 2
  %404 = getelementptr inbounds float, float* %6, i64 %403
  %405 = load float, float* %404, align 4, !tbaa !131
  %406 = insertelement <8 x float> undef, float %405, i32 0
  %407 = shufflevector <8 x float> %406, <8 x float> undef, <8 x i32> zeroinitializer
  %408 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %407, <8 x float> %395, <8 x float> %382)
  %409 = add nsw i64 %386, 3
  %410 = getelementptr inbounds float, float* %6, i64 %409
  %411 = load float, float* %410, align 4, !tbaa !131
  %412 = insertelement <8 x float> undef, float %411, i32 0
  %413 = shufflevector <8 x float> %412, <8 x float> undef, <8 x i32> zeroinitializer
  %414 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %413, <8 x float> %395, <8 x float> %381)
  %415 = add nsw i64 %386, 4
  %416 = getelementptr inbounds float, float* %6, i64 %415
  %417 = load float, float* %416, align 4, !tbaa !131
  %418 = insertelement <8 x float> undef, float %417, i32 0
  %419 = shufflevector <8 x float> %418, <8 x float> undef, <8 x i32> zeroinitializer
  %420 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %419, <8 x float> %395, <8 x float> %380)
  %421 = add nsw i64 %386, 5
  %422 = getelementptr inbounds float, float* %6, i64 %421
  %423 = load float, float* %422, align 4, !tbaa !131
  %424 = insertelement <8 x float> undef, float %423, i32 0
  %425 = shufflevector <8 x float> %424, <8 x float> undef, <8 x i32> zeroinitializer
  %426 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %425, <8 x float> %395, <8 x float> %379)
  %427 = add nsw i64 %386, 6
  %428 = getelementptr inbounds float, float* %6, i64 %427
  %429 = load float, float* %428, align 4, !tbaa !131
  %430 = insertelement <8 x float> undef, float %429, i32 0
  %431 = shufflevector <8 x float> %430, <8 x float> undef, <8 x i32> zeroinitializer
  %432 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %431, <8 x float> %395, <8 x float> %378)
  %433 = add nsw i64 %386, 7
  %434 = getelementptr inbounds float, float* %6, i64 %433
  %435 = load float, float* %434, align 4, !tbaa !131
  %436 = insertelement <8 x float> undef, float %435, i32 0
  %437 = shufflevector <8 x float> %436, <8 x float> undef, <8 x i32> zeroinitializer
  %438 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %437, <8 x float> %395, <8 x float> %377)
  %439 = add nsw i64 %386, 8
  %440 = getelementptr inbounds float, float* %6, i64 %439
  %441 = load float, float* %440, align 4, !tbaa !131
  %442 = insertelement <8 x float> undef, float %441, i32 0
  %443 = shufflevector <8 x float> %442, <8 x float> undef, <8 x i32> zeroinitializer
  %444 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %443, <8 x float> %395, <8 x float> %376)
  %445 = add nsw i64 %386, 9
  %446 = getelementptr inbounds float, float* %6, i64 %445
  %447 = load float, float* %446, align 4, !tbaa !131
  %448 = insertelement <8 x float> undef, float %447, i32 0
  %449 = shufflevector <8 x float> %448, <8 x float> undef, <8 x i32> zeroinitializer
  %450 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %449, <8 x float> %395, <8 x float> %375)
  %451 = add nsw i64 %386, 10
  %452 = getelementptr inbounds float, float* %6, i64 %451
  %453 = load float, float* %452, align 4, !tbaa !131
  %454 = insertelement <8 x float> undef, float %453, i32 0
  %455 = shufflevector <8 x float> %454, <8 x float> undef, <8 x i32> zeroinitializer
  %456 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %455, <8 x float> %395, <8 x float> %374)
  %457 = add nsw i64 %386, 11
  %458 = getelementptr inbounds float, float* %6, i64 %457
  %459 = load float, float* %458, align 4, !tbaa !131
  %460 = insertelement <8 x float> undef, float %459, i32 0
  %461 = shufflevector <8 x float> %460, <8 x float> undef, <8 x i32> zeroinitializer
  %462 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %461, <8 x float> %395, <8 x float> %373)
  %463 = add nsw i64 %386, 12
  %464 = getelementptr inbounds float, float* %6, i64 %463
  %465 = load float, float* %464, align 4, !tbaa !131
  %466 = insertelement <8 x float> undef, float %465, i32 0
  %467 = shufflevector <8 x float> %466, <8 x float> undef, <8 x i32> zeroinitializer
  %468 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %467, <8 x float> %395, <8 x float> %372)
  %469 = add nsw i64 %386, 13
  %470 = getelementptr inbounds float, float* %6, i64 %469
  %471 = load float, float* %470, align 4, !tbaa !131
  %472 = insertelement <8 x float> undef, float %471, i32 0
  %473 = shufflevector <8 x float> %472, <8 x float> undef, <8 x i32> zeroinitializer
  %474 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %473, <8 x float> %395, <8 x float> %371)
  %475 = add nsw i64 %386, 14
  %476 = getelementptr inbounds float, float* %6, i64 %475
  %477 = load float, float* %476, align 4, !tbaa !131
  %478 = insertelement <8 x float> undef, float %477, i32 0
  %479 = shufflevector <8 x float> %478, <8 x float> undef, <8 x i32> zeroinitializer
  %480 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %479, <8 x float> %395, <8 x float> %370)
  %481 = add nsw i64 %386, 15
  %482 = getelementptr inbounds float, float* %6, i64 %481
  %483 = load float, float* %482, align 4, !tbaa !131
  %484 = insertelement <8 x float> undef, float %483, i32 0
  %485 = shufflevector <8 x float> %484, <8 x float> undef, <8 x i32> zeroinitializer
  %486 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %485, <8 x float> %395, <8 x float> %369)
  %487 = add nsw i64 %386, 16
  %488 = getelementptr inbounds float, float* %6, i64 %487
  %489 = load float, float* %488, align 4, !tbaa !131
  %490 = insertelement <8 x float> undef, float %489, i32 0
  %491 = shufflevector <8 x float> %490, <8 x float> undef, <8 x i32> zeroinitializer
  %492 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %491, <8 x float> %395, <8 x float> %368)
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv.2, 1
  %exitcond.2 = icmp eq i64 %indvars.iv.next.2, 64
  br i1 %exitcond.2, label %for_end15.2, label %for_body14.2, !prof !49

for_end15.2:                                      ; preds = %for_body14.2
  %indvars.iv.next180 = add nuw nsw i64 %indvars.iv179, 1
  %493 = add nuw nsw i32 %80, 1
  %exitcond182 = icmp eq i64 %indvars.iv.next180, 3
  br i1 %exitcond182, label %for_end9, label %for_begin10.preheader, !prof !49

for_body23.1:                                     ; preds = %for_body23.1, %for_end24
  %indvars.iv190.1 = phi i64 [ 0, %for_end24 ], [ %indvars.iv.next191.1, %for_body23.1 ]
  %494 = add nsw i64 %240, %indvars.iv190.1
  %495 = add nsw i64 %494, 1156
  %496 = add nsw i64 %494, 2312
  %497 = add nsw i64 %494, 3468
  %498 = add nsw i64 %494, 4624
  %499 = add nsw i64 %494, 5780
  %500 = add nsw i64 %494, 6936
  %501 = add nsw i64 %494, 8092
  %502 = shl i64 %indvars.iv190.1, 3
  %503 = add nuw nsw i64 %502, 136
  %504 = getelementptr inbounds float, float* %71, i64 %503
  %505 = bitcast float* %504 to <8 x float>*
  %506 = load <8 x float>, <8 x float>* %505, align 32, !tbaa !151
  %507 = getelementptr inbounds float, float* %12, i64 %494
  %508 = extractelement <8 x float> %506, i64 0
  store float %508, float* %507, align 4, !tbaa !154
  %509 = getelementptr inbounds float, float* %12, i64 %495
  %510 = extractelement <8 x float> %506, i64 1
  store float %510, float* %509, align 4, !tbaa !154
  %511 = getelementptr inbounds float, float* %12, i64 %496
  %512 = extractelement <8 x float> %506, i64 2
  store float %512, float* %511, align 4, !tbaa !154
  %513 = getelementptr inbounds float, float* %12, i64 %497
  %514 = extractelement <8 x float> %506, i64 3
  store float %514, float* %513, align 4, !tbaa !154
  %515 = getelementptr inbounds float, float* %12, i64 %498
  %516 = extractelement <8 x float> %506, i64 4
  store float %516, float* %515, align 4, !tbaa !154
  %517 = getelementptr inbounds float, float* %12, i64 %499
  %518 = extractelement <8 x float> %506, i64 5
  store float %518, float* %517, align 4, !tbaa !154
  %519 = getelementptr inbounds float, float* %12, i64 %500
  %520 = extractelement <8 x float> %506, i64 6
  store float %520, float* %519, align 4, !tbaa !154
  %521 = getelementptr inbounds float, float* %12, i64 %501
  %522 = extractelement <8 x float> %506, i64 7
  store float %522, float* %521, align 4, !tbaa !154
  %indvars.iv.next191.1 = add nuw nsw i64 %indvars.iv190.1, 1
  %exitcond192.1 = icmp eq i64 %indvars.iv.next191.1, 17
  br i1 %exitcond192.1, label %for_end24.1, label %for_body23.1, !prof !49

for_end24.1:                                      ; preds = %for_body23.1
  %523 = load i32 (i32, i32, i8*)*, i32 (i32, i32, i8*)** @__TVMBackendFreeWorkspace, align 8, !tbaa !6
  %524 = tail call i32 %523(i32 1, i32 %15, i8* nonnull %63)
  %525 = add nsw i32 %61, 1
  %526 = icmp slt i32 %525, %23
  br i1 %526, label %for_body, label %for_end, !prof !5
}

; Function Attrs: nounwind readnone speculatable
declare <8 x float> @llvm.fmuladd.v8f32(<8 x float>, <8 x float>, <8 x float>) #2

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
!10 = !{!"0x28ff360.w1.b0", !11, i64 0}
!11 = !{!"0x28ff360.w2.b0", !12, i64 0}
!12 = !{!"0x28ff360.w4.b0", !13, i64 0}
!13 = !{!"0x28ff360.w8.b0", !14, i64 0}
!14 = !{!"0x28ff360.w16.b0", !15, i64 0}
!15 = !{!"0x28ff360.w32.b0", !16, i64 0}
!16 = !{!"0x28ff360.w64.b0", !17, i64 0}
!17 = !{!"0x28ff360.w128.b0", !18, i64 0}
!18 = !{!"0x28ff360.w256.b0", !19, i64 0}
!19 = !{!"0x28ff360.w512.b0", !20, i64 0}
!20 = !{!"0x28ff360.w1024.b0", !21, i64 0}
!21 = !{!"int32", !22, i64 0}
!22 = !{!"0x28ff360", !8, i64 0}
!23 = !{!24, !24, i64 0}
!24 = !{!"0x28ff360.w1.b2", !25, i64 0}
!25 = !{!"0x28ff360.w2.b2", !12, i64 0}
!26 = !{!27, !27, i64 0}
!27 = !{!"0x28ff360.w1.b1", !11, i64 0}
!28 = !{!29, !29, i64 0}
!29 = !{!"0x29c2890.w1.b0", !30, i64 0}
!30 = !{!"0x29c2890.w2.b0", !31, i64 0}
!31 = !{!"0x29c2890.w4.b0", !32, i64 0}
!32 = !{!"0x29c2890.w8.b0", !33, i64 0}
!33 = !{!"0x29c2890.w16.b0", !34, i64 0}
!34 = !{!"0x29c2890.w32.b0", !35, i64 0}
!35 = !{!"0x29c2890.w64.b0", !36, i64 0}
!36 = !{!"0x29c2890.w128.b0", !37, i64 0}
!37 = !{!"0x29c2890.w256.b0", !38, i64 0}
!38 = !{!"0x29c2890.w512.b0", !39, i64 0}
!39 = !{!"0x29c2890.w1024.b0", !40, i64 0}
!40 = !{!"int64", !41, i64 0}
!41 = !{!"0x29c2890", !8, i64 0}
!42 = !{!43, !43, i64 0}
!43 = !{!"0x29c2890.w1.b1", !30, i64 0}
!44 = !{!45, !45, i64 0}
!45 = !{!"0x29c2890.w1.b2", !46, i64 0}
!46 = !{!"0x29c2890.w2.b2", !31, i64 0}
!47 = !{!48, !48, i64 0}
!48 = !{!"0x29c2890.w1.b3", !46, i64 0}
!49 = !{!"branch_weights", i32 1, i32 1048576}
!50 = !{!51, !51, i64 0}
!51 = !{!"0x2a00310.w4.b0", !52, i64 0}
!52 = !{!"0x2a00310.w8.b0", !53, i64 0}
!53 = !{!"0x2a00310.w16.b0", !54, i64 0}
!54 = !{!"0x2a00310.w32.b0", !55, i64 0}
!55 = !{!"0x2a00310.w64.b0", !56, i64 0}
!56 = !{!"0x2a00310.w128.b0", !57, i64 0}
!57 = !{!"0x2a00310.w256.b0", !58, i64 0}
!58 = !{!"0x2a00310.w512.b0", !59, i64 0}
!59 = !{!"0x2a00310.w1024.b0", !60, i64 0}
!60 = !{!"int64", !61, i64 0}
!61 = !{!"0x2a00310", !8, i64 0}
!62 = !{!63, !63, i64 0}
!63 = !{!"0x264ccf0.w1.b0", !64, i64 0}
!64 = !{!"0x264ccf0.w2.b0", !65, i64 0}
!65 = !{!"0x264ccf0.w4.b0", !66, i64 0}
!66 = !{!"0x264ccf0.w8.b0", !67, i64 0}
!67 = !{!"0x264ccf0.w16.b0", !68, i64 0}
!68 = !{!"0x264ccf0.w32.b0", !69, i64 0}
!69 = !{!"0x264ccf0.w64.b0", !70, i64 0}
!70 = !{!"0x264ccf0.w128.b0", !71, i64 0}
!71 = !{!"0x264ccf0.w256.b0", !72, i64 0}
!72 = !{!"0x264ccf0.w512.b0", !73, i64 0}
!73 = !{!"0x264ccf0.w1024.b0", !74, i64 0}
!74 = !{!"int64", !75, i64 0}
!75 = !{!"0x264ccf0", !8, i64 0}
!76 = !{!77, !77, i64 0}
!77 = !{!"0x264ccf0.w1.b1", !64, i64 0}
!78 = !{!79, !79, i64 0}
!79 = !{!"0x264ccf0.w1.b2", !80, i64 0}
!80 = !{!"0x264ccf0.w2.b2", !65, i64 0}
!81 = !{!82, !82, i64 0}
!82 = !{!"0x264ccf0.w1.b3", !80, i64 0}
!83 = !{!84, !84, i64 0}
!84 = !{!"0x2a0f730.w4.b0", !85, i64 0}
!85 = !{!"0x2a0f730.w8.b0", !86, i64 0}
!86 = !{!"0x2a0f730.w16.b0", !87, i64 0}
!87 = !{!"0x2a0f730.w32.b0", !88, i64 0}
!88 = !{!"0x2a0f730.w64.b0", !89, i64 0}
!89 = !{!"0x2a0f730.w128.b0", !90, i64 0}
!90 = !{!"0x2a0f730.w256.b0", !91, i64 0}
!91 = !{!"0x2a0f730.w512.b0", !92, i64 0}
!92 = !{!"0x2a0f730.w1024.b0", !93, i64 0}
!93 = !{!"int64", !94, i64 0}
!94 = !{!"0x2a0f730", !8, i64 0}
!95 = !{!96, !96, i64 0}
!96 = !{!"0x2aca520.w1.b0", !97, i64 0}
!97 = !{!"0x2aca520.w2.b0", !98, i64 0}
!98 = !{!"0x2aca520.w4.b0", !99, i64 0}
!99 = !{!"0x2aca520.w8.b0", !100, i64 0}
!100 = !{!"0x2aca520.w16.b0", !101, i64 0}
!101 = !{!"0x2aca520.w32.b0", !102, i64 0}
!102 = !{!"0x2aca520.w64.b0", !103, i64 0}
!103 = !{!"0x2aca520.w128.b0", !104, i64 0}
!104 = !{!"0x2aca520.w256.b0", !105, i64 0}
!105 = !{!"0x2aca520.w512.b0", !106, i64 0}
!106 = !{!"0x2aca520.w1024.b0", !107, i64 0}
!107 = !{!"int64", !108, i64 0}
!108 = !{!"0x2aca520", !8, i64 0}
!109 = !{!110, !110, i64 0}
!110 = !{!"0x2aca520.w1.b1", !97, i64 0}
!111 = !{!112, !112, i64 0}
!112 = !{!"0x2aca520.w1.b2", !113, i64 0}
!113 = !{!"0x2aca520.w2.b2", !98, i64 0}
!114 = !{!115, !115, i64 0}
!115 = !{!"0x2aca520.w1.b3", !113, i64 0}
!116 = !{!117, !117, i64 0}
!117 = !{!"0x2aa3bf0.w4.b0", !118, i64 0}
!118 = !{!"0x2aa3bf0.w8.b0", !119, i64 0}
!119 = !{!"0x2aa3bf0.w16.b0", !120, i64 0}
!120 = !{!"0x2aa3bf0.w32.b0", !121, i64 0}
!121 = !{!"0x2aa3bf0.w64.b0", !122, i64 0}
!122 = !{!"0x2aa3bf0.w128.b0", !123, i64 0}
!123 = !{!"0x2aa3bf0.w256.b0", !124, i64 0}
!124 = !{!"0x2aa3bf0.w512.b0", !125, i64 0}
!125 = !{!"0x2aa3bf0.w1024.b0", !126, i64 0}
!126 = !{!"int64", !127, i64 0}
!127 = !{!"0x2aa3bf0", !8, i64 0}
!128 = !{!129, !129, i64 0}
!129 = !{!"float32", !130, i64 0}
!130 = !{!"0x29c2850", !8, i64 0}
!131 = !{!132, !132, i64 0}
!132 = !{!"float32", !133, i64 0}
!133 = !{!"0x2747c40", !8, i64 0}
!134 = !{!135, !135, i64 0}
!135 = !{!"float32", !136, i64 0}
!136 = !{!"0x2517680", !8, i64 0}
!137 = !{!138, !138, i64 0}
!138 = !{!"float32", !139, i64 0}
!139 = !{!"0x2a38990", !8, i64 0}
!140 = !{!141, !141, i64 0}
!141 = !{!"0x2aa7640.w8.b0", !142, i64 0}
!142 = !{!"0x2aa7640.w16.b0", !143, i64 0}
!143 = !{!"0x2aa7640.w32.b0", !144, i64 0}
!144 = !{!"0x2aa7640.w64.b0", !145, i64 0}
!145 = !{!"0x2aa7640.w128.b0", !146, i64 0}
!146 = !{!"0x2aa7640.w256.b0", !147, i64 0}
!147 = !{!"0x2aa7640.w512.b0", !148, i64 0}
!148 = !{!"0x2aa7640.w1024.b0", !149, i64 0}
!149 = !{!"float32", !150, i64 0}
!150 = !{!"0x2aa7640", !8, i64 0}
!151 = !{!152, !152, i64 0}
!152 = !{!"float32", !153, i64 0}
!153 = !{!"0x28be380", !8, i64 0}
!154 = !{!155, !155, i64 0}
!155 = !{!"float32", !156, i64 0}
!156 = !{!"0x2517640", !8, i64 0}
