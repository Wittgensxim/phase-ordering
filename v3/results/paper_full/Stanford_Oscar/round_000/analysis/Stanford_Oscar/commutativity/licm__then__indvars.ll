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
  %smax = call i32 @llvm.smax.i32(i32 %.promoted, i32 11)
  br label %9

9:                                                ; preds = %36, %1
  %10 = phi float [ %33, %36 ], [ %.promoted5, %1 ]
  %11 = phi float [ %34, %36 ], [ %.promoted3, %1 ]
  %12 = phi i32 [ %35, %36 ], [ %.promoted1, %1 ]
  %13 = phi i32 [ %37, %36 ], [ %.promoted, %1 ]
  %exitcond = icmp ne i32 %13, %smax
  br i1 %exitcond, label %14, label %38

14:                                               ; preds = %9
  %15 = mul nsw i32 %12, %13
  %16 = fmul float %11, %8
  %17 = and i32 %13, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %14
  %20 = and i32 %13, 3
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = sitofp i32 %15 to float
  %24 = fdiv float %16, %23
  %25 = fadd float %10, %24
  br label %30

26:                                               ; preds = %19
  %27 = sitofp i32 %15 to float
  %28 = fdiv float %16, %27
  %29 = fsub float %10, %28
  br label %30

30:                                               ; preds = %26, %22
  %31 = phi float [ %29, %26 ], [ %25, %22 ]
  br label %32

32:                                               ; preds = %30, %14
  %33 = phi float [ %31, %30 ], [ %10, %14 ]
  %34 = phi float [ %16, %30 ], [ %16, %14 ]
  %35 = phi i32 [ %15, %30 ], [ %15, %14 ]
  br label %36

36:                                               ; preds = %32
  %37 = add i32 %13, 1
  br label %9, !llvm.loop !7

38:                                               ; preds = %9
  %.lcssa6 = phi float [ %10, %9 ]
  %.lcssa4 = phi float [ %11, %9 ]
  %.lcssa2 = phi i32 [ %12, %9 ]
  store i32 %smax, ptr %3, align 4
  store i32 %.lcssa2, ptr %4, align 4
  store float %.lcssa4, ptr %6, align 4
  store float %.lcssa6, ptr %5, align 4
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
  %14 = sext i32 %.promoted to i64
  %smax = call i32 @llvm.smax.i32(i32 %.promoted, i32 26)
  %wide.trip.count = sext i32 %smax to i64
  br label %15

15:                                               ; preds = %24, %2
  %indvars.iv = phi i64 [ %indvars.iv.next, %24 ], [ %14, %2 ]
  %16 = phi float [ %23, %24 ], [ %.promoted1, %2 ]
  %exitcond = icmp ne i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %17, label %25

17:                                               ; preds = %15
  %18 = fdiv float %13, %16
  %19 = call float @Cos(float noundef %18)
  %20 = fmul float 2.000000e+00, %19
  %21 = fdiv float 1.000000e+00, %20
  %22 = getelementptr inbounds [26 x float], ptr %7, i64 0, i64 %indvars.iv
  store float %21, ptr %22, align 4
  %23 = fadd float %16, %16
  br label %24

24:                                               ; preds = %17
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %15, !llvm.loop !10

25:                                               ; preds = %15
  %.lcssa2 = phi float [ %16, %15 ]
  %.lcssa.wide = phi i64 [ %indvars.iv, %15 ]
  %26 = trunc nsw i64 %.lcssa.wide to i32
  store i32 %26, ptr %8, align 4
  store float %.lcssa2, ptr %6, align 4
  %27 = load i32, ptr %3, align 4
  %28 = sdiv i32 %27, 2
  store i32 %28, ptr %12, align 4
  %29 = load i32, ptr %12, align 4
  %30 = sdiv i32 %29, 2
  store i32 %30, ptr %11, align 4
  store i32 1, ptr %9, align 4
  %31 = load ptr, ptr %4, align 8
  %32 = getelementptr inbounds %struct.complex, ptr %31, i64 1
  %33 = getelementptr inbounds nuw %struct.complex, ptr %32, i32 0, i32 0
  store float 1.000000e+00, ptr %33, align 4
  %34 = load ptr, ptr %4, align 8
  %35 = getelementptr inbounds %struct.complex, ptr %34, i64 1
  %36 = getelementptr inbounds nuw %struct.complex, ptr %35, i32 0, i32 1
  store float 0.000000e+00, ptr %36, align 4
  %37 = load ptr, ptr %4, align 8
  %38 = load i32, ptr %11, align 4
  %39 = add nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.complex, ptr %37, i64 %40
  %42 = getelementptr inbounds nuw %struct.complex, ptr %41, i32 0, i32 0
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
  %54 = getelementptr inbounds nuw %struct.complex, ptr %53, i32 0, i32 0
  store float -1.000000e+00, ptr %54, align 4
  %55 = load ptr, ptr %4, align 8
  %56 = load i32, ptr %12, align 4
  %57 = add nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.complex, ptr %55, i64 %58
  %60 = getelementptr inbounds nuw %struct.complex, ptr %59, i32 0, i32 1
  store float 0.000000e+00, ptr %60, align 4
  %61 = load ptr, ptr %4, align 8
  %62 = load ptr, ptr %4, align 8
  %63 = load ptr, ptr %4, align 8
  %64 = load ptr, ptr %4, align 8
  %65 = load ptr, ptr %4, align 8
  %66 = load ptr, ptr %4, align 8
  %67 = load i32, ptr %12, align 4
  %.promoted11 = load i32, ptr %11, align 4
  %.promoted16 = load i32, ptr %9, align 4
  %68 = sext i32 %67 to i64
  br label %69

69:                                               ; preds = %117, %25
  %70 = phi i32 [ %116, %117 ], [ %.promoted16, %25 ]
  %71 = phi i32 [ %72, %117 ], [ %.promoted11, %25 ]
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
  %79 = sext i32 %72 to i64
  %80 = sext i32 %71 to i64
  br label %81

81:                                               ; preds = %111, %69
  %indvars.iv19 = phi i64 [ %indvars.iv.next20, %111 ], [ %79, %69 ]
  %82 = trunc nsw i64 %indvars.iv19 to i32
  %.reass = add i32 %82, %invariant.op
  %83 = sext i32 %.reass to i64
  %84 = getelementptr inbounds %struct.complex, ptr %61, i64 %83
  %85 = getelementptr inbounds nuw %struct.complex, ptr %84, i32 0, i32 0
  %86 = load float, ptr %85, align 4
  %87 = trunc nsw i64 %indvars.iv19 to i32
  %.reass4 = add i32 %87, %invariant.op3
  %88 = sext i32 %.reass4 to i64
  %89 = getelementptr inbounds %struct.complex, ptr %62, i64 %88
  %90 = getelementptr inbounds nuw %struct.complex, ptr %89, i32 0, i32 0
  %91 = load float, ptr %90, align 4
  %92 = fadd float %86, %91
  %93 = fmul float %75, %92
  %94 = add nsw i64 %indvars.iv19, 1
  %95 = getelementptr inbounds %struct.complex, ptr %63, i64 %94
  store float %93, ptr %95, align 4
  %96 = trunc nsw i64 %indvars.iv19 to i32
  %.reass6 = add i32 %96, %invariant.op5
  %97 = sext i32 %.reass6 to i64
  %98 = getelementptr inbounds %struct.complex, ptr %64, i64 %97
  %99 = getelementptr inbounds nuw %struct.complex, ptr %98, i32 0, i32 1
  %100 = load float, ptr %99, align 4
  %101 = trunc nsw i64 %indvars.iv19 to i32
  %.reass8 = add i32 %101, %invariant.op7
  %102 = sext i32 %.reass8 to i64
  %103 = getelementptr inbounds %struct.complex, ptr %65, i64 %102
  %104 = getelementptr inbounds nuw %struct.complex, ptr %103, i32 0, i32 1
  %105 = load float, ptr %104, align 4
  %106 = fadd float %100, %105
  %107 = fmul float %78, %106
  %108 = add nsw i64 %indvars.iv19, 1
  %109 = getelementptr inbounds %struct.complex, ptr %66, i64 %108
  %110 = getelementptr inbounds nuw %struct.complex, ptr %109, i32 0, i32 1
  store float %107, ptr %110, align 4
  %indvars.iv.next20 = add nsw i64 %indvars.iv19, %80
  br label %111

111:                                              ; preds = %81
  %112 = icmp sle i64 %indvars.iv.next20, %68
  br i1 %112, label %81, label %113, !llvm.loop !11

113:                                              ; preds = %111
  %.lcssa10.wide = phi i64 [ %indvars.iv.next20, %111 ]
  %114 = trunc nsw i64 %.lcssa10.wide to i32
  %115 = add nsw i32 %70, 1
  %116 = call i32 @Min0(i32 noundef %115, i32 noundef 25)
  br label %117

117:                                              ; preds = %113
  %118 = icmp sgt i32 %72, 1
  br i1 %118, label %69, label %119, !llvm.loop !12

119:                                              ; preds = %117
  %.lcssa17 = phi i32 [ %116, %117 ]
  %.lcssa10.lcssa = phi i32 [ %114, %117 ]
  %.lcssa14 = phi i32 [ %72, %117 ]
  %.lcssa12 = phi i32 [ %72, %117 ]
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
  %50 = sext i32 %21 to i64
  %51 = sext i32 %25 to i64
  %52 = sext i32 %30 to i64
  %53 = sext i32 %34 to i64
  %54 = sext i32 %39 to i64
  %55 = sext i32 %43 to i64
  %56 = sext i32 %45 to i64
  %smax22 = call i32 @llvm.smax.i32(i32 %48, i32 1)
  %57 = add nuw i32 %smax22, 1
  br label %58

58:                                               ; preds = %160, %5
  %59 = phi i32 [ %159, %160 ], [ %.promoted9, %5 ]
  %60 = sext i32 %59 to i64
  br label %61

61:                                               ; preds = %148, %58
  %indvars.iv16 = phi i64 [ %indvars.iv.next17, %148 ], [ %60, %58 ]
  %.lcssa6 = phi i32 [ %147, %148 ], [ 1, %58 ]
  %62 = phi i32 [ %150, %148 ], [ 0, %58 ]
  %63 = add nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.complex, ptr %27, i64 %64
  %66 = getelementptr inbounds nuw %struct.complex, ptr %65, i32 0, i32 0
  %67 = add nsw i32 %62, 1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.complex, ptr %31, i64 %68
  %70 = getelementptr inbounds nuw %struct.complex, ptr %69, i32 0, i32 1
  %71 = add nsw i32 %62, 1
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.complex, ptr %36, i64 %72
  %74 = getelementptr inbounds nuw %struct.complex, ptr %73, i32 0, i32 0
  %75 = add nsw i32 %62, 1
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.complex, ptr %40, i64 %76
  %78 = getelementptr inbounds nuw %struct.complex, ptr %77, i32 0, i32 1
  %79 = sext i32 %.lcssa6 to i64
  %80 = sext i32 %62 to i64
  %81 = sext i32 %62 to i64
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv16, i64 %79)
  %82 = add i64 %smax, 1
  br label %83

83:                                               ; preds = %145, %61
  %indvars.iv = phi i64 [ %indvars.iv.next, %145 ], [ %79, %61 ]
  %84 = getelementptr inbounds %struct.complex, ptr %19, i64 %indvars.iv
  %85 = load float, ptr %84, align 4
  %86 = add nsw i64 %50, %indvars.iv
  %87 = getelementptr inbounds %struct.complex, ptr %20, i64 %86
  %88 = load float, ptr %87, align 4
  %89 = fadd float %85, %88
  %90 = add nsw i64 %indvars.iv, %80
  %91 = getelementptr inbounds %struct.complex, ptr %22, i64 %90
  store float %89, ptr %91, align 4
  %92 = getelementptr inbounds %struct.complex, ptr %23, i64 %indvars.iv
  %93 = getelementptr inbounds nuw %struct.complex, ptr %92, i32 0, i32 1
  %94 = load float, ptr %93, align 4
  %95 = add nsw i64 %51, %indvars.iv
  %96 = getelementptr inbounds %struct.complex, ptr %24, i64 %95
  %97 = getelementptr inbounds nuw %struct.complex, ptr %96, i32 0, i32 1
  %98 = load float, ptr %97, align 4
  %99 = fadd float %94, %98
  %100 = add nsw i64 %indvars.iv, %81
  %101 = getelementptr inbounds %struct.complex, ptr %26, i64 %100
  %102 = getelementptr inbounds nuw %struct.complex, ptr %101, i32 0, i32 1
  store float %99, ptr %102, align 4
  %103 = load float, ptr %66, align 4
  %104 = getelementptr inbounds %struct.complex, ptr %28, i64 %indvars.iv
  %105 = load float, ptr %104, align 4
  %106 = add nsw i64 %indvars.iv, %52
  %107 = getelementptr inbounds %struct.complex, ptr %29, i64 %106
  %108 = load float, ptr %107, align 4
  %109 = fsub float %105, %108
  %110 = load float, ptr %70, align 4
  %111 = getelementptr inbounds %struct.complex, ptr %32, i64 %indvars.iv
  %112 = getelementptr inbounds nuw %struct.complex, ptr %111, i32 0, i32 1
  %113 = load float, ptr %112, align 4
  %114 = add nsw i64 %indvars.iv, %53
  %115 = getelementptr inbounds %struct.complex, ptr %33, i64 %114
  %116 = getelementptr inbounds nuw %struct.complex, ptr %115, i32 0, i32 1
  %117 = load float, ptr %116, align 4
  %118 = fsub float %113, %117
  %119 = fmul float %110, %118
  %120 = fneg float %119
  %121 = call float @llvm.fmuladd.f32(float %103, float %109, float %120)
  %122 = add nsw i64 %indvars.iv, %indvars.iv16
  %123 = getelementptr inbounds %struct.complex, ptr %35, i64 %122
  store float %121, ptr %123, align 4
  %124 = load float, ptr %74, align 4
  %125 = getelementptr inbounds %struct.complex, ptr %37, i64 %indvars.iv
  %126 = getelementptr inbounds nuw %struct.complex, ptr %125, i32 0, i32 1
  %127 = load float, ptr %126, align 4
  %128 = add nsw i64 %indvars.iv, %54
  %129 = getelementptr inbounds %struct.complex, ptr %38, i64 %128
  %130 = getelementptr inbounds nuw %struct.complex, ptr %129, i32 0, i32 1
  %131 = load float, ptr %130, align 4
  %132 = fsub float %127, %131
  %133 = load float, ptr %78, align 4
  %134 = getelementptr inbounds %struct.complex, ptr %41, i64 %indvars.iv
  %135 = load float, ptr %134, align 4
  %136 = add nsw i64 %indvars.iv, %55
  %137 = getelementptr inbounds %struct.complex, ptr %42, i64 %136
  %138 = load float, ptr %137, align 4
  %139 = fsub float %135, %138
  %140 = fmul float %133, %139
  %141 = call float @llvm.fmuladd.f32(float %124, float %132, float %140)
  %142 = add nsw i64 %indvars.iv, %indvars.iv16
  %143 = getelementptr inbounds %struct.complex, ptr %44, i64 %142
  %144 = getelementptr inbounds nuw %struct.complex, ptr %143, i32 0, i32 1
  store float %141, ptr %144, align 4
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %145

145:                                              ; preds = %83
  %exitcond = icmp ne i64 %indvars.iv.next, %82
  br i1 %exitcond, label %83, label %146, !llvm.loop !13

146:                                              ; preds = %145
  %.lcssa.wide = phi i64 [ %indvars.iv.next, %145 ]
  %147 = trunc nsw i64 %.lcssa.wide to i32
  %indvars.iv.next17 = add nsw i64 %indvars.iv16, %60
  br label %148

148:                                              ; preds = %146
  %149 = icmp sle i64 %indvars.iv.next17, %56
  %150 = trunc nsw i64 %indvars.iv16 to i32
  br i1 %149, label %61, label %151, !llvm.loop !14

151:                                              ; preds = %148
  %.lcssa.lcssa = phi i32 [ %147, %148 ]
  %.lcssa4.wide = phi i64 [ %indvars.iv.next17, %148 ]
  %.lcssa2.wide = phi i64 [ %indvars.iv16, %148 ]
  %wide.trip.count = zext i32 %57 to i64
  br label %152

152:                                              ; preds = %155, %151
  %indvars.iv19 = phi i64 [ %indvars.iv.next20, %155 ], [ 1, %151 ]
  %153 = getelementptr inbounds %struct.complex, ptr %46, i64 %indvars.iv19
  %154 = getelementptr inbounds %struct.complex, ptr %47, i64 %indvars.iv19
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %153, ptr align 4 %154, i64 8, i1 false)
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv19, 1
  br label %155

155:                                              ; preds = %152
  %exitcond23 = icmp ne i64 %indvars.iv.next20, %wide.trip.count
  br i1 %exitcond23, label %152, label %156, !llvm.loop !15

156:                                              ; preds = %155
  %157 = trunc nsw i64 %.lcssa4.wide to i32
  %158 = trunc nsw i64 %.lcssa2.wide to i32
  %159 = add nsw i32 %59, %59
  br label %160

160:                                              ; preds = %156
  %161 = icmp sle i32 %159, %49
  br i1 %161, label %58, label %162, !llvm.loop !16

162:                                              ; preds = %160
  %.lcssa.lcssa.lcssa = phi i32 [ %.lcssa.lcssa, %160 ]
  %.lcssa4.lcssa = phi i32 [ %157, %160 ]
  %.lcssa10 = phi i32 [ %159, %160 ]
  %.lcssa2.lcssa = phi i32 [ %158, %160 ]
  %smax24 = call i32 @llvm.smax.i32(i32 %48, i32 1)
  %163 = add nuw i32 %smax24, 1
  store i32 %.lcssa2.lcssa, ptr %13, align 4
  store i32 %.lcssa10, ptr %14, align 4
  store i32 %.lcssa4.lcssa, ptr %12, align 4
  store i32 %.lcssa.lcssa.lcssa, ptr %11, align 4
  store i32 %163, ptr %16, align 4
  store i32 1, ptr %11, align 4
  %164 = load i32, ptr %6, align 4
  %165 = load float, ptr %10, align 4
  %166 = load ptr, ptr %7, align 8
  %167 = load ptr, ptr %7, align 8
  %168 = load float, ptr %10, align 4
  %169 = fneg float %168
  %170 = load ptr, ptr %7, align 8
  %171 = load ptr, ptr %7, align 8
  %.promoted = load i32, ptr %11, align 4
  %172 = sext i32 %.promoted to i64
  %173 = sext i32 %164 to i64
  br label %174

174:                                              ; preds = %187, %162
  %indvars.iv25 = phi i64 [ %indvars.iv.next26, %187 ], [ %172, %162 ]
  %175 = icmp sle i64 %indvars.iv25, %173
  br i1 %175, label %176, label %188

176:                                              ; preds = %174
  %177 = getelementptr inbounds %struct.complex, ptr %166, i64 %indvars.iv25
  %178 = load float, ptr %177, align 4
  %179 = fmul float %165, %178
  %180 = getelementptr inbounds %struct.complex, ptr %167, i64 %indvars.iv25
  store float %179, ptr %180, align 4
  %181 = getelementptr inbounds %struct.complex, ptr %170, i64 %indvars.iv25
  %182 = getelementptr inbounds nuw %struct.complex, ptr %181, i32 0, i32 1
  %183 = load float, ptr %182, align 4
  %184 = fmul float %169, %183
  %185 = getelementptr inbounds %struct.complex, ptr %171, i64 %indvars.iv25
  %186 = getelementptr inbounds nuw %struct.complex, ptr %185, i32 0, i32 1
  store float %184, ptr %186, align 4
  br label %187

187:                                              ; preds = %176
  %indvars.iv.next26 = add nsw i64 %indvars.iv25, 1
  br label %174, !llvm.loop !17

188:                                              ; preds = %174
  %.lcssa14.wide = phi i64 [ %indvars.iv25, %174 ]
  %189 = trunc nsw i64 %.lcssa14.wide to i32
  store i32 %189, ptr %11, align 4
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
  %3 = sext i32 %.promoted to i64
  %smax = call i32 @llvm.smax.i32(i32 %.promoted, i32 257)
  %wide.trip.count = sext i32 %smax to i64
  br label %4

4:                                                ; preds = %16, %0
  %indvars.iv = phi i64 [ %indvars.iv.next, %16 ], [ %3, %0 ]
  %exitcond = icmp ne i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %5, label %17

5:                                                ; preds = %4
  %6 = load i32, ptr @seed, align 4
  store i32 %6, ptr %2, align 4
  call void @Uniform11(ptr noundef %2, ptr noundef @zr)
  %7 = load i32, ptr %2, align 4
  store i32 %7, ptr @seed, align 4
  call void @Uniform11(ptr noundef %2, ptr noundef @zi)
  %8 = load i32, ptr %2, align 4
  store i32 %8, ptr @seed, align 4
  %9 = load float, ptr @zr, align 4
  %10 = call float @llvm.fmuladd.f32(float 2.000000e+01, float %9, float -1.000000e+01)
  %11 = getelementptr inbounds [257 x %struct.complex], ptr @z, i64 0, i64 %indvars.iv
  store float %10, ptr %11, align 8
  %12 = load float, ptr @zi, align 4
  %13 = call float @llvm.fmuladd.f32(float 2.000000e+01, float %12, float -1.000000e+01)
  %14 = getelementptr inbounds [257 x %struct.complex], ptr @z, i64 0, i64 %indvars.iv
  %15 = getelementptr inbounds nuw %struct.complex, ptr %14, i32 0, i32 1
  store float %13, ptr %15, align 4
  br label %16

16:                                               ; preds = %5
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %4, !llvm.loop !18

17:                                               ; preds = %4
  %.lcssa.wide = phi i64 [ %indvars.iv, %4 ]
  %18 = trunc nsw i64 %.lcssa.wide to i32
  store i32 %18, ptr %1, align 4
  store i32 1, ptr %1, align 4
  %.promoted1 = load i32, ptr %1, align 4
  %smax4 = call i32 @llvm.smax.i32(i32 %.promoted1, i32 21)
  br label %19

19:                                               ; preds = %22, %17
  %20 = phi i32 [ %23, %22 ], [ %.promoted1, %17 ]
  %exitcond5 = icmp ne i32 %20, %smax4
  br i1 %exitcond5, label %21, label %24

21:                                               ; preds = %19
  call void @Fft(i32 noundef 256, ptr noundef @z, ptr noundef @w, ptr noundef @e, float noundef 6.250000e-02)
  br label %22

22:                                               ; preds = %21
  %23 = add i32 %20, 1
  br label %19, !llvm.loop !19

24:                                               ; preds = %19
  store i32 %smax4, ptr %1, align 4
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
  %smax = call i32 @llvm.smax.i32(i32 %.promoted, i32 10)
  br label %3

3:                                                ; preds = %6, %0
  %4 = phi i32 [ %7, %6 ], [ %.promoted, %0 ]
  %exitcond = icmp ne i32 %4, %smax
  br i1 %exitcond, label %5, label %8

5:                                                ; preds = %3
  call void @Oscar()
  br label %6

6:                                                ; preds = %5
  %7 = add i32 %4, 1
  br label %3, !llvm.loop !20

8:                                                ; preds = %3
  store i32 %smax, ptr %2, align 4
  ret i32 0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #2

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
