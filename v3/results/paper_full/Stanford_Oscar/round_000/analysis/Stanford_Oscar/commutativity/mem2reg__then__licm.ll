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

2:                                                ; preds = %22, %1
  %.03 = phi float [ 1.000000e+00, %1 ], [ %.1, %22 ]
  %.02 = phi i32 [ 1, %1 ], [ %5, %22 ]
  %.01 = phi i32 [ 2, %1 ], [ %23, %22 ]
  %.0 = phi float [ %0, %1 ], [ %6, %22 ]
  %3 = icmp sle i32 %.01, 10
  br i1 %3, label %4, label %24

4:                                                ; preds = %2
  %5 = mul nsw i32 %.02, %.01
  %6 = fmul float %.0, %0
  %7 = and i32 %.01, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %21

9:                                                ; preds = %4
  %10 = and i32 %.01, 3
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = sitofp i32 %5 to float
  %14 = fdiv float %6, %13
  %15 = fadd float %.03, %14
  br label %20

16:                                               ; preds = %9
  %17 = sitofp i32 %5 to float
  %18 = fdiv float %6, %17
  %19 = fsub float %.03, %18
  br label %20

20:                                               ; preds = %16, %12
  %.2 = phi float [ %15, %12 ], [ %19, %16 ]
  br label %21

21:                                               ; preds = %20, %4
  %.1 = phi float [ %.2, %20 ], [ %.03, %4 ]
  br label %22

22:                                               ; preds = %21
  %23 = add nsw i32 %.01, 1
  br label %2, !llvm.loop !7

24:                                               ; preds = %2
  %.03.lcssa = phi float [ %.03, %2 ]
  ret float %.03.lcssa
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

6:                                                ; preds = %32, %4
  %.0 = phi i32 [ %1, %4 ], [ %31, %32 ]
  %7 = sext i32 %.0 to i64
  %8 = getelementptr inbounds %struct.complex, ptr %0, i64 %7
  %9 = getelementptr inbounds nuw %struct.complex, ptr %8, i32 0, i32 0
  %10 = load float, ptr %9, align 4
  %11 = fpext float %10 to double
  %12 = sext i32 %.0 to i64
  %13 = getelementptr inbounds %struct.complex, ptr %0, i64 %12
  %14 = getelementptr inbounds nuw %struct.complex, ptr %13, i32 0, i32 1
  %15 = load float, ptr %14, align 4
  %16 = fpext float %15 to double
  %17 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, double noundef %11, double noundef %16)
  %18 = add nsw i32 %.0, %3
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.complex, ptr %0, i64 %19
  %21 = getelementptr inbounds nuw %struct.complex, ptr %20, i32 0, i32 0
  %22 = load float, ptr %21, align 4
  %23 = fpext float %22 to double
  %24 = sext i32 %18 to i64
  %25 = getelementptr inbounds %struct.complex, ptr %0, i64 %24
  %26 = getelementptr inbounds nuw %struct.complex, ptr %25, i32 0, i32 1
  %27 = load float, ptr %26, align 4
  %28 = fpext float %27 to double
  %29 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, double noundef %23, double noundef %28)
  %30 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %31 = add nsw i32 %18, %3
  br label %32

32:                                               ; preds = %6
  %33 = icmp sle i32 %31, %2
  br i1 %33, label %6, label %34, !llvm.loop !9

34:                                               ; preds = %32
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

4:                                                ; preds = %14, %2
  %.04 = phi i32 [ 1, %2 ], [ %15, %14 ]
  %.03 = phi float [ 4.000000e+00, %2 ], [ %13, %14 ]
  %5 = icmp sle i32 %.04, 25
  br i1 %5, label %6, label %16

6:                                                ; preds = %4
  %7 = fdiv float f0x40490FDB, %.03
  %8 = call float @Cos(float noundef %7)
  %9 = fmul float 2.000000e+00, %8
  %10 = fdiv float 1.000000e+00, %9
  %11 = sext i32 %.04 to i64
  %12 = getelementptr inbounds [26 x float], ptr %3, i64 0, i64 %11
  store float %10, ptr %12, align 4
  %13 = fadd float %.03, %.03
  br label %14

14:                                               ; preds = %6
  %15 = add nsw i32 %.04, 1
  br label %4, !llvm.loop !10

16:                                               ; preds = %4
  %17 = sdiv i32 %0, 2
  %18 = sdiv i32 %17, 2
  %19 = getelementptr inbounds %struct.complex, ptr %1, i64 1
  %20 = getelementptr inbounds nuw %struct.complex, ptr %19, i32 0, i32 0
  store float 1.000000e+00, ptr %20, align 4
  %21 = getelementptr inbounds %struct.complex, ptr %1, i64 1
  %22 = getelementptr inbounds nuw %struct.complex, ptr %21, i32 0, i32 1
  store float 0.000000e+00, ptr %22, align 4
  %23 = add nsw i32 %18, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.complex, ptr %1, i64 %24
  %26 = getelementptr inbounds nuw %struct.complex, ptr %25, i32 0, i32 0
  store float 0.000000e+00, ptr %26, align 4
  %27 = add nsw i32 %18, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.complex, ptr %1, i64 %28
  %30 = getelementptr inbounds nuw %struct.complex, ptr %29, i32 0, i32 1
  store float 1.000000e+00, ptr %30, align 4
  %31 = add nsw i32 %17, 1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.complex, ptr %1, i64 %32
  %34 = getelementptr inbounds nuw %struct.complex, ptr %33, i32 0, i32 0
  store float -1.000000e+00, ptr %34, align 4
  %35 = add nsw i32 %17, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.complex, ptr %1, i64 %36
  %38 = getelementptr inbounds nuw %struct.complex, ptr %37, i32 0, i32 1
  store float 0.000000e+00, ptr %38, align 4
  br label %39

39:                                               ; preds = %82, %16
  %.02 = phi i32 [ 1, %16 ], [ %81, %82 ]
  %.0 = phi i32 [ %18, %16 ], [ %40, %82 ]
  %40 = sdiv i32 %.0, 2
  %41 = sext i32 %.02 to i64
  %42 = getelementptr inbounds [26 x float], ptr %3, i64 0, i64 %41
  %43 = load float, ptr %42, align 4
  %invariant.op = add i32 %40, 1
  %invariant.op5 = sub i32 1, %40
  %44 = sext i32 %.02 to i64
  %45 = getelementptr inbounds [26 x float], ptr %3, i64 0, i64 %44
  %46 = load float, ptr %45, align 4
  %invariant.op7 = add i32 %40, 1
  %invariant.op9 = sub i32 1, %40
  br label %47

47:                                               ; preds = %77, %39
  %.01 = phi i32 [ %40, %39 ], [ %76, %77 ]
  %.reass = add i32 %.01, %invariant.op
  %48 = sext i32 %.reass to i64
  %49 = getelementptr inbounds %struct.complex, ptr %1, i64 %48
  %50 = getelementptr inbounds nuw %struct.complex, ptr %49, i32 0, i32 0
  %51 = load float, ptr %50, align 4
  %.reass6 = add i32 %.01, %invariant.op5
  %52 = sext i32 %.reass6 to i64
  %53 = getelementptr inbounds %struct.complex, ptr %1, i64 %52
  %54 = getelementptr inbounds nuw %struct.complex, ptr %53, i32 0, i32 0
  %55 = load float, ptr %54, align 4
  %56 = fadd float %51, %55
  %57 = fmul float %43, %56
  %58 = add nsw i32 %.01, 1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.complex, ptr %1, i64 %59
  %61 = getelementptr inbounds nuw %struct.complex, ptr %60, i32 0, i32 0
  store float %57, ptr %61, align 4
  %.reass8 = add i32 %.01, %invariant.op7
  %62 = sext i32 %.reass8 to i64
  %63 = getelementptr inbounds %struct.complex, ptr %1, i64 %62
  %64 = getelementptr inbounds nuw %struct.complex, ptr %63, i32 0, i32 1
  %65 = load float, ptr %64, align 4
  %.reass10 = add i32 %.01, %invariant.op9
  %66 = sext i32 %.reass10 to i64
  %67 = getelementptr inbounds %struct.complex, ptr %1, i64 %66
  %68 = getelementptr inbounds nuw %struct.complex, ptr %67, i32 0, i32 1
  %69 = load float, ptr %68, align 4
  %70 = fadd float %65, %69
  %71 = fmul float %46, %70
  %72 = add nsw i32 %.01, 1
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.complex, ptr %1, i64 %73
  %75 = getelementptr inbounds nuw %struct.complex, ptr %74, i32 0, i32 1
  store float %71, ptr %75, align 4
  %76 = add nsw i32 %.01, %.0
  br label %77

77:                                               ; preds = %47
  %78 = icmp sle i32 %76, %17
  br i1 %78, label %47, label %79, !llvm.loop !11

79:                                               ; preds = %77
  %80 = add nsw i32 %.02, 1
  %81 = call i32 @Min0(i32 noundef %80, i32 noundef 25)
  br label %82

82:                                               ; preds = %79
  %83 = icmp sgt i32 %40, 1
  br i1 %83, label %39, label %84, !llvm.loop !12

84:                                               ; preds = %82
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Fft(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, float noundef %4) #0 {
  %6 = sdiv i32 %0, 2
  br label %7

7:                                                ; preds = %129, %5
  %.01 = phi i32 [ 1, %5 ], [ %128, %129 ]
  br label %8

8:                                                ; preds = %116, %7
  %.04 = phi i32 [ 1, %7 ], [ %.lcssa, %116 ]
  %.03 = phi i32 [ %.01, %7 ], [ %115, %116 ]
  %.02 = phi i32 [ 0, %7 ], [ %.03, %116 ]
  %9 = add nsw i32 %.02, 1
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.complex, ptr %3, i64 %10
  %12 = getelementptr inbounds nuw %struct.complex, ptr %11, i32 0, i32 0
  %13 = add nsw i32 %.02, 1
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.complex, ptr %3, i64 %14
  %16 = getelementptr inbounds nuw %struct.complex, ptr %15, i32 0, i32 1
  %17 = add nsw i32 %.02, 1
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.complex, ptr %3, i64 %18
  %20 = getelementptr inbounds nuw %struct.complex, ptr %19, i32 0, i32 0
  %21 = add nsw i32 %.02, 1
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.complex, ptr %3, i64 %22
  %24 = getelementptr inbounds nuw %struct.complex, ptr %23, i32 0, i32 1
  br label %25

25:                                               ; preds = %112, %8
  %.1 = phi i32 [ %.04, %8 ], [ %111, %112 ]
  %26 = sext i32 %.1 to i64
  %27 = getelementptr inbounds %struct.complex, ptr %1, i64 %26
  %28 = getelementptr inbounds nuw %struct.complex, ptr %27, i32 0, i32 0
  %29 = load float, ptr %28, align 4
  %30 = add nsw i32 %6, %.1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.complex, ptr %1, i64 %31
  %33 = getelementptr inbounds nuw %struct.complex, ptr %32, i32 0, i32 0
  %34 = load float, ptr %33, align 4
  %35 = fadd float %29, %34
  %36 = add nsw i32 %.1, %.02
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.complex, ptr %2, i64 %37
  %39 = getelementptr inbounds nuw %struct.complex, ptr %38, i32 0, i32 0
  store float %35, ptr %39, align 4
  %40 = sext i32 %.1 to i64
  %41 = getelementptr inbounds %struct.complex, ptr %1, i64 %40
  %42 = getelementptr inbounds nuw %struct.complex, ptr %41, i32 0, i32 1
  %43 = load float, ptr %42, align 4
  %44 = add nsw i32 %6, %.1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.complex, ptr %1, i64 %45
  %47 = getelementptr inbounds nuw %struct.complex, ptr %46, i32 0, i32 1
  %48 = load float, ptr %47, align 4
  %49 = fadd float %43, %48
  %50 = add nsw i32 %.1, %.02
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.complex, ptr %2, i64 %51
  %53 = getelementptr inbounds nuw %struct.complex, ptr %52, i32 0, i32 1
  store float %49, ptr %53, align 4
  %54 = load float, ptr %12, align 4
  %55 = sext i32 %.1 to i64
  %56 = getelementptr inbounds %struct.complex, ptr %1, i64 %55
  %57 = getelementptr inbounds nuw %struct.complex, ptr %56, i32 0, i32 0
  %58 = load float, ptr %57, align 4
  %59 = add nsw i32 %.1, %6
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.complex, ptr %1, i64 %60
  %62 = getelementptr inbounds nuw %struct.complex, ptr %61, i32 0, i32 0
  %63 = load float, ptr %62, align 4
  %64 = fsub float %58, %63
  %65 = load float, ptr %16, align 4
  %66 = sext i32 %.1 to i64
  %67 = getelementptr inbounds %struct.complex, ptr %1, i64 %66
  %68 = getelementptr inbounds nuw %struct.complex, ptr %67, i32 0, i32 1
  %69 = load float, ptr %68, align 4
  %70 = add nsw i32 %.1, %6
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.complex, ptr %1, i64 %71
  %73 = getelementptr inbounds nuw %struct.complex, ptr %72, i32 0, i32 1
  %74 = load float, ptr %73, align 4
  %75 = fsub float %69, %74
  %76 = fmul float %65, %75
  %77 = fneg float %76
  %78 = call float @llvm.fmuladd.f32(float %54, float %64, float %77)
  %79 = add nsw i32 %.1, %.03
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.complex, ptr %2, i64 %80
  %82 = getelementptr inbounds nuw %struct.complex, ptr %81, i32 0, i32 0
  store float %78, ptr %82, align 4
  %83 = load float, ptr %20, align 4
  %84 = sext i32 %.1 to i64
  %85 = getelementptr inbounds %struct.complex, ptr %1, i64 %84
  %86 = getelementptr inbounds nuw %struct.complex, ptr %85, i32 0, i32 1
  %87 = load float, ptr %86, align 4
  %88 = add nsw i32 %.1, %6
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.complex, ptr %1, i64 %89
  %91 = getelementptr inbounds nuw %struct.complex, ptr %90, i32 0, i32 1
  %92 = load float, ptr %91, align 4
  %93 = fsub float %87, %92
  %94 = load float, ptr %24, align 4
  %95 = sext i32 %.1 to i64
  %96 = getelementptr inbounds %struct.complex, ptr %1, i64 %95
  %97 = getelementptr inbounds nuw %struct.complex, ptr %96, i32 0, i32 0
  %98 = load float, ptr %97, align 4
  %99 = add nsw i32 %.1, %6
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.complex, ptr %1, i64 %100
  %102 = getelementptr inbounds nuw %struct.complex, ptr %101, i32 0, i32 0
  %103 = load float, ptr %102, align 4
  %104 = fsub float %98, %103
  %105 = fmul float %94, %104
  %106 = call float @llvm.fmuladd.f32(float %83, float %93, float %105)
  %107 = add nsw i32 %.1, %.03
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.complex, ptr %2, i64 %108
  %110 = getelementptr inbounds nuw %struct.complex, ptr %109, i32 0, i32 1
  store float %106, ptr %110, align 4
  %111 = add nsw i32 %.1, 1
  br label %112

112:                                              ; preds = %25
  %113 = icmp sle i32 %111, %.03
  br i1 %113, label %25, label %114, !llvm.loop !13

114:                                              ; preds = %112
  %.lcssa = phi i32 [ %111, %112 ]
  %115 = add nsw i32 %.03, %.01
  br label %116

116:                                              ; preds = %114
  %117 = icmp sle i32 %115, %6
  br i1 %117, label %8, label %118, !llvm.loop !14

118:                                              ; preds = %116
  br label %119

119:                                              ; preds = %125, %118
  %.0 = phi i32 [ 1, %118 ], [ %124, %125 ]
  %120 = sext i32 %.0 to i64
  %121 = getelementptr inbounds %struct.complex, ptr %1, i64 %120
  %122 = sext i32 %.0 to i64
  %123 = getelementptr inbounds %struct.complex, ptr %2, i64 %122
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %121, ptr align 4 %123, i64 8, i1 false)
  %124 = add nsw i32 %.0, 1
  br label %125

125:                                              ; preds = %119
  %126 = icmp sle i32 %124, %0
  br i1 %126, label %119, label %127, !llvm.loop !15

127:                                              ; preds = %125
  %128 = add nsw i32 %.01, %.01
  br label %129

129:                                              ; preds = %127
  %130 = icmp sle i32 %128, %6
  br i1 %130, label %7, label %131, !llvm.loop !16

131:                                              ; preds = %129
  %132 = fneg float %4
  br label %133

133:                                              ; preds = %152, %131
  %.2 = phi i32 [ 1, %131 ], [ %153, %152 ]
  %134 = icmp sle i32 %.2, %0
  br i1 %134, label %135, label %154

135:                                              ; preds = %133
  %136 = sext i32 %.2 to i64
  %137 = getelementptr inbounds %struct.complex, ptr %1, i64 %136
  %138 = getelementptr inbounds nuw %struct.complex, ptr %137, i32 0, i32 0
  %139 = load float, ptr %138, align 4
  %140 = fmul float %4, %139
  %141 = sext i32 %.2 to i64
  %142 = getelementptr inbounds %struct.complex, ptr %1, i64 %141
  %143 = getelementptr inbounds nuw %struct.complex, ptr %142, i32 0, i32 0
  store float %140, ptr %143, align 4
  %144 = sext i32 %.2 to i64
  %145 = getelementptr inbounds %struct.complex, ptr %1, i64 %144
  %146 = getelementptr inbounds nuw %struct.complex, ptr %145, i32 0, i32 1
  %147 = load float, ptr %146, align 4
  %148 = fmul float %132, %147
  %149 = sext i32 %.2 to i64
  %150 = getelementptr inbounds %struct.complex, ptr %1, i64 %149
  %151 = getelementptr inbounds nuw %struct.complex, ptr %150, i32 0, i32 1
  store float %148, ptr %151, align 4
  br label %152

152:                                              ; preds = %135
  %153 = add nsw i32 %.2, 1
  br label %133, !llvm.loop !17

154:                                              ; preds = %133
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

2:                                                ; preds = %18, %0
  %.0 = phi i32 [ 1, %0 ], [ %19, %18 ]
  %3 = icmp sle i32 %.0, 256
  br i1 %3, label %4, label %20

4:                                                ; preds = %2
  %5 = load i32, ptr @seed, align 4
  store i32 %5, ptr %1, align 4
  call void @Uniform11(ptr noundef %1, ptr noundef @zr)
  %6 = load i32, ptr %1, align 4
  store i32 %6, ptr @seed, align 4
  call void @Uniform11(ptr noundef %1, ptr noundef @zi)
  %7 = load i32, ptr %1, align 4
  store i32 %7, ptr @seed, align 4
  %8 = load float, ptr @zr, align 4
  %9 = call float @llvm.fmuladd.f32(float 2.000000e+01, float %8, float -1.000000e+01)
  %10 = sext i32 %.0 to i64
  %11 = getelementptr inbounds [257 x %struct.complex], ptr @z, i64 0, i64 %10
  %12 = getelementptr inbounds nuw %struct.complex, ptr %11, i32 0, i32 0
  store float %9, ptr %12, align 8
  %13 = load float, ptr @zi, align 4
  %14 = call float @llvm.fmuladd.f32(float 2.000000e+01, float %13, float -1.000000e+01)
  %15 = sext i32 %.0 to i64
  %16 = getelementptr inbounds [257 x %struct.complex], ptr @z, i64 0, i64 %15
  %17 = getelementptr inbounds nuw %struct.complex, ptr %16, i32 0, i32 1
  store float %14, ptr %17, align 4
  br label %18

18:                                               ; preds = %4
  %19 = add nsw i32 %.0, 1
  br label %2, !llvm.loop !18

20:                                               ; preds = %2
  br label %21

21:                                               ; preds = %24, %20
  %.1 = phi i32 [ 1, %20 ], [ %25, %24 ]
  %22 = icmp sle i32 %.1, 20
  br i1 %22, label %23, label %26

23:                                               ; preds = %21
  call void @Fft(i32 noundef 256, ptr noundef @z, ptr noundef @w, ptr noundef @e, float noundef 6.250000e-02)
  br label %24

24:                                               ; preds = %23
  %25 = add nsw i32 %.1, 1
  br label %21, !llvm.loop !19

26:                                               ; preds = %21
  call void @Printcomplex(ptr noundef @z, i32 noundef 1, i32 noundef 256, i32 noundef 17)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %4, %0
  %.0 = phi i32 [ 0, %0 ], [ %5, %4 ]
  %2 = icmp slt i32 %.0, 10
  br i1 %2, label %3, label %6

3:                                                ; preds = %1
  call void @Oscar()
  br label %4

4:                                                ; preds = %3
  %5 = add nsw i32 %.0, 1
  br label %1, !llvm.loop !20

6:                                                ; preds = %1
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
