; ModuleID = 'results\paper_full\Stanford_Oscar\round_001\output.ll'
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

2:                                                ; preds = %19, %1
  %.04 = phi float [ %0, %1 ], [ %4, %19 ]
  %.013 = phi i32 [ 2, %1 ], [ %20, %19 ]
  %.022 = phi i32 [ 1, %1 ], [ %3, %19 ]
  %.031 = phi float [ 1.000000e+00, %1 ], [ %.1, %19 ]
  %3 = mul nuw nsw i32 %.022, %.013
  %4 = fmul float %.04, %0
  %5 = and i32 %.013, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %19

7:                                                ; preds = %2
  %8 = and i32 %.013, 2
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %7
  %11 = uitofp nneg i32 %3 to float
  %12 = fdiv float %4, %11
  %13 = fadd float %.031, %12
  br label %18

14:                                               ; preds = %7
  %15 = uitofp nneg i32 %3 to float
  %16 = fdiv float %4, %15
  %17 = fsub float %.031, %16
  br label %18

18:                                               ; preds = %14, %10
  %.2 = phi float [ %13, %10 ], [ %17, %14 ]
  br label %19

19:                                               ; preds = %18, %2
  %.1 = phi float [ %.2, %18 ], [ %.031, %2 ]
  %20 = add nuw nsw i32 %.013, 1
  %exitcond.not = icmp eq i32 %20, 11
  br i1 %exitcond.not, label %21, label %2, !llvm.loop !7

21:                                               ; preds = %19
  ret float %.1
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

5:                                                ; preds = %5, %4
  %.0 = phi i32 [ %1, %4 ], [ %23, %5 ]
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
  %23 = add nsw i32 %14, %3
  %.not = icmp sgt i32 %23, %2
  br i1 %.not, label %24, label %5, !llvm.loop !9

24:                                               ; preds = %5
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

4:                                                ; preds = %4, %2
  %indvars.iv = phi i64 [ %indvars.iv.next, %4 ], [ 1, %2 ]
  %.032 = phi float [ %10, %4 ], [ 4.000000e+00, %2 ]
  %5 = fdiv float f0x40490FDB, %.032
  %6 = call float @Cos(float noundef %5)
  %7 = fmul float %6, 2.000000e+00
  %8 = fdiv float 1.000000e+00, %7
  %9 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  store float %8, ptr %9, align 4
  %10 = fadd float %.032, %.032
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 26
  br i1 %exitcond.not, label %11, label %4, !llvm.loop !10

11:                                               ; preds = %4
  %12 = sdiv i32 %0, 2
  %13 = sdiv i32 %0, 4
  %14 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float 1.000000e+00, ptr %14, align 4
  %15 = getelementptr inbounds nuw i8, ptr %1, i64 12
  store float 0.000000e+00, ptr %15, align 4
  %16 = sext i32 %13 to i64
  %17 = getelementptr [8 x i8], ptr %1, i64 %16
  %18 = getelementptr i8, ptr %17, i64 8
  store float 0.000000e+00, ptr %18, align 4
  %19 = getelementptr i8, ptr %17, i64 12
  store float 1.000000e+00, ptr %19, align 4
  %20 = sext i32 %12 to i64
  %21 = getelementptr [8 x i8], ptr %1, i64 %20
  %22 = getelementptr i8, ptr %21, i64 8
  store float -1.000000e+00, ptr %22, align 4
  %23 = getelementptr i8, ptr %21, i64 12
  store float 0.000000e+00, ptr %23, align 4
  %24 = sext i32 %12 to i64
  br label %25

25:                                               ; preds = %51, %11
  %.02 = phi i32 [ 1, %11 ], [ %53, %51 ]
  %.0 = phi i32 [ %13, %11 ], [ %26, %51 ]
  %26 = sdiv i32 %.0, 2
  %.phi.trans.insert = sext i32 %.02 to i64
  %.phi.trans.insert3 = getelementptr inbounds [4 x i8], ptr %3, i64 %.phi.trans.insert
  %.pre = load float, ptr %.phi.trans.insert3, align 4
  %27 = sext i32 %26 to i64
  %28 = sext i32 %.0 to i64
  %29 = sext i32 %26 to i64
  %30 = sext i32 %26 to i64
  br label %31

31:                                               ; preds = %31, %25
  %indvars.iv2 = phi i64 [ %indvars.iv.next3, %31 ], [ %27, %25 ]
  %32 = getelementptr [8 x i8], ptr %1, i64 %indvars.iv2
  %33 = getelementptr [8 x i8], ptr %32, i64 %29
  %34 = getelementptr i8, ptr %33, i64 8
  %35 = load float, ptr %34, align 4
  %36 = sub nsw i64 %indvars.iv2, %30
  %37 = getelementptr [8 x i8], ptr %1, i64 %36
  %38 = getelementptr i8, ptr %37, i64 8
  %39 = load float, ptr %38, align 4
  %40 = fadd float %35, %39
  %41 = fmul float %.pre, %40
  %42 = getelementptr [8 x i8], ptr %1, i64 %indvars.iv2
  %43 = getelementptr i8, ptr %42, i64 8
  store float %41, ptr %43, align 4
  %44 = getelementptr i8, ptr %33, i64 12
  %45 = load float, ptr %44, align 4
  %46 = getelementptr i8, ptr %37, i64 12
  %47 = load float, ptr %46, align 4
  %48 = fadd float %45, %47
  %49 = fmul float %.pre, %48
  %50 = getelementptr i8, ptr %42, i64 12
  store float %49, ptr %50, align 4
  %indvars.iv.next3 = add nsw i64 %indvars.iv2, %28
  %.not = icmp sgt i64 %indvars.iv.next3, %24
  br i1 %.not, label %51, label %31, !llvm.loop !11

51:                                               ; preds = %31
  %52 = add nsw i32 %.02, 1
  %53 = call i32 @Min0(i32 noundef %52, i32 noundef 25)
  %54 = icmp sgt i32 %.0, 3
  br i1 %54, label %25, label %55, !llvm.loop !12

55:                                               ; preds = %51
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

10:                                               ; preds = %65, %5
  %.01 = phi i32 [ 1, %5 ], [ %66, %65 ]
  %11 = sext i32 %.01 to i64
  br label %12

12:                                               ; preds = %58, %10
  %indvars.iv2 = phi i64 [ %indvars.iv.next3, %58 ], [ %11, %10 ]
  %.04 = phi i64 [ %indvars.iv.next, %58 ], [ 1, %10 ]
  %.02 = phi i32 [ %59, %58 ], [ 0, %10 ]
  %sext = shl i64 %.04, 32
  %13 = ashr exact i64 %sext, 32
  %14 = sext i32 %.02 to i64
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv2, i64 %13)
  br label %15

15:                                               ; preds = %15, %12
  %indvars.iv = phi i64 [ %indvars.iv.next, %15 ], [ %13, %12 ]
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
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv, %smax
  br i1 %exitcond.not, label %58, label %15, !llvm.loop !13

58:                                               ; preds = %15
  %indvars.iv.next3 = add nsw i64 %indvars.iv2, %11
  %.not = icmp sgt i64 %indvars.iv.next3, %8
  %59 = trunc nsw i64 %indvars.iv2 to i32
  br i1 %.not, label %60, label %12, !llvm.loop !14

60:                                               ; preds = %58
  %wide.trip.count = zext i32 %9 to i64
  br label %61

61:                                               ; preds = %61, %60
  %indvars.iv5 = phi i64 [ %indvars.iv.next6, %61 ], [ 1, %60 ]
  %62 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv5
  %63 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv5
  %64 = load i64, ptr %63, align 4
  store i64 %64, ptr %62, align 4
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5, 1
  %exitcond9.not = icmp eq i64 %indvars.iv.next6, %wide.trip.count
  br i1 %exitcond9.not, label %65, label %61, !llvm.loop !15

65:                                               ; preds = %61
  %66 = shl nsw i32 %.01, 1
  %.not15 = icmp sgt i32 %66, %6
  br i1 %.not15, label %67, label %10, !llvm.loop !16

67:                                               ; preds = %65
  %68 = icmp sgt i32 %0, 0
  br i1 %68, label %.lr.ph, label %78

.lr.ph:                                           ; preds = %67
  %69 = add nuw i32 %0, 1
  %wide.trip.count13 = zext i32 %69 to i64
  br label %70

70:                                               ; preds = %70, %.lr.ph
  %indvars.iv10 = phi i64 [ %indvars.iv.next11, %70 ], [ 1, %.lr.ph ]
  %71 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv10
  %72 = load float, ptr %71, align 4
  %73 = fmul float %4, %72
  store float %73, ptr %71, align 4
  %74 = fneg float %4
  %75 = getelementptr inbounds nuw i8, ptr %71, i64 4
  %76 = load float, ptr %75, align 4
  %77 = fmul float %76, %74
  store float %77, ptr %75, align 4
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1
  %exitcond14.not = icmp eq i64 %indvars.iv.next11, %wide.trip.count13
  br i1 %exitcond14.not, label %._crit_edge, label %70, !llvm.loop !17

._crit_edge:                                      ; preds = %70
  br label %78

78:                                               ; preds = %._crit_edge, %67
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

2:                                                ; preds = %2, %0
  %indvars.iv = phi i64 [ %indvars.iv.next, %2 ], [ 1, %0 ]
  %3 = phi i32 [ %5, %2 ], [ 5767, %0 ]
  store i32 %3, ptr %1, align 4
  call void @Uniform11(ptr noundef nonnull %1, ptr noundef nonnull @zr)
  %4 = load i32, ptr %1, align 4
  store i32 %4, ptr @seed, align 4
  call void @Uniform11(ptr noundef nonnull %1, ptr noundef nonnull @zi)
  %5 = load i32, ptr %1, align 4
  store i32 %5, ptr @seed, align 4
  %6 = load float, ptr @zr, align 4
  %7 = call float @llvm.fmuladd.f32(float %6, float 2.000000e+01, float -1.000000e+01)
  %8 = getelementptr inbounds nuw [8 x i8], ptr @z, i64 %indvars.iv
  store float %7, ptr %8, align 8
  %9 = load float, ptr @zi, align 4
  %10 = call float @llvm.fmuladd.f32(float %9, float 2.000000e+01, float -1.000000e+01)
  %11 = getelementptr inbounds nuw i8, ptr %8, i64 4
  store float %10, ptr %11, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 257
  br i1 %exitcond.not, label %12, label %2, !llvm.loop !18

12:                                               ; preds = %2
  br label %13

13:                                               ; preds = %13, %12
  %.12 = phi i32 [ 1, %12 ], [ %14, %13 ]
  call void @Fft(i32 noundef 256, ptr noundef nonnull @z, ptr noundef nonnull @w, ptr noundef nonnull @e, float noundef 6.250000e-02)
  %14 = add nuw nsw i32 %.12, 1
  %exitcond2.not = icmp eq i32 %14, 21
  br i1 %exitcond2.not, label %15, label %13, !llvm.loop !19

15:                                               ; preds = %13
  call void @Printcomplex(ptr noundef nonnull @z, i32 noundef 1, i32 noundef 256, i32 noundef 17)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %1, %0
  %.01 = phi i32 [ 0, %0 ], [ %2, %1 ]
  call void @Oscar()
  %2 = add nuw nsw i32 %.01, 1
  %exitcond.not = icmp eq i32 %2, 10
  br i1 %exitcond.not, label %3, label %1, !llvm.loop !20

3:                                                ; preds = %1
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
