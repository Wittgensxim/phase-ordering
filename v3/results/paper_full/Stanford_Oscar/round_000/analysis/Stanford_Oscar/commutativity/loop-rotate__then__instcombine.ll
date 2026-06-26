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
  br i1 true, label %.lr.ph, label %41

.lr.ph:                                           ; preds = %1
  br label %7

7:                                                ; preds = %.lr.ph, %37
  %8 = load i32, ptr %4, align 4
  %9 = load i32, ptr %3, align 4
  %10 = mul nsw i32 %8, %9
  store i32 %10, ptr %4, align 4
  %11 = load float, ptr %6, align 4
  %12 = load float, ptr %2, align 4
  %13 = fmul float %11, %12
  store float %13, ptr %6, align 4
  %14 = load i32, ptr %3, align 4
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %36

17:                                               ; preds = %7
  %18 = load i32, ptr %3, align 4
  %19 = and i32 %18, 3
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %17
  %22 = load float, ptr %5, align 4
  %23 = load float, ptr %6, align 4
  %24 = load i32, ptr %4, align 4
  %25 = sitofp i32 %24 to float
  %26 = fdiv float %23, %25
  %27 = fadd float %22, %26
  br label %35

28:                                               ; preds = %17
  %29 = load float, ptr %5, align 4
  %30 = load float, ptr %6, align 4
  %31 = load i32, ptr %4, align 4
  %32 = sitofp i32 %31 to float
  %33 = fdiv float %30, %32
  %34 = fsub float %29, %33
  br label %35

35:                                               ; preds = %28, %21
  %storemerge = phi float [ %34, %28 ], [ %27, %21 ]
  store float %storemerge, ptr %5, align 4
  br label %36

36:                                               ; preds = %35, %7
  br label %37

37:                                               ; preds = %36
  %38 = load i32, ptr %3, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, ptr %3, align 4
  %40 = icmp slt i32 %38, 10
  br i1 %40, label %7, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %37
  br label %41

41:                                               ; preds = %._crit_edge, %1
  %42 = load float, ptr %5, align 4
  ret float %42
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
  br label %9

9:                                                ; preds = %39, %4
  %10 = load ptr, ptr %5, align 8
  %11 = load i32, ptr %8, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [8 x i8], ptr %10, i64 %12
  %14 = load float, ptr %13, align 4
  %15 = fpext float %14 to double
  %16 = sext i32 %11 to i64
  %17 = getelementptr inbounds [8 x i8], ptr %10, i64 %16
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 4
  %19 = load float, ptr %18, align 4
  %20 = fpext float %19 to double
  %21 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %15, double noundef %20) #5
  %22 = load i32, ptr %8, align 4
  %23 = load i32, ptr %7, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, ptr %8, align 4
  %25 = load ptr, ptr %5, align 8
  %26 = sext i32 %24 to i64
  %27 = getelementptr inbounds [8 x i8], ptr %25, i64 %26
  %28 = load float, ptr %27, align 4
  %29 = fpext float %28 to double
  %30 = sext i32 %24 to i64
  %31 = getelementptr inbounds [8 x i8], ptr %25, i64 %30
  %32 = getelementptr inbounds nuw i8, ptr %31, i64 4
  %33 = load float, ptr %32, align 4
  %34 = fpext float %33 to double
  %35 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %29, double noundef %34) #5
  %putchar1 = call i32 @putchar(i32 10)
  %36 = load i32, ptr %8, align 4
  %37 = load i32, ptr %7, align 4
  %38 = add nsw i32 %36, %37
  store i32 %38, ptr %8, align 4
  br label %39

39:                                               ; preds = %9
  %40 = load i32, ptr %8, align 4
  %41 = load i32, ptr %6, align 4
  %.not = icmp sgt i32 %40, %41
  br i1 %.not, label %42, label %9, !llvm.loop !9

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
  store i32 1, ptr %8, align 4
  br i1 true, label %.lr.ph, label %29

.lr.ph:                                           ; preds = %2
  br label %13

13:                                               ; preds = %.lr.ph, %25
  %14 = load float, ptr %5, align 4
  %15 = load float, ptr %6, align 4
  %16 = fdiv float %14, %15
  %17 = call float @Cos(float noundef %16)
  %18 = fmul float %17, 2.000000e+00
  %19 = fdiv float 1.000000e+00, %18
  %20 = load i32, ptr %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [4 x i8], ptr %7, i64 %21
  store float %19, ptr %22, align 4
  %23 = load float, ptr %6, align 4
  %24 = fadd float %23, %23
  store float %24, ptr %6, align 4
  br label %25

25:                                               ; preds = %13
  %26 = load i32, ptr %8, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, ptr %8, align 4
  %28 = icmp slt i32 %26, 25
  br i1 %28, label %13, label %._crit_edge, !llvm.loop !10

._crit_edge:                                      ; preds = %25
  br label %29

29:                                               ; preds = %._crit_edge, %2
  %30 = load i32, ptr %3, align 4
  %31 = sdiv i32 %30, 2
  store i32 %31, ptr %12, align 4
  %32 = sdiv i32 %30, 4
  store i32 %32, ptr %11, align 4
  store i32 1, ptr %9, align 4
  %33 = load ptr, ptr %4, align 8
  %34 = getelementptr inbounds nuw i8, ptr %33, i64 8
  store float 1.000000e+00, ptr %34, align 4
  %35 = getelementptr inbounds nuw i8, ptr %33, i64 12
  store float 0.000000e+00, ptr %35, align 4
  %36 = load i32, ptr %11, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr [8 x i8], ptr %33, i64 %37
  %39 = getelementptr i8, ptr %38, i64 8
  store float 0.000000e+00, ptr %39, align 4
  %40 = load ptr, ptr %4, align 8
  %41 = sext i32 %36 to i64
  %42 = getelementptr [8 x i8], ptr %40, i64 %41
  %43 = getelementptr i8, ptr %42, i64 12
  store float 1.000000e+00, ptr %43, align 4
  %44 = load i32, ptr %12, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr [8 x i8], ptr %40, i64 %45
  %47 = getelementptr i8, ptr %46, i64 8
  store float -1.000000e+00, ptr %47, align 4
  %48 = load ptr, ptr %4, align 8
  %49 = sext i32 %44 to i64
  %50 = getelementptr [8 x i8], ptr %48, i64 %49
  %51 = getelementptr i8, ptr %50, i64 12
  store float 0.000000e+00, ptr %51, align 4
  br label %52

52:                                               ; preds = %120, %29
  %53 = load i32, ptr %11, align 4
  %54 = sdiv i32 %53, 2
  store i32 %54, ptr %8, align 4
  store i32 %54, ptr %10, align 4
  br label %55

55:                                               ; preds = %112, %52
  %56 = load i32, ptr %9, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [4 x i8], ptr %7, i64 %57
  %59 = load float, ptr %58, align 4
  %60 = load ptr, ptr %4, align 8
  %61 = load i32, ptr %10, align 4
  %62 = load i32, ptr %8, align 4
  %63 = add nsw i32 %61, %62
  %64 = sext i32 %63 to i64
  %65 = getelementptr [8 x i8], ptr %60, i64 %64
  %66 = getelementptr i8, ptr %65, i64 8
  %67 = load float, ptr %66, align 4
  %68 = load ptr, ptr %4, align 8
  %69 = load i32, ptr %10, align 4
  %70 = load i32, ptr %8, align 4
  %71 = sub nsw i32 %69, %70
  %72 = sext i32 %71 to i64
  %73 = getelementptr [8 x i8], ptr %68, i64 %72
  %74 = getelementptr i8, ptr %73, i64 8
  %75 = load float, ptr %74, align 4
  %76 = fadd float %67, %75
  %77 = fmul float %59, %76
  %78 = load ptr, ptr %4, align 8
  %79 = load i32, ptr %10, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr [8 x i8], ptr %78, i64 %80
  %82 = getelementptr i8, ptr %81, i64 8
  store float %77, ptr %82, align 4
  %83 = load i32, ptr %9, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [4 x i8], ptr %7, i64 %84
  %86 = load float, ptr %85, align 4
  %87 = load ptr, ptr %4, align 8
  %88 = load i32, ptr %10, align 4
  %89 = load i32, ptr %8, align 4
  %90 = add nsw i32 %88, %89
  %91 = sext i32 %90 to i64
  %92 = getelementptr [8 x i8], ptr %87, i64 %91
  %93 = getelementptr i8, ptr %92, i64 12
  %94 = load float, ptr %93, align 4
  %95 = load ptr, ptr %4, align 8
  %96 = load i32, ptr %10, align 4
  %97 = load i32, ptr %8, align 4
  %98 = sub nsw i32 %96, %97
  %99 = sext i32 %98 to i64
  %100 = getelementptr [8 x i8], ptr %95, i64 %99
  %101 = getelementptr i8, ptr %100, i64 12
  %102 = load float, ptr %101, align 4
  %103 = fadd float %94, %102
  %104 = fmul float %86, %103
  %105 = load ptr, ptr %4, align 8
  %106 = load i32, ptr %10, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr [8 x i8], ptr %105, i64 %107
  %109 = getelementptr i8, ptr %108, i64 12
  store float %104, ptr %109, align 4
  %110 = load i32, ptr %11, align 4
  %111 = add nsw i32 %106, %110
  store i32 %111, ptr %10, align 4
  br label %112

112:                                              ; preds = %55
  %113 = load i32, ptr %10, align 4
  %114 = load i32, ptr %12, align 4
  %.not = icmp sgt i32 %113, %114
  br i1 %.not, label %115, label %55, !llvm.loop !11

115:                                              ; preds = %112
  %116 = load i32, ptr %9, align 4
  %117 = add nsw i32 %116, 1
  %118 = call i32 @Min0(i32 noundef %117, i32 noundef 25)
  store i32 %118, ptr %9, align 4
  %119 = load i32, ptr %8, align 4
  store i32 %119, ptr %11, align 4
  br label %120

120:                                              ; preds = %115
  %121 = load i32, ptr %11, align 4
  %122 = icmp sgt i32 %121, 1
  br i1 %122, label %52, label %123, !llvm.loop !12

123:                                              ; preds = %120
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

18:                                               ; preds = %179, %5
  store i32 0, ptr %13, align 4
  %19 = load i32, ptr %14, align 4
  store i32 %19, ptr %12, align 4
  store i32 1, ptr %11, align 4
  br label %20

20:                                               ; preds = %158, %18
  br label %21

21:                                               ; preds = %151, %20
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
  %34 = load i32, ptr %11, align 4
  %35 = load i32, ptr %13, align 4
  %36 = add nsw i32 %34, %35
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [8 x i8], ptr %33, i64 %37
  store float %32, ptr %38, align 4
  %39 = load ptr, ptr %7, align 8
  %40 = load i32, ptr %11, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [8 x i8], ptr %39, i64 %41
  %43 = getelementptr inbounds nuw i8, ptr %42, i64 4
  %44 = load float, ptr %43, align 4
  %45 = load i32, ptr %15, align 4
  %46 = add nsw i32 %45, %40
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [8 x i8], ptr %39, i64 %47
  %49 = getelementptr inbounds nuw i8, ptr %48, i64 4
  %50 = load float, ptr %49, align 4
  %51 = fadd float %44, %50
  %52 = load ptr, ptr %8, align 8
  %53 = load i32, ptr %11, align 4
  %54 = load i32, ptr %13, align 4
  %55 = add nsw i32 %53, %54
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [8 x i8], ptr %52, i64 %56
  %58 = getelementptr inbounds nuw i8, ptr %57, i64 4
  store float %51, ptr %58, align 4
  %59 = load ptr, ptr %9, align 8
  %60 = load i32, ptr %13, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr [8 x i8], ptr %59, i64 %61
  %63 = getelementptr i8, ptr %62, i64 8
  %64 = load float, ptr %63, align 4
  %65 = load ptr, ptr %7, align 8
  %66 = load i32, ptr %11, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [8 x i8], ptr %65, i64 %67
  %69 = load float, ptr %68, align 4
  %70 = load i32, ptr %15, align 4
  %71 = add nsw i32 %66, %70
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [8 x i8], ptr %65, i64 %72
  %74 = load float, ptr %73, align 4
  %75 = fsub float %69, %74
  %76 = load ptr, ptr %9, align 8
  %77 = load i32, ptr %13, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr [8 x i8], ptr %76, i64 %78
  %80 = getelementptr i8, ptr %79, i64 12
  %81 = load float, ptr %80, align 4
  %82 = load ptr, ptr %7, align 8
  %83 = load i32, ptr %11, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [8 x i8], ptr %82, i64 %84
  %86 = getelementptr inbounds nuw i8, ptr %85, i64 4
  %87 = load float, ptr %86, align 4
  %88 = load i32, ptr %15, align 4
  %89 = add nsw i32 %83, %88
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [8 x i8], ptr %82, i64 %90
  %92 = getelementptr inbounds nuw i8, ptr %91, i64 4
  %93 = load float, ptr %92, align 4
  %94 = fsub float %87, %93
  %95 = fneg float %94
  %96 = fmul float %81, %95
  %97 = call float @llvm.fmuladd.f32(float %64, float %75, float %96)
  %98 = load ptr, ptr %8, align 8
  %99 = load i32, ptr %11, align 4
  %100 = load i32, ptr %12, align 4
  %101 = add nsw i32 %99, %100
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [8 x i8], ptr %98, i64 %102
  store float %97, ptr %103, align 4
  %104 = load ptr, ptr %9, align 8
  %105 = load i32, ptr %13, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr [8 x i8], ptr %104, i64 %106
  %108 = getelementptr i8, ptr %107, i64 8
  %109 = load float, ptr %108, align 4
  %110 = load ptr, ptr %7, align 8
  %111 = load i32, ptr %11, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [8 x i8], ptr %110, i64 %112
  %114 = getelementptr inbounds nuw i8, ptr %113, i64 4
  %115 = load float, ptr %114, align 4
  %116 = load i32, ptr %15, align 4
  %117 = add nsw i32 %111, %116
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [8 x i8], ptr %110, i64 %118
  %120 = getelementptr inbounds nuw i8, ptr %119, i64 4
  %121 = load float, ptr %120, align 4
  %122 = fsub float %115, %121
  %123 = load ptr, ptr %9, align 8
  %124 = load i32, ptr %13, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr [8 x i8], ptr %123, i64 %125
  %127 = getelementptr i8, ptr %126, i64 12
  %128 = load float, ptr %127, align 4
  %129 = load ptr, ptr %7, align 8
  %130 = load i32, ptr %11, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [8 x i8], ptr %129, i64 %131
  %133 = load float, ptr %132, align 4
  %134 = load i32, ptr %15, align 4
  %135 = add nsw i32 %130, %134
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [8 x i8], ptr %129, i64 %136
  %138 = load float, ptr %137, align 4
  %139 = fsub float %133, %138
  %140 = fmul float %128, %139
  %141 = call float @llvm.fmuladd.f32(float %109, float %122, float %140)
  %142 = load ptr, ptr %8, align 8
  %143 = load i32, ptr %11, align 4
  %144 = load i32, ptr %12, align 4
  %145 = add nsw i32 %143, %144
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds [8 x i8], ptr %142, i64 %146
  %148 = getelementptr inbounds nuw i8, ptr %147, i64 4
  store float %141, ptr %148, align 4
  %149 = load i32, ptr %11, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, ptr %11, align 4
  br label %151

151:                                              ; preds = %21
  %152 = load i32, ptr %11, align 4
  %153 = load i32, ptr %12, align 4
  %.not = icmp sgt i32 %152, %153
  br i1 %.not, label %154, label %21, !llvm.loop !13

154:                                              ; preds = %151
  %155 = load i32, ptr %12, align 4
  store i32 %155, ptr %13, align 4
  %156 = load i32, ptr %14, align 4
  %157 = add nsw i32 %155, %156
  store i32 %157, ptr %12, align 4
  br label %158

158:                                              ; preds = %154
  %159 = load i32, ptr %12, align 4
  %160 = load i32, ptr %15, align 4
  %.not1 = icmp sgt i32 %159, %160
  br i1 %.not1, label %161, label %20, !llvm.loop !14

161:                                              ; preds = %158
  store i32 1, ptr %16, align 4
  br label %162

162:                                              ; preds = %173, %161
  %163 = load ptr, ptr %7, align 8
  %164 = load i32, ptr %16, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds [8 x i8], ptr %163, i64 %165
  %167 = load ptr, ptr %8, align 8
  %168 = sext i32 %164 to i64
  %169 = getelementptr inbounds [8 x i8], ptr %167, i64 %168
  %170 = load i64, ptr %169, align 4
  store i64 %170, ptr %166, align 4
  %171 = load i32, ptr %16, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, ptr %16, align 4
  br label %173

173:                                              ; preds = %162
  %174 = load i32, ptr %16, align 4
  %175 = load i32, ptr %6, align 4
  %.not2 = icmp sgt i32 %174, %175
  br i1 %.not2, label %176, label %162, !llvm.loop !15

176:                                              ; preds = %173
  %177 = load i32, ptr %14, align 4
  %178 = shl nsw i32 %177, 1
  store i32 %178, ptr %14, align 4
  br label %179

179:                                              ; preds = %176
  %180 = load i32, ptr %14, align 4
  %181 = load i32, ptr %15, align 4
  %.not3 = icmp sgt i32 %180, %181
  br i1 %.not3, label %182, label %18, !llvm.loop !16

182:                                              ; preds = %179
  store i32 1, ptr %11, align 4
  %183 = load i32, ptr %6, align 4
  %184 = icmp sgt i32 %183, 0
  br i1 %184, label %.lr.ph, label %213

.lr.ph:                                           ; preds = %182
  br label %185

185:                                              ; preds = %.lr.ph, %209
  %186 = load float, ptr %10, align 4
  %187 = load ptr, ptr %7, align 8
  %188 = load i32, ptr %11, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds [8 x i8], ptr %187, i64 %189
  %191 = load float, ptr %190, align 4
  %192 = fmul float %186, %191
  %193 = sext i32 %188 to i64
  %194 = getelementptr inbounds [8 x i8], ptr %187, i64 %193
  store float %192, ptr %194, align 4
  %195 = load float, ptr %10, align 4
  %196 = fneg float %195
  %197 = load ptr, ptr %7, align 8
  %198 = load i32, ptr %11, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds [8 x i8], ptr %197, i64 %199
  %201 = getelementptr inbounds nuw i8, ptr %200, i64 4
  %202 = load float, ptr %201, align 4
  %203 = fmul float %202, %196
  %204 = load ptr, ptr %7, align 8
  %205 = load i32, ptr %11, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds [8 x i8], ptr %204, i64 %206
  %208 = getelementptr inbounds nuw i8, ptr %207, i64 4
  store float %203, ptr %208, align 4
  br label %209

209:                                              ; preds = %185
  %210 = load i32, ptr %11, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, ptr %11, align 4
  %212 = load i32, ptr %6, align 4
  %.not4.not = icmp slt i32 %210, %212
  br i1 %.not4.not, label %185, label %._crit_edge, !llvm.loop !17

._crit_edge:                                      ; preds = %209
  br label %213

213:                                              ; preds = %._crit_edge, %182
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
  store i32 1, ptr %1, align 4
  br i1 true, label %.lr.ph, label %21

.lr.ph:                                           ; preds = %0
  br label %3

3:                                                ; preds = %.lr.ph, %17
  %4 = load i32, ptr @seed, align 4
  store i32 %4, ptr %2, align 4
  call void @Uniform11(ptr noundef nonnull %2, ptr noundef nonnull @zr)
  %5 = load i32, ptr %2, align 4
  store i32 %5, ptr @seed, align 4
  call void @Uniform11(ptr noundef nonnull %2, ptr noundef nonnull @zi)
  %6 = load i32, ptr %2, align 4
  store i32 %6, ptr @seed, align 4
  %7 = load float, ptr @zr, align 4
  %8 = call float @llvm.fmuladd.f32(float %7, float 2.000000e+01, float -1.000000e+01)
  %9 = load i32, ptr %1, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [8 x i8], ptr @z, i64 %10
  store float %8, ptr %11, align 8
  %12 = load float, ptr @zi, align 4
  %13 = call float @llvm.fmuladd.f32(float %12, float 2.000000e+01, float -1.000000e+01)
  %14 = sext i32 %9 to i64
  %15 = getelementptr inbounds [8 x i8], ptr @z, i64 %14
  %16 = getelementptr inbounds nuw i8, ptr %15, i64 4
  store float %13, ptr %16, align 4
  br label %17

17:                                               ; preds = %3
  %18 = load i32, ptr %1, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, ptr %1, align 4
  %20 = icmp slt i32 %18, 256
  br i1 %20, label %3, label %._crit_edge, !llvm.loop !18

._crit_edge:                                      ; preds = %17
  br label %21

21:                                               ; preds = %._crit_edge, %0
  store i32 1, ptr %1, align 4
  br i1 true, label %.lr.ph2, label %27

.lr.ph2:                                          ; preds = %21
  br label %22

22:                                               ; preds = %.lr.ph2, %23
  call void @Fft(i32 noundef 256, ptr noundef nonnull @z, ptr noundef nonnull @w, ptr noundef nonnull @e, float noundef 6.250000e-02)
  br label %23

23:                                               ; preds = %22
  %24 = load i32, ptr %1, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, ptr %1, align 4
  %26 = icmp slt i32 %24, 20
  br i1 %26, label %22, label %._crit_edge3, !llvm.loop !19

._crit_edge3:                                     ; preds = %23
  br label %27

27:                                               ; preds = %._crit_edge3, %21
  call void @Printcomplex(ptr noundef nonnull @z, i32 noundef 1, i32 noundef 256, i32 noundef 17)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  br i1 true, label %.lr.ph, label %7

.lr.ph:                                           ; preds = %0
  br label %2

2:                                                ; preds = %.lr.ph, %3
  call void @Oscar()
  br label %3

3:                                                ; preds = %2
  %4 = load i32, ptr %1, align 4
  %5 = add nsw i32 %4, 1
  store i32 %5, ptr %1, align 4
  %6 = icmp slt i32 %4, 9
  br i1 %6, label %2, label %._crit_edge, !llvm.loop !20

._crit_edge:                                      ; preds = %3
  br label %7

7:                                                ; preds = %._crit_edge, %0
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
