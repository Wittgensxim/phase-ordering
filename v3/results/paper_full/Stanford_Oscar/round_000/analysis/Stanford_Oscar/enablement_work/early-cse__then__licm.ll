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
  %8 = load float, ptr %2, align 4
  %.promoted = load i32, ptr %3, align 4
  %.promoted1 = load i32, ptr %4, align 4
  %.promoted3 = load float, ptr %6, align 4
  %.promoted5 = load float, ptr %5, align 4
  br label %9

9:                                                ; preds = %36, %1
  %10 = phi float [ %34, %36 ], [ %.promoted5, %1 ]
  %11 = phi float [ %17, %36 ], [ %.promoted3, %1 ]
  %12 = phi i32 [ %35, %36 ], [ %.promoted1, %1 ]
  %13 = phi i32 [ %37, %36 ], [ %.promoted, %1 ]
  %14 = icmp sle i32 %13, 10
  br i1 %14, label %15, label %38

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
  %35 = phi i32 [ %16, %31 ], [ %16, %15 ]
  br label %36

36:                                               ; preds = %33
  %37 = add nsw i32 %13, 1
  br label %9, !llvm.loop !7

38:                                               ; preds = %9
  %.lcssa6 = phi float [ %10, %9 ]
  %.lcssa4 = phi float [ %11, %9 ]
  %.lcssa2 = phi i32 [ %12, %9 ]
  %.lcssa = phi i32 [ %13, %9 ]
  store i32 %.lcssa, ptr %3, align 4
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
  %12 = load ptr, ptr %5, align 8
  %13 = load i32, ptr %8, align 4
  %14 = load ptr, ptr %5, align 8
  %15 = load i32, ptr %8, align 4
  %16 = load i32, ptr %7, align 4
  %.promoted = load i32, ptr %9, align 4
  br label %17

17:                                               ; preds = %38, %4
  %18 = phi i32 [ %37, %38 ], [ %.promoted, %4 ]
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.complex, ptr %12, i64 %19
  %21 = load float, ptr %20, align 4
  %22 = fpext float %21 to double
  %23 = getelementptr inbounds nuw %struct.complex, ptr %20, i32 0, i32 1
  %24 = load float, ptr %23, align 4
  %25 = fpext float %24 to double
  %26 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, double noundef %22, double noundef %25)
  %27 = add nsw i32 %18, %13
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.complex, ptr %14, i64 %28
  %30 = load float, ptr %29, align 4
  %31 = fpext float %30 to double
  %32 = getelementptr inbounds nuw %struct.complex, ptr %29, i32 0, i32 1
  %33 = load float, ptr %32, align 4
  %34 = fpext float %33 to double
  %35 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, double noundef %31, double noundef %34)
  %36 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %37 = add nsw i32 %27, %15
  br label %38

38:                                               ; preds = %17
  %39 = icmp sle i32 %37, %16
  br i1 %39, label %17, label %40, !llvm.loop !9

40:                                               ; preds = %38
  %.lcssa = phi i32 [ %37, %38 ]
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
  %31 = sdiv i32 %30, 2
  store i32 %31, ptr %11, align 4
  store i32 1, ptr %9, align 4
  %32 = load ptr, ptr %4, align 8
  %33 = getelementptr inbounds %struct.complex, ptr %32, i64 1
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
  store float 0.000000e+00, ptr %41, align 4
  %42 = load ptr, ptr %4, align 8
  %43 = load i32, ptr %11, align 4
  %44 = add nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.complex, ptr %42, i64 %45
  %47 = getelementptr inbounds nuw %struct.complex, ptr %46, i32 0, i32 1
  store float 1.000000e+00, ptr %47, align 4
  %48 = load ptr, ptr %4, align 8
  %49 = load i32, ptr %12, align 4
  %50 = add nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.complex, ptr %48, i64 %51
  store float -1.000000e+00, ptr %52, align 4
  %53 = load ptr, ptr %4, align 8
  %54 = load i32, ptr %12, align 4
  %55 = add nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.complex, ptr %53, i64 %56
  %58 = getelementptr inbounds nuw %struct.complex, ptr %57, i32 0, i32 1
  store float 0.000000e+00, ptr %58, align 4
  %59 = load ptr, ptr %4, align 8
  %60 = load ptr, ptr %4, align 8
  %61 = load i32, ptr %12, align 4
  %.promoted11 = load i32, ptr %11, align 4
  %.promoted16 = load i32, ptr %9, align 4
  br label %62

62:                                               ; preds = %105, %28
  %63 = phi i32 [ %104, %105 ], [ %.promoted16, %28 ]
  %64 = phi i32 [ %65, %105 ], [ %.promoted11, %28 ]
  %65 = sdiv i32 %64, 2
  %66 = sext i32 %63 to i64
  %67 = getelementptr inbounds [26 x float], ptr %7, i64 0, i64 %66
  %68 = load float, ptr %67, align 4
  %invariant.op = add i32 %65, 1
  %invariant.op3 = sub i32 1, %65
  %69 = sext i32 %63 to i64
  %70 = getelementptr inbounds [26 x float], ptr %7, i64 0, i64 %69
  %71 = load float, ptr %70, align 4
  %invariant.op5 = add i32 %65, 1
  %invariant.op7 = sub i32 1, %65
  br label %72

72:                                               ; preds = %100, %62
  %73 = phi i32 [ %99, %100 ], [ %65, %62 ]
  %.reass = add i32 %73, %invariant.op
  %74 = sext i32 %.reass to i64
  %75 = getelementptr inbounds %struct.complex, ptr %59, i64 %74
  %76 = load float, ptr %75, align 4
  %.reass4 = add i32 %73, %invariant.op3
  %77 = sext i32 %.reass4 to i64
  %78 = getelementptr inbounds %struct.complex, ptr %59, i64 %77
  %79 = load float, ptr %78, align 4
  %80 = fadd float %76, %79
  %81 = fmul float %68, %80
  %82 = add nsw i32 %73, 1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.complex, ptr %59, i64 %83
  store float %81, ptr %84, align 4
  %.reass6 = add i32 %73, %invariant.op5
  %85 = sext i32 %.reass6 to i64
  %86 = getelementptr inbounds %struct.complex, ptr %60, i64 %85
  %87 = getelementptr inbounds nuw %struct.complex, ptr %86, i32 0, i32 1
  %88 = load float, ptr %87, align 4
  %.reass8 = add i32 %73, %invariant.op7
  %89 = sext i32 %.reass8 to i64
  %90 = getelementptr inbounds %struct.complex, ptr %60, i64 %89
  %91 = getelementptr inbounds nuw %struct.complex, ptr %90, i32 0, i32 1
  %92 = load float, ptr %91, align 4
  %93 = fadd float %88, %92
  %94 = fmul float %71, %93
  %95 = add nsw i32 %73, 1
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.complex, ptr %60, i64 %96
  %98 = getelementptr inbounds nuw %struct.complex, ptr %97, i32 0, i32 1
  store float %94, ptr %98, align 4
  %99 = add nsw i32 %73, %64
  br label %100

100:                                              ; preds = %72
  %101 = icmp sle i32 %99, %61
  br i1 %101, label %72, label %102, !llvm.loop !11

102:                                              ; preds = %100
  %.lcssa10 = phi i32 [ %99, %100 ]
  %103 = add nsw i32 %63, 1
  %104 = call i32 @Min0(i32 noundef %103, i32 noundef 25)
  br label %105

105:                                              ; preds = %102
  %106 = icmp sgt i32 %65, 1
  br i1 %106, label %62, label %107, !llvm.loop !12

107:                                              ; preds = %105
  %.lcssa17 = phi i32 [ %104, %105 ]
  %.lcssa10.lcssa = phi i32 [ %.lcssa10, %105 ]
  %.lcssa14 = phi i32 [ %65, %105 ]
  %.lcssa12 = phi i32 [ %65, %105 ]
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
  %20 = load i32, ptr %15, align 4
  %21 = load ptr, ptr %8, align 8
  %22 = load ptr, ptr %7, align 8
  %23 = load i32, ptr %15, align 4
  %24 = load ptr, ptr %8, align 8
  %25 = load ptr, ptr %9, align 8
  %26 = load ptr, ptr %7, align 8
  %27 = load i32, ptr %15, align 4
  %28 = load ptr, ptr %8, align 8
  %29 = load ptr, ptr %9, align 8
  %30 = load ptr, ptr %7, align 8
  %31 = load i32, ptr %15, align 4
  %32 = load ptr, ptr %8, align 8
  %33 = load i32, ptr %15, align 4
  %34 = load ptr, ptr %7, align 8
  %35 = load ptr, ptr %8, align 8
  %36 = load i32, ptr %6, align 4
  %37 = load i32, ptr %15, align 4
  %.promoted10 = load i32, ptr %14, align 4
  br label %38

38:                                               ; preds = %137, %5
  %39 = phi i32 [ %136, %137 ], [ %.promoted10, %5 ]
  br label %40

40:                                               ; preds = %124, %38
  %.lcssa17 = phi i32 [ %.lcssa1, %124 ], [ 1, %38 ]
  %41 = phi i32 [ %123, %124 ], [ %39, %38 ]
  %.lcssa3 = phi i32 [ %.lcssa, %124 ], [ 0, %38 ]
  %42 = add nsw i32 %.lcssa3, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.complex, ptr %25, i64 %43
  %45 = getelementptr inbounds nuw %struct.complex, ptr %44, i32 0, i32 1
  %46 = add nsw i32 %.lcssa3, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.complex, ptr %29, i64 %47
  %49 = getelementptr inbounds nuw %struct.complex, ptr %48, i32 0, i32 1
  br label %50

50:                                               ; preds = %120, %40
  %51 = phi i32 [ %119, %120 ], [ %.lcssa17, %40 ]
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.complex, ptr %19, i64 %52
  %54 = load float, ptr %53, align 4
  %55 = add nsw i32 %20, %51
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.complex, ptr %19, i64 %56
  %58 = load float, ptr %57, align 4
  %59 = fadd float %54, %58
  %60 = add nsw i32 %51, %.lcssa3
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.complex, ptr %21, i64 %61
  store float %59, ptr %62, align 4
  %63 = sext i32 %51 to i64
  %64 = getelementptr inbounds %struct.complex, ptr %22, i64 %63
  %65 = getelementptr inbounds nuw %struct.complex, ptr %64, i32 0, i32 1
  %66 = load float, ptr %65, align 4
  %67 = add nsw i32 %23, %51
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.complex, ptr %22, i64 %68
  %70 = getelementptr inbounds nuw %struct.complex, ptr %69, i32 0, i32 1
  %71 = load float, ptr %70, align 4
  %72 = fadd float %66, %71
  %73 = add nsw i32 %51, %.lcssa3
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.complex, ptr %24, i64 %74
  %76 = getelementptr inbounds nuw %struct.complex, ptr %75, i32 0, i32 1
  store float %72, ptr %76, align 4
  %77 = load float, ptr %44, align 4
  %78 = sext i32 %51 to i64
  %79 = getelementptr inbounds %struct.complex, ptr %26, i64 %78
  %80 = load float, ptr %79, align 4
  %81 = add nsw i32 %51, %27
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.complex, ptr %26, i64 %82
  %84 = load float, ptr %83, align 4
  %85 = fsub float %80, %84
  %86 = load float, ptr %45, align 4
  %87 = getelementptr inbounds nuw %struct.complex, ptr %79, i32 0, i32 1
  %88 = load float, ptr %87, align 4
  %89 = getelementptr inbounds nuw %struct.complex, ptr %83, i32 0, i32 1
  %90 = load float, ptr %89, align 4
  %91 = fsub float %88, %90
  %92 = fmul float %86, %91
  %93 = fneg float %92
  %94 = call float @llvm.fmuladd.f32(float %77, float %85, float %93)
  %95 = add nsw i32 %51, %41
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.complex, ptr %28, i64 %96
  store float %94, ptr %97, align 4
  %98 = load float, ptr %48, align 4
  %99 = sext i32 %51 to i64
  %100 = getelementptr inbounds %struct.complex, ptr %30, i64 %99
  %101 = getelementptr inbounds nuw %struct.complex, ptr %100, i32 0, i32 1
  %102 = load float, ptr %101, align 4
  %103 = add nsw i32 %51, %31
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.complex, ptr %30, i64 %104
  %106 = getelementptr inbounds nuw %struct.complex, ptr %105, i32 0, i32 1
  %107 = load float, ptr %106, align 4
  %108 = fsub float %102, %107
  %109 = load float, ptr %49, align 4
  %110 = load float, ptr %100, align 4
  %111 = load float, ptr %105, align 4
  %112 = fsub float %110, %111
  %113 = fmul float %109, %112
  %114 = call float @llvm.fmuladd.f32(float %98, float %108, float %113)
  %115 = add nsw i32 %51, %41
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.complex, ptr %32, i64 %116
  %118 = getelementptr inbounds nuw %struct.complex, ptr %117, i32 0, i32 1
  store float %114, ptr %118, align 4
  %119 = add nsw i32 %51, 1
  br label %120

120:                                              ; preds = %50
  %121 = icmp sle i32 %119, %41
  br i1 %121, label %50, label %122, !llvm.loop !13

122:                                              ; preds = %120
  %.lcssa1 = phi i32 [ %119, %120 ]
  %.lcssa = phi i32 [ %41, %120 ]
  %123 = add nsw i32 %.lcssa, %39
  br label %124

124:                                              ; preds = %122
  %125 = icmp sle i32 %123, %33
  br i1 %125, label %40, label %126, !llvm.loop !14

126:                                              ; preds = %124
  %.lcssa1.lcssa = phi i32 [ %.lcssa1, %124 ]
  %.lcssa5 = phi i32 [ %123, %124 ]
  %.lcssa.lcssa = phi i32 [ %.lcssa, %124 ]
  br label %127

127:                                              ; preds = %133, %126
  %128 = phi i32 [ %132, %133 ], [ 1, %126 ]
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.complex, ptr %34, i64 %129
  %131 = getelementptr inbounds %struct.complex, ptr %35, i64 %129
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %130, ptr align 4 %131, i64 8, i1 false)
  %132 = add nsw i32 %128, 1
  br label %133

133:                                              ; preds = %127
  %134 = icmp sle i32 %132, %36
  br i1 %134, label %127, label %135, !llvm.loop !15

135:                                              ; preds = %133
  %.lcssa8 = phi i32 [ %132, %133 ]
  %136 = add nsw i32 %39, %39
  br label %137

137:                                              ; preds = %135
  %138 = icmp sle i32 %136, %37
  br i1 %138, label %38, label %139, !llvm.loop !16

139:                                              ; preds = %137
  %.lcssa8.lcssa = phi i32 [ %.lcssa8, %137 ]
  %.lcssa1.lcssa.lcssa = phi i32 [ %.lcssa1.lcssa, %137 ]
  %.lcssa5.lcssa = phi i32 [ %.lcssa5, %137 ]
  %.lcssa11 = phi i32 [ %136, %137 ]
  %.lcssa.lcssa.lcssa = phi i32 [ %.lcssa.lcssa, %137 ]
  store i32 %.lcssa.lcssa.lcssa, ptr %13, align 4
  store i32 %.lcssa11, ptr %14, align 4
  store i32 %.lcssa5.lcssa, ptr %12, align 4
  store i32 %.lcssa1.lcssa.lcssa, ptr %11, align 4
  store i32 %.lcssa8.lcssa, ptr %16, align 4
  store i32 1, ptr %11, align 4
  %140 = load i32, ptr %6, align 4
  %141 = load float, ptr %10, align 4
  %142 = load ptr, ptr %7, align 8
  %143 = load float, ptr %10, align 4
  %144 = fneg float %143
  %145 = load ptr, ptr %7, align 8
  %.promoted = load i32, ptr %11, align 4
  br label %146

146:                                              ; preds = %159, %139
  %147 = phi i32 [ %160, %159 ], [ %.promoted, %139 ]
  %148 = icmp sle i32 %147, %140
  br i1 %148, label %149, label %161

149:                                              ; preds = %146
  %150 = sext i32 %147 to i64
  %151 = getelementptr inbounds %struct.complex, ptr %142, i64 %150
  %152 = load float, ptr %151, align 4
  %153 = fmul float %141, %152
  store float %153, ptr %151, align 4
  %154 = sext i32 %147 to i64
  %155 = getelementptr inbounds %struct.complex, ptr %145, i64 %154
  %156 = getelementptr inbounds nuw %struct.complex, ptr %155, i32 0, i32 1
  %157 = load float, ptr %156, align 4
  %158 = fmul float %144, %157
  store float %158, ptr %156, align 4
  br label %159

159:                                              ; preds = %149
  %160 = add nsw i32 %147, 1
  br label %146, !llvm.loop !17

161:                                              ; preds = %146
  %.lcssa15 = phi i32 [ %147, %146 ]
  store i32 %.lcssa15, ptr %11, align 4
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

3:                                                ; preds = %19, %0
  %4 = phi i32 [ %20, %19 ], [ %.promoted, %0 ]
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
  store float %11, ptr %13, align 8
  %14 = load float, ptr @zi, align 4
  %15 = call float @llvm.fmuladd.f32(float 2.000000e+01, float %14, float -1.000000e+01)
  %16 = sext i32 %4 to i64
  %17 = getelementptr inbounds [257 x %struct.complex], ptr @z, i64 0, i64 %16
  %18 = getelementptr inbounds nuw %struct.complex, ptr %17, i32 0, i32 1
  store float %15, ptr %18, align 4
  br label %19

19:                                               ; preds = %6
  %20 = add nsw i32 %4, 1
  br label %3, !llvm.loop !18

21:                                               ; preds = %3
  %.lcssa = phi i32 [ %4, %3 ]
  store i32 %.lcssa, ptr %1, align 4
  store i32 1, ptr %1, align 4
  %.promoted1 = load i32, ptr %1, align 4
  br label %22

22:                                               ; preds = %26, %21
  %23 = phi i32 [ %27, %26 ], [ %.promoted1, %21 ]
  %24 = icmp sle i32 %23, 20
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  call void @Fft(i32 noundef 256, ptr noundef @z, ptr noundef @w, ptr noundef @e, float noundef 6.250000e-02)
  br label %26

26:                                               ; preds = %25
  %27 = add nsw i32 %23, 1
  br label %22, !llvm.loop !19

28:                                               ; preds = %22
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
