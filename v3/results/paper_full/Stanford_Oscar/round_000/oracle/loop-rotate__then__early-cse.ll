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
  br i1 true, label %.lr.ph, label %39

.lr.ph:                                           ; preds = %1
  br label %8

8:                                                ; preds = %.lr.ph, %35
  %9 = load i32, ptr %4, align 4
  %10 = load i32, ptr %3, align 4
  %11 = mul nsw i32 %9, %10
  store i32 %11, ptr %4, align 4
  %12 = load float, ptr %6, align 4
  %13 = load float, ptr %2, align 4
  %14 = fmul float %12, %13
  store float %14, ptr %6, align 4
  %15 = load i32, ptr %3, align 4
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %34

18:                                               ; preds = %8
  %19 = and i32 %15, 3
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = load float, ptr %5, align 4
  %23 = load i32, ptr %4, align 4
  %24 = sitofp i32 %23 to float
  %25 = fdiv float %14, %24
  %26 = fadd float %22, %25
  store float %26, ptr %5, align 4
  br label %33

27:                                               ; preds = %18
  %28 = load float, ptr %5, align 4
  %29 = load i32, ptr %4, align 4
  %30 = sitofp i32 %29 to float
  %31 = fdiv float %14, %30
  %32 = fsub float %28, %31
  store float %32, ptr %5, align 4
  br label %33

33:                                               ; preds = %27, %21
  br label %34

34:                                               ; preds = %33, %8
  br label %35

35:                                               ; preds = %34
  %36 = load i32, ptr %3, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, ptr %3, align 4
  %38 = icmp sle i32 %37, 10
  br i1 %38, label %8, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %35
  br label %39

39:                                               ; preds = %._crit_edge, %1
  %40 = load float, ptr %5, align 4
  ret float %40
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

12:                                               ; preds = %39, %4
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
  br label %39

39:                                               ; preds = %12
  %40 = load i32, ptr %7, align 4
  %41 = icmp sle i32 %38, %40
  br i1 %41, label %12, label %42, !llvm.loop !9

42:                                               ; preds = %39
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
  br i1 true, label %.lr.ph, label %29

.lr.ph:                                           ; preds = %2
  br label %13

13:                                               ; preds = %.lr.ph, %25
  %14 = load float, ptr %5, align 4
  %15 = load float, ptr %6, align 4
  %16 = fdiv float %14, %15
  %17 = call float @Cos(float noundef %16)
  %18 = fmul float 2.000000e+00, %17
  %19 = fdiv float 1.000000e+00, %18
  %20 = load i32, ptr %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [26 x float], ptr %7, i64 0, i64 %21
  store float %19, ptr %22, align 4
  %23 = load float, ptr %6, align 4
  %24 = fadd float %23, %23
  store float %24, ptr %6, align 4
  br label %25

25:                                               ; preds = %13
  %26 = load i32, ptr %8, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, ptr %8, align 4
  %28 = icmp sle i32 %27, 25
  br i1 %28, label %13, label %._crit_edge, !llvm.loop !10

._crit_edge:                                      ; preds = %25
  br label %29

29:                                               ; preds = %._crit_edge, %2
  %30 = load i32, ptr %3, align 4
  %31 = sdiv i32 %30, 2
  store i32 %31, ptr %12, align 4
  %32 = sdiv i32 %31, 2
  store i32 %32, ptr %11, align 4
  store i32 1, ptr %9, align 4
  %33 = load ptr, ptr %4, align 8
  %34 = getelementptr inbounds %struct.complex, ptr %33, i64 1
  store float 1.000000e+00, ptr %34, align 4
  %35 = load ptr, ptr %4, align 8
  %36 = getelementptr inbounds %struct.complex, ptr %35, i64 1
  %37 = getelementptr inbounds nuw %struct.complex, ptr %36, i32 0, i32 1
  store float 0.000000e+00, ptr %37, align 4
  %38 = load ptr, ptr %4, align 8
  %39 = load i32, ptr %11, align 4
  %40 = add nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.complex, ptr %38, i64 %41
  store float 0.000000e+00, ptr %42, align 4
  %43 = load ptr, ptr %4, align 8
  %44 = load i32, ptr %11, align 4
  %45 = add nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.complex, ptr %43, i64 %46
  %48 = getelementptr inbounds nuw %struct.complex, ptr %47, i32 0, i32 1
  store float 1.000000e+00, ptr %48, align 4
  %49 = load ptr, ptr %4, align 8
  %50 = load i32, ptr %12, align 4
  %51 = add nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.complex, ptr %49, i64 %52
  store float -1.000000e+00, ptr %53, align 4
  %54 = load ptr, ptr %4, align 8
  %55 = load i32, ptr %12, align 4
  %56 = add nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.complex, ptr %54, i64 %57
  %59 = getelementptr inbounds nuw %struct.complex, ptr %58, i32 0, i32 1
  store float 0.000000e+00, ptr %59, align 4
  br label %60

60:                                               ; preds = %122, %29
  %61 = load i32, ptr %11, align 4
  %62 = sdiv i32 %61, 2
  store i32 %62, ptr %8, align 4
  store i32 %62, ptr %10, align 4
  br label %63

63:                                               ; preds = %114, %60
  %64 = load i32, ptr %9, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [26 x float], ptr %7, i64 0, i64 %65
  %67 = load float, ptr %66, align 4
  %68 = load ptr, ptr %4, align 8
  %69 = load i32, ptr %10, align 4
  %70 = load i32, ptr %8, align 4
  %71 = add nsw i32 %69, %70
  %72 = add nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.complex, ptr %68, i64 %73
  %75 = load float, ptr %74, align 4
  %76 = sub nsw i32 %69, %70
  %77 = add nsw i32 %76, 1
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.complex, ptr %68, i64 %78
  %80 = load float, ptr %79, align 4
  %81 = fadd float %75, %80
  %82 = fmul float %67, %81
  %83 = add nsw i32 %69, 1
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.complex, ptr %68, i64 %84
  store float %82, ptr %85, align 4
  %86 = load i32, ptr %9, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [26 x float], ptr %7, i64 0, i64 %87
  %89 = load float, ptr %88, align 4
  %90 = load ptr, ptr %4, align 8
  %91 = load i32, ptr %10, align 4
  %92 = load i32, ptr %8, align 4
  %93 = add nsw i32 %91, %92
  %94 = add nsw i32 %93, 1
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.complex, ptr %90, i64 %95
  %97 = getelementptr inbounds nuw %struct.complex, ptr %96, i32 0, i32 1
  %98 = load float, ptr %97, align 4
  %99 = sub nsw i32 %91, %92
  %100 = add nsw i32 %99, 1
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.complex, ptr %90, i64 %101
  %103 = getelementptr inbounds nuw %struct.complex, ptr %102, i32 0, i32 1
  %104 = load float, ptr %103, align 4
  %105 = fadd float %98, %104
  %106 = fmul float %89, %105
  %107 = add nsw i32 %91, 1
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.complex, ptr %90, i64 %108
  %110 = getelementptr inbounds nuw %struct.complex, ptr %109, i32 0, i32 1
  store float %106, ptr %110, align 4
  %111 = load i32, ptr %10, align 4
  %112 = load i32, ptr %11, align 4
  %113 = add nsw i32 %111, %112
  store i32 %113, ptr %10, align 4
  br label %114

114:                                              ; preds = %63
  %115 = load i32, ptr %12, align 4
  %116 = icmp sle i32 %113, %115
  br i1 %116, label %63, label %117, !llvm.loop !11

117:                                              ; preds = %114
  %118 = load i32, ptr %9, align 4
  %119 = add nsw i32 %118, 1
  %120 = call i32 @Min0(i32 noundef %119, i32 noundef 25)
  store i32 %120, ptr %9, align 4
  %121 = load i32, ptr %8, align 4
  store i32 %121, ptr %11, align 4
  br label %122

122:                                              ; preds = %117
  %123 = icmp sgt i32 %121, 1
  br i1 %123, label %60, label %124, !llvm.loop !12

124:                                              ; preds = %122
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

19:                                               ; preds = %149, %5
  store i32 0, ptr %13, align 4
  %20 = load i32, ptr %14, align 4
  store i32 %20, ptr %12, align 4
  store i32 1, ptr %11, align 4
  br label %21

21:                                               ; preds = %130, %19
  br label %22

22:                                               ; preds = %124, %21
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
  br label %124

124:                                              ; preds = %22
  %125 = load i32, ptr %12, align 4
  %126 = icmp sle i32 %123, %125
  br i1 %126, label %22, label %127, !llvm.loop !13

127:                                              ; preds = %124
  store i32 %125, ptr %13, align 4
  %128 = load i32, ptr %14, align 4
  %129 = add nsw i32 %125, %128
  store i32 %129, ptr %12, align 4
  br label %130

130:                                              ; preds = %127
  %131 = load i32, ptr %15, align 4
  %132 = icmp sle i32 %129, %131
  br i1 %132, label %21, label %133, !llvm.loop !14

133:                                              ; preds = %130
  store i32 1, ptr %16, align 4
  br label %134

134:                                              ; preds = %143, %133
  %135 = load ptr, ptr %7, align 8
  %136 = load i32, ptr %16, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.complex, ptr %135, i64 %137
  %139 = load ptr, ptr %8, align 8
  %140 = getelementptr inbounds %struct.complex, ptr %139, i64 %137
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %138, ptr align 4 %140, i64 8, i1 false)
  %141 = load i32, ptr %16, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, ptr %16, align 4
  br label %143

143:                                              ; preds = %134
  %144 = load i32, ptr %6, align 4
  %145 = icmp sle i32 %142, %144
  br i1 %145, label %134, label %146, !llvm.loop !15

146:                                              ; preds = %143
  %147 = load i32, ptr %14, align 4
  %148 = add nsw i32 %147, %147
  store i32 %148, ptr %14, align 4
  br label %149

149:                                              ; preds = %146
  %150 = load i32, ptr %15, align 4
  %151 = icmp sle i32 %148, %150
  br i1 %151, label %19, label %152, !llvm.loop !16

152:                                              ; preds = %149
  store i32 1, ptr %11, align 4
  %153 = load i32, ptr %6, align 4
  %154 = icmp sle i32 1, %153
  br i1 %154, label %.lr.ph, label %177

.lr.ph:                                           ; preds = %152
  br label %155

155:                                              ; preds = %.lr.ph, %172
  %156 = load float, ptr %10, align 4
  %157 = load ptr, ptr %7, align 8
  %158 = load i32, ptr %11, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.complex, ptr %157, i64 %159
  %161 = load float, ptr %160, align 4
  %162 = fmul float %156, %161
  store float %162, ptr %160, align 4
  %163 = load float, ptr %10, align 4
  %164 = fneg float %163
  %165 = load ptr, ptr %7, align 8
  %166 = load i32, ptr %11, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.complex, ptr %165, i64 %167
  %169 = getelementptr inbounds nuw %struct.complex, ptr %168, i32 0, i32 1
  %170 = load float, ptr %169, align 4
  %171 = fmul float %164, %170
  store float %171, ptr %169, align 4
  br label %172

172:                                              ; preds = %155
  %173 = load i32, ptr %11, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, ptr %11, align 4
  %175 = load i32, ptr %6, align 4
  %176 = icmp sle i32 %174, %175
  br i1 %176, label %155, label %._crit_edge, !llvm.loop !17

._crit_edge:                                      ; preds = %172
  br label %177

177:                                              ; preds = %._crit_edge, %152
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
  br i1 true, label %.lr.ph, label %22

.lr.ph:                                           ; preds = %0
  br label %3

3:                                                ; preds = %.lr.ph, %18
  %4 = load i32, ptr @seed, align 4
  store i32 %4, ptr %2, align 4
  call void @Uniform11(ptr noundef %2, ptr noundef @zr)
  %5 = load i32, ptr %2, align 4
  store i32 %5, ptr @seed, align 4
  call void @Uniform11(ptr noundef %2, ptr noundef @zi)
  %6 = load i32, ptr %2, align 4
  store i32 %6, ptr @seed, align 4
  %7 = load float, ptr @zr, align 4
  %8 = call float @llvm.fmuladd.f32(float 2.000000e+01, float %7, float -1.000000e+01)
  %9 = load i32, ptr %1, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [257 x %struct.complex], ptr @z, i64 0, i64 %10
  store float %8, ptr %11, align 8
  %12 = load float, ptr @zi, align 4
  %13 = call float @llvm.fmuladd.f32(float 2.000000e+01, float %12, float -1.000000e+01)
  %14 = load i32, ptr %1, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [257 x %struct.complex], ptr @z, i64 0, i64 %15
  %17 = getelementptr inbounds nuw %struct.complex, ptr %16, i32 0, i32 1
  store float %13, ptr %17, align 4
  br label %18

18:                                               ; preds = %3
  %19 = load i32, ptr %1, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, ptr %1, align 4
  %21 = icmp sle i32 %20, 256
  br i1 %21, label %3, label %._crit_edge, !llvm.loop !18

._crit_edge:                                      ; preds = %18
  br label %22

22:                                               ; preds = %._crit_edge, %0
  store i32 1, ptr %1, align 4
  br i1 true, label %.lr.ph2, label %28

.lr.ph2:                                          ; preds = %22
  br label %23

23:                                               ; preds = %.lr.ph2, %24
  call void @Fft(i32 noundef 256, ptr noundef @z, ptr noundef @w, ptr noundef @e, float noundef 6.250000e-02)
  br label %24

24:                                               ; preds = %23
  %25 = load i32, ptr %1, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, ptr %1, align 4
  %27 = icmp sle i32 %26, 20
  br i1 %27, label %23, label %._crit_edge3, !llvm.loop !19

._crit_edge3:                                     ; preds = %24
  br label %28

28:                                               ; preds = %._crit_edge3, %22
  call void @Printcomplex(ptr noundef @z, i32 noundef 1, i32 noundef 256, i32 noundef 17)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  store i32 0, ptr %2, align 4
  br i1 true, label %.lr.ph, label %8

.lr.ph:                                           ; preds = %0
  br label %3

3:                                                ; preds = %.lr.ph, %4
  call void @Oscar()
  br label %4

4:                                                ; preds = %3
  %5 = load i32, ptr %2, align 4
  %6 = add nsw i32 %5, 1
  store i32 %6, ptr %2, align 4
  %7 = icmp slt i32 %6, 10
  br i1 %7, label %3, label %._crit_edge, !llvm.loop !20

._crit_edge:                                      ; preds = %4
  br label %8

8:                                                ; preds = %._crit_edge, %0
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
