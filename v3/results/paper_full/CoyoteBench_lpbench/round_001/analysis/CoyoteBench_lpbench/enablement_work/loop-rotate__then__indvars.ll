; ModuleID = 'results\paper_full\CoyoteBench_lpbench\round_000\output.ll'
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

3:                                                ; preds = %2, %11
  %indvars.iv8 = phi i64 [ 0, %2 ], [ %indvars.iv.next9, %11 ]
  br label %4

4:                                                ; preds = %3, %9
  %indvars.iv = phi i64 [ 0, %3 ], [ %indvars.iv.next, %9 ]
  %5 = call double @random_double()
  %6 = getelementptr inbounds ptr, ptr %0, i64 %indvars.iv
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds double, ptr %7, i64 %indvars.iv8
  store double %5, ptr %8, align 8
  br label %9

9:                                                ; preds = %4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp ne i64 %indvars.iv.next, 2000
  br i1 %exitcond, label %4, label %10, !llvm.loop !7

10:                                               ; preds = %9
  br label %11

11:                                               ; preds = %10
  %indvars.iv.next9 = add nuw nsw i64 %indvars.iv8, 1
  %exitcond11 = icmp ne i64 %indvars.iv.next9, 2000
  br i1 %exitcond11, label %3, label %12, !llvm.loop !9

12:                                               ; preds = %11
  br label %13

13:                                               ; preds = %12, %15
  %indvars.iv12 = phi i64 [ 0, %12 ], [ %indvars.iv.next13, %15 ]
  %14 = getelementptr inbounds double, ptr %1, i64 %indvars.iv12
  store double 0.000000e+00, ptr %14, align 8
  br label %15

15:                                               ; preds = %13
  %indvars.iv.next13 = add nuw nsw i64 %indvars.iv12, 1
  %exitcond15 = icmp ne i64 %indvars.iv.next13, 2000
  br i1 %exitcond15, label %13, label %16, !llvm.loop !10

16:                                               ; preds = %15
  br label %17

17:                                               ; preds = %16, %28
  %indvars.iv20 = phi i64 [ 0, %16 ], [ %indvars.iv.next21, %28 ]
  br label %18

18:                                               ; preds = %17, %26
  %indvars.iv16 = phi i64 [ 0, %17 ], [ %indvars.iv.next17, %26 ]
  %19 = getelementptr inbounds ptr, ptr %0, i64 %indvars.iv20
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds double, ptr %20, i64 %indvars.iv16
  %22 = load double, ptr %21, align 8
  %23 = getelementptr inbounds double, ptr %1, i64 %indvars.iv16
  %24 = load double, ptr %23, align 8
  %25 = fadd double %24, %22
  store double %25, ptr %23, align 8
  br label %26

26:                                               ; preds = %18
  %indvars.iv.next17 = add nuw nsw i64 %indvars.iv16, 1
  %exitcond19 = icmp ne i64 %indvars.iv.next17, 2000
  br i1 %exitcond19, label %18, label %27, !llvm.loop !11

27:                                               ; preds = %26
  br label %28

28:                                               ; preds = %27
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, 1
  %exitcond23 = icmp ne i64 %indvars.iv.next21, 2000
  br i1 %exitcond23, label %17, label %29, !llvm.loop !12

29:                                               ; preds = %28
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @idamax(i32 noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = icmp slt i32 %0, 1
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  br label %53

7:                                                ; preds = %4
  %8 = icmp eq i32 %0, 1
  br i1 %8, label %9, label %10

9:                                                ; preds = %7
  br label %52

10:                                               ; preds = %7
  %11 = icmp ne i32 %3, 1
  br i1 %11, label %12, label %33

12:                                               ; preds = %10
  %13 = sext i32 %2 to i64
  %14 = getelementptr inbounds double, ptr %1, i64 %13
  %15 = load double, ptr %14, align 8
  %16 = call double @llvm.fabs.f64(double %15)
  %17 = add i32 1, %3
  %18 = icmp slt i32 1, %0
  br i1 %18, label %.lr.ph9, label %32

.lr.ph9:                                          ; preds = %12
  %19 = sext i32 %17 to i64
  %20 = sext i32 %3 to i64
  %21 = sext i32 %2 to i64
  br label %22

22:                                               ; preds = %.lr.ph9, %30
  %indvars.iv13 = phi i64 [ %19, %.lr.ph9 ], [ %indvars.iv.next14, %30 ]
  %.27 = phi i32 [ 0, %.lr.ph9 ], [ %.3, %30 ]
  %.025 = phi i32 [ 1, %.lr.ph9 ], [ %31, %30 ]
  %.044 = phi double [ %16, %.lr.ph9 ], [ %.15, %30 ]
  %23 = add nsw i64 %indvars.iv13, %21
  %24 = getelementptr inbounds double, ptr %1, i64 %23
  %25 = load double, ptr %24, align 8
  %26 = call double @llvm.fabs.f64(double %25)
  %27 = fcmp ogt double %26, %.044
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %29

29:                                               ; preds = %28, %22
  %.15 = phi double [ %26, %28 ], [ %.044, %22 ]
  %.3 = phi i32 [ %.025, %28 ], [ %.27, %22 ]
  %indvars.iv.next14 = add nsw i64 %indvars.iv13, %20
  br label %30

30:                                               ; preds = %29
  %31 = add nuw nsw i32 %.025, 1
  %exitcond16 = icmp ne i32 %31, %0
  br i1 %exitcond16, label %22, label %._crit_edge10, !llvm.loop !13

._crit_edge10:                                    ; preds = %30
  %split11 = phi i32 [ %.3, %30 ]
  br label %32

32:                                               ; preds = %._crit_edge10, %12
  %.2.lcssa = phi i32 [ %split11, %._crit_edge10 ], [ 0, %12 ]
  br label %51

33:                                               ; preds = %10
  %34 = sext i32 %2 to i64
  %35 = getelementptr inbounds double, ptr %1, i64 %34
  %36 = load double, ptr %35, align 8
  %37 = call double @llvm.fabs.f64(double %36)
  %38 = icmp slt i32 1, %0
  br i1 %38, label %.lr.ph, label %50

.lr.ph:                                           ; preds = %33
  %39 = sext i32 %2 to i64
  %wide.trip.count = zext i32 %0 to i64
  br label %40

40:                                               ; preds = %.lr.ph, %49
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %49 ]
  %.53 = phi i32 [ 0, %.lr.ph ], [ %.6, %49 ]
  %.261 = phi double [ %37, %.lr.ph ], [ %.37, %49 ]
  %41 = add nsw i64 %indvars.iv, %39
  %42 = getelementptr inbounds double, ptr %1, i64 %41
  %43 = load double, ptr %42, align 8
  %44 = call double @llvm.fabs.f64(double %43)
  %45 = fcmp ogt double %44, %.261
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = trunc nuw nsw i64 %indvars.iv to i32
  br label %48

48:                                               ; preds = %46, %40
  %.37 = phi double [ %44, %46 ], [ %.261, %40 ]
  %.6 = phi i32 [ %47, %46 ], [ %.53, %40 ]
  br label %49

49:                                               ; preds = %48
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp ne i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %40, label %._crit_edge, !llvm.loop !14

._crit_edge:                                      ; preds = %49
  %split = phi i32 [ %.6, %49 ]
  br label %50

50:                                               ; preds = %._crit_edge, %33
  %.5.lcssa = phi i32 [ %split, %._crit_edge ], [ 0, %33 ]
  br label %51

51:                                               ; preds = %50, %32
  %.4 = phi i32 [ %.2.lcssa, %32 ], [ %.5.lcssa, %50 ]
  br label %52

52:                                               ; preds = %51, %9
  %.1 = phi i32 [ 0, %9 ], [ %.4, %51 ]
  br label %53

53:                                               ; preds = %52, %6
  %.0 = phi i32 [ -1, %6 ], [ %.1, %52 ]
  ret i32 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @dscal(i32 noundef %0, double noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = icmp sgt i32 %0, 0
  br i1 %6, label %7, label %34

7:                                                ; preds = %5
  %8 = icmp ne i32 %4, 1
  br i1 %8, label %9, label %23

9:                                                ; preds = %7
  %10 = mul nsw i32 %0, %4
  %11 = icmp slt i32 0, %10
  br i1 %11, label %.lr.ph4, label %22

.lr.ph4:                                          ; preds = %9
  %12 = sext i32 %4 to i64
  %13 = sext i32 %10 to i64
  %14 = sext i32 %3 to i64
  br label %15

15:                                               ; preds = %.lr.ph4, %20
  %indvars.iv7 = phi i64 [ 0, %.lr.ph4 ], [ %indvars.iv.next8, %20 ]
  %16 = add nsw i64 %indvars.iv7, %14
  %17 = getelementptr inbounds double, ptr %2, i64 %16
  %18 = load double, ptr %17, align 8
  %19 = fmul double %18, %1
  store double %19, ptr %17, align 8
  br label %20

20:                                               ; preds = %15
  %indvars.iv.next8 = add nsw i64 %indvars.iv7, %12
  %21 = icmp slt i64 %indvars.iv.next8, %13
  br i1 %21, label %15, label %._crit_edge5, !llvm.loop !15

._crit_edge5:                                     ; preds = %20
  br label %22

22:                                               ; preds = %._crit_edge5, %9
  br label %33

23:                                               ; preds = %7
  %24 = icmp slt i32 0, %0
  br i1 %24, label %.lr.ph, label %32

.lr.ph:                                           ; preds = %23
  %25 = sext i32 %3 to i64
  %wide.trip.count = zext i32 %0 to i64
  br label %26

26:                                               ; preds = %.lr.ph, %31
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %31 ]
  %27 = add nsw i64 %indvars.iv, %25
  %28 = getelementptr inbounds double, ptr %2, i64 %27
  %29 = load double, ptr %28, align 8
  %30 = fmul double %29, %1
  store double %30, ptr %28, align 8
  br label %31

31:                                               ; preds = %26
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp ne i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %26, label %._crit_edge, !llvm.loop !16

._crit_edge:                                      ; preds = %31
  br label %32

32:                                               ; preds = %._crit_edge, %23
  br label %33

33:                                               ; preds = %32, %22
  br label %34

34:                                               ; preds = %33, %5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @daxpy(i32 noundef %0, double noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7) #0 {
  %9 = icmp sgt i32 %0, 0
  br i1 %9, label %10, label %60

10:                                               ; preds = %8
  %11 = fcmp une double %1, 0.000000e+00
  br i1 %11, label %12, label %60

12:                                               ; preds = %10
  %13 = icmp ne i32 %4, 1
  br i1 %13, label %16, label %14

14:                                               ; preds = %12
  %15 = icmp ne i32 %7, 1
  br i1 %15, label %16, label %45

16:                                               ; preds = %14, %12
  %17 = icmp slt i32 %4, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %16
  %19 = sub nsw i32 1, %0
  %20 = mul nsw i32 %19, %4
  br label %21

21:                                               ; preds = %18, %16
  %.01 = phi i32 [ %20, %18 ], [ 0, %16 ]
  %22 = icmp slt i32 %7, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %21
  %24 = sub nsw i32 1, %0
  %25 = mul nsw i32 %24, %7
  br label %26

26:                                               ; preds = %23, %21
  %.0 = phi i32 [ %25, %23 ], [ 0, %21 ]
  %27 = icmp slt i32 0, %0
  br i1 %27, label %.lr.ph6, label %44

.lr.ph6:                                          ; preds = %26
  %28 = sext i32 %.0 to i64
  %29 = sext i32 %7 to i64
  %30 = sext i32 %6 to i64
  %31 = sext i32 %.01 to i64
  %32 = sext i32 %4 to i64
  %33 = sext i32 %3 to i64
  br label %34

34:                                               ; preds = %.lr.ph6, %42
  %indvars.iv11 = phi i64 [ %31, %.lr.ph6 ], [ %indvars.iv.next12, %42 ]
  %indvars.iv9 = phi i64 [ %28, %.lr.ph6 ], [ %indvars.iv.next10, %42 ]
  %.032 = phi i32 [ 0, %.lr.ph6 ], [ %43, %42 ]
  %35 = add nsw i64 %indvars.iv11, %33
  %36 = getelementptr inbounds double, ptr %2, i64 %35
  %37 = load double, ptr %36, align 8
  %38 = add nsw i64 %indvars.iv9, %30
  %39 = getelementptr inbounds double, ptr %5, i64 %38
  %40 = load double, ptr %39, align 8
  %41 = call double @llvm.fmuladd.f64(double %1, double %37, double %40)
  store double %41, ptr %39, align 8
  %indvars.iv.next12 = add nsw i64 %indvars.iv11, %32
  %indvars.iv.next10 = add nsw i64 %indvars.iv9, %29
  br label %42

42:                                               ; preds = %34
  %43 = add nuw nsw i32 %.032, 1
  %exitcond16 = icmp ne i32 %43, %0
  br i1 %exitcond16, label %34, label %._crit_edge7, !llvm.loop !17

._crit_edge7:                                     ; preds = %42
  br label %44

44:                                               ; preds = %._crit_edge7, %26
  br label %60

45:                                               ; preds = %14
  %46 = icmp slt i32 0, %0
  br i1 %46, label %.lr.ph, label %58

.lr.ph:                                           ; preds = %45
  %47 = sext i32 %6 to i64
  %48 = sext i32 %3 to i64
  %wide.trip.count = zext i32 %0 to i64
  br label %49

49:                                               ; preds = %.lr.ph, %57
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %57 ]
  %50 = add nsw i64 %indvars.iv, %48
  %51 = getelementptr inbounds double, ptr %2, i64 %50
  %52 = load double, ptr %51, align 8
  %53 = add nsw i64 %indvars.iv, %47
  %54 = getelementptr inbounds double, ptr %5, i64 %53
  %55 = load double, ptr %54, align 8
  %56 = call double @llvm.fmuladd.f64(double %1, double %52, double %55)
  store double %56, ptr %54, align 8
  br label %57

57:                                               ; preds = %49
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp ne i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %49, label %._crit_edge, !llvm.loop !18

._crit_edge:                                      ; preds = %57
  br label %58

58:                                               ; preds = %._crit_edge, %45
  br label %59

59:                                               ; preds = %58
  br label %60

60:                                               ; preds = %59, %44, %10, %8
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @dgefa(ptr noundef %0, ptr noundef %1) #0 {
  br label %3

3:                                                ; preds = %2, %41
  %indvars.iv7 = phi i64 [ 0, %2 ], [ %indvars.iv.next8, %41 ]
  %indvars.iv = phi i64 [ 1, %2 ], [ %indvars.iv.next, %41 ]
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
  br i1 %15, label %16, label %40

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
  br i1 true, label %.lr.ph, label %39

.lr.ph:                                           ; preds = %22
  br label %28

28:                                               ; preds = %.lr.ph, %38
  %indvars.iv4 = phi i64 [ %indvars.iv, %.lr.ph ], [ %indvars.iv.next5, %38 ]
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
  br label %38

38:                                               ; preds = %36
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv4, 1
  %exitcond = icmp ne i64 %indvars.iv.next5, 2000
  br i1 %exitcond, label %28, label %._crit_edge, !llvm.loop !19

._crit_edge:                                      ; preds = %38
  br label %39

39:                                               ; preds = %._crit_edge, %22
  br label %40

40:                                               ; preds = %39, %3
  br label %41

41:                                               ; preds = %40
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond10 = icmp ne i64 %indvars.iv.next8, 1999
  br i1 %exitcond10, label %3, label %42, !llvm.loop !20

42:                                               ; preds = %41
  %43 = getelementptr inbounds i32, ptr %1, i64 1999
  store i32 1999, ptr %43, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @dgesl(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  br label %4

4:                                                ; preds = %3, %20
  %indvars.iv = phi i64 [ 0, %3 ], [ %indvars.iv.next, %20 ]
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
  br label %20

20:                                               ; preds = %15
  %exitcond = icmp ne i64 %indvars.iv.next, 1999
  br i1 %exitcond, label %4, label %21, !llvm.loop !21

21:                                               ; preds = %20
  br label %22

22:                                               ; preds = %21, %34
  %indvars.iv4 = phi i64 [ 0, %21 ], [ %indvars.iv.next5, %34 ]
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv4, 1
  %23 = sub nuw nsw i64 2000, %indvars.iv.next5
  %24 = getelementptr inbounds ptr, ptr %0, i64 %23
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds double, ptr %25, i64 %23
  %27 = load double, ptr %26, align 8
  %28 = getelementptr inbounds double, ptr %2, i64 %23
  %29 = load double, ptr %28, align 8
  %30 = fdiv double %29, %27
  store double %30, ptr %28, align 8
  %31 = fneg double %30
  %32 = load ptr, ptr %24, align 8
  %33 = trunc nuw nsw i64 %23 to i32
  call void @daxpy(i32 noundef %33, double noundef %31, ptr noundef %32, i32 noundef 0, i32 noundef 1, ptr noundef %2, i32 noundef 0, i32 noundef 1)
  br label %34

34:                                               ; preds = %22
  %exitcond8 = icmp ne i64 %indvars.iv.next5, 2000
  br i1 %exitcond8, label %22, label %35, !llvm.loop !22

35:                                               ; preds = %34
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = icmp sgt i32 %0, 1
  br i1 %3, label %4, label %15

4:                                                ; preds = %2
  br label %5

5:                                                ; preds = %4, %12
  %.011 = phi i32 [ 1, %4 ], [ %13, %12 ]
  %6 = getelementptr inbounds ptr, ptr %1, i64 1
  %7 = load ptr, ptr %6, align 8
  %8 = call i32 @strcmp(ptr noundef %7, ptr noundef @.str) #5
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %5
  br label %14

11:                                               ; preds = %5
  br label %12

12:                                               ; preds = %11
  %13 = add nuw nsw i32 %.011, 1
  %exitcond = icmp ne i32 %13, %0
  br i1 %exitcond, label %5, label %.loopexit, !llvm.loop !23

.loopexit:                                        ; preds = %12
  br label %14

14:                                               ; preds = %.loopexit, %10
  %.1 = phi i8 [ 1, %10 ], [ 0, %.loopexit ]
  br label %15

15:                                               ; preds = %14, %2
  %.0 = phi i8 [ %.1, %14 ], [ 0, %2 ]
  %16 = call ptr @malloc(i64 noundef 16000) #6
  br label %17

17:                                               ; preds = %15, %20
  %indvars.iv = phi i64 [ 0, %15 ], [ %indvars.iv.next, %20 ]
  %18 = call ptr @malloc(i64 noundef 16008) #6
  %19 = getelementptr inbounds ptr, ptr %16, i64 %indvars.iv
  store ptr %18, ptr %19, align 8
  br label %20

20:                                               ; preds = %17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond5 = icmp ne i64 %indvars.iv.next, 2000
  br i1 %exitcond5, label %17, label %21, !llvm.loop !24

21:                                               ; preds = %20
  %22 = call ptr @malloc(i64 noundef 16000) #6
  %23 = call ptr @malloc(i64 noundef 16000) #6
  %24 = call ptr @malloc(i64 noundef 8000) #6
  call void @matgen(ptr noundef %16, ptr noundef %22)
  call void @dgefa(ptr noundef %16, ptr noundef %24)
  call void @dgesl(ptr noundef %16, ptr noundef %24, ptr noundef %22)
  call void @free(ptr noundef %24)
  call void @free(ptr noundef %23)
  call void @free(ptr noundef %22)
  br label %25

25:                                               ; preds = %21, %28
  %indvars.iv6 = phi i64 [ 0, %21 ], [ %indvars.iv.next7, %28 ]
  %26 = getelementptr inbounds ptr, ptr %16, i64 %indvars.iv6
  %27 = load ptr, ptr %26, align 8
  call void @free(ptr noundef %27)
  br label %28

28:                                               ; preds = %25
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1
  %exitcond9 = icmp ne i64 %indvars.iv.next7, 2000
  br i1 %exitcond9, label %25, label %29, !llvm.loop !25

29:                                               ; preds = %28
  call void @free(ptr noundef %16)
  %30 = icmp ne i8 %.0, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %29
  %32 = call ptr @__acrt_iob_func(i32 noundef 1)
  %33 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef @.str.1, double noundef 0.000000e+00) #5
  br label %37

34:                                               ; preds = %29
  %35 = call ptr @__acrt_iob_func(i32 noundef 1)
  %36 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %35, ptr noundef @.str.2, double noundef 0.000000e+00) #5
  br label %37

37:                                               ; preds = %34, %31
  %38 = call ptr @__acrt_iob_func(i32 noundef 1)
  %39 = call i32 @fflush(ptr noundef %38)
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
