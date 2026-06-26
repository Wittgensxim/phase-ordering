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
  %.017 = phi i32 [ 2, %1 ], [ %23, %22 ]
  %.016 = phi i32 [ 1, %1 ], [ %5, %22 ]
  %.015 = phi float [ 1.000000e+00, %1 ], [ %.1, %22 ]
  %.0 = phi float [ %0, %1 ], [ %6, %22 ]
  %3 = icmp sle i32 %.017, 10
  br i1 %3, label %4, label %24

4:                                                ; preds = %2
  %5 = mul nsw i32 %.016, %.017
  %6 = fmul float %.0, %0
  %7 = and i32 %.017, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %21

9:                                                ; preds = %4
  %10 = and i32 %.017, 3
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = sitofp i32 %5 to float
  %14 = fdiv float %6, %13
  %15 = fadd float %.015, %14
  br label %20

16:                                               ; preds = %9
  %17 = sitofp i32 %5 to float
  %18 = fdiv float %6, %17
  %19 = fsub float %.015, %18
  br label %20

20:                                               ; preds = %16, %12
  %.2 = phi float [ %15, %12 ], [ %19, %16 ]
  br label %21

21:                                               ; preds = %20, %4
  %.1 = phi float [ %.2, %20 ], [ %.015, %4 ]
  br label %22

22:                                               ; preds = %21
  %23 = add nsw i32 %.017, 1
  br label %2, !llvm.loop !7

24:                                               ; preds = %2
  ret float %.015
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
  %.048 = phi i32 [ 1, %2 ], [ %15, %14 ]
  %.0 = phi float [ 4.000000e+00, %2 ], [ %13, %14 ]
  %5 = icmp sle i32 %.048, 25
  br i1 %5, label %6, label %16

6:                                                ; preds = %4
  %7 = fdiv float f0x40490FDB, %.0
  %8 = call float @Cos(float noundef %7)
  %9 = fmul float 2.000000e+00, %8
  %10 = fdiv float 1.000000e+00, %9
  %11 = sext i32 %.048 to i64
  %12 = getelementptr inbounds [26 x float], ptr %3, i64 0, i64 %11
  store float %10, ptr %12, align 4
  %13 = fadd float %.0, %.0
  br label %14

14:                                               ; preds = %6
  %15 = add nsw i32 %.048, 1
  br label %4, !llvm.loop !10

16:                                               ; preds = %4
  %17 = sdiv i32 %0, 2
  %18 = sdiv i32 %17, 2
  %19 = getelementptr inbounds nuw %struct.complex, ptr %1, i64 1
  %20 = getelementptr inbounds nuw %struct.complex, ptr %19, i32 0, i32 0
  store float 1.000000e+00, ptr %20, align 4
  %21 = getelementptr inbounds nuw %struct.complex, ptr %1, i64 1
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

39:                                               ; preds = %90, %16
  %.047 = phi i32 [ 1, %16 ], [ %89, %90 ]
  %.045 = phi i32 [ %18, %16 ], [ %40, %90 ]
  %40 = sdiv i32 %.045, 2
  br label %41

41:                                               ; preds = %85, %39
  %.046 = phi i32 [ %40, %39 ], [ %84, %85 ]
  %42 = sext i32 %.047 to i64
  %43 = getelementptr inbounds [26 x float], ptr %3, i64 0, i64 %42
  %44 = load float, ptr %43, align 4
  %45 = add nsw i32 %.046, %40
  %46 = add nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.complex, ptr %1, i64 %47
  %49 = getelementptr inbounds nuw %struct.complex, ptr %48, i32 0, i32 0
  %50 = load float, ptr %49, align 4
  %51 = sub nsw i32 %.046, %40
  %52 = add nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.complex, ptr %1, i64 %53
  %55 = getelementptr inbounds nuw %struct.complex, ptr %54, i32 0, i32 0
  %56 = load float, ptr %55, align 4
  %57 = fadd float %50, %56
  %58 = fmul float %44, %57
  %59 = add nsw i32 %.046, 1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.complex, ptr %1, i64 %60
  %62 = getelementptr inbounds nuw %struct.complex, ptr %61, i32 0, i32 0
  store float %58, ptr %62, align 4
  %63 = sext i32 %.047 to i64
  %64 = getelementptr inbounds [26 x float], ptr %3, i64 0, i64 %63
  %65 = load float, ptr %64, align 4
  %66 = add nsw i32 %.046, %40
  %67 = add nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.complex, ptr %1, i64 %68
  %70 = getelementptr inbounds nuw %struct.complex, ptr %69, i32 0, i32 1
  %71 = load float, ptr %70, align 4
  %72 = sub nsw i32 %.046, %40
  %73 = add nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.complex, ptr %1, i64 %74
  %76 = getelementptr inbounds nuw %struct.complex, ptr %75, i32 0, i32 1
  %77 = load float, ptr %76, align 4
  %78 = fadd float %71, %77
  %79 = fmul float %65, %78
  %80 = add nsw i32 %.046, 1
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.complex, ptr %1, i64 %81
  %83 = getelementptr inbounds nuw %struct.complex, ptr %82, i32 0, i32 1
  store float %79, ptr %83, align 4
  %84 = add nsw i32 %.046, %.045
  br label %85

85:                                               ; preds = %41
  %86 = icmp sle i32 %84, %17
  br i1 %86, label %41, label %87, !llvm.loop !11

87:                                               ; preds = %85
  %88 = add nsw i32 %.047, 1
  %89 = call i32 @Min0(i32 noundef %88, i32 noundef 25)
  br label %90

90:                                               ; preds = %87
  %91 = icmp sgt i32 %40, 1
  br i1 %91, label %39, label %92, !llvm.loop !12

92:                                               ; preds = %90
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Fft(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, float noundef %4) #0 {
  %6 = sdiv i32 %0, 2
  br label %7

7:                                                ; preds = %129, %5
  %.084 = phi i32 [ 1, %5 ], [ %128, %129 ]
  br label %8

8:                                                ; preds = %116, %7
  %.086 = phi i32 [ %.084, %7 ], [ %115, %116 ]
  %.085 = phi i32 [ 0, %7 ], [ %.086, %116 ]
  %.083 = phi i32 [ 1, %7 ], [ %111, %116 ]
  br label %9

9:                                                ; preds = %112, %8
  %.1 = phi i32 [ %.083, %8 ], [ %111, %112 ]
  %10 = sext i32 %.1 to i64
  %11 = getelementptr inbounds %struct.complex, ptr %1, i64 %10
  %12 = getelementptr inbounds nuw %struct.complex, ptr %11, i32 0, i32 0
  %13 = load float, ptr %12, align 4
  %14 = add nsw i32 %6, %.1
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.complex, ptr %1, i64 %15
  %17 = getelementptr inbounds nuw %struct.complex, ptr %16, i32 0, i32 0
  %18 = load float, ptr %17, align 4
  %19 = fadd float %13, %18
  %20 = add nsw i32 %.1, %.085
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.complex, ptr %2, i64 %21
  %23 = getelementptr inbounds nuw %struct.complex, ptr %22, i32 0, i32 0
  store float %19, ptr %23, align 4
  %24 = sext i32 %.1 to i64
  %25 = getelementptr inbounds %struct.complex, ptr %1, i64 %24
  %26 = getelementptr inbounds nuw %struct.complex, ptr %25, i32 0, i32 1
  %27 = load float, ptr %26, align 4
  %28 = add nsw i32 %6, %.1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.complex, ptr %1, i64 %29
  %31 = getelementptr inbounds nuw %struct.complex, ptr %30, i32 0, i32 1
  %32 = load float, ptr %31, align 4
  %33 = fadd float %27, %32
  %34 = add nsw i32 %.1, %.085
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.complex, ptr %2, i64 %35
  %37 = getelementptr inbounds nuw %struct.complex, ptr %36, i32 0, i32 1
  store float %33, ptr %37, align 4
  %38 = add nsw i32 %.085, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.complex, ptr %3, i64 %39
  %41 = getelementptr inbounds nuw %struct.complex, ptr %40, i32 0, i32 0
  %42 = load float, ptr %41, align 4
  %43 = sext i32 %.1 to i64
  %44 = getelementptr inbounds %struct.complex, ptr %1, i64 %43
  %45 = getelementptr inbounds nuw %struct.complex, ptr %44, i32 0, i32 0
  %46 = load float, ptr %45, align 4
  %47 = add nsw i32 %.1, %6
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.complex, ptr %1, i64 %48
  %50 = getelementptr inbounds nuw %struct.complex, ptr %49, i32 0, i32 0
  %51 = load float, ptr %50, align 4
  %52 = fsub float %46, %51
  %53 = add nsw i32 %.085, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.complex, ptr %3, i64 %54
  %56 = getelementptr inbounds nuw %struct.complex, ptr %55, i32 0, i32 1
  %57 = load float, ptr %56, align 4
  %58 = sext i32 %.1 to i64
  %59 = getelementptr inbounds %struct.complex, ptr %1, i64 %58
  %60 = getelementptr inbounds nuw %struct.complex, ptr %59, i32 0, i32 1
  %61 = load float, ptr %60, align 4
  %62 = add nsw i32 %.1, %6
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.complex, ptr %1, i64 %63
  %65 = getelementptr inbounds nuw %struct.complex, ptr %64, i32 0, i32 1
  %66 = load float, ptr %65, align 4
  %67 = fsub float %61, %66
  %68 = fmul float %57, %67
  %69 = fneg float %68
  %70 = call float @llvm.fmuladd.f32(float %42, float %52, float %69)
  %71 = add nsw i32 %.1, %.086
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.complex, ptr %2, i64 %72
  %74 = getelementptr inbounds nuw %struct.complex, ptr %73, i32 0, i32 0
  store float %70, ptr %74, align 4
  %75 = add nsw i32 %.085, 1
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.complex, ptr %3, i64 %76
  %78 = getelementptr inbounds nuw %struct.complex, ptr %77, i32 0, i32 0
  %79 = load float, ptr %78, align 4
  %80 = sext i32 %.1 to i64
  %81 = getelementptr inbounds %struct.complex, ptr %1, i64 %80
  %82 = getelementptr inbounds nuw %struct.complex, ptr %81, i32 0, i32 1
  %83 = load float, ptr %82, align 4
  %84 = add nsw i32 %.1, %6
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.complex, ptr %1, i64 %85
  %87 = getelementptr inbounds nuw %struct.complex, ptr %86, i32 0, i32 1
  %88 = load float, ptr %87, align 4
  %89 = fsub float %83, %88
  %90 = add nsw i32 %.085, 1
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.complex, ptr %3, i64 %91
  %93 = getelementptr inbounds nuw %struct.complex, ptr %92, i32 0, i32 1
  %94 = load float, ptr %93, align 4
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
  %106 = call float @llvm.fmuladd.f32(float %79, float %89, float %105)
  %107 = add nsw i32 %.1, %.086
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.complex, ptr %2, i64 %108
  %110 = getelementptr inbounds nuw %struct.complex, ptr %109, i32 0, i32 1
  store float %106, ptr %110, align 4
  %111 = add nsw i32 %.1, 1
  br label %112

112:                                              ; preds = %9
  %113 = icmp sle i32 %111, %.086
  br i1 %113, label %9, label %114, !llvm.loop !13

114:                                              ; preds = %112
  %115 = add nsw i32 %.086, %.084
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
  %128 = add nsw i32 %.084, %.084
  br label %129

129:                                              ; preds = %127
  %130 = icmp sle i32 %128, %6
  br i1 %130, label %7, label %131, !llvm.loop !16

131:                                              ; preds = %129
  br label %132

132:                                              ; preds = %152, %131
  %.2 = phi i32 [ 1, %131 ], [ %153, %152 ]
  %133 = icmp sle i32 %.2, %0
  br i1 %133, label %134, label %154

134:                                              ; preds = %132
  %135 = sext i32 %.2 to i64
  %136 = getelementptr inbounds %struct.complex, ptr %1, i64 %135
  %137 = getelementptr inbounds nuw %struct.complex, ptr %136, i32 0, i32 0
  %138 = load float, ptr %137, align 4
  %139 = fmul float %4, %138
  %140 = sext i32 %.2 to i64
  %141 = getelementptr inbounds %struct.complex, ptr %1, i64 %140
  %142 = getelementptr inbounds nuw %struct.complex, ptr %141, i32 0, i32 0
  store float %139, ptr %142, align 4
  %143 = fneg float %4
  %144 = sext i32 %.2 to i64
  %145 = getelementptr inbounds %struct.complex, ptr %1, i64 %144
  %146 = getelementptr inbounds nuw %struct.complex, ptr %145, i32 0, i32 1
  %147 = load float, ptr %146, align 4
  %148 = fmul float %143, %147
  %149 = sext i32 %.2 to i64
  %150 = getelementptr inbounds %struct.complex, ptr %1, i64 %149
  %151 = getelementptr inbounds nuw %struct.complex, ptr %150, i32 0, i32 1
  store float %148, ptr %151, align 4
  br label %152

152:                                              ; preds = %134
  %153 = add nsw i32 %.2, 1
  br label %132, !llvm.loop !17

154:                                              ; preds = %132
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
