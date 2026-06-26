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

3:                                                ; preds = %16, %2
  %.01 = phi i32 [ 0, %2 ], [ %17, %16 ]
  %4 = icmp samesign ult i32 %.01, 2000
  br i1 %4, label %5, label %18

5:                                                ; preds = %3
  br label %6

6:                                                ; preds = %8, %5
  %.0 = phi i32 [ 0, %5 ], [ %15, %8 ]
  %7 = icmp samesign ult i32 %.0, 2000
  br i1 %7, label %8, label %16

8:                                                ; preds = %6
  %9 = call double @random_double()
  %10 = zext nneg i32 %.0 to i64
  %11 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %10
  %12 = load ptr, ptr %11, align 8
  %13 = zext nneg i32 %.01 to i64
  %14 = getelementptr inbounds nuw [8 x i8], ptr %12, i64 %13
  store double %9, ptr %14, align 8
  %15 = add nuw nsw i32 %.0, 1
  br label %6, !llvm.loop !7

16:                                               ; preds = %6
  %17 = add nuw nsw i32 %.01, 1
  br label %3, !llvm.loop !9

18:                                               ; preds = %3
  br label %19

19:                                               ; preds = %21, %18
  %.12 = phi i32 [ 0, %18 ], [ %24, %21 ]
  %20 = icmp samesign ult i32 %.12, 2000
  br i1 %20, label %21, label %25

21:                                               ; preds = %19
  %22 = zext nneg i32 %.12 to i64
  %23 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %22
  store double 0.000000e+00, ptr %23, align 8
  %24 = add nuw nsw i32 %.12, 1
  br label %19, !llvm.loop !10

25:                                               ; preds = %19
  br label %26

26:                                               ; preds = %42, %25
  %.1 = phi i32 [ 0, %25 ], [ %43, %42 ]
  %27 = icmp samesign ult i32 %.1, 2000
  br i1 %27, label %28, label %44

28:                                               ; preds = %26
  br label %29

29:                                               ; preds = %31, %28
  %.2 = phi i32 [ 0, %28 ], [ %41, %31 ]
  %30 = icmp samesign ult i32 %.2, 2000
  br i1 %30, label %31, label %42

31:                                               ; preds = %29
  %32 = zext nneg i32 %.1 to i64
  %33 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %32
  %34 = load ptr, ptr %33, align 8
  %35 = zext nneg i32 %.2 to i64
  %36 = getelementptr inbounds nuw [8 x i8], ptr %34, i64 %35
  %37 = load double, ptr %36, align 8
  %38 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %35
  %39 = load double, ptr %38, align 8
  %40 = fadd double %39, %37
  store double %40, ptr %38, align 8
  %41 = add nuw nsw i32 %.2, 1
  br label %29, !llvm.loop !11

42:                                               ; preds = %29
  %43 = add nuw nsw i32 %.1, 1
  br label %26, !llvm.loop !12

44:                                               ; preds = %26
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
  %.not = icmp eq i32 %3, 1
  br i1 %.not, label %31, label %11

11:                                               ; preds = %10
  %12 = sext i32 %2 to i64
  %13 = getelementptr inbounds [8 x i8], ptr %1, i64 %12
  %14 = load double, ptr %13, align 8
  %15 = call double @llvm.fabs.f64(double %14)
  %16 = add nsw i32 %3, 1
  br label %17

17:                                               ; preds = %27, %11
  %.04 = phi double [ %15, %11 ], [ %.15, %27 ]
  %.02 = phi i32 [ 1, %11 ], [ %29, %27 ]
  %.01 = phi i32 [ %16, %11 ], [ %28, %27 ]
  %.2 = phi i32 [ 0, %11 ], [ %.3, %27 ]
  %18 = icmp slt i32 %.02, %0
  br i1 %18, label %19, label %30

19:                                               ; preds = %17
  %20 = add nsw i32 %.01, %2
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [8 x i8], ptr %1, i64 %21
  %23 = load double, ptr %22, align 8
  %24 = call double @llvm.fabs.f64(double %23)
  %25 = fcmp ogt double %24, %.04
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  br label %27

27:                                               ; preds = %26, %19
  %.15 = phi double [ %24, %26 ], [ %.04, %19 ]
  %.3 = phi i32 [ %.02, %26 ], [ %.2, %19 ]
  %28 = add nsw i32 %.01, %3
  %29 = add nuw nsw i32 %.02, 1
  br label %17, !llvm.loop !13

30:                                               ; preds = %17
  br label %49

31:                                               ; preds = %10
  %32 = sext i32 %2 to i64
  %33 = getelementptr inbounds [8 x i8], ptr %1, i64 %32
  %34 = load double, ptr %33, align 8
  %35 = call double @llvm.fabs.f64(double %34)
  br label %36

36:                                               ; preds = %46, %31
  %.26 = phi double [ %35, %31 ], [ %.37, %46 ]
  %.13 = phi i32 [ 1, %31 ], [ %47, %46 ]
  %.5 = phi i32 [ 0, %31 ], [ %.6, %46 ]
  %37 = icmp slt i32 %.13, %0
  br i1 %37, label %38, label %48

38:                                               ; preds = %36
  %39 = add nsw i32 %.13, %2
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [8 x i8], ptr %1, i64 %40
  %42 = load double, ptr %41, align 8
  %43 = call double @llvm.fabs.f64(double %42)
  %44 = fcmp ogt double %43, %.26
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  br label %46

46:                                               ; preds = %45, %38
  %.37 = phi double [ %43, %45 ], [ %.26, %38 ]
  %.6 = phi i32 [ %.13, %45 ], [ %.5, %38 ]
  %47 = add nuw nsw i32 %.13, 1
  br label %36, !llvm.loop !14

48:                                               ; preds = %36
  br label %49

49:                                               ; preds = %48, %30
  %.4 = phi i32 [ %.2, %30 ], [ %.5, %48 ]
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
  br i1 %6, label %7, label %32

7:                                                ; preds = %5
  %.not = icmp eq i32 %4, 1
  br i1 %.not, label %20, label %8

8:                                                ; preds = %7
  %9 = mul nsw i32 %0, %4
  br label %10

10:                                               ; preds = %12, %8
  %.0 = phi i32 [ 0, %8 ], [ %18, %12 ]
  %11 = icmp slt i32 %.0, %9
  br i1 %11, label %12, label %19

12:                                               ; preds = %10
  %13 = add nsw i32 %.0, %3
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [8 x i8], ptr %2, i64 %14
  %16 = load double, ptr %15, align 8
  %17 = fmul double %16, %1
  store double %17, ptr %15, align 8
  %18 = add nsw i32 %.0, %4
  br label %10, !llvm.loop !15

19:                                               ; preds = %10
  br label %31

20:                                               ; preds = %7
  br label %21

21:                                               ; preds = %23, %20
  %.1 = phi i32 [ 0, %20 ], [ %29, %23 ]
  %22 = icmp slt i32 %.1, %0
  br i1 %22, label %23, label %30

23:                                               ; preds = %21
  %24 = add nsw i32 %.1, %3
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [8 x i8], ptr %2, i64 %25
  %27 = load double, ptr %26, align 8
  %28 = fmul double %27, %1
  store double %28, ptr %26, align 8
  %29 = add nuw nsw i32 %.1, 1
  br label %21, !llvm.loop !16

30:                                               ; preds = %21
  br label %31

31:                                               ; preds = %30, %19
  br label %32

32:                                               ; preds = %31, %5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @daxpy(i32 noundef %0, double noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7) #0 {
  %9 = icmp sgt i32 %0, 0
  br i1 %9, label %10, label %56

10:                                               ; preds = %8
  %11 = fcmp une double %1, 0.000000e+00
  br i1 %11, label %12, label %56

12:                                               ; preds = %10
  %.not = icmp eq i32 %4, 1
  br i1 %.not, label %13, label %14

13:                                               ; preds = %12
  %.not1 = icmp eq i32 %7, 1
  br i1 %.not1, label %41, label %14

14:                                               ; preds = %13, %12
  %15 = icmp slt i32 %4, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %14
  %17 = sub nsw i32 1, %0
  %18 = mul nsw i32 %17, %4
  br label %19

19:                                               ; preds = %16, %14
  %.01 = phi i32 [ %18, %16 ], [ 0, %14 ]
  %20 = icmp slt i32 %7, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %19
  %22 = sub nsw i32 1, %0
  %23 = mul nsw i32 %22, %7
  br label %24

24:                                               ; preds = %21, %19
  %.0 = phi i32 [ %23, %21 ], [ 0, %19 ]
  br label %25

25:                                               ; preds = %27, %24
  %.03 = phi i32 [ 0, %24 ], [ %39, %27 ]
  %.12 = phi i32 [ %.01, %24 ], [ %37, %27 ]
  %.1 = phi i32 [ %.0, %24 ], [ %38, %27 ]
  %26 = icmp slt i32 %.03, %0
  br i1 %26, label %27, label %40

27:                                               ; preds = %25
  %28 = add nsw i32 %.12, %3
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [8 x i8], ptr %2, i64 %29
  %31 = load double, ptr %30, align 8
  %32 = add nsw i32 %.1, %6
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [8 x i8], ptr %5, i64 %33
  %35 = load double, ptr %34, align 8
  %36 = call double @llvm.fmuladd.f64(double %1, double %31, double %35)
  store double %36, ptr %34, align 8
  %37 = add nsw i32 %.12, %4
  %38 = add nsw i32 %.1, %7
  %39 = add nuw nsw i32 %.03, 1
  br label %25, !llvm.loop !17

40:                                               ; preds = %25
  br label %56

41:                                               ; preds = %13
  br label %42

42:                                               ; preds = %44, %41
  %.14 = phi i32 [ 0, %41 ], [ %54, %44 ]
  %43 = icmp slt i32 %.14, %0
  br i1 %43, label %44, label %55

44:                                               ; preds = %42
  %45 = add nsw i32 %.14, %3
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [8 x i8], ptr %2, i64 %46
  %48 = load double, ptr %47, align 8
  %49 = add nsw i32 %.14, %6
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [8 x i8], ptr %5, i64 %50
  %52 = load double, ptr %51, align 8
  %53 = call double @llvm.fmuladd.f64(double %1, double %48, double %52)
  store double %53, ptr %51, align 8
  %54 = add nuw nsw i32 %.14, 1
  br label %42, !llvm.loop !18

55:                                               ; preds = %42
  br label %56

56:                                               ; preds = %55, %40, %10, %8
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @dgefa(ptr noundef %0, ptr noundef %1) #0 {
  br label %3

3:                                                ; preds = %40, %2
  %.01 = phi i32 [ 0, %2 ], [ %9, %40 ]
  %4 = icmp samesign ult i32 %.01, 1999
  br i1 %4, label %5, label %41

5:                                                ; preds = %3
  %6 = zext nneg i32 %.01 to i64
  %7 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %6
  %8 = load ptr, ptr %7, align 8
  %9 = add nuw nsw i32 %.01, 1
  %10 = sub nuw nsw i32 2000, %.01
  %11 = call i32 @idamax(i32 noundef %10, ptr noundef %8, i32 noundef %.01, i32 noundef 1)
  %12 = add nsw i32 %11, %.01
  %13 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %6
  store i32 %12, ptr %13, align 4
  %14 = sext i32 %12 to i64
  %15 = getelementptr inbounds [8 x i8], ptr %8, i64 %14
  %16 = load double, ptr %15, align 8
  %17 = fcmp une double %16, 0.000000e+00
  br i1 %17, label %18, label %40

18:                                               ; preds = %5
  %.not = icmp eq i32 %11, 0
  br i1 %.not, label %._crit_edge, label %19

._crit_edge:                                      ; preds = %18
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %6
  %.pre = load double, ptr %.phi.trans.insert, align 8
  br label %22

19:                                               ; preds = %18
  %20 = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %6
  %21 = load double, ptr %20, align 8
  store double %21, ptr %15, align 8
  store double %16, ptr %20, align 8
  br label %22

22:                                               ; preds = %._crit_edge, %19
  %23 = phi double [ %.pre, %._crit_edge ], [ %16, %19 ]
  %24 = fdiv double -1.000000e+00, %23
  %25 = sub nsw i32 1999, %.01
  call void @dscal(i32 noundef %25, double noundef %24, ptr noundef %8, i32 noundef %9, i32 noundef 1)
  br label %26

26:                                               ; preds = %37, %22
  %.0 = phi i32 [ %9, %22 ], [ %38, %37 ]
  %27 = icmp samesign ult i32 %.0, 2000
  br i1 %27, label %28, label %39

28:                                               ; preds = %26
  %29 = zext nneg i32 %.0 to i64
  %30 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %29
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds [8 x i8], ptr %31, i64 %14
  %33 = load double, ptr %32, align 8
  br i1 %.not, label %37, label %34

34:                                               ; preds = %28
  %35 = getelementptr inbounds nuw [8 x i8], ptr %31, i64 %6
  %36 = load double, ptr %35, align 8
  store double %36, ptr %32, align 8
  store double %33, ptr %35, align 8
  br label %37

37:                                               ; preds = %34, %28
  call void @daxpy(i32 noundef %25, double noundef %33, ptr noundef %8, i32 noundef %9, i32 noundef 1, ptr noundef %31, i32 noundef %9, i32 noundef 1)
  %38 = add nuw nsw i32 %.0, 1
  br label %26, !llvm.loop !19

39:                                               ; preds = %26
  br label %40

40:                                               ; preds = %39, %5
  br label %3, !llvm.loop !20

41:                                               ; preds = %3
  %42 = getelementptr inbounds nuw i8, ptr %1, i64 7996
  store i32 1999, ptr %42, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @dgesl(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  br label %4

4:                                                ; preds = %16, %3
  %.01 = phi i32 [ 0, %3 ], [ %17, %16 ]
  %5 = icmp samesign ult i32 %.01, 1999
  br i1 %5, label %6, label %21

6:                                                ; preds = %4
  %7 = zext nneg i32 %.01 to i64
  %8 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %7
  %9 = load i32, ptr %8, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [8 x i8], ptr %2, i64 %10
  %12 = load double, ptr %11, align 8
  %.not = icmp eq i32 %9, %.01
  br i1 %.not, label %16, label %13

13:                                               ; preds = %6
  %14 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %7
  %15 = load double, ptr %14, align 8
  store double %15, ptr %11, align 8
  store double %12, ptr %14, align 8
  br label %16

16:                                               ; preds = %13, %6
  %17 = add nuw nsw i32 %.01, 1
  %18 = sub nsw i32 1999, %.01
  %19 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %7
  %20 = load ptr, ptr %19, align 8
  call void @daxpy(i32 noundef %18, double noundef %12, ptr noundef %20, i32 noundef %17, i32 noundef 1, ptr noundef %2, i32 noundef %17, i32 noundef 1)
  br label %4, !llvm.loop !21

21:                                               ; preds = %4
  br label %22

22:                                               ; preds = %24, %21
  %.0 = phi i32 [ 0, %21 ], [ %25, %24 ]
  %23 = icmp samesign ult i32 %.0, 2000
  br i1 %23, label %24, label %37

24:                                               ; preds = %22
  %25 = add nuw nsw i32 %.0, 1
  %26 = sub nuw nsw i32 1999, %.0
  %27 = zext nneg i32 %26 to i64
  %28 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %27
  %29 = load ptr, ptr %28, align 8
  %30 = getelementptr inbounds nuw [8 x i8], ptr %29, i64 %27
  %31 = load double, ptr %30, align 8
  %32 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %27
  %33 = load double, ptr %32, align 8
  %34 = fdiv double %33, %31
  store double %34, ptr %32, align 8
  %35 = fneg double %34
  %36 = load ptr, ptr %28, align 8
  call void @daxpy(i32 noundef %26, double noundef %35, ptr noundef %36, i32 noundef 0, i32 noundef 1, ptr noundef %2, i32 noundef 0, i32 noundef 1)
  br label %22, !llvm.loop !22

37:                                               ; preds = %22
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
  %6 = icmp sge i32 %.01, %0
  br i1 %6, label %14, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %9 = load ptr, ptr %8, align 8
  %10 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(4) @.str) #5
  %.not = icmp eq i32 %10, 0
  br i1 %.not, label %11, label %12

11:                                               ; preds = %7
  br label %14

12:                                               ; preds = %7
  %13 = add nuw nsw i32 %.01, 1
  br label %5, !llvm.loop !23

14:                                               ; preds = %11, %5
  br label %15

15:                                               ; preds = %14, %2
  %.0 = phi i1 [ %6, %14 ], [ true, %2 ]
  %16 = call dereferenceable_or_null(16000) ptr @malloc(i64 noundef 16000) #6
  br label %17

17:                                               ; preds = %19, %15
  %.12 = phi i32 [ 0, %15 ], [ %23, %19 ]
  %18 = icmp samesign ult i32 %.12, 2000
  br i1 %18, label %19, label %24

19:                                               ; preds = %17
  %20 = call dereferenceable_or_null(16008) ptr @malloc(i64 noundef 16008) #6
  %21 = zext nneg i32 %.12 to i64
  %22 = getelementptr inbounds nuw [8 x i8], ptr %16, i64 %21
  store ptr %20, ptr %22, align 8
  %23 = add nuw nsw i32 %.12, 1
  br label %17, !llvm.loop !24

24:                                               ; preds = %17
  %25 = call dereferenceable_or_null(16000) ptr @malloc(i64 noundef 16000) #6
  %26 = call dereferenceable_or_null(16000) ptr @malloc(i64 noundef 16000) #6
  %27 = call dereferenceable_or_null(8000) ptr @malloc(i64 noundef 8000) #6
  call void @matgen(ptr noundef %16, ptr noundef %25)
  call void @dgefa(ptr noundef %16, ptr noundef %27)
  call void @dgesl(ptr noundef %16, ptr noundef %27, ptr noundef %25)
  call void @free(ptr noundef %27) #5
  call void @free(ptr noundef %26) #5
  call void @free(ptr noundef %25) #5
  br label %28

28:                                               ; preds = %30, %24
  %.2 = phi i32 [ 0, %24 ], [ %34, %30 ]
  %29 = icmp samesign ult i32 %.2, 2000
  br i1 %29, label %30, label %35

30:                                               ; preds = %28
  %31 = zext nneg i32 %.2 to i64
  %32 = getelementptr inbounds nuw [8 x i8], ptr %16, i64 %31
  %33 = load ptr, ptr %32, align 8
  call void @free(ptr noundef %33) #5
  %34 = add nuw nsw i32 %.2, 1
  br label %28, !llvm.loop !25

35:                                               ; preds = %28
  call void @free(ptr noundef %16) #5
  br i1 %.0, label %39, label %36

36:                                               ; preds = %35
  %37 = call ptr @__acrt_iob_func(i32 noundef 1) #5
  %38 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %37, ptr noundef nonnull @.str.1, double noundef 0.000000e+00) #5
  br label %42

39:                                               ; preds = %35
  %40 = call ptr @__acrt_iob_func(i32 noundef 1) #5
  %41 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %40, ptr noundef nonnull @.str.2, double noundef 0.000000e+00) #5
  br label %42

42:                                               ; preds = %39, %36
  %43 = call ptr @__acrt_iob_func(i32 noundef 1) #5
  %44 = call i32 @fflush(ptr noundef %43) #5
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
