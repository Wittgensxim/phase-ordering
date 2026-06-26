; ModuleID = 'results\paper_full\Stanford_Oscar\round_005\output.ll'
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

2:                                                ; preds = %18, %1
  %.04 = phi float [ %0, %1 ], [ %4, %18 ]
  %.013 = phi i32 [ 2, %1 ], [ %19, %18 ]
  %.022 = phi i32 [ 1, %1 ], [ %3, %18 ]
  %.031 = phi float [ 1.000000e+00, %1 ], [ %.1, %18 ]
  %3 = mul nsw i32 %.022, %.013
  %4 = fmul float %.04, %0
  %5 = and i32 %.013, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %18

7:                                                ; preds = %2
  %8 = and i32 %.013, 3
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %7
  %11 = sitofp i32 %3 to float
  %12 = fdiv float %4, %11
  %13 = fadd float %.031, %12
  br label %18

14:                                               ; preds = %7
  %15 = sitofp i32 %3 to float
  %16 = fdiv float %4, %15
  %17 = fsub float %.031, %16
  br label %18

18:                                               ; preds = %10, %14, %2
  %.1 = phi float [ %.031, %2 ], [ %13, %10 ], [ %17, %14 ]
  %19 = add nuw nsw i32 %.013, 1
  %exitcond = icmp ne i32 %19, 11
  br i1 %exitcond, label %2, label %20, !llvm.loop !7

20:                                               ; preds = %18
  %.1.lcssa = phi float [ %.1, %18 ]
  ret float %.1.lcssa
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
  %.0 = phi i32 [ %1, %4 ], [ %25, %6 ]
  %7 = sext i32 %.0 to i64
  %8 = getelementptr inbounds %struct.complex, ptr %0, i64 %7
  %9 = load float, ptr %8, align 4
  %10 = fpext float %9 to double
  %11 = getelementptr inbounds nuw %struct.complex, ptr %8, i32 0, i32 1
  %12 = load float, ptr %11, align 4
  %13 = fpext float %12 to double
  %14 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, double noundef %10, double noundef %13)
  %15 = add nsw i32 %.0, %3
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.complex, ptr %0, i64 %16
  %18 = load float, ptr %17, align 4
  %19 = fpext float %18 to double
  %20 = getelementptr inbounds nuw %struct.complex, ptr %17, i32 0, i32 1
  %21 = load float, ptr %20, align 4
  %22 = fpext float %21 to double
  %23 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, double noundef %19, double noundef %22)
  %24 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %25 = add nsw i32 %15, %3
  %26 = icmp sle i32 %25, %2
  br i1 %26, label %6, label %27, !llvm.loop !9

27:                                               ; preds = %6
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

4:                                                ; preds = %4, %2
  %indvars.iv = phi i64 [ %indvars.iv.next, %4 ], [ 1, %2 ]
  %.032 = phi float [ 4.000000e+00, %2 ], [ %10, %4 ]
  %5 = fdiv float f0x40490FDB, %.032
  %6 = call float @Cos(float noundef %5)
  %7 = fmul float 2.000000e+00, %6
  %8 = fdiv float 1.000000e+00, %7
  %9 = getelementptr inbounds [26 x float], ptr %3, i64 0, i64 %indvars.iv
  store float %8, ptr %9, align 4
  %10 = fadd float %.032, %.032
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp ne i64 %indvars.iv.next, 26
  br i1 %exitcond, label %4, label %11, !llvm.loop !10

11:                                               ; preds = %4
  %12 = sdiv i32 %0, 2
  %13 = sdiv i32 %12, 2
  %14 = getelementptr inbounds %struct.complex, ptr %1, i64 1
  store float 1.000000e+00, ptr %14, align 4
  %15 = getelementptr inbounds nuw %struct.complex, ptr %14, i32 0, i32 1
  store float 0.000000e+00, ptr %15, align 4
  %16 = add nsw i32 %13, 1
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.complex, ptr %1, i64 %17
  store float 0.000000e+00, ptr %18, align 4
  %19 = getelementptr inbounds nuw %struct.complex, ptr %18, i32 0, i32 1
  store float 1.000000e+00, ptr %19, align 4
  %20 = add nsw i32 %12, 1
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.complex, ptr %1, i64 %21
  store float -1.000000e+00, ptr %22, align 4
  %23 = getelementptr inbounds nuw %struct.complex, ptr %22, i32 0, i32 1
  store float 0.000000e+00, ptr %23, align 4
  %24 = sext i32 %12 to i64
  br label %25

25:                                               ; preds = %50, %11
  %.02 = phi i32 [ 1, %11 ], [ %52, %50 ]
  %.0 = phi i32 [ %13, %11 ], [ %26, %50 ]
  %26 = sdiv i32 %.0, 2
  %.phi.trans.insert = sext i32 %.02 to i64
  %.phi.trans.insert3 = getelementptr inbounds [26 x float], ptr %3, i64 0, i64 %.phi.trans.insert
  %.pre = load float, ptr %.phi.trans.insert3, align 4
  %invariant.op = add i32 %26, 1
  %invariant.op1 = sub i32 1, %26
  %27 = sext i32 %26 to i64
  %28 = sext i32 %.0 to i64
  br label %29

29:                                               ; preds = %29, %25
  %indvars.iv2 = phi i64 [ %indvars.iv.next3, %29 ], [ %27, %25 ]
  %30 = trunc nsw i64 %indvars.iv2 to i32
  %.reass = add i32 %30, %invariant.op
  %31 = sext i32 %.reass to i64
  %32 = getelementptr inbounds %struct.complex, ptr %1, i64 %31
  %33 = load float, ptr %32, align 4
  %34 = trunc nsw i64 %indvars.iv2 to i32
  %.reass2 = add i32 %34, %invariant.op1
  %35 = sext i32 %.reass2 to i64
  %36 = getelementptr inbounds %struct.complex, ptr %1, i64 %35
  %37 = load float, ptr %36, align 4
  %38 = fadd float %33, %37
  %39 = fmul float %.pre, %38
  %40 = add nsw i64 %indvars.iv2, 1
  %41 = getelementptr inbounds %struct.complex, ptr %1, i64 %40
  store float %39, ptr %41, align 4
  %42 = getelementptr inbounds nuw %struct.complex, ptr %32, i32 0, i32 1
  %43 = load float, ptr %42, align 4
  %44 = getelementptr inbounds nuw %struct.complex, ptr %36, i32 0, i32 1
  %45 = load float, ptr %44, align 4
  %46 = fadd float %43, %45
  %47 = fmul float %.pre, %46
  %48 = getelementptr inbounds nuw %struct.complex, ptr %41, i32 0, i32 1
  store float %47, ptr %48, align 4
  %indvars.iv.next3 = add nsw i64 %indvars.iv2, %28
  %49 = icmp sle i64 %indvars.iv.next3, %24
  br i1 %49, label %29, label %50, !llvm.loop !11

50:                                               ; preds = %29
  %51 = add nsw i32 %.02, 1
  %52 = call i32 @Min0(i32 noundef %51, i32 noundef 25)
  %53 = icmp sgt i32 %26, 1
  br i1 %53, label %25, label %54, !llvm.loop !12

54:                                               ; preds = %50
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

10:                                               ; preds = %66, %5
  %.01 = phi i32 [ 1, %5 ], [ %67, %66 ]
  %11 = sext i32 %.01 to i64
  br label %12

12:                                               ; preds = %59, %10
  %indvars.iv2 = phi i64 [ %indvars.iv.next3, %59 ], [ %11, %10 ]
  %.04 = phi i32 [ 1, %10 ], [ %60, %59 ]
  %.02 = phi i32 [ 0, %10 ], [ %62, %59 ]
  %13 = add nsw i32 %.02, 1
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.complex, ptr %3, i64 %14
  %16 = getelementptr inbounds nuw %struct.complex, ptr %15, i32 0, i32 1
  %17 = sext i32 %.04 to i64
  %18 = sext i32 %.02 to i64
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv2, i64 %17)
  %19 = add i64 %smax, 1
  br label %20

20:                                               ; preds = %20, %12
  %indvars.iv = phi i64 [ %indvars.iv.next, %20 ], [ %17, %12 ]
  %21 = getelementptr inbounds %struct.complex, ptr %1, i64 %indvars.iv
  %22 = load float, ptr %21, align 4
  %23 = add nsw i64 %7, %indvars.iv
  %24 = getelementptr inbounds %struct.complex, ptr %1, i64 %23
  %25 = load float, ptr %24, align 4
  %26 = fadd float %22, %25
  %27 = add nsw i64 %indvars.iv, %18
  %28 = getelementptr inbounds %struct.complex, ptr %2, i64 %27
  store float %26, ptr %28, align 4
  %29 = getelementptr inbounds nuw %struct.complex, ptr %21, i32 0, i32 1
  %30 = load float, ptr %29, align 4
  %31 = getelementptr inbounds nuw %struct.complex, ptr %24, i32 0, i32 1
  %32 = load float, ptr %31, align 4
  %33 = fadd float %30, %32
  %34 = getelementptr inbounds nuw %struct.complex, ptr %28, i32 0, i32 1
  store float %33, ptr %34, align 4
  %35 = load float, ptr %15, align 4
  %36 = load float, ptr %21, align 4
  %37 = load float, ptr %24, align 4
  %38 = fsub float %36, %37
  %39 = load float, ptr %16, align 4
  %40 = load float, ptr %29, align 4
  %41 = load float, ptr %31, align 4
  %42 = fsub float %40, %41
  %43 = fmul float %39, %42
  %44 = fneg float %43
  %45 = call float @llvm.fmuladd.f32(float %35, float %38, float %44)
  %46 = add nsw i64 %indvars.iv, %indvars.iv2
  %47 = getelementptr inbounds %struct.complex, ptr %2, i64 %46
  store float %45, ptr %47, align 4
  %48 = load float, ptr %15, align 4
  %49 = load float, ptr %29, align 4
  %50 = load float, ptr %31, align 4
  %51 = fsub float %49, %50
  %52 = load float, ptr %16, align 4
  %53 = load float, ptr %21, align 4
  %54 = load float, ptr %24, align 4
  %55 = fsub float %53, %54
  %56 = fmul float %52, %55
  %57 = call float @llvm.fmuladd.f32(float %48, float %51, float %56)
  %58 = getelementptr inbounds nuw %struct.complex, ptr %47, i32 0, i32 1
  store float %57, ptr %58, align 4
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %exitcond = icmp ne i64 %indvars.iv.next, %19
  br i1 %exitcond, label %20, label %59, !llvm.loop !13

59:                                               ; preds = %20
  %.lcssa.wide = phi i64 [ %indvars.iv.next, %20 ]
  %60 = trunc nsw i64 %.lcssa.wide to i32
  %indvars.iv.next3 = add nsw i64 %indvars.iv2, %11
  %61 = icmp sle i64 %indvars.iv.next3, %8
  %62 = trunc nsw i64 %indvars.iv2 to i32
  br i1 %61, label %12, label %.preheader, !llvm.loop !14

.preheader:                                       ; preds = %59
  %wide.trip.count = zext i32 %9 to i64
  br label %63

63:                                               ; preds = %.preheader, %63
  %indvars.iv5 = phi i64 [ 1, %.preheader ], [ %indvars.iv.next6, %63 ]
  %64 = getelementptr inbounds %struct.complex, ptr %1, i64 %indvars.iv5
  %65 = getelementptr inbounds %struct.complex, ptr %2, i64 %indvars.iv5
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %64, ptr align 4 %65, i64 8, i1 false)
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5, 1
  %exitcond9 = icmp ne i64 %indvars.iv.next6, %wide.trip.count
  br i1 %exitcond9, label %63, label %66, !llvm.loop !15

66:                                               ; preds = %63
  %67 = add nsw i32 %.01, %.01
  %68 = icmp sle i32 %67, %6
  br i1 %68, label %10, label %69, !llvm.loop !16

69:                                               ; preds = %66
  %70 = icmp sle i32 1, %0
  br i1 %70, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %69
  %71 = fneg float %4
  %72 = add i32 %0, 1
  %wide.trip.count13 = zext i32 %72 to i64
  br label %73

73:                                               ; preds = %73, %.lr.ph
  %indvars.iv10 = phi i64 [ %indvars.iv.next11, %73 ], [ 1, %.lr.ph ]
  %74 = getelementptr inbounds %struct.complex, ptr %1, i64 %indvars.iv10
  %75 = load float, ptr %74, align 4
  %76 = fmul float %4, %75
  store float %76, ptr %74, align 4
  %77 = getelementptr inbounds nuw %struct.complex, ptr %74, i32 0, i32 1
  %78 = load float, ptr %77, align 4
  %79 = fmul float %71, %78
  store float %79, ptr %77, align 4
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1
  %exitcond14 = icmp ne i64 %indvars.iv.next11, %wide.trip.count13
  br i1 %exitcond14, label %73, label %._crit_edge.loopexit, !llvm.loop !17

._crit_edge.loopexit:                             ; preds = %73
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %69
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

2:                                                ; preds = %2, %0
  %indvars.iv = phi i64 [ %indvars.iv.next, %2 ], [ 1, %0 ]
  %3 = phi i32 [ 5767, %0 ], [ %5, %2 ]
  store i32 %3, ptr %1, align 4
  call void @Uniform11(ptr noundef %1, ptr noundef @zr)
  %4 = load i32, ptr %1, align 4
  store i32 %4, ptr @seed, align 4
  call void @Uniform11(ptr noundef %1, ptr noundef @zi)
  %5 = load i32, ptr %1, align 4
  store i32 %5, ptr @seed, align 4
  %6 = load float, ptr @zr, align 4
  %7 = call float @llvm.fmuladd.f32(float 2.000000e+01, float %6, float -1.000000e+01)
  %8 = getelementptr inbounds [257 x %struct.complex], ptr @z, i64 0, i64 %indvars.iv
  store float %7, ptr %8, align 8
  %9 = load float, ptr @zi, align 4
  %10 = call float @llvm.fmuladd.f32(float 2.000000e+01, float %9, float -1.000000e+01)
  %11 = getelementptr inbounds nuw %struct.complex, ptr %8, i32 0, i32 1
  store float %10, ptr %11, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp ne i64 %indvars.iv.next, 257
  br i1 %exitcond, label %2, label %.preheader, !llvm.loop !18

.preheader:                                       ; preds = %2
  br label %12

12:                                               ; preds = %.preheader, %12
  %.12 = phi i32 [ %13, %12 ], [ 1, %.preheader ]
  call void @Fft(i32 noundef 256, ptr noundef @z, ptr noundef @w, ptr noundef @e, float noundef 6.250000e-02)
  %13 = add nuw nsw i32 %.12, 1
  %exitcond2 = icmp ne i32 %13, 21
  br i1 %exitcond2, label %12, label %14, !llvm.loop !19

14:                                               ; preds = %12
  call void @Printcomplex(ptr noundef @z, i32 noundef 1, i32 noundef 256, i32 noundef 17)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %1, %0
  %.01 = phi i32 [ 0, %0 ], [ %2, %1 ]
  call void @Oscar()
  %2 = add nuw nsw i32 %.01, 1
  %exitcond = icmp ne i32 %2, 10
  br i1 %exitcond, label %1, label %3, !llvm.loop !20

3:                                                ; preds = %1
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
