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

2:                                                ; preds = %21, %1
  %.03 = phi float [ 1.000000e+00, %1 ], [ %.1, %21 ]
  %.02 = phi i32 [ 1, %1 ], [ %4, %21 ]
  %.01 = phi i32 [ 2, %1 ], [ %22, %21 ]
  %.0 = phi float [ %0, %1 ], [ %5, %21 ]
  %exitcond = icmp ne i32 %.01, 11
  br i1 %exitcond, label %3, label %23

3:                                                ; preds = %2
  %4 = mul nsw i32 %.02, %.01
  %5 = fmul float %.0, %0
  %6 = and i32 %.01, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %20

8:                                                ; preds = %3
  %9 = and i32 %.01, 3
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %8
  %12 = sitofp i32 %4 to float
  %13 = fdiv float %5, %12
  %14 = fadd float %.03, %13
  br label %19

15:                                               ; preds = %8
  %16 = sitofp i32 %4 to float
  %17 = fdiv float %5, %16
  %18 = fsub float %.03, %17
  br label %19

19:                                               ; preds = %15, %11
  %.2 = phi float [ %14, %11 ], [ %18, %15 ]
  br label %20

20:                                               ; preds = %19, %3
  %.1 = phi float [ %.2, %19 ], [ %.03, %3 ]
  br label %21

21:                                               ; preds = %20
  %22 = add nuw nsw i32 %.01, 1
  br label %2, !llvm.loop !7

23:                                               ; preds = %2
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

4:                                                ; preds = %12, %2
  %indvars.iv = phi i64 [ %indvars.iv.next, %12 ], [ 1, %2 ]
  %.03 = phi float [ 4.000000e+00, %2 ], [ %11, %12 ]
  %exitcond = icmp ne i64 %indvars.iv, 26
  br i1 %exitcond, label %5, label %13

5:                                                ; preds = %4
  %6 = fdiv float f0x40490FDB, %.03
  %7 = call float @Cos(float noundef %6)
  %8 = fmul float 2.000000e+00, %7
  %9 = fdiv float 1.000000e+00, %8
  %10 = getelementptr inbounds [26 x float], ptr %3, i64 0, i64 %indvars.iv
  store float %9, ptr %10, align 4
  %11 = fadd float %.03, %.03
  br label %12

12:                                               ; preds = %5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %4, !llvm.loop !10

13:                                               ; preds = %4
  %14 = sdiv i32 %0, 2
  %15 = sdiv i32 %14, 2
  %16 = getelementptr inbounds %struct.complex, ptr %1, i64 1
  %17 = getelementptr inbounds nuw %struct.complex, ptr %16, i32 0, i32 0
  store float 1.000000e+00, ptr %17, align 4
  %18 = getelementptr inbounds %struct.complex, ptr %1, i64 1
  %19 = getelementptr inbounds nuw %struct.complex, ptr %18, i32 0, i32 1
  store float 0.000000e+00, ptr %19, align 4
  %20 = add nsw i32 %15, 1
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.complex, ptr %1, i64 %21
  %23 = getelementptr inbounds nuw %struct.complex, ptr %22, i32 0, i32 0
  store float 0.000000e+00, ptr %23, align 4
  %24 = add nsw i32 %15, 1
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.complex, ptr %1, i64 %25
  %27 = getelementptr inbounds nuw %struct.complex, ptr %26, i32 0, i32 1
  store float 1.000000e+00, ptr %27, align 4
  %28 = add nsw i32 %14, 1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.complex, ptr %1, i64 %29
  %31 = getelementptr inbounds nuw %struct.complex, ptr %30, i32 0, i32 0
  store float -1.000000e+00, ptr %31, align 4
  %32 = add nsw i32 %14, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.complex, ptr %1, i64 %33
  %35 = getelementptr inbounds nuw %struct.complex, ptr %34, i32 0, i32 1
  store float 0.000000e+00, ptr %35, align 4
  %36 = sext i32 %14 to i64
  br label %37

37:                                               ; preds = %84, %13
  %.02 = phi i32 [ 1, %13 ], [ %83, %84 ]
  %.0 = phi i32 [ %15, %13 ], [ %38, %84 ]
  %38 = sdiv i32 %.0, 2
  %39 = sext i32 %38 to i64
  %40 = sext i32 %.0 to i64
  %41 = sext i32 %38 to i64
  %42 = sext i32 %38 to i64
  %43 = sext i32 %38 to i64
  %44 = sext i32 %38 to i64
  br label %45

45:                                               ; preds = %79, %37
  %indvars.iv6 = phi i64 [ %indvars.iv.next7, %79 ], [ %39, %37 ]
  %46 = sext i32 %.02 to i64
  %47 = getelementptr inbounds [26 x float], ptr %3, i64 0, i64 %46
  %48 = load float, ptr %47, align 4
  %49 = add nsw i64 %indvars.iv6, %41
  %50 = add nsw i64 %49, 1
  %51 = getelementptr inbounds %struct.complex, ptr %1, i64 %50
  %52 = load float, ptr %51, align 4
  %53 = sub nsw i64 %indvars.iv6, %42
  %54 = add nsw i64 %53, 1
  %55 = getelementptr inbounds %struct.complex, ptr %1, i64 %54
  %56 = load float, ptr %55, align 4
  %57 = fadd float %52, %56
  %58 = fmul float %48, %57
  %59 = add nsw i64 %indvars.iv6, 1
  %60 = getelementptr inbounds %struct.complex, ptr %1, i64 %59
  store float %58, ptr %60, align 4
  %61 = sext i32 %.02 to i64
  %62 = getelementptr inbounds [26 x float], ptr %3, i64 0, i64 %61
  %63 = load float, ptr %62, align 4
  %64 = add nsw i64 %indvars.iv6, %43
  %65 = add nsw i64 %64, 1
  %66 = getelementptr inbounds %struct.complex, ptr %1, i64 %65
  %67 = getelementptr inbounds nuw %struct.complex, ptr %66, i32 0, i32 1
  %68 = load float, ptr %67, align 4
  %69 = sub nsw i64 %indvars.iv6, %44
  %70 = add nsw i64 %69, 1
  %71 = getelementptr inbounds %struct.complex, ptr %1, i64 %70
  %72 = getelementptr inbounds nuw %struct.complex, ptr %71, i32 0, i32 1
  %73 = load float, ptr %72, align 4
  %74 = fadd float %68, %73
  %75 = fmul float %63, %74
  %76 = add nsw i64 %indvars.iv6, 1
  %77 = getelementptr inbounds %struct.complex, ptr %1, i64 %76
  %78 = getelementptr inbounds nuw %struct.complex, ptr %77, i32 0, i32 1
  store float %75, ptr %78, align 4
  %indvars.iv.next7 = add nsw i64 %indvars.iv6, %40
  br label %79

79:                                               ; preds = %45
  %80 = icmp sle i64 %indvars.iv.next7, %36
  br i1 %80, label %45, label %81, !llvm.loop !11

81:                                               ; preds = %79
  %82 = add nsw i32 %.02, 1
  %83 = call i32 @Min0(i32 noundef %82, i32 noundef 25)
  br label %84

84:                                               ; preds = %81
  %85 = icmp sgt i32 %38, 1
  br i1 %85, label %37, label %86, !llvm.loop !12

86:                                               ; preds = %84
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Fft(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, float noundef %4) #0 {
  %6 = sdiv i32 %0, 2
  %7 = sext i32 %6 to i64
  %8 = sext i32 %6 to i64
  %9 = sext i32 %6 to i64
  %10 = sext i32 %6 to i64
  %11 = sext i32 %6 to i64
  %12 = sext i32 %6 to i64
  %13 = sext i32 %6 to i64
  %smax12 = call i32 @llvm.smax.i32(i32 %0, i32 1)
  %14 = add nuw i32 %smax12, 1
  br label %15

15:                                               ; preds = %113, %5
  %.01 = phi i32 [ 1, %5 ], [ %112, %113 ]
  %16 = sext i32 %.01 to i64
  br label %17

17:                                               ; preds = %103, %15
  %indvars.iv6 = phi i64 [ %indvars.iv.next7, %103 ], [ %16, %15 ]
  %.04 = phi i32 [ 1, %15 ], [ %102, %103 ]
  %.02 = phi i32 [ 0, %15 ], [ %105, %103 ]
  %18 = sext i32 %.04 to i64
  %19 = sext i32 %.02 to i64
  %20 = sext i32 %.02 to i64
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv6, i64 %18)
  %21 = add i64 %smax, 1
  br label %22

22:                                               ; preds = %100, %17
  %indvars.iv = phi i64 [ %indvars.iv.next, %100 ], [ %18, %17 ]
  %23 = getelementptr inbounds %struct.complex, ptr %1, i64 %indvars.iv
  %24 = load float, ptr %23, align 4
  %25 = add nsw i64 %7, %indvars.iv
  %26 = getelementptr inbounds %struct.complex, ptr %1, i64 %25
  %27 = load float, ptr %26, align 4
  %28 = fadd float %24, %27
  %29 = add nsw i64 %indvars.iv, %19
  %30 = getelementptr inbounds %struct.complex, ptr %2, i64 %29
  store float %28, ptr %30, align 4
  %31 = getelementptr inbounds %struct.complex, ptr %1, i64 %indvars.iv
  %32 = getelementptr inbounds nuw %struct.complex, ptr %31, i32 0, i32 1
  %33 = load float, ptr %32, align 4
  %34 = add nsw i64 %8, %indvars.iv
  %35 = getelementptr inbounds %struct.complex, ptr %1, i64 %34
  %36 = getelementptr inbounds nuw %struct.complex, ptr %35, i32 0, i32 1
  %37 = load float, ptr %36, align 4
  %38 = fadd float %33, %37
  %39 = add nsw i64 %indvars.iv, %20
  %40 = getelementptr inbounds %struct.complex, ptr %2, i64 %39
  %41 = getelementptr inbounds nuw %struct.complex, ptr %40, i32 0, i32 1
  store float %38, ptr %41, align 4
  %42 = add nsw i32 %.02, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.complex, ptr %3, i64 %43
  %45 = getelementptr inbounds nuw %struct.complex, ptr %44, i32 0, i32 0
  %46 = load float, ptr %45, align 4
  %47 = getelementptr inbounds %struct.complex, ptr %1, i64 %indvars.iv
  %48 = load float, ptr %47, align 4
  %49 = add nsw i64 %indvars.iv, %9
  %50 = getelementptr inbounds %struct.complex, ptr %1, i64 %49
  %51 = load float, ptr %50, align 4
  %52 = fsub float %48, %51
  %53 = add nsw i32 %.02, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.complex, ptr %3, i64 %54
  %56 = getelementptr inbounds nuw %struct.complex, ptr %55, i32 0, i32 1
  %57 = load float, ptr %56, align 4
  %58 = getelementptr inbounds %struct.complex, ptr %1, i64 %indvars.iv
  %59 = getelementptr inbounds nuw %struct.complex, ptr %58, i32 0, i32 1
  %60 = load float, ptr %59, align 4
  %61 = add nsw i64 %indvars.iv, %10
  %62 = getelementptr inbounds %struct.complex, ptr %1, i64 %61
  %63 = getelementptr inbounds nuw %struct.complex, ptr %62, i32 0, i32 1
  %64 = load float, ptr %63, align 4
  %65 = fsub float %60, %64
  %66 = fmul float %57, %65
  %67 = fneg float %66
  %68 = call float @llvm.fmuladd.f32(float %46, float %52, float %67)
  %69 = add nsw i64 %indvars.iv, %indvars.iv6
  %70 = getelementptr inbounds %struct.complex, ptr %2, i64 %69
  store float %68, ptr %70, align 4
  %71 = add nsw i32 %.02, 1
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.complex, ptr %3, i64 %72
  %74 = getelementptr inbounds nuw %struct.complex, ptr %73, i32 0, i32 0
  %75 = load float, ptr %74, align 4
  %76 = getelementptr inbounds %struct.complex, ptr %1, i64 %indvars.iv
  %77 = getelementptr inbounds nuw %struct.complex, ptr %76, i32 0, i32 1
  %78 = load float, ptr %77, align 4
  %79 = add nsw i64 %indvars.iv, %11
  %80 = getelementptr inbounds %struct.complex, ptr %1, i64 %79
  %81 = getelementptr inbounds nuw %struct.complex, ptr %80, i32 0, i32 1
  %82 = load float, ptr %81, align 4
  %83 = fsub float %78, %82
  %84 = add nsw i32 %.02, 1
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.complex, ptr %3, i64 %85
  %87 = getelementptr inbounds nuw %struct.complex, ptr %86, i32 0, i32 1
  %88 = load float, ptr %87, align 4
  %89 = getelementptr inbounds %struct.complex, ptr %1, i64 %indvars.iv
  %90 = load float, ptr %89, align 4
  %91 = add nsw i64 %indvars.iv, %12
  %92 = getelementptr inbounds %struct.complex, ptr %1, i64 %91
  %93 = load float, ptr %92, align 4
  %94 = fsub float %90, %93
  %95 = fmul float %88, %94
  %96 = call float @llvm.fmuladd.f32(float %75, float %83, float %95)
  %97 = add nsw i64 %indvars.iv, %indvars.iv6
  %98 = getelementptr inbounds %struct.complex, ptr %2, i64 %97
  %99 = getelementptr inbounds nuw %struct.complex, ptr %98, i32 0, i32 1
  store float %96, ptr %99, align 4
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %100

100:                                              ; preds = %22
  %exitcond = icmp ne i64 %indvars.iv.next, %21
  br i1 %exitcond, label %22, label %101, !llvm.loop !13

101:                                              ; preds = %100
  %.lcssa.wide = phi i64 [ %indvars.iv.next, %100 ]
  %102 = trunc nsw i64 %.lcssa.wide to i32
  %indvars.iv.next7 = add nsw i64 %indvars.iv6, %16
  br label %103

103:                                              ; preds = %101
  %104 = icmp sle i64 %indvars.iv.next7, %13
  %105 = trunc nsw i64 %indvars.iv6 to i32
  br i1 %104, label %17, label %106, !llvm.loop !14

106:                                              ; preds = %103
  %wide.trip.count = zext i32 %14 to i64
  br label %107

107:                                              ; preds = %110, %106
  %indvars.iv9 = phi i64 [ %indvars.iv.next10, %110 ], [ 1, %106 ]
  %108 = getelementptr inbounds %struct.complex, ptr %1, i64 %indvars.iv9
  %109 = getelementptr inbounds %struct.complex, ptr %2, i64 %indvars.iv9
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %108, ptr align 4 %109, i64 8, i1 false)
  %indvars.iv.next10 = add nuw nsw i64 %indvars.iv9, 1
  br label %110

110:                                              ; preds = %107
  %exitcond13 = icmp ne i64 %indvars.iv.next10, %wide.trip.count
  br i1 %exitcond13, label %107, label %111, !llvm.loop !15

111:                                              ; preds = %110
  %112 = add nsw i32 %.01, %.01
  br label %113

113:                                              ; preds = %111
  %114 = icmp sle i32 %112, %6
  br i1 %114, label %15, label %115, !llvm.loop !16

115:                                              ; preds = %113
  %smax17 = call i32 @llvm.smax.i32(i32 %0, i32 0)
  %116 = add nuw i32 %smax17, 1
  %wide.trip.count18 = zext i32 %116 to i64
  br label %117

117:                                              ; preds = %130, %115
  %indvars.iv14 = phi i64 [ %indvars.iv.next15, %130 ], [ 1, %115 ]
  %exitcond19 = icmp ne i64 %indvars.iv14, %wide.trip.count18
  br i1 %exitcond19, label %118, label %131

118:                                              ; preds = %117
  %119 = getelementptr inbounds %struct.complex, ptr %1, i64 %indvars.iv14
  %120 = load float, ptr %119, align 4
  %121 = fmul float %4, %120
  %122 = getelementptr inbounds %struct.complex, ptr %1, i64 %indvars.iv14
  store float %121, ptr %122, align 4
  %123 = fneg float %4
  %124 = getelementptr inbounds %struct.complex, ptr %1, i64 %indvars.iv14
  %125 = getelementptr inbounds nuw %struct.complex, ptr %124, i32 0, i32 1
  %126 = load float, ptr %125, align 4
  %127 = fmul float %123, %126
  %128 = getelementptr inbounds %struct.complex, ptr %1, i64 %indvars.iv14
  %129 = getelementptr inbounds nuw %struct.complex, ptr %128, i32 0, i32 1
  store float %127, ptr %129, align 4
  br label %130

130:                                              ; preds = %118
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14, 1
  br label %117, !llvm.loop !17

131:                                              ; preds = %117
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

2:                                                ; preds = %14, %0
  %indvars.iv = phi i64 [ %indvars.iv.next, %14 ], [ 1, %0 ]
  %exitcond = icmp ne i64 %indvars.iv, 257
  br i1 %exitcond, label %3, label %15

3:                                                ; preds = %2
  %4 = load i32, ptr @seed, align 4
  store i32 %4, ptr %1, align 4
  call void @Uniform11(ptr noundef %1, ptr noundef @zr)
  %5 = load i32, ptr %1, align 4
  store i32 %5, ptr @seed, align 4
  call void @Uniform11(ptr noundef %1, ptr noundef @zi)
  %6 = load i32, ptr %1, align 4
  store i32 %6, ptr @seed, align 4
  %7 = load float, ptr @zr, align 4
  %8 = call float @llvm.fmuladd.f32(float 2.000000e+01, float %7, float -1.000000e+01)
  %9 = getelementptr inbounds [257 x %struct.complex], ptr @z, i64 0, i64 %indvars.iv
  store float %8, ptr %9, align 8
  %10 = load float, ptr @zi, align 4
  %11 = call float @llvm.fmuladd.f32(float 2.000000e+01, float %10, float -1.000000e+01)
  %12 = getelementptr inbounds [257 x %struct.complex], ptr @z, i64 0, i64 %indvars.iv
  %13 = getelementptr inbounds nuw %struct.complex, ptr %12, i32 0, i32 1
  store float %11, ptr %13, align 4
  br label %14

14:                                               ; preds = %3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %2, !llvm.loop !18

15:                                               ; preds = %2
  br label %16

16:                                               ; preds = %18, %15
  %.1 = phi i32 [ 1, %15 ], [ %19, %18 ]
  %exitcond2 = icmp ne i32 %.1, 21
  br i1 %exitcond2, label %17, label %20

17:                                               ; preds = %16
  call void @Fft(i32 noundef 256, ptr noundef @z, ptr noundef @w, ptr noundef @e, float noundef 6.250000e-02)
  br label %18

18:                                               ; preds = %17
  %19 = add nuw nsw i32 %.1, 1
  br label %16, !llvm.loop !19

20:                                               ; preds = %16
  call void @Printcomplex(ptr noundef @z, i32 noundef 1, i32 noundef 256, i32 noundef 17)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %3, %0
  %.0 = phi i32 [ 0, %0 ], [ %4, %3 ]
  %exitcond = icmp ne i32 %.0, 10
  br i1 %exitcond, label %2, label %5

2:                                                ; preds = %1
  call void @Oscar()
  br label %3

3:                                                ; preds = %2
  %4 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !20

5:                                                ; preds = %1
  ret i32 0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

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
