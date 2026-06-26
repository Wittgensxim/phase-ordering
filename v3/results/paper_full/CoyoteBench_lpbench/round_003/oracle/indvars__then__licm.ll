; ModuleID = 'results\paper_full\CoyoteBench_lpbench\round_002\output.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/CoyoteBench/lpbench.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

@.str = private unnamed_addr constant [4 x i8] c"-ga\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"\0Alpbench (Std. C) run time: %f\0A\0A\00", align 1
@seed = internal global i32 1325, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @matgen(ptr noundef %0, ptr noundef %1) #0 {
  br label %3

3:                                                ; preds = %10, %2
  %indvars.iv5 = phi i64 [ %indvars.iv.next6, %10 ], [ 0, %2 ]
  %exitcond8 = icmp ne i64 %indvars.iv5, 2000
  br i1 %exitcond8, label %.preheader3, label %.preheader2

.preheader3:                                      ; preds = %3
  br label %4

.preheader2:                                      ; preds = %3
  br label %11

4:                                                ; preds = %.preheader3, %5
  %indvars.iv = phi i64 [ 0, %.preheader3 ], [ %indvars.iv.next, %5 ]
  %exitcond = icmp ne i64 %indvars.iv, 2000
  br i1 %exitcond, label %5, label %10

5:                                                ; preds = %4
  %6 = call double @random_double()
  %7 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %indvars.iv5
  store double %6, ptr %9, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %4, !llvm.loop !7

10:                                               ; preds = %4
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5, 1
  br label %3, !llvm.loop !9

11:                                               ; preds = %.preheader2, %12
  %indvars.iv9 = phi i64 [ 0, %.preheader2 ], [ %indvars.iv.next10, %12 ]
  %exitcond12 = icmp ne i64 %indvars.iv9, 2000
  br i1 %exitcond12, label %12, label %.preheader1

.preheader1:                                      ; preds = %11
  br label %14

12:                                               ; preds = %11
  %13 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv9
  store double 0.000000e+00, ptr %13, align 8
  %indvars.iv.next10 = add nuw nsw i64 %indvars.iv9, 1
  br label %11, !llvm.loop !10

14:                                               ; preds = %.preheader1, %24
  %indvars.iv17 = phi i64 [ 0, %.preheader1 ], [ %indvars.iv.next18, %24 ]
  %exitcond20 = icmp ne i64 %indvars.iv17, 2000
  br i1 %exitcond20, label %.preheader, label %25

.preheader:                                       ; preds = %14
  %15 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv17
  br label %16

16:                                               ; preds = %.preheader, %17
  %indvars.iv13 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next14, %17 ]
  %exitcond16 = icmp ne i64 %indvars.iv13, 2000
  br i1 %exitcond16, label %17, label %24

17:                                               ; preds = %16
  %18 = load ptr, ptr %15, align 8
  %19 = getelementptr inbounds nuw [8 x i8], ptr %18, i64 %indvars.iv13
  %20 = load double, ptr %19, align 8
  %21 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv13
  %22 = load double, ptr %21, align 8
  %23 = fadd double %22, %20
  store double %23, ptr %21, align 8
  %indvars.iv.next14 = add nuw nsw i64 %indvars.iv13, 1
  br label %16, !llvm.loop !11

24:                                               ; preds = %16
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv17, 1
  br label %14, !llvm.loop !12

25:                                               ; preds = %14
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
  %15 = sext i32 %14 to i64
  %16 = sext i32 %3 to i64
  %17 = sext i32 %2 to i64
  br label %18

18:                                               ; preds = %19, %9
  %indvars.iv = phi i64 [ %indvars.iv.next, %19 ], [ %15, %9 ]
  %.04 = phi double [ %13, %9 ], [ %.15, %19 ]
  %.02 = phi i32 [ 1, %9 ], [ %25, %19 ]
  %.2 = phi i32 [ 0, %9 ], [ %.3, %19 ]
  %exitcond = icmp ne i32 %.02, %0
  br i1 %exitcond, label %19, label %.loopexit1

19:                                               ; preds = %18
  %20 = add nsw i64 %indvars.iv, %17
  %21 = getelementptr inbounds [8 x i8], ptr %1, i64 %20
  %22 = load double, ptr %21, align 8
  %23 = call double @llvm.fabs.f64(double %22)
  %24 = fcmp ogt double %23, %.04
  %.15 = select i1 %24, double %23, double %.04
  %.3 = select i1 %24, i32 %.02, i32 %.2
  %indvars.iv.next = add nsw i64 %indvars.iv, %16
  %25 = add nuw i32 %.02, 1
  br label %18, !llvm.loop !13

26:                                               ; preds = %8
  %27 = sext i32 %2 to i64
  %28 = getelementptr inbounds [8 x i8], ptr %1, i64 %27
  %29 = load double, ptr %28, align 8
  %30 = call double @llvm.fabs.f64(double %29)
  %31 = sext i32 %2 to i64
  %wide.trip.count = zext i32 %0 to i64
  br label %32

32:                                               ; preds = %33, %26
  %indvars.iv3 = phi i64 [ %indvars.iv.next4, %33 ], [ 1, %26 ]
  %.26 = phi double [ %30, %26 ], [ %.37, %33 ]
  %.5 = phi i32 [ 0, %26 ], [ %.6, %33 ]
  %exitcond6 = icmp ne i64 %indvars.iv3, %wide.trip.count
  br i1 %exitcond6, label %33, label %.loopexit

33:                                               ; preds = %32
  %34 = add nsw i64 %indvars.iv3, %31
  %35 = getelementptr inbounds [8 x i8], ptr %1, i64 %34
  %36 = load double, ptr %35, align 8
  %37 = call double @llvm.fabs.f64(double %36)
  %38 = fcmp ogt double %37, %.26
  %.37 = select i1 %38, double %37, double %.26
  %39 = trunc nuw nsw i64 %indvars.iv3 to i32
  %.6 = select i1 %38, i32 %39, i32 %.5
  %indvars.iv.next4 = add nuw nsw i64 %indvars.iv3, 1
  br label %32, !llvm.loop !14

.loopexit:                                        ; preds = %32
  %.5.lcssa = phi i32 [ %.5, %32 ]
  br label %40

.loopexit1:                                       ; preds = %18
  %.2.lcssa = phi i32 [ %.2, %18 ]
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
  br label %14

14:                                               ; preds = %16, %9
  %indvars.iv = phi i64 [ %indvars.iv.next, %16 ], [ 0, %9 ]
  %15 = icmp slt i64 %indvars.iv, %12
  br i1 %15, label %16, label %.loopexit1

16:                                               ; preds = %14
  %17 = add nsw i64 %indvars.iv, %13
  %18 = getelementptr inbounds [8 x i8], ptr %2, i64 %17
  %19 = load double, ptr %18, align 8
  %20 = fmul double %19, %1
  store double %20, ptr %18, align 8
  %indvars.iv.next = add nsw i64 %indvars.iv, %11
  br label %14, !llvm.loop !15

21:                                               ; preds = %.preheader, %22
  %indvars.iv3 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next4, %22 ]
  %exitcond = icmp ne i64 %indvars.iv3, %wide.trip.count
  br i1 %exitcond, label %22, label %.loopexit

22:                                               ; preds = %21
  %23 = add nsw i64 %indvars.iv3, %8
  %24 = getelementptr inbounds [8 x i8], ptr %2, i64 %23
  %25 = load double, ptr %24, align 8
  %26 = fmul double %25, %1
  store double %26, ptr %24, align 8
  %indvars.iv.next4 = add nuw nsw i64 %indvars.iv3, 1
  br label %21, !llvm.loop !16

.loopexit:                                        ; preds = %21
  br label %27

.loopexit1:                                       ; preds = %14
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
  br i1 %or.cond1, label %16, label %.preheader

.preheader:                                       ; preds = %11
  %14 = sext i32 %3 to i64
  %15 = sext i32 %6 to i64
  %wide.trip.count = zext i32 %0 to i64
  br label %38

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

28:                                               ; preds = %29, %16
  %indvars.iv5 = phi i64 [ %indvars.iv.next6, %29 ], [ %25, %16 ]
  %indvars.iv3 = phi i64 [ %indvars.iv.next4, %29 ], [ %22, %16 ]
  %.03 = phi i32 [ 0, %16 ], [ %37, %29 ]
  %exitcond10 = icmp ne i32 %.03, %0
  br i1 %exitcond10, label %29, label %.loopexit

29:                                               ; preds = %28
  %30 = add nsw i64 %indvars.iv3, %24
  %31 = getelementptr inbounds [8 x i8], ptr %2, i64 %30
  %32 = load double, ptr %31, align 8
  %33 = add nsw i64 %indvars.iv5, %27
  %34 = getelementptr inbounds [8 x i8], ptr %5, i64 %33
  %35 = load double, ptr %34, align 8
  %36 = call double @llvm.fmuladd.f64(double %1, double %32, double %35)
  store double %36, ptr %34, align 8
  %indvars.iv.next4 = add nsw i64 %indvars.iv3, %23
  %indvars.iv.next6 = add nsw i64 %indvars.iv5, %26
  %37 = add nuw i32 %.03, 1
  br label %28, !llvm.loop !17

38:                                               ; preds = %.preheader, %39
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %39 ]
  %exitcond = icmp ne i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %39, label %.loopexit1

39:                                               ; preds = %38
  %40 = add nsw i64 %indvars.iv, %14
  %41 = getelementptr inbounds [8 x i8], ptr %2, i64 %40
  %42 = load double, ptr %41, align 8
  %43 = add nsw i64 %indvars.iv, %15
  %44 = getelementptr inbounds [8 x i8], ptr %5, i64 %43
  %45 = load double, ptr %44, align 8
  %46 = call double @llvm.fmuladd.f64(double %1, double %42, double %45)
  store double %46, ptr %44, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %38, !llvm.loop !18

.loopexit:                                        ; preds = %28
  br label %47

.loopexit1:                                       ; preds = %38
  br label %47

47:                                               ; preds = %.loopexit1, %.loopexit, %8
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @dgefa(ptr noundef %0, ptr noundef %1) #0 {
  br label %3

3:                                                ; preds = %37, %2
  %indvars.iv4 = phi i64 [ %indvars.iv.next5, %37 ], [ 0, %2 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %37 ], [ 1, %2 ]
  %indvars6 = trunc i64 %indvars.iv4 to i32
  %exitcond7 = icmp ne i64 %indvars.iv4, 1999
  br i1 %exitcond7, label %4, label %38

4:                                                ; preds = %3
  %5 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv4
  %6 = load ptr, ptr %5, align 8
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv4, 1
  %7 = sub nuw nsw i32 2000, %indvars6
  %8 = trunc nuw nsw i64 %indvars.iv4 to i32
  %9 = call i32 @idamax(i32 noundef %7, ptr noundef %6, i32 noundef %8, i32 noundef 1)
  %10 = trunc nuw nsw i64 %indvars.iv4 to i32
  %11 = add nsw i32 %9, %10
  %12 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv4
  store i32 %11, ptr %12, align 4
  %13 = sext i32 %11 to i64
  %14 = getelementptr inbounds [8 x i8], ptr %6, i64 %13
  %15 = load double, ptr %14, align 8
  %16 = fcmp une double %15, 0.000000e+00
  br i1 %16, label %17, label %37

17:                                               ; preds = %4
  %.not = icmp eq i32 %9, 0
  br i1 %.not, label %._crit_edge, label %18

._crit_edge:                                      ; preds = %17
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv4
  %.pre = load double, ptr %.phi.trans.insert, align 8
  br label %21

18:                                               ; preds = %17
  %19 = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv4
  %20 = load double, ptr %19, align 8
  store double %20, ptr %14, align 8
  store double %15, ptr %19, align 8
  br label %21

21:                                               ; preds = %18, %._crit_edge
  %22 = phi double [ %.pre, %._crit_edge ], [ %15, %18 ]
  %23 = fdiv double -1.000000e+00, %22
  %24 = sub nuw nsw i32 1999, %indvars6
  %25 = trunc nuw nsw i64 %indvars.iv.next5 to i32
  call void @dscal(i32 noundef %24, double noundef %23, ptr noundef %6, i32 noundef %25, i32 noundef 1)
  %26 = trunc nuw nsw i64 %indvars.iv.next5 to i32
  br label %27

27:                                               ; preds = %36, %21
  %indvars.iv1 = phi i64 [ %indvars.iv.next2, %36 ], [ %indvars.iv, %21 ]
  %exitcond = icmp ne i64 %indvars.iv1, 2000
  br i1 %exitcond, label %28, label %.loopexit

28:                                               ; preds = %27
  %29 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv1
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr inbounds [8 x i8], ptr %30, i64 %13
  %32 = load double, ptr %31, align 8
  br i1 %.not, label %36, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds nuw [8 x i8], ptr %30, i64 %indvars.iv4
  %35 = load double, ptr %34, align 8
  store double %35, ptr %31, align 8
  store double %32, ptr %34, align 8
  br label %36

36:                                               ; preds = %33, %28
  call void @daxpy(i32 noundef %24, double noundef %32, ptr noundef %6, i32 noundef %26, i32 noundef 1, ptr noundef %30, i32 noundef %26, i32 noundef 1)
  %indvars.iv.next2 = add nuw nsw i64 %indvars.iv1, 1
  br label %27, !llvm.loop !19

.loopexit:                                        ; preds = %27
  br label %37

37:                                               ; preds = %.loopexit, %4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %3, !llvm.loop !20

38:                                               ; preds = %3
  %39 = getelementptr inbounds nuw i8, ptr %1, i64 7996
  store i32 1999, ptr %39, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @dgesl(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  br label %4

4:                                                ; preds = %15, %3
  %indvars.iv = phi i64 [ %indvars.iv.next, %15 ], [ 0, %3 ]
  %indvars1 = trunc i64 %indvars.iv to i32
  %exitcond = icmp ne i64 %indvars.iv, 1999
  br i1 %exitcond, label %5, label %.preheader

.preheader:                                       ; preds = %4
  br label %20

5:                                                ; preds = %4
  %6 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %7 = load i32, ptr %6, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [8 x i8], ptr %2, i64 %8
  %10 = load double, ptr %9, align 8
  %11 = zext i32 %7 to i64
  %.not = icmp eq i64 %11, %indvars.iv
  br i1 %.not, label %15, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %14 = load double, ptr %13, align 8
  store double %14, ptr %9, align 8
  store double %10, ptr %13, align 8
  br label %15

15:                                               ; preds = %12, %5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %16 = sub nuw nsw i32 1999, %indvars1
  %17 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %18 = load ptr, ptr %17, align 8
  %19 = trunc nuw nsw i64 %indvars.iv.next to i32
  call void @daxpy(i32 noundef %16, double noundef %10, ptr noundef %18, i32 noundef %19, i32 noundef 1, ptr noundef %2, i32 noundef %19, i32 noundef 1)
  br label %4, !llvm.loop !21

20:                                               ; preds = %.preheader, %21
  %indvars.iv2 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next3, %21 ]
  %exitcond5 = icmp ne i64 %indvars.iv2, 2000
  br i1 %exitcond5, label %21, label %33

21:                                               ; preds = %20
  %indvars.iv.next3 = add nuw nsw i64 %indvars.iv2, 1
  %22 = sub nuw nsw i64 1999, %indvars.iv2
  %23 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %22
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds nuw [8 x i8], ptr %24, i64 %22
  %26 = load double, ptr %25, align 8
  %27 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %22
  %28 = load double, ptr %27, align 8
  %29 = fdiv double %28, %26
  store double %29, ptr %27, align 8
  %30 = fneg double %29
  %31 = load ptr, ptr %23, align 8
  %32 = trunc nuw i64 %22 to i32
  call void @daxpy(i32 noundef %32, double noundef %30, ptr noundef %31, i32 noundef 0, i32 noundef 1, ptr noundef %2, i32 noundef 0, i32 noundef 1)
  br label %20, !llvm.loop !22

33:                                               ; preds = %20
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = icmp sgt i32 %0, 1
  br i1 %3, label %.preheader, label %11

.preheader:                                       ; preds = %2
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %5

5:                                                ; preds = %.preheader, %9
  %.01 = phi i32 [ %10, %9 ], [ 1, %.preheader ]
  %exitcond = icmp ne i32 %.01, %0
  br i1 %exitcond, label %6, label %.loopexit

6:                                                ; preds = %5
  %7 = load ptr, ptr %4, align 8
  %8 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(4) @.str) #5
  %.not = icmp eq i32 %8, 0
  br i1 %.not, label %.loopexit, label %9

9:                                                ; preds = %6
  %10 = add nuw i32 %.01, 1
  br label %5, !llvm.loop !23

.loopexit:                                        ; preds = %5, %6
  %.not1.ph = phi i1 [ false, %6 ], [ true, %5 ]
  br label %11

11:                                               ; preds = %.loopexit, %2
  %.not1 = phi i1 [ true, %2 ], [ %.not1.ph, %.loopexit ]
  %12 = call dereferenceable_or_null(16000) ptr @malloc(i64 noundef 16000) #6
  br label %13

13:                                               ; preds = %14, %11
  %indvars.iv = phi i64 [ %indvars.iv.next, %14 ], [ 0, %11 ]
  %exitcond2 = icmp ne i64 %indvars.iv, 2000
  br i1 %exitcond2, label %14, label %17

14:                                               ; preds = %13
  %15 = call dereferenceable_or_null(16008) ptr @malloc(i64 noundef 16008) #6
  %16 = getelementptr inbounds nuw [8 x i8], ptr %12, i64 %indvars.iv
  store ptr %15, ptr %16, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %13, !llvm.loop !24

17:                                               ; preds = %13
  %18 = call dereferenceable_or_null(16000) ptr @malloc(i64 noundef 16000) #6
  %19 = call dereferenceable_or_null(16000) ptr @malloc(i64 noundef 16000) #6
  %20 = call dereferenceable_or_null(8000) ptr @malloc(i64 noundef 8000) #6
  call void @matgen(ptr noundef %12, ptr noundef %18)
  call void @dgefa(ptr noundef %12, ptr noundef %20)
  call void @dgesl(ptr noundef %12, ptr noundef %20, ptr noundef %18)
  call void @free(ptr noundef %20) #5
  call void @free(ptr noundef %19) #5
  call void @free(ptr noundef %18) #5
  br label %21

21:                                               ; preds = %22, %17
  %indvars.iv3 = phi i64 [ %indvars.iv.next4, %22 ], [ 0, %17 ]
  %exitcond6 = icmp ne i64 %indvars.iv3, 2000
  br i1 %exitcond6, label %22, label %25

22:                                               ; preds = %21
  %23 = getelementptr inbounds nuw [8 x i8], ptr %12, i64 %indvars.iv3
  %24 = load ptr, ptr %23, align 8
  call void @free(ptr noundef %24) #5
  %indvars.iv.next4 = add nuw nsw i64 %indvars.iv3, 1
  br label %21, !llvm.loop !25

25:                                               ; preds = %21
  call void @free(ptr noundef %12) #5
  br i1 %.not1, label %29, label %26

26:                                               ; preds = %25
  %27 = call ptr @__acrt_iob_func(i32 noundef 1) #5
  %28 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %27, ptr noundef nonnull @.str.1, double noundef 0.000000e+00) #5
  br label %32

29:                                               ; preds = %25
  %30 = call ptr @__acrt_iob_func(i32 noundef 1) #5
  %31 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %30, ptr noundef nonnull @.str.2, double noundef 0.000000e+00) #5
  br label %32

32:                                               ; preds = %29, %26
  %33 = call ptr @__acrt_iob_func(i32 noundef 1) #5
  %34 = call i32 @fflush(ptr noundef %33) #5
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
