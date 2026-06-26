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
  %8 = load float, ptr %2, align 4
  %.promoted = load i32, ptr %3, align 4
  %.promoted1 = load i32, ptr %4, align 4
  %.promoted3 = load float, ptr %6, align 4
  %.promoted5 = load float, ptr %5, align 4
  br label %9

9:                                                ; preds = %31, %1
  %10 = phi float [ %32, %31 ], [ %.promoted5, %1 ]
  %11 = phi float [ %33, %31 ], [ %.promoted3, %1 ]
  %12 = phi i32 [ %34, %31 ], [ %.promoted1, %1 ]
  %13 = phi i32 [ %35, %31 ], [ %.promoted, %1 ]
  %14 = icmp sle i32 %13, 10
  br i1 %14, label %15, label %36

15:                                               ; preds = %9
  %16 = mul nsw i32 %12, %13
  %17 = fmul float %11, %8
  %18 = and i32 %13, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %15
  %21 = and i32 %13, 3
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = sitofp i32 %16 to float
  %25 = fdiv float %17, %24
  %26 = fadd float %10, %25
  br label %31

27:                                               ; preds = %20
  %28 = sitofp i32 %16 to float
  %29 = fdiv float %17, %28
  %30 = fsub float %10, %29
  br label %31

31:                                               ; preds = %15, %27, %23
  %32 = phi float [ %10, %15 ], [ %30, %27 ], [ %26, %23 ]
  %33 = phi float [ %17, %15 ], [ %17, %27 ], [ %17, %23 ]
  %34 = phi i32 [ %16, %15 ], [ %16, %27 ], [ %16, %23 ]
  %35 = add nsw i32 %13, 1
  br label %9, !llvm.loop !7

36:                                               ; preds = %9
  %.lcssa6 = phi float [ %10, %9 ]
  %.lcssa4 = phi float [ %11, %9 ]
  %.lcssa2 = phi i32 [ %12, %9 ]
  %.lcssa = phi i32 [ %13, %9 ]
  store i32 %.lcssa, ptr %3, align 4
  store i32 %.lcssa2, ptr %4, align 4
  store float %.lcssa4, ptr %6, align 4
  store float %.lcssa6, ptr %5, align 4
  %37 = load float, ptr %5, align 4
  ret float %37
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
  %12 = load ptr, ptr %5, align 8
  %13 = load ptr, ptr %5, align 8
  %14 = load i32, ptr %8, align 4
  %15 = load ptr, ptr %5, align 8
  %16 = load ptr, ptr %5, align 8
  %17 = load i32, ptr %8, align 4
  %18 = load i32, ptr %7, align 4
  %.promoted = load i32, ptr %9, align 4
  br label %19

19:                                               ; preds = %19, %4
  %20 = phi i32 [ %45, %19 ], [ %.promoted, %4 ]
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.complex, ptr %12, i64 %21
  %23 = getelementptr inbounds nuw %struct.complex, ptr %22, i32 0, i32 0
  %24 = load float, ptr %23, align 4
  %25 = fpext float %24 to double
  %26 = sext i32 %20 to i64
  %27 = getelementptr inbounds %struct.complex, ptr %13, i64 %26
  %28 = getelementptr inbounds nuw %struct.complex, ptr %27, i32 0, i32 1
  %29 = load float, ptr %28, align 4
  %30 = fpext float %29 to double
  %31 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, double noundef %25, double noundef %30)
  %32 = add nsw i32 %20, %14
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.complex, ptr %15, i64 %33
  %35 = getelementptr inbounds nuw %struct.complex, ptr %34, i32 0, i32 0
  %36 = load float, ptr %35, align 4
  %37 = fpext float %36 to double
  %38 = sext i32 %32 to i64
  %39 = getelementptr inbounds %struct.complex, ptr %16, i64 %38
  %40 = getelementptr inbounds nuw %struct.complex, ptr %39, i32 0, i32 1
  %41 = load float, ptr %40, align 4
  %42 = fpext float %41 to double
  %43 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, double noundef %37, double noundef %42)
  %44 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %45 = add nsw i32 %32, %17
  %46 = icmp sle i32 %45, %18
  br i1 %46, label %19, label %47, !llvm.loop !9

47:                                               ; preds = %19
  %.lcssa = phi i32 [ %45, %19 ]
  store i32 %.lcssa, ptr %9, align 4
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
  %13 = load float, ptr %5, align 4
  %.promoted = load i32, ptr %8, align 4
  %.promoted1 = load float, ptr %6, align 4
  br label %14

14:                                               ; preds = %18, %2
  %15 = phi float [ %25, %18 ], [ %.promoted1, %2 ]
  %16 = phi i32 [ %26, %18 ], [ %.promoted, %2 ]
  %17 = icmp sle i32 %16, 25
  br i1 %17, label %18, label %27

18:                                               ; preds = %14
  %19 = fdiv float %13, %15
  %20 = call float @Cos(float noundef %19)
  %21 = fmul float 2.000000e+00, %20
  %22 = fdiv float 1.000000e+00, %21
  %23 = sext i32 %16 to i64
  %24 = getelementptr inbounds [26 x float], ptr %7, i64 0, i64 %23
  store float %22, ptr %24, align 4
  %25 = fadd float %15, %15
  %26 = add nsw i32 %16, 1
  br label %14, !llvm.loop !10

27:                                               ; preds = %14
  %.lcssa2 = phi float [ %15, %14 ]
  %.lcssa = phi i32 [ %16, %14 ]
  store i32 %.lcssa, ptr %8, align 4
  store float %.lcssa2, ptr %6, align 4
  %28 = load i32, ptr %3, align 4
  %29 = sdiv i32 %28, 2
  store i32 %29, ptr %12, align 4
  %30 = load i32, ptr %12, align 4
  %31 = sdiv i32 %30, 2
  store i32 %31, ptr %11, align 4
  store i32 1, ptr %9, align 4
  %32 = load ptr, ptr %4, align 8
  %33 = getelementptr inbounds %struct.complex, ptr %32, i64 1
  %34 = getelementptr inbounds nuw %struct.complex, ptr %33, i32 0, i32 0
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
  %43 = getelementptr inbounds nuw %struct.complex, ptr %42, i32 0, i32 0
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
  %55 = getelementptr inbounds nuw %struct.complex, ptr %54, i32 0, i32 0
  store float -1.000000e+00, ptr %55, align 4
  %56 = load ptr, ptr %4, align 8
  %57 = load i32, ptr %12, align 4
  %58 = add nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.complex, ptr %56, i64 %59
  %61 = getelementptr inbounds nuw %struct.complex, ptr %60, i32 0, i32 1
  store float 0.000000e+00, ptr %61, align 4
  %62 = load ptr, ptr %4, align 8
  %63 = load ptr, ptr %4, align 8
  %64 = load ptr, ptr %4, align 8
  %65 = load ptr, ptr %4, align 8
  %66 = load ptr, ptr %4, align 8
  %67 = load ptr, ptr %4, align 8
  %68 = load i32, ptr %12, align 4
  %.promoted11 = load i32, ptr %11, align 4
  %.promoted16 = load i32, ptr %9, align 4
  br label %69

69:                                               ; preds = %111, %27
  %70 = phi i32 [ %113, %111 ], [ %.promoted16, %27 ]
  %71 = phi i32 [ %72, %111 ], [ %.promoted11, %27 ]
  %72 = sdiv i32 %71, 2
  %73 = sext i32 %70 to i64
  %74 = getelementptr inbounds [26 x float], ptr %7, i64 0, i64 %73
  %75 = load float, ptr %74, align 4
  %invariant.op = add i32 %72, 1
  %invariant.op3 = sub i32 1, %72
  %76 = sext i32 %70 to i64
  %77 = getelementptr inbounds [26 x float], ptr %7, i64 0, i64 %76
  %78 = load float, ptr %77, align 4
  %invariant.op5 = add i32 %72, 1
  %invariant.op7 = sub i32 1, %72
  br label %79

79:                                               ; preds = %79, %69
  %80 = phi i32 [ %109, %79 ], [ %72, %69 ]
  %.reass = add i32 %80, %invariant.op
  %81 = sext i32 %.reass to i64
  %82 = getelementptr inbounds %struct.complex, ptr %62, i64 %81
  %83 = getelementptr inbounds nuw %struct.complex, ptr %82, i32 0, i32 0
  %84 = load float, ptr %83, align 4
  %.reass4 = add i32 %80, %invariant.op3
  %85 = sext i32 %.reass4 to i64
  %86 = getelementptr inbounds %struct.complex, ptr %63, i64 %85
  %87 = getelementptr inbounds nuw %struct.complex, ptr %86, i32 0, i32 0
  %88 = load float, ptr %87, align 4
  %89 = fadd float %84, %88
  %90 = fmul float %75, %89
  %91 = add nsw i32 %80, 1
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.complex, ptr %64, i64 %92
  %94 = getelementptr inbounds nuw %struct.complex, ptr %93, i32 0, i32 0
  store float %90, ptr %94, align 4
  %.reass6 = add i32 %80, %invariant.op5
  %95 = sext i32 %.reass6 to i64
  %96 = getelementptr inbounds %struct.complex, ptr %65, i64 %95
  %97 = getelementptr inbounds nuw %struct.complex, ptr %96, i32 0, i32 1
  %98 = load float, ptr %97, align 4
  %.reass8 = add i32 %80, %invariant.op7
  %99 = sext i32 %.reass8 to i64
  %100 = getelementptr inbounds %struct.complex, ptr %66, i64 %99
  %101 = getelementptr inbounds nuw %struct.complex, ptr %100, i32 0, i32 1
  %102 = load float, ptr %101, align 4
  %103 = fadd float %98, %102
  %104 = fmul float %78, %103
  %105 = add nsw i32 %80, 1
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.complex, ptr %67, i64 %106
  %108 = getelementptr inbounds nuw %struct.complex, ptr %107, i32 0, i32 1
  store float %104, ptr %108, align 4
  %109 = add nsw i32 %80, %71
  %110 = icmp sle i32 %109, %68
  br i1 %110, label %79, label %111, !llvm.loop !11

111:                                              ; preds = %79
  %.lcssa10 = phi i32 [ %109, %79 ]
  %112 = add nsw i32 %70, 1
  %113 = call i32 @Min0(i32 noundef %112, i32 noundef 25)
  %114 = icmp sgt i32 %72, 1
  br i1 %114, label %69, label %115, !llvm.loop !12

115:                                              ; preds = %111
  %.lcssa17 = phi i32 [ %113, %111 ]
  %.lcssa10.lcssa = phi i32 [ %.lcssa10, %111 ]
  %.lcssa14 = phi i32 [ %72, %111 ]
  store i32 %.lcssa14, ptr %11, align 4
  store i32 %.lcssa14, ptr %8, align 4
  store i32 %.lcssa10.lcssa, ptr %10, align 4
  store i32 %.lcssa17, ptr %9, align 4
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
  %19 = load ptr, ptr %7, align 8
  %20 = load ptr, ptr %7, align 8
  %21 = load i32, ptr %15, align 4
  %22 = load ptr, ptr %8, align 8
  %23 = load ptr, ptr %7, align 8
  %24 = load ptr, ptr %7, align 8
  %25 = load i32, ptr %15, align 4
  %26 = load ptr, ptr %8, align 8
  %27 = load ptr, ptr %9, align 8
  %28 = load ptr, ptr %7, align 8
  %29 = load ptr, ptr %7, align 8
  %30 = load i32, ptr %15, align 4
  %31 = load ptr, ptr %9, align 8
  %32 = load ptr, ptr %7, align 8
  %33 = load ptr, ptr %7, align 8
  %34 = load i32, ptr %15, align 4
  %35 = load ptr, ptr %8, align 8
  %36 = load ptr, ptr %9, align 8
  %37 = load ptr, ptr %7, align 8
  %38 = load ptr, ptr %7, align 8
  %39 = load i32, ptr %15, align 4
  %40 = load ptr, ptr %9, align 8
  %41 = load ptr, ptr %7, align 8
  %42 = load ptr, ptr %7, align 8
  %43 = load i32, ptr %15, align 4
  %44 = load ptr, ptr %8, align 8
  %45 = load i32, ptr %15, align 4
  %46 = load ptr, ptr %7, align 8
  %47 = load ptr, ptr %8, align 8
  %48 = load i32, ptr %6, align 4
  %49 = load i32, ptr %15, align 4
  %.promoted9 = load i32, ptr %14, align 4
  br label %50

50:                                               ; preds = %172, %5
  %51 = phi i32 [ %173, %172 ], [ %.promoted9, %5 ]
  br label %52

52:                                               ; preds = %160, %50
  %.lcssa6 = phi i32 [ %.lcssa, %160 ], [ 1, %50 ]
  %53 = phi i32 [ %161, %160 ], [ %51, %50 ]
  %54 = phi i32 [ %53, %160 ], [ 0, %50 ]
  %55 = add nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.complex, ptr %27, i64 %56
  %58 = getelementptr inbounds nuw %struct.complex, ptr %57, i32 0, i32 0
  %59 = add nsw i32 %54, 1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.complex, ptr %31, i64 %60
  %62 = getelementptr inbounds nuw %struct.complex, ptr %61, i32 0, i32 1
  %63 = add nsw i32 %54, 1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.complex, ptr %36, i64 %64
  %66 = getelementptr inbounds nuw %struct.complex, ptr %65, i32 0, i32 0
  %67 = add nsw i32 %54, 1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.complex, ptr %40, i64 %68
  %70 = getelementptr inbounds nuw %struct.complex, ptr %69, i32 0, i32 1
  br label %71

71:                                               ; preds = %71, %52
  %72 = phi i32 [ %158, %71 ], [ %.lcssa6, %52 ]
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.complex, ptr %19, i64 %73
  %75 = getelementptr inbounds nuw %struct.complex, ptr %74, i32 0, i32 0
  %76 = load float, ptr %75, align 4
  %77 = add nsw i32 %21, %72
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.complex, ptr %20, i64 %78
  %80 = getelementptr inbounds nuw %struct.complex, ptr %79, i32 0, i32 0
  %81 = load float, ptr %80, align 4
  %82 = fadd float %76, %81
  %83 = add nsw i32 %72, %54
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.complex, ptr %22, i64 %84
  %86 = getelementptr inbounds nuw %struct.complex, ptr %85, i32 0, i32 0
  store float %82, ptr %86, align 4
  %87 = sext i32 %72 to i64
  %88 = getelementptr inbounds %struct.complex, ptr %23, i64 %87
  %89 = getelementptr inbounds nuw %struct.complex, ptr %88, i32 0, i32 1
  %90 = load float, ptr %89, align 4
  %91 = add nsw i32 %25, %72
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.complex, ptr %24, i64 %92
  %94 = getelementptr inbounds nuw %struct.complex, ptr %93, i32 0, i32 1
  %95 = load float, ptr %94, align 4
  %96 = fadd float %90, %95
  %97 = add nsw i32 %72, %54
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.complex, ptr %26, i64 %98
  %100 = getelementptr inbounds nuw %struct.complex, ptr %99, i32 0, i32 1
  store float %96, ptr %100, align 4
  %101 = load float, ptr %58, align 4
  %102 = sext i32 %72 to i64
  %103 = getelementptr inbounds %struct.complex, ptr %28, i64 %102
  %104 = getelementptr inbounds nuw %struct.complex, ptr %103, i32 0, i32 0
  %105 = load float, ptr %104, align 4
  %106 = add nsw i32 %72, %30
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.complex, ptr %29, i64 %107
  %109 = getelementptr inbounds nuw %struct.complex, ptr %108, i32 0, i32 0
  %110 = load float, ptr %109, align 4
  %111 = fsub float %105, %110
  %112 = load float, ptr %62, align 4
  %113 = sext i32 %72 to i64
  %114 = getelementptr inbounds %struct.complex, ptr %32, i64 %113
  %115 = getelementptr inbounds nuw %struct.complex, ptr %114, i32 0, i32 1
  %116 = load float, ptr %115, align 4
  %117 = add nsw i32 %72, %34
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.complex, ptr %33, i64 %118
  %120 = getelementptr inbounds nuw %struct.complex, ptr %119, i32 0, i32 1
  %121 = load float, ptr %120, align 4
  %122 = fsub float %116, %121
  %123 = fmul float %112, %122
  %124 = fneg float %123
  %125 = call float @llvm.fmuladd.f32(float %101, float %111, float %124)
  %126 = add nsw i32 %72, %53
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.complex, ptr %35, i64 %127
  %129 = getelementptr inbounds nuw %struct.complex, ptr %128, i32 0, i32 0
  store float %125, ptr %129, align 4
  %130 = load float, ptr %66, align 4
  %131 = sext i32 %72 to i64
  %132 = getelementptr inbounds %struct.complex, ptr %37, i64 %131
  %133 = getelementptr inbounds nuw %struct.complex, ptr %132, i32 0, i32 1
  %134 = load float, ptr %133, align 4
  %135 = add nsw i32 %72, %39
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.complex, ptr %38, i64 %136
  %138 = getelementptr inbounds nuw %struct.complex, ptr %137, i32 0, i32 1
  %139 = load float, ptr %138, align 4
  %140 = fsub float %134, %139
  %141 = load float, ptr %70, align 4
  %142 = sext i32 %72 to i64
  %143 = getelementptr inbounds %struct.complex, ptr %41, i64 %142
  %144 = getelementptr inbounds nuw %struct.complex, ptr %143, i32 0, i32 0
  %145 = load float, ptr %144, align 4
  %146 = add nsw i32 %72, %43
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.complex, ptr %42, i64 %147
  %149 = getelementptr inbounds nuw %struct.complex, ptr %148, i32 0, i32 0
  %150 = load float, ptr %149, align 4
  %151 = fsub float %145, %150
  %152 = fmul float %141, %151
  %153 = call float @llvm.fmuladd.f32(float %130, float %140, float %152)
  %154 = add nsw i32 %72, %53
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.complex, ptr %44, i64 %155
  %157 = getelementptr inbounds nuw %struct.complex, ptr %156, i32 0, i32 1
  store float %153, ptr %157, align 4
  %158 = add nsw i32 %72, 1
  %159 = icmp sle i32 %158, %53
  br i1 %159, label %71, label %160, !llvm.loop !13

160:                                              ; preds = %71
  %.lcssa = phi i32 [ %158, %71 ]
  %161 = add nsw i32 %53, %51
  %162 = icmp sle i32 %161, %45
  br i1 %162, label %52, label %163, !llvm.loop !14

163:                                              ; preds = %160
  %.lcssa.lcssa = phi i32 [ %.lcssa, %160 ]
  %.lcssa4 = phi i32 [ %161, %160 ]
  %.lcssa2 = phi i32 [ %53, %160 ]
  br label %164

164:                                              ; preds = %164, %163
  %165 = phi i32 [ %170, %164 ], [ 1, %163 ]
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.complex, ptr %46, i64 %166
  %168 = sext i32 %165 to i64
  %169 = getelementptr inbounds %struct.complex, ptr %47, i64 %168
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %167, ptr align 4 %169, i64 8, i1 false)
  %170 = add nsw i32 %165, 1
  %171 = icmp sle i32 %170, %48
  br i1 %171, label %164, label %172, !llvm.loop !15

172:                                              ; preds = %164
  %.lcssa7 = phi i32 [ %170, %164 ]
  %173 = add nsw i32 %51, %51
  %174 = icmp sle i32 %173, %49
  br i1 %174, label %50, label %175, !llvm.loop !16

175:                                              ; preds = %172
  %.lcssa7.lcssa = phi i32 [ %.lcssa7, %172 ]
  %.lcssa.lcssa.lcssa = phi i32 [ %.lcssa.lcssa, %172 ]
  %.lcssa4.lcssa = phi i32 [ %.lcssa4, %172 ]
  %.lcssa10 = phi i32 [ %173, %172 ]
  %.lcssa2.lcssa = phi i32 [ %.lcssa2, %172 ]
  store i32 %.lcssa2.lcssa, ptr %13, align 4
  store i32 %.lcssa10, ptr %14, align 4
  store i32 %.lcssa4.lcssa, ptr %12, align 4
  store i32 %.lcssa.lcssa.lcssa, ptr %11, align 4
  store i32 %.lcssa7.lcssa, ptr %16, align 4
  store i32 1, ptr %11, align 4
  %176 = load i32, ptr %6, align 4
  %177 = load float, ptr %10, align 4
  %178 = load ptr, ptr %7, align 8
  %179 = load ptr, ptr %7, align 8
  %180 = load float, ptr %10, align 4
  %181 = fneg float %180
  %182 = load ptr, ptr %7, align 8
  %183 = load ptr, ptr %7, align 8
  %.promoted = load i32, ptr %11, align 4
  br label %184

184:                                              ; preds = %187, %175
  %185 = phi i32 [ %204, %187 ], [ %.promoted, %175 ]
  %186 = icmp sle i32 %185, %176
  br i1 %186, label %187, label %205

187:                                              ; preds = %184
  %188 = sext i32 %185 to i64
  %189 = getelementptr inbounds %struct.complex, ptr %178, i64 %188
  %190 = getelementptr inbounds nuw %struct.complex, ptr %189, i32 0, i32 0
  %191 = load float, ptr %190, align 4
  %192 = fmul float %177, %191
  %193 = sext i32 %185 to i64
  %194 = getelementptr inbounds %struct.complex, ptr %179, i64 %193
  %195 = getelementptr inbounds nuw %struct.complex, ptr %194, i32 0, i32 0
  store float %192, ptr %195, align 4
  %196 = sext i32 %185 to i64
  %197 = getelementptr inbounds %struct.complex, ptr %182, i64 %196
  %198 = getelementptr inbounds nuw %struct.complex, ptr %197, i32 0, i32 1
  %199 = load float, ptr %198, align 4
  %200 = fmul float %181, %199
  %201 = sext i32 %185 to i64
  %202 = getelementptr inbounds %struct.complex, ptr %183, i64 %201
  %203 = getelementptr inbounds nuw %struct.complex, ptr %202, i32 0, i32 1
  store float %200, ptr %203, align 4
  %204 = add nsw i32 %185, 1
  br label %184, !llvm.loop !17

205:                                              ; preds = %184
  %.lcssa14 = phi i32 [ %185, %184 ]
  store i32 %.lcssa14, ptr %11, align 4
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
  %.promoted = load i32, ptr %1, align 4
  br label %3

3:                                                ; preds = %6, %0
  %4 = phi i32 [ %20, %6 ], [ %.promoted, %0 ]
  %5 = icmp sle i32 %4, 256
  br i1 %5, label %6, label %21

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
  %12 = sext i32 %4 to i64
  %13 = getelementptr inbounds [257 x %struct.complex], ptr @z, i64 0, i64 %12
  %14 = getelementptr inbounds nuw %struct.complex, ptr %13, i32 0, i32 0
  store float %11, ptr %14, align 8
  %15 = load float, ptr @zi, align 4
  %16 = call float @llvm.fmuladd.f32(float 2.000000e+01, float %15, float -1.000000e+01)
  %17 = sext i32 %4 to i64
  %18 = getelementptr inbounds [257 x %struct.complex], ptr @z, i64 0, i64 %17
  %19 = getelementptr inbounds nuw %struct.complex, ptr %18, i32 0, i32 1
  store float %16, ptr %19, align 4
  %20 = add nsw i32 %4, 1
  br label %3, !llvm.loop !18

21:                                               ; preds = %3
  %.lcssa = phi i32 [ %4, %3 ]
  store i32 %.lcssa, ptr %1, align 4
  store i32 1, ptr %1, align 4
  %.promoted1 = load i32, ptr %1, align 4
  br label %22

22:                                               ; preds = %25, %21
  %23 = phi i32 [ %26, %25 ], [ %.promoted1, %21 ]
  %24 = icmp sle i32 %23, 20
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  call void @Fft(i32 noundef 256, ptr noundef @z, ptr noundef @w, ptr noundef @e, float noundef 6.250000e-02)
  %26 = add nsw i32 %23, 1
  br label %22, !llvm.loop !19

27:                                               ; preds = %22
  %.lcssa2 = phi i32 [ %23, %22 ]
  store i32 %.lcssa2, ptr %1, align 4
  call void @Printcomplex(ptr noundef @z, i32 noundef 1, i32 noundef 256, i32 noundef 17)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  store i32 0, ptr %2, align 4
  %.promoted = load i32, ptr %2, align 4
  br label %3

3:                                                ; preds = %6, %0
  %4 = phi i32 [ %7, %6 ], [ %.promoted, %0 ]
  %5 = icmp slt i32 %4, 10
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  call void @Oscar()
  %7 = add nsw i32 %4, 1
  br label %3, !llvm.loop !20

8:                                                ; preds = %3
  %.lcssa = phi i32 [ %4, %3 ]
  store i32 %.lcssa, ptr %2, align 4
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
