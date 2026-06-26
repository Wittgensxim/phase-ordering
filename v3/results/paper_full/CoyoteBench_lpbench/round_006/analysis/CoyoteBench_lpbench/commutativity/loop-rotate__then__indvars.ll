; ModuleID = 'results\paper_full\CoyoteBench_lpbench\round_005\input.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/CoyoteBench/lpbench.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@.str = private unnamed_addr constant [4 x i8] c"-ga\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"\0Alpbench (Std. C) run time: %f\0A\0A\00", align 1
@seed = internal global i32 1325, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @matgen(ptr noundef %0, ptr noundef %1) #0 {
  br label %.preheader3

.preheader3:                                      ; preds = %2, %8
  %indvars.iv10 = phi i64 [ 0, %2 ], [ %indvars.iv.next11, %8 ]
  br label %3

.preheader2:                                      ; preds = %8
  br label %9

3:                                                ; preds = %.preheader3, %3
  %indvars.iv = phi i64 [ 0, %.preheader3 ], [ %indvars.iv.next, %3 ]
  %4 = call double @random_double()
  %5 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv10
  store double %4, ptr %7, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp ne i64 %indvars.iv.next, 2000
  br i1 %exitcond, label %3, label %8, !llvm.loop !7

8:                                                ; preds = %3
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1
  %exitcond13 = icmp ne i64 %indvars.iv.next11, 2000
  br i1 %exitcond13, label %.preheader3, label %.preheader2, !llvm.loop !9

.preheader1:                                      ; preds = %9
  br label %.preheader

9:                                                ; preds = %.preheader2, %9
  %indvars.iv14 = phi i64 [ 0, %.preheader2 ], [ %indvars.iv.next15, %9 ]
  %10 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv14
  store double 0.000000e+00, ptr %10, align 8
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14, 1
  %exitcond17 = icmp ne i64 %indvars.iv.next15, 2000
  br i1 %exitcond17, label %9, label %.preheader1, !llvm.loop !10

.preheader:                                       ; preds = %.preheader1, %19
  %indvars.iv22 = phi i64 [ 0, %.preheader1 ], [ %indvars.iv.next23, %19 ]
  br label %11

11:                                               ; preds = %.preheader, %11
  %indvars.iv18 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next19, %11 ]
  %12 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv22
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds nuw [8 x i8], ptr %13, i64 %indvars.iv18
  %15 = load double, ptr %14, align 8
  %16 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv18
  %17 = load double, ptr %16, align 8
  %18 = fadd double %17, %15
  store double %18, ptr %16, align 8
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1
  %exitcond21 = icmp ne i64 %indvars.iv.next19, 2000
  br i1 %exitcond21, label %11, label %19, !llvm.loop !11

19:                                               ; preds = %11
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1
  %exitcond25 = icmp ne i64 %indvars.iv.next23, 2000
  br i1 %exitcond25, label %.preheader, label %20, !llvm.loop !12

20:                                               ; preds = %19
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @idamax(i32 noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = icmp slt i32 %0, 1
  br i1 %5, label %40, label %6

6:                                                ; preds = %4
  %7 = icmp eq i32 %0, 1
  br i1 %7, label %40, label %8

8:                                                ; preds = %6
  %.not = icmp eq i32 %3, 1
  br i1 %.not, label %26, label %9

9:                                                ; preds = %8
  %10 = sext i32 %2 to i64
  %11 = getelementptr inbounds [8 x i8], ptr %1, i64 %10
  %12 = load double, ptr %11, align 8
  %13 = call double @llvm.fabs.f64(double %12)
  %14 = add i32 %3, 1
  %15 = icmp slt i32 1, %0
  br i1 %15, label %.lr.ph, label %.loopexit1

.lr.ph:                                           ; preds = %9
  %16 = sext i32 %14 to i64
  %17 = sext i32 %3 to i64
  %18 = sext i32 %2 to i64
  br label %19

19:                                               ; preds = %.lr.ph, %19
  %indvars.iv = phi i64 [ %16, %.lr.ph ], [ %indvars.iv.next, %19 ]
  %.25 = phi i32 [ 0, %.lr.ph ], [ %.3, %19 ]
  %.023 = phi i32 [ 1, %.lr.ph ], [ %25, %19 ]
  %.042 = phi double [ %13, %.lr.ph ], [ %.15, %19 ]
  %20 = add nsw i64 %indvars.iv, %18
  %21 = getelementptr inbounds [8 x i8], ptr %1, i64 %20
  %22 = load double, ptr %21, align 8
  %23 = call double @llvm.fabs.f64(double %22)
  %24 = fcmp ogt double %23, %.042
  %.15 = select i1 %24, double %23, double %.042
  %.3 = select i1 %24, i32 %.023, i32 %.25
  %indvars.iv.next = add nsw i64 %indvars.iv, %17
  %25 = add nuw nsw i32 %.023, 1
  %exitcond = icmp ne i32 %25, %0
  br i1 %exitcond, label %19, label %..loopexit1_crit_edge, !llvm.loop !13

26:                                               ; preds = %8
  %27 = sext i32 %2 to i64
  %28 = getelementptr inbounds [8 x i8], ptr %1, i64 %27
  %29 = load double, ptr %28, align 8
  %30 = call double @llvm.fabs.f64(double %29)
  %31 = icmp slt i32 1, %0
  br i1 %31, label %.lr.ph9, label %.loopexit

.lr.ph9:                                          ; preds = %26
  %32 = sext i32 %2 to i64
  %wide.trip.count = zext i32 %0 to i64
  br label %33

33:                                               ; preds = %.lr.ph9, %33
  %indvars.iv12 = phi i64 [ 1, %.lr.ph9 ], [ %indvars.iv.next13, %33 ]
  %.58 = phi i32 [ 0, %.lr.ph9 ], [ %.6, %33 ]
  %.266 = phi double [ %30, %.lr.ph9 ], [ %.37, %33 ]
  %34 = add nsw i64 %indvars.iv12, %32
  %35 = getelementptr inbounds [8 x i8], ptr %1, i64 %34
  %36 = load double, ptr %35, align 8
  %37 = call double @llvm.fabs.f64(double %36)
  %38 = fcmp ogt double %37, %.266
  %.37 = select i1 %38, double %37, double %.266
  %39 = trunc nuw nsw i64 %indvars.iv12 to i32
  %.6 = select i1 %38, i32 %39, i32 %.58
  %indvars.iv.next13 = add nuw nsw i64 %indvars.iv12, 1
  %exitcond15 = icmp ne i64 %indvars.iv.next13, %wide.trip.count
  br i1 %exitcond15, label %33, label %..loopexit_crit_edge, !llvm.loop !14

..loopexit_crit_edge:                             ; preds = %33
  %split10 = phi i32 [ %.6, %33 ]
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %26
  %.5.lcssa = phi i32 [ %split10, %..loopexit_crit_edge ], [ 0, %26 ]
  br label %40

..loopexit1_crit_edge:                            ; preds = %19
  %split = phi i32 [ %.3, %19 ]
  br label %.loopexit1

.loopexit1:                                       ; preds = %..loopexit1_crit_edge, %9
  %.2.lcssa = phi i32 [ %split, %..loopexit1_crit_edge ], [ 0, %9 ]
  br label %40

40:                                               ; preds = %.loopexit1, %.loopexit, %6, %4
  %.0 = phi i32 [ -1, %4 ], [ 0, %6 ], [ %.5.lcssa, %.loopexit ], [ %.2.lcssa, %.loopexit1 ]
  ret i32 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @dscal(i32 noundef %0, double noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = icmp sgt i32 %0, 0
  br i1 %6, label %7, label %27

7:                                                ; preds = %5
  %.not = icmp eq i32 %4, 1
  br i1 %.not, label %.preheader, label %10

.preheader:                                       ; preds = %7
  %8 = icmp slt i32 0, %0
  br i1 %8, label %.lr.ph4, label %.loopexit

.lr.ph4:                                          ; preds = %.preheader
  %9 = sext i32 %3 to i64
  %wide.trip.count = zext i32 %0 to i64
  br label %22

10:                                               ; preds = %7
  %11 = mul nsw i32 %0, %4
  %12 = icmp slt i32 0, %11
  br i1 %12, label %.lr.ph, label %.loopexit1

.lr.ph:                                           ; preds = %10
  %13 = sext i32 %4 to i64
  %14 = sext i32 %11 to i64
  %15 = sext i32 %3 to i64
  br label %16

16:                                               ; preds = %.lr.ph, %16
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %16 ]
  %17 = add nsw i64 %indvars.iv, %15
  %18 = getelementptr inbounds [8 x i8], ptr %2, i64 %17
  %19 = load double, ptr %18, align 8
  %20 = fmul double %19, %1
  store double %20, ptr %18, align 8
  %indvars.iv.next = add nsw i64 %indvars.iv, %13
  %21 = icmp slt i64 %indvars.iv.next, %14
  br i1 %21, label %16, label %..loopexit1_crit_edge, !llvm.loop !15

22:                                               ; preds = %.lr.ph4, %22
  %indvars.iv6 = phi i64 [ 0, %.lr.ph4 ], [ %indvars.iv.next7, %22 ]
  %23 = add nsw i64 %indvars.iv6, %9
  %24 = getelementptr inbounds [8 x i8], ptr %2, i64 %23
  %25 = load double, ptr %24, align 8
  %26 = fmul double %25, %1
  store double %26, ptr %24, align 8
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1
  %exitcond = icmp ne i64 %indvars.iv.next7, %wide.trip.count
  br i1 %exitcond, label %22, label %..loopexit_crit_edge, !llvm.loop !16

..loopexit_crit_edge:                             ; preds = %22
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %.preheader
  br label %27

..loopexit1_crit_edge:                            ; preds = %16
  br label %.loopexit1

.loopexit1:                                       ; preds = %..loopexit1_crit_edge, %10
  br label %27

27:                                               ; preds = %.loopexit1, %.loopexit, %5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @daxpy(i32 noundef %0, double noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7) #0 {
  %9 = icmp sgt i32 %0, 0
  %10 = fcmp une double %1, 0.000000e+00
  %or.cond = and i1 %9, %10
  br i1 %or.cond, label %11, label %47

11:                                               ; preds = %8
  %12 = icmp ne i32 %4, 1
  %13 = icmp ne i32 %7, 1
  %or.cond1 = or i1 %12, %13
  br i1 %or.cond1, label %17, label %.preheader

.preheader:                                       ; preds = %11
  %14 = icmp slt i32 0, %0
  br i1 %14, label %.lr.ph, label %.loopexit1

.lr.ph:                                           ; preds = %.preheader
  %15 = sext i32 %6 to i64
  %16 = sext i32 %3 to i64
  %wide.trip.count = zext i32 %0 to i64
  br label %39

17:                                               ; preds = %11
  %18 = icmp slt i32 %4, 0
  %19 = sub nsw i32 1, %0
  %20 = mul nsw i32 %19, %4
  %.01 = select i1 %18, i32 %20, i32 0
  %21 = icmp slt i32 %7, 0
  %22 = mul nsw i32 %19, %7
  %.0 = select i1 %21, i32 %22, i32 0
  %23 = icmp slt i32 0, %0
  br i1 %23, label %.lr.ph6, label %.loopexit

.lr.ph6:                                          ; preds = %17
  %24 = sext i32 %.0 to i64
  %25 = sext i32 %7 to i64
  %26 = sext i32 %6 to i64
  %27 = sext i32 %.01 to i64
  %28 = sext i32 %4 to i64
  %29 = sext i32 %3 to i64
  br label %30

30:                                               ; preds = %.lr.ph6, %30
  %indvars.iv10 = phi i64 [ %27, %.lr.ph6 ], [ %indvars.iv.next11, %30 ]
  %indvars.iv8 = phi i64 [ %24, %.lr.ph6 ], [ %indvars.iv.next9, %30 ]
  %.033 = phi i32 [ 0, %.lr.ph6 ], [ %38, %30 ]
  %31 = add nsw i64 %indvars.iv10, %29
  %32 = getelementptr inbounds [8 x i8], ptr %2, i64 %31
  %33 = load double, ptr %32, align 8
  %34 = add nsw i64 %indvars.iv8, %26
  %35 = getelementptr inbounds [8 x i8], ptr %5, i64 %34
  %36 = load double, ptr %35, align 8
  %37 = call double @llvm.fmuladd.f64(double %1, double %33, double %36)
  store double %37, ptr %35, align 8
  %indvars.iv.next11 = add nsw i64 %indvars.iv10, %28
  %indvars.iv.next9 = add nsw i64 %indvars.iv8, %25
  %38 = add nuw nsw i32 %.033, 1
  %exitcond15 = icmp ne i32 %38, %0
  br i1 %exitcond15, label %30, label %..loopexit_crit_edge, !llvm.loop !17

39:                                               ; preds = %.lr.ph, %39
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %39 ]
  %40 = add nsw i64 %indvars.iv, %16
  %41 = getelementptr inbounds [8 x i8], ptr %2, i64 %40
  %42 = load double, ptr %41, align 8
  %43 = add nsw i64 %indvars.iv, %15
  %44 = getelementptr inbounds [8 x i8], ptr %5, i64 %43
  %45 = load double, ptr %44, align 8
  %46 = call double @llvm.fmuladd.f64(double %1, double %42, double %45)
  store double %46, ptr %44, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp ne i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %39, label %..loopexit1_crit_edge, !llvm.loop !18

..loopexit_crit_edge:                             ; preds = %30
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %17
  br label %47

..loopexit1_crit_edge:                            ; preds = %39
  br label %.loopexit1

.loopexit1:                                       ; preds = %..loopexit1_crit_edge, %.preheader
  br label %47

47:                                               ; preds = %.loopexit1, %.loopexit, %8
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @dgefa(ptr noundef %0, ptr noundef %1) #0 {
  br label %3

3:                                                ; preds = %2, %35
  %indvars.iv8 = phi i64 [ 0, %2 ], [ %indvars.iv.next9, %35 ]
  %indvars.iv = phi i64 [ 1, %2 ], [ %indvars.iv.next, %35 ]
  %indvars10 = trunc i64 %indvars.iv8 to i32
  %4 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv8
  %5 = load ptr, ptr %4, align 8
  %indvars.iv.next9 = add nuw nsw i64 %indvars.iv8, 1
  %indvars = trunc i64 %indvars.iv.next9 to i32
  %6 = sub nuw nsw i32 2000, %indvars10
  %7 = trunc nuw nsw i64 %indvars.iv8 to i32
  %8 = call i32 @idamax(i32 noundef %6, ptr noundef %5, i32 noundef %7, i32 noundef 1)
  %9 = trunc nuw nsw i64 %indvars.iv8 to i32
  %10 = add nsw i32 %8, %9
  %11 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv8
  store i32 %10, ptr %11, align 4
  %12 = sext i32 %10 to i64
  %13 = getelementptr inbounds [8 x i8], ptr %5, i64 %12
  %14 = load double, ptr %13, align 8
  %15 = fcmp une double %14, 0.000000e+00
  br i1 %15, label %16, label %35

16:                                               ; preds = %3
  %.not = icmp eq i32 %8, 0
  br i1 %.not, label %._crit_edge, label %17

._crit_edge:                                      ; preds = %16
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv8
  %.pre = load double, ptr %.phi.trans.insert, align 8
  br label %20

17:                                               ; preds = %16
  %18 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv8
  %19 = load double, ptr %18, align 8
  store double %19, ptr %13, align 8
  store double %14, ptr %18, align 8
  br label %20

20:                                               ; preds = %17, %._crit_edge
  %21 = phi double [ %.pre, %._crit_edge ], [ %14, %17 ]
  %22 = fdiv double -1.000000e+00, %21
  %23 = sub nuw nsw i64 1999, %indvars.iv8
  %24 = trunc nuw nsw i64 %23 to i32
  call void @dscal(i32 noundef %24, double noundef %22, ptr noundef %5, i32 noundef %indvars, i32 noundef 1)
  br i1 true, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %20
  br label %25

25:                                               ; preds = %.lr.ph, %33
  %indvars.iv5 = phi i64 [ %indvars.iv, %.lr.ph ], [ %indvars.iv.next6, %33 ]
  %26 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv5
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr inbounds [8 x i8], ptr %27, i64 %12
  %29 = load double, ptr %28, align 8
  br i1 %.not, label %33, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds nuw [8 x i8], ptr %27, i64 %indvars.iv8
  %32 = load double, ptr %31, align 8
  store double %32, ptr %28, align 8
  store double %29, ptr %31, align 8
  br label %33

33:                                               ; preds = %30, %25
  %34 = trunc nuw nsw i64 %23 to i32
  call void @daxpy(i32 noundef %34, double noundef %29, ptr noundef %5, i32 noundef %indvars, i32 noundef 1, ptr noundef %27, i32 noundef %indvars, i32 noundef 1)
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5, 1
  %exitcond = icmp ne i64 %indvars.iv.next6, 2000
  br i1 %exitcond, label %25, label %..loopexit_crit_edge, !llvm.loop !19

..loopexit_crit_edge:                             ; preds = %33
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %20
  br label %35

35:                                               ; preds = %.loopexit, %3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond11 = icmp ne i64 %indvars.iv.next9, 1999
  br i1 %exitcond11, label %3, label %36, !llvm.loop !20

36:                                               ; preds = %35
  %37 = getelementptr inbounds nuw i8, ptr %1, i64 7996
  store i32 1999, ptr %37, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @dgesl(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  br label %4

.preheader:                                       ; preds = %14
  br label %19

4:                                                ; preds = %3, %14
  %indvars.iv = phi i64 [ 0, %3 ], [ %indvars.iv.next, %14 ]
  %5 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %6 = load i32, ptr %5, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [8 x i8], ptr %2, i64 %7
  %9 = load double, ptr %8, align 8
  %10 = zext i32 %6 to i64
  %.not = icmp eq i64 %10, %indvars.iv
  br i1 %.not, label %14, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %13 = load double, ptr %12, align 8
  store double %13, ptr %8, align 8
  store double %9, ptr %12, align 8
  br label %14

14:                                               ; preds = %11, %4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %indvars = trunc i64 %indvars.iv.next to i32
  %15 = sub nuw nsw i64 1999, %indvars.iv
  %16 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %17 = load ptr, ptr %16, align 8
  %18 = trunc nuw nsw i64 %15 to i32
  call void @daxpy(i32 noundef %18, double noundef %9, ptr noundef %17, i32 noundef %indvars, i32 noundef 1, ptr noundef %2, i32 noundef %indvars, i32 noundef 1)
  %exitcond = icmp ne i64 %indvars.iv.next, 1999
  br i1 %exitcond, label %4, label %.preheader, !llvm.loop !21

19:                                               ; preds = %.preheader, %19
  %indvars.iv4 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next5, %19 ]
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv4, 1
  %20 = sub nuw nsw i64 1999, %indvars.iv4
  %21 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %20
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds nuw [8 x i8], ptr %22, i64 %20
  %24 = load double, ptr %23, align 8
  %25 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %20
  %26 = load double, ptr %25, align 8
  %27 = fdiv double %26, %24
  store double %27, ptr %25, align 8
  %28 = fneg double %27
  %29 = load ptr, ptr %21, align 8
  %30 = trunc nuw nsw i64 %20 to i32
  call void @daxpy(i32 noundef %30, double noundef %28, ptr noundef %29, i32 noundef 0, i32 noundef 1, ptr noundef %2, i32 noundef 0, i32 noundef 1)
  %exitcond8 = icmp ne i64 %indvars.iv.next5, 2000
  br i1 %exitcond8, label %19, label %31, !llvm.loop !22

31:                                               ; preds = %19
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = icmp sgt i32 %0, 1
  br i1 %3, label %.preheader, label %10

.preheader:                                       ; preds = %2
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %6

5:                                                ; preds = %6
  %exitcond = icmp ne i32 %9, %0
  br i1 %exitcond, label %6, label %.loopexit, !llvm.loop !23

6:                                                ; preds = %.preheader, %5
  %.011 = phi i32 [ 1, %.preheader ], [ %9, %5 ]
  %7 = load ptr, ptr %4, align 8
  %8 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(4) @.str) #5
  %.not = icmp eq i32 %8, 0
  %9 = add i32 %.011, 1
  br i1 %.not, label %.loopexit, label %5

.loopexit:                                        ; preds = %5, %6
  %.not1.ph = phi i1 [ false, %6 ], [ true, %5 ]
  br label %10

10:                                               ; preds = %.loopexit, %2
  %.not1 = phi i1 [ true, %2 ], [ %.not1.ph, %.loopexit ]
  %11 = call dereferenceable_or_null(16000) ptr @malloc(i64 noundef 16000) #6
  br label %12

12:                                               ; preds = %10, %12
  %indvars.iv = phi i64 [ 0, %10 ], [ %indvars.iv.next, %12 ]
  %13 = call dereferenceable_or_null(16008) ptr @malloc(i64 noundef 16008) #6
  %14 = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %indvars.iv
  store ptr %13, ptr %14, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond5 = icmp ne i64 %indvars.iv.next, 2000
  br i1 %exitcond5, label %12, label %15, !llvm.loop !24

15:                                               ; preds = %12
  %16 = call dereferenceable_or_null(16000) ptr @malloc(i64 noundef 16000) #6
  %17 = call dereferenceable_or_null(16000) ptr @malloc(i64 noundef 16000) #6
  %18 = call dereferenceable_or_null(8000) ptr @malloc(i64 noundef 8000) #6
  call void @matgen(ptr noundef %11, ptr noundef %16)
  call void @dgefa(ptr noundef %11, ptr noundef %18)
  call void @dgesl(ptr noundef %11, ptr noundef %18, ptr noundef %16)
  call void @free(ptr noundef %18) #5
  call void @free(ptr noundef %17) #5
  call void @free(ptr noundef %16) #5
  br label %19

19:                                               ; preds = %15, %19
  %indvars.iv6 = phi i64 [ 0, %15 ], [ %indvars.iv.next7, %19 ]
  %20 = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %indvars.iv6
  %21 = load ptr, ptr %20, align 8
  call void @free(ptr noundef %21) #5
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1
  %exitcond9 = icmp ne i64 %indvars.iv.next7, 2000
  br i1 %exitcond9, label %19, label %22, !llvm.loop !25

22:                                               ; preds = %19
  call void @free(ptr noundef %11) #5
  br i1 %.not1, label %26, label %23

23:                                               ; preds = %22
  %24 = call ptr @__acrt_iob_func(i32 noundef 1) #5
  %25 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %24, ptr noundef nonnull @.str.1, double noundef 0.000000e+00) #5
  br label %29

26:                                               ; preds = %22
  %27 = call ptr @__acrt_iob_func(i32 noundef 1) #5
  %28 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %27, ptr noundef nonnull @.str.2, double noundef 0.000000e+00) #5
  br label %29

29:                                               ; preds = %26, %23
  %30 = call ptr @__acrt_iob_func(i32 noundef 1) #5
  %31 = call i32 @fflush(ptr noundef %30) #5
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i32 @strcmp(ptr noundef, ptr noundef) #2

; Function Attrs: allocsize(0)
declare dso_local ptr @malloc(i64 noundef) #3

declare dso_local void @free(ptr noundef) #4

; Function Attrs: nounwind
declare dso_local i32 @fprintf(ptr noundef, ptr noundef, ...) #2

declare dllimport ptr @__acrt_iob_func(i32 noundef) #4

declare dso_local i32 @fflush(ptr noundef) #4

; Function Attrs: noinline nounwind uwtable
define internal double @random_double() #0 {
  %1 = load i32, ptr @seed, align 4
  %2 = xor i32 %1, 123459876
  %3 = sdiv i32 %2, 127773
  %.neg = mul i32 %3, -127773
  %4 = add i32 %.neg, %2
  %5 = mul nsw i32 %4, 16807
  %.neg1 = mul nsw i32 %3, -2836
  %6 = add i32 %.neg1, %5
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = add nsw i32 %6, 2147483647
  br label %10

10:                                               ; preds = %8, %0
  %11 = phi i32 [ %9, %8 ], [ %6, %0 ]
  %12 = sitofp i32 %11 to double
  %13 = fmul nnan double %12, f0x3E00000000200FE1
  %14 = xor i32 %11, 123459876
  store i32 %14, ptr @seed, align 4
  ret double %13
}

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nounwind allocsize(0) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 23.0.0git (https://github.com/llvm/llvm-project.git aac212f0bc9acbc40a8a2e9638f4b7496c25d0b2)", isOptimized: false, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "E:/llvm-test-suite/SingleSource/Benchmarks/CoyoteBench/lpbench.c", directory: "E:/Phase Ordering/v3")
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
!21 = distinct !{!21, !8}
!22 = distinct !{!22, !8}
!23 = distinct !{!23, !8}
!24 = distinct !{!24, !8}
!25 = distinct !{!25, !8}
