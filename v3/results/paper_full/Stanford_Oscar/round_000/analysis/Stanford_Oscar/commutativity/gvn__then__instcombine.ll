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
  %7 = icmp samesign ult i32 %6, 11
  br i1 %7, label %8, label %29

8:                                                ; preds = %2
  %9 = mul nuw nsw i32 %4, %6
  %10 = fmul float %3, %0
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
  %19 = fadd float %5, %18
  br label %24

20:                                               ; preds = %13
  %21 = uitofp nneg i32 %9 to float
  %22 = fdiv float %10, %21
  %23 = fsub float %5, %22
  br label %24

24:                                               ; preds = %20, %16
  %25 = phi float [ %23, %20 ], [ %19, %16 ]
  br label %26

26:                                               ; preds = %24, %8
  %27 = phi float [ %25, %24 ], [ %5, %8 ]
  %28 = add nuw nsw i32 %6, 1
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
  %putchar = call i32 @putchar(i32 10)
  br label %5

5:                                                ; preds = %5, %4
  %6 = phi i32 [ %24, %5 ], [ %1, %4 ]
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [8 x i8], ptr %0, i64 %7
  %9 = load float, ptr %8, align 4
  %10 = fpext float %9 to double
  %11 = getelementptr inbounds nuw i8, ptr %8, i64 4
  %12 = load float, ptr %11, align 4
  %13 = fpext float %12 to double
  %14 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %10, double noundef %13) #5
  %15 = add nsw i32 %6, %3
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [8 x i8], ptr %0, i64 %16
  %18 = load float, ptr %17, align 4
  %19 = fpext float %18 to double
  %20 = getelementptr inbounds nuw i8, ptr %17, i64 4
  %21 = load float, ptr %20, align 4
  %22 = fpext float %21 to double
  %23 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %19, double noundef %22) #5
  %putchar1 = call i32 @putchar(i32 10)
  %24 = add nsw i32 %15, %3
  %.not = icmp sgt i32 %24, %2
  br i1 %.not, label %25, label %5, !llvm.loop !9

25:                                               ; preds = %5
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @Uniform11(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load i32, ptr %0, align 4
  %4 = mul nsw i32 %3, 4855
  %5 = add nsw i32 %4, 1731
  %6 = and i32 %5, 8191
  store i32 %6, ptr %0, align 4
  %7 = uitofp nneg i32 %6 to float
  %8 = fmul nnan float %7, f0x39000000
  store float %8, ptr %1, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Exptab(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca [26 x float], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store ptr %1, ptr %3, align 8
  br label %10

10:                                               ; preds = %13, %2
  %storemerge = phi i32 [ 1, %2 ], [ %21, %13 ]
  %11 = phi float [ 4.000000e+00, %2 ], [ %20, %13 ]
  store i32 %storemerge, ptr %5, align 4
  %12 = icmp samesign ult i32 %storemerge, 26
  br i1 %12, label %13, label %22

13:                                               ; preds = %10
  %14 = fdiv float f0x40490FDB, %11
  %15 = call float @Cos(float noundef %14)
  %16 = fmul float %15, 2.000000e+00
  %17 = fdiv float 1.000000e+00, %16
  %18 = zext nneg i32 %storemerge to i64
  %19 = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %18
  store float %17, ptr %19, align 4
  %20 = fadd float %11, %11
  %21 = add nuw nsw i32 %storemerge, 1
  br label %10, !llvm.loop !10

22:                                               ; preds = %10
  %23 = sdiv i32 %0, 2
  store i32 %23, ptr %9, align 4
  %24 = sdiv i32 %0, 4
  store i32 %24, ptr %8, align 4
  store i32 1, ptr %6, align 4
  %25 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float 1.000000e+00, ptr %25, align 4
  %26 = getelementptr inbounds nuw i8, ptr %1, i64 12
  store float 0.000000e+00, ptr %26, align 4
  %27 = sext i32 %24 to i64
  %28 = getelementptr [8 x i8], ptr %1, i64 %27
  %29 = getelementptr i8, ptr %28, i64 8
  store float 0.000000e+00, ptr %29, align 4
  %30 = getelementptr i8, ptr %28, i64 12
  store float 1.000000e+00, ptr %30, align 4
  %31 = sext i32 %23 to i64
  %32 = getelementptr [8 x i8], ptr %1, i64 %31
  %33 = getelementptr i8, ptr %32, i64 8
  store float -1.000000e+00, ptr %33, align 4
  %34 = getelementptr i8, ptr %32, i64 12
  store float 0.000000e+00, ptr %34, align 4
  br label %35

35:                                               ; preds = %85, %22
  %36 = phi ptr [ %64, %85 ], [ %1, %22 ]
  %37 = phi i32 [ %87, %85 ], [ 1, %22 ]
  %38 = phi i32 [ %66, %85 ], [ %24, %22 ]
  %39 = sdiv i32 %38, 2
  store i32 %39, ptr %5, align 4
  store i32 %39, ptr %7, align 4
  %.phi.trans.insert = sext i32 %37 to i64
  %.phi.trans.insert1 = getelementptr inbounds [4 x i8], ptr %4, i64 %.phi.trans.insert
  %.pre = load float, ptr %.phi.trans.insert1, align 4
  br label %40

40:                                               ; preds = %40, %35
  %41 = phi i32 [ %66, %40 ], [ %39, %35 ]
  %42 = phi i32 [ %83, %40 ], [ %39, %35 ]
  %43 = phi ptr [ %64, %40 ], [ %36, %35 ]
  %44 = phi float [ %63, %40 ], [ %.pre, %35 ]
  %45 = add nsw i32 %42, %41
  %46 = sext i32 %45 to i64
  %47 = getelementptr [8 x i8], ptr %43, i64 %46
  %48 = getelementptr i8, ptr %47, i64 8
  %49 = load float, ptr %48, align 4
  %50 = sub nsw i32 %42, %41
  %51 = sext i32 %50 to i64
  %52 = getelementptr [8 x i8], ptr %43, i64 %51
  %53 = getelementptr i8, ptr %52, i64 8
  %54 = load float, ptr %53, align 4
  %55 = fadd float %49, %54
  %56 = fmul float %44, %55
  %57 = sext i32 %42 to i64
  %58 = getelementptr [8 x i8], ptr %43, i64 %57
  %59 = getelementptr i8, ptr %58, i64 8
  store float %56, ptr %59, align 4
  %60 = load i32, ptr %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [4 x i8], ptr %4, i64 %61
  %63 = load float, ptr %62, align 4
  %64 = load ptr, ptr %3, align 8
  %65 = load i32, ptr %7, align 4
  %66 = load i32, ptr %5, align 4
  %67 = add nsw i32 %65, %66
  %68 = sext i32 %67 to i64
  %69 = getelementptr [8 x i8], ptr %64, i64 %68
  %70 = getelementptr i8, ptr %69, i64 12
  %71 = load float, ptr %70, align 4
  %72 = sub nsw i32 %65, %66
  %73 = sext i32 %72 to i64
  %74 = getelementptr [8 x i8], ptr %64, i64 %73
  %75 = getelementptr i8, ptr %74, i64 12
  %76 = load float, ptr %75, align 4
  %77 = fadd float %71, %76
  %78 = fmul float %63, %77
  %79 = sext i32 %65 to i64
  %80 = getelementptr [8 x i8], ptr %64, i64 %79
  %81 = getelementptr i8, ptr %80, i64 12
  store float %78, ptr %81, align 4
  %82 = load i32, ptr %8, align 4
  %83 = add nsw i32 %65, %82
  store i32 %83, ptr %7, align 4
  %84 = load i32, ptr %9, align 4
  %.not = icmp sgt i32 %83, %84
  br i1 %.not, label %85, label %40, !llvm.loop !11

85:                                               ; preds = %40
  %86 = add nsw i32 %60, 1
  %87 = call i32 @Min0(i32 noundef %86, i32 noundef 25)
  store i32 %87, ptr %6, align 4
  store i32 %66, ptr %8, align 4
  %88 = icmp sgt i32 %66, 1
  br i1 %88, label %35, label %89, !llvm.loop !12

89:                                               ; preds = %85
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
  store i32 %0, ptr %6, align 4
  store ptr %1, ptr %7, align 8
  store ptr %2, ptr %8, align 8
  store ptr %3, ptr %9, align 8
  store float %4, ptr %10, align 4
  %16 = sdiv i32 %0, 2
  store i32 %16, ptr %15, align 4
  store i32 1, ptr %14, align 4
  br label %17

17:                                               ; preds = %107, %5
  %18 = phi ptr [ %58, %107 ], [ %2, %5 ]
  %19 = phi i32 [ %51, %107 ], [ %16, %5 ]
  %20 = phi ptr [ %45, %107 ], [ %1, %5 ]
  %21 = phi i32 [ %108, %107 ], [ 1, %5 ]
  store i32 0, ptr %13, align 4
  store i32 %21, ptr %12, align 4
  store i32 1, ptr %11, align 4
  br label %22

22:                                               ; preds = %96, %17
  %23 = phi i32 [ %80, %96 ], [ 0, %17 ]
  %24 = phi ptr [ %58, %96 ], [ %18, %17 ]
  %25 = phi i32 [ %51, %96 ], [ %19, %17 ]
  %26 = phi i32 [ %95, %96 ], [ 1, %17 ]
  %27 = phi ptr [ %45, %96 ], [ %20, %17 ]
  br label %28

28:                                               ; preds = %28, %22
  %29 = phi i32 [ %59, %28 ], [ %23, %22 ]
  %30 = phi ptr [ %58, %28 ], [ %24, %22 ]
  %31 = phi i32 [ %51, %28 ], [ %25, %22 ]
  %32 = phi i32 [ %95, %28 ], [ %26, %22 ]
  %33 = phi ptr [ %45, %28 ], [ %27, %22 ]
  %34 = sext i32 %32 to i64
  %35 = getelementptr inbounds [8 x i8], ptr %33, i64 %34
  %36 = load float, ptr %35, align 4
  %37 = add nsw i32 %31, %32
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [8 x i8], ptr %33, i64 %38
  %40 = load float, ptr %39, align 4
  %41 = fadd float %36, %40
  %42 = add nsw i32 %32, %29
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [8 x i8], ptr %30, i64 %43
  store float %41, ptr %44, align 4
  %45 = load ptr, ptr %7, align 8
  %46 = load i32, ptr %11, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [8 x i8], ptr %45, i64 %47
  %49 = getelementptr inbounds nuw i8, ptr %48, i64 4
  %50 = load float, ptr %49, align 4
  %51 = load i32, ptr %15, align 4
  %52 = add nsw i32 %51, %46
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [8 x i8], ptr %45, i64 %53
  %55 = getelementptr inbounds nuw i8, ptr %54, i64 4
  %56 = load float, ptr %55, align 4
  %57 = fadd float %50, %56
  %58 = load ptr, ptr %8, align 8
  %59 = load i32, ptr %13, align 4
  %60 = add nsw i32 %46, %59
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [8 x i8], ptr %58, i64 %61
  %63 = getelementptr inbounds nuw i8, ptr %62, i64 4
  store float %57, ptr %63, align 4
  %64 = load ptr, ptr %9, align 8
  %65 = sext i32 %59 to i64
  %66 = getelementptr [8 x i8], ptr %64, i64 %65
  %67 = getelementptr i8, ptr %66, i64 8
  %68 = load float, ptr %67, align 4
  %69 = load float, ptr %48, align 4
  %70 = load float, ptr %54, align 4
  %71 = fsub float %69, %70
  %72 = getelementptr i8, ptr %66, i64 12
  %73 = load float, ptr %72, align 4
  %74 = load float, ptr %49, align 4
  %75 = load float, ptr %55, align 4
  %76 = fsub float %74, %75
  %77 = fneg float %76
  %78 = fmul float %73, %77
  %79 = call float @llvm.fmuladd.f32(float %68, float %71, float %78)
  %80 = load i32, ptr %12, align 4
  %81 = add nsw i32 %46, %80
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [8 x i8], ptr %58, i64 %82
  store float %79, ptr %83, align 4
  %84 = load float, ptr %67, align 4
  %85 = load float, ptr %49, align 4
  %86 = load float, ptr %55, align 4
  %87 = fsub float %85, %86
  %88 = load float, ptr %72, align 4
  %89 = load float, ptr %48, align 4
  %90 = load float, ptr %54, align 4
  %91 = fsub float %89, %90
  %92 = fmul float %88, %91
  %93 = call float @llvm.fmuladd.f32(float %84, float %87, float %92)
  %94 = getelementptr inbounds nuw i8, ptr %83, i64 4
  store float %93, ptr %94, align 4
  %95 = add nsw i32 %46, 1
  store i32 %95, ptr %11, align 4
  %.not.not = icmp slt i32 %46, %80
  br i1 %.not.not, label %28, label %96, !llvm.loop !13

96:                                               ; preds = %28
  store i32 %80, ptr %13, align 4
  %97 = load i32, ptr %14, align 4
  %98 = add nsw i32 %80, %97
  store i32 %98, ptr %12, align 4
  %.not = icmp sgt i32 %98, %51
  br i1 %.not, label %99, label %22, !llvm.loop !14

99:                                               ; preds = %96
  %.pre = load i32, ptr %6, align 4
  br label %100

100:                                              ; preds = %100, %99
  %101 = phi i32 [ %106, %100 ], [ 1, %99 ]
  %102 = zext nneg i32 %101 to i64
  %103 = getelementptr inbounds nuw [8 x i8], ptr %45, i64 %102
  %104 = getelementptr inbounds nuw [8 x i8], ptr %58, i64 %102
  %105 = load i64, ptr %104, align 4
  store i64 %105, ptr %103, align 4
  %106 = add nuw nsw i32 %101, 1
  %.not1.not = icmp slt i32 %101, %.pre
  br i1 %.not1.not, label %100, label %107, !llvm.loop !15

107:                                              ; preds = %100
  %108 = shl nsw i32 %97, 1
  store i32 %108, ptr %14, align 4
  %.not2 = icmp sgt i32 %108, %51
  br i1 %.not2, label %109, label %17, !llvm.loop !16

109:                                              ; preds = %107
  br label %110

110:                                              ; preds = %111, %109
  %storemerge = phi i32 [ 1, %109 ], [ %121, %111 ]
  store i32 %storemerge, ptr %11, align 4
  %.not3 = icmp sgt i32 %storemerge, %.pre
  br i1 %.not3, label %122, label %111

111:                                              ; preds = %110
  %112 = load float, ptr %10, align 4
  %113 = zext nneg i32 %storemerge to i64
  %114 = getelementptr inbounds nuw [8 x i8], ptr %45, i64 %113
  %115 = load float, ptr %114, align 4
  %116 = fmul float %112, %115
  store float %116, ptr %114, align 4
  %117 = fneg float %112
  %118 = getelementptr inbounds nuw i8, ptr %114, i64 4
  %119 = load float, ptr %118, align 4
  %120 = fmul float %119, %117
  store float %120, ptr %118, align 4
  %121 = add nuw nsw i32 %storemerge, 1
  br label %110, !llvm.loop !17

122:                                              ; preds = %110
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

2:                                                ; preds = %6, %0
  %3 = phi i32 [ %8, %6 ], [ 5767, %0 ]
  %4 = phi i32 [ %16, %6 ], [ 1, %0 ]
  %5 = icmp samesign ult i32 %4, 257
  br i1 %5, label %6, label %17

6:                                                ; preds = %2
  store i32 %3, ptr %1, align 4
  call void @Uniform11(ptr noundef nonnull %1, ptr noundef nonnull @zr)
  %7 = load i32, ptr %1, align 4
  store i32 %7, ptr @seed, align 4
  call void @Uniform11(ptr noundef nonnull %1, ptr noundef nonnull @zi)
  %8 = load i32, ptr %1, align 4
  store i32 %8, ptr @seed, align 4
  %9 = load float, ptr @zr, align 4
  %10 = call float @llvm.fmuladd.f32(float %9, float 2.000000e+01, float -1.000000e+01)
  %11 = zext nneg i32 %4 to i64
  %12 = getelementptr inbounds nuw [8 x i8], ptr @z, i64 %11
  store float %10, ptr %12, align 8
  %13 = load float, ptr @zi, align 4
  %14 = call float @llvm.fmuladd.f32(float %13, float 2.000000e+01, float -1.000000e+01)
  %15 = getelementptr inbounds nuw i8, ptr %12, i64 4
  store float %14, ptr %15, align 4
  %16 = add nuw nsw i32 %4, 1
  br label %2, !llvm.loop !18

17:                                               ; preds = %2
  br label %18

18:                                               ; preds = %21, %17
  %19 = phi i32 [ %22, %21 ], [ 1, %17 ]
  %20 = icmp samesign ult i32 %19, 21
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  call void @Fft(i32 noundef 256, ptr noundef nonnull @z, ptr noundef nonnull @w, ptr noundef nonnull @e, float noundef 6.250000e-02)
  %22 = add nuw nsw i32 %19, 1
  br label %18, !llvm.loop !19

23:                                               ; preds = %18
  call void @Printcomplex(ptr noundef nonnull @z, i32 noundef 1, i32 noundef 256, i32 noundef 17)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %4, %0
  %2 = phi i32 [ %5, %4 ], [ 0, %0 ]
  %3 = icmp samesign ult i32 %2, 10
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  call void @Oscar()
  %5 = add nuw nsw i32 %2, 1
  br label %1, !llvm.loop !20

6:                                                ; preds = %1
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
