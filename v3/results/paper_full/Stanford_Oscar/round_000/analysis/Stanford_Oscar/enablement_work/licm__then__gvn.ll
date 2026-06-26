; ModuleID = 'results\paper_full\Stanford_Oscar\Stanford_Oscar.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/Stanford/Oscar.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

%struct.complex = type { float, float }
%struct.element = type { i32, i32 }

@seed = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"  %15.3f%15.3f\00", align 1
@e = dso_local global [130 x %struct.complex] zeroinitializer, align 16
@zr = dso_local global float 0.000000e+00, align 4
@zi = dso_local global float 0.000000e+00, align 4
@z = dso_local global [257 x %struct.complex] zeroinitializer, align 16
@w = dso_local global [257 x %struct.complex] zeroinitializer, align 16
@value = dso_local global float 0.000000e+00, align 4
@fixed = dso_local global float 0.000000e+00, align 4
@floated = dso_local global float 0.000000e+00, align 4
@permarray = dso_local global [11 x i32] zeroinitializer, align 16
@pctr = dso_local global i32 0, align 4
@tree = dso_local global ptr null, align 8
@stack = dso_local global [4 x i32] zeroinitializer, align 16
@cellspace = dso_local global [19 x %struct.element] zeroinitializer, align 16
@freelist = dso_local global i32 0, align 4
@movesdone = dso_local global i32 0, align 4
@ima = dso_local global [41 x [41 x i32]] zeroinitializer, align 16
@imb = dso_local global [41 x [41 x i32]] zeroinitializer, align 16
@imr = dso_local global [41 x [41 x i32]] zeroinitializer, align 16
@rma = dso_local global [41 x [41 x float]] zeroinitializer, align 16
@rmb = dso_local global [41 x [41 x float]] zeroinitializer, align 16
@rmr = dso_local global [41 x [41 x float]] zeroinitializer, align 16
@piececount = dso_local global [4 x i32] zeroinitializer, align 16
@class = dso_local global [13 x i32] zeroinitializer, align 16
@piecemax = dso_local global [13 x i32] zeroinitializer, align 16
@puzzl = dso_local global [512 x i32] zeroinitializer, align 16
@p = dso_local global [13 x [512 x i32]] zeroinitializer, align 16
@n = dso_local global i32 0, align 4
@kount = dso_local global i32 0, align 4
@sortlist = dso_local global [5001 x i32] zeroinitializer, align 16
@biggest = dso_local global i32 0, align 4
@littlest = dso_local global i32 0, align 4
@top = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @Initrand() #0 {
  store i32 74755, ptr @seed, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Rand() #0 {
  %1 = load i32, ptr @seed, align 4
  %2 = mul nsw i32 %1, 1309
  %3 = add nsw i32 %2, 13849
  %4 = and i32 %3, 65535
  store i32 %4, ptr @seed, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local float @Cos(float noundef %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  store float %0, ptr %2, align 4
  store float 1.000000e+00, ptr %5, align 4
  store i32 1, ptr %4, align 4
  store float %0, ptr %6, align 4
  store i32 2, ptr %3, align 4
  br label %7

7:                                                ; preds = %31, %1
  %8 = phi float [ %32, %31 ], [ 1.000000e+00, %1 ]
  %9 = phi float [ %15, %31 ], [ %0, %1 ]
  %10 = phi i32 [ %14, %31 ], [ 1, %1 ]
  %11 = phi i32 [ %33, %31 ], [ 2, %1 ]
  %12 = icmp sle i32 %11, 10
  br i1 %12, label %13, label %34

13:                                               ; preds = %7
  %14 = mul nsw i32 %10, %11
  %15 = fmul float %9, %0
  %16 = and i32 %11, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %13
  %19 = and i32 %11, 3
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = sitofp i32 %14 to float
  %23 = fdiv float %15, %22
  %24 = fadd float %8, %23
  br label %29

25:                                               ; preds = %18
  %26 = sitofp i32 %14 to float
  %27 = fdiv float %15, %26
  %28 = fsub float %8, %27
  br label %29

29:                                               ; preds = %25, %21
  %30 = phi float [ %28, %25 ], [ %24, %21 ]
  br label %31

31:                                               ; preds = %29, %13
  %32 = phi float [ %30, %29 ], [ %8, %13 ]
  %33 = add nsw i32 %11, 1
  br label %7, !llvm.loop !7

34:                                               ; preds = %7
  store i32 %11, ptr %3, align 4
  store i32 %10, ptr %4, align 4
  store float %9, ptr %6, align 4
  store float %8, ptr %5, align 4
  ret float %8
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Min0(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, ptr %4, align 4
  store i32 %1, ptr %5, align 4
  %6 = icmp slt i32 %0, %1
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  store i32 %0, ptr %3, align 4
  br label %9

8:                                                ; preds = %2
  store i32 %1, ptr %3, align 4
  br label %9

9:                                                ; preds = %8, %7
  %10 = phi i32 [ %1, %8 ], [ %0, %7 ]
  ret i32 %10
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Printcomplex(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  store i32 %1, ptr %6, align 4
  store i32 %2, ptr %7, align 4
  store i32 %3, ptr %8, align 4
  %10 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  store i32 %1, ptr %9, align 4
  br label %11

11:                                               ; preds = %11, %4
  %12 = phi i32 [ %31, %11 ], [ %1, %4 ]
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.complex, ptr %0, i64 %13
  %15 = load float, ptr %14, align 4
  %16 = fpext float %15 to double
  %17 = getelementptr inbounds nuw %struct.complex, ptr %14, i32 0, i32 1
  %18 = load float, ptr %17, align 4
  %19 = fpext float %18 to double
  %20 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, double noundef %16, double noundef %19)
  %21 = add nsw i32 %12, %3
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.complex, ptr %0, i64 %22
  %24 = load float, ptr %23, align 4
  %25 = fpext float %24 to double
  %26 = getelementptr inbounds nuw %struct.complex, ptr %23, i32 0, i32 1
  %27 = load float, ptr %26, align 4
  %28 = fpext float %27 to double
  %29 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, double noundef %25, double noundef %28)
  %30 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %31 = add nsw i32 %21, %3
  %32 = icmp sle i32 %31, %2
  br i1 %32, label %11, label %33, !llvm.loop !9

33:                                               ; preds = %11
  store i32 %31, ptr %9, align 4
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @Uniform11(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load i32, ptr %0, align 4
  %6 = mul nsw i32 4855, %5
  %7 = add nsw i32 %6, 1731
  %8 = and i32 %7, 8191
  store i32 %8, ptr %0, align 4
  %9 = sitofp i32 %8 to float
  %10 = fdiv float %9, 8.192000e+03
  store float %10, ptr %1, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Exptab(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca [26 x float], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store ptr %1, ptr %4, align 8
  store float f0x40490FDB, ptr %5, align 4
  store float 4.000000e+00, ptr %6, align 4
  store i32 1, ptr %8, align 4
  br label %13

13:                                               ; preds = %17, %2
  %14 = phi float [ %24, %17 ], [ 4.000000e+00, %2 ]
  %15 = phi i32 [ %25, %17 ], [ 1, %2 ]
  %16 = icmp sle i32 %15, 25
  br i1 %16, label %17, label %26

17:                                               ; preds = %13
  %18 = fdiv float f0x40490FDB, %14
  %19 = call float @Cos(float noundef %18)
  %20 = fmul float 2.000000e+00, %19
  %21 = fdiv float 1.000000e+00, %20
  %22 = sext i32 %15 to i64
  %23 = getelementptr inbounds [26 x float], ptr %7, i64 0, i64 %22
  store float %21, ptr %23, align 4
  %24 = fadd float %14, %14
  %25 = add nsw i32 %15, 1
  br label %13, !llvm.loop !10

26:                                               ; preds = %13
  store i32 %15, ptr %8, align 4
  store float %14, ptr %6, align 4
  %27 = sdiv i32 %0, 2
  store i32 %27, ptr %12, align 4
  %28 = sdiv i32 %27, 2
  store i32 %28, ptr %11, align 4
  store i32 1, ptr %9, align 4
  %29 = getelementptr inbounds %struct.complex, ptr %1, i64 1
  store float 1.000000e+00, ptr %29, align 4
  %30 = getelementptr inbounds nuw %struct.complex, ptr %29, i32 0, i32 1
  store float 0.000000e+00, ptr %30, align 4
  %31 = add nsw i32 %28, 1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.complex, ptr %1, i64 %32
  store float 0.000000e+00, ptr %33, align 4
  %34 = getelementptr inbounds nuw %struct.complex, ptr %33, i32 0, i32 1
  store float 1.000000e+00, ptr %34, align 4
  %35 = add nsw i32 %27, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.complex, ptr %1, i64 %36
  store float -1.000000e+00, ptr %37, align 4
  %38 = getelementptr inbounds nuw %struct.complex, ptr %37, i32 0, i32 1
  store float 0.000000e+00, ptr %38, align 4
  br label %39

39:                                               ; preds = %68, %26
  %40 = phi i32 [ %70, %68 ], [ 1, %26 ]
  %41 = phi i32 [ %42, %68 ], [ %28, %26 ]
  %42 = sdiv i32 %41, 2
  %43 = sext i32 %40 to i64
  %44 = getelementptr inbounds [26 x float], ptr %7, i64 0, i64 %43
  %45 = load float, ptr %44, align 4
  %invariant.op = add i32 %42, 1
  %invariant.op3 = sub i32 1, %42
  br label %46

46:                                               ; preds = %46, %39
  %47 = phi i32 [ %66, %46 ], [ %42, %39 ]
  %.reass = add i32 %47, %invariant.op
  %48 = sext i32 %.reass to i64
  %49 = getelementptr inbounds %struct.complex, ptr %1, i64 %48
  %50 = load float, ptr %49, align 4
  %.reass4 = add i32 %47, %invariant.op3
  %51 = sext i32 %.reass4 to i64
  %52 = getelementptr inbounds %struct.complex, ptr %1, i64 %51
  %53 = load float, ptr %52, align 4
  %54 = fadd float %50, %53
  %55 = fmul float %45, %54
  %56 = add nsw i32 %47, 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.complex, ptr %1, i64 %57
  store float %55, ptr %58, align 4
  %59 = getelementptr inbounds nuw %struct.complex, ptr %49, i32 0, i32 1
  %60 = load float, ptr %59, align 4
  %61 = getelementptr inbounds nuw %struct.complex, ptr %52, i32 0, i32 1
  %62 = load float, ptr %61, align 4
  %63 = fadd float %60, %62
  %64 = fmul float %45, %63
  %65 = getelementptr inbounds nuw %struct.complex, ptr %58, i32 0, i32 1
  store float %64, ptr %65, align 4
  %66 = add nsw i32 %47, %41
  %67 = icmp sle i32 %66, %27
  br i1 %67, label %46, label %68, !llvm.loop !11

68:                                               ; preds = %46
  %69 = add nsw i32 %40, 1
  %70 = call i32 @Min0(i32 noundef %69, i32 noundef 25)
  %71 = icmp sgt i32 %42, 1
  br i1 %71, label %39, label %72, !llvm.loop !12

72:                                               ; preds = %68
  store i32 %42, ptr %11, align 4
  store i32 %42, ptr %8, align 4
  store i32 %66, ptr %10, align 4
  store i32 %70, ptr %9, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Fft(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, float noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca float, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, ptr %6, align 4
  store ptr %1, ptr %7, align 8
  store ptr %2, ptr %8, align 8
  store ptr %3, ptr %9, align 8
  store float %4, ptr %10, align 4
  %17 = sdiv i32 %0, 2
  store i32 %17, ptr %15, align 4
  store i32 1, ptr %14, align 4
  br label %18

18:                                               ; preds = %84, %5
  %19 = phi i32 [ %85, %84 ], [ 1, %5 ]
  br label %20

20:                                               ; preds = %73, %18
  %.lcssa6 = phi i32 [ %71, %73 ], [ 1, %18 ]
  %21 = phi i32 [ %74, %73 ], [ %19, %18 ]
  %22 = phi i32 [ %21, %73 ], [ 0, %18 ]
  %23 = add nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.complex, ptr %3, i64 %24
  %26 = getelementptr inbounds nuw %struct.complex, ptr %25, i32 0, i32 1
  br label %27

27:                                               ; preds = %27, %20
  %28 = phi i32 [ %71, %27 ], [ %.lcssa6, %20 ]
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.complex, ptr %1, i64 %29
  %31 = load float, ptr %30, align 4
  %32 = add nsw i32 %17, %28
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.complex, ptr %1, i64 %33
  %35 = load float, ptr %34, align 4
  %36 = fadd float %31, %35
  %37 = add nsw i32 %28, %22
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.complex, ptr %2, i64 %38
  store float %36, ptr %39, align 4
  %40 = getelementptr inbounds nuw %struct.complex, ptr %30, i32 0, i32 1
  %41 = load float, ptr %40, align 4
  %42 = getelementptr inbounds nuw %struct.complex, ptr %34, i32 0, i32 1
  %43 = load float, ptr %42, align 4
  %44 = fadd float %41, %43
  %45 = getelementptr inbounds nuw %struct.complex, ptr %39, i32 0, i32 1
  store float %44, ptr %45, align 4
  %46 = load float, ptr %25, align 4
  %47 = load float, ptr %30, align 4
  %48 = load float, ptr %34, align 4
  %49 = fsub float %47, %48
  %50 = load float, ptr %26, align 4
  %51 = load float, ptr %40, align 4
  %52 = load float, ptr %42, align 4
  %53 = fsub float %51, %52
  %54 = fmul float %50, %53
  %55 = fneg float %54
  %56 = call float @llvm.fmuladd.f32(float %46, float %49, float %55)
  %57 = add nsw i32 %28, %21
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.complex, ptr %2, i64 %58
  store float %56, ptr %59, align 4
  %60 = load float, ptr %25, align 4
  %61 = load float, ptr %40, align 4
  %62 = load float, ptr %42, align 4
  %63 = fsub float %61, %62
  %64 = load float, ptr %26, align 4
  %65 = load float, ptr %30, align 4
  %66 = load float, ptr %34, align 4
  %67 = fsub float %65, %66
  %68 = fmul float %64, %67
  %69 = call float @llvm.fmuladd.f32(float %60, float %63, float %68)
  %70 = getelementptr inbounds nuw %struct.complex, ptr %59, i32 0, i32 1
  store float %69, ptr %70, align 4
  %71 = add nsw i32 %28, 1
  %72 = icmp sle i32 %71, %21
  br i1 %72, label %27, label %73, !llvm.loop !13

73:                                               ; preds = %27
  %74 = add nsw i32 %21, %19
  %75 = icmp sle i32 %74, %17
  br i1 %75, label %20, label %76, !llvm.loop !14

76:                                               ; preds = %73
  br label %77

77:                                               ; preds = %77, %76
  %78 = phi i32 [ %82, %77 ], [ 1, %76 ]
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.complex, ptr %1, i64 %79
  %81 = getelementptr inbounds %struct.complex, ptr %2, i64 %79
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %80, ptr align 4 %81, i64 8, i1 false)
  %82 = add nsw i32 %78, 1
  %83 = icmp sle i32 %82, %0
  br i1 %83, label %77, label %84, !llvm.loop !15

84:                                               ; preds = %77
  %85 = add nsw i32 %19, %19
  %86 = icmp sle i32 %85, %17
  br i1 %86, label %18, label %87, !llvm.loop !16

87:                                               ; preds = %84
  store i32 %21, ptr %13, align 4
  store i32 %85, ptr %14, align 4
  store i32 %74, ptr %12, align 4
  store i32 %71, ptr %11, align 4
  store i32 %82, ptr %16, align 4
  store i32 1, ptr %11, align 4
  %88 = fneg float %4
  br label %89

89:                                               ; preds = %92, %87
  %90 = phi i32 [ %100, %92 ], [ 1, %87 ]
  %91 = icmp sle i32 %90, %0
  br i1 %91, label %92, label %101

92:                                               ; preds = %89
  %93 = sext i32 %90 to i64
  %94 = getelementptr inbounds %struct.complex, ptr %1, i64 %93
  %95 = load float, ptr %94, align 4
  %96 = fmul float %4, %95
  store float %96, ptr %94, align 4
  %97 = getelementptr inbounds nuw %struct.complex, ptr %94, i32 0, i32 1
  %98 = load float, ptr %97, align 4
  %99 = fmul float %88, %98
  store float %99, ptr %97, align 4
  %100 = add nsw i32 %90, 1
  br label %89, !llvm.loop !17

101:                                              ; preds = %89
  store i32 %90, ptr %11, align 4
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @Oscar() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  call void @Exptab(i32 noundef 256, ptr noundef @e)
  store i32 5767, ptr @seed, align 4
  store i32 1, ptr %1, align 4
  br label %3

3:                                                ; preds = %7, %0
  %4 = phi i32 [ %9, %7 ], [ 5767, %0 ]
  %5 = phi i32 [ %17, %7 ], [ 1, %0 ]
  %6 = icmp sle i32 %5, 256
  br i1 %6, label %7, label %18

7:                                                ; preds = %3
  store i32 %4, ptr %2, align 4
  call void @Uniform11(ptr noundef %2, ptr noundef @zr)
  %8 = load i32, ptr %2, align 4
  store i32 %8, ptr @seed, align 4
  call void @Uniform11(ptr noundef %2, ptr noundef @zi)
  %9 = load i32, ptr %2, align 4
  store i32 %9, ptr @seed, align 4
  %10 = load float, ptr @zr, align 4
  %11 = call float @llvm.fmuladd.f32(float 2.000000e+01, float %10, float -1.000000e+01)
  %12 = sext i32 %5 to i64
  %13 = getelementptr inbounds [257 x %struct.complex], ptr @z, i64 0, i64 %12
  store float %11, ptr %13, align 8
  %14 = load float, ptr @zi, align 4
  %15 = call float @llvm.fmuladd.f32(float 2.000000e+01, float %14, float -1.000000e+01)
  %16 = getelementptr inbounds nuw %struct.complex, ptr %13, i32 0, i32 1
  store float %15, ptr %16, align 4
  %17 = add nsw i32 %5, 1
  br label %3, !llvm.loop !18

18:                                               ; preds = %3
  store i32 %5, ptr %1, align 4
  store i32 1, ptr %1, align 4
  br label %19

19:                                               ; preds = %22, %18
  %20 = phi i32 [ %23, %22 ], [ 1, %18 ]
  %21 = icmp sle i32 %20, 20
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  call void @Fft(i32 noundef 256, ptr noundef @z, ptr noundef @w, ptr noundef @e, float noundef 6.250000e-02)
  %23 = add nsw i32 %20, 1
  br label %19, !llvm.loop !19

24:                                               ; preds = %19
  store i32 %20, ptr %1, align 4
  call void @Printcomplex(ptr noundef @z, i32 noundef 1, i32 noundef 256, i32 noundef 17)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  store i32 0, ptr %2, align 4
  br label %3

3:                                                ; preds = %6, %0
  %4 = phi i32 [ %7, %6 ], [ 0, %0 ]
  %5 = icmp slt i32 %4, 10
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  call void @Oscar()
  %7 = add nsw i32 %4, 1
  br label %3, !llvm.loop !20

8:                                                ; preds = %3
  store i32 %4, ptr %2, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 23.0.0git (https://github.com/llvm/llvm-project.git aac212f0bc9acbc40a8a2e9638f4b7496c25d0b2)", isOptimized: false, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "E:/llvm-test-suite/SingleSource/Benchmarks/Stanford/Oscar.c", directory: "E:/Phase Ordering/v3")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 1, !"MaxTLSAlign", i32 65536}
!6 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project.git aac212f0bc9acbc40a8a2e9638f4b7496c25d0b2)"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = distinct !{!9, !8}
!10 = distinct !{!10, !8}
!11 = distinct !{!11, !8}
!12 = distinct !{!12, !8}
!13 = distinct !{!13, !8}
!14 = distinct !{!14, !8}
!15 = distinct !{!15, !8}
!16 = distinct !{!16, !8}
!17 = distinct !{!17, !8}
!18 = distinct !{!18, !8}
!19 = distinct !{!19, !8}
!20 = distinct !{!20, !8}
