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
  %8 = phi float [ %15, %31 ], [ %0, %1 ]
  %9 = phi i32 [ %14, %31 ], [ 1, %1 ]
  %10 = phi float [ %32, %31 ], [ 1.000000e+00, %1 ]
  %11 = phi i32 [ %33, %31 ], [ 2, %1 ]
  %12 = icmp sle i32 %11, 10
  br i1 %12, label %13, label %34

13:                                               ; preds = %7
  %14 = mul nsw i32 %9, %11
  store i32 %14, ptr %4, align 4
  %15 = fmul float %8, %0
  store float %15, ptr %6, align 4
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
  %24 = fadd float %10, %23
  store float %24, ptr %5, align 4
  br label %29

25:                                               ; preds = %18
  %26 = sitofp i32 %14 to float
  %27 = fdiv float %15, %26
  %28 = fsub float %10, %27
  store float %28, ptr %5, align 4
  br label %29

29:                                               ; preds = %25, %21
  %30 = phi float [ %28, %25 ], [ %24, %21 ]
  br label %31

31:                                               ; preds = %29, %13
  %32 = phi float [ %30, %29 ], [ %10, %13 ]
  %33 = add nsw i32 %11, 1
  store i32 %33, ptr %3, align 4
  br label %7, !llvm.loop !7

34:                                               ; preds = %7
  ret float %10
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
  store i32 %21, ptr %9, align 4
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
  store i32 %31, ptr %9, align 4
  %32 = icmp sle i32 %31, %2
  br i1 %32, label %11, label %33, !llvm.loop !9

33:                                               ; preds = %11
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
  store float %24, ptr %6, align 4
  %25 = add nsw i32 %15, 1
  store i32 %25, ptr %8, align 4
  br label %13, !llvm.loop !10

26:                                               ; preds = %13
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

39:                                               ; preds = %96, %26
  %40 = phi ptr [ %71, %96 ], [ %1, %26 ]
  %41 = phi i32 [ %98, %96 ], [ 1, %26 ]
  %42 = phi i32 [ %73, %96 ], [ %28, %26 ]
  %43 = sdiv i32 %42, 2
  store i32 %43, ptr %8, align 4
  store i32 %43, ptr %10, align 4
  %.phi.trans.insert = sext i32 %41 to i64
  %.phi.trans.insert1 = getelementptr inbounds [26 x float], ptr %7, i64 0, i64 %.phi.trans.insert
  %.pre = load float, ptr %.phi.trans.insert1, align 4
  br label %44

44:                                               ; preds = %44, %39
  %45 = phi i32 [ %73, %44 ], [ %43, %39 ]
  %46 = phi i32 [ %93, %44 ], [ %43, %39 ]
  %47 = phi ptr [ %71, %44 ], [ %40, %39 ]
  %48 = phi float [ %70, %44 ], [ %.pre, %39 ]
  %49 = phi i32 [ %67, %44 ], [ %41, %39 ]
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [26 x float], ptr %7, i64 0, i64 %50
  %52 = add nsw i32 %46, %45
  %53 = add nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.complex, ptr %47, i64 %54
  %56 = load float, ptr %55, align 4
  %57 = sub nsw i32 %46, %45
  %58 = add nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.complex, ptr %47, i64 %59
  %61 = load float, ptr %60, align 4
  %62 = fadd float %56, %61
  %63 = fmul float %48, %62
  %64 = add nsw i32 %46, 1
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.complex, ptr %47, i64 %65
  store float %63, ptr %66, align 4
  %67 = load i32, ptr %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [26 x float], ptr %7, i64 0, i64 %68
  %70 = load float, ptr %69, align 4
  %71 = load ptr, ptr %4, align 8
  %72 = load i32, ptr %10, align 4
  %73 = load i32, ptr %8, align 4
  %74 = add nsw i32 %72, %73
  %75 = add nsw i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.complex, ptr %71, i64 %76
  %78 = getelementptr inbounds nuw %struct.complex, ptr %77, i32 0, i32 1
  %79 = load float, ptr %78, align 4
  %80 = sub nsw i32 %72, %73
  %81 = add nsw i32 %80, 1
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.complex, ptr %71, i64 %82
  %84 = getelementptr inbounds nuw %struct.complex, ptr %83, i32 0, i32 1
  %85 = load float, ptr %84, align 4
  %86 = fadd float %79, %85
  %87 = fmul float %70, %86
  %88 = add nsw i32 %72, 1
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.complex, ptr %71, i64 %89
  %91 = getelementptr inbounds nuw %struct.complex, ptr %90, i32 0, i32 1
  store float %87, ptr %91, align 4
  %92 = load i32, ptr %11, align 4
  %93 = add nsw i32 %72, %92
  store i32 %93, ptr %10, align 4
  %94 = load i32, ptr %12, align 4
  %95 = icmp sle i32 %93, %94
  br i1 %95, label %44, label %96, !llvm.loop !11

96:                                               ; preds = %44
  %97 = add nsw i32 %67, 1
  %98 = call i32 @Min0(i32 noundef %97, i32 noundef 25)
  store i32 %98, ptr %9, align 4
  store i32 %73, ptr %11, align 4
  %99 = icmp sgt i32 %73, 1
  br i1 %99, label %39, label %100, !llvm.loop !12

100:                                              ; preds = %96
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

18:                                               ; preds = %110, %5
  %19 = phi ptr [ %59, %110 ], [ %2, %5 ]
  %20 = phi i32 [ %52, %110 ], [ %17, %5 ]
  %21 = phi ptr [ %46, %110 ], [ %1, %5 ]
  %22 = phi i32 [ %111, %110 ], [ 1, %5 ]
  store i32 0, ptr %13, align 4
  store i32 %22, ptr %12, align 4
  store i32 1, ptr %11, align 4
  br label %23

23:                                               ; preds = %98, %18
  %24 = phi i32 [ %81, %98 ], [ 0, %18 ]
  %25 = phi ptr [ %59, %98 ], [ %19, %18 ]
  %26 = phi i32 [ %52, %98 ], [ %20, %18 ]
  %27 = phi i32 [ %96, %98 ], [ 1, %18 ]
  %28 = phi ptr [ %46, %98 ], [ %21, %18 ]
  br label %29

29:                                               ; preds = %29, %23
  %30 = phi i32 [ %60, %29 ], [ %24, %23 ]
  %31 = phi ptr [ %59, %29 ], [ %25, %23 ]
  %32 = phi i32 [ %52, %29 ], [ %26, %23 ]
  %33 = phi i32 [ %96, %29 ], [ %27, %23 ]
  %34 = phi ptr [ %46, %29 ], [ %28, %23 ]
  %35 = sext i32 %33 to i64
  %36 = getelementptr inbounds %struct.complex, ptr %34, i64 %35
  %37 = load float, ptr %36, align 4
  %38 = add nsw i32 %32, %33
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.complex, ptr %34, i64 %39
  %41 = load float, ptr %40, align 4
  %42 = fadd float %37, %41
  %43 = add nsw i32 %33, %30
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.complex, ptr %31, i64 %44
  store float %42, ptr %45, align 4
  %46 = load ptr, ptr %7, align 8
  %47 = load i32, ptr %11, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.complex, ptr %46, i64 %48
  %50 = getelementptr inbounds nuw %struct.complex, ptr %49, i32 0, i32 1
  %51 = load float, ptr %50, align 4
  %52 = load i32, ptr %15, align 4
  %53 = add nsw i32 %52, %47
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.complex, ptr %46, i64 %54
  %56 = getelementptr inbounds nuw %struct.complex, ptr %55, i32 0, i32 1
  %57 = load float, ptr %56, align 4
  %58 = fadd float %51, %57
  %59 = load ptr, ptr %8, align 8
  %60 = load i32, ptr %13, align 4
  %61 = add nsw i32 %47, %60
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.complex, ptr %59, i64 %62
  %64 = getelementptr inbounds nuw %struct.complex, ptr %63, i32 0, i32 1
  store float %58, ptr %64, align 4
  %65 = load ptr, ptr %9, align 8
  %66 = add nsw i32 %60, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.complex, ptr %65, i64 %67
  %69 = load float, ptr %68, align 4
  %70 = load float, ptr %49, align 4
  %71 = load float, ptr %55, align 4
  %72 = fsub float %70, %71
  %73 = getelementptr inbounds nuw %struct.complex, ptr %68, i32 0, i32 1
  %74 = load float, ptr %73, align 4
  %75 = load float, ptr %50, align 4
  %76 = load float, ptr %56, align 4
  %77 = fsub float %75, %76
  %78 = fmul float %74, %77
  %79 = fneg float %78
  %80 = call float @llvm.fmuladd.f32(float %69, float %72, float %79)
  %81 = load i32, ptr %12, align 4
  %82 = add nsw i32 %47, %81
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.complex, ptr %59, i64 %83
  store float %80, ptr %84, align 4
  %85 = load float, ptr %68, align 4
  %86 = load float, ptr %50, align 4
  %87 = load float, ptr %56, align 4
  %88 = fsub float %86, %87
  %89 = load float, ptr %73, align 4
  %90 = load float, ptr %49, align 4
  %91 = load float, ptr %55, align 4
  %92 = fsub float %90, %91
  %93 = fmul float %89, %92
  %94 = call float @llvm.fmuladd.f32(float %85, float %88, float %93)
  %95 = getelementptr inbounds nuw %struct.complex, ptr %84, i32 0, i32 1
  store float %94, ptr %95, align 4
  %96 = add nsw i32 %47, 1
  store i32 %96, ptr %11, align 4
  %97 = icmp sle i32 %96, %81
  br i1 %97, label %29, label %98, !llvm.loop !13

98:                                               ; preds = %29
  store i32 %81, ptr %13, align 4
  %99 = load i32, ptr %14, align 4
  %100 = add nsw i32 %81, %99
  store i32 %100, ptr %12, align 4
  %101 = icmp sle i32 %100, %52
  br i1 %101, label %23, label %102, !llvm.loop !14

102:                                              ; preds = %98
  store i32 1, ptr %16, align 4
  %.pre = load i32, ptr %6, align 4
  br label %103

103:                                              ; preds = %103, %102
  %104 = phi i32 [ %108, %103 ], [ 1, %102 ]
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.complex, ptr %46, i64 %105
  %107 = getelementptr inbounds %struct.complex, ptr %59, i64 %105
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %106, ptr align 4 %107, i64 8, i1 false)
  %108 = add nsw i32 %104, 1
  store i32 %108, ptr %16, align 4
  %109 = icmp sle i32 %108, %.pre
  br i1 %109, label %103, label %110, !llvm.loop !15

110:                                              ; preds = %103
  %111 = add nsw i32 %99, %99
  store i32 %111, ptr %14, align 4
  %112 = icmp sle i32 %111, %52
  br i1 %112, label %18, label %113, !llvm.loop !16

113:                                              ; preds = %110
  store i32 1, ptr %11, align 4
  br label %114

114:                                              ; preds = %117, %113
  %115 = phi i32 [ %127, %117 ], [ 1, %113 ]
  %116 = icmp sle i32 %115, %.pre
  br i1 %116, label %117, label %128

117:                                              ; preds = %114
  %118 = load float, ptr %10, align 4
  %119 = sext i32 %115 to i64
  %120 = getelementptr inbounds %struct.complex, ptr %46, i64 %119
  %121 = load float, ptr %120, align 4
  %122 = fmul float %118, %121
  store float %122, ptr %120, align 4
  %123 = fneg float %118
  %124 = getelementptr inbounds nuw %struct.complex, ptr %120, i32 0, i32 1
  %125 = load float, ptr %124, align 4
  %126 = fmul float %123, %125
  store float %126, ptr %124, align 4
  %127 = add nsw i32 %115, 1
  store i32 %127, ptr %11, align 4
  br label %114, !llvm.loop !17

128:                                              ; preds = %114
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
  store i32 %17, ptr %1, align 4
  br label %3, !llvm.loop !18

18:                                               ; preds = %3
  store i32 1, ptr %1, align 4
  br label %19

19:                                               ; preds = %22, %18
  %20 = phi i32 [ %23, %22 ], [ 1, %18 ]
  %21 = icmp sle i32 %20, 20
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  call void @Fft(i32 noundef 256, ptr noundef @z, ptr noundef @w, ptr noundef @e, float noundef 6.250000e-02)
  %23 = add nsw i32 %20, 1
  store i32 %23, ptr %1, align 4
  br label %19, !llvm.loop !19

24:                                               ; preds = %19
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
  store i32 %7, ptr %2, align 4
  br label %3, !llvm.loop !20

8:                                                ; preds = %3
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
