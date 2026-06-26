; ModuleID = 'results\paper_full\CoyoteBench_lpbench\round_006\input.ll'
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
  %indvars.iv522 = phi i64 [ 0, %2 ], [ %indvars.iv.next6, %8 ]
  br label %3

.preheader2:                                      ; preds = %8
  br label %9

3:                                                ; preds = %.preheader3, %3
  %indvars.iv21 = phi i64 [ 0, %.preheader3 ], [ %indvars.iv.next, %3 ]
  %4 = call double @random_double()
  %5 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv21
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv522
  store double %4, ptr %7, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv21, 1
  %exitcond = icmp ne i64 %indvars.iv.next, 2000
  br i1 %exitcond, label %3, label %8, !llvm.loop !7

8:                                                ; preds = %3
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv522, 1
  %exitcond8 = icmp ne i64 %indvars.iv.next6, 2000
  br i1 %exitcond8, label %.preheader3, label %.preheader2, !llvm.loop !9

.preheader1:                                      ; preds = %9
  br label %.preheader

9:                                                ; preds = %.preheader2, %9
  %indvars.iv923 = phi i64 [ 0, %.preheader2 ], [ %indvars.iv.next10, %9 ]
  %10 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv923
  store double 0.000000e+00, ptr %10, align 8
  %indvars.iv.next10 = add nuw nsw i64 %indvars.iv923, 1
  %exitcond12 = icmp ne i64 %indvars.iv.next10, 2000
  br i1 %exitcond12, label %9, label %.preheader1, !llvm.loop !10

.preheader:                                       ; preds = %.preheader1, %19
  %indvars.iv1725 = phi i64 [ 0, %.preheader1 ], [ %indvars.iv.next18, %19 ]
  br label %11

11:                                               ; preds = %.preheader, %11
  %indvars.iv1324 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next14, %11 ]
  %12 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv1725
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds nuw [8 x i8], ptr %13, i64 %indvars.iv1324
  %15 = load double, ptr %14, align 8
  %16 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv1324
  %17 = load double, ptr %16, align 8
  %18 = fadd double %17, %15
  store double %18, ptr %16, align 8
  %indvars.iv.next14 = add nuw nsw i64 %indvars.iv1324, 1
  %exitcond16 = icmp ne i64 %indvars.iv.next14, 2000
  br i1 %exitcond16, label %11, label %19, !llvm.loop !11

19:                                               ; preds = %11
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv1725, 1
  %exitcond20 = icmp ne i64 %indvars.iv.next18, 2000
  br i1 %exitcond20, label %.preheader, label %20, !llvm.loop !12

20:                                               ; preds = %19
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @idamax(i32 noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = icmp slt i32 %0, 1
  br i1 %5, label %38, label %6

6:                                                ; preds = %4
  %7 = icmp eq i32 %0, 1
  br i1 %7, label %38, label %8

8:                                                ; preds = %6
  %.not = icmp eq i32 %3, 1
  br i1 %.not, label %25, label %9

9:                                                ; preds = %8
  %10 = sext i32 %2 to i64
  %11 = getelementptr inbounds [8 x i8], ptr %1, i64 %10
  %12 = load double, ptr %11, align 8
  %13 = call double @llvm.fabs.f64(double %12)
  %14 = add i32 %3, 1
  %15 = sext i32 %14 to i64
  %16 = sext i32 %3 to i64
  %17 = sext i32 %2 to i64
  %exitcond7 = icmp ne i32 1, %0
  br i1 %exitcond7, label %.lr.ph, label %.loopexit1

.lr.ph:                                           ; preds = %9
  br label %18

18:                                               ; preds = %.lr.ph, %18
  %.211 = phi i32 [ 0, %.lr.ph ], [ %.3, %18 ]
  %.0210 = phi i32 [ 1, %.lr.ph ], [ %24, %18 ]
  %.049 = phi double [ %13, %.lr.ph ], [ %.15, %18 ]
  %indvars.iv8 = phi i64 [ %15, %.lr.ph ], [ %indvars.iv.next, %18 ]
  %19 = add nsw i64 %indvars.iv8, %17
  %20 = getelementptr inbounds [8 x i8], ptr %1, i64 %19
  %21 = load double, ptr %20, align 8
  %22 = call double @llvm.fabs.f64(double %21)
  %23 = fcmp ogt double %22, %.049
  %.15 = select i1 %23, double %22, double %.049
  %.3 = select i1 %23, i32 %.0210, i32 %.211
  %indvars.iv.next = add nsw i64 %indvars.iv8, %16
  %24 = add nuw i32 %.0210, 1
  %exitcond = icmp ne i32 %24, %0
  br i1 %exitcond, label %18, label %..loopexit1_crit_edge, !llvm.loop !13

25:                                               ; preds = %8
  %26 = sext i32 %2 to i64
  %27 = getelementptr inbounds [8 x i8], ptr %1, i64 %26
  %28 = load double, ptr %27, align 8
  %29 = call double @llvm.fabs.f64(double %28)
  %30 = sext i32 %2 to i64
  %wide.trip.count = zext i32 %0 to i64
  %exitcond612 = icmp ne i64 1, %wide.trip.count
  br i1 %exitcond612, label %.lr.ph16, label %.loopexit

.lr.ph16:                                         ; preds = %25
  br label %31

31:                                               ; preds = %.lr.ph16, %31
  %.515 = phi i32 [ 0, %.lr.ph16 ], [ %.6, %31 ]
  %.2614 = phi double [ %29, %.lr.ph16 ], [ %.37, %31 ]
  %indvars.iv313 = phi i64 [ 1, %.lr.ph16 ], [ %indvars.iv.next4, %31 ]
  %32 = add nsw i64 %indvars.iv313, %30
  %33 = getelementptr inbounds [8 x i8], ptr %1, i64 %32
  %34 = load double, ptr %33, align 8
  %35 = call double @llvm.fabs.f64(double %34)
  %36 = fcmp ogt double %35, %.2614
  %.37 = select i1 %36, double %35, double %.2614
  %37 = trunc nuw nsw i64 %indvars.iv313 to i32
  %.6 = select i1 %36, i32 %37, i32 %.515
  %indvars.iv.next4 = add nuw nsw i64 %indvars.iv313, 1
  %exitcond6 = icmp ne i64 %indvars.iv.next4, %wide.trip.count
  br i1 %exitcond6, label %31, label %..loopexit_crit_edge, !llvm.loop !14

..loopexit_crit_edge:                             ; preds = %31
  %split17 = phi i32 [ %.6, %31 ]
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %25
  %.5.lcssa = phi i32 [ %split17, %..loopexit_crit_edge ], [ 0, %25 ]
  br label %38

..loopexit1_crit_edge:                            ; preds = %18
  %split = phi i32 [ %.3, %18 ]
  br label %.loopexit1

.loopexit1:                                       ; preds = %..loopexit1_crit_edge, %9
  %.2.lcssa = phi i32 [ %split, %..loopexit1_crit_edge ], [ 0, %9 ]
  br label %38

38:                                               ; preds = %.loopexit1, %.loopexit, %6, %4
  %.0 = phi i32 [ -1, %4 ], [ 0, %6 ], [ %.5.lcssa, %.loopexit ], [ %.2.lcssa, %.loopexit1 ]
  ret i32 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @dscal(i32 noundef %0, double noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = icmp sgt i32 %0, 0
  br i1 %6, label %7, label %26

7:                                                ; preds = %5
  %.not = icmp eq i32 %4, 1
  br i1 %.not, label %.preheader, label %9

.preheader:                                       ; preds = %7
  %8 = sext i32 %3 to i64
  %wide.trip.count = zext i32 %0 to i64
  br label %21

9:                                                ; preds = %7
  %10 = mul nsw i32 %0, %4
  %11 = sext i32 %4 to i64
  %12 = sext i32 %10 to i64
  %13 = sext i32 %3 to i64
  %14 = icmp slt i64 0, %12
  br i1 %14, label %.lr.ph, label %.loopexit1

.lr.ph:                                           ; preds = %9
  br label %15

15:                                               ; preds = %.lr.ph, %15
  %indvars.iv6 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %15 ]
  %16 = add nsw i64 %indvars.iv6, %13
  %17 = getelementptr inbounds [8 x i8], ptr %2, i64 %16
  %18 = load double, ptr %17, align 8
  %19 = fmul double %18, %1
  store double %19, ptr %17, align 8
  %indvars.iv.next = add nsw i64 %indvars.iv6, %11
  %20 = icmp slt i64 %indvars.iv.next, %12
  br i1 %20, label %15, label %..loopexit1_crit_edge, !llvm.loop !15

21:                                               ; preds = %.preheader, %21
  %indvars.iv37 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next4, %21 ]
  %22 = add nsw i64 %indvars.iv37, %8
  %23 = getelementptr inbounds [8 x i8], ptr %2, i64 %22
  %24 = load double, ptr %23, align 8
  %25 = fmul double %24, %1
  store double %25, ptr %23, align 8
  %indvars.iv.next4 = add nuw nsw i64 %indvars.iv37, 1
  %exitcond = icmp ne i64 %indvars.iv.next4, %wide.trip.count
  br i1 %exitcond, label %21, label %.loopexit, !llvm.loop !16

.loopexit:                                        ; preds = %21
  br label %26

..loopexit1_crit_edge:                            ; preds = %15
  br label %.loopexit1

.loopexit1:                                       ; preds = %..loopexit1_crit_edge, %9
  br label %26

26:                                               ; preds = %.loopexit1, %.loopexit, %5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @daxpy(i32 noundef %0, double noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7) #0 {
  %9 = icmp sgt i32 %0, 0
  %10 = fcmp une double %1, 0.000000e+00
  %or.cond = and i1 %9, %10
  br i1 %or.cond, label %11, label %45

11:                                               ; preds = %8
  %12 = icmp ne i32 %4, 1
  %13 = icmp ne i32 %7, 1
  %or.cond1 = or i1 %12, %13
  br i1 %or.cond1, label %16, label %.preheader

.preheader:                                       ; preds = %11
  %14 = sext i32 %3 to i64
  %15 = sext i32 %6 to i64
  %wide.trip.count = zext i32 %0 to i64
  br label %37

16:                                               ; preds = %11
  %17 = icmp slt i32 %4, 0
  %18 = sub nsw i32 1, %0
  %19 = mul nsw i32 %18, %4
  %.01 = select i1 %17, i32 %19, i32 0
  %20 = icmp slt i32 %7, 0
  %21 = mul nsw i32 %18, %7
  %.0 = select i1 %20, i32 %21, i32 0
  %22 = sext i32 %.01 to i64
  %23 = sext i32 %4 to i64
  %24 = sext i32 %3 to i64
  %25 = sext i32 %.0 to i64
  %26 = sext i32 %7 to i64
  %27 = sext i32 %6 to i64
  br label %28

28:                                               ; preds = %16, %28
  %.0314 = phi i32 [ 0, %16 ], [ %36, %28 ]
  %indvars.iv313 = phi i64 [ %22, %16 ], [ %indvars.iv.next4, %28 ]
  %indvars.iv512 = phi i64 [ %25, %16 ], [ %indvars.iv.next6, %28 ]
  %29 = add nsw i64 %indvars.iv313, %24
  %30 = getelementptr inbounds [8 x i8], ptr %2, i64 %29
  %31 = load double, ptr %30, align 8
  %32 = add nsw i64 %indvars.iv512, %27
  %33 = getelementptr inbounds [8 x i8], ptr %5, i64 %32
  %34 = load double, ptr %33, align 8
  %35 = call double @llvm.fmuladd.f64(double %1, double %31, double %34)
  store double %35, ptr %33, align 8
  %indvars.iv.next4 = add nsw i64 %indvars.iv313, %23
  %indvars.iv.next6 = add nsw i64 %indvars.iv512, %26
  %36 = add nuw i32 %.0314, 1
  %exitcond10 = icmp ne i32 %36, %0
  br i1 %exitcond10, label %28, label %.loopexit, !llvm.loop !17

37:                                               ; preds = %.preheader, %37
  %indvars.iv11 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %37 ]
  %38 = add nsw i64 %indvars.iv11, %14
  %39 = getelementptr inbounds [8 x i8], ptr %2, i64 %38
  %40 = load double, ptr %39, align 8
  %41 = add nsw i64 %indvars.iv11, %15
  %42 = getelementptr inbounds [8 x i8], ptr %5, i64 %41
  %43 = load double, ptr %42, align 8
  %44 = call double @llvm.fmuladd.f64(double %1, double %40, double %43)
  store double %44, ptr %42, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv11, 1
  %exitcond = icmp ne i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %37, label %.loopexit1, !llvm.loop !18

.loopexit:                                        ; preds = %28
  br label %45

.loopexit1:                                       ; preds = %37
  br label %45

45:                                               ; preds = %.loopexit1, %.loopexit, %8
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @dgefa(ptr noundef %0, ptr noundef %1) #0 {
  br label %3

3:                                                ; preds = %2, %35
  %indvars614 = phi i32 [ 0, %2 ], [ %indvars6, %35 ]
  %indvars.iv12 = phi i64 [ 1, %2 ], [ %indvars.iv.next, %35 ]
  %indvars.iv411 = phi i64 [ 0, %2 ], [ %indvars.iv.next5, %35 ]
  %4 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv411
  %5 = load ptr, ptr %4, align 8
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv411, 1
  %6 = sub nuw nsw i32 2000, %indvars614
  %7 = trunc nuw nsw i64 %indvars.iv411 to i32
  %8 = call i32 @idamax(i32 noundef %6, ptr noundef %5, i32 noundef %7, i32 noundef 1)
  %9 = trunc nuw nsw i64 %indvars.iv411 to i32
  %10 = add nsw i32 %8, %9
  %11 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv411
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
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv411
  %.pre = load double, ptr %.phi.trans.insert, align 8
  br label %20

17:                                               ; preds = %16
  %18 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv411
  %19 = load double, ptr %18, align 8
  store double %19, ptr %13, align 8
  store double %14, ptr %18, align 8
  br label %20

20:                                               ; preds = %17, %._crit_edge
  %21 = phi double [ %.pre, %._crit_edge ], [ %14, %17 ]
  %22 = fdiv double -1.000000e+00, %21
  %23 = sub nuw nsw i32 1999, %indvars614
  %24 = trunc nuw nsw i64 %indvars.iv.next5 to i32
  call void @dscal(i32 noundef %23, double noundef %22, ptr noundef %5, i32 noundef %24, i32 noundef 1)
  %exitcond8 = icmp ne i64 %indvars.iv12, 2000
  br i1 %exitcond8, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %20
  br label %25

25:                                               ; preds = %.lr.ph, %33
  %indvars.iv19 = phi i64 [ %indvars.iv12, %.lr.ph ], [ %indvars.iv.next2, %33 ]
  %26 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv19
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr inbounds [8 x i8], ptr %27, i64 %12
  %29 = load double, ptr %28, align 8
  br i1 %.not, label %33, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds nuw [8 x i8], ptr %27, i64 %indvars.iv411
  %32 = load double, ptr %31, align 8
  store double %32, ptr %28, align 8
  store double %29, ptr %31, align 8
  br label %33

33:                                               ; preds = %30, %25
  %34 = trunc nuw nsw i64 %indvars.iv.next5 to i32
  call void @daxpy(i32 noundef %23, double noundef %29, ptr noundef %5, i32 noundef %34, i32 noundef 1, ptr noundef %27, i32 noundef %34, i32 noundef 1)
  %indvars.iv.next2 = add nuw nsw i64 %indvars.iv19, 1
  %exitcond = icmp ne i64 %indvars.iv.next2, 2000
  br i1 %exitcond, label %25, label %..loopexit_crit_edge, !llvm.loop !19

..loopexit_crit_edge:                             ; preds = %33
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %20
  br label %35

35:                                               ; preds = %.loopexit, %3
  %indvars.iv13 = phi i64 [ %indvars.iv12, %.loopexit ], [ %indvars.iv12, %3 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv13, 1
  %indvars6 = trunc i64 %indvars.iv.next5 to i32
  %exitcond7 = icmp ne i64 %indvars.iv.next5, 1999
  br i1 %exitcond7, label %3, label %36, !llvm.loop !20

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
  %indvars17 = phi i32 [ 0, %3 ], [ %indvars1, %14 ]
  %indvars.iv6 = phi i64 [ 0, %3 ], [ %indvars.iv.next, %14 ]
  %5 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv6
  %6 = load i32, ptr %5, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [8 x i8], ptr %2, i64 %7
  %9 = load double, ptr %8, align 8
  %10 = zext i32 %6 to i64
  %.not = icmp eq i64 %10, %indvars.iv6
  br i1 %.not, label %14, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv6
  %13 = load double, ptr %12, align 8
  store double %13, ptr %8, align 8
  store double %9, ptr %12, align 8
  br label %14

14:                                               ; preds = %11, %4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv6, 1
  %15 = sub nuw nsw i32 1999, %indvars17
  %16 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv6
  %17 = load ptr, ptr %16, align 8
  %18 = trunc nuw nsw i64 %indvars.iv.next to i32
  call void @daxpy(i32 noundef %15, double noundef %9, ptr noundef %17, i32 noundef %18, i32 noundef 1, ptr noundef %2, i32 noundef %18, i32 noundef 1)
  %indvars1 = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp ne i64 %indvars.iv.next, 1999
  br i1 %exitcond, label %4, label %.preheader, !llvm.loop !21

19:                                               ; preds = %.preheader, %19
  %indvars.iv28 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next3, %19 ]
  %indvars.iv.next3 = add nuw nsw i64 %indvars.iv28, 1
  %20 = sub nuw nsw i64 1999, %indvars.iv28
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
  %30 = trunc nuw i64 %20 to i32
  call void @daxpy(i32 noundef %30, double noundef %28, ptr noundef %29, i32 noundef 0, i32 noundef 1, ptr noundef %2, i32 noundef 0, i32 noundef 1)
  %exitcond5 = icmp ne i64 %indvars.iv.next3, 2000
  br i1 %exitcond5, label %19, label %31, !llvm.loop !22

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
  %.01 = phi i32 [ %9, %6 ]
  %exitcond = icmp ne i32 %.01, %0
  br i1 %exitcond, label %6, label %.loopexit, !llvm.loop !23

6:                                                ; preds = %.preheader, %5
  %.017 = phi i32 [ 1, %.preheader ], [ %.01, %5 ]
  %7 = load ptr, ptr %4, align 8
  %8 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(4) @.str) #5
  %.not = icmp eq i32 %8, 0
  %9 = add nuw i32 %.017, 1
  br i1 %.not, label %.loopexit, label %5

.loopexit:                                        ; preds = %5, %6
  %.not1.ph = phi i1 [ false, %6 ], [ true, %5 ]
  br label %10

10:                                               ; preds = %.loopexit, %2
  %.not1 = phi i1 [ true, %2 ], [ %.not1.ph, %.loopexit ]
  %11 = call dereferenceable_or_null(16000) ptr @malloc(i64 noundef 16000) #6
  br label %12

12:                                               ; preds = %10, %12
  %indvars.iv8 = phi i64 [ 0, %10 ], [ %indvars.iv.next, %12 ]
  %13 = call dereferenceable_or_null(16008) ptr @malloc(i64 noundef 16008) #6
  %14 = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %indvars.iv8
  store ptr %13, ptr %14, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv8, 1
  %exitcond2 = icmp ne i64 %indvars.iv.next, 2000
  br i1 %exitcond2, label %12, label %15, !llvm.loop !24

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
  %indvars.iv39 = phi i64 [ 0, %15 ], [ %indvars.iv.next4, %19 ]
  %20 = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %indvars.iv39
  %21 = load ptr, ptr %20, align 8
  call void @free(ptr noundef %21) #5
  %indvars.iv.next4 = add nuw nsw i64 %indvars.iv39, 1
  %exitcond6 = icmp ne i64 %indvars.iv.next4, 2000
  br i1 %exitcond6, label %19, label %22, !llvm.loop !25

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
