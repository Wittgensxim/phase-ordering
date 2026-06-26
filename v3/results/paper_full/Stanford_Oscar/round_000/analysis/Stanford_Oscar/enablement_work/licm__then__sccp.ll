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

9:                                                ; preds = %37, %1
  %10 = phi float [ %34, %37 ], [ %.promoted5, %1 ]
  %11 = phi float [ %35, %37 ], [ %.promoted3, %1 ]
  %12 = phi i32 [ %36, %37 ], [ %.promoted1, %1 ]
  %13 = phi i32 [ %38, %37 ], [ %.promoted, %1 ]
  %14 = icmp sle i32 %13, 10
  br i1 %14, label %15, label %39

15:                                               ; preds = %9
  %16 = mul nsw i32 %12, %13
  %17 = fmul float %11, %8
  %18 = and i32 %13, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %33

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

31:                                               ; preds = %27, %23
  %32 = phi float [ %30, %27 ], [ %26, %23 ]
  br label %33

33:                                               ; preds = %31, %15
  %34 = phi float [ %32, %31 ], [ %10, %15 ]
  %35 = phi float [ %17, %31 ], [ %17, %15 ]
  %36 = phi i32 [ %16, %31 ], [ %16, %15 ]
  br label %37

37:                                               ; preds = %33
  %38 = add nsw i32 %13, 1
  br label %9, !llvm.loop !7

39:                                               ; preds = %9
  %.lcssa6 = phi float [ %10, %9 ]
  %.lcssa4 = phi float [ %11, %9 ]
  %.lcssa2 = phi i32 [ %12, %9 ]
  %.lcssa = phi i32 [ %13, %9 ]
  store i32 %.lcssa, ptr %3, align 4
  store i32 %.lcssa2, ptr %4, align 4
  store float %.lcssa4, ptr %6, align 4
  store float %.lcssa6, ptr %5, align 4
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

19:                                               ; preds = %46, %4
  %20 = phi i32 [ %45, %46 ], [ %.promoted, %4 ]
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
  br label %46

46:                                               ; preds = %19
  %47 = icmp sle i32 %45, %18
  br i1 %47, label %19, label %48, !llvm.loop !9

48:                                               ; preds = %46
  %.lcssa = phi i32 [ %45, %46 ]
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

14:                                               ; preds = %26, %2
  %15 = phi float [ %25, %26 ], [ %.promoted1, %2 ]
  %16 = phi i32 [ %27, %26 ], [ %.promoted, %2 ]
  %17 = icmp sle i32 %16, 25
  br i1 %17, label %18, label %28

18:                                               ; preds = %14
  %19 = fdiv float %13, %15
  %20 = call float @Cos(float noundef %19)
  %21 = fmul float 2.000000e+00, %20
  %22 = fdiv float 1.000000e+00, %21
  %23 = sext i32 %16 to i64
  %24 = getelementptr inbounds [26 x float], ptr %7, i64 0, i64 %23
  store float %22, ptr %24, align 4
  %25 = fadd float %15, %15
  br label %26

26:                                               ; preds = %18
  %27 = add nsw i32 %16, 1
  br label %14, !llvm.loop !10

28:                                               ; preds = %14
  %.lcssa2 = phi float [ %15, %14 ]
  %.lcssa = phi i32 [ %16, %14 ]
  store i32 %.lcssa, ptr %8, align 4
  store float %.lcssa2, ptr %6, align 4
  %29 = load i32, ptr %3, align 4
  %30 = sdiv i32 %29, 2
  store i32 %30, ptr %12, align 4
  %31 = load i32, ptr %12, align 4
  %32 = sdiv i32 %31, 2
  store i32 %32, ptr %11, align 4
  store i32 1, ptr %9, align 4
  %33 = load ptr, ptr %4, align 8
  %34 = getelementptr inbounds nuw %struct.complex, ptr %33, i64 1
  %35 = getelementptr inbounds nuw %struct.complex, ptr %34, i32 0, i32 0
  store float 1.000000e+00, ptr %35, align 4
  %36 = load ptr, ptr %4, align 8
  %37 = getelementptr inbounds nuw %struct.complex, ptr %36, i64 1
  %38 = getelementptr inbounds nuw %struct.complex, ptr %37, i32 0, i32 1
  store float 0.000000e+00, ptr %38, align 4
  %39 = load ptr, ptr %4, align 8
  %40 = load i32, ptr %11, align 4
  %41 = add nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.complex, ptr %39, i64 %42
  %44 = getelementptr inbounds nuw %struct.complex, ptr %43, i32 0, i32 0
  store float 0.000000e+00, ptr %44, align 4
  %45 = load ptr, ptr %4, align 8
  %46 = load i32, ptr %11, align 4
  %47 = add nsw i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.complex, ptr %45, i64 %48
  %50 = getelementptr inbounds nuw %struct.complex, ptr %49, i32 0, i32 1
  store float 1.000000e+00, ptr %50, align 4
  %51 = load ptr, ptr %4, align 8
  %52 = load i32, ptr %12, align 4
  %53 = add nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.complex, ptr %51, i64 %54
  %56 = getelementptr inbounds nuw %struct.complex, ptr %55, i32 0, i32 0
  store float -1.000000e+00, ptr %56, align 4
  %57 = load ptr, ptr %4, align 8
  %58 = load i32, ptr %12, align 4
  %59 = add nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.complex, ptr %57, i64 %60
  %62 = getelementptr inbounds nuw %struct.complex, ptr %61, i32 0, i32 1
  store float 0.000000e+00, ptr %62, align 4
  %63 = load ptr, ptr %4, align 8
  %64 = load ptr, ptr %4, align 8
  %65 = load ptr, ptr %4, align 8
  %66 = load ptr, ptr %4, align 8
  %67 = load ptr, ptr %4, align 8
  %68 = load ptr, ptr %4, align 8
  %69 = load i32, ptr %12, align 4
  %.promoted11 = load i32, ptr %11, align 4
  %.promoted16 = load i32, ptr %9, align 4
  br label %70

70:                                               ; preds = %116, %28
  %71 = phi i32 [ %115, %116 ], [ %.promoted16, %28 ]
  %72 = phi i32 [ %73, %116 ], [ %.promoted11, %28 ]
  %73 = sdiv i32 %72, 2
  %74 = sext i32 %71 to i64
  %75 = getelementptr inbounds [26 x float], ptr %7, i64 0, i64 %74
  %76 = load float, ptr %75, align 4
  %invariant.op = add nsw i32 %73, 1
  %invariant.op3 = sub nsw i32 1, %73
  %77 = sext i32 %71 to i64
  %78 = getelementptr inbounds [26 x float], ptr %7, i64 0, i64 %77
  %79 = load float, ptr %78, align 4
  %invariant.op5 = add nsw i32 %73, 1
  %invariant.op7 = sub nsw i32 1, %73
  br label %80

80:                                               ; preds = %111, %70
  %81 = phi i32 [ %110, %111 ], [ %73, %70 ]
  %.reass = add i32 %81, %invariant.op
  %82 = sext i32 %.reass to i64
  %83 = getelementptr inbounds %struct.complex, ptr %63, i64 %82
  %84 = getelementptr inbounds nuw %struct.complex, ptr %83, i32 0, i32 0
  %85 = load float, ptr %84, align 4
  %.reass4 = add i32 %81, %invariant.op3
  %86 = sext i32 %.reass4 to i64
  %87 = getelementptr inbounds %struct.complex, ptr %64, i64 %86
  %88 = getelementptr inbounds nuw %struct.complex, ptr %87, i32 0, i32 0
  %89 = load float, ptr %88, align 4
  %90 = fadd float %85, %89
  %91 = fmul float %76, %90
  %92 = add nsw i32 %81, 1
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.complex, ptr %65, i64 %93
  %95 = getelementptr inbounds nuw %struct.complex, ptr %94, i32 0, i32 0
  store float %91, ptr %95, align 4
  %.reass6 = add i32 %81, %invariant.op5
  %96 = sext i32 %.reass6 to i64
  %97 = getelementptr inbounds %struct.complex, ptr %66, i64 %96
  %98 = getelementptr inbounds nuw %struct.complex, ptr %97, i32 0, i32 1
  %99 = load float, ptr %98, align 4
  %.reass8 = add i32 %81, %invariant.op7
  %100 = sext i32 %.reass8 to i64
  %101 = getelementptr inbounds %struct.complex, ptr %67, i64 %100
  %102 = getelementptr inbounds nuw %struct.complex, ptr %101, i32 0, i32 1
  %103 = load float, ptr %102, align 4
  %104 = fadd float %99, %103
  %105 = fmul float %79, %104
  %106 = add nsw i32 %81, 1
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.complex, ptr %68, i64 %107
  %109 = getelementptr inbounds nuw %struct.complex, ptr %108, i32 0, i32 1
  store float %105, ptr %109, align 4
  %110 = add nsw i32 %81, %72
  br label %111

111:                                              ; preds = %80
  %112 = icmp sle i32 %110, %69
  br i1 %112, label %80, label %113, !llvm.loop !11

113:                                              ; preds = %111
  %.lcssa10 = phi i32 [ %110, %111 ]
  %114 = add nsw i32 %71, 1
  %115 = call i32 @Min0(i32 noundef %114, i32 noundef 25)
  br label %116

116:                                              ; preds = %113
  %117 = icmp sgt i32 %73, 1
  br i1 %117, label %70, label %118, !llvm.loop !12

118:                                              ; preds = %116
  %.lcssa17 = phi i32 [ %115, %116 ]
  %.lcssa10.lcssa = phi i32 [ %.lcssa10, %116 ]
  %.lcssa14 = phi i32 [ %73, %116 ]
  %.lcssa12 = phi i32 [ %73, %116 ]
  store i32 %.lcssa12, ptr %11, align 4
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

50:                                               ; preds = %177, %5
  %51 = phi i32 [ %176, %177 ], [ %.promoted9, %5 ]
  br label %52

52:                                               ; preds = %163, %50
  %.lcssa6 = phi i32 [ %.lcssa, %163 ], [ 1, %50 ]
  %53 = phi i32 [ %162, %163 ], [ %51, %50 ]
  %54 = phi i32 [ %53, %163 ], [ 0, %50 ]
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

71:                                               ; preds = %159, %52
  %72 = phi i32 [ %158, %159 ], [ %.lcssa6, %52 ]
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
  br label %159

159:                                              ; preds = %71
  %160 = icmp sle i32 %158, %53
  br i1 %160, label %71, label %161, !llvm.loop !13

161:                                              ; preds = %159
  %.lcssa = phi i32 [ %158, %159 ]
  %162 = add nsw i32 %53, %51
  br label %163

163:                                              ; preds = %161
  %164 = icmp sle i32 %162, %45
  br i1 %164, label %52, label %165, !llvm.loop !14

165:                                              ; preds = %163
  %.lcssa.lcssa = phi i32 [ %.lcssa, %163 ]
  %.lcssa4 = phi i32 [ %162, %163 ]
  %.lcssa2 = phi i32 [ %53, %163 ]
  br label %166

166:                                              ; preds = %173, %165
  %167 = phi i32 [ %172, %173 ], [ 1, %165 ]
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.complex, ptr %46, i64 %168
  %170 = sext i32 %167 to i64
  %171 = getelementptr inbounds %struct.complex, ptr %47, i64 %170
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %169, ptr align 4 %171, i64 8, i1 false)
  %172 = add nsw i32 %167, 1
  br label %173

173:                                              ; preds = %166
  %174 = icmp sle i32 %172, %48
  br i1 %174, label %166, label %175, !llvm.loop !15

175:                                              ; preds = %173
  %.lcssa7 = phi i32 [ %172, %173 ]
  %176 = add nsw i32 %51, %51
  br label %177

177:                                              ; preds = %175
  %178 = icmp sle i32 %176, %49
  br i1 %178, label %50, label %179, !llvm.loop !16

179:                                              ; preds = %177
  %.lcssa7.lcssa = phi i32 [ %.lcssa7, %177 ]
  %.lcssa.lcssa.lcssa = phi i32 [ %.lcssa.lcssa, %177 ]
  %.lcssa4.lcssa = phi i32 [ %.lcssa4, %177 ]
  %.lcssa10 = phi i32 [ %176, %177 ]
  %.lcssa2.lcssa = phi i32 [ %.lcssa2, %177 ]
  store i32 %.lcssa2.lcssa, ptr %13, align 4
  store i32 %.lcssa10, ptr %14, align 4
  store i32 %.lcssa4.lcssa, ptr %12, align 4
  store i32 %.lcssa.lcssa.lcssa, ptr %11, align 4
  store i32 %.lcssa7.lcssa, ptr %16, align 4
  store i32 1, ptr %11, align 4
  %180 = load i32, ptr %6, align 4
  %181 = load float, ptr %10, align 4
  %182 = load ptr, ptr %7, align 8
  %183 = load ptr, ptr %7, align 8
  %184 = load float, ptr %10, align 4
  %185 = fneg float %184
  %186 = load ptr, ptr %7, align 8
  %187 = load ptr, ptr %7, align 8
  %.promoted = load i32, ptr %11, align 4
  br label %188

188:                                              ; preds = %208, %179
  %189 = phi i32 [ %209, %208 ], [ %.promoted, %179 ]
  %190 = icmp sle i32 %189, %180
  br i1 %190, label %191, label %210

191:                                              ; preds = %188
  %192 = sext i32 %189 to i64
  %193 = getelementptr inbounds %struct.complex, ptr %182, i64 %192
  %194 = getelementptr inbounds nuw %struct.complex, ptr %193, i32 0, i32 0
  %195 = load float, ptr %194, align 4
  %196 = fmul float %181, %195
  %197 = sext i32 %189 to i64
  %198 = getelementptr inbounds %struct.complex, ptr %183, i64 %197
  %199 = getelementptr inbounds nuw %struct.complex, ptr %198, i32 0, i32 0
  store float %196, ptr %199, align 4
  %200 = sext i32 %189 to i64
  %201 = getelementptr inbounds %struct.complex, ptr %186, i64 %200
  %202 = getelementptr inbounds nuw %struct.complex, ptr %201, i32 0, i32 1
  %203 = load float, ptr %202, align 4
  %204 = fmul float %185, %203
  %205 = sext i32 %189 to i64
  %206 = getelementptr inbounds %struct.complex, ptr %187, i64 %205
  %207 = getelementptr inbounds nuw %struct.complex, ptr %206, i32 0, i32 1
  store float %204, ptr %207, align 4
  br label %208

208:                                              ; preds = %191
  %209 = add nsw i32 %189, 1
  br label %188, !llvm.loop !17

210:                                              ; preds = %188
  %.lcssa14 = phi i32 [ %189, %188 ]
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

3:                                                ; preds = %20, %0
  %4 = phi i32 [ %21, %20 ], [ %.promoted, %0 ]
  %5 = icmp sle i32 %4, 256
  br i1 %5, label %6, label %22

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
  br label %20

20:                                               ; preds = %6
  %21 = add nsw i32 %4, 1
  br label %3, !llvm.loop !18

22:                                               ; preds = %3
  %.lcssa = phi i32 [ %4, %3 ]
  store i32 %.lcssa, ptr %1, align 4
  store i32 1, ptr %1, align 4
  %.promoted1 = load i32, ptr %1, align 4
  br label %23

23:                                               ; preds = %27, %22
  %24 = phi i32 [ %28, %27 ], [ %.promoted1, %22 ]
  %25 = icmp sle i32 %24, 20
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  call void @Fft(i32 noundef 256, ptr noundef @z, ptr noundef @w, ptr noundef @e, float noundef 6.250000e-02)
  br label %27

27:                                               ; preds = %26
  %28 = add nsw i32 %24, 1
  br label %23, !llvm.loop !19

29:                                               ; preds = %23
  %.lcssa2 = phi i32 [ %24, %23 ]
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

3:                                                ; preds = %7, %0
  %4 = phi i32 [ %8, %7 ], [ %.promoted, %0 ]
  %5 = icmp slt i32 %4, 10
  br i1 %5, label %6, label %9

6:                                                ; preds = %3
  call void @Oscar()
  br label %7

7:                                                ; preds = %6
  %8 = add nsw i32 %4, 1
  br label %3, !llvm.loop !20

9:                                                ; preds = %3
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
