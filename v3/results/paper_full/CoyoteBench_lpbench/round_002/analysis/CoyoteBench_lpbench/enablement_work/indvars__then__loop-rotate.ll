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
  %indvars.iv522 = phi i64 [ 0, %2 ], [ %indvars.iv.next6, %8 ]
  br label %3

.preheader2:                                      ; preds = %8
  br label %9

3:                                                ; preds = %.preheader3, %3
  %indvars.iv21 = phi i64 [ 0, %.preheader3 ], [ %indvars.iv.next, %3 ]
  %4 = call double @random_double()
  %5 = getelementptr inbounds ptr, ptr %0, i64 %indvars.iv21
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds double, ptr %6, i64 %indvars.iv522
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
  %10 = getelementptr inbounds double, ptr %1, i64 %indvars.iv923
  store double 0.000000e+00, ptr %10, align 8
  %indvars.iv.next10 = add nuw nsw i64 %indvars.iv923, 1
  %exitcond12 = icmp ne i64 %indvars.iv.next10, 2000
  br i1 %exitcond12, label %9, label %.preheader1, !llvm.loop !10

.preheader:                                       ; preds = %.preheader1, %19
  %indvars.iv1725 = phi i64 [ 0, %.preheader1 ], [ %indvars.iv.next18, %19 ]
  br label %11

11:                                               ; preds = %.preheader, %11
  %indvars.iv1324 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next14, %11 ]
  %12 = getelementptr inbounds ptr, ptr %0, i64 %indvars.iv1725
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds double, ptr %13, i64 %indvars.iv1324
  %15 = load double, ptr %14, align 8
  %16 = getelementptr inbounds double, ptr %1, i64 %indvars.iv1324
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
  br i1 %5, label %39, label %6

6:                                                ; preds = %4
  %7 = icmp eq i32 %0, 1
  br i1 %7, label %39, label %8

8:                                                ; preds = %6
  %9 = icmp ne i32 %3, 1
  br i1 %9, label %10, label %26

10:                                               ; preds = %8
  %11 = sext i32 %2 to i64
  %12 = getelementptr inbounds double, ptr %1, i64 %11
  %13 = load double, ptr %12, align 8
  %14 = call double @llvm.fabs.f64(double %13)
  %15 = add i32 1, %3
  %16 = sext i32 %15 to i64
  %17 = sext i32 %3 to i64
  %18 = sext i32 %2 to i64
  %exitcond611 = icmp ne i32 1, %0
  br i1 %exitcond611, label %.lr.ph16, label %.loopexit

.lr.ph16:                                         ; preds = %10
  br label %19

19:                                               ; preds = %.lr.ph16, %19
  %.215 = phi i32 [ 0, %.lr.ph16 ], [ %.3, %19 ]
  %.0214 = phi i32 [ 1, %.lr.ph16 ], [ %25, %19 ]
  %.0413 = phi double [ %14, %.lr.ph16 ], [ %.15, %19 ]
  %indvars.iv312 = phi i64 [ %16, %.lr.ph16 ], [ %indvars.iv.next4, %19 ]
  %20 = add nsw i64 %indvars.iv312, %18
  %21 = getelementptr inbounds double, ptr %1, i64 %20
  %22 = load double, ptr %21, align 8
  %23 = call double @llvm.fabs.f64(double %22)
  %24 = fcmp ogt double %23, %.0413
  %.15 = select i1 %24, double %23, double %.0413
  %.3 = select i1 %24, i32 %.0214, i32 %.215
  %indvars.iv.next4 = add nsw i64 %indvars.iv312, %17
  %25 = add nuw i32 %.0214, 1
  %exitcond6 = icmp ne i32 %25, %0
  br i1 %exitcond6, label %19, label %..loopexit_crit_edge, !llvm.loop !13

26:                                               ; preds = %8
  %27 = sext i32 %2 to i64
  %28 = getelementptr inbounds double, ptr %1, i64 %27
  %29 = load double, ptr %28, align 8
  %30 = call double @llvm.fabs.f64(double %29)
  %31 = sext i32 %2 to i64
  %wide.trip.count = zext i32 %0 to i64
  %exitcond7 = icmp ne i64 1, %wide.trip.count
  br i1 %exitcond7, label %.lr.ph, label %.loopexit1

.lr.ph:                                           ; preds = %26
  br label %32

32:                                               ; preds = %.lr.ph, %32
  %.510 = phi i32 [ 0, %.lr.ph ], [ %.6, %32 ]
  %.269 = phi double [ %30, %.lr.ph ], [ %.37, %32 ]
  %indvars.iv8 = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %32 ]
  %33 = add nsw i64 %indvars.iv8, %31
  %34 = getelementptr inbounds double, ptr %1, i64 %33
  %35 = load double, ptr %34, align 8
  %36 = call double @llvm.fabs.f64(double %35)
  %37 = fcmp ogt double %36, %.269
  %.37 = select i1 %37, double %36, double %.269
  %38 = trunc nuw nsw i64 %indvars.iv8 to i32
  %.6 = select i1 %37, i32 %38, i32 %.510
  %indvars.iv.next = add nuw nsw i64 %indvars.iv8, 1
  %exitcond = icmp ne i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %32, label %..loopexit1_crit_edge, !llvm.loop !14

..loopexit_crit_edge:                             ; preds = %19
  %split17 = phi i32 [ %.3, %19 ]
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %10
  %.2.lcssa = phi i32 [ %split17, %..loopexit_crit_edge ], [ 0, %10 ]
  br label %39

..loopexit1_crit_edge:                            ; preds = %32
  %split = phi i32 [ %.6, %32 ]
  br label %.loopexit1

.loopexit1:                                       ; preds = %..loopexit1_crit_edge, %26
  %.5.lcssa = phi i32 [ %split, %..loopexit1_crit_edge ], [ 0, %26 ]
  br label %39

39:                                               ; preds = %.loopexit1, %.loopexit, %6, %4
  %.0 = phi i32 [ -1, %4 ], [ 0, %6 ], [ %.2.lcssa, %.loopexit ], [ %.5.lcssa, %.loopexit1 ]
  ret i32 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @dscal(i32 noundef %0, double noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = icmp sgt i32 %0, 0
  br i1 %6, label %7, label %27

7:                                                ; preds = %5
  %8 = icmp ne i32 %4, 1
  br i1 %8, label %10, label %.preheader

.preheader:                                       ; preds = %7
  %9 = sext i32 %3 to i64
  %wide.trip.count = zext i32 %0 to i64
  br label %22

10:                                               ; preds = %7
  %11 = mul nsw i32 %0, %4
  %12 = sext i32 %4 to i64
  %13 = sext i32 %11 to i64
  %14 = sext i32 %3 to i64
  %15 = icmp slt i64 0, %13
  br i1 %15, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %10
  br label %16

16:                                               ; preds = %.lr.ph, %16
  %indvars.iv37 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next4, %16 ]
  %17 = add nsw i64 %indvars.iv37, %14
  %18 = getelementptr inbounds double, ptr %2, i64 %17
  %19 = load double, ptr %18, align 8
  %20 = fmul double %19, %1
  store double %20, ptr %18, align 8
  %indvars.iv.next4 = add nsw i64 %indvars.iv37, %12
  %21 = icmp slt i64 %indvars.iv.next4, %13
  br i1 %21, label %16, label %..loopexit_crit_edge, !llvm.loop !15

22:                                               ; preds = %.preheader, %22
  %indvars.iv6 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %22 ]
  %23 = add nsw i64 %indvars.iv6, %9
  %24 = getelementptr inbounds double, ptr %2, i64 %23
  %25 = load double, ptr %24, align 8
  %26 = fmul double %25, %1
  store double %26, ptr %24, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv6, 1
  %exitcond = icmp ne i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %22, label %.loopexit1, !llvm.loop !16

..loopexit_crit_edge:                             ; preds = %16
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %10
  br label %27

.loopexit1:                                       ; preds = %22
  br label %27

27:                                               ; preds = %.loopexit1, %.loopexit, %5
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
  %30 = getelementptr inbounds double, ptr %2, i64 %29
  %31 = load double, ptr %30, align 8
  %32 = add nsw i64 %indvars.iv512, %27
  %33 = getelementptr inbounds double, ptr %5, i64 %32
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
  %39 = getelementptr inbounds double, ptr %2, i64 %38
  %40 = load double, ptr %39, align 8
  %41 = add nsw i64 %indvars.iv11, %15
  %42 = getelementptr inbounds double, ptr %5, i64 %41
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

3:                                                ; preds = %2, %38
  %indvars613 = phi i32 [ 0, %2 ], [ %indvars6, %38 ]
  %indvars.iv11 = phi i64 [ 1, %2 ], [ %indvars.iv.next, %38 ]
  %indvars.iv410 = phi i64 [ 0, %2 ], [ %indvars.iv.next5, %38 ]
  %4 = getelementptr inbounds ptr, ptr %0, i64 %indvars.iv410
  %5 = load ptr, ptr %4, align 8
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv410, 1
  %indvars = trunc i64 %indvars.iv.next5 to i32
  %6 = sub nuw nsw i32 2000, %indvars613
  %7 = trunc nuw nsw i64 %indvars.iv410 to i32
  %8 = call i32 @idamax(i32 noundef %6, ptr noundef %5, i32 noundef %7, i32 noundef 1)
  %9 = trunc nuw nsw i64 %indvars.iv410 to i32
  %10 = add nsw i32 %8, %9
  %11 = getelementptr inbounds i32, ptr %1, i64 %indvars.iv410
  store i32 %10, ptr %11, align 4
  %12 = sext i32 %10 to i64
  %13 = getelementptr inbounds double, ptr %5, i64 %12
  %14 = load double, ptr %13, align 8
  %15 = fcmp une double %14, 0.000000e+00
  br i1 %15, label %16, label %38

16:                                               ; preds = %3
  %17 = zext i32 %10 to i64
  %18 = icmp ne i64 %17, %indvars.iv410
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = getelementptr inbounds double, ptr %5, i64 %indvars.iv410
  %21 = load double, ptr %20, align 8
  store double %21, ptr %13, align 8
  store double %14, ptr %20, align 8
  br label %22

22:                                               ; preds = %19, %16
  %23 = getelementptr inbounds double, ptr %5, i64 %indvars.iv410
  %24 = load double, ptr %23, align 8
  %25 = fdiv double -1.000000e+00, %24
  %26 = sub nuw nsw i32 2000, %indvars
  %27 = trunc nuw nsw i64 %indvars.iv.next5 to i32
  call void @dscal(i32 noundef %26, double noundef %25, ptr noundef %5, i32 noundef %27, i32 noundef 1)
  %exitcond8 = icmp ne i64 %indvars.iv11, 2000
  br i1 %exitcond8, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %22
  br label %28

28:                                               ; preds = %.lr.ph, %36
  %indvars.iv19 = phi i64 [ %indvars.iv11, %.lr.ph ], [ %indvars.iv.next2, %36 ]
  %29 = getelementptr inbounds ptr, ptr %0, i64 %indvars.iv19
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr inbounds double, ptr %30, i64 %12
  %32 = load double, ptr %31, align 8
  br i1 %18, label %33, label %36

33:                                               ; preds = %28
  %34 = getelementptr inbounds double, ptr %30, i64 %indvars.iv410
  %35 = load double, ptr %34, align 8
  store double %35, ptr %31, align 8
  store double %32, ptr %34, align 8
  br label %36

36:                                               ; preds = %33, %28
  %37 = trunc nuw nsw i64 %indvars.iv.next5 to i32
  call void @daxpy(i32 noundef %26, double noundef %32, ptr noundef %5, i32 noundef %37, i32 noundef 1, ptr noundef %30, i32 noundef %37, i32 noundef 1)
  %indvars.iv.next2 = add nuw nsw i64 %indvars.iv19, 1
  %exitcond = icmp ne i64 %indvars.iv.next2, 2000
  br i1 %exitcond, label %28, label %..loopexit_crit_edge, !llvm.loop !19

..loopexit_crit_edge:                             ; preds = %36
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %22
  br label %38

38:                                               ; preds = %.loopexit, %3
  %indvars.iv12 = phi i64 [ %indvars.iv11, %.loopexit ], [ %indvars.iv11, %3 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv12, 1
  %indvars6 = trunc i64 %indvars.iv.next5 to i32
  %exitcond7 = icmp ne i64 %indvars.iv.next5, 1999
  br i1 %exitcond7, label %3, label %39, !llvm.loop !20

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
  %indvars.iv7 = phi i64 [ 0, %3 ], [ %indvars.iv.next, %15 ]
  %5 = getelementptr inbounds i32, ptr %1, i64 %indvars.iv7
  %6 = load i32, ptr %5, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds double, ptr %2, i64 %7
  %9 = load double, ptr %8, align 8
  %10 = zext i32 %6 to i64
  %11 = icmp ne i64 %10, %indvars.iv7
  br i1 %11, label %12, label %15

12:                                               ; preds = %4
  %13 = getelementptr inbounds double, ptr %2, i64 %indvars.iv7
  %14 = load double, ptr %13, align 8
  store double %14, ptr %8, align 8
  store double %9, ptr %13, align 8
  br label %15

15:                                               ; preds = %12, %4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv7, 1
  %indvars = trunc i64 %indvars.iv.next to i32
  %16 = sub nuw nsw i32 2000, %indvars
  %17 = getelementptr inbounds ptr, ptr %0, i64 %indvars.iv7
  %18 = load ptr, ptr %17, align 8
  %19 = trunc nuw nsw i64 %indvars.iv.next to i32
  call void @daxpy(i32 noundef %16, double noundef %9, ptr noundef %18, i32 noundef %19, i32 noundef 1, ptr noundef %2, i32 noundef %19, i32 noundef 1)
  %exitcond = icmp ne i64 %indvars.iv.next, 1999
  br i1 %exitcond, label %4, label %.preheader, !llvm.loop !21

20:                                               ; preds = %.preheader, %20
  %indvars.iv28 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next3, %20 ]
  %indvars.iv.next3 = add nuw nsw i64 %indvars.iv28, 1
  %21 = sub nsw i64 2000, %indvars.iv.next3
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
  %31 = trunc nsw i64 %21 to i32
  call void @daxpy(i32 noundef %31, double noundef %29, ptr noundef %30, i32 noundef 0, i32 noundef 1, ptr noundef %2, i32 noundef 0, i32 noundef 1)
  %exitcond6 = icmp ne i64 %indvars.iv.next3, 2000
  br i1 %exitcond6, label %20, label %32, !llvm.loop !22

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
  %.01 = phi i32 [ %10, %6 ]
  %exitcond = icmp ne i32 %.01, %0
  br i1 %exitcond, label %6, label %.loopexit, !llvm.loop !23

6:                                                ; preds = %.preheader, %5
  %.017 = phi i32 [ 1, %.preheader ], [ %.01, %5 ]
  %7 = load ptr, ptr %4, align 8
  %8 = call i32 @strcmp(ptr noundef %7, ptr noundef @.str) #5
  %9 = icmp ne i32 %8, 0
  %10 = add nuw i32 %.017, 1
  br i1 %9, label %5, label %.loopexit

.loopexit:                                        ; preds = %5, %6
  %.0.ph = phi i8 [ 1, %6 ], [ 0, %5 ]
  br label %11

11:                                               ; preds = %.loopexit, %2
  %.0 = phi i8 [ 0, %2 ], [ %.0.ph, %.loopexit ]
  %12 = call ptr @malloc(i64 noundef 16000) #6
  br label %13

13:                                               ; preds = %11, %13
  %indvars.iv8 = phi i64 [ 0, %11 ], [ %indvars.iv.next, %13 ]
  %14 = call ptr @malloc(i64 noundef 16008) #6
  %15 = getelementptr inbounds ptr, ptr %12, i64 %indvars.iv8
  store ptr %14, ptr %15, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv8, 1
  %exitcond2 = icmp ne i64 %indvars.iv.next, 2000
  br i1 %exitcond2, label %13, label %16, !llvm.loop !24

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
  %indvars.iv39 = phi i64 [ 0, %16 ], [ %indvars.iv.next4, %20 ]
  %21 = getelementptr inbounds ptr, ptr %12, i64 %indvars.iv39
  %22 = load ptr, ptr %21, align 8
  call void @free(ptr noundef %22)
  %indvars.iv.next4 = add nuw nsw i64 %indvars.iv39, 1
  %exitcond6 = icmp ne i64 %indvars.iv.next4, 2000
  br i1 %exitcond6, label %20, label %23, !llvm.loop !25

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
