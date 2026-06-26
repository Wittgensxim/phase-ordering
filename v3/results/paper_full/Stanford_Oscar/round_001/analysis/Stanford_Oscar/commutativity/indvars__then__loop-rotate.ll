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

2:                                                ; preds = %1, %20
  %.04 = phi float [ %0, %1 ], [ %4, %20 ]
  %.013 = phi i32 [ 2, %1 ], [ %21, %20 ]
  %.022 = phi i32 [ 1, %1 ], [ %3, %20 ]
  %.031 = phi float [ 1.000000e+00, %1 ], [ %.1, %20 ]
  %3 = mul nsw i32 %.022, %.013
  %4 = fmul float %.04, %0
  %5 = and i32 %.013, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %19

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

18:                                               ; preds = %14, %10
  %.2 = phi float [ %13, %10 ], [ %17, %14 ]
  br label %19

19:                                               ; preds = %18, %2
  %.1 = phi float [ %.2, %18 ], [ %.031, %2 ]
  br label %20

20:                                               ; preds = %19
  %21 = add nuw nsw i32 %.013, 1
  %exitcond = icmp ne i32 %21, 11
  br i1 %exitcond, label %2, label %22, !llvm.loop !7

22:                                               ; preds = %20
  %.03.lcssa = phi float [ %.1, %20 ]
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

6:                                                ; preds = %26, %4
  %.0 = phi i32 [ %1, %4 ], [ %25, %26 ]
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
  br label %26

26:                                               ; preds = %6
  %27 = icmp sle i32 %25, %2
  br i1 %27, label %6, label %28, !llvm.loop !9

28:                                               ; preds = %26
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

4:                                                ; preds = %2, %11
  %.036 = phi float [ 4.000000e+00, %2 ], [ %10, %11 ]
  %indvars.iv5 = phi i64 [ 1, %2 ], [ %indvars.iv.next, %11 ]
  %5 = fdiv float f0x40490FDB, %.036
  %6 = call float @Cos(float noundef %5)
  %7 = fmul float 2.000000e+00, %6
  %8 = fdiv float 1.000000e+00, %7
  %9 = getelementptr inbounds [26 x float], ptr %3, i64 0, i64 %indvars.iv5
  store float %8, ptr %9, align 4
  %10 = fadd float %.036, %.036
  br label %11

11:                                               ; preds = %4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv5, 1
  %exitcond = icmp ne i64 %indvars.iv.next, 26
  br i1 %exitcond, label %4, label %12, !llvm.loop !10

12:                                               ; preds = %11
  %13 = sdiv i32 %0, 2
  %14 = sdiv i32 %13, 2
  %15 = getelementptr inbounds %struct.complex, ptr %1, i64 1
  store float 1.000000e+00, ptr %15, align 4
  %16 = getelementptr inbounds nuw %struct.complex, ptr %15, i32 0, i32 1
  store float 0.000000e+00, ptr %16, align 4
  %17 = add nsw i32 %14, 1
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.complex, ptr %1, i64 %18
  store float 0.000000e+00, ptr %19, align 4
  %20 = getelementptr inbounds nuw %struct.complex, ptr %19, i32 0, i32 1
  store float 1.000000e+00, ptr %20, align 4
  %21 = add nsw i32 %13, 1
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.complex, ptr %1, i64 %22
  store float -1.000000e+00, ptr %23, align 4
  %24 = getelementptr inbounds nuw %struct.complex, ptr %23, i32 0, i32 1
  store float 0.000000e+00, ptr %24, align 4
  %25 = sext i32 %13 to i64
  br label %26

26:                                               ; preds = %61, %12
  %.02 = phi i32 [ 1, %12 ], [ %60, %61 ]
  %.0 = phi i32 [ %14, %12 ], [ %27, %61 ]
  %27 = sdiv i32 %.0, 2
  %28 = sext i32 %27 to i64
  %29 = sext i32 %.0 to i64
  %30 = sext i32 %27 to i64
  %31 = sext i32 %27 to i64
  br label %32

32:                                               ; preds = %56, %26
  %indvars.iv2 = phi i64 [ %indvars.iv.next3, %56 ], [ %28, %26 ]
  %33 = sext i32 %.02 to i64
  %34 = getelementptr inbounds [26 x float], ptr %3, i64 0, i64 %33
  %35 = load float, ptr %34, align 4
  %36 = add nsw i64 %indvars.iv2, %30
  %37 = add nsw i64 %36, 1
  %38 = getelementptr inbounds %struct.complex, ptr %1, i64 %37
  %39 = load float, ptr %38, align 4
  %40 = sub nsw i64 %indvars.iv2, %31
  %41 = add nsw i64 %40, 1
  %42 = getelementptr inbounds %struct.complex, ptr %1, i64 %41
  %43 = load float, ptr %42, align 4
  %44 = fadd float %39, %43
  %45 = fmul float %35, %44
  %46 = add nsw i64 %indvars.iv2, 1
  %47 = getelementptr inbounds %struct.complex, ptr %1, i64 %46
  store float %45, ptr %47, align 4
  %48 = load float, ptr %34, align 4
  %49 = getelementptr inbounds nuw %struct.complex, ptr %38, i32 0, i32 1
  %50 = load float, ptr %49, align 4
  %51 = getelementptr inbounds nuw %struct.complex, ptr %42, i32 0, i32 1
  %52 = load float, ptr %51, align 4
  %53 = fadd float %50, %52
  %54 = fmul float %48, %53
  %55 = getelementptr inbounds nuw %struct.complex, ptr %47, i32 0, i32 1
  store float %54, ptr %55, align 4
  %indvars.iv.next3 = add nsw i64 %indvars.iv2, %29
  br label %56

56:                                               ; preds = %32
  %57 = icmp sle i64 %indvars.iv.next3, %25
  br i1 %57, label %32, label %58, !llvm.loop !11

58:                                               ; preds = %56
  %59 = add nsw i32 %.02, 1
  %60 = call i32 @Min0(i32 noundef %59, i32 noundef 25)
  br label %61

61:                                               ; preds = %58
  %62 = icmp sgt i32 %27, 1
  br i1 %62, label %26, label %63, !llvm.loop !12

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

10:                                               ; preds = %72, %5
  %.01 = phi i32 [ 1, %5 ], [ %71, %72 ]
  %11 = sext i32 %.01 to i64
  br label %12

12:                                               ; preds = %62, %10
  %indvars.iv2 = phi i64 [ %indvars.iv.next3, %62 ], [ %11, %10 ]
  %.04 = phi i32 [ 1, %10 ], [ %61, %62 ]
  %.02 = phi i32 [ 0, %10 ], [ %64, %62 ]
  %13 = sext i32 %.04 to i64
  %14 = sext i32 %.02 to i64
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv2, i64 %13)
  %15 = add i64 %smax, 1
  br label %16

16:                                               ; preds = %59, %12
  %indvars.iv = phi i64 [ %indvars.iv.next, %59 ], [ %13, %12 ]
  %17 = getelementptr inbounds %struct.complex, ptr %1, i64 %indvars.iv
  %18 = load float, ptr %17, align 4
  %19 = add nsw i64 %7, %indvars.iv
  %20 = getelementptr inbounds %struct.complex, ptr %1, i64 %19
  %21 = load float, ptr %20, align 4
  %22 = fadd float %18, %21
  %23 = add nsw i64 %indvars.iv, %14
  %24 = getelementptr inbounds %struct.complex, ptr %2, i64 %23
  store float %22, ptr %24, align 4
  %25 = getelementptr inbounds nuw %struct.complex, ptr %17, i32 0, i32 1
  %26 = load float, ptr %25, align 4
  %27 = getelementptr inbounds nuw %struct.complex, ptr %20, i32 0, i32 1
  %28 = load float, ptr %27, align 4
  %29 = fadd float %26, %28
  %30 = getelementptr inbounds nuw %struct.complex, ptr %24, i32 0, i32 1
  store float %29, ptr %30, align 4
  %31 = add nsw i32 %.02, 1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.complex, ptr %3, i64 %32
  %34 = load float, ptr %33, align 4
  %35 = load float, ptr %17, align 4
  %36 = load float, ptr %20, align 4
  %37 = fsub float %35, %36
  %38 = getelementptr inbounds nuw %struct.complex, ptr %33, i32 0, i32 1
  %39 = load float, ptr %38, align 4
  %40 = load float, ptr %25, align 4
  %41 = load float, ptr %27, align 4
  %42 = fsub float %40, %41
  %43 = fmul float %39, %42
  %44 = fneg float %43
  %45 = call float @llvm.fmuladd.f32(float %34, float %37, float %44)
  %46 = add nsw i64 %indvars.iv, %indvars.iv2
  %47 = getelementptr inbounds %struct.complex, ptr %2, i64 %46
  store float %45, ptr %47, align 4
  %48 = load float, ptr %33, align 4
  %49 = load float, ptr %25, align 4
  %50 = load float, ptr %27, align 4
  %51 = fsub float %49, %50
  %52 = load float, ptr %38, align 4
  %53 = load float, ptr %17, align 4
  %54 = load float, ptr %20, align 4
  %55 = fsub float %53, %54
  %56 = fmul float %52, %55
  %57 = call float @llvm.fmuladd.f32(float %48, float %51, float %56)
  %58 = getelementptr inbounds nuw %struct.complex, ptr %47, i32 0, i32 1
  store float %57, ptr %58, align 4
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %59

59:                                               ; preds = %16
  %exitcond = icmp ne i64 %indvars.iv.next, %15
  br i1 %exitcond, label %16, label %60, !llvm.loop !13

60:                                               ; preds = %59
  %.lcssa.wide = phi i64 [ %indvars.iv.next, %59 ]
  %61 = trunc nsw i64 %.lcssa.wide to i32
  %indvars.iv.next3 = add nsw i64 %indvars.iv2, %11
  br label %62

62:                                               ; preds = %60
  %63 = icmp sle i64 %indvars.iv.next3, %8
  %64 = trunc nsw i64 %indvars.iv2 to i32
  br i1 %63, label %12, label %65, !llvm.loop !14

65:                                               ; preds = %62
  %wide.trip.count = zext i32 %9 to i64
  br label %66

66:                                               ; preds = %69, %65
  %indvars.iv5 = phi i64 [ %indvars.iv.next6, %69 ], [ 1, %65 ]
  %67 = getelementptr inbounds %struct.complex, ptr %1, i64 %indvars.iv5
  %68 = getelementptr inbounds %struct.complex, ptr %2, i64 %indvars.iv5
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %67, ptr align 4 %68, i64 8, i1 false)
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5, 1
  br label %69

69:                                               ; preds = %66
  %exitcond9 = icmp ne i64 %indvars.iv.next6, %wide.trip.count
  br i1 %exitcond9, label %66, label %70, !llvm.loop !15

70:                                               ; preds = %69
  %71 = add nsw i32 %.01, %.01
  br label %72

72:                                               ; preds = %70
  %73 = icmp sle i32 %71, %6
  br i1 %73, label %10, label %74, !llvm.loop !16

74:                                               ; preds = %72
  %smax13 = call i32 @llvm.smax.i32(i32 %0, i32 0)
  %75 = add nuw i32 %smax13, 1
  %wide.trip.count14 = zext i32 %75 to i64
  %exitcond1516 = icmp ne i64 1, %wide.trip.count14
  br i1 %exitcond1516, label %.lr.ph, label %85

.lr.ph:                                           ; preds = %74
  br label %76

76:                                               ; preds = %.lr.ph, %84
  %indvars.iv1017 = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next11, %84 ]
  %77 = getelementptr inbounds %struct.complex, ptr %1, i64 %indvars.iv1017
  %78 = load float, ptr %77, align 4
  %79 = fmul float %4, %78
  store float %79, ptr %77, align 4
  %80 = fneg float %4
  %81 = getelementptr inbounds nuw %struct.complex, ptr %77, i32 0, i32 1
  %82 = load float, ptr %81, align 4
  %83 = fmul float %80, %82
  store float %83, ptr %81, align 4
  br label %84

84:                                               ; preds = %76
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv1017, 1
  %exitcond15 = icmp ne i64 %indvars.iv.next11, %wide.trip.count14
  br i1 %exitcond15, label %76, label %._crit_edge, !llvm.loop !17

._crit_edge:                                      ; preds = %84
  br label %85

85:                                               ; preds = %._crit_edge, %74
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

2:                                                ; preds = %0, %12
  %indvars.iv3 = phi i64 [ 1, %0 ], [ %indvars.iv.next, %12 ]
  %3 = load i32, ptr @seed, align 4
  store i32 %3, ptr %1, align 4
  call void @Uniform11(ptr noundef %1, ptr noundef @zr)
  %4 = load i32, ptr %1, align 4
  store i32 %4, ptr @seed, align 4
  call void @Uniform11(ptr noundef %1, ptr noundef @zi)
  %5 = load i32, ptr %1, align 4
  store i32 %5, ptr @seed, align 4
  %6 = load float, ptr @zr, align 4
  %7 = call float @llvm.fmuladd.f32(float 2.000000e+01, float %6, float -1.000000e+01)
  %8 = getelementptr inbounds [257 x %struct.complex], ptr @z, i64 0, i64 %indvars.iv3
  store float %7, ptr %8, align 8
  %9 = load float, ptr @zi, align 4
  %10 = call float @llvm.fmuladd.f32(float 2.000000e+01, float %9, float -1.000000e+01)
  %11 = getelementptr inbounds nuw %struct.complex, ptr %8, i32 0, i32 1
  store float %10, ptr %11, align 4
  br label %12

12:                                               ; preds = %2
  %indvars.iv.next = add nuw nsw i64 %indvars.iv3, 1
  %exitcond = icmp ne i64 %indvars.iv.next, 257
  br i1 %exitcond, label %2, label %13, !llvm.loop !18

13:                                               ; preds = %12
  br label %14

14:                                               ; preds = %13, %15
  %.14 = phi i32 [ 1, %13 ], [ %16, %15 ]
  call void @Fft(i32 noundef 256, ptr noundef @z, ptr noundef @w, ptr noundef @e, float noundef 6.250000e-02)
  br label %15

15:                                               ; preds = %14
  %16 = add nuw nsw i32 %.14, 1
  %exitcond2 = icmp ne i32 %16, 21
  br i1 %exitcond2, label %14, label %17, !llvm.loop !19

17:                                               ; preds = %15
  call void @Printcomplex(ptr noundef @z, i32 noundef 1, i32 noundef 256, i32 noundef 17)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %0, %2
  %.01 = phi i32 [ 0, %0 ], [ %3, %2 ]
  call void @Oscar()
  br label %2

2:                                                ; preds = %1
  %3 = add nuw nsw i32 %.01, 1
  %exitcond = icmp ne i32 %3, 10
  br i1 %exitcond, label %1, label %4, !llvm.loop !20

4:                                                ; preds = %2
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
