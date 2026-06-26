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
  br label %2

2:                                                ; preds = %26, %1
  %3 = phi float [ %10, %26 ], [ %0, %1 ]
  %4 = phi i32 [ %9, %26 ], [ 1, %1 ]
  %5 = phi float [ %27, %26 ], [ 1.000000e+00, %1 ]
  %6 = phi i32 [ %28, %26 ], [ 2, %1 ]
  %7 = icmp sle i32 %6, 10
  br i1 %7, label %8, label %29

8:                                                ; preds = %2
  %9 = mul nsw i32 %4, %6
  %10 = fmul float %3, %0
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
  %19 = fadd float %5, %18
  br label %24

20:                                               ; preds = %13
  %21 = sitofp i32 %9 to float
  %22 = fdiv float %10, %21
  %23 = fsub float %5, %22
  br label %24

24:                                               ; preds = %20, %16
  %25 = phi float [ %23, %20 ], [ %19, %16 ]
  br label %26

26:                                               ; preds = %24, %8
  %27 = phi float [ %25, %24 ], [ %5, %8 ]
  %28 = add nsw i32 %6, 1
  br label %2, !llvm.loop !7

29:                                               ; preds = %2
  ret float %5
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
  %7 = phi i32 [ %1, %5 ], [ %0, %4 ]
  ret i32 %7
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Printcomplex(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  br label %6

6:                                                ; preds = %6, %4
  %7 = phi i32 [ %26, %6 ], [ %1, %4 ]
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds %struct.complex, ptr %0, i64 %8
  %10 = load float, ptr %9, align 4
  %11 = fpext float %10 to double
  %12 = getelementptr inbounds nuw %struct.complex, ptr %9, i32 0, i32 1
  %13 = load float, ptr %12, align 4
  %14 = fpext float %13 to double
  %15 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, double noundef %11, double noundef %14)
  %16 = add nsw i32 %7, %3
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.complex, ptr %0, i64 %17
  %19 = load float, ptr %18, align 4
  %20 = fpext float %19 to double
  %21 = getelementptr inbounds nuw %struct.complex, ptr %18, i32 0, i32 1
  %22 = load float, ptr %21, align 4
  %23 = fpext float %22 to double
  %24 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, double noundef %20, double noundef %23)
  %25 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %26 = add nsw i32 %16, %3
  %27 = icmp sle i32 %26, %2
  br i1 %27, label %6, label %28, !llvm.loop !9

28:                                               ; preds = %6
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
  %7 = sitofp i32 %6 to float
  %8 = fdiv float %7, 8.192000e+03
  store float %8, ptr %1, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Exptab(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca [26 x float], align 16
  br label %4

4:                                                ; preds = %8, %2
  %5 = phi float [ %15, %8 ], [ 4.000000e+00, %2 ]
  %6 = phi i32 [ %16, %8 ], [ 1, %2 ]
  %7 = icmp sle i32 %6, 25
  br i1 %7, label %8, label %17

8:                                                ; preds = %4
  %9 = fdiv float f0x40490FDB, %5
  %10 = call float @Cos(float noundef %9)
  %11 = fmul float 2.000000e+00, %10
  %12 = fdiv float 1.000000e+00, %11
  %13 = sext i32 %6 to i64
  %14 = getelementptr inbounds [26 x float], ptr %3, i64 0, i64 %13
  store float %12, ptr %14, align 4
  %15 = fadd float %5, %5
  %16 = add nsw i32 %6, 1
  br label %4, !llvm.loop !10

17:                                               ; preds = %4
  %18 = sdiv i32 %0, 2
  %19 = sdiv i32 %18, 2
  %20 = getelementptr inbounds %struct.complex, ptr %1, i64 1
  store float 1.000000e+00, ptr %20, align 4
  %21 = getelementptr inbounds nuw %struct.complex, ptr %20, i32 0, i32 1
  store float 0.000000e+00, ptr %21, align 4
  %22 = add nsw i32 %19, 1
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.complex, ptr %1, i64 %23
  store float 0.000000e+00, ptr %24, align 4
  %25 = getelementptr inbounds nuw %struct.complex, ptr %24, i32 0, i32 1
  store float 1.000000e+00, ptr %25, align 4
  %26 = add nsw i32 %18, 1
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.complex, ptr %1, i64 %27
  store float -1.000000e+00, ptr %28, align 4
  %29 = getelementptr inbounds nuw %struct.complex, ptr %28, i32 0, i32 1
  store float 0.000000e+00, ptr %29, align 4
  br label %30

30:                                               ; preds = %81, %17
  %.03 = phi i32 [ 1, %17 ], [ %83, %81 ]
  %.0 = phi i32 [ %19, %17 ], [ %34, %81 ]
  %31 = phi ptr [ %1, %81 ], [ %1, %17 ]
  %32 = phi i32 [ %83, %81 ], [ 1, %17 ]
  %33 = phi i32 [ %34, %81 ], [ %19, %17 ]
  %34 = sdiv i32 %33, 2
  %.phi.trans.insert = sext i32 %32 to i64
  %.phi.trans.insert1 = getelementptr inbounds [26 x float], ptr %3, i64 0, i64 %.phi.trans.insert
  %.pre = load float, ptr %.phi.trans.insert1, align 4
  br label %35

35:                                               ; preds = %35, %30
  %.02 = phi i32 [ %34, %30 ], [ %79, %35 ]
  %36 = phi i32 [ %34, %35 ], [ %34, %30 ]
  %37 = phi i32 [ %79, %35 ], [ %34, %30 ]
  %38 = phi ptr [ %1, %35 ], [ %31, %30 ]
  %39 = phi float [ %60, %35 ], [ %.pre, %30 ]
  %40 = phi i32 [ %.03, %35 ], [ %32, %30 ]
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [26 x float], ptr %3, i64 0, i64 %41
  %43 = add nsw i32 %37, %36
  %44 = add nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.complex, ptr %38, i64 %45
  %47 = load float, ptr %46, align 4
  %48 = sub nsw i32 %37, %36
  %49 = add nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.complex, ptr %38, i64 %50
  %52 = load float, ptr %51, align 4
  %53 = fadd float %47, %52
  %54 = fmul float %39, %53
  %55 = add nsw i32 %37, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.complex, ptr %38, i64 %56
  store float %54, ptr %57, align 4
  %58 = sext i32 %.03 to i64
  %59 = getelementptr inbounds [26 x float], ptr %3, i64 0, i64 %58
  %60 = load float, ptr %59, align 4
  %61 = add nsw i32 %.02, %34
  %62 = add nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.complex, ptr %1, i64 %63
  %65 = getelementptr inbounds nuw %struct.complex, ptr %64, i32 0, i32 1
  %66 = load float, ptr %65, align 4
  %67 = sub nsw i32 %.02, %34
  %68 = add nsw i32 %67, 1
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.complex, ptr %1, i64 %69
  %71 = getelementptr inbounds nuw %struct.complex, ptr %70, i32 0, i32 1
  %72 = load float, ptr %71, align 4
  %73 = fadd float %66, %72
  %74 = fmul float %60, %73
  %75 = add nsw i32 %.02, 1
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.complex, ptr %1, i64 %76
  %78 = getelementptr inbounds nuw %struct.complex, ptr %77, i32 0, i32 1
  store float %74, ptr %78, align 4
  %79 = add nsw i32 %.02, %.0
  %80 = icmp sle i32 %79, %18
  br i1 %80, label %35, label %81, !llvm.loop !11

81:                                               ; preds = %35
  %82 = add nsw i32 %.03, 1
  %83 = call i32 @Min0(i32 noundef %82, i32 noundef 25)
  %84 = icmp sgt i32 %34, 1
  br i1 %84, label %30, label %85, !llvm.loop !12

85:                                               ; preds = %81
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Fft(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, float noundef %4) #0 {
  %6 = sdiv i32 %0, 2
  br label %7

7:                                                ; preds = %91, %5
  %.0 = phi i32 [ 1, %5 ], [ %92, %91 ]
  %8 = phi ptr [ %2, %91 ], [ %2, %5 ]
  %9 = phi i32 [ %6, %91 ], [ %6, %5 ]
  %10 = phi ptr [ %1, %91 ], [ %1, %5 ]
  %11 = phi i32 [ %92, %91 ], [ 1, %5 ]
  br label %12

12:                                               ; preds = %80, %7
  %.03 = phi i32 [ 1, %7 ], [ %78, %80 ]
  %.02 = phi i32 [ %11, %7 ], [ %81, %80 ]
  %.01 = phi i32 [ 0, %7 ], [ %.02, %80 ]
  %13 = phi i32 [ %.02, %80 ], [ 0, %7 ]
  %14 = phi ptr [ %2, %80 ], [ %8, %7 ]
  %15 = phi i32 [ %6, %80 ], [ %9, %7 ]
  %16 = phi i32 [ %78, %80 ], [ 1, %7 ]
  %17 = phi ptr [ %1, %80 ], [ %10, %7 ]
  br label %18

18:                                               ; preds = %18, %12
  %.1 = phi i32 [ %.03, %12 ], [ %78, %18 ]
  %19 = phi i32 [ %.01, %18 ], [ %13, %12 ]
  %20 = phi ptr [ %2, %18 ], [ %14, %12 ]
  %21 = phi i32 [ %6, %18 ], [ %15, %12 ]
  %22 = phi i32 [ %78, %18 ], [ %16, %12 ]
  %23 = phi ptr [ %1, %18 ], [ %17, %12 ]
  %24 = sext i32 %22 to i64
  %25 = getelementptr inbounds %struct.complex, ptr %23, i64 %24
  %26 = load float, ptr %25, align 4
  %27 = add nsw i32 %21, %22
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.complex, ptr %23, i64 %28
  %30 = load float, ptr %29, align 4
  %31 = fadd float %26, %30
  %32 = add nsw i32 %22, %19
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.complex, ptr %20, i64 %33
  store float %31, ptr %34, align 4
  %35 = sext i32 %.1 to i64
  %36 = getelementptr inbounds %struct.complex, ptr %1, i64 %35
  %37 = getelementptr inbounds nuw %struct.complex, ptr %36, i32 0, i32 1
  %38 = load float, ptr %37, align 4
  %39 = add nsw i32 %6, %.1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.complex, ptr %1, i64 %40
  %42 = getelementptr inbounds nuw %struct.complex, ptr %41, i32 0, i32 1
  %43 = load float, ptr %42, align 4
  %44 = fadd float %38, %43
  %45 = add nsw i32 %.1, %.01
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.complex, ptr %2, i64 %46
  %48 = getelementptr inbounds nuw %struct.complex, ptr %47, i32 0, i32 1
  store float %44, ptr %48, align 4
  %49 = add nsw i32 %.01, 1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.complex, ptr %3, i64 %50
  %52 = load float, ptr %51, align 4
  %53 = load float, ptr %36, align 4
  %54 = load float, ptr %41, align 4
  %55 = fsub float %53, %54
  %56 = getelementptr inbounds nuw %struct.complex, ptr %51, i32 0, i32 1
  %57 = load float, ptr %56, align 4
  %58 = load float, ptr %37, align 4
  %59 = load float, ptr %42, align 4
  %60 = fsub float %58, %59
  %61 = fmul float %57, %60
  %62 = fneg float %61
  %63 = call float @llvm.fmuladd.f32(float %52, float %55, float %62)
  %64 = add nsw i32 %.1, %.02
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.complex, ptr %2, i64 %65
  store float %63, ptr %66, align 4
  %67 = load float, ptr %51, align 4
  %68 = load float, ptr %37, align 4
  %69 = load float, ptr %42, align 4
  %70 = fsub float %68, %69
  %71 = load float, ptr %56, align 4
  %72 = load float, ptr %36, align 4
  %73 = load float, ptr %41, align 4
  %74 = fsub float %72, %73
  %75 = fmul float %71, %74
  %76 = call float @llvm.fmuladd.f32(float %67, float %70, float %75)
  %77 = getelementptr inbounds nuw %struct.complex, ptr %66, i32 0, i32 1
  store float %76, ptr %77, align 4
  %78 = add nsw i32 %.1, 1
  %79 = icmp sle i32 %78, %.02
  br i1 %79, label %18, label %80, !llvm.loop !13

80:                                               ; preds = %18
  %81 = add nsw i32 %.02, %.0
  %82 = icmp sle i32 %81, %6
  br i1 %82, label %12, label %83, !llvm.loop !14

83:                                               ; preds = %80
  br label %84

84:                                               ; preds = %84, %83
  %85 = phi i32 [ %89, %84 ], [ 1, %83 ]
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.complex, ptr %1, i64 %86
  %88 = getelementptr inbounds %struct.complex, ptr %2, i64 %86
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %87, ptr align 4 %88, i64 8, i1 false)
  %89 = add nsw i32 %85, 1
  %90 = icmp sle i32 %89, %0
  br i1 %90, label %84, label %91, !llvm.loop !15

91:                                               ; preds = %84
  %92 = add nsw i32 %.0, %.0
  %93 = icmp sle i32 %92, %6
  br i1 %93, label %7, label %94, !llvm.loop !16

94:                                               ; preds = %91
  br label %95

95:                                               ; preds = %98, %94
  %96 = phi i32 [ %107, %98 ], [ 1, %94 ]
  %97 = icmp sle i32 %96, %0
  br i1 %97, label %98, label %108

98:                                               ; preds = %95
  %99 = sext i32 %96 to i64
  %100 = getelementptr inbounds %struct.complex, ptr %1, i64 %99
  %101 = load float, ptr %100, align 4
  %102 = fmul float %4, %101
  store float %102, ptr %100, align 4
  %103 = fneg float %4
  %104 = getelementptr inbounds nuw %struct.complex, ptr %100, i32 0, i32 1
  %105 = load float, ptr %104, align 4
  %106 = fmul float %103, %105
  store float %106, ptr %104, align 4
  %107 = add nsw i32 %96, 1
  br label %95, !llvm.loop !17

108:                                              ; preds = %95
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

2:                                                ; preds = %6, %0
  %3 = phi i32 [ %8, %6 ], [ 5767, %0 ]
  %4 = phi i32 [ %16, %6 ], [ 1, %0 ]
  %5 = icmp sle i32 %4, 256
  br i1 %5, label %6, label %17

6:                                                ; preds = %2
  store i32 %3, ptr %1, align 4
  call void @Uniform11(ptr noundef %1, ptr noundef @zr)
  %7 = load i32, ptr %1, align 4
  store i32 %7, ptr @seed, align 4
  call void @Uniform11(ptr noundef %1, ptr noundef @zi)
  %8 = load i32, ptr %1, align 4
  store i32 %8, ptr @seed, align 4
  %9 = load float, ptr @zr, align 4
  %10 = call float @llvm.fmuladd.f32(float 2.000000e+01, float %9, float -1.000000e+01)
  %11 = sext i32 %4 to i64
  %12 = getelementptr inbounds [257 x %struct.complex], ptr @z, i64 0, i64 %11
  store float %10, ptr %12, align 8
  %13 = load float, ptr @zi, align 4
  %14 = call float @llvm.fmuladd.f32(float 2.000000e+01, float %13, float -1.000000e+01)
  %15 = getelementptr inbounds nuw %struct.complex, ptr %12, i32 0, i32 1
  store float %14, ptr %15, align 4
  %16 = add nsw i32 %4, 1
  br label %2, !llvm.loop !18

17:                                               ; preds = %2
  br label %18

18:                                               ; preds = %21, %17
  %19 = phi i32 [ %22, %21 ], [ 1, %17 ]
  %20 = icmp sle i32 %19, 20
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  call void @Fft(i32 noundef 256, ptr noundef @z, ptr noundef @w, ptr noundef @e, float noundef 6.250000e-02)
  %22 = add nsw i32 %19, 1
  br label %18, !llvm.loop !19

23:                                               ; preds = %18
  call void @Printcomplex(ptr noundef @z, i32 noundef 1, i32 noundef 256, i32 noundef 17)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %4, %0
  %2 = phi i32 [ %5, %4 ], [ 0, %0 ]
  %3 = icmp slt i32 %2, 10
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  call void @Oscar()
  %5 = add nsw i32 %2, 1
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
