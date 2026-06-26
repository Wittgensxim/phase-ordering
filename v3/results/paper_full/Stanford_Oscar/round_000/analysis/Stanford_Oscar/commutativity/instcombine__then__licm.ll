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
  %7 = load float, ptr %2, align 4
  %.promoted = load i32, ptr %4, align 4
  %.promoted2 = load float, ptr %6, align 4
  %.promoted4 = load float, ptr %5, align 4
  br label %8

8:                                                ; preds = %32, %1
  %storemerge16 = phi float [ %.promoted4, %1 ], [ %storemerge15, %32 ]
  %9 = phi float [ %.promoted2, %1 ], [ %30, %32 ]
  %10 = phi i32 [ %.promoted, %1 ], [ %31, %32 ]
  %storemerge = phi i32 [ 2, %1 ], [ %33, %32 ]
  %11 = icmp slt i32 %storemerge, 11
  br i1 %11, label %12, label %34

12:                                               ; preds = %8
  %13 = mul nsw i32 %10, %storemerge
  %14 = fmul float %9, %7
  %15 = and i32 %storemerge, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %12
  %18 = and i32 %storemerge, 3
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = sitofp i32 %13 to float
  %22 = fdiv float %14, %21
  %23 = fadd float %storemerge16, %22
  br label %28

24:                                               ; preds = %17
  %25 = sitofp i32 %13 to float
  %26 = fdiv float %14, %25
  %27 = fsub float %storemerge16, %26
  br label %28

28:                                               ; preds = %24, %20
  %storemerge1 = phi float [ %27, %24 ], [ %23, %20 ]
  br label %29

29:                                               ; preds = %28, %12
  %storemerge15 = phi float [ %storemerge1, %28 ], [ %storemerge16, %12 ]
  %30 = phi float [ %14, %28 ], [ %14, %12 ]
  %31 = phi i32 [ %13, %28 ], [ %13, %12 ]
  br label %32

32:                                               ; preds = %29
  %33 = add nsw i32 %storemerge, 1
  br label %8, !llvm.loop !7

34:                                               ; preds = %8
  %storemerge16.lcssa = phi float [ %storemerge16, %8 ]
  %.lcssa3 = phi float [ %9, %8 ]
  %.lcssa = phi i32 [ %10, %8 ]
  %storemerge.lcssa = phi i32 [ %storemerge, %8 ]
  store i32 %storemerge.lcssa, ptr %3, align 4
  store i32 %.lcssa, ptr %4, align 4
  store float %.lcssa3, ptr %6, align 4
  store float %storemerge16.lcssa, ptr %5, align 4
  %35 = load float, ptr %5, align 4
  ret float %35
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
  br label %10

8:                                                ; preds = %2
  %9 = load i32, ptr %4, align 4
  br label %10

10:                                               ; preds = %8, %6
  %storemerge = phi i32 [ %9, %8 ], [ %7, %6 ]
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
  %9 = load ptr, ptr %5, align 8
  %10 = load i32, ptr %7, align 4
  %11 = load ptr, ptr %5, align 8
  %12 = load i32, ptr %7, align 4
  %13 = load i32, ptr %6, align 4
  %.promoted = load i32, ptr %8, align 4
  br label %14

14:                                               ; preds = %38, %4
  %15 = phi i32 [ %37, %38 ], [ %.promoted, %4 ]
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [8 x i8], ptr %9, i64 %16
  %18 = load float, ptr %17, align 4
  %19 = fpext float %18 to double
  %20 = sext i32 %15 to i64
  %21 = getelementptr inbounds [8 x i8], ptr %9, i64 %20
  %22 = getelementptr inbounds nuw i8, ptr %21, i64 4
  %23 = load float, ptr %22, align 4
  %24 = fpext float %23 to double
  %25 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %19, double noundef %24) #5
  %26 = add nsw i32 %15, %10
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [8 x i8], ptr %11, i64 %27
  %29 = load float, ptr %28, align 4
  %30 = fpext float %29 to double
  %31 = sext i32 %26 to i64
  %32 = getelementptr inbounds [8 x i8], ptr %11, i64 %31
  %33 = getelementptr inbounds nuw i8, ptr %32, i64 4
  %34 = load float, ptr %33, align 4
  %35 = fpext float %34 to double
  %36 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %30, double noundef %35) #5
  %putchar1 = call i32 @putchar(i32 10)
  %37 = add nsw i32 %26, %12
  br label %38

38:                                               ; preds = %14
  %.not = icmp sgt i32 %37, %13
  br i1 %.not, label %39, label %14, !llvm.loop !9

39:                                               ; preds = %38
  %.lcssa = phi i32 [ %37, %38 ]
  store i32 %.lcssa, ptr %8, align 4
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
  %13 = load float, ptr %5, align 4
  %.promoted = load float, ptr %6, align 4
  br label %14

14:                                               ; preds = %25, %2
  %15 = phi float [ %.promoted, %2 ], [ %24, %25 ]
  %storemerge = phi i32 [ 1, %2 ], [ %26, %25 ]
  %16 = icmp slt i32 %storemerge, 26
  br i1 %16, label %17, label %27

17:                                               ; preds = %14
  %18 = fdiv float %13, %15
  %19 = call float @Cos(float noundef %18)
  %20 = fmul float %19, 2.000000e+00
  %21 = fdiv float 1.000000e+00, %20
  %22 = sext i32 %storemerge to i64
  %23 = getelementptr inbounds [4 x i8], ptr %7, i64 %22
  store float %21, ptr %23, align 4
  %24 = fadd float %15, %15
  br label %25

25:                                               ; preds = %17
  %26 = add nsw i32 %storemerge, 1
  br label %14, !llvm.loop !10

27:                                               ; preds = %14
  %.lcssa = phi float [ %15, %14 ]
  %storemerge.lcssa = phi i32 [ %storemerge, %14 ]
  store i32 %storemerge.lcssa, ptr %8, align 4
  store float %.lcssa, ptr %6, align 4
  %28 = load i32, ptr %3, align 4
  %29 = sdiv i32 %28, 2
  store i32 %29, ptr %12, align 4
  %30 = sdiv i32 %28, 4
  store i32 %30, ptr %11, align 4
  store i32 1, ptr %9, align 4
  %31 = load ptr, ptr %4, align 8
  %32 = getelementptr inbounds nuw i8, ptr %31, i64 8
  store float 1.000000e+00, ptr %32, align 4
  %33 = getelementptr inbounds nuw i8, ptr %31, i64 12
  store float 0.000000e+00, ptr %33, align 4
  %34 = load i32, ptr %11, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr [8 x i8], ptr %31, i64 %35
  %37 = getelementptr i8, ptr %36, i64 8
  store float 0.000000e+00, ptr %37, align 4
  %38 = load ptr, ptr %4, align 8
  %39 = sext i32 %34 to i64
  %40 = getelementptr [8 x i8], ptr %38, i64 %39
  %41 = getelementptr i8, ptr %40, i64 12
  store float 1.000000e+00, ptr %41, align 4
  %42 = load i32, ptr %12, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr [8 x i8], ptr %38, i64 %43
  %45 = getelementptr i8, ptr %44, i64 8
  store float -1.000000e+00, ptr %45, align 4
  %46 = load ptr, ptr %4, align 8
  %47 = sext i32 %42 to i64
  %48 = getelementptr [8 x i8], ptr %46, i64 %47
  %49 = getelementptr i8, ptr %48, i64 12
  store float 0.000000e+00, ptr %49, align 4
  %50 = load ptr, ptr %4, align 8
  %51 = load ptr, ptr %4, align 8
  %52 = load ptr, ptr %4, align 8
  %53 = load ptr, ptr %4, align 8
  %54 = load ptr, ptr %4, align 8
  %55 = load ptr, ptr %4, align 8
  %56 = load i32, ptr %12, align 4
  %.promoted3 = load i32, ptr %11, align 4
  %.promoted8 = load i32, ptr %9, align 4
  br label %57

57:                                               ; preds = %104, %27
  %58 = phi i32 [ %103, %104 ], [ %.promoted8, %27 ]
  %59 = phi i32 [ %60, %104 ], [ %.promoted3, %27 ]
  %60 = sdiv i32 %59, 2
  %61 = sext i32 %58 to i64
  %62 = getelementptr inbounds [4 x i8], ptr %7, i64 %61
  %63 = load float, ptr %62, align 4
  %64 = sext i32 %58 to i64
  %65 = getelementptr inbounds [4 x i8], ptr %7, i64 %64
  %66 = load float, ptr %65, align 4
  br label %67

67:                                               ; preds = %100, %57
  %68 = phi i32 [ %99, %100 ], [ %60, %57 ]
  %69 = add nsw i32 %68, %60
  %70 = sext i32 %69 to i64
  %71 = getelementptr [8 x i8], ptr %50, i64 %70
  %72 = getelementptr i8, ptr %71, i64 8
  %73 = load float, ptr %72, align 4
  %74 = sub nsw i32 %68, %60
  %75 = sext i32 %74 to i64
  %76 = getelementptr [8 x i8], ptr %51, i64 %75
  %77 = getelementptr i8, ptr %76, i64 8
  %78 = load float, ptr %77, align 4
  %79 = fadd float %73, %78
  %80 = fmul float %63, %79
  %81 = sext i32 %68 to i64
  %82 = getelementptr [8 x i8], ptr %52, i64 %81
  %83 = getelementptr i8, ptr %82, i64 8
  store float %80, ptr %83, align 4
  %84 = add nsw i32 %68, %60
  %85 = sext i32 %84 to i64
  %86 = getelementptr [8 x i8], ptr %53, i64 %85
  %87 = getelementptr i8, ptr %86, i64 12
  %88 = load float, ptr %87, align 4
  %89 = sub nsw i32 %68, %60
  %90 = sext i32 %89 to i64
  %91 = getelementptr [8 x i8], ptr %54, i64 %90
  %92 = getelementptr i8, ptr %91, i64 12
  %93 = load float, ptr %92, align 4
  %94 = fadd float %88, %93
  %95 = fmul float %66, %94
  %96 = sext i32 %68 to i64
  %97 = getelementptr [8 x i8], ptr %55, i64 %96
  %98 = getelementptr i8, ptr %97, i64 12
  store float %95, ptr %98, align 4
  %99 = add nsw i32 %68, %59
  br label %100

100:                                              ; preds = %67
  %.not = icmp sgt i32 %99, %56
  br i1 %.not, label %101, label %67, !llvm.loop !11

101:                                              ; preds = %100
  %.lcssa2 = phi i32 [ %99, %100 ]
  %102 = add nsw i32 %58, 1
  %103 = call i32 @Min0(i32 noundef %102, i32 noundef 25)
  br label %104

104:                                              ; preds = %101
  %105 = icmp sgt i32 %60, 1
  br i1 %105, label %57, label %106, !llvm.loop !12

106:                                              ; preds = %104
  %.lcssa9 = phi i32 [ %103, %104 ]
  %.lcssa2.lcssa = phi i32 [ %.lcssa2, %104 ]
  %.lcssa6 = phi i32 [ %60, %104 ]
  %.lcssa4 = phi i32 [ %60, %104 ]
  store i32 %.lcssa4, ptr %11, align 4
  store i32 %.lcssa6, ptr %8, align 4
  store i32 %.lcssa2.lcssa, ptr %10, align 4
  store i32 %.lcssa9, ptr %9, align 4
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
  %18 = load ptr, ptr %7, align 8
  %19 = load i32, ptr %15, align 4
  %20 = load ptr, ptr %8, align 8
  %21 = load ptr, ptr %7, align 8
  %22 = load i32, ptr %15, align 4
  %23 = load ptr, ptr %8, align 8
  %24 = load ptr, ptr %9, align 8
  %25 = load ptr, ptr %7, align 8
  %26 = load i32, ptr %15, align 4
  %27 = load ptr, ptr %9, align 8
  %28 = load ptr, ptr %7, align 8
  %29 = load i32, ptr %15, align 4
  %30 = load ptr, ptr %8, align 8
  %31 = load ptr, ptr %9, align 8
  %32 = load ptr, ptr %7, align 8
  %33 = load i32, ptr %15, align 4
  %34 = load ptr, ptr %9, align 8
  %35 = load ptr, ptr %7, align 8
  %36 = load i32, ptr %15, align 4
  %37 = load ptr, ptr %8, align 8
  %38 = load i32, ptr %15, align 4
  %39 = load ptr, ptr %7, align 8
  %40 = load ptr, ptr %8, align 8
  %41 = load i32, ptr %6, align 4
  %42 = load i32, ptr %15, align 4
  %.promoted13 = load i32, ptr %14, align 4
  br label %43

43:                                               ; preds = %156, %5
  %44 = phi i32 [ %155, %156 ], [ %.promoted13, %5 ]
  br label %45

45:                                               ; preds = %143, %43
  %.lcssa10 = phi i32 [ %.lcssa, %143 ], [ 1, %43 ]
  %46 = phi i32 [ %142, %143 ], [ %44, %43 ]
  %47 = phi i32 [ %46, %143 ], [ 0, %43 ]
  %48 = sext i32 %47 to i64
  %49 = getelementptr [8 x i8], ptr %24, i64 %48
  %50 = getelementptr i8, ptr %49, i64 8
  %51 = sext i32 %47 to i64
  %52 = getelementptr [8 x i8], ptr %27, i64 %51
  %53 = getelementptr i8, ptr %52, i64 12
  %54 = sext i32 %47 to i64
  %55 = getelementptr [8 x i8], ptr %31, i64 %54
  %56 = getelementptr i8, ptr %55, i64 8
  %57 = sext i32 %47 to i64
  %58 = getelementptr [8 x i8], ptr %34, i64 %57
  %59 = getelementptr i8, ptr %58, i64 12
  br label %60

60:                                               ; preds = %140, %45
  %61 = phi i32 [ %139, %140 ], [ %.lcssa10, %45 ]
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [8 x i8], ptr %18, i64 %62
  %64 = load float, ptr %63, align 4
  %65 = add nsw i32 %19, %61
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [8 x i8], ptr %18, i64 %66
  %68 = load float, ptr %67, align 4
  %69 = fadd float %64, %68
  %70 = add nsw i32 %61, %47
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [8 x i8], ptr %20, i64 %71
  store float %69, ptr %72, align 4
  %73 = sext i32 %61 to i64
  %74 = getelementptr inbounds [8 x i8], ptr %21, i64 %73
  %75 = getelementptr inbounds nuw i8, ptr %74, i64 4
  %76 = load float, ptr %75, align 4
  %77 = add nsw i32 %22, %61
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [8 x i8], ptr %21, i64 %78
  %80 = getelementptr inbounds nuw i8, ptr %79, i64 4
  %81 = load float, ptr %80, align 4
  %82 = fadd float %76, %81
  %83 = add nsw i32 %61, %47
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [8 x i8], ptr %23, i64 %84
  %86 = getelementptr inbounds nuw i8, ptr %85, i64 4
  store float %82, ptr %86, align 4
  %87 = load float, ptr %50, align 4
  %88 = sext i32 %61 to i64
  %89 = getelementptr inbounds [8 x i8], ptr %25, i64 %88
  %90 = load float, ptr %89, align 4
  %91 = add nsw i32 %61, %26
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [8 x i8], ptr %25, i64 %92
  %94 = load float, ptr %93, align 4
  %95 = fsub float %90, %94
  %96 = load float, ptr %53, align 4
  %97 = sext i32 %61 to i64
  %98 = getelementptr inbounds [8 x i8], ptr %28, i64 %97
  %99 = getelementptr inbounds nuw i8, ptr %98, i64 4
  %100 = load float, ptr %99, align 4
  %101 = add nsw i32 %61, %29
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [8 x i8], ptr %28, i64 %102
  %104 = getelementptr inbounds nuw i8, ptr %103, i64 4
  %105 = load float, ptr %104, align 4
  %106 = fsub float %100, %105
  %107 = fneg float %106
  %108 = fmul float %96, %107
  %109 = call float @llvm.fmuladd.f32(float %87, float %95, float %108)
  %110 = add nsw i32 %61, %46
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [8 x i8], ptr %30, i64 %111
  store float %109, ptr %112, align 4
  %113 = load float, ptr %56, align 4
  %114 = sext i32 %61 to i64
  %115 = getelementptr inbounds [8 x i8], ptr %32, i64 %114
  %116 = getelementptr inbounds nuw i8, ptr %115, i64 4
  %117 = load float, ptr %116, align 4
  %118 = add nsw i32 %61, %33
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [8 x i8], ptr %32, i64 %119
  %121 = getelementptr inbounds nuw i8, ptr %120, i64 4
  %122 = load float, ptr %121, align 4
  %123 = fsub float %117, %122
  %124 = load float, ptr %59, align 4
  %125 = sext i32 %61 to i64
  %126 = getelementptr inbounds [8 x i8], ptr %35, i64 %125
  %127 = load float, ptr %126, align 4
  %128 = add nsw i32 %61, %36
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds [8 x i8], ptr %35, i64 %129
  %131 = load float, ptr %130, align 4
  %132 = fsub float %127, %131
  %133 = fmul float %124, %132
  %134 = call float @llvm.fmuladd.f32(float %113, float %123, float %133)
  %135 = add nsw i32 %61, %46
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [8 x i8], ptr %37, i64 %136
  %138 = getelementptr inbounds nuw i8, ptr %137, i64 4
  store float %134, ptr %138, align 4
  %139 = add nsw i32 %61, 1
  br label %140

140:                                              ; preds = %60
  %.not = icmp sgt i32 %139, %46
  br i1 %.not, label %141, label %60, !llvm.loop !13

141:                                              ; preds = %140
  %.lcssa = phi i32 [ %139, %140 ]
  %142 = add nsw i32 %46, %44
  br label %143

143:                                              ; preds = %141
  %.not1 = icmp sgt i32 %142, %38
  br i1 %.not1, label %144, label %45, !llvm.loop !14

144:                                              ; preds = %143
  %.lcssa.lcssa = phi i32 [ %.lcssa, %143 ]
  %.lcssa8 = phi i32 [ %142, %143 ]
  %.lcssa6 = phi i32 [ %46, %143 ]
  br label %145

145:                                              ; preds = %153, %144
  %146 = phi i32 [ %152, %153 ], [ 1, %144 ]
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [8 x i8], ptr %39, i64 %147
  %149 = sext i32 %146 to i64
  %150 = getelementptr inbounds [8 x i8], ptr %40, i64 %149
  %151 = load i64, ptr %150, align 4
  store i64 %151, ptr %148, align 4
  %152 = add nsw i32 %146, 1
  br label %153

153:                                              ; preds = %145
  %.not2 = icmp sgt i32 %152, %41
  br i1 %.not2, label %154, label %145, !llvm.loop !15

154:                                              ; preds = %153
  %.lcssa11 = phi i32 [ %152, %153 ]
  %155 = shl nsw i32 %44, 1
  br label %156

156:                                              ; preds = %154
  %.not3 = icmp sgt i32 %155, %42
  br i1 %.not3, label %157, label %43, !llvm.loop !16

157:                                              ; preds = %156
  %.lcssa11.lcssa = phi i32 [ %.lcssa11, %156 ]
  %.lcssa.lcssa.lcssa = phi i32 [ %.lcssa.lcssa, %156 ]
  %.lcssa8.lcssa = phi i32 [ %.lcssa8, %156 ]
  %.lcssa14 = phi i32 [ %155, %156 ]
  %.lcssa6.lcssa = phi i32 [ %.lcssa6, %156 ]
  store i32 %.lcssa6.lcssa, ptr %13, align 4
  store i32 %.lcssa14, ptr %14, align 4
  store i32 %.lcssa8.lcssa, ptr %12, align 4
  store i32 %.lcssa.lcssa.lcssa, ptr %11, align 4
  store i32 %.lcssa11.lcssa, ptr %16, align 4
  %158 = load i32, ptr %6, align 4
  %159 = load float, ptr %10, align 4
  %160 = load ptr, ptr %7, align 8
  %161 = load float, ptr %10, align 4
  %162 = fneg float %161
  %163 = load ptr, ptr %7, align 8
  %164 = load ptr, ptr %7, align 8
  br label %165

165:                                              ; preds = %181, %157
  %storemerge = phi i32 [ 1, %157 ], [ %182, %181 ]
  %.not4 = icmp sgt i32 %storemerge, %158
  br i1 %.not4, label %183, label %166

166:                                              ; preds = %165
  %167 = sext i32 %storemerge to i64
  %168 = getelementptr inbounds [8 x i8], ptr %160, i64 %167
  %169 = load float, ptr %168, align 4
  %170 = fmul float %159, %169
  %171 = sext i32 %storemerge to i64
  %172 = getelementptr inbounds [8 x i8], ptr %160, i64 %171
  store float %170, ptr %172, align 4
  %173 = sext i32 %storemerge to i64
  %174 = getelementptr inbounds [8 x i8], ptr %163, i64 %173
  %175 = getelementptr inbounds nuw i8, ptr %174, i64 4
  %176 = load float, ptr %175, align 4
  %177 = fmul float %176, %162
  %178 = sext i32 %storemerge to i64
  %179 = getelementptr inbounds [8 x i8], ptr %164, i64 %178
  %180 = getelementptr inbounds nuw i8, ptr %179, i64 4
  store float %177, ptr %180, align 4
  br label %181

181:                                              ; preds = %166
  %182 = add nsw i32 %storemerge, 1
  br label %165, !llvm.loop !17

183:                                              ; preds = %165
  %storemerge.lcssa = phi i32 [ %storemerge, %165 ]
  store i32 %storemerge.lcssa, ptr %11, align 4
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

3:                                                ; preds = %18, %0
  %storemerge = phi i32 [ 1, %0 ], [ %19, %18 ]
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
  %11 = sext i32 %storemerge to i64
  %12 = getelementptr inbounds [8 x i8], ptr @z, i64 %11
  store float %10, ptr %12, align 8
  %13 = load float, ptr @zi, align 4
  %14 = call float @llvm.fmuladd.f32(float %13, float 2.000000e+01, float -1.000000e+01)
  %15 = sext i32 %storemerge to i64
  %16 = getelementptr inbounds [8 x i8], ptr @z, i64 %15
  %17 = getelementptr inbounds nuw i8, ptr %16, i64 4
  store float %14, ptr %17, align 4
  br label %18

18:                                               ; preds = %5
  %19 = add nsw i32 %storemerge, 1
  br label %3, !llvm.loop !18

20:                                               ; preds = %3
  %storemerge.lcssa = phi i32 [ %storemerge, %3 ]
  store i32 %storemerge.lcssa, ptr %1, align 4
  br label %21

21:                                               ; preds = %24, %20
  %storemerge1 = phi i32 [ 1, %20 ], [ %25, %24 ]
  %22 = icmp slt i32 %storemerge1, 21
  br i1 %22, label %23, label %26

23:                                               ; preds = %21
  call void @Fft(i32 noundef 256, ptr noundef nonnull @z, ptr noundef nonnull @w, ptr noundef nonnull @e, float noundef 6.250000e-02)
  br label %24

24:                                               ; preds = %23
  %25 = add nsw i32 %storemerge1, 1
  br label %21, !llvm.loop !19

26:                                               ; preds = %21
  %storemerge1.lcssa = phi i32 [ %storemerge1, %21 ]
  store i32 %storemerge1.lcssa, ptr %1, align 4
  call void @Printcomplex(ptr noundef nonnull @z, i32 noundef 1, i32 noundef 256, i32 noundef 17)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  br label %2

2:                                                ; preds = %5, %0
  %storemerge = phi i32 [ 0, %0 ], [ %6, %5 ]
  %3 = icmp slt i32 %storemerge, 10
  br i1 %3, label %4, label %7

4:                                                ; preds = %2
  call void @Oscar()
  br label %5

5:                                                ; preds = %4
  %6 = add nsw i32 %storemerge, 1
  br label %2, !llvm.loop !20

7:                                                ; preds = %2
  %storemerge.lcssa = phi i32 [ %storemerge, %2 ]
  store i32 %storemerge.lcssa, ptr %1, align 4
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
