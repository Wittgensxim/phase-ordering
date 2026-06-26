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
  br label %2

2:                                                ; preds = %30, %1
  %3 = phi float [ %27, %30 ], [ 1.000000e+00, %1 ]
  %4 = phi float [ %28, %30 ], [ %0, %1 ]
  %5 = phi i32 [ %29, %30 ], [ 1, %1 ]
  %6 = phi i32 [ %31, %30 ], [ 2, %1 ]
  %7 = icmp sle i32 %6, 10
  br i1 %7, label %8, label %32

8:                                                ; preds = %2
  %9 = mul nsw i32 %5, %6
  %10 = fmul float %4, %0
  %11 = and i32 %6, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %8
  %14 = and i32 %6, 3
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = sitofp i32 %9 to float
  %18 = fdiv float %10, %17
  %19 = fadd float %3, %18
  br label %24

20:                                               ; preds = %13
  %21 = sitofp i32 %9 to float
  %22 = fdiv float %10, %21
  %23 = fsub float %3, %22
  br label %24

24:                                               ; preds = %20, %16
  %25 = phi float [ %23, %20 ], [ %19, %16 ]
  br label %26

26:                                               ; preds = %24, %8
  %27 = phi float [ %25, %24 ], [ %3, %8 ]
  %28 = phi float [ %10, %24 ], [ %10, %8 ]
  %29 = phi i32 [ %9, %24 ], [ %9, %8 ]
  br label %30

30:                                               ; preds = %26
  %31 = add nsw i32 %6, 1
  br label %2, !llvm.loop !7

32:                                               ; preds = %2
  %.lcssa6 = phi float [ %3, %2 ]
  %.lcssa4 = phi float [ %4, %2 ]
  %.lcssa2 = phi i32 [ %5, %2 ]
  %.lcssa = phi i32 [ %6, %2 ]
  ret float %.lcssa6
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Min0(i32 noundef %0, i32 noundef %1) #0 {
  %3 = icmp slt i32 %0, %1
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  br label %6

5:                                                ; preds = %2
  br label %6

6:                                                ; preds = %5, %4
  %.0 = phi i32 [ %0, %4 ], [ %1, %5 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Printcomplex(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  br label %6

6:                                                ; preds = %33, %4
  %7 = phi i32 [ %32, %33 ], [ %1, %4 ]
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds %struct.complex, ptr %0, i64 %8
  %10 = getelementptr inbounds nuw %struct.complex, ptr %9, i32 0, i32 0
  %11 = load float, ptr %10, align 4
  %12 = fpext float %11 to double
  %13 = sext i32 %7 to i64
  %14 = getelementptr inbounds %struct.complex, ptr %0, i64 %13
  %15 = getelementptr inbounds nuw %struct.complex, ptr %14, i32 0, i32 1
  %16 = load float, ptr %15, align 4
  %17 = fpext float %16 to double
  %18 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, double noundef %12, double noundef %17)
  %19 = add nsw i32 %7, %3
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.complex, ptr %0, i64 %20
  %22 = getelementptr inbounds nuw %struct.complex, ptr %21, i32 0, i32 0
  %23 = load float, ptr %22, align 4
  %24 = fpext float %23 to double
  %25 = sext i32 %19 to i64
  %26 = getelementptr inbounds %struct.complex, ptr %0, i64 %25
  %27 = getelementptr inbounds nuw %struct.complex, ptr %26, i32 0, i32 1
  %28 = load float, ptr %27, align 4
  %29 = fpext float %28 to double
  %30 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, double noundef %24, double noundef %29)
  %31 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %32 = add nsw i32 %19, %3
  br label %33

33:                                               ; preds = %6
  %34 = icmp sle i32 %32, %2
  br i1 %34, label %6, label %35, !llvm.loop !9

35:                                               ; preds = %33
  %.lcssa = phi i32 [ %32, %33 ]
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @Uniform11(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load i32, ptr %0, align 4
  %4 = mul nsw i32 4855, %3
  %5 = add nsw i32 %4, 1731
  %6 = and i32 %5, 8191
  store i32 %6, ptr %0, align 4
  %7 = load i32, ptr %0, align 4
  %8 = sitofp i32 %7 to float
  %9 = fdiv float %8, 8.192000e+03
  store float %9, ptr %1, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Exptab(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca [26 x float], align 16
  br label %4

4:                                                ; preds = %16, %2
  %5 = phi float [ %15, %16 ], [ 4.000000e+00, %2 ]
  %6 = phi i32 [ %17, %16 ], [ 1, %2 ]
  %7 = icmp sle i32 %6, 25
  br i1 %7, label %8, label %18

8:                                                ; preds = %4
  %9 = fdiv float f0x40490FDB, %5
  %10 = call float @Cos(float noundef %9)
  %11 = fmul float 2.000000e+00, %10
  %12 = fdiv float 1.000000e+00, %11
  %13 = sext i32 %6 to i64
  %14 = getelementptr inbounds [26 x float], ptr %3, i64 0, i64 %13
  store float %12, ptr %14, align 4
  %15 = fadd float %5, %5
  br label %16

16:                                               ; preds = %8
  %17 = add nsw i32 %6, 1
  br label %4, !llvm.loop !10

18:                                               ; preds = %4
  %.lcssa2 = phi float [ %5, %4 ]
  %.lcssa = phi i32 [ %6, %4 ]
  %19 = sdiv i32 %0, 2
  %20 = sdiv i32 %19, 2
  %21 = getelementptr inbounds %struct.complex, ptr %1, i64 1
  %22 = getelementptr inbounds nuw %struct.complex, ptr %21, i32 0, i32 0
  store float 1.000000e+00, ptr %22, align 4
  %23 = getelementptr inbounds %struct.complex, ptr %1, i64 1
  %24 = getelementptr inbounds nuw %struct.complex, ptr %23, i32 0, i32 1
  store float 0.000000e+00, ptr %24, align 4
  %25 = add nsw i32 %20, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.complex, ptr %1, i64 %26
  %28 = getelementptr inbounds nuw %struct.complex, ptr %27, i32 0, i32 0
  store float 0.000000e+00, ptr %28, align 4
  %29 = add nsw i32 %20, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.complex, ptr %1, i64 %30
  %32 = getelementptr inbounds nuw %struct.complex, ptr %31, i32 0, i32 1
  store float 1.000000e+00, ptr %32, align 4
  %33 = add nsw i32 %19, 1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.complex, ptr %1, i64 %34
  %36 = getelementptr inbounds nuw %struct.complex, ptr %35, i32 0, i32 0
  store float -1.000000e+00, ptr %36, align 4
  %37 = add nsw i32 %19, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.complex, ptr %1, i64 %38
  %40 = getelementptr inbounds nuw %struct.complex, ptr %39, i32 0, i32 1
  store float 0.000000e+00, ptr %40, align 4
  br label %41

41:                                               ; preds = %87, %18
  %42 = phi i32 [ %86, %87 ], [ 1, %18 ]
  %43 = phi i32 [ %44, %87 ], [ %20, %18 ]
  %44 = sdiv i32 %43, 2
  %45 = sext i32 %42 to i64
  %46 = getelementptr inbounds [26 x float], ptr %3, i64 0, i64 %45
  %47 = load float, ptr %46, align 4
  %invariant.op = add i32 %44, 1
  %invariant.op3 = sub i32 1, %44
  %48 = sext i32 %42 to i64
  %49 = getelementptr inbounds [26 x float], ptr %3, i64 0, i64 %48
  %50 = load float, ptr %49, align 4
  %invariant.op5 = add i32 %44, 1
  %invariant.op7 = sub i32 1, %44
  br label %51

51:                                               ; preds = %82, %41
  %52 = phi i32 [ %81, %82 ], [ %44, %41 ]
  %.reass = add i32 %52, %invariant.op
  %53 = sext i32 %.reass to i64
  %54 = getelementptr inbounds %struct.complex, ptr %1, i64 %53
  %55 = getelementptr inbounds nuw %struct.complex, ptr %54, i32 0, i32 0
  %56 = load float, ptr %55, align 4
  %.reass4 = add i32 %52, %invariant.op3
  %57 = sext i32 %.reass4 to i64
  %58 = getelementptr inbounds %struct.complex, ptr %1, i64 %57
  %59 = getelementptr inbounds nuw %struct.complex, ptr %58, i32 0, i32 0
  %60 = load float, ptr %59, align 4
  %61 = fadd float %56, %60
  %62 = fmul float %47, %61
  %63 = add nsw i32 %52, 1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.complex, ptr %1, i64 %64
  %66 = getelementptr inbounds nuw %struct.complex, ptr %65, i32 0, i32 0
  store float %62, ptr %66, align 4
  %.reass6 = add i32 %52, %invariant.op5
  %67 = sext i32 %.reass6 to i64
  %68 = getelementptr inbounds %struct.complex, ptr %1, i64 %67
  %69 = getelementptr inbounds nuw %struct.complex, ptr %68, i32 0, i32 1
  %70 = load float, ptr %69, align 4
  %.reass8 = add i32 %52, %invariant.op7
  %71 = sext i32 %.reass8 to i64
  %72 = getelementptr inbounds %struct.complex, ptr %1, i64 %71
  %73 = getelementptr inbounds nuw %struct.complex, ptr %72, i32 0, i32 1
  %74 = load float, ptr %73, align 4
  %75 = fadd float %70, %74
  %76 = fmul float %50, %75
  %77 = add nsw i32 %52, 1
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.complex, ptr %1, i64 %78
  %80 = getelementptr inbounds nuw %struct.complex, ptr %79, i32 0, i32 1
  store float %76, ptr %80, align 4
  %81 = add nsw i32 %52, %43
  br label %82

82:                                               ; preds = %51
  %83 = icmp sle i32 %81, %19
  br i1 %83, label %51, label %84, !llvm.loop !11

84:                                               ; preds = %82
  %.lcssa10 = phi i32 [ %81, %82 ]
  %85 = add nsw i32 %42, 1
  %86 = call i32 @Min0(i32 noundef %85, i32 noundef 25)
  br label %87

87:                                               ; preds = %84
  %88 = icmp sgt i32 %44, 1
  br i1 %88, label %41, label %89, !llvm.loop !12

89:                                               ; preds = %87
  %.lcssa17 = phi i32 [ %86, %87 ]
  %.lcssa10.lcssa = phi i32 [ %.lcssa10, %87 ]
  %.lcssa14 = phi i32 [ %44, %87 ]
  %.lcssa12 = phi i32 [ %44, %87 ]
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Fft(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, float noundef %4) #0 {
  %6 = sdiv i32 %0, 2
  br label %7

7:                                                ; preds = %134, %5
  %8 = phi i32 [ %133, %134 ], [ 1, %5 ]
  br label %9

9:                                                ; preds = %120, %7
  %.lcssa6 = phi i32 [ %.lcssa, %120 ], [ 1, %7 ]
  %10 = phi i32 [ %119, %120 ], [ %8, %7 ]
  %11 = phi i32 [ %10, %120 ], [ 0, %7 ]
  %12 = add nsw i32 %11, 1
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.complex, ptr %3, i64 %13
  %15 = getelementptr inbounds nuw %struct.complex, ptr %14, i32 0, i32 0
  %16 = add nsw i32 %11, 1
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.complex, ptr %3, i64 %17
  %19 = getelementptr inbounds nuw %struct.complex, ptr %18, i32 0, i32 1
  %20 = add nsw i32 %11, 1
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.complex, ptr %3, i64 %21
  %23 = getelementptr inbounds nuw %struct.complex, ptr %22, i32 0, i32 0
  %24 = add nsw i32 %11, 1
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.complex, ptr %3, i64 %25
  %27 = getelementptr inbounds nuw %struct.complex, ptr %26, i32 0, i32 1
  br label %28

28:                                               ; preds = %116, %9
  %29 = phi i32 [ %115, %116 ], [ %.lcssa6, %9 ]
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.complex, ptr %1, i64 %30
  %32 = getelementptr inbounds nuw %struct.complex, ptr %31, i32 0, i32 0
  %33 = load float, ptr %32, align 4
  %34 = add nsw i32 %6, %29
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.complex, ptr %1, i64 %35
  %37 = getelementptr inbounds nuw %struct.complex, ptr %36, i32 0, i32 0
  %38 = load float, ptr %37, align 4
  %39 = fadd float %33, %38
  %40 = add nsw i32 %29, %11
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.complex, ptr %2, i64 %41
  %43 = getelementptr inbounds nuw %struct.complex, ptr %42, i32 0, i32 0
  store float %39, ptr %43, align 4
  %44 = sext i32 %29 to i64
  %45 = getelementptr inbounds %struct.complex, ptr %1, i64 %44
  %46 = getelementptr inbounds nuw %struct.complex, ptr %45, i32 0, i32 1
  %47 = load float, ptr %46, align 4
  %48 = add nsw i32 %6, %29
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.complex, ptr %1, i64 %49
  %51 = getelementptr inbounds nuw %struct.complex, ptr %50, i32 0, i32 1
  %52 = load float, ptr %51, align 4
  %53 = fadd float %47, %52
  %54 = add nsw i32 %29, %11
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.complex, ptr %2, i64 %55
  %57 = getelementptr inbounds nuw %struct.complex, ptr %56, i32 0, i32 1
  store float %53, ptr %57, align 4
  %58 = load float, ptr %15, align 4
  %59 = sext i32 %29 to i64
  %60 = getelementptr inbounds %struct.complex, ptr %1, i64 %59
  %61 = getelementptr inbounds nuw %struct.complex, ptr %60, i32 0, i32 0
  %62 = load float, ptr %61, align 4
  %63 = add nsw i32 %29, %6
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.complex, ptr %1, i64 %64
  %66 = getelementptr inbounds nuw %struct.complex, ptr %65, i32 0, i32 0
  %67 = load float, ptr %66, align 4
  %68 = fsub float %62, %67
  %69 = load float, ptr %19, align 4
  %70 = sext i32 %29 to i64
  %71 = getelementptr inbounds %struct.complex, ptr %1, i64 %70
  %72 = getelementptr inbounds nuw %struct.complex, ptr %71, i32 0, i32 1
  %73 = load float, ptr %72, align 4
  %74 = add nsw i32 %29, %6
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.complex, ptr %1, i64 %75
  %77 = getelementptr inbounds nuw %struct.complex, ptr %76, i32 0, i32 1
  %78 = load float, ptr %77, align 4
  %79 = fsub float %73, %78
  %80 = fmul float %69, %79
  %81 = fneg float %80
  %82 = call float @llvm.fmuladd.f32(float %58, float %68, float %81)
  %83 = add nsw i32 %29, %10
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.complex, ptr %2, i64 %84
  %86 = getelementptr inbounds nuw %struct.complex, ptr %85, i32 0, i32 0
  store float %82, ptr %86, align 4
  %87 = load float, ptr %23, align 4
  %88 = sext i32 %29 to i64
  %89 = getelementptr inbounds %struct.complex, ptr %1, i64 %88
  %90 = getelementptr inbounds nuw %struct.complex, ptr %89, i32 0, i32 1
  %91 = load float, ptr %90, align 4
  %92 = add nsw i32 %29, %6
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.complex, ptr %1, i64 %93
  %95 = getelementptr inbounds nuw %struct.complex, ptr %94, i32 0, i32 1
  %96 = load float, ptr %95, align 4
  %97 = fsub float %91, %96
  %98 = load float, ptr %27, align 4
  %99 = sext i32 %29 to i64
  %100 = getelementptr inbounds %struct.complex, ptr %1, i64 %99
  %101 = getelementptr inbounds nuw %struct.complex, ptr %100, i32 0, i32 0
  %102 = load float, ptr %101, align 4
  %103 = add nsw i32 %29, %6
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.complex, ptr %1, i64 %104
  %106 = getelementptr inbounds nuw %struct.complex, ptr %105, i32 0, i32 0
  %107 = load float, ptr %106, align 4
  %108 = fsub float %102, %107
  %109 = fmul float %98, %108
  %110 = call float @llvm.fmuladd.f32(float %87, float %97, float %109)
  %111 = add nsw i32 %29, %10
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.complex, ptr %2, i64 %112
  %114 = getelementptr inbounds nuw %struct.complex, ptr %113, i32 0, i32 1
  store float %110, ptr %114, align 4
  %115 = add nsw i32 %29, 1
  br label %116

116:                                              ; preds = %28
  %117 = icmp sle i32 %115, %10
  br i1 %117, label %28, label %118, !llvm.loop !13

118:                                              ; preds = %116
  %.lcssa = phi i32 [ %115, %116 ]
  %119 = add nsw i32 %10, %8
  br label %120

120:                                              ; preds = %118
  %121 = icmp sle i32 %119, %6
  br i1 %121, label %9, label %122, !llvm.loop !14

122:                                              ; preds = %120
  %.lcssa.lcssa = phi i32 [ %.lcssa, %120 ]
  %.lcssa4 = phi i32 [ %119, %120 ]
  %.lcssa2 = phi i32 [ %10, %120 ]
  br label %123

123:                                              ; preds = %130, %122
  %124 = phi i32 [ %129, %130 ], [ 1, %122 ]
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.complex, ptr %1, i64 %125
  %127 = sext i32 %124 to i64
  %128 = getelementptr inbounds %struct.complex, ptr %2, i64 %127
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %126, ptr align 4 %128, i64 8, i1 false)
  %129 = add nsw i32 %124, 1
  br label %130

130:                                              ; preds = %123
  %131 = icmp sle i32 %129, %0
  br i1 %131, label %123, label %132, !llvm.loop !15

132:                                              ; preds = %130
  %.lcssa7 = phi i32 [ %129, %130 ]
  %133 = add nsw i32 %8, %8
  br label %134

134:                                              ; preds = %132
  %135 = icmp sle i32 %133, %6
  br i1 %135, label %7, label %136, !llvm.loop !16

136:                                              ; preds = %134
  %.lcssa7.lcssa = phi i32 [ %.lcssa7, %134 ]
  %.lcssa.lcssa.lcssa = phi i32 [ %.lcssa.lcssa, %134 ]
  %.lcssa4.lcssa = phi i32 [ %.lcssa4, %134 ]
  %.lcssa10 = phi i32 [ %133, %134 ]
  %.lcssa2.lcssa = phi i32 [ %.lcssa2, %134 ]
  %137 = fneg float %4
  br label %138

138:                                              ; preds = %158, %136
  %139 = phi i32 [ %159, %158 ], [ 1, %136 ]
  %140 = icmp sle i32 %139, %0
  br i1 %140, label %141, label %160

141:                                              ; preds = %138
  %142 = sext i32 %139 to i64
  %143 = getelementptr inbounds %struct.complex, ptr %1, i64 %142
  %144 = getelementptr inbounds nuw %struct.complex, ptr %143, i32 0, i32 0
  %145 = load float, ptr %144, align 4
  %146 = fmul float %4, %145
  %147 = sext i32 %139 to i64
  %148 = getelementptr inbounds %struct.complex, ptr %1, i64 %147
  %149 = getelementptr inbounds nuw %struct.complex, ptr %148, i32 0, i32 0
  store float %146, ptr %149, align 4
  %150 = sext i32 %139 to i64
  %151 = getelementptr inbounds %struct.complex, ptr %1, i64 %150
  %152 = getelementptr inbounds nuw %struct.complex, ptr %151, i32 0, i32 1
  %153 = load float, ptr %152, align 4
  %154 = fmul float %137, %153
  %155 = sext i32 %139 to i64
  %156 = getelementptr inbounds %struct.complex, ptr %1, i64 %155
  %157 = getelementptr inbounds nuw %struct.complex, ptr %156, i32 0, i32 1
  store float %154, ptr %157, align 4
  br label %158

158:                                              ; preds = %141
  %159 = add nsw i32 %139, 1
  br label %138, !llvm.loop !17

160:                                              ; preds = %138
  %.lcssa14 = phi i32 [ %139, %138 ]
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @Oscar() #0 {
  %1 = alloca i32, align 4
  call void @Exptab(i32 noundef 256, ptr noundef @e)
  store i32 5767, ptr @seed, align 4
  br label %2

2:                                                ; preds = %19, %0
  %3 = phi i32 [ %20, %19 ], [ 1, %0 ]
  %4 = icmp sle i32 %3, 256
  br i1 %4, label %5, label %21

5:                                                ; preds = %2
  %6 = load i32, ptr @seed, align 4
  store i32 %6, ptr %1, align 4
  call void @Uniform11(ptr noundef %1, ptr noundef @zr)
  %7 = load i32, ptr %1, align 4
  store i32 %7, ptr @seed, align 4
  call void @Uniform11(ptr noundef %1, ptr noundef @zi)
  %8 = load i32, ptr %1, align 4
  store i32 %8, ptr @seed, align 4
  %9 = load float, ptr @zr, align 4
  %10 = call float @llvm.fmuladd.f32(float 2.000000e+01, float %9, float -1.000000e+01)
  %11 = sext i32 %3 to i64
  %12 = getelementptr inbounds [257 x %struct.complex], ptr @z, i64 0, i64 %11
  %13 = getelementptr inbounds nuw %struct.complex, ptr %12, i32 0, i32 0
  store float %10, ptr %13, align 8
  %14 = load float, ptr @zi, align 4
  %15 = call float @llvm.fmuladd.f32(float 2.000000e+01, float %14, float -1.000000e+01)
  %16 = sext i32 %3 to i64
  %17 = getelementptr inbounds [257 x %struct.complex], ptr @z, i64 0, i64 %16
  %18 = getelementptr inbounds nuw %struct.complex, ptr %17, i32 0, i32 1
  store float %15, ptr %18, align 4
  br label %19

19:                                               ; preds = %5
  %20 = add nsw i32 %3, 1
  br label %2, !llvm.loop !18

21:                                               ; preds = %2
  %.lcssa = phi i32 [ %3, %2 ]
  br label %22

22:                                               ; preds = %26, %21
  %23 = phi i32 [ %27, %26 ], [ 1, %21 ]
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
  call void @Printcomplex(ptr noundef @z, i32 noundef 1, i32 noundef 256, i32 noundef 17)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %5, %0
  %2 = phi i32 [ %6, %5 ], [ 0, %0 ]
  %3 = icmp slt i32 %2, 10
  br i1 %3, label %4, label %7

4:                                                ; preds = %1
  call void @Oscar()
  br label %5

5:                                                ; preds = %4
  %6 = add nsw i32 %2, 1
  br label %1, !llvm.loop !20

7:                                                ; preds = %1
  %.lcssa = phi i32 [ %2, %1 ]
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
