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

3:                                                ; preds = %13, %2
  %indvars.iv2 = phi i64 [ %indvars.iv.next3, %13 ], [ 0, %2 ]
  %exitcond5 = icmp ne i64 %indvars.iv2, 2000
  br i1 %exitcond5, label %4, label %14

4:                                                ; preds = %3
  br label %5

5:                                                ; preds = %11, %4
  %indvars.iv = phi i64 [ %indvars.iv.next, %11 ], [ 0, %4 ]
  %exitcond = icmp ne i64 %indvars.iv, 2000
  br i1 %exitcond, label %6, label %12

6:                                                ; preds = %5
  %7 = call double @random_double()
  %8 = getelementptr inbounds ptr, ptr %0, i64 %indvars.iv
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds double, ptr %9, i64 %indvars.iv2
  store double %7, ptr %10, align 8
  br label %11

11:                                               ; preds = %6
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %5, !llvm.loop !7

12:                                               ; preds = %5
  br label %13

13:                                               ; preds = %12
  %indvars.iv.next3 = add nuw nsw i64 %indvars.iv2, 1
  br label %3, !llvm.loop !9

14:                                               ; preds = %3
  br label %15

15:                                               ; preds = %24, %14
  %indvars.iv6 = phi i64 [ 0, %14 ], [ %indvars.iv.next7.2, %24 ]
  br label %16

16:                                               ; preds = %15
  %17 = getelementptr inbounds double, ptr %1, i64 %indvars.iv6
  store double 0.000000e+00, ptr %17, align 8
  br label %18

18:                                               ; preds = %16
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1
  br label %19

19:                                               ; preds = %18
  %20 = getelementptr inbounds double, ptr %1, i64 %indvars.iv.next7
  store double 0.000000e+00, ptr %20, align 8
  br label %21

21:                                               ; preds = %19
  %indvars.iv.next7.1 = add nuw nsw i64 %indvars.iv6, 2
  %exitcond9.2 = icmp ne i64 %indvars.iv.next7.1, 2000
  br i1 %exitcond9.2, label %22, label %25

22:                                               ; preds = %21
  %23 = getelementptr inbounds double, ptr %1, i64 %indvars.iv.next7.1
  store double 0.000000e+00, ptr %23, align 8
  br label %24

24:                                               ; preds = %22
  %indvars.iv.next7.2 = add nuw nsw i64 %indvars.iv6, 3
  br label %15, !llvm.loop !10

25:                                               ; preds = %21
  br label %26

26:                                               ; preds = %48, %25
  %indvars.iv14 = phi i64 [ %indvars.iv.next15, %48 ], [ 0, %25 ]
  %exitcond17 = icmp ne i64 %indvars.iv14, 2000
  br i1 %exitcond17, label %27, label %49

27:                                               ; preds = %26
  br label %28

28:                                               ; preds = %46, %27
  %indvars.iv10 = phi i64 [ 0, %27 ], [ %indvars.iv.next11.1, %46 ]
  %exitcond13 = icmp ne i64 %indvars.iv10, 2000
  br i1 %exitcond13, label %29, label %47

29:                                               ; preds = %28
  %30 = getelementptr inbounds ptr, ptr %0, i64 %indvars.iv14
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds double, ptr %31, i64 %indvars.iv10
  %33 = load double, ptr %32, align 8
  %34 = getelementptr inbounds double, ptr %1, i64 %indvars.iv10
  %35 = load double, ptr %34, align 8
  %36 = fadd double %35, %33
  store double %36, ptr %34, align 8
  br label %37

37:                                               ; preds = %29
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1
  br label %38

38:                                               ; preds = %37
  %39 = getelementptr inbounds ptr, ptr %0, i64 %indvars.iv14
  %40 = load ptr, ptr %39, align 8
  %41 = getelementptr inbounds double, ptr %40, i64 %indvars.iv.next11
  %42 = load double, ptr %41, align 8
  %43 = getelementptr inbounds double, ptr %1, i64 %indvars.iv.next11
  %44 = load double, ptr %43, align 8
  %45 = fadd double %44, %42
  store double %45, ptr %43, align 8
  br label %46

46:                                               ; preds = %38
  %indvars.iv.next11.1 = add nuw nsw i64 %indvars.iv10, 2
  br label %28, !llvm.loop !11

47:                                               ; preds = %28
  br label %48

48:                                               ; preds = %47
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14, 1
  br label %26, !llvm.loop !12

49:                                               ; preds = %26
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
  %18 = sext i32 %17 to i64
  %19 = sext i32 %3 to i64
  %20 = sext i32 %2 to i64
  br label %21

21:                                               ; preds = %30, %12
  %indvars.iv2 = phi i64 [ %indvars.iv.next3, %30 ], [ %18, %12 ]
  %.04 = phi double [ %16, %12 ], [ %.15, %30 ]
  %.02 = phi i32 [ 1, %12 ], [ %31, %30 ]
  %.2 = phi i32 [ 0, %12 ], [ %.3, %30 ]
  %exitcond5 = icmp ne i32 %.02, %0
  br i1 %exitcond5, label %22, label %32

22:                                               ; preds = %21
  %23 = add nsw i64 %indvars.iv2, %20
  %24 = getelementptr inbounds double, ptr %1, i64 %23
  %25 = load double, ptr %24, align 8
  %26 = call double @llvm.fabs.f64(double %25)
  %27 = fcmp ogt double %26, %.04
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %29

29:                                               ; preds = %28, %22
  %.15 = phi double [ %26, %28 ], [ %.04, %22 ]
  %.3 = phi i32 [ %.02, %28 ], [ %.2, %22 ]
  %indvars.iv.next3 = add nsw i64 %indvars.iv2, %19
  br label %30

30:                                               ; preds = %29
  %31 = add nuw i32 %.02, 1
  br label %21, !llvm.loop !13

32:                                               ; preds = %21
  %.2.lcssa = phi i32 [ %.2, %21 ]
  br label %51

33:                                               ; preds = %10
  %34 = sext i32 %2 to i64
  %35 = getelementptr inbounds double, ptr %1, i64 %34
  %36 = load double, ptr %35, align 8
  %37 = call double @llvm.fabs.f64(double %36)
  %38 = sext i32 %2 to i64
  %wide.trip.count = zext i32 %0 to i64
  br label %39

39:                                               ; preds = %49, %33
  %indvars.iv = phi i64 [ %indvars.iv.next, %49 ], [ 1, %33 ]
  %.26 = phi double [ %37, %33 ], [ %.37, %49 ]
  %.5 = phi i32 [ 0, %33 ], [ %.6, %49 ]
  %exitcond = icmp ne i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %40, label %50

40:                                               ; preds = %39
  %41 = add nsw i64 %indvars.iv, %38
  %42 = getelementptr inbounds double, ptr %1, i64 %41
  %43 = load double, ptr %42, align 8
  %44 = call double @llvm.fabs.f64(double %43)
  %45 = fcmp ogt double %44, %.26
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = trunc nuw nsw i64 %indvars.iv to i32
  br label %48

48:                                               ; preds = %46, %40
  %.37 = phi double [ %44, %46 ], [ %.26, %40 ]
  %.6 = phi i32 [ %47, %46 ], [ %.5, %40 ]
  br label %49

49:                                               ; preds = %48
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %39, !llvm.loop !14

50:                                               ; preds = %39
  %.5.lcssa = phi i32 [ %.5, %39 ]
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
  %11 = sext i32 %4 to i64
  %12 = sext i32 %10 to i64
  %13 = sext i32 %3 to i64
  br label %14

14:                                               ; preds = %21, %9
  %indvars.iv2 = phi i64 [ %indvars.iv.next3, %21 ], [ 0, %9 ]
  %15 = icmp slt i64 %indvars.iv2, %12
  br i1 %15, label %16, label %22

16:                                               ; preds = %14
  %17 = add nsw i64 %indvars.iv2, %13
  %18 = getelementptr inbounds double, ptr %2, i64 %17
  %19 = load double, ptr %18, align 8
  %20 = fmul double %19, %1
  store double %20, ptr %18, align 8
  br label %21

21:                                               ; preds = %16
  %indvars.iv.next3 = add nsw i64 %indvars.iv2, %11
  br label %14, !llvm.loop !15

22:                                               ; preds = %14
  br label %33

23:                                               ; preds = %7
  %24 = sext i32 %3 to i64
  %wide.trip.count = zext i32 %0 to i64
  br label %25

25:                                               ; preds = %31, %23
  %indvars.iv = phi i64 [ %indvars.iv.next, %31 ], [ 0, %23 ]
  %exitcond = icmp ne i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %26, label %32

26:                                               ; preds = %25
  %27 = add nsw i64 %indvars.iv, %24
  %28 = getelementptr inbounds double, ptr %2, i64 %27
  %29 = load double, ptr %28, align 8
  %30 = fmul double %29, %1
  store double %30, ptr %28, align 8
  br label %31

31:                                               ; preds = %26
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %25, !llvm.loop !16

32:                                               ; preds = %25
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
  %27 = sext i32 %.01 to i64
  %28 = sext i32 %4 to i64
  %29 = sext i32 %3 to i64
  %30 = sext i32 %.0 to i64
  %31 = sext i32 %7 to i64
  %32 = sext i32 %6 to i64
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 0)
  br label %33

33:                                               ; preds = %42, %26
  %indvars.iv4 = phi i64 [ %indvars.iv.next5, %42 ], [ %30, %26 ]
  %indvars.iv2 = phi i64 [ %indvars.iv.next3, %42 ], [ %27, %26 ]
  %.03 = phi i32 [ 0, %26 ], [ %43, %42 ]
  %exitcond9 = icmp ne i32 %.03, %smax
  br i1 %exitcond9, label %34, label %44

34:                                               ; preds = %33
  %35 = add nsw i64 %indvars.iv2, %29
  %36 = getelementptr inbounds double, ptr %2, i64 %35
  %37 = load double, ptr %36, align 8
  %38 = add nsw i64 %indvars.iv4, %32
  %39 = getelementptr inbounds double, ptr %5, i64 %38
  %40 = load double, ptr %39, align 8
  %41 = call double @llvm.fmuladd.f64(double %1, double %37, double %40)
  store double %41, ptr %39, align 8
  %indvars.iv.next3 = add nsw i64 %indvars.iv2, %28
  %indvars.iv.next5 = add nsw i64 %indvars.iv4, %31
  br label %42

42:                                               ; preds = %34
  %43 = add nuw i32 %.03, 1
  br label %33, !llvm.loop !17

44:                                               ; preds = %33
  br label %60

45:                                               ; preds = %14
  %46 = sext i32 %3 to i64
  %47 = sext i32 %6 to i64
  %wide.trip.count = zext i32 %0 to i64
  br label %48

48:                                               ; preds = %57, %45
  %indvars.iv = phi i64 [ %indvars.iv.next, %57 ], [ 0, %45 ]
  %exitcond = icmp ne i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %49, label %58

49:                                               ; preds = %48
  %50 = add nsw i64 %indvars.iv, %46
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
  br label %48, !llvm.loop !18

58:                                               ; preds = %48
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

3:                                                ; preds = %43, %2
  %indvars.iv4 = phi i64 [ %indvars.iv.next5, %43 ], [ 0, %2 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %43 ], [ 1, %2 ]
  %indvars6 = trunc i64 %indvars.iv4 to i32
  %exitcond7 = icmp ne i64 %indvars.iv4, 1999
  br i1 %exitcond7, label %4, label %44

4:                                                ; preds = %3
  %5 = getelementptr inbounds ptr, ptr %0, i64 %indvars.iv4
  %6 = load ptr, ptr %5, align 8
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv4, 1
  %indvars = trunc i64 %indvars.iv.next5 to i32
  %7 = sub nuw nsw i32 2000, %indvars6
  %8 = trunc nuw nsw i64 %indvars.iv4 to i32
  %9 = call i32 @idamax(i32 noundef %7, ptr noundef %6, i32 noundef %8, i32 noundef 1)
  %10 = trunc nuw nsw i64 %indvars.iv4 to i32
  %11 = add nsw i32 %9, %10
  %12 = getelementptr inbounds i32, ptr %1, i64 %indvars.iv4
  store i32 %11, ptr %12, align 4
  %13 = sext i32 %11 to i64
  %14 = getelementptr inbounds double, ptr %6, i64 %13
  %15 = load double, ptr %14, align 8
  %16 = fcmp une double %15, 0.000000e+00
  br i1 %16, label %17, label %42

17:                                               ; preds = %4
  %18 = zext i32 %11 to i64
  %19 = icmp ne i64 %18, %indvars.iv4
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = getelementptr inbounds double, ptr %6, i64 %indvars.iv4
  %22 = load double, ptr %21, align 8
  store double %22, ptr %14, align 8
  store double %15, ptr %21, align 8
  br label %23

23:                                               ; preds = %20, %17
  %24 = getelementptr inbounds double, ptr %6, i64 %indvars.iv4
  %25 = load double, ptr %24, align 8
  %26 = fdiv double -1.000000e+00, %25
  %27 = sub nuw nsw i32 2000, %indvars
  %28 = trunc nuw nsw i64 %indvars.iv.next5 to i32
  call void @dscal(i32 noundef %27, double noundef %26, ptr noundef %6, i32 noundef %28, i32 noundef 1)
  br label %29

29:                                               ; preds = %40, %23
  %indvars.iv1 = phi i64 [ %indvars.iv.next2, %40 ], [ %indvars.iv, %23 ]
  %exitcond = icmp ne i64 %indvars.iv1, 2000
  br i1 %exitcond, label %30, label %41

30:                                               ; preds = %29
  %31 = getelementptr inbounds ptr, ptr %0, i64 %indvars.iv1
  %32 = load ptr, ptr %31, align 8
  %33 = getelementptr inbounds double, ptr %32, i64 %13
  %34 = load double, ptr %33, align 8
  br i1 %19, label %35, label %38

35:                                               ; preds = %30
  %36 = getelementptr inbounds double, ptr %32, i64 %indvars.iv4
  %37 = load double, ptr %36, align 8
  store double %37, ptr %33, align 8
  store double %34, ptr %36, align 8
  br label %38

38:                                               ; preds = %35, %30
  %39 = trunc nuw nsw i64 %indvars.iv.next5 to i32
  call void @daxpy(i32 noundef %27, double noundef %34, ptr noundef %6, i32 noundef %39, i32 noundef 1, ptr noundef %32, i32 noundef %39, i32 noundef 1)
  br label %40

40:                                               ; preds = %38
  %indvars.iv.next2 = add nuw nsw i64 %indvars.iv1, 1
  br label %29, !llvm.loop !19

41:                                               ; preds = %29
  br label %42

42:                                               ; preds = %41, %4
  br label %43

43:                                               ; preds = %42
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %3, !llvm.loop !20

44:                                               ; preds = %3
  %45 = getelementptr inbounds i32, ptr %1, i64 1999
  store i32 1999, ptr %45, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @dgesl(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  br label %4

4:                                                ; preds = %21, %3
  %indvars.iv = phi i64 [ %indvars.iv.next, %21 ], [ 0, %3 ]
  %exitcond = icmp ne i64 %indvars.iv, 1999
  br i1 %exitcond, label %5, label %22

5:                                                ; preds = %4
  %6 = getelementptr inbounds i32, ptr %1, i64 %indvars.iv
  %7 = load i32, ptr %6, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds double, ptr %2, i64 %8
  %10 = load double, ptr %9, align 8
  %11 = zext i32 %7 to i64
  %12 = icmp ne i64 %11, %indvars.iv
  br i1 %12, label %13, label %16

13:                                               ; preds = %5
  %14 = getelementptr inbounds double, ptr %2, i64 %indvars.iv
  %15 = load double, ptr %14, align 8
  store double %15, ptr %9, align 8
  store double %10, ptr %14, align 8
  br label %16

16:                                               ; preds = %13, %5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %indvars = trunc i64 %indvars.iv.next to i32
  %17 = sub nuw nsw i32 2000, %indvars
  %18 = getelementptr inbounds ptr, ptr %0, i64 %indvars.iv
  %19 = load ptr, ptr %18, align 8
  %20 = trunc nuw nsw i64 %indvars.iv.next to i32
  call void @daxpy(i32 noundef %17, double noundef %10, ptr noundef %19, i32 noundef %20, i32 noundef 1, ptr noundef %2, i32 noundef %20, i32 noundef 1)
  br label %21

21:                                               ; preds = %16
  br label %4, !llvm.loop !21

22:                                               ; preds = %4
  br label %23

23:                                               ; preds = %36, %22
  %indvars.iv2 = phi i64 [ %indvars.iv.next3, %36 ], [ 0, %22 ]
  %exitcond6 = icmp ne i64 %indvars.iv2, 2000
  br i1 %exitcond6, label %24, label %37

24:                                               ; preds = %23
  %indvars.iv.next3 = add nuw nsw i64 %indvars.iv2, 1
  %25 = sub nsw i64 2000, %indvars.iv.next3
  %26 = getelementptr inbounds ptr, ptr %0, i64 %25
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr inbounds double, ptr %27, i64 %25
  %29 = load double, ptr %28, align 8
  %30 = getelementptr inbounds double, ptr %2, i64 %25
  %31 = load double, ptr %30, align 8
  %32 = fdiv double %31, %29
  store double %32, ptr %30, align 8
  %33 = fneg double %32
  %34 = load ptr, ptr %26, align 8
  %35 = trunc nsw i64 %25 to i32
  call void @daxpy(i32 noundef %35, double noundef %33, ptr noundef %34, i32 noundef 0, i32 noundef 1, ptr noundef %2, i32 noundef 0, i32 noundef 1)
  br label %36

36:                                               ; preds = %24
  br label %23, !llvm.loop !22

37:                                               ; preds = %23
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = icmp sgt i32 %0, 1
  br i1 %3, label %4, label %16

4:                                                ; preds = %2
  br label %5

5:                                                ; preds = %13, %4
  %.01 = phi i32 [ 1, %4 ], [ %14, %13 ]
  %exitcond = icmp ne i32 %.01, %0
  br i1 %exitcond, label %6, label %.loopexit

6:                                                ; preds = %5
  %7 = getelementptr inbounds ptr, ptr %1, i64 1
  %8 = load ptr, ptr %7, align 8
  %9 = call i32 @strcmp(ptr noundef %8, ptr noundef @.str) #5
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %6
  br label %15

12:                                               ; preds = %6
  br label %13

13:                                               ; preds = %12
  %14 = add nuw i32 %.01, 1
  br label %5, !llvm.loop !23

.loopexit:                                        ; preds = %5
  br label %15

15:                                               ; preds = %.loopexit, %11
  %.1 = phi i8 [ 1, %11 ], [ 0, %.loopexit ]
  br label %16

16:                                               ; preds = %15, %2
  %.0 = phi i8 [ %.1, %15 ], [ 0, %2 ]
  %17 = call ptr @malloc(i64 noundef 16000) #6
  br label %18

18:                                               ; preds = %22, %16
  %indvars.iv = phi i64 [ %indvars.iv.next, %22 ], [ 0, %16 ]
  %exitcond2 = icmp ne i64 %indvars.iv, 2000
  br i1 %exitcond2, label %19, label %23

19:                                               ; preds = %18
  %20 = call ptr @malloc(i64 noundef 16008) #6
  %21 = getelementptr inbounds ptr, ptr %17, i64 %indvars.iv
  store ptr %20, ptr %21, align 8
  br label %22

22:                                               ; preds = %19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %18, !llvm.loop !24

23:                                               ; preds = %18
  %24 = call ptr @malloc(i64 noundef 16000) #6
  %25 = call ptr @malloc(i64 noundef 16000) #6
  %26 = call ptr @malloc(i64 noundef 8000) #6
  call void @matgen(ptr noundef %17, ptr noundef %24)
  call void @dgefa(ptr noundef %17, ptr noundef %26)
  call void @dgesl(ptr noundef %17, ptr noundef %26, ptr noundef %24)
  call void @free(ptr noundef %26)
  call void @free(ptr noundef %25)
  call void @free(ptr noundef %24)
  br label %27

27:                                               ; preds = %31, %23
  %indvars.iv3 = phi i64 [ %indvars.iv.next4, %31 ], [ 0, %23 ]
  %exitcond6 = icmp ne i64 %indvars.iv3, 2000
  br i1 %exitcond6, label %28, label %32

28:                                               ; preds = %27
  %29 = getelementptr inbounds ptr, ptr %17, i64 %indvars.iv3
  %30 = load ptr, ptr %29, align 8
  call void @free(ptr noundef %30)
  br label %31

31:                                               ; preds = %28
  %indvars.iv.next4 = add nuw nsw i64 %indvars.iv3, 1
  br label %27, !llvm.loop !25

32:                                               ; preds = %27
  call void @free(ptr noundef %17)
  %33 = icmp ne i8 %.0, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %32
  %35 = call ptr @__acrt_iob_func(i32 noundef 1)
  %36 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %35, ptr noundef @.str.1, double noundef 0.000000e+00) #5
  br label %40

37:                                               ; preds = %32
  %38 = call ptr @__acrt_iob_func(i32 noundef 1)
  %39 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %38, ptr noundef @.str.2, double noundef 0.000000e+00) #5
  br label %40

40:                                               ; preds = %37, %34
  %41 = call ptr @__acrt_iob_func(i32 noundef 1)
  %42 = call i32 @fflush(ptr noundef %41)
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
