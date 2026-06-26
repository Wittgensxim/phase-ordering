; ModuleID = 'results\paper_full\CoyoteBench_lpbench\round_001\output.ll'
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
  %5 = getelementptr inbounds ptr, ptr %0, i64 %indvars.iv
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds double, ptr %6, i64 %indvars.iv10
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
  %10 = getelementptr inbounds double, ptr %1, i64 %indvars.iv14
  store double 0.000000e+00, ptr %10, align 8
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14, 1
  %exitcond17 = icmp ne i64 %indvars.iv.next15, 2000
  br i1 %exitcond17, label %9, label %.preheader1, !llvm.loop !10

.preheader:                                       ; preds = %.preheader1, %19
  %indvars.iv22 = phi i64 [ 0, %.preheader1 ], [ %indvars.iv.next23, %19 ]
  br label %11

11:                                               ; preds = %.preheader, %11
  %indvars.iv18 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next19, %11 ]
  %12 = getelementptr inbounds ptr, ptr %0, i64 %indvars.iv22
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds double, ptr %13, i64 %indvars.iv18
  %15 = load double, ptr %14, align 8
  %16 = getelementptr inbounds double, ptr %1, i64 %indvars.iv18
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
  br i1 %5, label %41, label %6

6:                                                ; preds = %4
  %7 = icmp eq i32 %0, 1
  br i1 %7, label %41, label %8

8:                                                ; preds = %6
  %9 = icmp ne i32 %3, 1
  br i1 %9, label %10, label %27

10:                                               ; preds = %8
  %11 = sext i32 %2 to i64
  %12 = getelementptr inbounds double, ptr %1, i64 %11
  %13 = load double, ptr %12, align 8
  %14 = call double @llvm.fabs.f64(double %13)
  %15 = add i32 1, %3
  %16 = icmp slt i32 1, %0
  br i1 %16, label %.lr.ph9, label %.loopexit

.lr.ph9:                                          ; preds = %10
  %17 = sext i32 %15 to i64
  %18 = sext i32 %3 to i64
  %19 = sext i32 %2 to i64
  br label %20

20:                                               ; preds = %.lr.ph9, %20
  %indvars.iv12 = phi i64 [ %17, %.lr.ph9 ], [ %indvars.iv.next13, %20 ]
  %.28 = phi i32 [ 0, %.lr.ph9 ], [ %.3, %20 ]
  %.026 = phi i32 [ 1, %.lr.ph9 ], [ %26, %20 ]
  %.045 = phi double [ %14, %.lr.ph9 ], [ %.15, %20 ]
  %21 = add nsw i64 %indvars.iv12, %19
  %22 = getelementptr inbounds double, ptr %1, i64 %21
  %23 = load double, ptr %22, align 8
  %24 = call double @llvm.fabs.f64(double %23)
  %25 = fcmp ogt double %24, %.045
  %.15 = select i1 %25, double %24, double %.045
  %.3 = select i1 %25, i32 %.026, i32 %.28
  %indvars.iv.next13 = add nsw i64 %indvars.iv12, %18
  %26 = add nuw nsw i32 %.026, 1
  %exitcond15 = icmp ne i32 %26, %0
  br i1 %exitcond15, label %20, label %..loopexit_crit_edge, !llvm.loop !13

27:                                               ; preds = %8
  %28 = sext i32 %2 to i64
  %29 = getelementptr inbounds double, ptr %1, i64 %28
  %30 = load double, ptr %29, align 8
  %31 = call double @llvm.fabs.f64(double %30)
  %32 = icmp slt i32 1, %0
  br i1 %32, label %.lr.ph, label %.loopexit1

.lr.ph:                                           ; preds = %27
  %33 = sext i32 %2 to i64
  %wide.trip.count = zext i32 %0 to i64
  br label %34

34:                                               ; preds = %.lr.ph, %34
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %34 ]
  %.54 = phi i32 [ 0, %.lr.ph ], [ %.6, %34 ]
  %.262 = phi double [ %31, %.lr.ph ], [ %.37, %34 ]
  %35 = add nsw i64 %indvars.iv, %33
  %36 = getelementptr inbounds double, ptr %1, i64 %35
  %37 = load double, ptr %36, align 8
  %38 = call double @llvm.fabs.f64(double %37)
  %39 = fcmp ogt double %38, %.262
  %.37 = select i1 %39, double %38, double %.262
  %40 = trunc nuw nsw i64 %indvars.iv to i32
  %.6 = select i1 %39, i32 %40, i32 %.54
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp ne i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %34, label %..loopexit1_crit_edge, !llvm.loop !14

..loopexit_crit_edge:                             ; preds = %20
  %split10 = phi i32 [ %.3, %20 ]
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %10
  %.2.lcssa = phi i32 [ %split10, %..loopexit_crit_edge ], [ 0, %10 ]
  br label %41

..loopexit1_crit_edge:                            ; preds = %34
  %split = phi i32 [ %.6, %34 ]
  br label %.loopexit1

.loopexit1:                                       ; preds = %..loopexit1_crit_edge, %27
  %.5.lcssa = phi i32 [ %split, %..loopexit1_crit_edge ], [ 0, %27 ]
  br label %41

41:                                               ; preds = %.loopexit1, %.loopexit, %6, %4
  %.0 = phi i32 [ -1, %4 ], [ 0, %6 ], [ %.2.lcssa, %.loopexit ], [ %.5.lcssa, %.loopexit1 ]
  ret i32 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @dscal(i32 noundef %0, double noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = icmp sgt i32 %0, 0
  br i1 %6, label %7, label %28

7:                                                ; preds = %5
  %8 = icmp ne i32 %4, 1
  br i1 %8, label %11, label %.preheader

.preheader:                                       ; preds = %7
  %9 = icmp slt i32 0, %0
  br i1 %9, label %.lr.ph, label %.loopexit1

.lr.ph:                                           ; preds = %.preheader
  %10 = sext i32 %3 to i64
  %wide.trip.count = zext i32 %0 to i64
  br label %23

11:                                               ; preds = %7
  %12 = mul nsw i32 %0, %4
  %13 = icmp slt i32 0, %12
  br i1 %13, label %.lr.ph4, label %.loopexit

.lr.ph4:                                          ; preds = %11
  %14 = sext i32 %4 to i64
  %15 = sext i32 %12 to i64
  %16 = sext i32 %3 to i64
  br label %17

17:                                               ; preds = %.lr.ph4, %17
  %indvars.iv6 = phi i64 [ 0, %.lr.ph4 ], [ %indvars.iv.next7, %17 ]
  %18 = add nsw i64 %indvars.iv6, %16
  %19 = getelementptr inbounds double, ptr %2, i64 %18
  %20 = load double, ptr %19, align 8
  %21 = fmul double %20, %1
  store double %21, ptr %19, align 8
  %indvars.iv.next7 = add nsw i64 %indvars.iv6, %14
  %22 = icmp slt i64 %indvars.iv.next7, %15
  br i1 %22, label %17, label %..loopexit_crit_edge, !llvm.loop !15

23:                                               ; preds = %.lr.ph, %23
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %23 ]
  %24 = add nsw i64 %indvars.iv, %10
  %25 = getelementptr inbounds double, ptr %2, i64 %24
  %26 = load double, ptr %25, align 8
  %27 = fmul double %26, %1
  store double %27, ptr %25, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp ne i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %23, label %..loopexit1_crit_edge, !llvm.loop !16

..loopexit_crit_edge:                             ; preds = %17
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %11
  br label %28

..loopexit1_crit_edge:                            ; preds = %23
  br label %.loopexit1

.loopexit1:                                       ; preds = %..loopexit1_crit_edge, %.preheader
  br label %28

28:                                               ; preds = %.loopexit1, %.loopexit, %5
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
  %32 = getelementptr inbounds double, ptr %2, i64 %31
  %33 = load double, ptr %32, align 8
  %34 = add nsw i64 %indvars.iv8, %26
  %35 = getelementptr inbounds double, ptr %5, i64 %34
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
  %41 = getelementptr inbounds double, ptr %2, i64 %40
  %42 = load double, ptr %41, align 8
  %43 = add nsw i64 %indvars.iv, %15
  %44 = getelementptr inbounds double, ptr %5, i64 %43
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

3:                                                ; preds = %2, %38
  %indvars.iv7 = phi i64 [ 0, %2 ], [ %indvars.iv.next8, %38 ]
  %indvars.iv = phi i64 [ 1, %2 ], [ %indvars.iv.next, %38 ]
  %indvars9 = trunc i64 %indvars.iv7 to i32
  %4 = getelementptr inbounds ptr, ptr %0, i64 %indvars.iv7
  %5 = load ptr, ptr %4, align 8
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv7, 1
  %indvars = trunc i64 %indvars.iv.next8 to i32
  %6 = sub nuw nsw i32 2000, %indvars9
  %7 = trunc nuw nsw i64 %indvars.iv7 to i32
  %8 = call i32 @idamax(i32 noundef %6, ptr noundef %5, i32 noundef %7, i32 noundef 1)
  %9 = trunc nuw nsw i64 %indvars.iv7 to i32
  %10 = add nsw i32 %8, %9
  %11 = getelementptr inbounds i32, ptr %1, i64 %indvars.iv7
  store i32 %10, ptr %11, align 4
  %12 = sext i32 %10 to i64
  %13 = getelementptr inbounds double, ptr %5, i64 %12
  %14 = load double, ptr %13, align 8
  %15 = fcmp une double %14, 0.000000e+00
  br i1 %15, label %16, label %38

16:                                               ; preds = %3
  %17 = zext i32 %10 to i64
  %18 = icmp ne i64 %17, %indvars.iv7
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = getelementptr inbounds double, ptr %5, i64 %indvars.iv7
  %21 = load double, ptr %20, align 8
  store double %21, ptr %13, align 8
  store double %14, ptr %20, align 8
  br label %22

22:                                               ; preds = %19, %16
  %23 = getelementptr inbounds double, ptr %5, i64 %indvars.iv7
  %24 = load double, ptr %23, align 8
  %25 = fdiv double -1.000000e+00, %24
  %26 = sub nuw nsw i32 2000, %indvars
  %27 = trunc nuw nsw i64 %indvars.iv.next8 to i32
  call void @dscal(i32 noundef %26, double noundef %25, ptr noundef %5, i32 noundef %27, i32 noundef 1)
  br i1 true, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %22
  br label %28

28:                                               ; preds = %.lr.ph, %36
  %indvars.iv4 = phi i64 [ %indvars.iv, %.lr.ph ], [ %indvars.iv.next5, %36 ]
  %29 = getelementptr inbounds ptr, ptr %0, i64 %indvars.iv4
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr inbounds double, ptr %30, i64 %12
  %32 = load double, ptr %31, align 8
  br i1 %18, label %33, label %36

33:                                               ; preds = %28
  %34 = getelementptr inbounds double, ptr %30, i64 %indvars.iv7
  %35 = load double, ptr %34, align 8
  store double %35, ptr %31, align 8
  store double %32, ptr %34, align 8
  br label %36

36:                                               ; preds = %33, %28
  %37 = trunc nuw nsw i64 %indvars.iv.next8 to i32
  call void @daxpy(i32 noundef %26, double noundef %32, ptr noundef %5, i32 noundef %37, i32 noundef 1, ptr noundef %30, i32 noundef %37, i32 noundef 1)
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv4, 1
  %exitcond = icmp ne i64 %indvars.iv.next5, 2000
  br i1 %exitcond, label %28, label %..loopexit_crit_edge, !llvm.loop !19

..loopexit_crit_edge:                             ; preds = %36
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %22
  br label %38

38:                                               ; preds = %.loopexit, %3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond10 = icmp ne i64 %indvars.iv.next8, 1999
  br i1 %exitcond10, label %3, label %39, !llvm.loop !20

39:                                               ; preds = %38
  %40 = getelementptr inbounds i32, ptr %1, i64 1999
  store i32 1999, ptr %40, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @dgesl(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  br label %4

.preheader:                                       ; preds = %15
  br label %20

4:                                                ; preds = %3, %15
  %indvars.iv = phi i64 [ 0, %3 ], [ %indvars.iv.next, %15 ]
  %5 = getelementptr inbounds i32, ptr %1, i64 %indvars.iv
  %6 = load i32, ptr %5, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds double, ptr %2, i64 %7
  %9 = load double, ptr %8, align 8
  %10 = zext i32 %6 to i64
  %11 = icmp ne i64 %10, %indvars.iv
  br i1 %11, label %12, label %15

12:                                               ; preds = %4
  %13 = getelementptr inbounds double, ptr %2, i64 %indvars.iv
  %14 = load double, ptr %13, align 8
  store double %14, ptr %8, align 8
  store double %9, ptr %13, align 8
  br label %15

15:                                               ; preds = %12, %4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %indvars = trunc i64 %indvars.iv.next to i32
  %16 = sub nuw nsw i32 2000, %indvars
  %17 = getelementptr inbounds ptr, ptr %0, i64 %indvars.iv
  %18 = load ptr, ptr %17, align 8
  %19 = trunc nuw nsw i64 %indvars.iv.next to i32
  call void @daxpy(i32 noundef %16, double noundef %9, ptr noundef %18, i32 noundef %19, i32 noundef 1, ptr noundef %2, i32 noundef %19, i32 noundef 1)
  %exitcond = icmp ne i64 %indvars.iv.next, 1999
  br i1 %exitcond, label %4, label %.preheader, !llvm.loop !21

20:                                               ; preds = %.preheader, %20
  %indvars.iv4 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next5, %20 ]
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv4, 1
  %21 = sub nuw nsw i64 2000, %indvars.iv.next5
  %22 = getelementptr inbounds ptr, ptr %0, i64 %21
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds double, ptr %23, i64 %21
  %25 = load double, ptr %24, align 8
  %26 = getelementptr inbounds double, ptr %2, i64 %21
  %27 = load double, ptr %26, align 8
  %28 = fdiv double %27, %25
  store double %28, ptr %26, align 8
  %29 = fneg double %28
  %30 = load ptr, ptr %22, align 8
  %31 = trunc nuw nsw i64 %21 to i32
  call void @daxpy(i32 noundef %31, double noundef %29, ptr noundef %30, i32 noundef 0, i32 noundef 1, ptr noundef %2, i32 noundef 0, i32 noundef 1)
  %exitcond8 = icmp ne i64 %indvars.iv.next5, 2000
  br i1 %exitcond8, label %20, label %32, !llvm.loop !22

32:                                               ; preds = %20
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = icmp sgt i32 %0, 1
  br i1 %3, label %.preheader, label %11

.preheader:                                       ; preds = %2
  %4 = getelementptr inbounds ptr, ptr %1, i64 1
  br label %6

5:                                                ; preds = %6
  %exitcond = icmp ne i32 %10, %0
  br i1 %exitcond, label %6, label %.loopexit, !llvm.loop !23

6:                                                ; preds = %.preheader, %5
  %.011 = phi i32 [ 1, %.preheader ], [ %10, %5 ]
  %7 = load ptr, ptr %4, align 8
  %8 = call i32 @strcmp(ptr noundef %7, ptr noundef @.str) #5
  %9 = icmp ne i32 %8, 0
  %10 = add i32 %.011, 1
  br i1 %9, label %5, label %.loopexit

.loopexit:                                        ; preds = %5, %6
  %.0.ph = phi i8 [ 1, %6 ], [ 0, %5 ]
  br label %11

11:                                               ; preds = %.loopexit, %2
  %.0 = phi i8 [ 0, %2 ], [ %.0.ph, %.loopexit ]
  %12 = call ptr @malloc(i64 noundef 16000) #6
  br label %13

13:                                               ; preds = %11, %13
  %indvars.iv = phi i64 [ 0, %11 ], [ %indvars.iv.next, %13 ]
  %14 = call ptr @malloc(i64 noundef 16008) #6
  %15 = getelementptr inbounds ptr, ptr %12, i64 %indvars.iv
  store ptr %14, ptr %15, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond5 = icmp ne i64 %indvars.iv.next, 2000
  br i1 %exitcond5, label %13, label %16, !llvm.loop !24

16:                                               ; preds = %13
  %17 = call ptr @malloc(i64 noundef 16000) #6
  %18 = call ptr @malloc(i64 noundef 16000) #6
  %19 = call ptr @malloc(i64 noundef 8000) #6
  call void @matgen(ptr noundef %12, ptr noundef %17)
  call void @dgefa(ptr noundef %12, ptr noundef %19)
  call void @dgesl(ptr noundef %12, ptr noundef %19, ptr noundef %17)
  call void @free(ptr noundef %19)
  call void @free(ptr noundef %18)
  call void @free(ptr noundef %17)
  br label %20

20:                                               ; preds = %16, %20
  %indvars.iv6 = phi i64 [ 0, %16 ], [ %indvars.iv.next7, %20 ]
  %21 = getelementptr inbounds ptr, ptr %12, i64 %indvars.iv6
  %22 = load ptr, ptr %21, align 8
  call void @free(ptr noundef %22)
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1
  %exitcond9 = icmp ne i64 %indvars.iv.next7, 2000
  br i1 %exitcond9, label %20, label %23, !llvm.loop !25

23:                                               ; preds = %20
  call void @free(ptr noundef %12)
  %24 = icmp ne i8 %.0, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %23
  %26 = call ptr @__acrt_iob_func(i32 noundef 1)
  %27 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %26, ptr noundef @.str.1, double noundef 0.000000e+00) #5
  br label %31

28:                                               ; preds = %23
  %29 = call ptr @__acrt_iob_func(i32 noundef 1)
  %30 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %29, ptr noundef @.str.2, double noundef 0.000000e+00) #5
  br label %31

31:                                               ; preds = %28, %25
  %32 = call ptr @__acrt_iob_func(i32 noundef 1)
  %33 = call i32 @fflush(ptr noundef %32)
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
  %4 = mul nsw i32 %3, 127773
  %5 = sub nsw i32 %2, %4
  %6 = mul nsw i32 16807, %5
  %7 = mul nsw i32 2836, %3
  %8 = sub nsw i32 %6, %7
  store i32 %8, ptr @seed, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %0
  %11 = add nsw i32 %8, 2147483647
  store i32 %11, ptr @seed, align 4
  br label %12

12:                                               ; preds = %10, %0
  %13 = load i32, ptr @seed, align 4
  %14 = sitofp i32 %13 to double
  %15 = fmul double f0x3E00000000200FE1, %14
  %16 = xor i32 %13, 123459876
  store i32 %16, ptr @seed, align 4
  ret double %15
}

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { allocsize(0) }

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
