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

2:                                                ; preds = %28, %1
  %3 = phi float [ %27, %28 ], [ 1.000000e+00, %1 ]
  %4 = phi float [ %10, %28 ], [ %0, %1 ]
  %5 = phi i32 [ %9, %28 ], [ 1, %1 ]
  %6 = phi i32 [ %29, %28 ], [ 2, %1 ]
  %7 = icmp samesign ult i32 %6, 11
  br i1 %7, label %8, label %30

8:                                                ; preds = %2
  %9 = mul nuw nsw i32 %5, %6
  %10 = fmul float %4, %0
  %11 = and i32 %6, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %8
  %14 = and i32 %6, 2
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = uitofp nneg i32 %9 to float
  %18 = fdiv float %10, %17
  %19 = fadd float %3, %18
  br label %24

20:                                               ; preds = %13
  %21 = uitofp nneg i32 %9 to float
  %22 = fdiv float %10, %21
  %23 = fsub float %3, %22
  br label %24

24:                                               ; preds = %20, %16
  %25 = phi float [ %23, %20 ], [ %19, %16 ]
  br label %26

26:                                               ; preds = %24, %8
  %27 = phi float [ %25, %24 ], [ %3, %8 ]
  br label %28

28:                                               ; preds = %26
  %29 = add nuw nsw i32 %6, 1
  br label %2, !llvm.loop !7

30:                                               ; preds = %2
  ret float %3
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Min0(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  %5 = icmp slt i32 %0, %1
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = load i32, ptr %3, align 4
  br label %10

8:                                                ; preds = %2
  %9 = load i32, ptr %4, align 4
  br label %10

10:                                               ; preds = %8, %6
  %storemerge = phi i32 [ %9, %8 ], [ %7, %6 ]
  ret i32 %storemerge
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Printcomplex(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %putchar = call i32 @putchar(i32 10)
  br label %5

5:                                                ; preds = %28, %4
  %6 = phi i32 [ %29, %28 ], [ %1, %4 ]
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [8 x i8], ptr %0, i64 %7
  %9 = load float, ptr %8, align 4
  %10 = fpext float %9 to double
  %11 = sext i32 %6 to i64
  %12 = getelementptr inbounds [8 x i8], ptr %0, i64 %11
  %13 = getelementptr inbounds nuw i8, ptr %12, i64 4
  %14 = load float, ptr %13, align 4
  %15 = fpext float %14 to double
  %16 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %10, double noundef %15) #5
  %17 = add nsw i32 %6, %3
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [8 x i8], ptr %0, i64 %18
  %20 = load float, ptr %19, align 4
  %21 = fpext float %20 to double
  %22 = sext i32 %17 to i64
  %23 = getelementptr inbounds [8 x i8], ptr %0, i64 %22
  %24 = getelementptr inbounds nuw i8, ptr %23, i64 4
  %25 = load float, ptr %24, align 4
  %26 = fpext float %25 to double
  %27 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %21, double noundef %26) #5
  %putchar1 = call i32 @putchar(i32 10)
  br label %28

28:                                               ; preds = %5
  %29 = add nsw i32 %17, %3
  %.not = icmp sgt i32 %29, %2
  br i1 %.not, label %30, label %5, !llvm.loop !9

30:                                               ; preds = %28
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @Uniform11(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load i32, ptr %0, align 4
  %6 = mul nsw i32 %5, 4855
  %7 = add nsw i32 %6, 1731
  %8 = and i32 %7, 8191
  store i32 %8, ptr %0, align 4
  %9 = load ptr, ptr %3, align 8
  %10 = load i32, ptr %9, align 4
  %11 = sitofp i32 %10 to float
  %12 = fmul nnan float %11, f0x39000000
  %13 = load ptr, ptr %4, align 8
  store float %12, ptr %13, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Exptab(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca [26 x float], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store ptr %1, ptr %4, align 8
  br label %9

9:                                                ; preds = %20, %2
  %10 = phi float [ %21, %20 ], [ 4.000000e+00, %2 ]
  %11 = phi i32 [ %22, %20 ], [ 1, %2 ]
  %12 = icmp samesign ult i32 %11, 26
  br i1 %12, label %13, label %23

13:                                               ; preds = %9
  %14 = fdiv float f0x40490FDB, %10
  %15 = call float @Cos(float noundef %14)
  %16 = fmul float %15, 2.000000e+00
  %17 = fdiv float 1.000000e+00, %16
  %18 = zext nneg i32 %11 to i64
  %19 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %18
  store float %17, ptr %19, align 4
  br label %20

20:                                               ; preds = %13
  %21 = fadd float %10, %10
  %22 = add nuw nsw i32 %11, 1
  br label %9, !llvm.loop !10

23:                                               ; preds = %9
  %24 = load i32, ptr %3, align 4
  %25 = sdiv i32 %24, 2
  store i32 %25, ptr %8, align 4
  %26 = sdiv i32 %24, 4
  store i32 %26, ptr %7, align 4
  store i32 1, ptr %6, align 4
  %27 = load ptr, ptr %4, align 8
  %28 = getelementptr inbounds nuw i8, ptr %27, i64 8
  store float 1.000000e+00, ptr %28, align 4
  %29 = getelementptr inbounds nuw i8, ptr %27, i64 12
  store float 0.000000e+00, ptr %29, align 4
  %30 = load i32, ptr %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr [8 x i8], ptr %27, i64 %31
  %33 = getelementptr i8, ptr %32, i64 8
  store float 0.000000e+00, ptr %33, align 4
  %34 = load ptr, ptr %4, align 8
  %35 = sext i32 %30 to i64
  %36 = getelementptr [8 x i8], ptr %34, i64 %35
  %37 = getelementptr i8, ptr %36, i64 12
  store float 1.000000e+00, ptr %37, align 4
  %38 = load i32, ptr %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr [8 x i8], ptr %34, i64 %39
  %41 = getelementptr i8, ptr %40, i64 8
  store float -1.000000e+00, ptr %41, align 4
  %42 = load ptr, ptr %4, align 8
  %43 = sext i32 %38 to i64
  %44 = getelementptr [8 x i8], ptr %42, i64 %43
  %45 = getelementptr i8, ptr %44, i64 12
  store float 0.000000e+00, ptr %45, align 4
  %46 = load i32, ptr %8, align 4
  %.promoted11 = load i32, ptr %7, align 4
  %.promoted16 = load i32, ptr %6, align 4
  br label %47

47:                                               ; preds = %88, %23
  %48 = phi i32 [ %87, %88 ], [ %.promoted16, %23 ]
  %49 = phi i32 [ %50, %88 ], [ %.promoted11, %23 ]
  %50 = sdiv i32 %49, 2
  %51 = sext i32 %48 to i64
  %52 = getelementptr inbounds [4 x i8], ptr %5, i64 %51
  %53 = load float, ptr %52, align 4
  %invariant.op = add nsw i32 %50, 1
  %54 = sext i32 %48 to i64
  %55 = getelementptr inbounds [4 x i8], ptr %5, i64 %54
  %56 = load float, ptr %55, align 4
  %invariant.op5 = add nsw i32 %50, 1
  br label %57

57:                                               ; preds = %83, %47
  %58 = phi i32 [ %84, %83 ], [ %50, %47 ]
  %.reass = add i32 %58, %invariant.op
  %59 = sext i32 %.reass to i64
  %60 = getelementptr inbounds [8 x i8], ptr %42, i64 %59
  %61 = load float, ptr %60, align 4
  %reass.sub = sub i32 %58, %50
  %.reass4 = add i32 %reass.sub, 1
  %62 = sext i32 %.reass4 to i64
  %63 = getelementptr inbounds [8 x i8], ptr %42, i64 %62
  %64 = load float, ptr %63, align 4
  %65 = fadd float %61, %64
  %66 = fmul float %53, %65
  %67 = sext i32 %58 to i64
  %68 = getelementptr [8 x i8], ptr %42, i64 %67
  %69 = getelementptr i8, ptr %68, i64 8
  store float %66, ptr %69, align 4
  %.reass6 = add i32 %58, %invariant.op5
  %70 = sext i32 %.reass6 to i64
  %71 = getelementptr inbounds [8 x i8], ptr %42, i64 %70
  %72 = getelementptr inbounds nuw i8, ptr %71, i64 4
  %73 = load float, ptr %72, align 4
  %reass.sub18 = sub i32 %58, %50
  %.reass8 = add i32 %reass.sub18, 1
  %74 = sext i32 %.reass8 to i64
  %75 = getelementptr inbounds [8 x i8], ptr %42, i64 %74
  %76 = getelementptr inbounds nuw i8, ptr %75, i64 4
  %77 = load float, ptr %76, align 4
  %78 = fadd float %73, %77
  %79 = fmul float %56, %78
  %80 = sext i32 %58 to i64
  %81 = getelementptr [8 x i8], ptr %42, i64 %80
  %82 = getelementptr i8, ptr %81, i64 12
  store float %79, ptr %82, align 4
  br label %83

83:                                               ; preds = %57
  %84 = add nsw i32 %58, %49
  %.not = icmp sgt i32 %84, %46
  br i1 %.not, label %85, label %57, !llvm.loop !11

85:                                               ; preds = %83
  %86 = add nsw i32 %48, 1
  %87 = call i32 @Min0(i32 noundef %86, i32 noundef 25)
  br label %88

88:                                               ; preds = %85
  %89 = icmp sgt i32 %49, 3
  br i1 %89, label %47, label %90, !llvm.loop !12

90:                                               ; preds = %88
  store i32 %50, ptr %7, align 4
  store i32 %87, ptr %6, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Fft(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, float noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca float, align 4
  store i32 %0, ptr %6, align 4
  store ptr %1, ptr %7, align 8
  store ptr %2, ptr %8, align 8
  store float %4, ptr %9, align 4
  %10 = sdiv i32 %0, 2
  %11 = load ptr, ptr %7, align 8
  %12 = load ptr, ptr %8, align 8
  %13 = load i32, ptr %6, align 4
  br label %14

14:                                               ; preds = %126, %5
  %15 = phi i32 [ %127, %126 ], [ 1, %5 ]
  br label %16

16:                                               ; preds = %113, %14
  %.lcssa6 = phi i32 [ %111, %113 ], [ 1, %14 ]
  %17 = phi i32 [ %114, %113 ], [ %15, %14 ]
  %18 = phi i32 [ %17, %113 ], [ 0, %14 ]
  %19 = sext i32 %18 to i64
  %20 = getelementptr [8 x i8], ptr %3, i64 %19
  %21 = getelementptr i8, ptr %20, i64 8
  %22 = sext i32 %18 to i64
  %23 = getelementptr [8 x i8], ptr %3, i64 %22
  %24 = getelementptr i8, ptr %23, i64 12
  %25 = sext i32 %18 to i64
  %26 = getelementptr [8 x i8], ptr %3, i64 %25
  %27 = getelementptr i8, ptr %26, i64 8
  %28 = sext i32 %18 to i64
  %29 = getelementptr [8 x i8], ptr %3, i64 %28
  %30 = getelementptr i8, ptr %29, i64 12
  br label %31

31:                                               ; preds = %110, %16
  %32 = phi i32 [ %111, %110 ], [ %.lcssa6, %16 ]
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [8 x i8], ptr %11, i64 %33
  %35 = load float, ptr %34, align 4
  %36 = add nsw i32 %10, %32
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [8 x i8], ptr %11, i64 %37
  %39 = load float, ptr %38, align 4
  %40 = fadd float %35, %39
  %41 = add nsw i32 %32, %18
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [8 x i8], ptr %12, i64 %42
  store float %40, ptr %43, align 4
  %44 = sext i32 %32 to i64
  %45 = getelementptr inbounds [8 x i8], ptr %11, i64 %44
  %46 = getelementptr inbounds nuw i8, ptr %45, i64 4
  %47 = load float, ptr %46, align 4
  %48 = add nsw i32 %10, %32
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [8 x i8], ptr %11, i64 %49
  %51 = getelementptr inbounds nuw i8, ptr %50, i64 4
  %52 = load float, ptr %51, align 4
  %53 = fadd float %47, %52
  %54 = add nsw i32 %32, %18
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [8 x i8], ptr %12, i64 %55
  %57 = getelementptr inbounds nuw i8, ptr %56, i64 4
  store float %53, ptr %57, align 4
  %58 = load float, ptr %21, align 4
  %59 = sext i32 %32 to i64
  %60 = getelementptr inbounds [8 x i8], ptr %11, i64 %59
  %61 = load float, ptr %60, align 4
  %62 = add nsw i32 %32, %10
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [8 x i8], ptr %11, i64 %63
  %65 = load float, ptr %64, align 4
  %66 = fsub float %61, %65
  %67 = load float, ptr %24, align 4
  %68 = sext i32 %32 to i64
  %69 = getelementptr inbounds [8 x i8], ptr %11, i64 %68
  %70 = getelementptr inbounds nuw i8, ptr %69, i64 4
  %71 = load float, ptr %70, align 4
  %72 = add nsw i32 %32, %10
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [8 x i8], ptr %11, i64 %73
  %75 = getelementptr inbounds nuw i8, ptr %74, i64 4
  %76 = load float, ptr %75, align 4
  %77 = fsub float %71, %76
  %78 = fneg float %77
  %79 = fmul float %67, %78
  %80 = call float @llvm.fmuladd.f32(float %58, float %66, float %79)
  %81 = add nsw i32 %32, %17
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [8 x i8], ptr %12, i64 %82
  store float %80, ptr %83, align 4
  %84 = load float, ptr %27, align 4
  %85 = sext i32 %32 to i64
  %86 = getelementptr inbounds [8 x i8], ptr %11, i64 %85
  %87 = getelementptr inbounds nuw i8, ptr %86, i64 4
  %88 = load float, ptr %87, align 4
  %89 = add nsw i32 %32, %10
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [8 x i8], ptr %11, i64 %90
  %92 = getelementptr inbounds nuw i8, ptr %91, i64 4
  %93 = load float, ptr %92, align 4
  %94 = fsub float %88, %93
  %95 = load float, ptr %30, align 4
  %96 = sext i32 %32 to i64
  %97 = getelementptr inbounds [8 x i8], ptr %11, i64 %96
  %98 = load float, ptr %97, align 4
  %99 = add nsw i32 %32, %10
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [8 x i8], ptr %11, i64 %100
  %102 = load float, ptr %101, align 4
  %103 = fsub float %98, %102
  %104 = fmul float %95, %103
  %105 = call float @llvm.fmuladd.f32(float %84, float %94, float %104)
  %106 = add nsw i32 %32, %17
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [8 x i8], ptr %12, i64 %107
  %109 = getelementptr inbounds nuw i8, ptr %108, i64 4
  store float %105, ptr %109, align 4
  br label %110

110:                                              ; preds = %31
  %111 = add nsw i32 %32, 1
  %.not.not = icmp slt i32 %32, %17
  br i1 %.not.not, label %31, label %112, !llvm.loop !13

112:                                              ; preds = %110
  br label %113

113:                                              ; preds = %112
  %114 = add nsw i32 %17, %15
  %.not = icmp sgt i32 %114, %10
  br i1 %.not, label %115, label %16, !llvm.loop !14

115:                                              ; preds = %113
  br label %116

116:                                              ; preds = %123, %115
  %117 = phi i32 [ %124, %123 ], [ 1, %115 ]
  %118 = zext nneg i32 %117 to i64
  %119 = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %118
  %120 = zext nneg i32 %117 to i64
  %121 = getelementptr inbounds nuw [8 x i8], ptr %12, i64 %120
  %122 = load i64, ptr %121, align 4
  store i64 %122, ptr %119, align 4
  br label %123

123:                                              ; preds = %116
  %124 = add nuw nsw i32 %117, 1
  %.not15.not = icmp slt i32 %117, %13
  br i1 %.not15.not, label %116, label %125, !llvm.loop !15

125:                                              ; preds = %123
  br label %126

126:                                              ; preds = %125
  %127 = shl nsw i32 %15, 1
  %.not16 = icmp sgt i32 %127, %10
  br i1 %.not16, label %128, label %14, !llvm.loop !16

128:                                              ; preds = %126
  %129 = load i32, ptr %6, align 4
  %130 = load float, ptr %9, align 4
  %131 = load ptr, ptr %7, align 8
  %132 = fneg float %130
  br label %133

133:                                              ; preds = %150, %128
  %134 = phi i32 [ %151, %150 ], [ 1, %128 ]
  %.not17 = icmp sgt i32 %134, %129
  br i1 %.not17, label %152, label %135

135:                                              ; preds = %133
  %136 = zext nneg i32 %134 to i64
  %137 = getelementptr inbounds nuw [8 x i8], ptr %131, i64 %136
  %138 = load float, ptr %137, align 4
  %139 = fmul float %130, %138
  %140 = zext nneg i32 %134 to i64
  %141 = getelementptr inbounds nuw [8 x i8], ptr %131, i64 %140
  store float %139, ptr %141, align 4
  %142 = zext nneg i32 %134 to i64
  %143 = getelementptr inbounds nuw [8 x i8], ptr %131, i64 %142
  %144 = getelementptr inbounds nuw i8, ptr %143, i64 4
  %145 = load float, ptr %144, align 4
  %146 = fmul float %145, %132
  %147 = zext nneg i32 %134 to i64
  %148 = getelementptr inbounds nuw [8 x i8], ptr %131, i64 %147
  %149 = getelementptr inbounds nuw i8, ptr %148, i64 4
  store float %146, ptr %149, align 4
  br label %150

150:                                              ; preds = %135
  %151 = add nuw nsw i32 %134, 1
  br label %133, !llvm.loop !17

152:                                              ; preds = %133
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @Oscar() #0 {
  %1 = alloca i32, align 4
  call void @Exptab(i32 noundef 256, ptr noundef nonnull @e)
  store i32 5767, ptr @seed, align 4
  br label %2

2:                                                ; preds = %18, %0
  %3 = phi i32 [ %19, %18 ], [ 1, %0 ]
  %4 = icmp samesign ult i32 %3, 257
  br i1 %4, label %5, label %20

5:                                                ; preds = %2
  %6 = load i32, ptr @seed, align 4
  store i32 %6, ptr %1, align 4
  call void @Uniform11(ptr noundef nonnull %1, ptr noundef nonnull @zr)
  %7 = load i32, ptr %1, align 4
  store i32 %7, ptr @seed, align 4
  call void @Uniform11(ptr noundef nonnull %1, ptr noundef nonnull @zi)
  %8 = load i32, ptr %1, align 4
  store i32 %8, ptr @seed, align 4
  %9 = load float, ptr @zr, align 4
  %10 = call float @llvm.fmuladd.f32(float %9, float 2.000000e+01, float -1.000000e+01)
  %11 = zext nneg i32 %3 to i64
  %12 = getelementptr inbounds nuw [8 x i8], ptr @z, i64 %11
  store float %10, ptr %12, align 8
  %13 = load float, ptr @zi, align 4
  %14 = call float @llvm.fmuladd.f32(float %13, float 2.000000e+01, float -1.000000e+01)
  %15 = zext nneg i32 %3 to i64
  %16 = getelementptr inbounds nuw [8 x i8], ptr @z, i64 %15
  %17 = getelementptr inbounds nuw i8, ptr %16, i64 4
  store float %14, ptr %17, align 4
  br label %18

18:                                               ; preds = %5
  %19 = add nuw nsw i32 %3, 1
  br label %2, !llvm.loop !18

20:                                               ; preds = %2
  br label %21

21:                                               ; preds = %25, %20
  %22 = phi i32 [ %26, %25 ], [ 1, %20 ]
  %23 = icmp samesign ult i32 %22, 21
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  call void @Fft(i32 noundef 256, ptr noundef nonnull @z, ptr noundef nonnull @w, ptr noundef nonnull @e, float noundef 6.250000e-02)
  br label %25

25:                                               ; preds = %24
  %26 = add nuw nsw i32 %22, 1
  br label %21, !llvm.loop !19

27:                                               ; preds = %21
  call void @Printcomplex(ptr noundef nonnull @z, i32 noundef 1, i32 noundef 256, i32 noundef 17)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %5, %0
  %2 = phi i32 [ %6, %5 ], [ 0, %0 ]
  %3 = icmp samesign ult i32 %2, 10
  br i1 %3, label %4, label %7

4:                                                ; preds = %1
  call void @Oscar()
  br label %5

5:                                                ; preds = %4
  %6 = add nuw nsw i32 %2, 1
  br label %1, !llvm.loop !20

7:                                                ; preds = %1
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) #4

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree nounwind }
attributes #5 = { nounwind }

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
