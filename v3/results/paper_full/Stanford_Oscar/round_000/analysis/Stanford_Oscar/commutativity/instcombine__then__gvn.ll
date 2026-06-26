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

7:                                                ; preds = %30, %1
  %8 = phi float [ %0, %1 ], [ %15, %30 ]
  %9 = phi i32 [ 1, %1 ], [ %14, %30 ]
  %10 = phi float [ 1.000000e+00, %1 ], [ %31, %30 ]
  %11 = phi i32 [ 2, %1 ], [ %32, %30 ]
  store i32 %11, ptr %3, align 4
  %12 = icmp slt i32 %11, 11
  br i1 %12, label %13, label %33

13:                                               ; preds = %7
  %14 = mul nsw i32 %9, %11
  store i32 %14, ptr %4, align 4
  %15 = fmul float %8, %0
  store float %15, ptr %6, align 4
  %16 = and i32 %11, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %13
  %19 = and i32 %11, 3
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = sitofp i32 %14 to float
  %23 = fdiv float %15, %22
  %24 = fadd float %10, %23
  br label %29

25:                                               ; preds = %18
  %26 = sitofp i32 %14 to float
  %27 = fdiv float %15, %26
  %28 = fsub float %10, %27
  br label %29

29:                                               ; preds = %25, %21
  %storemerge1 = phi float [ %28, %25 ], [ %24, %21 ]
  store float %storemerge1, ptr %5, align 4
  br label %30

30:                                               ; preds = %29, %13
  %31 = phi float [ %storemerge1, %29 ], [ %10, %13 ]
  %32 = add nsw i32 %11, 1
  br label %7, !llvm.loop !7

33:                                               ; preds = %7
  ret float %10
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Min0(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  %5 = icmp slt i32 %0, %1
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  br label %8

7:                                                ; preds = %2
  br label %8

8:                                                ; preds = %7, %6
  %storemerge = phi i32 [ %1, %7 ], [ %0, %6 ]
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

9:                                                ; preds = %9, %4
  %10 = phi i32 [ %28, %9 ], [ %1, %4 ]
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [8 x i8], ptr %0, i64 %11
  %13 = load float, ptr %12, align 4
  %14 = fpext float %13 to double
  %15 = getelementptr inbounds nuw i8, ptr %12, i64 4
  %16 = load float, ptr %15, align 4
  %17 = fpext float %16 to double
  %18 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %14, double noundef %17) #5
  %19 = add nsw i32 %10, %3
  store i32 %19, ptr %8, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [8 x i8], ptr %0, i64 %20
  %22 = load float, ptr %21, align 4
  %23 = fpext float %22 to double
  %24 = getelementptr inbounds nuw i8, ptr %21, i64 4
  %25 = load float, ptr %24, align 4
  %26 = fpext float %25 to double
  %27 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %23, double noundef %26) #5
  %putchar1 = call i32 @putchar(i32 10)
  %28 = add nsw i32 %19, %3
  store i32 %28, ptr %8, align 4
  %.not = icmp sgt i32 %28, %2
  br i1 %.not, label %29, label %9, !llvm.loop !9

29:                                               ; preds = %9
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
  %9 = sitofp i32 %8 to float
  %10 = fmul nnan float %9, f0x39000000
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
  br label %13

13:                                               ; preds = %17, %2
  %14 = phi float [ 4.000000e+00, %2 ], [ %24, %17 ]
  %15 = phi i32 [ 1, %2 ], [ %25, %17 ]
  store i32 %15, ptr %8, align 4
  %16 = icmp slt i32 %15, 26
  br i1 %16, label %17, label %26

17:                                               ; preds = %13
  %18 = fdiv float f0x40490FDB, %14
  %19 = call float @Cos(float noundef %18)
  %20 = fmul float %19, 2.000000e+00
  %21 = fdiv float 1.000000e+00, %20
  %22 = sext i32 %15 to i64
  %23 = getelementptr inbounds [4 x i8], ptr %7, i64 %22
  store float %21, ptr %23, align 4
  %24 = fadd float %14, %14
  store float %24, ptr %6, align 4
  %25 = add nsw i32 %15, 1
  br label %13, !llvm.loop !10

26:                                               ; preds = %13
  %27 = sdiv i32 %0, 2
  store i32 %27, ptr %12, align 4
  %28 = sdiv i32 %0, 4
  store i32 %28, ptr %11, align 4
  store i32 1, ptr %9, align 4
  %29 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float 1.000000e+00, ptr %29, align 4
  %30 = getelementptr inbounds nuw i8, ptr %1, i64 12
  store float 0.000000e+00, ptr %30, align 4
  %31 = sext i32 %28 to i64
  %32 = getelementptr [8 x i8], ptr %1, i64 %31
  %33 = getelementptr i8, ptr %32, i64 8
  store float 0.000000e+00, ptr %33, align 4
  %34 = getelementptr i8, ptr %32, i64 12
  store float 1.000000e+00, ptr %34, align 4
  %35 = sext i32 %27 to i64
  %36 = getelementptr [8 x i8], ptr %1, i64 %35
  %37 = getelementptr i8, ptr %36, i64 8
  store float -1.000000e+00, ptr %37, align 4
  %38 = getelementptr i8, ptr %36, i64 12
  store float 0.000000e+00, ptr %38, align 4
  br label %39

39:                                               ; preds = %92, %26
  %40 = phi ptr [ %71, %92 ], [ %1, %26 ]
  %41 = phi i32 [ %94, %92 ], [ 1, %26 ]
  %42 = phi i32 [ %73, %92 ], [ %28, %26 ]
  %43 = sdiv i32 %42, 2
  store i32 %43, ptr %8, align 4
  store i32 %43, ptr %10, align 4
  %.phi.trans.insert = sext i32 %41 to i64
  %.phi.trans.insert1 = getelementptr inbounds [4 x i8], ptr %7, i64 %.phi.trans.insert
  %.pre = load float, ptr %.phi.trans.insert1, align 4
  br label %44

44:                                               ; preds = %44, %39
  %45 = phi i32 [ %73, %44 ], [ %43, %39 ]
  %46 = phi i32 [ %90, %44 ], [ %43, %39 ]
  %47 = phi ptr [ %71, %44 ], [ %40, %39 ]
  %48 = phi float [ %70, %44 ], [ %.pre, %39 ]
  %49 = phi i32 [ %67, %44 ], [ %41, %39 ]
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [4 x i8], ptr %7, i64 %50
  %52 = add nsw i32 %46, %45
  %53 = sext i32 %52 to i64
  %54 = getelementptr [8 x i8], ptr %47, i64 %53
  %55 = getelementptr i8, ptr %54, i64 8
  %56 = load float, ptr %55, align 4
  %57 = sub nsw i32 %46, %45
  %58 = sext i32 %57 to i64
  %59 = getelementptr [8 x i8], ptr %47, i64 %58
  %60 = getelementptr i8, ptr %59, i64 8
  %61 = load float, ptr %60, align 4
  %62 = fadd float %56, %61
  %63 = fmul float %48, %62
  %64 = sext i32 %46 to i64
  %65 = getelementptr [8 x i8], ptr %47, i64 %64
  %66 = getelementptr i8, ptr %65, i64 8
  store float %63, ptr %66, align 4
  %67 = load i32, ptr %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [4 x i8], ptr %7, i64 %68
  %70 = load float, ptr %69, align 4
  %71 = load ptr, ptr %4, align 8
  %72 = load i32, ptr %10, align 4
  %73 = load i32, ptr %8, align 4
  %74 = add nsw i32 %72, %73
  %75 = sext i32 %74 to i64
  %76 = getelementptr [8 x i8], ptr %71, i64 %75
  %77 = getelementptr i8, ptr %76, i64 12
  %78 = load float, ptr %77, align 4
  %79 = sub nsw i32 %72, %73
  %80 = sext i32 %79 to i64
  %81 = getelementptr [8 x i8], ptr %71, i64 %80
  %82 = getelementptr i8, ptr %81, i64 12
  %83 = load float, ptr %82, align 4
  %84 = fadd float %78, %83
  %85 = fmul float %70, %84
  %86 = sext i32 %72 to i64
  %87 = getelementptr [8 x i8], ptr %71, i64 %86
  %88 = getelementptr i8, ptr %87, i64 12
  store float %85, ptr %88, align 4
  %89 = load i32, ptr %11, align 4
  %90 = add nsw i32 %72, %89
  store i32 %90, ptr %10, align 4
  %91 = load i32, ptr %12, align 4
  %.not = icmp sgt i32 %90, %91
  br i1 %.not, label %92, label %44, !llvm.loop !11

92:                                               ; preds = %44
  %93 = add nsw i32 %67, 1
  %94 = call i32 @Min0(i32 noundef %93, i32 noundef 25)
  store i32 %94, ptr %9, align 4
  store i32 %73, ptr %11, align 4
  %95 = icmp sgt i32 %73, 1
  br i1 %95, label %39, label %96, !llvm.loop !12

96:                                               ; preds = %92
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

18:                                               ; preds = %108, %5
  %19 = phi ptr [ %59, %108 ], [ %2, %5 ]
  %20 = phi i32 [ %52, %108 ], [ %17, %5 ]
  %21 = phi ptr [ %46, %108 ], [ %1, %5 ]
  %22 = phi i32 [ %109, %108 ], [ 1, %5 ]
  store i32 0, ptr %13, align 4
  store i32 %22, ptr %12, align 4
  store i32 1, ptr %11, align 4
  br label %23

23:                                               ; preds = %97, %18
  %24 = phi i32 [ %81, %97 ], [ 0, %18 ]
  %25 = phi ptr [ %59, %97 ], [ %19, %18 ]
  %26 = phi i32 [ %52, %97 ], [ %20, %18 ]
  %27 = phi i32 [ %96, %97 ], [ 1, %18 ]
  %28 = phi ptr [ %46, %97 ], [ %21, %18 ]
  br label %29

29:                                               ; preds = %29, %23
  %30 = phi i32 [ %60, %29 ], [ %24, %23 ]
  %31 = phi ptr [ %59, %29 ], [ %25, %23 ]
  %32 = phi i32 [ %52, %29 ], [ %26, %23 ]
  %33 = phi i32 [ %96, %29 ], [ %27, %23 ]
  %34 = phi ptr [ %46, %29 ], [ %28, %23 ]
  %35 = sext i32 %33 to i64
  %36 = getelementptr inbounds [8 x i8], ptr %34, i64 %35
  %37 = load float, ptr %36, align 4
  %38 = add nsw i32 %32, %33
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [8 x i8], ptr %34, i64 %39
  %41 = load float, ptr %40, align 4
  %42 = fadd float %37, %41
  %43 = add nsw i32 %33, %30
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [8 x i8], ptr %31, i64 %44
  store float %42, ptr %45, align 4
  %46 = load ptr, ptr %7, align 8
  %47 = load i32, ptr %11, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [8 x i8], ptr %46, i64 %48
  %50 = getelementptr inbounds nuw i8, ptr %49, i64 4
  %51 = load float, ptr %50, align 4
  %52 = load i32, ptr %15, align 4
  %53 = add nsw i32 %52, %47
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [8 x i8], ptr %46, i64 %54
  %56 = getelementptr inbounds nuw i8, ptr %55, i64 4
  %57 = load float, ptr %56, align 4
  %58 = fadd float %51, %57
  %59 = load ptr, ptr %8, align 8
  %60 = load i32, ptr %13, align 4
  %61 = add nsw i32 %47, %60
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [8 x i8], ptr %59, i64 %62
  %64 = getelementptr inbounds nuw i8, ptr %63, i64 4
  store float %58, ptr %64, align 4
  %65 = load ptr, ptr %9, align 8
  %66 = sext i32 %60 to i64
  %67 = getelementptr [8 x i8], ptr %65, i64 %66
  %68 = getelementptr i8, ptr %67, i64 8
  %69 = load float, ptr %68, align 4
  %70 = load float, ptr %49, align 4
  %71 = load float, ptr %55, align 4
  %72 = fsub float %70, %71
  %73 = getelementptr i8, ptr %67, i64 12
  %74 = load float, ptr %73, align 4
  %75 = load float, ptr %50, align 4
  %76 = load float, ptr %56, align 4
  %77 = fsub float %75, %76
  %78 = fneg float %77
  %79 = fmul float %74, %78
  %80 = call float @llvm.fmuladd.f32(float %69, float %72, float %79)
  %81 = load i32, ptr %12, align 4
  %82 = add nsw i32 %47, %81
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [8 x i8], ptr %59, i64 %83
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
  %95 = getelementptr inbounds nuw i8, ptr %84, i64 4
  store float %94, ptr %95, align 4
  %96 = add nsw i32 %47, 1
  store i32 %96, ptr %11, align 4
  %.not = icmp sgt i32 %96, %81
  br i1 %.not, label %97, label %29, !llvm.loop !13

97:                                               ; preds = %29
  store i32 %81, ptr %13, align 4
  %98 = load i32, ptr %14, align 4
  %99 = add nsw i32 %81, %98
  store i32 %99, ptr %12, align 4
  %.not1 = icmp sgt i32 %99, %52
  br i1 %.not1, label %100, label %23, !llvm.loop !14

100:                                              ; preds = %97
  store i32 1, ptr %16, align 4
  %.pre = load i32, ptr %6, align 4
  br label %101

101:                                              ; preds = %101, %100
  %102 = phi i32 [ %107, %101 ], [ 1, %100 ]
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [8 x i8], ptr %46, i64 %103
  %105 = getelementptr inbounds [8 x i8], ptr %59, i64 %103
  %106 = load i64, ptr %105, align 4
  store i64 %106, ptr %104, align 4
  %107 = add nsw i32 %102, 1
  store i32 %107, ptr %16, align 4
  %.not2 = icmp sgt i32 %107, %.pre
  br i1 %.not2, label %108, label %101, !llvm.loop !15

108:                                              ; preds = %101
  %109 = shl nsw i32 %98, 1
  store i32 %109, ptr %14, align 4
  %.not3 = icmp sgt i32 %109, %52
  br i1 %.not3, label %110, label %18, !llvm.loop !16

110:                                              ; preds = %108
  br label %111

111:                                              ; preds = %113, %110
  %112 = phi i32 [ 1, %110 ], [ %123, %113 ]
  store i32 %112, ptr %11, align 4
  %.not4 = icmp sgt i32 %112, %.pre
  br i1 %.not4, label %124, label %113

113:                                              ; preds = %111
  %114 = load float, ptr %10, align 4
  %115 = sext i32 %112 to i64
  %116 = getelementptr inbounds [8 x i8], ptr %46, i64 %115
  %117 = load float, ptr %116, align 4
  %118 = fmul float %114, %117
  store float %118, ptr %116, align 4
  %119 = fneg float %114
  %120 = getelementptr inbounds nuw i8, ptr %116, i64 4
  %121 = load float, ptr %120, align 4
  %122 = fmul float %121, %119
  store float %122, ptr %120, align 4
  %123 = add nsw i32 %112, 1
  br label %111, !llvm.loop !17

124:                                              ; preds = %111
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

3:                                                ; preds = %7, %0
  %4 = phi i32 [ 5767, %0 ], [ %9, %7 ]
  %5 = phi i32 [ 1, %0 ], [ %17, %7 ]
  store i32 %5, ptr %1, align 4
  %6 = icmp slt i32 %5, 257
  br i1 %6, label %7, label %18

7:                                                ; preds = %3
  store i32 %4, ptr %2, align 4
  call void @Uniform11(ptr noundef nonnull %2, ptr noundef nonnull @zr)
  %8 = load i32, ptr %2, align 4
  store i32 %8, ptr @seed, align 4
  call void @Uniform11(ptr noundef nonnull %2, ptr noundef nonnull @zi)
  %9 = load i32, ptr %2, align 4
  store i32 %9, ptr @seed, align 4
  %10 = load float, ptr @zr, align 4
  %11 = call float @llvm.fmuladd.f32(float %10, float 2.000000e+01, float -1.000000e+01)
  %12 = sext i32 %5 to i64
  %13 = getelementptr inbounds [8 x i8], ptr @z, i64 %12
  store float %11, ptr %13, align 8
  %14 = load float, ptr @zi, align 4
  %15 = call float @llvm.fmuladd.f32(float %14, float 2.000000e+01, float -1.000000e+01)
  %16 = getelementptr inbounds nuw i8, ptr %13, i64 4
  store float %15, ptr %16, align 4
  %17 = add nsw i32 %5, 1
  br label %3, !llvm.loop !18

18:                                               ; preds = %3
  br label %19

19:                                               ; preds = %22, %18
  %20 = phi i32 [ 1, %18 ], [ %23, %22 ]
  store i32 %20, ptr %1, align 4
  %21 = icmp slt i32 %20, 21
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  call void @Fft(i32 noundef 256, ptr noundef nonnull @z, ptr noundef nonnull @w, ptr noundef nonnull @e, float noundef 6.250000e-02)
  %23 = add nsw i32 %20, 1
  br label %19, !llvm.loop !19

24:                                               ; preds = %19
  call void @Printcomplex(ptr noundef nonnull @z, i32 noundef 1, i32 noundef 256, i32 noundef 17)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  br label %2

2:                                                ; preds = %5, %0
  %3 = phi i32 [ 0, %0 ], [ %6, %5 ]
  store i32 %3, ptr %1, align 4
  %4 = icmp slt i32 %3, 10
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  call void @Oscar()
  %6 = add nsw i32 %3, 1
  br label %2, !llvm.loop !20

7:                                                ; preds = %2
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
