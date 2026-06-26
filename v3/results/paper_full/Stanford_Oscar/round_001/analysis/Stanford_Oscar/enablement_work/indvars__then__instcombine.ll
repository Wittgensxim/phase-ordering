; ModuleID = 'results\paper_full\Stanford_Oscar\round_000\output.ll'
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

2:                                                ; preds = %21, %1
  %.03 = phi float [ 1.000000e+00, %1 ], [ %.1, %21 ]
  %.02 = phi i32 [ 1, %1 ], [ %4, %21 ]
  %.01 = phi i32 [ 2, %1 ], [ %22, %21 ]
  %.0 = phi float [ %0, %1 ], [ %5, %21 ]
  %exitcond.not = icmp eq i32 %.01, 11
  br i1 %exitcond.not, label %23, label %3

3:                                                ; preds = %2
  %4 = mul nuw nsw i32 %.02, %.01
  %5 = fmul float %.0, %0
  %6 = and i32 %.01, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %20

8:                                                ; preds = %3
  %9 = and i32 %.01, 2
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %8
  %12 = uitofp nneg i32 %4 to float
  %13 = fdiv float %5, %12
  %14 = fadd float %.03, %13
  br label %19

15:                                               ; preds = %8
  %16 = uitofp nneg i32 %4 to float
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
  ret float %.03
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

5:                                                ; preds = %23, %4
  %.0 = phi i32 [ %1, %4 ], [ %24, %23 ]
  %6 = sext i32 %.0 to i64
  %7 = getelementptr inbounds [8 x i8], ptr %0, i64 %6
  %8 = load float, ptr %7, align 4
  %9 = fpext float %8 to double
  %10 = getelementptr inbounds nuw i8, ptr %7, i64 4
  %11 = load float, ptr %10, align 4
  %12 = fpext float %11 to double
  %13 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %9, double noundef %12) #5
  %14 = add nsw i32 %.0, %3
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [8 x i8], ptr %0, i64 %15
  %17 = load float, ptr %16, align 4
  %18 = fpext float %17 to double
  %19 = getelementptr inbounds nuw i8, ptr %16, i64 4
  %20 = load float, ptr %19, align 4
  %21 = fpext float %20 to double
  %22 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %18, double noundef %21) #5
  %putchar1 = call i32 @putchar(i32 10)
  br label %23

23:                                               ; preds = %5
  %24 = add nsw i32 %14, %3
  %.not = icmp sgt i32 %24, %2
  br i1 %.not, label %25, label %5, !llvm.loop !9

25:                                               ; preds = %23
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

4:                                                ; preds = %11, %2
  %indvars.iv = phi i64 [ %indvars.iv.next, %11 ], [ 1, %2 ]
  %.03 = phi float [ %12, %11 ], [ 4.000000e+00, %2 ]
  %exitcond.not = icmp eq i64 %indvars.iv, 26
  br i1 %exitcond.not, label %13, label %5

5:                                                ; preds = %4
  %6 = fdiv float f0x40490FDB, %.03
  %7 = call float @Cos(float noundef %6)
  %8 = fmul float %7, 2.000000e+00
  %9 = fdiv float 1.000000e+00, %8
  %10 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  store float %9, ptr %10, align 4
  br label %11

11:                                               ; preds = %5
  %12 = fadd float %.03, %.03
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %4, !llvm.loop !10

13:                                               ; preds = %4
  %14 = sdiv i32 %0, 2
  %15 = sdiv i32 %0, 4
  %16 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float 1.000000e+00, ptr %16, align 4
  %17 = getelementptr inbounds nuw i8, ptr %1, i64 12
  store float 0.000000e+00, ptr %17, align 4
  %18 = sext i32 %15 to i64
  %19 = getelementptr [8 x i8], ptr %1, i64 %18
  %20 = getelementptr i8, ptr %19, i64 8
  store float 0.000000e+00, ptr %20, align 4
  %21 = getelementptr i8, ptr %19, i64 12
  store float 1.000000e+00, ptr %21, align 4
  %22 = sext i32 %14 to i64
  %23 = getelementptr [8 x i8], ptr %1, i64 %22
  %24 = getelementptr i8, ptr %23, i64 8
  store float -1.000000e+00, ptr %24, align 4
  %25 = getelementptr i8, ptr %23, i64 12
  store float 0.000000e+00, ptr %25, align 4
  %26 = sext i32 %14 to i64
  br label %27

27:                                               ; preds = %61, %13
  %.02 = phi i32 [ 1, %13 ], [ %60, %61 ]
  %.0 = phi i32 [ %15, %13 ], [ %28, %61 ]
  %28 = sdiv i32 %.0, 2
  %29 = sext i32 %28 to i64
  %30 = sext i32 %.0 to i64
  %31 = sext i32 %28 to i64
  %32 = sext i32 %28 to i64
  br label %33

33:                                               ; preds = %57, %27
  %indvars.iv2 = phi i64 [ %indvars.iv.next3, %57 ], [ %29, %27 ]
  %34 = sext i32 %.02 to i64
  %35 = getelementptr inbounds [4 x i8], ptr %3, i64 %34
  %36 = load float, ptr %35, align 4
  %37 = getelementptr [8 x i8], ptr %1, i64 %indvars.iv2
  %38 = getelementptr [8 x i8], ptr %37, i64 %31
  %39 = getelementptr i8, ptr %38, i64 8
  %40 = load float, ptr %39, align 4
  %41 = sub nsw i64 %indvars.iv2, %32
  %42 = getelementptr [8 x i8], ptr %1, i64 %41
  %43 = getelementptr i8, ptr %42, i64 8
  %44 = load float, ptr %43, align 4
  %45 = fadd float %40, %44
  %46 = fmul float %36, %45
  %47 = getelementptr [8 x i8], ptr %1, i64 %indvars.iv2
  %48 = getelementptr i8, ptr %47, i64 8
  store float %46, ptr %48, align 4
  %49 = load float, ptr %35, align 4
  %50 = getelementptr i8, ptr %38, i64 12
  %51 = load float, ptr %50, align 4
  %52 = getelementptr i8, ptr %42, i64 12
  %53 = load float, ptr %52, align 4
  %54 = fadd float %51, %53
  %55 = fmul float %49, %54
  %56 = getelementptr i8, ptr %47, i64 12
  store float %55, ptr %56, align 4
  br label %57

57:                                               ; preds = %33
  %indvars.iv.next3 = add nsw i64 %indvars.iv2, %30
  %.not = icmp sgt i64 %indvars.iv.next3, %26
  br i1 %.not, label %58, label %33, !llvm.loop !11

58:                                               ; preds = %57
  %59 = add nsw i32 %.02, 1
  %60 = call i32 @Min0(i32 noundef %59, i32 noundef 25)
  br label %61

61:                                               ; preds = %58
  %62 = icmp sgt i32 %.0, 3
  br i1 %62, label %27, label %63, !llvm.loop !12

63:                                               ; preds = %61
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Fft(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, float noundef %4) #0 {
  %6 = sdiv i32 %0, 2
  %7 = sext i32 %6 to i64
  %8 = sext i32 %6 to i64
  %smax8 = call i32 @llvm.smax.i32(i32 %0, i32 1)
  %9 = add nuw i32 %smax8, 1
  br label %10

10:                                               ; preds = %69, %5
  %.01 = phi i32 [ 1, %5 ], [ %70, %69 ]
  %11 = sext i32 %.01 to i64
  br label %12

12:                                               ; preds = %60, %10
  %indvars.iv2 = phi i64 [ %indvars.iv.next3, %60 ], [ %11, %10 ]
  %.04 = phi i64 [ %indvars.iv.next, %60 ], [ 1, %10 ]
  %.02 = phi i32 [ %61, %60 ], [ 0, %10 ]
  %sext = shl i64 %.04, 32
  %13 = ashr exact i64 %sext, 32
  %14 = sext i32 %.02 to i64
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv2, i64 %13)
  br label %15

15:                                               ; preds = %58, %12
  %indvars.iv = phi i64 [ %indvars.iv.next, %58 ], [ %13, %12 ]
  %16 = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv
  %17 = load float, ptr %16, align 4
  %18 = getelementptr [8 x i8], ptr %1, i64 %indvars.iv
  %19 = getelementptr [8 x i8], ptr %18, i64 %7
  %20 = load float, ptr %19, align 4
  %21 = fadd float %17, %20
  %22 = getelementptr [8 x i8], ptr %2, i64 %indvars.iv
  %23 = getelementptr [8 x i8], ptr %22, i64 %14
  store float %21, ptr %23, align 4
  %24 = getelementptr inbounds nuw i8, ptr %16, i64 4
  %25 = load float, ptr %24, align 4
  %26 = getelementptr inbounds nuw i8, ptr %19, i64 4
  %27 = load float, ptr %26, align 4
  %28 = fadd float %25, %27
  %29 = getelementptr inbounds nuw i8, ptr %23, i64 4
  store float %28, ptr %29, align 4
  %30 = sext i32 %.02 to i64
  %31 = getelementptr [8 x i8], ptr %3, i64 %30
  %32 = getelementptr i8, ptr %31, i64 8
  %33 = load float, ptr %32, align 4
  %34 = load float, ptr %16, align 4
  %35 = load float, ptr %19, align 4
  %36 = fsub float %34, %35
  %37 = getelementptr i8, ptr %31, i64 12
  %38 = load float, ptr %37, align 4
  %39 = load float, ptr %24, align 4
  %40 = load float, ptr %26, align 4
  %41 = fsub float %39, %40
  %42 = fneg float %41
  %43 = fmul float %38, %42
  %44 = call float @llvm.fmuladd.f32(float %33, float %36, float %43)
  %45 = getelementptr [8 x i8], ptr %2, i64 %indvars.iv
  %46 = getelementptr [8 x i8], ptr %45, i64 %indvars.iv2
  store float %44, ptr %46, align 4
  %47 = load float, ptr %32, align 4
  %48 = load float, ptr %24, align 4
  %49 = load float, ptr %26, align 4
  %50 = fsub float %48, %49
  %51 = load float, ptr %37, align 4
  %52 = load float, ptr %16, align 4
  %53 = load float, ptr %19, align 4
  %54 = fsub float %52, %53
  %55 = fmul float %51, %54
  %56 = call float @llvm.fmuladd.f32(float %47, float %50, float %55)
  %57 = getelementptr inbounds nuw i8, ptr %46, i64 4
  store float %56, ptr %57, align 4
  br label %58

58:                                               ; preds = %15
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv, %smax
  br i1 %exitcond.not, label %59, label %15, !llvm.loop !13

59:                                               ; preds = %58
  br label %60

60:                                               ; preds = %59
  %indvars.iv.next3 = add nsw i64 %indvars.iv2, %11
  %.not = icmp sgt i64 %indvars.iv.next3, %8
  %61 = trunc nsw i64 %indvars.iv2 to i32
  br i1 %.not, label %62, label %12, !llvm.loop !14

62:                                               ; preds = %60
  %wide.trip.count = zext i32 %9 to i64
  br label %63

63:                                               ; preds = %67, %62
  %indvars.iv5 = phi i64 [ %indvars.iv.next6, %67 ], [ 1, %62 ]
  %64 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv5
  %65 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv5
  %66 = load i64, ptr %65, align 4
  store i64 %66, ptr %64, align 4
  br label %67

67:                                               ; preds = %63
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5, 1
  %exitcond9.not = icmp eq i64 %indvars.iv.next6, %wide.trip.count
  br i1 %exitcond9.not, label %68, label %63, !llvm.loop !15

68:                                               ; preds = %67
  br label %69

69:                                               ; preds = %68
  %70 = shl nsw i32 %.01, 1
  %.not16 = icmp sgt i32 %70, %6
  br i1 %.not16, label %71, label %10, !llvm.loop !16

71:                                               ; preds = %69
  %smax13 = call i32 @llvm.smax.i32(i32 %0, i32 0)
  %72 = add nuw i32 %smax13, 1
  %wide.trip.count14 = zext i32 %72 to i64
  br label %73

73:                                               ; preds = %82, %71
  %indvars.iv10 = phi i64 [ %indvars.iv.next11, %82 ], [ 1, %71 ]
  %exitcond15.not = icmp eq i64 %indvars.iv10, %wide.trip.count14
  br i1 %exitcond15.not, label %83, label %74

74:                                               ; preds = %73
  %75 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv10
  %76 = load float, ptr %75, align 4
  %77 = fmul float %4, %76
  store float %77, ptr %75, align 4
  %78 = fneg float %4
  %79 = getelementptr inbounds nuw i8, ptr %75, i64 4
  %80 = load float, ptr %79, align 4
  %81 = fmul float %80, %78
  store float %81, ptr %79, align 4
  br label %82

82:                                               ; preds = %74
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1
  br label %73, !llvm.loop !17

83:                                               ; preds = %73
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

2:                                                ; preds = %13, %0
  %indvars.iv = phi i64 [ %indvars.iv.next, %13 ], [ 1, %0 ]
  %exitcond.not = icmp eq i64 %indvars.iv, 257
  br i1 %exitcond.not, label %14, label %3

3:                                                ; preds = %2
  %4 = load i32, ptr @seed, align 4
  store i32 %4, ptr %1, align 4
  call void @Uniform11(ptr noundef nonnull %1, ptr noundef nonnull @zr)
  %5 = load i32, ptr %1, align 4
  store i32 %5, ptr @seed, align 4
  call void @Uniform11(ptr noundef nonnull %1, ptr noundef nonnull @zi)
  %6 = load i32, ptr %1, align 4
  store i32 %6, ptr @seed, align 4
  %7 = load float, ptr @zr, align 4
  %8 = call float @llvm.fmuladd.f32(float %7, float 2.000000e+01, float -1.000000e+01)
  %9 = getelementptr inbounds nuw [8 x i8], ptr @z, i64 %indvars.iv
  store float %8, ptr %9, align 8
  %10 = load float, ptr @zi, align 4
  %11 = call float @llvm.fmuladd.f32(float %10, float 2.000000e+01, float -1.000000e+01)
  %12 = getelementptr inbounds nuw i8, ptr %9, i64 4
  store float %11, ptr %12, align 4
  br label %13

13:                                               ; preds = %3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %2, !llvm.loop !18

14:                                               ; preds = %2
  br label %15

15:                                               ; preds = %17, %14
  %.1 = phi i32 [ 1, %14 ], [ %18, %17 ]
  %exitcond2.not = icmp eq i32 %.1, 21
  br i1 %exitcond2.not, label %19, label %16

16:                                               ; preds = %15
  call void @Fft(i32 noundef 256, ptr noundef nonnull @z, ptr noundef nonnull @w, ptr noundef nonnull @e, float noundef 6.250000e-02)
  br label %17

17:                                               ; preds = %16
  %18 = add nuw nsw i32 %.1, 1
  br label %15, !llvm.loop !19

19:                                               ; preds = %15
  call void @Printcomplex(ptr noundef nonnull @z, i32 noundef 1, i32 noundef 256, i32 noundef 17)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %3, %0
  %.0 = phi i32 [ 0, %0 ], [ %4, %3 ]
  %exitcond.not = icmp eq i32 %.0, 10
  br i1 %exitcond.not, label %5, label %2

2:                                                ; preds = %1
  call void @Oscar()
  br label %3

3:                                                ; preds = %2
  %4 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !20

5:                                                ; preds = %1
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

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
