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
  br label %7

7:                                                ; preds = %35, %1
  %storemerge = phi i32 [ 2, %1 ], [ %37, %35 ]
  store i32 %storemerge, ptr %3, align 4
  %8 = icmp slt i32 %storemerge, 11
  br i1 %8, label %9, label %38

9:                                                ; preds = %7
  %10 = load i32, ptr %4, align 4
  %11 = mul nsw i32 %10, %storemerge
  store i32 %11, ptr %4, align 4
  %12 = load float, ptr %6, align 4
  %13 = load float, ptr %2, align 4
  %14 = fmul float %12, %13
  store float %14, ptr %6, align 4
  %15 = load i32, ptr %3, align 4
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %34

18:                                               ; preds = %9
  %19 = and i32 %15, 3
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = load float, ptr %5, align 4
  %23 = load i32, ptr %4, align 4
  %24 = sitofp i32 %23 to float
  %25 = fdiv float %14, %24
  %26 = fadd float %22, %25
  br label %33

27:                                               ; preds = %18
  %28 = load float, ptr %5, align 4
  %29 = load i32, ptr %4, align 4
  %30 = sitofp i32 %29 to float
  %31 = fdiv float %14, %30
  %32 = fsub float %28, %31
  br label %33

33:                                               ; preds = %27, %21
  %storemerge1 = phi float [ %32, %27 ], [ %26, %21 ]
  store float %storemerge1, ptr %5, align 4
  br label %34

34:                                               ; preds = %33, %9
  br label %35

35:                                               ; preds = %34
  %36 = load i32, ptr %3, align 4
  %37 = add nsw i32 %36, 1
  br label %7, !llvm.loop !7

38:                                               ; preds = %7
  %39 = load float, ptr %5, align 4
  ret float %39
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Min0(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  %5 = icmp slt i32 %0, %1
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = load i32, ptr %3, align 4
  br label %9

8:                                                ; preds = %2
  br label %9

9:                                                ; preds = %8, %6
  %storemerge = phi i32 [ %1, %8 ], [ %7, %6 ]
  ret i32 %storemerge
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Printcomplex(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  store i32 %2, ptr %6, align 4
  store i32 %3, ptr %7, align 4
  %putchar = call i32 @putchar(i32 10)
  store i32 %1, ptr %8, align 4
  br label %9

9:                                                ; preds = %35, %4
  %10 = load ptr, ptr %5, align 8
  %11 = load i32, ptr %8, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [8 x i8], ptr %10, i64 %12
  %14 = load float, ptr %13, align 4
  %15 = fpext float %14 to double
  %16 = getelementptr inbounds nuw i8, ptr %13, i64 4
  %17 = load float, ptr %16, align 4
  %18 = fpext float %17 to double
  %19 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %15, double noundef %18) #5
  %20 = load i32, ptr %8, align 4
  %21 = load i32, ptr %7, align 4
  %22 = add nsw i32 %20, %21
  store i32 %22, ptr %8, align 4
  %23 = load ptr, ptr %5, align 8
  %24 = sext i32 %22 to i64
  %25 = getelementptr inbounds [8 x i8], ptr %23, i64 %24
  %26 = load float, ptr %25, align 4
  %27 = fpext float %26 to double
  %28 = getelementptr inbounds nuw i8, ptr %25, i64 4
  %29 = load float, ptr %28, align 4
  %30 = fpext float %29 to double
  %31 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %27, double noundef %30) #5
  %putchar1 = call i32 @putchar(i32 10)
  %32 = load i32, ptr %8, align 4
  %33 = load i32, ptr %7, align 4
  %34 = add nsw i32 %32, %33
  store i32 %34, ptr %8, align 4
  br label %35

35:                                               ; preds = %9
  %36 = load i32, ptr %6, align 4
  %.not = icmp sgt i32 %34, %36
  br i1 %.not, label %37, label %9, !llvm.loop !9

37:                                               ; preds = %35
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
  %6 = mul nsw i32 %5, 4855
  %7 = add nsw i32 %6, 1731
  %8 = and i32 %7, 8191
  store i32 %8, ptr %0, align 4
  %9 = load ptr, ptr %3, align 8
  %10 = load i32, ptr %9, align 4
  %11 = sitofp i32 %10 to float
  %12 = fmul nnan float %11, f0x39000000
  %13 = load ptr, ptr %4, align 8
  store float %12, ptr %13, align 4
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
  br label %13

13:                                               ; preds = %27, %2
  %storemerge = phi i32 [ 1, %2 ], [ %29, %27 ]
  store i32 %storemerge, ptr %8, align 4
  %14 = icmp slt i32 %storemerge, 26
  br i1 %14, label %15, label %30

15:                                               ; preds = %13
  %16 = load float, ptr %5, align 4
  %17 = load float, ptr %6, align 4
  %18 = fdiv float %16, %17
  %19 = call float @Cos(float noundef %18)
  %20 = fmul float %19, 2.000000e+00
  %21 = fdiv float 1.000000e+00, %20
  %22 = load i32, ptr %8, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [4 x i8], ptr %7, i64 %23
  store float %21, ptr %24, align 4
  %25 = load float, ptr %6, align 4
  %26 = fadd float %25, %25
  store float %26, ptr %6, align 4
  br label %27

27:                                               ; preds = %15
  %28 = load i32, ptr %8, align 4
  %29 = add nsw i32 %28, 1
  br label %13, !llvm.loop !10

30:                                               ; preds = %13
  %31 = load i32, ptr %3, align 4
  %32 = sdiv i32 %31, 2
  store i32 %32, ptr %12, align 4
  %33 = sdiv i32 %31, 4
  store i32 %33, ptr %11, align 4
  store i32 1, ptr %9, align 4
  %34 = load ptr, ptr %4, align 8
  %35 = getelementptr inbounds nuw i8, ptr %34, i64 8
  store float 1.000000e+00, ptr %35, align 4
  %36 = getelementptr inbounds nuw i8, ptr %34, i64 12
  store float 0.000000e+00, ptr %36, align 4
  %37 = load i32, ptr %11, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr [8 x i8], ptr %34, i64 %38
  %40 = getelementptr i8, ptr %39, i64 8
  store float 0.000000e+00, ptr %40, align 4
  %41 = load ptr, ptr %4, align 8
  %42 = getelementptr [8 x i8], ptr %41, i64 %38
  %43 = getelementptr i8, ptr %42, i64 12
  store float 1.000000e+00, ptr %43, align 4
  %44 = load i32, ptr %12, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr [8 x i8], ptr %41, i64 %45
  %47 = getelementptr i8, ptr %46, i64 8
  store float -1.000000e+00, ptr %47, align 4
  %48 = load ptr, ptr %4, align 8
  %49 = getelementptr [8 x i8], ptr %48, i64 %45
  %50 = getelementptr i8, ptr %49, i64 12
  store float 0.000000e+00, ptr %50, align 4
  br label %51

51:                                               ; preds = %108, %30
  %52 = load i32, ptr %11, align 4
  %53 = sdiv i32 %52, 2
  store i32 %53, ptr %8, align 4
  store i32 %53, ptr %10, align 4
  br label %54

54:                                               ; preds = %101, %51
  %55 = load i32, ptr %9, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [4 x i8], ptr %7, i64 %56
  %58 = load float, ptr %57, align 4
  %59 = load ptr, ptr %4, align 8
  %60 = load i32, ptr %10, align 4
  %61 = load i32, ptr %8, align 4
  %62 = add nsw i32 %60, %61
  %63 = sext i32 %62 to i64
  %64 = getelementptr [8 x i8], ptr %59, i64 %63
  %65 = getelementptr i8, ptr %64, i64 8
  %66 = load float, ptr %65, align 4
  %67 = sub nsw i32 %60, %61
  %68 = sext i32 %67 to i64
  %69 = getelementptr [8 x i8], ptr %59, i64 %68
  %70 = getelementptr i8, ptr %69, i64 8
  %71 = load float, ptr %70, align 4
  %72 = fadd float %66, %71
  %73 = fmul float %58, %72
  %74 = sext i32 %60 to i64
  %75 = getelementptr [8 x i8], ptr %59, i64 %74
  %76 = getelementptr i8, ptr %75, i64 8
  store float %73, ptr %76, align 4
  %77 = load i32, ptr %9, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [4 x i8], ptr %7, i64 %78
  %80 = load float, ptr %79, align 4
  %81 = load ptr, ptr %4, align 8
  %82 = load i32, ptr %10, align 4
  %83 = load i32, ptr %8, align 4
  %84 = add nsw i32 %82, %83
  %85 = sext i32 %84 to i64
  %86 = getelementptr [8 x i8], ptr %81, i64 %85
  %87 = getelementptr i8, ptr %86, i64 12
  %88 = load float, ptr %87, align 4
  %89 = sub nsw i32 %82, %83
  %90 = sext i32 %89 to i64
  %91 = getelementptr [8 x i8], ptr %81, i64 %90
  %92 = getelementptr i8, ptr %91, i64 12
  %93 = load float, ptr %92, align 4
  %94 = fadd float %88, %93
  %95 = fmul float %80, %94
  %96 = sext i32 %82 to i64
  %97 = getelementptr [8 x i8], ptr %81, i64 %96
  %98 = getelementptr i8, ptr %97, i64 12
  store float %95, ptr %98, align 4
  %99 = load i32, ptr %11, align 4
  %100 = add nsw i32 %82, %99
  store i32 %100, ptr %10, align 4
  br label %101

101:                                              ; preds = %54
  %102 = load i32, ptr %12, align 4
  %.not = icmp sgt i32 %100, %102
  br i1 %.not, label %103, label %54, !llvm.loop !11

103:                                              ; preds = %101
  %104 = load i32, ptr %9, align 4
  %105 = add nsw i32 %104, 1
  %106 = call i32 @Min0(i32 noundef %105, i32 noundef 25)
  store i32 %106, ptr %9, align 4
  %107 = load i32, ptr %8, align 4
  store i32 %107, ptr %11, align 4
  br label %108

108:                                              ; preds = %103
  %109 = icmp sgt i32 %107, 1
  br i1 %109, label %51, label %110, !llvm.loop !12

110:                                              ; preds = %108
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

18:                                               ; preds = %146, %5
  store i32 0, ptr %13, align 4
  %19 = load i32, ptr %14, align 4
  store i32 %19, ptr %12, align 4
  store i32 1, ptr %11, align 4
  br label %20

20:                                               ; preds = %128, %18
  br label %21

21:                                               ; preds = %123, %20
  %22 = load ptr, ptr %7, align 8
  %23 = load i32, ptr %11, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [8 x i8], ptr %22, i64 %24
  %26 = load float, ptr %25, align 4
  %27 = load i32, ptr %15, align 4
  %28 = add nsw i32 %27, %23
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [8 x i8], ptr %22, i64 %29
  %31 = load float, ptr %30, align 4
  %32 = fadd float %26, %31
  %33 = load ptr, ptr %8, align 8
  %34 = load i32, ptr %13, align 4
  %35 = add nsw i32 %23, %34
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [8 x i8], ptr %33, i64 %36
  store float %32, ptr %37, align 4
  %38 = load ptr, ptr %7, align 8
  %39 = load i32, ptr %11, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [8 x i8], ptr %38, i64 %40
  %42 = getelementptr inbounds nuw i8, ptr %41, i64 4
  %43 = load float, ptr %42, align 4
  %44 = load i32, ptr %15, align 4
  %45 = add nsw i32 %44, %39
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [8 x i8], ptr %38, i64 %46
  %48 = getelementptr inbounds nuw i8, ptr %47, i64 4
  %49 = load float, ptr %48, align 4
  %50 = fadd float %43, %49
  %51 = load ptr, ptr %8, align 8
  %52 = load i32, ptr %13, align 4
  %53 = add nsw i32 %39, %52
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [8 x i8], ptr %51, i64 %54
  %56 = getelementptr inbounds nuw i8, ptr %55, i64 4
  store float %50, ptr %56, align 4
  %57 = load ptr, ptr %9, align 8
  %58 = load i32, ptr %13, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr [8 x i8], ptr %57, i64 %59
  %61 = getelementptr i8, ptr %60, i64 8
  %62 = load float, ptr %61, align 4
  %63 = load ptr, ptr %7, align 8
  %64 = load i32, ptr %11, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [8 x i8], ptr %63, i64 %65
  %67 = load float, ptr %66, align 4
  %68 = load i32, ptr %15, align 4
  %69 = add nsw i32 %64, %68
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [8 x i8], ptr %63, i64 %70
  %72 = load float, ptr %71, align 4
  %73 = fsub float %67, %72
  %74 = getelementptr i8, ptr %60, i64 12
  %75 = load float, ptr %74, align 4
  %76 = getelementptr inbounds nuw i8, ptr %66, i64 4
  %77 = load float, ptr %76, align 4
  %78 = getelementptr inbounds nuw i8, ptr %71, i64 4
  %79 = load float, ptr %78, align 4
  %80 = fsub float %77, %79
  %81 = fneg float %80
  %82 = fmul float %75, %81
  %83 = call float @llvm.fmuladd.f32(float %62, float %73, float %82)
  %84 = load ptr, ptr %8, align 8
  %85 = load i32, ptr %12, align 4
  %86 = add nsw i32 %64, %85
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [8 x i8], ptr %84, i64 %87
  store float %83, ptr %88, align 4
  %89 = load ptr, ptr %9, align 8
  %90 = load i32, ptr %13, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr [8 x i8], ptr %89, i64 %91
  %93 = getelementptr i8, ptr %92, i64 8
  %94 = load float, ptr %93, align 4
  %95 = load ptr, ptr %7, align 8
  %96 = load i32, ptr %11, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [8 x i8], ptr %95, i64 %97
  %99 = getelementptr inbounds nuw i8, ptr %98, i64 4
  %100 = load float, ptr %99, align 4
  %101 = load i32, ptr %15, align 4
  %102 = add nsw i32 %96, %101
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [8 x i8], ptr %95, i64 %103
  %105 = getelementptr inbounds nuw i8, ptr %104, i64 4
  %106 = load float, ptr %105, align 4
  %107 = fsub float %100, %106
  %108 = getelementptr i8, ptr %92, i64 12
  %109 = load float, ptr %108, align 4
  %110 = load float, ptr %98, align 4
  %111 = load float, ptr %104, align 4
  %112 = fsub float %110, %111
  %113 = fmul float %109, %112
  %114 = call float @llvm.fmuladd.f32(float %94, float %107, float %113)
  %115 = load ptr, ptr %8, align 8
  %116 = load i32, ptr %12, align 4
  %117 = add nsw i32 %96, %116
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [8 x i8], ptr %115, i64 %118
  %120 = getelementptr inbounds nuw i8, ptr %119, i64 4
  store float %114, ptr %120, align 4
  %121 = load i32, ptr %11, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, ptr %11, align 4
  br label %123

123:                                              ; preds = %21
  %124 = load i32, ptr %12, align 4
  %.not = icmp sgt i32 %122, %124
  br i1 %.not, label %125, label %21, !llvm.loop !13

125:                                              ; preds = %123
  store i32 %124, ptr %13, align 4
  %126 = load i32, ptr %14, align 4
  %127 = add nsw i32 %124, %126
  store i32 %127, ptr %12, align 4
  br label %128

128:                                              ; preds = %125
  %129 = load i32, ptr %15, align 4
  %.not1 = icmp sgt i32 %127, %129
  br i1 %.not1, label %130, label %20, !llvm.loop !14

130:                                              ; preds = %128
  store i32 1, ptr %16, align 4
  br label %131

131:                                              ; preds = %141, %130
  %132 = load ptr, ptr %7, align 8
  %133 = load i32, ptr %16, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds [8 x i8], ptr %132, i64 %134
  %136 = load ptr, ptr %8, align 8
  %137 = getelementptr inbounds [8 x i8], ptr %136, i64 %134
  %138 = load i64, ptr %137, align 4
  store i64 %138, ptr %135, align 4
  %139 = load i32, ptr %16, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, ptr %16, align 4
  br label %141

141:                                              ; preds = %131
  %142 = load i32, ptr %6, align 4
  %.not2 = icmp sgt i32 %140, %142
  br i1 %.not2, label %143, label %131, !llvm.loop !15

143:                                              ; preds = %141
  %144 = load i32, ptr %14, align 4
  %145 = shl nsw i32 %144, 1
  store i32 %145, ptr %14, align 4
  br label %146

146:                                              ; preds = %143
  %147 = load i32, ptr %15, align 4
  %.not3 = icmp sgt i32 %145, %147
  br i1 %.not3, label %148, label %18, !llvm.loop !16

148:                                              ; preds = %146
  br label %149

149:                                              ; preds = %167, %148
  %storemerge = phi i32 [ 1, %148 ], [ %169, %167 ]
  store i32 %storemerge, ptr %11, align 4
  %150 = load i32, ptr %6, align 4
  %.not4 = icmp sgt i32 %storemerge, %150
  br i1 %.not4, label %170, label %151

151:                                              ; preds = %149
  %152 = load float, ptr %10, align 4
  %153 = load ptr, ptr %7, align 8
  %154 = sext i32 %storemerge to i64
  %155 = getelementptr inbounds [8 x i8], ptr %153, i64 %154
  %156 = load float, ptr %155, align 4
  %157 = fmul float %152, %156
  store float %157, ptr %155, align 4
  %158 = load float, ptr %10, align 4
  %159 = fneg float %158
  %160 = load ptr, ptr %7, align 8
  %161 = load i32, ptr %11, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds [8 x i8], ptr %160, i64 %162
  %164 = getelementptr inbounds nuw i8, ptr %163, i64 4
  %165 = load float, ptr %164, align 4
  %166 = fmul float %165, %159
  store float %166, ptr %164, align 4
  br label %167

167:                                              ; preds = %151
  %168 = load i32, ptr %11, align 4
  %169 = add nsw i32 %168, 1
  br label %149, !llvm.loop !17

170:                                              ; preds = %149
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
  call void @Exptab(i32 noundef 256, ptr noundef nonnull @e)
  store i32 5767, ptr @seed, align 4
  br label %3

3:                                                ; preds = %17, %0
  %storemerge = phi i32 [ 1, %0 ], [ %19, %17 ]
  store i32 %storemerge, ptr %1, align 4
  %4 = icmp slt i32 %storemerge, 257
  br i1 %4, label %5, label %20

5:                                                ; preds = %3
  %6 = load i32, ptr @seed, align 4
  store i32 %6, ptr %2, align 4
  call void @Uniform11(ptr noundef nonnull %2, ptr noundef nonnull @zr)
  %7 = load i32, ptr %2, align 4
  store i32 %7, ptr @seed, align 4
  call void @Uniform11(ptr noundef nonnull %2, ptr noundef nonnull @zi)
  %8 = load i32, ptr %2, align 4
  store i32 %8, ptr @seed, align 4
  %9 = load float, ptr @zr, align 4
  %10 = call float @llvm.fmuladd.f32(float %9, float 2.000000e+01, float -1.000000e+01)
  %11 = load i32, ptr %1, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [8 x i8], ptr @z, i64 %12
  store float %10, ptr %13, align 8
  %14 = load float, ptr @zi, align 4
  %15 = call float @llvm.fmuladd.f32(float %14, float 2.000000e+01, float -1.000000e+01)
  %16 = getelementptr inbounds nuw i8, ptr %13, i64 4
  store float %15, ptr %16, align 4
  br label %17

17:                                               ; preds = %5
  %18 = load i32, ptr %1, align 4
  %19 = add nsw i32 %18, 1
  br label %3, !llvm.loop !18

20:                                               ; preds = %3
  br label %21

21:                                               ; preds = %24, %20
  %storemerge1 = phi i32 [ 1, %20 ], [ %26, %24 ]
  store i32 %storemerge1, ptr %1, align 4
  %22 = icmp slt i32 %storemerge1, 21
  br i1 %22, label %23, label %27

23:                                               ; preds = %21
  call void @Fft(i32 noundef 256, ptr noundef nonnull @z, ptr noundef nonnull @w, ptr noundef nonnull @e, float noundef 6.250000e-02)
  br label %24

24:                                               ; preds = %23
  %25 = load i32, ptr %1, align 4
  %26 = add nsw i32 %25, 1
  br label %21, !llvm.loop !19

27:                                               ; preds = %21
  call void @Printcomplex(ptr noundef nonnull @z, i32 noundef 1, i32 noundef 256, i32 noundef 17)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  br label %2

2:                                                ; preds = %5, %0
  %storemerge = phi i32 [ 0, %0 ], [ %7, %5 ]
  store i32 %storemerge, ptr %1, align 4
  %3 = icmp slt i32 %storemerge, 10
  br i1 %3, label %4, label %8

4:                                                ; preds = %2
  call void @Oscar()
  br label %5

5:                                                ; preds = %4
  %6 = load i32, ptr %1, align 4
  %7 = add nsw i32 %6, 1
  br label %2, !llvm.loop !20

8:                                                ; preds = %2
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) #4

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree nounwind }
attributes #5 = { nounwind }

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
