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
  %7 = load float, ptr %2, align 4
  store float %7, ptr %6, align 4
  store i32 2, ptr %3, align 4
  br label %8

8:                                                ; preds = %35, %1
  %9 = load i32, ptr %3, align 4
  %10 = icmp sle i32 %9, 10
  br i1 %10, label %11, label %38

11:                                               ; preds = %8
  %12 = load i32, ptr %4, align 4
  %13 = mul nsw i32 %12, %9
  store i32 %13, ptr %4, align 4
  %14 = load float, ptr %6, align 4
  %15 = load float, ptr %2, align 4
  %16 = fmul float %14, %15
  store float %16, ptr %6, align 4
  %17 = load i32, ptr %3, align 4
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %35

20:                                               ; preds = %11
  %21 = and i32 %17, 3
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = load float, ptr %5, align 4
  %25 = load i32, ptr %4, align 4
  %26 = sitofp i32 %25 to float
  %27 = fdiv float %16, %26
  %28 = fadd float %24, %27
  store float %28, ptr %5, align 4
  br label %35

29:                                               ; preds = %20
  %30 = load float, ptr %5, align 4
  %31 = load i32, ptr %4, align 4
  %32 = sitofp i32 %31 to float
  %33 = fdiv float %16, %32
  %34 = fsub float %30, %33
  store float %34, ptr %5, align 4
  br label %35

35:                                               ; preds = %11, %29, %23
  %36 = load i32, ptr %3, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, ptr %3, align 4
  br label %8, !llvm.loop !7

38:                                               ; preds = %8
  %39 = load float, ptr %5, align 4
  ret float %39
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Min0(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, ptr %4, align 4
  store i32 %1, ptr %5, align 4
  %6 = load i32, ptr %4, align 4
  %7 = icmp slt i32 %6, %1
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store i32 %6, ptr %3, align 4
  br label %10

9:                                                ; preds = %2
  store i32 %1, ptr %3, align 4
  br label %10

10:                                               ; preds = %9, %8
  %11 = load i32, ptr %3, align 4
  ret i32 %11
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
  %11 = load i32, ptr %6, align 4
  store i32 %11, ptr %9, align 4
  br label %12

12:                                               ; preds = %12, %4
  %13 = load ptr, ptr %5, align 8
  %14 = load i32, ptr %9, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.complex, ptr %13, i64 %15
  %17 = load float, ptr %16, align 4
  %18 = fpext float %17 to double
  %19 = getelementptr inbounds nuw %struct.complex, ptr %16, i32 0, i32 1
  %20 = load float, ptr %19, align 4
  %21 = fpext float %20 to double
  %22 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, double noundef %18, double noundef %21)
  %23 = load i32, ptr %9, align 4
  %24 = load i32, ptr %8, align 4
  %25 = add nsw i32 %23, %24
  store i32 %25, ptr %9, align 4
  %26 = load ptr, ptr %5, align 8
  %27 = sext i32 %25 to i64
  %28 = getelementptr inbounds %struct.complex, ptr %26, i64 %27
  %29 = load float, ptr %28, align 4
  %30 = fpext float %29 to double
  %31 = getelementptr inbounds nuw %struct.complex, ptr %28, i32 0, i32 1
  %32 = load float, ptr %31, align 4
  %33 = fpext float %32 to double
  %34 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, double noundef %30, double noundef %33)
  %35 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %36 = load i32, ptr %9, align 4
  %37 = load i32, ptr %8, align 4
  %38 = add nsw i32 %36, %37
  store i32 %38, ptr %9, align 4
  %39 = load i32, ptr %7, align 4
  %40 = icmp sle i32 %38, %39
  br i1 %40, label %12, label %41, !llvm.loop !9

41:                                               ; preds = %12
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @Uniform11(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load i32, ptr %5, align 4
  %7 = mul nsw i32 4855, %6
  %8 = add nsw i32 %7, 1731
  %9 = and i32 %8, 8191
  store i32 %9, ptr %5, align 4
  %10 = load ptr, ptr %3, align 8
  %11 = load i32, ptr %10, align 4
  %12 = sitofp i32 %11 to float
  %13 = fdiv float %12, 8.192000e+03
  %14 = load ptr, ptr %4, align 8
  store float %13, ptr %14, align 4
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

13:                                               ; preds = %16, %2
  %14 = load i32, ptr %8, align 4
  %15 = icmp sle i32 %14, 25
  br i1 %15, label %16, label %30

16:                                               ; preds = %13
  %17 = load float, ptr %5, align 4
  %18 = load float, ptr %6, align 4
  %19 = fdiv float %17, %18
  %20 = call float @Cos(float noundef %19)
  %21 = fmul float 2.000000e+00, %20
  %22 = fdiv float 1.000000e+00, %21
  %23 = load i32, ptr %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [26 x float], ptr %7, i64 0, i64 %24
  store float %22, ptr %25, align 4
  %26 = load float, ptr %6, align 4
  %27 = fadd float %26, %26
  store float %27, ptr %6, align 4
  %28 = load i32, ptr %8, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, ptr %8, align 4
  br label %13, !llvm.loop !10

30:                                               ; preds = %13
  %31 = load i32, ptr %3, align 4
  %32 = sdiv i32 %31, 2
  store i32 %32, ptr %12, align 4
  %33 = sdiv i32 %32, 2
  store i32 %33, ptr %11, align 4
  store i32 1, ptr %9, align 4
  %34 = load ptr, ptr %4, align 8
  %35 = getelementptr inbounds %struct.complex, ptr %34, i64 1
  store float 1.000000e+00, ptr %35, align 4
  %36 = load ptr, ptr %4, align 8
  %37 = getelementptr inbounds %struct.complex, ptr %36, i64 1
  %38 = getelementptr inbounds nuw %struct.complex, ptr %37, i32 0, i32 1
  store float 0.000000e+00, ptr %38, align 4
  %39 = load ptr, ptr %4, align 8
  %40 = load i32, ptr %11, align 4
  %41 = add nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.complex, ptr %39, i64 %42
  store float 0.000000e+00, ptr %43, align 4
  %44 = load ptr, ptr %4, align 8
  %45 = load i32, ptr %11, align 4
  %46 = add nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.complex, ptr %44, i64 %47
  %49 = getelementptr inbounds nuw %struct.complex, ptr %48, i32 0, i32 1
  store float 1.000000e+00, ptr %49, align 4
  %50 = load ptr, ptr %4, align 8
  %51 = load i32, ptr %12, align 4
  %52 = add nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.complex, ptr %50, i64 %53
  store float -1.000000e+00, ptr %54, align 4
  %55 = load ptr, ptr %4, align 8
  %56 = load i32, ptr %12, align 4
  %57 = add nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.complex, ptr %55, i64 %58
  %60 = getelementptr inbounds nuw %struct.complex, ptr %59, i32 0, i32 1
  store float 0.000000e+00, ptr %60, align 4
  br label %61

61:                                               ; preds = %117, %30
  %62 = load i32, ptr %11, align 4
  %63 = sdiv i32 %62, 2
  store i32 %63, ptr %8, align 4
  store i32 %63, ptr %10, align 4
  br label %64

64:                                               ; preds = %64, %61
  %65 = load i32, ptr %9, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [26 x float], ptr %7, i64 0, i64 %66
  %68 = load float, ptr %67, align 4
  %69 = load ptr, ptr %4, align 8
  %70 = load i32, ptr %10, align 4
  %71 = load i32, ptr %8, align 4
  %72 = add nsw i32 %70, %71
  %73 = add nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.complex, ptr %69, i64 %74
  %76 = load float, ptr %75, align 4
  %77 = sub nsw i32 %70, %71
  %78 = add nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.complex, ptr %69, i64 %79
  %81 = load float, ptr %80, align 4
  %82 = fadd float %76, %81
  %83 = fmul float %68, %82
  %84 = add nsw i32 %70, 1
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.complex, ptr %69, i64 %85
  store float %83, ptr %86, align 4
  %87 = load i32, ptr %9, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [26 x float], ptr %7, i64 0, i64 %88
  %90 = load float, ptr %89, align 4
  %91 = load ptr, ptr %4, align 8
  %92 = load i32, ptr %10, align 4
  %93 = load i32, ptr %8, align 4
  %94 = add nsw i32 %92, %93
  %95 = add nsw i32 %94, 1
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.complex, ptr %91, i64 %96
  %98 = getelementptr inbounds nuw %struct.complex, ptr %97, i32 0, i32 1
  %99 = load float, ptr %98, align 4
  %100 = sub nsw i32 %92, %93
  %101 = add nsw i32 %100, 1
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.complex, ptr %91, i64 %102
  %104 = getelementptr inbounds nuw %struct.complex, ptr %103, i32 0, i32 1
  %105 = load float, ptr %104, align 4
  %106 = fadd float %99, %105
  %107 = fmul float %90, %106
  %108 = add nsw i32 %92, 1
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.complex, ptr %91, i64 %109
  %111 = getelementptr inbounds nuw %struct.complex, ptr %110, i32 0, i32 1
  store float %107, ptr %111, align 4
  %112 = load i32, ptr %10, align 4
  %113 = load i32, ptr %11, align 4
  %114 = add nsw i32 %112, %113
  store i32 %114, ptr %10, align 4
  %115 = load i32, ptr %12, align 4
  %116 = icmp sle i32 %114, %115
  br i1 %116, label %64, label %117, !llvm.loop !11

117:                                              ; preds = %64
  %118 = load i32, ptr %9, align 4
  %119 = add nsw i32 %118, 1
  %120 = call i32 @Min0(i32 noundef %119, i32 noundef 25)
  store i32 %120, ptr %9, align 4
  %121 = load i32, ptr %8, align 4
  store i32 %121, ptr %11, align 4
  %122 = icmp sgt i32 %121, 1
  br i1 %122, label %61, label %123, !llvm.loop !12

123:                                              ; preds = %117
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
  %17 = load i32, ptr %6, align 4
  %18 = sdiv i32 %17, 2
  store i32 %18, ptr %15, align 4
  store i32 1, ptr %14, align 4
  br label %19

19:                                               ; preds = %143, %5
  store i32 0, ptr %13, align 4
  %20 = load i32, ptr %14, align 4
  store i32 %20, ptr %12, align 4
  store i32 1, ptr %11, align 4
  br label %21

21:                                               ; preds = %126, %19
  br label %22

22:                                               ; preds = %22, %21
  %23 = load ptr, ptr %7, align 8
  %24 = load i32, ptr %11, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.complex, ptr %23, i64 %25
  %27 = load float, ptr %26, align 4
  %28 = load i32, ptr %15, align 4
  %29 = add nsw i32 %28, %24
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.complex, ptr %23, i64 %30
  %32 = load float, ptr %31, align 4
  %33 = fadd float %27, %32
  %34 = load ptr, ptr %8, align 8
  %35 = load i32, ptr %13, align 4
  %36 = add nsw i32 %24, %35
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.complex, ptr %34, i64 %37
  store float %33, ptr %38, align 4
  %39 = load ptr, ptr %7, align 8
  %40 = load i32, ptr %11, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.complex, ptr %39, i64 %41
  %43 = getelementptr inbounds nuw %struct.complex, ptr %42, i32 0, i32 1
  %44 = load float, ptr %43, align 4
  %45 = load i32, ptr %15, align 4
  %46 = add nsw i32 %45, %40
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.complex, ptr %39, i64 %47
  %49 = getelementptr inbounds nuw %struct.complex, ptr %48, i32 0, i32 1
  %50 = load float, ptr %49, align 4
  %51 = fadd float %44, %50
  %52 = load ptr, ptr %8, align 8
  %53 = load i32, ptr %13, align 4
  %54 = add nsw i32 %40, %53
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.complex, ptr %52, i64 %55
  %57 = getelementptr inbounds nuw %struct.complex, ptr %56, i32 0, i32 1
  store float %51, ptr %57, align 4
  %58 = load ptr, ptr %9, align 8
  %59 = load i32, ptr %13, align 4
  %60 = add nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.complex, ptr %58, i64 %61
  %63 = load float, ptr %62, align 4
  %64 = load ptr, ptr %7, align 8
  %65 = load i32, ptr %11, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.complex, ptr %64, i64 %66
  %68 = load float, ptr %67, align 4
  %69 = load i32, ptr %15, align 4
  %70 = add nsw i32 %65, %69
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.complex, ptr %64, i64 %71
  %73 = load float, ptr %72, align 4
  %74 = fsub float %68, %73
  %75 = getelementptr inbounds nuw %struct.complex, ptr %62, i32 0, i32 1
  %76 = load float, ptr %75, align 4
  %77 = getelementptr inbounds nuw %struct.complex, ptr %67, i32 0, i32 1
  %78 = load float, ptr %77, align 4
  %79 = getelementptr inbounds nuw %struct.complex, ptr %72, i32 0, i32 1
  %80 = load float, ptr %79, align 4
  %81 = fsub float %78, %80
  %82 = fmul float %76, %81
  %83 = fneg float %82
  %84 = call float @llvm.fmuladd.f32(float %63, float %74, float %83)
  %85 = load ptr, ptr %8, align 8
  %86 = load i32, ptr %12, align 4
  %87 = add nsw i32 %65, %86
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.complex, ptr %85, i64 %88
  store float %84, ptr %89, align 4
  %90 = load ptr, ptr %9, align 8
  %91 = load i32, ptr %13, align 4
  %92 = add nsw i32 %91, 1
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.complex, ptr %90, i64 %93
  %95 = load float, ptr %94, align 4
  %96 = load ptr, ptr %7, align 8
  %97 = load i32, ptr %11, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.complex, ptr %96, i64 %98
  %100 = getelementptr inbounds nuw %struct.complex, ptr %99, i32 0, i32 1
  %101 = load float, ptr %100, align 4
  %102 = load i32, ptr %15, align 4
  %103 = add nsw i32 %97, %102
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.complex, ptr %96, i64 %104
  %106 = getelementptr inbounds nuw %struct.complex, ptr %105, i32 0, i32 1
  %107 = load float, ptr %106, align 4
  %108 = fsub float %101, %107
  %109 = getelementptr inbounds nuw %struct.complex, ptr %94, i32 0, i32 1
  %110 = load float, ptr %109, align 4
  %111 = load float, ptr %99, align 4
  %112 = load float, ptr %105, align 4
  %113 = fsub float %111, %112
  %114 = fmul float %110, %113
  %115 = call float @llvm.fmuladd.f32(float %95, float %108, float %114)
  %116 = load ptr, ptr %8, align 8
  %117 = load i32, ptr %12, align 4
  %118 = add nsw i32 %97, %117
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.complex, ptr %116, i64 %119
  %121 = getelementptr inbounds nuw %struct.complex, ptr %120, i32 0, i32 1
  store float %115, ptr %121, align 4
  %122 = load i32, ptr %11, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, ptr %11, align 4
  %124 = load i32, ptr %12, align 4
  %125 = icmp sle i32 %123, %124
  br i1 %125, label %22, label %126, !llvm.loop !13

126:                                              ; preds = %22
  store i32 %124, ptr %13, align 4
  %127 = load i32, ptr %14, align 4
  %128 = add nsw i32 %124, %127
  store i32 %128, ptr %12, align 4
  %129 = load i32, ptr %15, align 4
  %130 = icmp sle i32 %128, %129
  br i1 %130, label %21, label %131, !llvm.loop !14

131:                                              ; preds = %126
  store i32 1, ptr %16, align 4
  br label %132

132:                                              ; preds = %132, %131
  %133 = load ptr, ptr %7, align 8
  %134 = load i32, ptr %16, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.complex, ptr %133, i64 %135
  %137 = load ptr, ptr %8, align 8
  %138 = getelementptr inbounds %struct.complex, ptr %137, i64 %135
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %136, ptr align 4 %138, i64 8, i1 false)
  %139 = load i32, ptr %16, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, ptr %16, align 4
  %141 = load i32, ptr %6, align 4
  %142 = icmp sle i32 %140, %141
  br i1 %142, label %132, label %143, !llvm.loop !15

143:                                              ; preds = %132
  %144 = load i32, ptr %14, align 4
  %145 = add nsw i32 %144, %144
  store i32 %145, ptr %14, align 4
  %146 = load i32, ptr %15, align 4
  %147 = icmp sle i32 %145, %146
  br i1 %147, label %19, label %148, !llvm.loop !16

148:                                              ; preds = %143
  store i32 1, ptr %11, align 4
  br label %149

149:                                              ; preds = %153, %148
  %150 = load i32, ptr %11, align 4
  %151 = load i32, ptr %6, align 4
  %152 = icmp sle i32 %150, %151
  br i1 %152, label %153, label %171

153:                                              ; preds = %149
  %154 = load float, ptr %10, align 4
  %155 = load ptr, ptr %7, align 8
  %156 = sext i32 %150 to i64
  %157 = getelementptr inbounds %struct.complex, ptr %155, i64 %156
  %158 = load float, ptr %157, align 4
  %159 = fmul float %154, %158
  store float %159, ptr %157, align 4
  %160 = load float, ptr %10, align 4
  %161 = fneg float %160
  %162 = load ptr, ptr %7, align 8
  %163 = load i32, ptr %11, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.complex, ptr %162, i64 %164
  %166 = getelementptr inbounds nuw %struct.complex, ptr %165, i32 0, i32 1
  %167 = load float, ptr %166, align 4
  %168 = fmul float %161, %167
  store float %168, ptr %166, align 4
  %169 = load i32, ptr %11, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, ptr %11, align 4
  br label %149, !llvm.loop !17

171:                                              ; preds = %149
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

3:                                                ; preds = %6, %0
  %4 = load i32, ptr %1, align 4
  %5 = icmp sle i32 %4, 256
  br i1 %5, label %6, label %23

6:                                                ; preds = %3
  %7 = load i32, ptr @seed, align 4
  store i32 %7, ptr %2, align 4
  call void @Uniform11(ptr noundef %2, ptr noundef @zr)
  %8 = load i32, ptr %2, align 4
  store i32 %8, ptr @seed, align 4
  call void @Uniform11(ptr noundef %2, ptr noundef @zi)
  %9 = load i32, ptr %2, align 4
  store i32 %9, ptr @seed, align 4
  %10 = load float, ptr @zr, align 4
  %11 = call float @llvm.fmuladd.f32(float 2.000000e+01, float %10, float -1.000000e+01)
  %12 = load i32, ptr %1, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [257 x %struct.complex], ptr @z, i64 0, i64 %13
  store float %11, ptr %14, align 8
  %15 = load float, ptr @zi, align 4
  %16 = call float @llvm.fmuladd.f32(float 2.000000e+01, float %15, float -1.000000e+01)
  %17 = load i32, ptr %1, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [257 x %struct.complex], ptr @z, i64 0, i64 %18
  %20 = getelementptr inbounds nuw %struct.complex, ptr %19, i32 0, i32 1
  store float %16, ptr %20, align 4
  %21 = load i32, ptr %1, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, ptr %1, align 4
  br label %3, !llvm.loop !18

23:                                               ; preds = %3
  store i32 1, ptr %1, align 4
  br label %24

24:                                               ; preds = %27, %23
  %25 = load i32, ptr %1, align 4
  %26 = icmp sle i32 %25, 20
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  call void @Fft(i32 noundef 256, ptr noundef @z, ptr noundef @w, ptr noundef @e, float noundef 6.250000e-02)
  %28 = load i32, ptr %1, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, ptr %1, align 4
  br label %24, !llvm.loop !19

30:                                               ; preds = %24
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
  %4 = load i32, ptr %2, align 4
  %5 = icmp slt i32 %4, 10
  br i1 %5, label %6, label %9

6:                                                ; preds = %3
  call void @Oscar()
  %7 = load i32, ptr %2, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, ptr %2, align 4
  br label %3, !llvm.loop !20

9:                                                ; preds = %3
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
