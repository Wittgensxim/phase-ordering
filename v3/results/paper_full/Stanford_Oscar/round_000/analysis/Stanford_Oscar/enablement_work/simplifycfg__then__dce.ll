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
  br label %8

8:                                                ; preds = %39, %1
  %9 = load i32, ptr %3, align 4
  %10 = icmp sle i32 %9, 10
  br i1 %10, label %11, label %42

11:                                               ; preds = %8
  %12 = load i32, ptr %4, align 4
  %13 = load i32, ptr %3, align 4
  %14 = mul nsw i32 %12, %13
  store i32 %14, ptr %4, align 4
  %15 = load float, ptr %6, align 4
  %16 = load float, ptr %2, align 4
  %17 = fmul float %15, %16
  store float %17, ptr %6, align 4
  %18 = load i32, ptr %3, align 4
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %39

21:                                               ; preds = %11
  %22 = load i32, ptr %3, align 4
  %23 = and i32 %22, 3
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %21
  %26 = load float, ptr %5, align 4
  %27 = load float, ptr %6, align 4
  %28 = load i32, ptr %4, align 4
  %29 = sitofp i32 %28 to float
  %30 = fdiv float %27, %29
  %31 = fadd float %26, %30
  store float %31, ptr %5, align 4
  br label %39

32:                                               ; preds = %21
  %33 = load float, ptr %5, align 4
  %34 = load float, ptr %6, align 4
  %35 = load i32, ptr %4, align 4
  %36 = sitofp i32 %35 to float
  %37 = fdiv float %34, %36
  %38 = fsub float %33, %37
  store float %38, ptr %5, align 4
  br label %39

39:                                               ; preds = %11, %32, %25
  %40 = load i32, ptr %3, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, ptr %3, align 4
  br label %8, !llvm.loop !7

42:                                               ; preds = %8
  %43 = load float, ptr %5, align 4
  ret float %43
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
  br label %13

13:                                               ; preds = %16, %2
  %14 = load i32, ptr %8, align 4
  %15 = icmp sle i32 %14, 25
  br i1 %15, label %16, label %31

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
  %27 = load float, ptr %6, align 4
  %28 = fadd float %26, %27
  store float %28, ptr %6, align 4
  %29 = load i32, ptr %8, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, ptr %8, align 4
  br label %13, !llvm.loop !10

31:                                               ; preds = %13
  %32 = load i32, ptr %3, align 4
  %33 = sdiv i32 %32, 2
  store i32 %33, ptr %12, align 4
  %34 = load i32, ptr %12, align 4
  %35 = sdiv i32 %34, 2
  store i32 %35, ptr %11, align 4
  store i32 1, ptr %9, align 4
  %36 = load ptr, ptr %4, align 8
  %37 = getelementptr inbounds %struct.complex, ptr %36, i64 1
  %38 = getelementptr inbounds nuw %struct.complex, ptr %37, i32 0, i32 0
  store float 1.000000e+00, ptr %38, align 4
  %39 = load ptr, ptr %4, align 8
  %40 = getelementptr inbounds %struct.complex, ptr %39, i64 1
  %41 = getelementptr inbounds nuw %struct.complex, ptr %40, i32 0, i32 1
  store float 0.000000e+00, ptr %41, align 4
  %42 = load ptr, ptr %4, align 8
  %43 = load i32, ptr %11, align 4
  %44 = add nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.complex, ptr %42, i64 %45
  %47 = getelementptr inbounds nuw %struct.complex, ptr %46, i32 0, i32 0
  store float 0.000000e+00, ptr %47, align 4
  %48 = load ptr, ptr %4, align 8
  %49 = load i32, ptr %11, align 4
  %50 = add nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.complex, ptr %48, i64 %51
  %53 = getelementptr inbounds nuw %struct.complex, ptr %52, i32 0, i32 1
  store float 1.000000e+00, ptr %53, align 4
  %54 = load ptr, ptr %4, align 8
  %55 = load i32, ptr %12, align 4
  %56 = add nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.complex, ptr %54, i64 %57
  %59 = getelementptr inbounds nuw %struct.complex, ptr %58, i32 0, i32 0
  store float -1.000000e+00, ptr %59, align 4
  %60 = load ptr, ptr %4, align 8
  %61 = load i32, ptr %12, align 4
  %62 = add nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.complex, ptr %60, i64 %63
  %65 = getelementptr inbounds nuw %struct.complex, ptr %64, i32 0, i32 1
  store float 0.000000e+00, ptr %65, align 4
  br label %66

66:                                               ; preds = %137, %31
  %67 = load i32, ptr %11, align 4
  %68 = sdiv i32 %67, 2
  store i32 %68, ptr %8, align 4
  %69 = load i32, ptr %8, align 4
  store i32 %69, ptr %10, align 4
  br label %70

70:                                               ; preds = %70, %66
  %71 = load i32, ptr %9, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [26 x float], ptr %7, i64 0, i64 %72
  %74 = load float, ptr %73, align 4
  %75 = load ptr, ptr %4, align 8
  %76 = load i32, ptr %10, align 4
  %77 = load i32, ptr %8, align 4
  %78 = add nsw i32 %76, %77
  %79 = add nsw i32 %78, 1
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.complex, ptr %75, i64 %80
  %82 = getelementptr inbounds nuw %struct.complex, ptr %81, i32 0, i32 0
  %83 = load float, ptr %82, align 4
  %84 = load ptr, ptr %4, align 8
  %85 = load i32, ptr %10, align 4
  %86 = load i32, ptr %8, align 4
  %87 = sub nsw i32 %85, %86
  %88 = add nsw i32 %87, 1
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.complex, ptr %84, i64 %89
  %91 = getelementptr inbounds nuw %struct.complex, ptr %90, i32 0, i32 0
  %92 = load float, ptr %91, align 4
  %93 = fadd float %83, %92
  %94 = fmul float %74, %93
  %95 = load ptr, ptr %4, align 8
  %96 = load i32, ptr %10, align 4
  %97 = add nsw i32 %96, 1
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.complex, ptr %95, i64 %98
  %100 = getelementptr inbounds nuw %struct.complex, ptr %99, i32 0, i32 0
  store float %94, ptr %100, align 4
  %101 = load i32, ptr %9, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [26 x float], ptr %7, i64 0, i64 %102
  %104 = load float, ptr %103, align 4
  %105 = load ptr, ptr %4, align 8
  %106 = load i32, ptr %10, align 4
  %107 = load i32, ptr %8, align 4
  %108 = add nsw i32 %106, %107
  %109 = add nsw i32 %108, 1
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.complex, ptr %105, i64 %110
  %112 = getelementptr inbounds nuw %struct.complex, ptr %111, i32 0, i32 1
  %113 = load float, ptr %112, align 4
  %114 = load ptr, ptr %4, align 8
  %115 = load i32, ptr %10, align 4
  %116 = load i32, ptr %8, align 4
  %117 = sub nsw i32 %115, %116
  %118 = add nsw i32 %117, 1
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.complex, ptr %114, i64 %119
  %121 = getelementptr inbounds nuw %struct.complex, ptr %120, i32 0, i32 1
  %122 = load float, ptr %121, align 4
  %123 = fadd float %113, %122
  %124 = fmul float %104, %123
  %125 = load ptr, ptr %4, align 8
  %126 = load i32, ptr %10, align 4
  %127 = add nsw i32 %126, 1
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.complex, ptr %125, i64 %128
  %130 = getelementptr inbounds nuw %struct.complex, ptr %129, i32 0, i32 1
  store float %124, ptr %130, align 4
  %131 = load i32, ptr %10, align 4
  %132 = load i32, ptr %11, align 4
  %133 = add nsw i32 %131, %132
  store i32 %133, ptr %10, align 4
  %134 = load i32, ptr %10, align 4
  %135 = load i32, ptr %12, align 4
  %136 = icmp sle i32 %134, %135
  br i1 %136, label %70, label %137, !llvm.loop !11

137:                                              ; preds = %70
  %138 = load i32, ptr %9, align 4
  %139 = add nsw i32 %138, 1
  %140 = call i32 @Min0(i32 noundef %139, i32 noundef 25)
  store i32 %140, ptr %9, align 4
  %141 = load i32, ptr %8, align 4
  store i32 %141, ptr %11, align 4
  %142 = load i32, ptr %11, align 4
  %143 = icmp sgt i32 %142, 1
  br i1 %143, label %66, label %144, !llvm.loop !12

144:                                              ; preds = %137
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
  br label %210

210:                                              ; preds = %214, %209
  %211 = load i32, ptr %11, align 4
  %212 = load i32, ptr %6, align 4
  %213 = icmp sle i32 %211, %212
  br i1 %213, label %214, label %244

214:                                              ; preds = %210
  %215 = load float, ptr %10, align 4
  %216 = load ptr, ptr %7, align 8
  %217 = load i32, ptr %11, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.complex, ptr %216, i64 %218
  %220 = getelementptr inbounds nuw %struct.complex, ptr %219, i32 0, i32 0
  %221 = load float, ptr %220, align 4
  %222 = fmul float %215, %221
  %223 = load ptr, ptr %7, align 8
  %224 = load i32, ptr %11, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.complex, ptr %223, i64 %225
  %227 = getelementptr inbounds nuw %struct.complex, ptr %226, i32 0, i32 0
  store float %222, ptr %227, align 4
  %228 = load float, ptr %10, align 4
  %229 = fneg float %228
  %230 = load ptr, ptr %7, align 8
  %231 = load i32, ptr %11, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.complex, ptr %230, i64 %232
  %234 = getelementptr inbounds nuw %struct.complex, ptr %233, i32 0, i32 1
  %235 = load float, ptr %234, align 4
  %236 = fmul float %229, %235
  %237 = load ptr, ptr %7, align 8
  %238 = load i32, ptr %11, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.complex, ptr %237, i64 %239
  %241 = getelementptr inbounds nuw %struct.complex, ptr %240, i32 0, i32 1
  store float %236, ptr %241, align 4
  %242 = load i32, ptr %11, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, ptr %11, align 4
  br label %210, !llvm.loop !17

244:                                              ; preds = %210
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
  br i1 %5, label %6, label %24

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
  %15 = getelementptr inbounds nuw %struct.complex, ptr %14, i32 0, i32 0
  store float %11, ptr %15, align 8
  %16 = load float, ptr @zi, align 4
  %17 = call float @llvm.fmuladd.f32(float 2.000000e+01, float %16, float -1.000000e+01)
  %18 = load i32, ptr %1, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [257 x %struct.complex], ptr @z, i64 0, i64 %19
  %21 = getelementptr inbounds nuw %struct.complex, ptr %20, i32 0, i32 1
  store float %17, ptr %21, align 4
  %22 = load i32, ptr %1, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, ptr %1, align 4
  br label %3, !llvm.loop !18

24:                                               ; preds = %3
  store i32 1, ptr %1, align 4
  br label %25

25:                                               ; preds = %28, %24
  %26 = load i32, ptr %1, align 4
  %27 = icmp sle i32 %26, 20
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  call void @Fft(i32 noundef 256, ptr noundef @z, ptr noundef @w, ptr noundef @e, float noundef 6.250000e-02)
  %29 = load i32, ptr %1, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, ptr %1, align 4
  br label %25, !llvm.loop !19

31:                                               ; preds = %25
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
