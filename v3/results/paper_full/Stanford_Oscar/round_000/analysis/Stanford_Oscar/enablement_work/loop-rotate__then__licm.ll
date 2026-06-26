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
  br i1 %9, label %.lr.ph, label %40

.lr.ph:                                           ; preds = %1
  %10 = load float, ptr %2, align 4
  %.promoted = load i32, ptr %4, align 4
  %.promoted1 = load i32, ptr %3, align 4
  %.promoted3 = load float, ptr %6, align 4
  %.promoted5 = load float, ptr %5, align 4
  br label %11

11:                                               ; preds = %.lr.ph, %37
  %12 = phi float [ %.promoted5, %.lr.ph ], [ %34, %37 ]
  %13 = phi float [ %.promoted3, %.lr.ph ], [ %35, %37 ]
  %14 = phi i32 [ %.promoted1, %.lr.ph ], [ %38, %37 ]
  %15 = phi i32 [ %.promoted, %.lr.ph ], [ %36, %37 ]
  %16 = mul nsw i32 %15, %14
  %17 = fmul float %13, %10
  %18 = and i32 %14, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %11
  %21 = and i32 %14, 3
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = sitofp i32 %16 to float
  %25 = fdiv float %17, %24
  %26 = fadd float %12, %25
  br label %31

27:                                               ; preds = %20
  %28 = sitofp i32 %16 to float
  %29 = fdiv float %17, %28
  %30 = fsub float %12, %29
  br label %31

31:                                               ; preds = %27, %23
  %32 = phi float [ %30, %27 ], [ %26, %23 ]
  br label %33

33:                                               ; preds = %31, %11
  %34 = phi float [ %32, %31 ], [ %12, %11 ]
  %35 = phi float [ %17, %31 ], [ %17, %11 ]
  %36 = phi i32 [ %16, %31 ], [ %16, %11 ]
  br label %37

37:                                               ; preds = %33
  %38 = add nsw i32 %14, 1
  %39 = icmp sle i32 %38, 10
  br i1 %39, label %11, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %37
  %.lcssa6 = phi float [ %34, %37 ]
  %.lcssa4 = phi float [ %35, %37 ]
  %.lcssa2 = phi i32 [ %38, %37 ]
  %.lcssa = phi i32 [ %36, %37 ]
  store i32 %.lcssa, ptr %4, align 4
  store i32 %.lcssa2, ptr %3, align 4
  store float %.lcssa4, ptr %6, align 4
  store float %.lcssa6, ptr %5, align 4
  br label %40

40:                                               ; preds = %._crit_edge, %1
  %41 = load float, ptr %5, align 4
  ret float %41
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
  %13 = load i32, ptr %8, align 4
  %14 = icmp sle i32 %13, 25
  br i1 %14, label %.lr.ph, label %29

.lr.ph:                                           ; preds = %2
  %15 = load float, ptr %5, align 4
  %.promoted = load float, ptr %6, align 4
  %.promoted1 = load i32, ptr %8, align 4
  br label %16

16:                                               ; preds = %.lr.ph, %26
  %17 = phi i32 [ %.promoted1, %.lr.ph ], [ %27, %26 ]
  %18 = phi float [ %.promoted, %.lr.ph ], [ %25, %26 ]
  %19 = fdiv float %15, %18
  %20 = call float @Cos(float noundef %19)
  %21 = fmul float 2.000000e+00, %20
  %22 = fdiv float 1.000000e+00, %21
  %23 = sext i32 %17 to i64
  %24 = getelementptr inbounds [26 x float], ptr %7, i64 0, i64 %23
  store float %22, ptr %24, align 4
  %25 = fadd float %18, %18
  br label %26

26:                                               ; preds = %16
  %27 = add nsw i32 %17, 1
  %28 = icmp sle i32 %27, 25
  br i1 %28, label %16, label %._crit_edge, !llvm.loop !10

._crit_edge:                                      ; preds = %26
  %.lcssa2 = phi i32 [ %27, %26 ]
  %.lcssa = phi float [ %25, %26 ]
  store float %.lcssa, ptr %6, align 4
  store i32 %.lcssa2, ptr %8, align 4
  br label %29

29:                                               ; preds = %._crit_edge, %2
  %30 = load i32, ptr %3, align 4
  %31 = sdiv i32 %30, 2
  store i32 %31, ptr %12, align 4
  %32 = load i32, ptr %12, align 4
  %33 = sdiv i32 %32, 2
  store i32 %33, ptr %11, align 4
  store i32 1, ptr %9, align 4
  %34 = load ptr, ptr %4, align 8
  %35 = getelementptr inbounds %struct.complex, ptr %34, i64 1
  %36 = getelementptr inbounds nuw %struct.complex, ptr %35, i32 0, i32 0
  store float 1.000000e+00, ptr %36, align 4
  %37 = load ptr, ptr %4, align 8
  %38 = getelementptr inbounds %struct.complex, ptr %37, i64 1
  %39 = getelementptr inbounds nuw %struct.complex, ptr %38, i32 0, i32 1
  store float 0.000000e+00, ptr %39, align 4
  %40 = load ptr, ptr %4, align 8
  %41 = load i32, ptr %11, align 4
  %42 = add nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.complex, ptr %40, i64 %43
  %45 = getelementptr inbounds nuw %struct.complex, ptr %44, i32 0, i32 0
  store float 0.000000e+00, ptr %45, align 4
  %46 = load ptr, ptr %4, align 8
  %47 = load i32, ptr %11, align 4
  %48 = add nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.complex, ptr %46, i64 %49
  %51 = getelementptr inbounds nuw %struct.complex, ptr %50, i32 0, i32 1
  store float 1.000000e+00, ptr %51, align 4
  %52 = load ptr, ptr %4, align 8
  %53 = load i32, ptr %12, align 4
  %54 = add nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.complex, ptr %52, i64 %55
  %57 = getelementptr inbounds nuw %struct.complex, ptr %56, i32 0, i32 0
  store float -1.000000e+00, ptr %57, align 4
  %58 = load ptr, ptr %4, align 8
  %59 = load i32, ptr %12, align 4
  %60 = add nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.complex, ptr %58, i64 %61
  %63 = getelementptr inbounds nuw %struct.complex, ptr %62, i32 0, i32 1
  store float 0.000000e+00, ptr %63, align 4
  %64 = load ptr, ptr %4, align 8
  %65 = load ptr, ptr %4, align 8
  %66 = load ptr, ptr %4, align 8
  %67 = load ptr, ptr %4, align 8
  %68 = load ptr, ptr %4, align 8
  %69 = load ptr, ptr %4, align 8
  %70 = load i32, ptr %12, align 4
  %.promoted11 = load i32, ptr %11, align 4
  %.promoted16 = load i32, ptr %9, align 4
  br label %71

71:                                               ; preds = %117, %29
  %72 = phi i32 [ %116, %117 ], [ %.promoted16, %29 ]
  %73 = phi i32 [ %74, %117 ], [ %.promoted11, %29 ]
  %74 = sdiv i32 %73, 2
  %75 = sext i32 %72 to i64
  %76 = getelementptr inbounds [26 x float], ptr %7, i64 0, i64 %75
  %77 = load float, ptr %76, align 4
  %invariant.op = add i32 %74, 1
  %invariant.op3 = sub i32 1, %74
  %78 = sext i32 %72 to i64
  %79 = getelementptr inbounds [26 x float], ptr %7, i64 0, i64 %78
  %80 = load float, ptr %79, align 4
  %invariant.op5 = add i32 %74, 1
  %invariant.op7 = sub i32 1, %74
  br label %81

81:                                               ; preds = %112, %71
  %82 = phi i32 [ %111, %112 ], [ %74, %71 ]
  %.reass = add i32 %82, %invariant.op
  %83 = sext i32 %.reass to i64
  %84 = getelementptr inbounds %struct.complex, ptr %64, i64 %83
  %85 = getelementptr inbounds nuw %struct.complex, ptr %84, i32 0, i32 0
  %86 = load float, ptr %85, align 4
  %.reass4 = add i32 %82, %invariant.op3
  %87 = sext i32 %.reass4 to i64
  %88 = getelementptr inbounds %struct.complex, ptr %65, i64 %87
  %89 = getelementptr inbounds nuw %struct.complex, ptr %88, i32 0, i32 0
  %90 = load float, ptr %89, align 4
  %91 = fadd float %86, %90
  %92 = fmul float %77, %91
  %93 = add nsw i32 %82, 1
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.complex, ptr %66, i64 %94
  %96 = getelementptr inbounds nuw %struct.complex, ptr %95, i32 0, i32 0
  store float %92, ptr %96, align 4
  %.reass6 = add i32 %82, %invariant.op5
  %97 = sext i32 %.reass6 to i64
  %98 = getelementptr inbounds %struct.complex, ptr %67, i64 %97
  %99 = getelementptr inbounds nuw %struct.complex, ptr %98, i32 0, i32 1
  %100 = load float, ptr %99, align 4
  %.reass8 = add i32 %82, %invariant.op7
  %101 = sext i32 %.reass8 to i64
  %102 = getelementptr inbounds %struct.complex, ptr %68, i64 %101
  %103 = getelementptr inbounds nuw %struct.complex, ptr %102, i32 0, i32 1
  %104 = load float, ptr %103, align 4
  %105 = fadd float %100, %104
  %106 = fmul float %80, %105
  %107 = add nsw i32 %82, 1
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.complex, ptr %69, i64 %108
  %110 = getelementptr inbounds nuw %struct.complex, ptr %109, i32 0, i32 1
  store float %106, ptr %110, align 4
  %111 = add nsw i32 %82, %73
  br label %112

112:                                              ; preds = %81
  %113 = icmp sle i32 %111, %70
  br i1 %113, label %81, label %114, !llvm.loop !11

114:                                              ; preds = %112
  %.lcssa10 = phi i32 [ %111, %112 ]
  %115 = add nsw i32 %72, 1
  %116 = call i32 @Min0(i32 noundef %115, i32 noundef 25)
  br label %117

117:                                              ; preds = %114
  %118 = icmp sgt i32 %74, 1
  br i1 %118, label %71, label %119, !llvm.loop !12

119:                                              ; preds = %117
  %.lcssa17 = phi i32 [ %116, %117 ]
  %.lcssa10.lcssa = phi i32 [ %.lcssa10, %117 ]
  %.lcssa14 = phi i32 [ %74, %117 ]
  %.lcssa12 = phi i32 [ %74, %117 ]
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
  %180 = load i32, ptr %11, align 4
  %181 = load i32, ptr %6, align 4
  %182 = icmp sle i32 %180, %181
  br i1 %182, label %.lr.ph, label %212

.lr.ph:                                           ; preds = %179
  %183 = load float, ptr %10, align 4
  %184 = load ptr, ptr %7, align 8
  %185 = load ptr, ptr %7, align 8
  %186 = load float, ptr %10, align 4
  %187 = fneg float %186
  %188 = load ptr, ptr %7, align 8
  %189 = load ptr, ptr %7, align 8
  %190 = load i32, ptr %6, align 4
  %.promoted = load i32, ptr %11, align 4
  br label %191

191:                                              ; preds = %.lr.ph, %209
  %192 = phi i32 [ %.promoted, %.lr.ph ], [ %210, %209 ]
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.complex, ptr %184, i64 %193
  %195 = getelementptr inbounds nuw %struct.complex, ptr %194, i32 0, i32 0
  %196 = load float, ptr %195, align 4
  %197 = fmul float %183, %196
  %198 = sext i32 %192 to i64
  %199 = getelementptr inbounds %struct.complex, ptr %185, i64 %198
  %200 = getelementptr inbounds nuw %struct.complex, ptr %199, i32 0, i32 0
  store float %197, ptr %200, align 4
  %201 = sext i32 %192 to i64
  %202 = getelementptr inbounds %struct.complex, ptr %188, i64 %201
  %203 = getelementptr inbounds nuw %struct.complex, ptr %202, i32 0, i32 1
  %204 = load float, ptr %203, align 4
  %205 = fmul float %187, %204
  %206 = sext i32 %192 to i64
  %207 = getelementptr inbounds %struct.complex, ptr %189, i64 %206
  %208 = getelementptr inbounds nuw %struct.complex, ptr %207, i32 0, i32 1
  store float %205, ptr %208, align 4
  br label %209

209:                                              ; preds = %191
  %210 = add nsw i32 %192, 1
  %211 = icmp sle i32 %210, %190
  br i1 %211, label %191, label %._crit_edge, !llvm.loop !17

._crit_edge:                                      ; preds = %209
  %.lcssa14 = phi i32 [ %210, %209 ]
  store i32 %.lcssa14, ptr %11, align 4
  br label %212

212:                                              ; preds = %._crit_edge, %179
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
  br i1 %4, label %.lr.ph, label %23

.lr.ph:                                           ; preds = %0
  %.promoted = load i32, ptr %1, align 4
  br label %5

5:                                                ; preds = %.lr.ph, %20
  %6 = phi i32 [ %.promoted, %.lr.ph ], [ %21, %20 ]
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
  %12 = sext i32 %6 to i64
  %13 = getelementptr inbounds [257 x %struct.complex], ptr @z, i64 0, i64 %12
  %14 = getelementptr inbounds nuw %struct.complex, ptr %13, i32 0, i32 0
  store float %11, ptr %14, align 8
  %15 = load float, ptr @zi, align 4
  %16 = call float @llvm.fmuladd.f32(float 2.000000e+01, float %15, float -1.000000e+01)
  %17 = sext i32 %6 to i64
  %18 = getelementptr inbounds [257 x %struct.complex], ptr @z, i64 0, i64 %17
  %19 = getelementptr inbounds nuw %struct.complex, ptr %18, i32 0, i32 1
  store float %16, ptr %19, align 4
  br label %20

20:                                               ; preds = %5
  %21 = add nsw i32 %6, 1
  %22 = icmp sle i32 %21, 256
  br i1 %22, label %5, label %._crit_edge, !llvm.loop !18

._crit_edge:                                      ; preds = %20
  %.lcssa = phi i32 [ %21, %20 ]
  store i32 %.lcssa, ptr %1, align 4
  br label %23

23:                                               ; preds = %._crit_edge, %0
  store i32 1, ptr %1, align 4
  %24 = load i32, ptr %1, align 4
  %25 = icmp sle i32 %24, 20
  br i1 %25, label %.lr.ph2, label %31

.lr.ph2:                                          ; preds = %23
  %.promoted4 = load i32, ptr %1, align 4
  br label %26

26:                                               ; preds = %.lr.ph2, %28
  %27 = phi i32 [ %.promoted4, %.lr.ph2 ], [ %29, %28 ]
  call void @Fft(i32 noundef 256, ptr noundef @z, ptr noundef @w, ptr noundef @e, float noundef 6.250000e-02)
  br label %28

28:                                               ; preds = %26
  %29 = add nsw i32 %27, 1
  %30 = icmp sle i32 %29, 20
  br i1 %30, label %26, label %._crit_edge3, !llvm.loop !19

._crit_edge3:                                     ; preds = %28
  %.lcssa5 = phi i32 [ %29, %28 ]
  store i32 %.lcssa5, ptr %1, align 4
  br label %31

31:                                               ; preds = %._crit_edge3, %23
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
  br i1 %4, label %.lr.ph, label %10

.lr.ph:                                           ; preds = %0
  %.promoted = load i32, ptr %2, align 4
  br label %5

5:                                                ; preds = %.lr.ph, %7
  %6 = phi i32 [ %.promoted, %.lr.ph ], [ %8, %7 ]
  call void @Oscar()
  br label %7

7:                                                ; preds = %5
  %8 = add nsw i32 %6, 1
  %9 = icmp slt i32 %8, 10
  br i1 %9, label %5, label %._crit_edge, !llvm.loop !20

._crit_edge:                                      ; preds = %7
  %.lcssa = phi i32 [ %8, %7 ]
  store i32 %.lcssa, ptr %2, align 4
  br label %10

10:                                               ; preds = %._crit_edge, %0
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
