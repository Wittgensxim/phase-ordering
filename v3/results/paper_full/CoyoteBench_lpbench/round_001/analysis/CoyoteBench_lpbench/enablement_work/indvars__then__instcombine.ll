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
  %exitcond5.not = icmp eq i64 %indvars.iv2, 2000
  br i1 %exitcond5.not, label %14, label %4

4:                                                ; preds = %3
  br label %5

5:                                                ; preds = %11, %4
  %indvars.iv = phi i64 [ %indvars.iv.next, %11 ], [ 0, %4 ]
  %exitcond.not = icmp eq i64 %indvars.iv, 2000
  br i1 %exitcond.not, label %12, label %6

6:                                                ; preds = %5
  %7 = call double @random_double()
  %8 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %indvars.iv2
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

15:                                               ; preds = %18, %14
  %indvars.iv6 = phi i64 [ %indvars.iv.next7, %18 ], [ 0, %14 ]
  %exitcond9.not = icmp eq i64 %indvars.iv6, 2000
  br i1 %exitcond9.not, label %19, label %16

16:                                               ; preds = %15
  %17 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv6
  store double 0.000000e+00, ptr %17, align 8
  br label %18

18:                                               ; preds = %16
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1
  br label %15, !llvm.loop !10

19:                                               ; preds = %15
  br label %20

20:                                               ; preds = %33, %19
  %indvars.iv14 = phi i64 [ %indvars.iv.next15, %33 ], [ 0, %19 ]
  %exitcond17.not = icmp eq i64 %indvars.iv14, 2000
  br i1 %exitcond17.not, label %34, label %21

21:                                               ; preds = %20
  br label %22

22:                                               ; preds = %31, %21
  %indvars.iv10 = phi i64 [ %indvars.iv.next11, %31 ], [ 0, %21 ]
  %exitcond13.not = icmp eq i64 %indvars.iv10, 2000
  br i1 %exitcond13.not, label %32, label %23

23:                                               ; preds = %22
  %24 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv14
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds nuw [8 x i8], ptr %25, i64 %indvars.iv10
  %27 = load double, ptr %26, align 8
  %28 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv10
  %29 = load double, ptr %28, align 8
  %30 = fadd double %29, %27
  store double %30, ptr %28, align 8
  br label %31

31:                                               ; preds = %23
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1
  br label %22, !llvm.loop !11

32:                                               ; preds = %22
  br label %33

33:                                               ; preds = %32
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14, 1
  br label %20, !llvm.loop !12

34:                                               ; preds = %20
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @idamax(i32 noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = icmp slt i32 %0, 1
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  br label %52

7:                                                ; preds = %4
  %8 = icmp eq i32 %0, 1
  br i1 %8, label %9, label %10

9:                                                ; preds = %7
  br label %51

10:                                               ; preds = %7
  %.not = icmp eq i32 %3, 1
  br i1 %.not, label %32, label %11

11:                                               ; preds = %10
  %12 = sext i32 %2 to i64
  %13 = getelementptr inbounds [8 x i8], ptr %1, i64 %12
  %14 = load double, ptr %13, align 8
  %15 = call double @llvm.fabs.f64(double %14)
  %16 = add i32 %3, 1
  %17 = sext i32 %16 to i64
  %18 = sext i32 %3 to i64
  %19 = sext i32 %2 to i64
  br label %20

20:                                               ; preds = %29, %11
  %indvars.iv2 = phi i64 [ %indvars.iv.next3, %29 ], [ %17, %11 ]
  %.04 = phi double [ %.15, %29 ], [ %15, %11 ]
  %.02 = phi i32 [ %30, %29 ], [ 1, %11 ]
  %.2 = phi i32 [ %.3, %29 ], [ 0, %11 ]
  %exitcond5.not = icmp eq i32 %.02, %0
  br i1 %exitcond5.not, label %31, label %21

21:                                               ; preds = %20
  %22 = getelementptr [8 x i8], ptr %1, i64 %indvars.iv2
  %23 = getelementptr [8 x i8], ptr %22, i64 %19
  %24 = load double, ptr %23, align 8
  %25 = call double @llvm.fabs.f64(double %24)
  %26 = fcmp ogt double %25, %.04
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %28

28:                                               ; preds = %27, %21
  %.15 = phi double [ %25, %27 ], [ %.04, %21 ]
  %.3 = phi i32 [ %.02, %27 ], [ %.2, %21 ]
  br label %29

29:                                               ; preds = %28
  %indvars.iv.next3 = add nsw i64 %indvars.iv2, %18
  %30 = add nuw i32 %.02, 1
  br label %20, !llvm.loop !13

31:                                               ; preds = %20
  br label %50

32:                                               ; preds = %10
  %33 = sext i32 %2 to i64
  %34 = getelementptr inbounds [8 x i8], ptr %1, i64 %33
  %35 = load double, ptr %34, align 8
  %36 = call double @llvm.fabs.f64(double %35)
  %37 = sext i32 %2 to i64
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %38

38:                                               ; preds = %48, %32
  %indvars.iv = phi i64 [ %indvars.iv.next, %48 ], [ 1, %32 ]
  %.26 = phi double [ %.37, %48 ], [ %36, %32 ]
  %.5 = phi i32 [ %.6, %48 ], [ 0, %32 ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %49, label %39

39:                                               ; preds = %38
  %40 = getelementptr [8 x i8], ptr %1, i64 %indvars.iv
  %41 = getelementptr [8 x i8], ptr %40, i64 %37
  %42 = load double, ptr %41, align 8
  %43 = call double @llvm.fabs.f64(double %42)
  %44 = fcmp ogt double %43, %.26
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = trunc nuw nsw i64 %indvars.iv to i32
  br label %47

47:                                               ; preds = %45, %39
  %.37 = phi double [ %43, %45 ], [ %.26, %39 ]
  %.6 = phi i32 [ %46, %45 ], [ %.5, %39 ]
  br label %48

48:                                               ; preds = %47
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %38, !llvm.loop !14

49:                                               ; preds = %38
  br label %50

50:                                               ; preds = %49, %31
  %.4 = phi i32 [ %.2, %31 ], [ %.5, %49 ]
  br label %51

51:                                               ; preds = %50, %9
  %.1 = phi i32 [ 0, %9 ], [ %.4, %50 ]
  br label %52

52:                                               ; preds = %51, %6
  %.0 = phi i32 [ -1, %6 ], [ %.1, %51 ]
  ret i32 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @dscal(i32 noundef %0, double noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = icmp sgt i32 %0, 0
  br i1 %6, label %7, label %33

7:                                                ; preds = %5
  %.not = icmp eq i32 %4, 1
  br i1 %.not, label %22, label %8

8:                                                ; preds = %7
  %9 = mul nsw i32 %0, %4
  %10 = sext i32 %4 to i64
  %11 = sext i32 %9 to i64
  %12 = sext i32 %3 to i64
  br label %13

13:                                               ; preds = %20, %8
  %indvars.iv2 = phi i64 [ %indvars.iv.next3, %20 ], [ 0, %8 ]
  %14 = icmp slt i64 %indvars.iv2, %11
  br i1 %14, label %15, label %21

15:                                               ; preds = %13
  %16 = getelementptr [8 x i8], ptr %2, i64 %indvars.iv2
  %17 = getelementptr [8 x i8], ptr %16, i64 %12
  %18 = load double, ptr %17, align 8
  %19 = fmul double %18, %1
  store double %19, ptr %17, align 8
  br label %20

20:                                               ; preds = %15
  %indvars.iv.next3 = add nsw i64 %indvars.iv2, %10
  br label %13, !llvm.loop !15

21:                                               ; preds = %13
  br label %32

22:                                               ; preds = %7
  %23 = sext i32 %3 to i64
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %24

24:                                               ; preds = %30, %22
  %indvars.iv = phi i64 [ %indvars.iv.next, %30 ], [ 0, %22 ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %31, label %25

25:                                               ; preds = %24
  %26 = getelementptr [8 x i8], ptr %2, i64 %indvars.iv
  %27 = getelementptr [8 x i8], ptr %26, i64 %23
  %28 = load double, ptr %27, align 8
  %29 = fmul double %28, %1
  store double %29, ptr %27, align 8
  br label %30

30:                                               ; preds = %25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %24, !llvm.loop !16

31:                                               ; preds = %24
  br label %32

32:                                               ; preds = %31, %21
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
  %.not = icmp eq i32 %4, 1
  br i1 %.not, label %13, label %14

13:                                               ; preds = %12
  %.not10 = icmp eq i32 %7, 1
  br i1 %.not10, label %43, label %14

14:                                               ; preds = %13, %12
  %15 = icmp slt i32 %4, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %14
  %17 = sub nsw i32 1, %0
  %18 = mul nsw i32 %17, %4
  %19 = sext i32 %18 to i64
  br label %20

20:                                               ; preds = %16, %14
  %.01 = phi i64 [ %19, %16 ], [ 0, %14 ]
  %21 = icmp slt i32 %7, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %20
  %23 = sub nsw i32 1, %0
  %24 = mul nsw i32 %23, %7
  %25 = sext i32 %24 to i64
  br label %26

26:                                               ; preds = %22, %20
  %.0 = phi i64 [ %25, %22 ], [ 0, %20 ]
  %27 = sext i32 %4 to i64
  %28 = sext i32 %3 to i64
  %29 = sext i32 %7 to i64
  %30 = sext i32 %6 to i64
  br label %31

31:                                               ; preds = %40, %26
  %indvars.iv4 = phi i64 [ %indvars.iv.next5, %40 ], [ %.0, %26 ]
  %indvars.iv2 = phi i64 [ %indvars.iv.next3, %40 ], [ %.01, %26 ]
  %.03 = phi i32 [ %41, %40 ], [ 0, %26 ]
  %exitcond9.not = icmp eq i32 %.03, %0
  br i1 %exitcond9.not, label %42, label %32

32:                                               ; preds = %31
  %33 = getelementptr [8 x i8], ptr %2, i64 %indvars.iv2
  %34 = getelementptr [8 x i8], ptr %33, i64 %28
  %35 = load double, ptr %34, align 8
  %36 = getelementptr [8 x i8], ptr %5, i64 %indvars.iv4
  %37 = getelementptr [8 x i8], ptr %36, i64 %30
  %38 = load double, ptr %37, align 8
  %39 = call double @llvm.fmuladd.f64(double %1, double %35, double %38)
  store double %39, ptr %37, align 8
  br label %40

40:                                               ; preds = %32
  %indvars.iv.next5 = add nsw i64 %indvars.iv4, %29
  %indvars.iv.next3 = add nsw i64 %indvars.iv2, %27
  %41 = add nuw i32 %.03, 1
  br label %31, !llvm.loop !17

42:                                               ; preds = %31
  br label %58

43:                                               ; preds = %13
  %44 = sext i32 %3 to i64
  %45 = sext i32 %6 to i64
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %46

46:                                               ; preds = %55, %43
  %indvars.iv = phi i64 [ %indvars.iv.next, %55 ], [ 0, %43 ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %56, label %47

47:                                               ; preds = %46
  %48 = getelementptr [8 x i8], ptr %2, i64 %indvars.iv
  %49 = getelementptr [8 x i8], ptr %48, i64 %44
  %50 = load double, ptr %49, align 8
  %51 = getelementptr [8 x i8], ptr %5, i64 %indvars.iv
  %52 = getelementptr [8 x i8], ptr %51, i64 %45
  %53 = load double, ptr %52, align 8
  %54 = call double @llvm.fmuladd.f64(double %1, double %50, double %53)
  store double %54, ptr %52, align 8
  br label %55

55:                                               ; preds = %47
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %46, !llvm.loop !18

56:                                               ; preds = %46
  br label %57

57:                                               ; preds = %56
  br label %58

58:                                               ; preds = %57, %42, %10, %8
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @dgefa(ptr noundef %0, ptr noundef %1) #0 {
  br label %3

3:                                                ; preds = %42, %2
  %indvars.iv4 = phi i64 [ %indvars.iv.next5, %42 ], [ 0, %2 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %42 ], [ 1, %2 ]
  %exitcond7.not = icmp eq i64 %indvars.iv4, 1999
  br i1 %exitcond7.not, label %43, label %4

4:                                                ; preds = %3
  %indvars6 = trunc i64 %indvars.iv4 to i32
  %5 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv4
  %6 = load ptr, ptr %5, align 8
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv4, 1
  %indvars = trunc i64 %indvars.iv.next5 to i32
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
  br i1 %16, label %17, label %41

17:                                               ; preds = %4
  %18 = zext i32 %11 to i64
  %.not = icmp eq i64 %indvars.iv4, %18
  br i1 %.not, label %22, label %19

19:                                               ; preds = %17
  %20 = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv4
  %21 = load double, ptr %20, align 8
  store double %21, ptr %14, align 8
  store double %15, ptr %20, align 8
  br label %22

22:                                               ; preds = %19, %17
  %23 = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv4
  %24 = load double, ptr %23, align 8
  %25 = fdiv double -1.000000e+00, %24
  %26 = sub nuw nsw i32 2000, %indvars
  %27 = trunc nuw nsw i64 %indvars.iv.next5 to i32
  call void @dscal(i32 noundef %26, double noundef %25, ptr noundef %6, i32 noundef %27, i32 noundef 1)
  br label %28

28:                                               ; preds = %39, %22
  %indvars.iv1 = phi i64 [ %indvars.iv.next2, %39 ], [ %indvars.iv, %22 ]
  %exitcond.not = icmp eq i64 %indvars.iv1, 2000
  br i1 %exitcond.not, label %40, label %29

29:                                               ; preds = %28
  %30 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv1
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds [8 x i8], ptr %31, i64 %13
  %33 = load double, ptr %32, align 8
  br i1 %.not, label %37, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds nuw [8 x i8], ptr %31, i64 %indvars.iv4
  %36 = load double, ptr %35, align 8
  store double %36, ptr %32, align 8
  store double %33, ptr %35, align 8
  br label %37

37:                                               ; preds = %34, %29
  %38 = trunc nuw nsw i64 %indvars.iv.next5 to i32
  call void @daxpy(i32 noundef %26, double noundef %33, ptr noundef %6, i32 noundef %38, i32 noundef 1, ptr noundef %31, i32 noundef %38, i32 noundef 1)
  br label %39

39:                                               ; preds = %37
  %indvars.iv.next2 = add nuw nsw i64 %indvars.iv1, 1
  br label %28, !llvm.loop !19

40:                                               ; preds = %28
  br label %41

41:                                               ; preds = %40, %4
  br label %42

42:                                               ; preds = %41
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %3, !llvm.loop !20

43:                                               ; preds = %3
  %44 = getelementptr inbounds nuw i8, ptr %1, i64 7996
  store i32 1999, ptr %44, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @dgesl(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  br label %4

4:                                                ; preds = %20, %3
  %indvars.iv = phi i64 [ %indvars.iv.next, %20 ], [ 0, %3 ]
  %exitcond.not = icmp eq i64 %indvars.iv, 1999
  br i1 %exitcond.not, label %21, label %5

5:                                                ; preds = %4
  %6 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %7 = load i32, ptr %6, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [8 x i8], ptr %2, i64 %8
  %10 = load double, ptr %9, align 8
  %11 = zext i32 %7 to i64
  %.not = icmp eq i64 %indvars.iv, %11
  br i1 %.not, label %15, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %14 = load double, ptr %13, align 8
  store double %14, ptr %9, align 8
  store double %10, ptr %13, align 8
  br label %15

15:                                               ; preds = %12, %5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %indvars = trunc i64 %indvars.iv.next to i32
  %16 = sub nuw nsw i32 2000, %indvars
  %17 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %18 = load ptr, ptr %17, align 8
  %19 = trunc nuw nsw i64 %indvars.iv.next to i32
  call void @daxpy(i32 noundef %16, double noundef %10, ptr noundef %18, i32 noundef %19, i32 noundef 1, ptr noundef %2, i32 noundef %19, i32 noundef 1)
  br label %20

20:                                               ; preds = %15
  br label %4, !llvm.loop !21

21:                                               ; preds = %4
  br label %22

22:                                               ; preds = %35, %21
  %indvars.iv2 = phi i64 [ %indvars.iv.next3, %35 ], [ 0, %21 ]
  %exitcond6.not = icmp eq i64 %indvars.iv2, 2000
  br i1 %exitcond6.not, label %36, label %23

23:                                               ; preds = %22
  %24 = sub nsw i64 1999, %indvars.iv2
  %25 = getelementptr inbounds [8 x i8], ptr %0, i64 %24
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds [8 x i8], ptr %26, i64 %24
  %28 = load double, ptr %27, align 8
  %29 = getelementptr inbounds [8 x i8], ptr %2, i64 %24
  %30 = load double, ptr %29, align 8
  %31 = fdiv double %30, %28
  store double %31, ptr %29, align 8
  %32 = fneg double %31
  %33 = load ptr, ptr %25, align 8
  %34 = trunc nsw i64 %24 to i32
  call void @daxpy(i32 noundef %34, double noundef %32, ptr noundef %33, i32 noundef 0, i32 noundef 1, ptr noundef %2, i32 noundef 0, i32 noundef 1)
  br label %35

35:                                               ; preds = %23
  %indvars.iv.next3 = add nuw nsw i64 %indvars.iv2, 1
  br label %22, !llvm.loop !22

36:                                               ; preds = %22
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = icmp sgt i32 %0, 1
  br i1 %3, label %4, label %15

4:                                                ; preds = %2
  br label %5

5:                                                ; preds = %12, %4
  %.01 = phi i32 [ 1, %4 ], [ %13, %12 ]
  %exitcond.not = icmp eq i32 %.01, %0
  br i1 %exitcond.not, label %.loopexit, label %6

6:                                                ; preds = %5
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %8 = load ptr, ptr %7, align 8
  %9 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(4) @.str) #5
  %.not = icmp eq i32 %9, 0
  br i1 %.not, label %10, label %11

10:                                               ; preds = %6
  br label %14

11:                                               ; preds = %6
  br label %12

12:                                               ; preds = %11
  %13 = add nuw i32 %.01, 1
  br label %5, !llvm.loop !23

.loopexit:                                        ; preds = %5
  br label %14

14:                                               ; preds = %.loopexit, %10
  br label %15

15:                                               ; preds = %14, %2
  %.0 = phi i1 [ %exitcond.not, %14 ], [ true, %2 ]
  %16 = call dereferenceable_or_null(16000) ptr @malloc(i64 noundef 16000) #6
  br label %17

17:                                               ; preds = %21, %15
  %indvars.iv = phi i64 [ %indvars.iv.next, %21 ], [ 0, %15 ]
  %exitcond2.not = icmp eq i64 %indvars.iv, 2000
  br i1 %exitcond2.not, label %22, label %18

18:                                               ; preds = %17
  %19 = call dereferenceable_or_null(16008) ptr @malloc(i64 noundef 16008) #6
  %20 = getelementptr inbounds nuw [8 x i8], ptr %16, i64 %indvars.iv
  store ptr %19, ptr %20, align 8
  br label %21

21:                                               ; preds = %18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %17, !llvm.loop !24

22:                                               ; preds = %17
  %23 = call dereferenceable_or_null(16000) ptr @malloc(i64 noundef 16000) #6
  %24 = call dereferenceable_or_null(16000) ptr @malloc(i64 noundef 16000) #6
  %25 = call dereferenceable_or_null(8000) ptr @malloc(i64 noundef 8000) #6
  call void @matgen(ptr noundef %16, ptr noundef %23)
  call void @dgefa(ptr noundef %16, ptr noundef %25)
  call void @dgesl(ptr noundef %16, ptr noundef %25, ptr noundef %23)
  call void @free(ptr noundef %25) #5
  call void @free(ptr noundef %24) #5
  call void @free(ptr noundef %23) #5
  br label %26

26:                                               ; preds = %30, %22
  %indvars.iv3 = phi i64 [ %indvars.iv.next4, %30 ], [ 0, %22 ]
  %exitcond6.not = icmp eq i64 %indvars.iv3, 2000
  br i1 %exitcond6.not, label %31, label %27

27:                                               ; preds = %26
  %28 = getelementptr inbounds nuw [8 x i8], ptr %16, i64 %indvars.iv3
  %29 = load ptr, ptr %28, align 8
  call void @free(ptr noundef %29) #5
  br label %30

30:                                               ; preds = %27
  %indvars.iv.next4 = add nuw nsw i64 %indvars.iv3, 1
  br label %26, !llvm.loop !25

31:                                               ; preds = %26
  call void @free(ptr noundef %16) #5
  br i1 %.0, label %35, label %32

32:                                               ; preds = %31
  %33 = call ptr @__acrt_iob_func(i32 noundef 1) #5
  %34 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %33, ptr noundef nonnull @.str.1, double noundef 0.000000e+00) #5
  br label %38

35:                                               ; preds = %31
  %36 = call ptr @__acrt_iob_func(i32 noundef 1) #5
  %37 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %36, ptr noundef nonnull @.str.2, double noundef 0.000000e+00) #5
  br label %38

38:                                               ; preds = %35, %32
  %39 = call ptr @__acrt_iob_func(i32 noundef 1) #5
  %40 = call i32 @fflush(ptr noundef %39) #5
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
  %storemerge = phi i32 [ %9, %8 ], [ %6, %0 ]
  %11 = sitofp i32 %storemerge to double
  %12 = fmul nnan double %11, f0x3E00000000200FE1
  %13 = xor i32 %storemerge, 123459876
  store i32 %13, ptr @seed, align 4
  ret double %12
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #1

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
