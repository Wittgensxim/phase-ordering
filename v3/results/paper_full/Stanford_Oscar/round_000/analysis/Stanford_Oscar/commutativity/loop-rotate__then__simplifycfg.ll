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
  %5 = load i32, ptr @seed, align 4
  ret i32 %5
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
  %8 = load i32, ptr %3, align 4
  %9 = icmp sle i32 %8, 10
  br i1 %9, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %1, %37
  %10 = load i32, ptr %4, align 4
  %11 = load i32, ptr %3, align 4
  %12 = mul nsw i32 %10, %11
  store i32 %12, ptr %4, align 4
  %13 = load float, ptr %6, align 4
  %14 = load float, ptr %2, align 4
  %15 = fmul float %13, %14
  store float %15, ptr %6, align 4
  %16 = load i32, ptr %3, align 4
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %37

19:                                               ; preds = %.lr.ph
  %20 = load i32, ptr %3, align 4
  %21 = and i32 %20, 3
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %19
  %24 = load float, ptr %5, align 4
  %25 = load float, ptr %6, align 4
  %26 = load i32, ptr %4, align 4
  %27 = sitofp i32 %26 to float
  %28 = fdiv float %25, %27
  %29 = fadd float %24, %28
  store float %29, ptr %5, align 4
  br label %37

30:                                               ; preds = %19
  %31 = load float, ptr %5, align 4
  %32 = load float, ptr %6, align 4
  %33 = load i32, ptr %4, align 4
  %34 = sitofp i32 %33 to float
  %35 = fdiv float %32, %34
  %36 = fsub float %31, %35
  store float %36, ptr %5, align 4
  br label %37

37:                                               ; preds = %.lr.ph, %30, %23
  %38 = load i32, ptr %3, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, ptr %3, align 4
  %40 = load i32, ptr %3, align 4
  %41 = icmp sle i32 %40, 10
  br i1 %41, label %.lr.ph, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %37, %1
  %42 = load float, ptr %5, align 4
  ret float %42
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Min0(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, ptr %4, align 4
  store i32 %1, ptr %5, align 4
  %6 = load i32, ptr %4, align 4
  %7 = load i32, ptr %5, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i32, ptr %4, align 4
  store i32 %10, ptr %3, align 4
  br label %13

11:                                               ; preds = %2
  %12 = load i32, ptr %5, align 4
  store i32 %12, ptr %3, align 4
  br label %13

13:                                               ; preds = %11, %9
  %14 = load i32, ptr %3, align 4
  ret i32 %14
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
  %17 = getelementptr inbounds nuw %struct.complex, ptr %16, i32 0, i32 0
  %18 = load float, ptr %17, align 4
  %19 = fpext float %18 to double
  %20 = load ptr, ptr %5, align 8
  %21 = load i32, ptr %9, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.complex, ptr %20, i64 %22
  %24 = getelementptr inbounds nuw %struct.complex, ptr %23, i32 0, i32 1
  %25 = load float, ptr %24, align 4
  %26 = fpext float %25 to double
  %27 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, double noundef %19, double noundef %26)
  %28 = load i32, ptr %9, align 4
  %29 = load i32, ptr %8, align 4
  %30 = add nsw i32 %28, %29
  store i32 %30, ptr %9, align 4
  %31 = load ptr, ptr %5, align 8
  %32 = load i32, ptr %9, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.complex, ptr %31, i64 %33
  %35 = getelementptr inbounds nuw %struct.complex, ptr %34, i32 0, i32 0
  %36 = load float, ptr %35, align 4
  %37 = fpext float %36 to double
  %38 = load ptr, ptr %5, align 8
  %39 = load i32, ptr %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.complex, ptr %38, i64 %40
  %42 = getelementptr inbounds nuw %struct.complex, ptr %41, i32 0, i32 1
  %43 = load float, ptr %42, align 4
  %44 = fpext float %43 to double
  %45 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, double noundef %37, double noundef %44)
  %46 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %47 = load i32, ptr %9, align 4
  %48 = load i32, ptr %8, align 4
  %49 = add nsw i32 %47, %48
  store i32 %49, ptr %9, align 4
  %50 = load i32, ptr %9, align 4
  %51 = load i32, ptr %7, align 4
  %52 = icmp sle i32 %50, %51
  br i1 %52, label %12, label %53, !llvm.loop !9

53:                                               ; preds = %12
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
  %10 = load ptr, ptr %3, align 8
  store i32 %9, ptr %10, align 4
  %11 = load ptr, ptr %3, align 8
  %12 = load i32, ptr %11, align 4
  %13 = sitofp i32 %12 to float
  %14 = fdiv float %13, 8.192000e+03
  %15 = load ptr, ptr %4, align 8
  store float %14, ptr %15, align 4
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
  %13 = load i32, ptr %8, align 4
  %14 = icmp sle i32 %13, 25
  br i1 %14, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %2, %.lr.ph
  %15 = load float, ptr %5, align 4
  %16 = load float, ptr %6, align 4
  %17 = fdiv float %15, %16
  %18 = call float @Cos(float noundef %17)
  %19 = fmul float 2.000000e+00, %18
  %20 = fdiv float 1.000000e+00, %19
  %21 = load i32, ptr %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [26 x float], ptr %7, i64 0, i64 %22
  store float %20, ptr %23, align 4
  %24 = load float, ptr %6, align 4
  %25 = load float, ptr %6, align 4
  %26 = fadd float %24, %25
  store float %26, ptr %6, align 4
  %27 = load i32, ptr %8, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, ptr %8, align 4
  %29 = load i32, ptr %8, align 4
  %30 = icmp sle i32 %29, 25
  br i1 %30, label %.lr.ph, label %._crit_edge, !llvm.loop !10

._crit_edge:                                      ; preds = %.lr.ph, %2
  %31 = load i32, ptr %3, align 4
  %32 = sdiv i32 %31, 2
  store i32 %32, ptr %12, align 4
  %33 = load i32, ptr %12, align 4
  %34 = sdiv i32 %33, 2
  store i32 %34, ptr %11, align 4
  store i32 1, ptr %9, align 4
  %35 = load ptr, ptr %4, align 8
  %36 = getelementptr inbounds %struct.complex, ptr %35, i64 1
  %37 = getelementptr inbounds nuw %struct.complex, ptr %36, i32 0, i32 0
  store float 1.000000e+00, ptr %37, align 4
  %38 = load ptr, ptr %4, align 8
  %39 = getelementptr inbounds %struct.complex, ptr %38, i64 1
  %40 = getelementptr inbounds nuw %struct.complex, ptr %39, i32 0, i32 1
  store float 0.000000e+00, ptr %40, align 4
  %41 = load ptr, ptr %4, align 8
  %42 = load i32, ptr %11, align 4
  %43 = add nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.complex, ptr %41, i64 %44
  %46 = getelementptr inbounds nuw %struct.complex, ptr %45, i32 0, i32 0
  store float 0.000000e+00, ptr %46, align 4
  %47 = load ptr, ptr %4, align 8
  %48 = load i32, ptr %11, align 4
  %49 = add nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.complex, ptr %47, i64 %50
  %52 = getelementptr inbounds nuw %struct.complex, ptr %51, i32 0, i32 1
  store float 1.000000e+00, ptr %52, align 4
  %53 = load ptr, ptr %4, align 8
  %54 = load i32, ptr %12, align 4
  %55 = add nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.complex, ptr %53, i64 %56
  %58 = getelementptr inbounds nuw %struct.complex, ptr %57, i32 0, i32 0
  store float -1.000000e+00, ptr %58, align 4
  %59 = load ptr, ptr %4, align 8
  %60 = load i32, ptr %12, align 4
  %61 = add nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.complex, ptr %59, i64 %62
  %64 = getelementptr inbounds nuw %struct.complex, ptr %63, i32 0, i32 1
  store float 0.000000e+00, ptr %64, align 4
  br label %65

65:                                               ; preds = %136, %._crit_edge
  %66 = load i32, ptr %11, align 4
  %67 = sdiv i32 %66, 2
  store i32 %67, ptr %8, align 4
  %68 = load i32, ptr %8, align 4
  store i32 %68, ptr %10, align 4
  br label %69

69:                                               ; preds = %69, %65
  %70 = load i32, ptr %9, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [26 x float], ptr %7, i64 0, i64 %71
  %73 = load float, ptr %72, align 4
  %74 = load ptr, ptr %4, align 8
  %75 = load i32, ptr %10, align 4
  %76 = load i32, ptr %8, align 4
  %77 = add nsw i32 %75, %76
  %78 = add nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.complex, ptr %74, i64 %79
  %81 = getelementptr inbounds nuw %struct.complex, ptr %80, i32 0, i32 0
  %82 = load float, ptr %81, align 4
  %83 = load ptr, ptr %4, align 8
  %84 = load i32, ptr %10, align 4
  %85 = load i32, ptr %8, align 4
  %86 = sub nsw i32 %84, %85
  %87 = add nsw i32 %86, 1
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.complex, ptr %83, i64 %88
  %90 = getelementptr inbounds nuw %struct.complex, ptr %89, i32 0, i32 0
  %91 = load float, ptr %90, align 4
  %92 = fadd float %82, %91
  %93 = fmul float %73, %92
  %94 = load ptr, ptr %4, align 8
  %95 = load i32, ptr %10, align 4
  %96 = add nsw i32 %95, 1
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.complex, ptr %94, i64 %97
  %99 = getelementptr inbounds nuw %struct.complex, ptr %98, i32 0, i32 0
  store float %93, ptr %99, align 4
  %100 = load i32, ptr %9, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [26 x float], ptr %7, i64 0, i64 %101
  %103 = load float, ptr %102, align 4
  %104 = load ptr, ptr %4, align 8
  %105 = load i32, ptr %10, align 4
  %106 = load i32, ptr %8, align 4
  %107 = add nsw i32 %105, %106
  %108 = add nsw i32 %107, 1
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.complex, ptr %104, i64 %109
  %111 = getelementptr inbounds nuw %struct.complex, ptr %110, i32 0, i32 1
  %112 = load float, ptr %111, align 4
  %113 = load ptr, ptr %4, align 8
  %114 = load i32, ptr %10, align 4
  %115 = load i32, ptr %8, align 4
  %116 = sub nsw i32 %114, %115
  %117 = add nsw i32 %116, 1
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.complex, ptr %113, i64 %118
  %120 = getelementptr inbounds nuw %struct.complex, ptr %119, i32 0, i32 1
  %121 = load float, ptr %120, align 4
  %122 = fadd float %112, %121
  %123 = fmul float %103, %122
  %124 = load ptr, ptr %4, align 8
  %125 = load i32, ptr %10, align 4
  %126 = add nsw i32 %125, 1
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.complex, ptr %124, i64 %127
  %129 = getelementptr inbounds nuw %struct.complex, ptr %128, i32 0, i32 1
  store float %123, ptr %129, align 4
  %130 = load i32, ptr %10, align 4
  %131 = load i32, ptr %11, align 4
  %132 = add nsw i32 %130, %131
  store i32 %132, ptr %10, align 4
  %133 = load i32, ptr %10, align 4
  %134 = load i32, ptr %12, align 4
  %135 = icmp sle i32 %133, %134
  br i1 %135, label %69, label %136, !llvm.loop !11

136:                                              ; preds = %69
  %137 = load i32, ptr %9, align 4
  %138 = add nsw i32 %137, 1
  %139 = call i32 @Min0(i32 noundef %138, i32 noundef 25)
  store i32 %139, ptr %9, align 4
  %140 = load i32, ptr %8, align 4
  store i32 %140, ptr %11, align 4
  %141 = load i32, ptr %11, align 4
  %142 = icmp sgt i32 %141, 1
  br i1 %142, label %65, label %143, !llvm.loop !12

143:                                              ; preds = %136
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

19:                                               ; preds = %202, %5
  store i32 0, ptr %13, align 4
  %20 = load i32, ptr %14, align 4
  store i32 %20, ptr %12, align 4
  store i32 1, ptr %11, align 4
  br label %21

21:                                               ; preds = %179, %19
  br label %22

22:                                               ; preds = %22, %21
  %23 = load ptr, ptr %7, align 8
  %24 = load i32, ptr %11, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.complex, ptr %23, i64 %25
  %27 = getelementptr inbounds nuw %struct.complex, ptr %26, i32 0, i32 0
  %28 = load float, ptr %27, align 4
  %29 = load ptr, ptr %7, align 8
  %30 = load i32, ptr %15, align 4
  %31 = load i32, ptr %11, align 4
  %32 = add nsw i32 %30, %31
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.complex, ptr %29, i64 %33
  %35 = getelementptr inbounds nuw %struct.complex, ptr %34, i32 0, i32 0
  %36 = load float, ptr %35, align 4
  %37 = fadd float %28, %36
  %38 = load ptr, ptr %8, align 8
  %39 = load i32, ptr %11, align 4
  %40 = load i32, ptr %13, align 4
  %41 = add nsw i32 %39, %40
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.complex, ptr %38, i64 %42
  %44 = getelementptr inbounds nuw %struct.complex, ptr %43, i32 0, i32 0
  store float %37, ptr %44, align 4
  %45 = load ptr, ptr %7, align 8
  %46 = load i32, ptr %11, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.complex, ptr %45, i64 %47
  %49 = getelementptr inbounds nuw %struct.complex, ptr %48, i32 0, i32 1
  %50 = load float, ptr %49, align 4
  %51 = load ptr, ptr %7, align 8
  %52 = load i32, ptr %15, align 4
  %53 = load i32, ptr %11, align 4
  %54 = add nsw i32 %52, %53
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.complex, ptr %51, i64 %55
  %57 = getelementptr inbounds nuw %struct.complex, ptr %56, i32 0, i32 1
  %58 = load float, ptr %57, align 4
  %59 = fadd float %50, %58
  %60 = load ptr, ptr %8, align 8
  %61 = load i32, ptr %11, align 4
  %62 = load i32, ptr %13, align 4
  %63 = add nsw i32 %61, %62
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.complex, ptr %60, i64 %64
  %66 = getelementptr inbounds nuw %struct.complex, ptr %65, i32 0, i32 1
  store float %59, ptr %66, align 4
  %67 = load ptr, ptr %9, align 8
  %68 = load i32, ptr %13, align 4
  %69 = add nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.complex, ptr %67, i64 %70
  %72 = getelementptr inbounds nuw %struct.complex, ptr %71, i32 0, i32 0
  %73 = load float, ptr %72, align 4
  %74 = load ptr, ptr %7, align 8
  %75 = load i32, ptr %11, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.complex, ptr %74, i64 %76
  %78 = getelementptr inbounds nuw %struct.complex, ptr %77, i32 0, i32 0
  %79 = load float, ptr %78, align 4
  %80 = load ptr, ptr %7, align 8
  %81 = load i32, ptr %11, align 4
  %82 = load i32, ptr %15, align 4
  %83 = add nsw i32 %81, %82
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.complex, ptr %80, i64 %84
  %86 = getelementptr inbounds nuw %struct.complex, ptr %85, i32 0, i32 0
  %87 = load float, ptr %86, align 4
  %88 = fsub float %79, %87
  %89 = load ptr, ptr %9, align 8
  %90 = load i32, ptr %13, align 4
  %91 = add nsw i32 %90, 1
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.complex, ptr %89, i64 %92
  %94 = getelementptr inbounds nuw %struct.complex, ptr %93, i32 0, i32 1
  %95 = load float, ptr %94, align 4
  %96 = load ptr, ptr %7, align 8
  %97 = load i32, ptr %11, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.complex, ptr %96, i64 %98
  %100 = getelementptr inbounds nuw %struct.complex, ptr %99, i32 0, i32 1
  %101 = load float, ptr %100, align 4
  %102 = load ptr, ptr %7, align 8
  %103 = load i32, ptr %11, align 4
  %104 = load i32, ptr %15, align 4
  %105 = add nsw i32 %103, %104
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.complex, ptr %102, i64 %106
  %108 = getelementptr inbounds nuw %struct.complex, ptr %107, i32 0, i32 1
  %109 = load float, ptr %108, align 4
  %110 = fsub float %101, %109
  %111 = fmul float %95, %110
  %112 = fneg float %111
  %113 = call float @llvm.fmuladd.f32(float %73, float %88, float %112)
  %114 = load ptr, ptr %8, align 8
  %115 = load i32, ptr %11, align 4
  %116 = load i32, ptr %12, align 4
  %117 = add nsw i32 %115, %116
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.complex, ptr %114, i64 %118
  %120 = getelementptr inbounds nuw %struct.complex, ptr %119, i32 0, i32 0
  store float %113, ptr %120, align 4
  %121 = load ptr, ptr %9, align 8
  %122 = load i32, ptr %13, align 4
  %123 = add nsw i32 %122, 1
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.complex, ptr %121, i64 %124
  %126 = getelementptr inbounds nuw %struct.complex, ptr %125, i32 0, i32 0
  %127 = load float, ptr %126, align 4
  %128 = load ptr, ptr %7, align 8
  %129 = load i32, ptr %11, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.complex, ptr %128, i64 %130
  %132 = getelementptr inbounds nuw %struct.complex, ptr %131, i32 0, i32 1
  %133 = load float, ptr %132, align 4
  %134 = load ptr, ptr %7, align 8
  %135 = load i32, ptr %11, align 4
  %136 = load i32, ptr %15, align 4
  %137 = add nsw i32 %135, %136
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.complex, ptr %134, i64 %138
  %140 = getelementptr inbounds nuw %struct.complex, ptr %139, i32 0, i32 1
  %141 = load float, ptr %140, align 4
  %142 = fsub float %133, %141
  %143 = load ptr, ptr %9, align 8
  %144 = load i32, ptr %13, align 4
  %145 = add nsw i32 %144, 1
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.complex, ptr %143, i64 %146
  %148 = getelementptr inbounds nuw %struct.complex, ptr %147, i32 0, i32 1
  %149 = load float, ptr %148, align 4
  %150 = load ptr, ptr %7, align 8
  %151 = load i32, ptr %11, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.complex, ptr %150, i64 %152
  %154 = getelementptr inbounds nuw %struct.complex, ptr %153, i32 0, i32 0
  %155 = load float, ptr %154, align 4
  %156 = load ptr, ptr %7, align 8
  %157 = load i32, ptr %11, align 4
  %158 = load i32, ptr %15, align 4
  %159 = add nsw i32 %157, %158
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.complex, ptr %156, i64 %160
  %162 = getelementptr inbounds nuw %struct.complex, ptr %161, i32 0, i32 0
  %163 = load float, ptr %162, align 4
  %164 = fsub float %155, %163
  %165 = fmul float %149, %164
  %166 = call float @llvm.fmuladd.f32(float %127, float %142, float %165)
  %167 = load ptr, ptr %8, align 8
  %168 = load i32, ptr %11, align 4
  %169 = load i32, ptr %12, align 4
  %170 = add nsw i32 %168, %169
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.complex, ptr %167, i64 %171
  %173 = getelementptr inbounds nuw %struct.complex, ptr %172, i32 0, i32 1
  store float %166, ptr %173, align 4
  %174 = load i32, ptr %11, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, ptr %11, align 4
  %176 = load i32, ptr %11, align 4
  %177 = load i32, ptr %12, align 4
  %178 = icmp sle i32 %176, %177
  br i1 %178, label %22, label %179, !llvm.loop !13

179:                                              ; preds = %22
  %180 = load i32, ptr %12, align 4
  store i32 %180, ptr %13, align 4
  %181 = load i32, ptr %13, align 4
  %182 = load i32, ptr %14, align 4
  %183 = add nsw i32 %181, %182
  store i32 %183, ptr %12, align 4
  %184 = load i32, ptr %12, align 4
  %185 = load i32, ptr %15, align 4
  %186 = icmp sle i32 %184, %185
  br i1 %186, label %21, label %187, !llvm.loop !14

187:                                              ; preds = %179
  store i32 1, ptr %16, align 4
  br label %188

188:                                              ; preds = %188, %187
  %189 = load ptr, ptr %7, align 8
  %190 = load i32, ptr %16, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.complex, ptr %189, i64 %191
  %193 = load ptr, ptr %8, align 8
  %194 = load i32, ptr %16, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.complex, ptr %193, i64 %195
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %192, ptr align 4 %196, i64 8, i1 false)
  %197 = load i32, ptr %16, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, ptr %16, align 4
  %199 = load i32, ptr %16, align 4
  %200 = load i32, ptr %6, align 4
  %201 = icmp sle i32 %199, %200
  br i1 %201, label %188, label %202, !llvm.loop !15

202:                                              ; preds = %188
  %203 = load i32, ptr %14, align 4
  %204 = load i32, ptr %14, align 4
  %205 = add nsw i32 %203, %204
  store i32 %205, ptr %14, align 4
  %206 = load i32, ptr %14, align 4
  %207 = load i32, ptr %15, align 4
  %208 = icmp sle i32 %206, %207
  br i1 %208, label %19, label %209, !llvm.loop !16

209:                                              ; preds = %202
  store i32 1, ptr %11, align 4
  %210 = load i32, ptr %11, align 4
  %211 = load i32, ptr %6, align 4
  %212 = icmp sle i32 %210, %211
  br i1 %212, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %209, %.lr.ph
  %213 = load float, ptr %10, align 4
  %214 = load ptr, ptr %7, align 8
  %215 = load i32, ptr %11, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.complex, ptr %214, i64 %216
  %218 = getelementptr inbounds nuw %struct.complex, ptr %217, i32 0, i32 0
  %219 = load float, ptr %218, align 4
  %220 = fmul float %213, %219
  %221 = load ptr, ptr %7, align 8
  %222 = load i32, ptr %11, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.complex, ptr %221, i64 %223
  %225 = getelementptr inbounds nuw %struct.complex, ptr %224, i32 0, i32 0
  store float %220, ptr %225, align 4
  %226 = load float, ptr %10, align 4
  %227 = fneg float %226
  %228 = load ptr, ptr %7, align 8
  %229 = load i32, ptr %11, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.complex, ptr %228, i64 %230
  %232 = getelementptr inbounds nuw %struct.complex, ptr %231, i32 0, i32 1
  %233 = load float, ptr %232, align 4
  %234 = fmul float %227, %233
  %235 = load ptr, ptr %7, align 8
  %236 = load i32, ptr %11, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds %struct.complex, ptr %235, i64 %237
  %239 = getelementptr inbounds nuw %struct.complex, ptr %238, i32 0, i32 1
  store float %234, ptr %239, align 4
  %240 = load i32, ptr %11, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, ptr %11, align 4
  %242 = load i32, ptr %11, align 4
  %243 = load i32, ptr %6, align 4
  %244 = icmp sle i32 %242, %243
  br i1 %244, label %.lr.ph, label %._crit_edge, !llvm.loop !17

._crit_edge:                                      ; preds = %.lr.ph, %209
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
  %3 = load i32, ptr %1, align 4
  %4 = icmp sle i32 %3, 256
  br i1 %4, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0, %.lr.ph
  %5 = load i32, ptr @seed, align 4
  store i32 %5, ptr %2, align 4
  call void @Uniform11(ptr noundef %2, ptr noundef @zr)
  %6 = load i32, ptr %2, align 4
  store i32 %6, ptr @seed, align 4
  call void @Uniform11(ptr noundef %2, ptr noundef @zi)
  %7 = load i32, ptr %2, align 4
  store i32 %7, ptr @seed, align 4
  %8 = load float, ptr @zr, align 4
  %9 = call float @llvm.fmuladd.f32(float 2.000000e+01, float %8, float -1.000000e+01)
  %10 = load i32, ptr %1, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [257 x %struct.complex], ptr @z, i64 0, i64 %11
  %13 = getelementptr inbounds nuw %struct.complex, ptr %12, i32 0, i32 0
  store float %9, ptr %13, align 8
  %14 = load float, ptr @zi, align 4
  %15 = call float @llvm.fmuladd.f32(float 2.000000e+01, float %14, float -1.000000e+01)
  %16 = load i32, ptr %1, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [257 x %struct.complex], ptr @z, i64 0, i64 %17
  %19 = getelementptr inbounds nuw %struct.complex, ptr %18, i32 0, i32 1
  store float %15, ptr %19, align 4
  %20 = load i32, ptr %1, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, ptr %1, align 4
  %22 = load i32, ptr %1, align 4
  %23 = icmp sle i32 %22, 256
  br i1 %23, label %.lr.ph, label %._crit_edge, !llvm.loop !18

._crit_edge:                                      ; preds = %.lr.ph, %0
  store i32 1, ptr %1, align 4
  %24 = load i32, ptr %1, align 4
  %25 = icmp sle i32 %24, 20
  br i1 %25, label %.lr.ph2, label %._crit_edge3

.lr.ph2:                                          ; preds = %._crit_edge, %.lr.ph2
  call void @Fft(i32 noundef 256, ptr noundef @z, ptr noundef @w, ptr noundef @e, float noundef 6.250000e-02)
  %26 = load i32, ptr %1, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, ptr %1, align 4
  %28 = load i32, ptr %1, align 4
  %29 = icmp sle i32 %28, 20
  br i1 %29, label %.lr.ph2, label %._crit_edge3, !llvm.loop !19

._crit_edge3:                                     ; preds = %.lr.ph2, %._crit_edge
  call void @Printcomplex(ptr noundef @z, i32 noundef 1, i32 noundef 256, i32 noundef 17)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  store i32 0, ptr %2, align 4
  %3 = load i32, ptr %2, align 4
  %4 = icmp slt i32 %3, 10
  br i1 %4, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0, %.lr.ph
  call void @Oscar()
  %5 = load i32, ptr %2, align 4
  %6 = add nsw i32 %5, 1
  store i32 %6, ptr %2, align 4
  %7 = load i32, ptr %2, align 4
  %8 = icmp slt i32 %7, 10
  br i1 %8, label %.lr.ph, label %._crit_edge, !llvm.loop !20

._crit_edge:                                      ; preds = %.lr.ph, %0
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
