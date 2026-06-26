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

2:                                                ; preds = %22, %1
  %.017 = phi i32 [ 2, %1 ], [ %23, %22 ]
  %.016 = phi i32 [ 1, %1 ], [ %5, %22 ]
  %.015 = phi float [ 1.000000e+00, %1 ], [ %.1, %22 ]
  %.0 = phi float [ %0, %1 ], [ %6, %22 ]
  %3 = icmp samesign ult i32 %.017, 11
  br i1 %3, label %4, label %24

4:                                                ; preds = %2
  %5 = mul nuw nsw i32 %.016, %.017
  %6 = fmul float %.0, %0
  %7 = and i32 %.017, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %21

9:                                                ; preds = %4
  %10 = and i32 %.017, 2
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = uitofp nneg i32 %5 to float
  %14 = fdiv float %6, %13
  %15 = fadd float %.015, %14
  br label %20

16:                                               ; preds = %9
  %17 = uitofp nneg i32 %5 to float
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
  %23 = add nuw nsw i32 %.017, 1
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
  %putchar = call i32 @putchar(i32 10)
  br label %5

5:                                                ; preds = %27, %4
  %.0 = phi i32 [ %1, %4 ], [ %28, %27 ]
  %6 = sext i32 %.0 to i64
  %7 = getelementptr inbounds [8 x i8], ptr %0, i64 %6
  %8 = load float, ptr %7, align 4
  %9 = fpext float %8 to double
  %10 = sext i32 %.0 to i64
  %11 = getelementptr inbounds [8 x i8], ptr %0, i64 %10
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 4
  %13 = load float, ptr %12, align 4
  %14 = fpext float %13 to double
  %15 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %9, double noundef %14) #5
  %16 = add nsw i32 %.0, %3
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [8 x i8], ptr %0, i64 %17
  %19 = load float, ptr %18, align 4
  %20 = fpext float %19 to double
  %21 = sext i32 %16 to i64
  %22 = getelementptr inbounds [8 x i8], ptr %0, i64 %21
  %23 = getelementptr inbounds nuw i8, ptr %22, i64 4
  %24 = load float, ptr %23, align 4
  %25 = fpext float %24 to double
  %26 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %20, double noundef %25) #5
  %putchar14 = call i32 @putchar(i32 10)
  br label %27

27:                                               ; preds = %5
  %28 = add nsw i32 %16, %3
  %.not = icmp sgt i32 %28, %2
  br i1 %.not, label %29, label %5, !llvm.loop !9

29:                                               ; preds = %27
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
  %3 = alloca [26 x float], align 16
  br label %4

4:                                                ; preds = %13, %2
  %.048 = phi i32 [ 1, %2 ], [ %15, %13 ]
  %.0 = phi float [ 4.000000e+00, %2 ], [ %14, %13 ]
  %5 = icmp samesign ult i32 %.048, 26
  br i1 %5, label %6, label %16

6:                                                ; preds = %4
  %7 = fdiv float f0x40490FDB, %.0
  %8 = call float @Cos(float noundef %7)
  %9 = fmul float %8, 2.000000e+00
  %10 = fdiv float 1.000000e+00, %9
  %11 = zext nneg i32 %.048 to i64
  %12 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %11
  store float %10, ptr %12, align 4
  br label %13

13:                                               ; preds = %6
  %14 = fadd float %.0, %.0
  %15 = add nuw nsw i32 %.048, 1
  br label %4, !llvm.loop !10

16:                                               ; preds = %4
  %17 = sdiv i32 %0, 2
  %18 = sdiv i32 %0, 4
  %19 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float 1.000000e+00, ptr %19, align 4
  %20 = getelementptr inbounds nuw i8, ptr %1, i64 12
  store float 0.000000e+00, ptr %20, align 4
  %21 = sext i32 %18 to i64
  %22 = getelementptr [8 x i8], ptr %1, i64 %21
  %23 = getelementptr i8, ptr %22, i64 8
  store float 0.000000e+00, ptr %23, align 4
  %24 = sext i32 %18 to i64
  %25 = getelementptr [8 x i8], ptr %1, i64 %24
  %26 = getelementptr i8, ptr %25, i64 12
  store float 1.000000e+00, ptr %26, align 4
  %27 = sext i32 %17 to i64
  %28 = getelementptr [8 x i8], ptr %1, i64 %27
  %29 = getelementptr i8, ptr %28, i64 8
  store float -1.000000e+00, ptr %29, align 4
  %30 = sext i32 %17 to i64
  %31 = getelementptr [8 x i8], ptr %1, i64 %30
  %32 = getelementptr i8, ptr %31, i64 12
  store float 0.000000e+00, ptr %32, align 4
  br label %33

33:                                               ; preds = %77, %16
  %.047 = phi i32 [ 1, %16 ], [ %76, %77 ]
  %.045 = phi i32 [ %18, %16 ], [ %34, %77 ]
  %34 = sdiv i32 %.045, 2
  br label %35

35:                                               ; preds = %72, %33
  %.046 = phi i32 [ %34, %33 ], [ %73, %72 ]
  %36 = sext i32 %.047 to i64
  %37 = getelementptr inbounds [4 x i8], ptr %3, i64 %36
  %38 = load float, ptr %37, align 4
  %39 = add nsw i32 %.046, %34
  %40 = sext i32 %39 to i64
  %41 = getelementptr [8 x i8], ptr %1, i64 %40
  %42 = getelementptr i8, ptr %41, i64 8
  %43 = load float, ptr %42, align 4
  %44 = sub nsw i32 %.046, %34
  %45 = sext i32 %44 to i64
  %46 = getelementptr [8 x i8], ptr %1, i64 %45
  %47 = getelementptr i8, ptr %46, i64 8
  %48 = load float, ptr %47, align 4
  %49 = fadd float %43, %48
  %50 = fmul float %38, %49
  %51 = sext i32 %.046 to i64
  %52 = getelementptr [8 x i8], ptr %1, i64 %51
  %53 = getelementptr i8, ptr %52, i64 8
  store float %50, ptr %53, align 4
  %54 = sext i32 %.047 to i64
  %55 = getelementptr inbounds [4 x i8], ptr %3, i64 %54
  %56 = load float, ptr %55, align 4
  %57 = add nsw i32 %.046, %34
  %58 = sext i32 %57 to i64
  %59 = getelementptr [8 x i8], ptr %1, i64 %58
  %60 = getelementptr i8, ptr %59, i64 12
  %61 = load float, ptr %60, align 4
  %62 = sub nsw i32 %.046, %34
  %63 = sext i32 %62 to i64
  %64 = getelementptr [8 x i8], ptr %1, i64 %63
  %65 = getelementptr i8, ptr %64, i64 12
  %66 = load float, ptr %65, align 4
  %67 = fadd float %61, %66
  %68 = fmul float %56, %67
  %69 = sext i32 %.046 to i64
  %70 = getelementptr [8 x i8], ptr %1, i64 %69
  %71 = getelementptr i8, ptr %70, i64 12
  store float %68, ptr %71, align 4
  br label %72

72:                                               ; preds = %35
  %73 = add nsw i32 %.046, %.045
  %.not = icmp sgt i32 %73, %17
  br i1 %.not, label %74, label %35, !llvm.loop !11

74:                                               ; preds = %72
  %75 = add nsw i32 %.047, 1
  %76 = call i32 @Min0(i32 noundef %75, i32 noundef 25)
  br label %77

77:                                               ; preds = %74
  %78 = icmp sgt i32 %.045, 3
  br i1 %78, label %33, label %79, !llvm.loop !12

79:                                               ; preds = %77
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Fft(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, float noundef %4) #0 {
  %6 = sdiv i32 %0, 2
  br label %7

7:                                                ; preds = %114, %5
  %.084 = phi i32 [ 1, %5 ], [ %115, %114 ]
  br label %8

8:                                                ; preds = %102, %7
  %.086 = phi i32 [ %.084, %7 ], [ %103, %102 ]
  %.085 = phi i32 [ 0, %7 ], [ %.086, %102 ]
  %.083 = phi i32 [ 1, %7 ], [ %99, %102 ]
  br label %9

9:                                                ; preds = %100, %8
  %.1 = phi i32 [ %.083, %8 ], [ %99, %100 ]
  %10 = sext i32 %.1 to i64
  %11 = getelementptr inbounds [8 x i8], ptr %1, i64 %10
  %12 = load float, ptr %11, align 4
  %13 = add nsw i32 %6, %.1
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [8 x i8], ptr %1, i64 %14
  %16 = load float, ptr %15, align 4
  %17 = fadd float %12, %16
  %18 = add nsw i32 %.1, %.085
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [8 x i8], ptr %2, i64 %19
  store float %17, ptr %20, align 4
  %21 = sext i32 %.1 to i64
  %22 = getelementptr inbounds [8 x i8], ptr %1, i64 %21
  %23 = getelementptr inbounds nuw i8, ptr %22, i64 4
  %24 = load float, ptr %23, align 4
  %25 = add nsw i32 %6, %.1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [8 x i8], ptr %1, i64 %26
  %28 = getelementptr inbounds nuw i8, ptr %27, i64 4
  %29 = load float, ptr %28, align 4
  %30 = fadd float %24, %29
  %31 = add nsw i32 %.1, %.085
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [8 x i8], ptr %2, i64 %32
  %34 = getelementptr inbounds nuw i8, ptr %33, i64 4
  store float %30, ptr %34, align 4
  %35 = sext i32 %.085 to i64
  %36 = getelementptr [8 x i8], ptr %3, i64 %35
  %37 = getelementptr i8, ptr %36, i64 8
  %38 = load float, ptr %37, align 4
  %39 = sext i32 %.1 to i64
  %40 = getelementptr inbounds [8 x i8], ptr %1, i64 %39
  %41 = load float, ptr %40, align 4
  %42 = add nsw i32 %.1, %6
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [8 x i8], ptr %1, i64 %43
  %45 = load float, ptr %44, align 4
  %46 = fsub float %41, %45
  %47 = sext i32 %.085 to i64
  %48 = getelementptr [8 x i8], ptr %3, i64 %47
  %49 = getelementptr i8, ptr %48, i64 12
  %50 = load float, ptr %49, align 4
  %51 = sext i32 %.1 to i64
  %52 = getelementptr inbounds [8 x i8], ptr %1, i64 %51
  %53 = getelementptr inbounds nuw i8, ptr %52, i64 4
  %54 = load float, ptr %53, align 4
  %55 = add nsw i32 %.1, %6
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [8 x i8], ptr %1, i64 %56
  %58 = getelementptr inbounds nuw i8, ptr %57, i64 4
  %59 = load float, ptr %58, align 4
  %60 = fsub float %54, %59
  %61 = fneg float %60
  %62 = fmul float %50, %61
  %63 = call float @llvm.fmuladd.f32(float %38, float %46, float %62)
  %64 = add nsw i32 %.1, %.086
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [8 x i8], ptr %2, i64 %65
  store float %63, ptr %66, align 4
  %67 = sext i32 %.085 to i64
  %68 = getelementptr [8 x i8], ptr %3, i64 %67
  %69 = getelementptr i8, ptr %68, i64 8
  %70 = load float, ptr %69, align 4
  %71 = sext i32 %.1 to i64
  %72 = getelementptr inbounds [8 x i8], ptr %1, i64 %71
  %73 = getelementptr inbounds nuw i8, ptr %72, i64 4
  %74 = load float, ptr %73, align 4
  %75 = add nsw i32 %.1, %6
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [8 x i8], ptr %1, i64 %76
  %78 = getelementptr inbounds nuw i8, ptr %77, i64 4
  %79 = load float, ptr %78, align 4
  %80 = fsub float %74, %79
  %81 = sext i32 %.085 to i64
  %82 = getelementptr [8 x i8], ptr %3, i64 %81
  %83 = getelementptr i8, ptr %82, i64 12
  %84 = load float, ptr %83, align 4
  %85 = sext i32 %.1 to i64
  %86 = getelementptr inbounds [8 x i8], ptr %1, i64 %85
  %87 = load float, ptr %86, align 4
  %88 = add nsw i32 %.1, %6
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [8 x i8], ptr %1, i64 %89
  %91 = load float, ptr %90, align 4
  %92 = fsub float %87, %91
  %93 = fmul float %84, %92
  %94 = call float @llvm.fmuladd.f32(float %70, float %80, float %93)
  %95 = add nsw i32 %.1, %.086
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [8 x i8], ptr %2, i64 %96
  %98 = getelementptr inbounds nuw i8, ptr %97, i64 4
  store float %94, ptr %98, align 4
  %99 = add nsw i32 %.1, 1
  br label %100

100:                                              ; preds = %9
  %.not.not = icmp slt i32 %.1, %.086
  br i1 %.not.not, label %9, label %101, !llvm.loop !13

101:                                              ; preds = %100
  br label %102

102:                                              ; preds = %101
  %103 = add nsw i32 %.086, %.084
  %.not = icmp sgt i32 %103, %6
  br i1 %.not, label %104, label %8, !llvm.loop !14

104:                                              ; preds = %102
  br label %105

105:                                              ; preds = %111, %104
  %.0 = phi i32 [ 1, %104 ], [ %112, %111 ]
  %106 = zext nneg i32 %.0 to i64
  %107 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %106
  %108 = zext nneg i32 %.0 to i64
  %109 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %108
  %110 = load i64, ptr %109, align 4
  store i64 %110, ptr %107, align 4
  br label %111

111:                                              ; preds = %105
  %112 = add nuw nsw i32 %.0, 1
  %.not87.not = icmp slt i32 %.0, %0
  br i1 %.not87.not, label %105, label %113, !llvm.loop !15

113:                                              ; preds = %111
  br label %114

114:                                              ; preds = %113
  %115 = shl nsw i32 %.084, 1
  %.not88 = icmp sgt i32 %115, %6
  br i1 %.not88, label %116, label %7, !llvm.loop !16

116:                                              ; preds = %114
  br label %117

117:                                              ; preds = %134, %116
  %.2 = phi i32 [ 1, %116 ], [ %135, %134 ]
  %.not89 = icmp sgt i32 %.2, %0
  br i1 %.not89, label %136, label %118

118:                                              ; preds = %117
  %119 = zext nneg i32 %.2 to i64
  %120 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %119
  %121 = load float, ptr %120, align 4
  %122 = fmul float %4, %121
  %123 = zext nneg i32 %.2 to i64
  %124 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %123
  store float %122, ptr %124, align 4
  %125 = fneg float %4
  %126 = zext nneg i32 %.2 to i64
  %127 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %126
  %128 = getelementptr inbounds nuw i8, ptr %127, i64 4
  %129 = load float, ptr %128, align 4
  %130 = fmul float %129, %125
  %131 = zext nneg i32 %.2 to i64
  %132 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %131
  %133 = getelementptr inbounds nuw i8, ptr %132, i64 4
  store float %130, ptr %133, align 4
  br label %134

134:                                              ; preds = %118
  %135 = add nuw nsw i32 %.2, 1
  br label %117, !llvm.loop !17

136:                                              ; preds = %117
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

2:                                                ; preds = %17, %0
  %.0 = phi i32 [ 1, %0 ], [ %18, %17 ]
  %3 = icmp samesign ult i32 %.0, 257
  br i1 %3, label %4, label %19

4:                                                ; preds = %2
  %5 = load i32, ptr @seed, align 4
  store i32 %5, ptr %1, align 4
  call void @Uniform11(ptr noundef nonnull %1, ptr noundef nonnull @zr)
  %6 = load i32, ptr %1, align 4
  store i32 %6, ptr @seed, align 4
  call void @Uniform11(ptr noundef nonnull %1, ptr noundef nonnull @zi)
  %7 = load i32, ptr %1, align 4
  store i32 %7, ptr @seed, align 4
  %8 = load float, ptr @zr, align 4
  %9 = call float @llvm.fmuladd.f32(float %8, float 2.000000e+01, float -1.000000e+01)
  %10 = zext nneg i32 %.0 to i64
  %11 = getelementptr inbounds nuw [8 x i8], ptr @z, i64 %10
  store float %9, ptr %11, align 8
  %12 = load float, ptr @zi, align 4
  %13 = call float @llvm.fmuladd.f32(float %12, float 2.000000e+01, float -1.000000e+01)
  %14 = zext nneg i32 %.0 to i64
  %15 = getelementptr inbounds nuw [8 x i8], ptr @z, i64 %14
  %16 = getelementptr inbounds nuw i8, ptr %15, i64 4
  store float %13, ptr %16, align 4
  br label %17

17:                                               ; preds = %4
  %18 = add nuw nsw i32 %.0, 1
  br label %2, !llvm.loop !18

19:                                               ; preds = %2
  br label %20

20:                                               ; preds = %23, %19
  %.1 = phi i32 [ 1, %19 ], [ %24, %23 ]
  %21 = icmp samesign ult i32 %.1, 21
  br i1 %21, label %22, label %25

22:                                               ; preds = %20
  call void @Fft(i32 noundef 256, ptr noundef nonnull @z, ptr noundef nonnull @w, ptr noundef nonnull @e, float noundef 6.250000e-02)
  br label %23

23:                                               ; preds = %22
  %24 = add nuw nsw i32 %.1, 1
  br label %20, !llvm.loop !19

25:                                               ; preds = %20
  call void @Printcomplex(ptr noundef nonnull @z, i32 noundef 1, i32 noundef 256, i32 noundef 17)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %4, %0
  %.0 = phi i32 [ 0, %0 ], [ %5, %4 ]
  %2 = icmp samesign ult i32 %.0, 10
  br i1 %2, label %3, label %6

3:                                                ; preds = %1
  call void @Oscar()
  br label %4

4:                                                ; preds = %3
  %5 = add nuw nsw i32 %.0, 1
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
