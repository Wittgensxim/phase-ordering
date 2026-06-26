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

2:                                                ; preds = %20, %1
  %.017 = phi i32 [ 2, %1 ], [ %21, %20 ]
  %.016 = phi i32 [ 1, %1 ], [ %5, %20 ]
  %.015 = phi float [ 1.000000e+00, %1 ], [ %.1, %20 ]
  %.0 = phi float [ %0, %1 ], [ %6, %20 ]
  %3 = icmp sle i32 %.017, 10
  br i1 %3, label %4, label %22

4:                                                ; preds = %2
  %5 = mul nsw i32 %.016, %.017
  %6 = fmul float %.0, %0
  %7 = and i32 %.017, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %20

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

20:                                               ; preds = %4, %16, %12
  %.1 = phi float [ %.015, %4 ], [ %15, %12 ], [ %19, %16 ]
  %21 = add nsw i32 %.017, 1
  br label %2, !llvm.loop !7

22:                                               ; preds = %2
  ret float %.015
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Min0(i32 noundef %0, i32 noundef %1) #0 {
  %3 = icmp slt i32 %0, %1
  %. = select i1 %3, i32 %0, i32 %1
  ret i32 %.
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Printcomplex(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  br label %6

6:                                                ; preds = %6, %4
  %.0 = phi i32 [ %1, %4 ], [ %31, %6 ]
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
  %32 = icmp sle i32 %31, %2
  br i1 %32, label %6, label %33, !llvm.loop !9

33:                                               ; preds = %6
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

4:                                                ; preds = %6, %2
  %.048 = phi i32 [ 1, %2 ], [ %14, %6 ]
  %.0 = phi float [ 4.000000e+00, %2 ], [ %13, %6 ]
  %5 = icmp sle i32 %.048, 25
  br i1 %5, label %6, label %15

6:                                                ; preds = %4
  %7 = fdiv float f0x40490FDB, %.0
  %8 = call float @Cos(float noundef %7)
  %9 = fmul float 2.000000e+00, %8
  %10 = fdiv float 1.000000e+00, %9
  %11 = sext i32 %.048 to i64
  %12 = getelementptr inbounds [26 x float], ptr %3, i64 0, i64 %11
  store float %10, ptr %12, align 4
  %13 = fadd float %.0, %.0
  %14 = add nsw i32 %.048, 1
  br label %4, !llvm.loop !10

15:                                               ; preds = %4
  %16 = sdiv i32 %0, 2
  %17 = sdiv i32 %16, 2
  %18 = getelementptr inbounds %struct.complex, ptr %1, i64 1
  %19 = getelementptr inbounds nuw %struct.complex, ptr %18, i32 0, i32 0
  store float 1.000000e+00, ptr %19, align 4
  %20 = getelementptr inbounds %struct.complex, ptr %1, i64 1
  %21 = getelementptr inbounds nuw %struct.complex, ptr %20, i32 0, i32 1
  store float 0.000000e+00, ptr %21, align 4
  %22 = add nsw i32 %17, 1
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.complex, ptr %1, i64 %23
  %25 = getelementptr inbounds nuw %struct.complex, ptr %24, i32 0, i32 0
  store float 0.000000e+00, ptr %25, align 4
  %26 = add nsw i32 %17, 1
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.complex, ptr %1, i64 %27
  %29 = getelementptr inbounds nuw %struct.complex, ptr %28, i32 0, i32 1
  store float 1.000000e+00, ptr %29, align 4
  %30 = add nsw i32 %16, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.complex, ptr %1, i64 %31
  %33 = getelementptr inbounds nuw %struct.complex, ptr %32, i32 0, i32 0
  store float -1.000000e+00, ptr %33, align 4
  %34 = add nsw i32 %16, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.complex, ptr %1, i64 %35
  %37 = getelementptr inbounds nuw %struct.complex, ptr %36, i32 0, i32 1
  store float 0.000000e+00, ptr %37, align 4
  br label %38

38:                                               ; preds = %85, %15
  %.047 = phi i32 [ 1, %15 ], [ %87, %85 ]
  %.045 = phi i32 [ %17, %15 ], [ %39, %85 ]
  %39 = sdiv i32 %.045, 2
  br label %40

40:                                               ; preds = %40, %38
  %.046 = phi i32 [ %39, %38 ], [ %83, %40 ]
  %41 = sext i32 %.047 to i64
  %42 = getelementptr inbounds [26 x float], ptr %3, i64 0, i64 %41
  %43 = load float, ptr %42, align 4
  %44 = add nsw i32 %.046, %39
  %45 = add nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.complex, ptr %1, i64 %46
  %48 = getelementptr inbounds nuw %struct.complex, ptr %47, i32 0, i32 0
  %49 = load float, ptr %48, align 4
  %50 = sub nsw i32 %.046, %39
  %51 = add nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.complex, ptr %1, i64 %52
  %54 = getelementptr inbounds nuw %struct.complex, ptr %53, i32 0, i32 0
  %55 = load float, ptr %54, align 4
  %56 = fadd float %49, %55
  %57 = fmul float %43, %56
  %58 = add nsw i32 %.046, 1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.complex, ptr %1, i64 %59
  %61 = getelementptr inbounds nuw %struct.complex, ptr %60, i32 0, i32 0
  store float %57, ptr %61, align 4
  %62 = sext i32 %.047 to i64
  %63 = getelementptr inbounds [26 x float], ptr %3, i64 0, i64 %62
  %64 = load float, ptr %63, align 4
  %65 = add nsw i32 %.046, %39
  %66 = add nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.complex, ptr %1, i64 %67
  %69 = getelementptr inbounds nuw %struct.complex, ptr %68, i32 0, i32 1
  %70 = load float, ptr %69, align 4
  %71 = sub nsw i32 %.046, %39
  %72 = add nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.complex, ptr %1, i64 %73
  %75 = getelementptr inbounds nuw %struct.complex, ptr %74, i32 0, i32 1
  %76 = load float, ptr %75, align 4
  %77 = fadd float %70, %76
  %78 = fmul float %64, %77
  %79 = add nsw i32 %.046, 1
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.complex, ptr %1, i64 %80
  %82 = getelementptr inbounds nuw %struct.complex, ptr %81, i32 0, i32 1
  store float %78, ptr %82, align 4
  %83 = add nsw i32 %.046, %.045
  %84 = icmp sle i32 %83, %16
  br i1 %84, label %40, label %85, !llvm.loop !11

85:                                               ; preds = %40
  %86 = add nsw i32 %.047, 1
  %87 = call i32 @Min0(i32 noundef %86, i32 noundef 25)
  %88 = icmp sgt i32 %39, 1
  br i1 %88, label %38, label %89, !llvm.loop !12

89:                                               ; preds = %85
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Fft(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, float noundef %4) #0 {
  %6 = sdiv i32 %0, 2
  br label %7

7:                                                ; preds = %123, %5
  %.084 = phi i32 [ 1, %5 ], [ %124, %123 ]
  br label %8

8:                                                ; preds = %113, %7
  %.086 = phi i32 [ %.084, %7 ], [ %114, %113 ]
  %.085 = phi i32 [ 0, %7 ], [ %.086, %113 ]
  %.083 = phi i32 [ 1, %7 ], [ %111, %113 ]
  br label %9

9:                                                ; preds = %9, %8
  %.1 = phi i32 [ %.083, %8 ], [ %111, %9 ]
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
  %112 = icmp sle i32 %111, %.086
  br i1 %112, label %9, label %113, !llvm.loop !13

113:                                              ; preds = %9
  %114 = add nsw i32 %.086, %.084
  %115 = icmp sle i32 %114, %6
  br i1 %115, label %8, label %116, !llvm.loop !14

116:                                              ; preds = %113, %116
  %.0 = phi i32 [ %121, %116 ], [ 1, %113 ]
  %117 = sext i32 %.0 to i64
  %118 = getelementptr inbounds %struct.complex, ptr %1, i64 %117
  %119 = sext i32 %.0 to i64
  %120 = getelementptr inbounds %struct.complex, ptr %2, i64 %119
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %118, ptr align 4 %120, i64 8, i1 false)
  %121 = add nsw i32 %.0, 1
  %122 = icmp sle i32 %121, %0
  br i1 %122, label %116, label %123, !llvm.loop !15

123:                                              ; preds = %116
  %124 = add nsw i32 %.084, %.084
  %125 = icmp sle i32 %124, %6
  br i1 %125, label %7, label %126, !llvm.loop !16

126:                                              ; preds = %123, %128
  %.2 = phi i32 [ %146, %128 ], [ 1, %123 ]
  %127 = icmp sle i32 %.2, %0
  br i1 %127, label %128, label %147

128:                                              ; preds = %126
  %129 = sext i32 %.2 to i64
  %130 = getelementptr inbounds %struct.complex, ptr %1, i64 %129
  %131 = getelementptr inbounds nuw %struct.complex, ptr %130, i32 0, i32 0
  %132 = load float, ptr %131, align 4
  %133 = fmul float %4, %132
  %134 = sext i32 %.2 to i64
  %135 = getelementptr inbounds %struct.complex, ptr %1, i64 %134
  %136 = getelementptr inbounds nuw %struct.complex, ptr %135, i32 0, i32 0
  store float %133, ptr %136, align 4
  %137 = fneg float %4
  %138 = sext i32 %.2 to i64
  %139 = getelementptr inbounds %struct.complex, ptr %1, i64 %138
  %140 = getelementptr inbounds nuw %struct.complex, ptr %139, i32 0, i32 1
  %141 = load float, ptr %140, align 4
  %142 = fmul float %137, %141
  %143 = sext i32 %.2 to i64
  %144 = getelementptr inbounds %struct.complex, ptr %1, i64 %143
  %145 = getelementptr inbounds nuw %struct.complex, ptr %144, i32 0, i32 1
  store float %142, ptr %145, align 4
  %146 = add nsw i32 %.2, 1
  br label %126, !llvm.loop !17

147:                                              ; preds = %126
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

2:                                                ; preds = %4, %0
  %.0 = phi i32 [ 1, %0 ], [ %18, %4 ]
  %3 = icmp sle i32 %.0, 256
  br i1 %3, label %4, label %19

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
  %18 = add nsw i32 %.0, 1
  br label %2, !llvm.loop !18

19:                                               ; preds = %2, %21
  %.1 = phi i32 [ %22, %21 ], [ 1, %2 ]
  %20 = icmp sle i32 %.1, 20
  br i1 %20, label %21, label %23

21:                                               ; preds = %19
  call void @Fft(i32 noundef 256, ptr noundef @z, ptr noundef @w, ptr noundef @e, float noundef 6.250000e-02)
  %22 = add nsw i32 %.1, 1
  br label %19, !llvm.loop !19

23:                                               ; preds = %19
  call void @Printcomplex(ptr noundef @z, i32 noundef 1, i32 noundef 256, i32 noundef 17)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %3, %0
  %.0 = phi i32 [ 0, %0 ], [ %4, %3 ]
  %2 = icmp slt i32 %.0, 10
  br i1 %2, label %3, label %5

3:                                                ; preds = %1
  call void @Oscar()
  %4 = add nsw i32 %.0, 1
  br label %1, !llvm.loop !20

5:                                                ; preds = %1
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
