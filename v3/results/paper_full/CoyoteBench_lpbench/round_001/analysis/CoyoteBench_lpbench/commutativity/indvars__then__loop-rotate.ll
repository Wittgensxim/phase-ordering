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
  %indvars.iv219 = phi i64 [ 0, %2 ], [ %indvars.iv.next3, %11 ]
  br label %4

4:                                                ; preds = %3, %9
  %indvars.iv18 = phi i64 [ 0, %3 ], [ %indvars.iv.next, %9 ]
  %5 = call double @random_double()
  %6 = getelementptr inbounds ptr, ptr %0, i64 %indvars.iv18
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds double, ptr %7, i64 %indvars.iv219
  store double %5, ptr %8, align 8
  br label %9

9:                                                ; preds = %4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv18, 1
  %exitcond = icmp ne i64 %indvars.iv.next, 2000
  br i1 %exitcond, label %4, label %10, !llvm.loop !7

10:                                               ; preds = %9
  br label %11

11:                                               ; preds = %10
  %indvars.iv.next3 = add nuw nsw i64 %indvars.iv219, 1
  %exitcond5 = icmp ne i64 %indvars.iv.next3, 2000
  br i1 %exitcond5, label %3, label %12, !llvm.loop !9

12:                                               ; preds = %11
  br label %13

13:                                               ; preds = %12, %15
  %indvars.iv620 = phi i64 [ 0, %12 ], [ %indvars.iv.next7, %15 ]
  %14 = getelementptr inbounds double, ptr %1, i64 %indvars.iv620
  store double 0.000000e+00, ptr %14, align 8
  br label %15

15:                                               ; preds = %13
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv620, 1
  %exitcond9 = icmp ne i64 %indvars.iv.next7, 2000
  br i1 %exitcond9, label %13, label %16, !llvm.loop !10

16:                                               ; preds = %15
  br label %17

17:                                               ; preds = %16, %28
  %indvars.iv1422 = phi i64 [ 0, %16 ], [ %indvars.iv.next15, %28 ]
  br label %18

18:                                               ; preds = %17, %26
  %indvars.iv1021 = phi i64 [ 0, %17 ], [ %indvars.iv.next11, %26 ]
  %19 = getelementptr inbounds ptr, ptr %0, i64 %indvars.iv1422
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds double, ptr %20, i64 %indvars.iv1021
  %22 = load double, ptr %21, align 8
  %23 = getelementptr inbounds double, ptr %1, i64 %indvars.iv1021
  %24 = load double, ptr %23, align 8
  %25 = fadd double %24, %22
  store double %25, ptr %23, align 8
  br label %26

26:                                               ; preds = %18
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv1021, 1
  %exitcond13 = icmp ne i64 %indvars.iv.next11, 2000
  br i1 %exitcond13, label %18, label %27, !llvm.loop !11

27:                                               ; preds = %26
  br label %28

28:                                               ; preds = %27
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv1422, 1
  %exitcond17 = icmp ne i64 %indvars.iv.next15, 2000
  br i1 %exitcond17, label %17, label %29, !llvm.loop !12

29:                                               ; preds = %28
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @idamax(i32 noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = icmp slt i32 %0, 1
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  br label %51

7:                                                ; preds = %4
  %8 = icmp eq i32 %0, 1
  br i1 %8, label %9, label %10

9:                                                ; preds = %7
  br label %50

10:                                               ; preds = %7
  %11 = icmp ne i32 %3, 1
  br i1 %11, label %12, label %32

12:                                               ; preds = %10
  %13 = sext i32 %2 to i64
  %14 = getelementptr inbounds double, ptr %1, i64 %13
  %15 = load double, ptr %14, align 8
  %16 = call double @llvm.fabs.f64(double %15)
  %17 = add i32 1, %3
  %18 = sext i32 %17 to i64
  %19 = sext i32 %3 to i64
  %20 = sext i32 %2 to i64
  %exitcond510 = icmp ne i32 1, %0
  br i1 %exitcond510, label %.lr.ph16, label %31

.lr.ph16:                                         ; preds = %12
  br label %21

21:                                               ; preds = %.lr.ph16, %29
  %.214 = phi i32 [ 0, %.lr.ph16 ], [ %.3, %29 ]
  %.0213 = phi i32 [ 1, %.lr.ph16 ], [ %30, %29 ]
  %.0412 = phi double [ %16, %.lr.ph16 ], [ %.15, %29 ]
  %indvars.iv211 = phi i64 [ %18, %.lr.ph16 ], [ %indvars.iv.next3, %29 ]
  %22 = add nsw i64 %indvars.iv211, %20
  %23 = getelementptr inbounds double, ptr %1, i64 %22
  %24 = load double, ptr %23, align 8
  %25 = call double @llvm.fabs.f64(double %24)
  %26 = fcmp ogt double %25, %.0412
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %28

28:                                               ; preds = %27, %21
  %.15 = phi double [ %25, %27 ], [ %.0412, %21 ]
  %.3 = phi i32 [ %.0213, %27 ], [ %.214, %21 ]
  %indvars.iv.next3 = add nsw i64 %indvars.iv211, %19
  br label %29

29:                                               ; preds = %28
  %30 = add nuw i32 %.0213, 1
  %exitcond5 = icmp ne i32 %30, %0
  br i1 %exitcond5, label %21, label %._crit_edge17, !llvm.loop !13

._crit_edge17:                                    ; preds = %29
  %split18 = phi i32 [ %.3, %29 ]
  br label %31

31:                                               ; preds = %._crit_edge17, %12
  %.2.lcssa = phi i32 [ %split18, %._crit_edge17 ], [ 0, %12 ]
  br label %49

32:                                               ; preds = %10
  %33 = sext i32 %2 to i64
  %34 = getelementptr inbounds double, ptr %1, i64 %33
  %35 = load double, ptr %34, align 8
  %36 = call double @llvm.fabs.f64(double %35)
  %37 = sext i32 %2 to i64
  %wide.trip.count = zext i32 %0 to i64
  %exitcond6 = icmp ne i64 1, %wide.trip.count
  br i1 %exitcond6, label %.lr.ph, label %48

.lr.ph:                                           ; preds = %32
  br label %38

38:                                               ; preds = %.lr.ph, %47
  %.59 = phi i32 [ 0, %.lr.ph ], [ %.6, %47 ]
  %.268 = phi double [ %36, %.lr.ph ], [ %.37, %47 ]
  %indvars.iv7 = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %47 ]
  %39 = add nsw i64 %indvars.iv7, %37
  %40 = getelementptr inbounds double, ptr %1, i64 %39
  %41 = load double, ptr %40, align 8
  %42 = call double @llvm.fabs.f64(double %41)
  %43 = fcmp ogt double %42, %.268
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = trunc nuw nsw i64 %indvars.iv7 to i32
  br label %46

46:                                               ; preds = %44, %38
  %.37 = phi double [ %42, %44 ], [ %.268, %38 ]
  %.6 = phi i32 [ %45, %44 ], [ %.59, %38 ]
  br label %47

47:                                               ; preds = %46
  %indvars.iv.next = add nuw nsw i64 %indvars.iv7, 1
  %exitcond = icmp ne i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %38, label %._crit_edge, !llvm.loop !14

._crit_edge:                                      ; preds = %47
  %split = phi i32 [ %.6, %47 ]
  br label %48

48:                                               ; preds = %._crit_edge, %32
  %.5.lcssa = phi i32 [ %split, %._crit_edge ], [ 0, %32 ]
  br label %49

49:                                               ; preds = %48, %31
  %.4 = phi i32 [ %.2.lcssa, %31 ], [ %.5.lcssa, %48 ]
  br label %50

50:                                               ; preds = %49, %9
  %.1 = phi i32 [ 0, %9 ], [ %.4, %49 ]
  br label %51

51:                                               ; preds = %50, %6
  %.0 = phi i32 [ -1, %6 ], [ %.1, %50 ]
  ret i32 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @dscal(i32 noundef %0, double noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = icmp sgt i32 %0, 0
  br i1 %6, label %7, label %33

7:                                                ; preds = %5
  %8 = icmp ne i32 %4, 1
  br i1 %8, label %9, label %23

9:                                                ; preds = %7
  %10 = mul nsw i32 %0, %4
  %11 = sext i32 %4 to i64
  %12 = sext i32 %10 to i64
  %13 = sext i32 %3 to i64
  %14 = icmp slt i64 0, %12
  br i1 %14, label %.lr.ph, label %22

.lr.ph:                                           ; preds = %9
  br label %15

15:                                               ; preds = %.lr.ph, %20
  %indvars.iv26 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next3, %20 ]
  %16 = add nsw i64 %indvars.iv26, %13
  %17 = getelementptr inbounds double, ptr %2, i64 %16
  %18 = load double, ptr %17, align 8
  %19 = fmul double %18, %1
  store double %19, ptr %17, align 8
  br label %20

20:                                               ; preds = %15
  %indvars.iv.next3 = add nsw i64 %indvars.iv26, %11
  %21 = icmp slt i64 %indvars.iv.next3, %12
  br i1 %21, label %15, label %._crit_edge, !llvm.loop !15

._crit_edge:                                      ; preds = %20
  br label %22

22:                                               ; preds = %._crit_edge, %9
  br label %32

23:                                               ; preds = %7
  %24 = sext i32 %3 to i64
  %wide.trip.count = zext i32 %0 to i64
  br label %25

25:                                               ; preds = %23, %30
  %indvars.iv5 = phi i64 [ 0, %23 ], [ %indvars.iv.next, %30 ]
  %26 = add nsw i64 %indvars.iv5, %24
  %27 = getelementptr inbounds double, ptr %2, i64 %26
  %28 = load double, ptr %27, align 8
  %29 = fmul double %28, %1
  store double %29, ptr %27, align 8
  br label %30

30:                                               ; preds = %25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv5, 1
  %exitcond = icmp ne i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %25, label %31, !llvm.loop !16

31:                                               ; preds = %30
  br label %32

32:                                               ; preds = %31, %22
  br label %33

33:                                               ; preds = %32, %5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @daxpy(i32 noundef %0, double noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7) #0 {
  %9 = icmp sgt i32 %0, 0
  br i1 %9, label %10, label %58

10:                                               ; preds = %8
  %11 = fcmp une double %1, 0.000000e+00
  br i1 %11, label %12, label %58

12:                                               ; preds = %10
  %13 = icmp ne i32 %4, 1
  br i1 %13, label %16, label %14

14:                                               ; preds = %12
  %15 = icmp ne i32 %7, 1
  br i1 %15, label %16, label %44

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
  %27 = sext i32 %.01 to i64
  %28 = sext i32 %4 to i64
  %29 = sext i32 %3 to i64
  %30 = sext i32 %.0 to i64
  %31 = sext i32 %7 to i64
  %32 = sext i32 %6 to i64
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 0)
  %exitcond911 = icmp ne i32 0, %smax
  br i1 %exitcond911, label %.lr.ph, label %43

.lr.ph:                                           ; preds = %26
  br label %33

33:                                               ; preds = %.lr.ph, %41
  %.0314 = phi i32 [ 0, %.lr.ph ], [ %42, %41 ]
  %indvars.iv213 = phi i64 [ %27, %.lr.ph ], [ %indvars.iv.next3, %41 ]
  %indvars.iv412 = phi i64 [ %30, %.lr.ph ], [ %indvars.iv.next5, %41 ]
  %34 = add nsw i64 %indvars.iv213, %29
  %35 = getelementptr inbounds double, ptr %2, i64 %34
  %36 = load double, ptr %35, align 8
  %37 = add nsw i64 %indvars.iv412, %32
  %38 = getelementptr inbounds double, ptr %5, i64 %37
  %39 = load double, ptr %38, align 8
  %40 = call double @llvm.fmuladd.f64(double %1, double %36, double %39)
  store double %40, ptr %38, align 8
  %indvars.iv.next3 = add nsw i64 %indvars.iv213, %28
  %indvars.iv.next5 = add nsw i64 %indvars.iv412, %31
  br label %41

41:                                               ; preds = %33
  %42 = add nuw i32 %.0314, 1
  %exitcond9 = icmp ne i32 %42, %smax
  br i1 %exitcond9, label %33, label %._crit_edge, !llvm.loop !17

._crit_edge:                                      ; preds = %41
  br label %43

43:                                               ; preds = %._crit_edge, %26
  br label %58

44:                                               ; preds = %14
  %45 = sext i32 %3 to i64
  %46 = sext i32 %6 to i64
  %wide.trip.count = zext i32 %0 to i64
  br label %47

47:                                               ; preds = %44, %55
  %indvars.iv10 = phi i64 [ 0, %44 ], [ %indvars.iv.next, %55 ]
  %48 = add nsw i64 %indvars.iv10, %45
  %49 = getelementptr inbounds double, ptr %2, i64 %48
  %50 = load double, ptr %49, align 8
  %51 = add nsw i64 %indvars.iv10, %46
  %52 = getelementptr inbounds double, ptr %5, i64 %51
  %53 = load double, ptr %52, align 8
  %54 = call double @llvm.fmuladd.f64(double %1, double %50, double %53)
  store double %54, ptr %52, align 8
  br label %55

55:                                               ; preds = %47
  %indvars.iv.next = add nuw nsw i64 %indvars.iv10, 1
  %exitcond = icmp ne i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %47, label %56, !llvm.loop !18

56:                                               ; preds = %55
  br label %57

57:                                               ; preds = %56
  br label %58

58:                                               ; preds = %57, %43, %10, %8
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @dgefa(ptr noundef %0, ptr noundef %1) #0 {
  br label %3

3:                                                ; preds = %2, %41
  %indvars613 = phi i32 [ 0, %2 ], [ %indvars6, %41 ]
  %indvars.iv11 = phi i64 [ 1, %2 ], [ %indvars.iv.next, %41 ]
  %indvars.iv410 = phi i64 [ 0, %2 ], [ %indvars.iv.next5, %41 ]
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
  br i1 %15, label %16, label %40

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
  br i1 %exitcond8, label %.lr.ph, label %39

.lr.ph:                                           ; preds = %22
  br label %28

28:                                               ; preds = %.lr.ph, %38
  %indvars.iv19 = phi i64 [ %indvars.iv11, %.lr.ph ], [ %indvars.iv.next2, %38 ]
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
  br label %38

38:                                               ; preds = %36
  %indvars.iv.next2 = add nuw nsw i64 %indvars.iv19, 1
  %exitcond = icmp ne i64 %indvars.iv.next2, 2000
  br i1 %exitcond, label %28, label %._crit_edge, !llvm.loop !19

._crit_edge:                                      ; preds = %38
  br label %39

39:                                               ; preds = %._crit_edge, %22
  br label %40

40:                                               ; preds = %39, %3
  %indvars.iv12 = phi i64 [ %indvars.iv11, %39 ], [ %indvars.iv11, %3 ]
  br label %41

41:                                               ; preds = %40
  %indvars.iv.next = add nuw nsw i64 %indvars.iv12, 1
  %indvars6 = trunc i64 %indvars.iv.next5 to i32
  %exitcond7 = icmp ne i64 %indvars.iv.next5, 1999
  br i1 %exitcond7, label %3, label %42, !llvm.loop !20

42:                                               ; preds = %41
  %43 = getelementptr inbounds i32, ptr %1, i64 1999
  store i32 1999, ptr %43, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @dgesl(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  br label %4

4:                                                ; preds = %3, %20
  %indvars.iv7 = phi i64 [ 0, %3 ], [ %indvars.iv.next, %20 ]
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
  br label %20

20:                                               ; preds = %15
  %exitcond = icmp ne i64 %indvars.iv.next, 1999
  br i1 %exitcond, label %4, label %21, !llvm.loop !21

21:                                               ; preds = %20
  br label %22

22:                                               ; preds = %21, %34
  %indvars.iv28 = phi i64 [ 0, %21 ], [ %indvars.iv.next3, %34 ]
  %indvars.iv.next3 = add nuw nsw i64 %indvars.iv28, 1
  %23 = sub nsw i64 2000, %indvars.iv.next3
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
  %33 = trunc nsw i64 %23 to i32
  call void @daxpy(i32 noundef %33, double noundef %31, ptr noundef %32, i32 noundef 0, i32 noundef 1, ptr noundef %2, i32 noundef 0, i32 noundef 1)
  br label %34

34:                                               ; preds = %22
  %exitcond6 = icmp ne i64 %indvars.iv.next3, 2000
  br i1 %exitcond6, label %22, label %35, !llvm.loop !22

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
  %.017 = phi i32 [ 1, %4 ], [ %13, %12 ]
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
  %13 = add nuw i32 %.017, 1
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
  %indvars.iv8 = phi i64 [ 0, %15 ], [ %indvars.iv.next, %20 ]
  %18 = call ptr @malloc(i64 noundef 16008) #6
  %19 = getelementptr inbounds ptr, ptr %16, i64 %indvars.iv8
  store ptr %18, ptr %19, align 8
  br label %20

20:                                               ; preds = %17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv8, 1
  %exitcond2 = icmp ne i64 %indvars.iv.next, 2000
  br i1 %exitcond2, label %17, label %21, !llvm.loop !24

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
  %indvars.iv39 = phi i64 [ 0, %21 ], [ %indvars.iv.next4, %28 ]
  %26 = getelementptr inbounds ptr, ptr %16, i64 %indvars.iv39
  %27 = load ptr, ptr %26, align 8
  call void @free(ptr noundef %27)
  br label %28

28:                                               ; preds = %25
  %indvars.iv.next4 = add nuw nsw i64 %indvars.iv39, 1
  %exitcond6 = icmp ne i64 %indvars.iv.next4, 2000
  br i1 %exitcond6, label %25, label %29, !llvm.loop !25

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

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #1

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
