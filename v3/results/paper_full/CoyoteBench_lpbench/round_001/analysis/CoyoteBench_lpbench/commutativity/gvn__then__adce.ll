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
  %4 = icmp slt i32 %.01, 2000
  br i1 %4, label %5, label %18

5:                                                ; preds = %3
  br label %6

6:                                                ; preds = %8, %5
  %.0 = phi i32 [ 0, %5 ], [ %15, %8 ]
  %7 = icmp slt i32 %.0, 2000
  br i1 %7, label %8, label %16

8:                                                ; preds = %6
  %9 = call double @random_double()
  %10 = sext i32 %.0 to i64
  %11 = getelementptr inbounds ptr, ptr %0, i64 %10
  %12 = load ptr, ptr %11, align 8
  %13 = sext i32 %.01 to i64
  %14 = getelementptr inbounds double, ptr %12, i64 %13
  store double %9, ptr %14, align 8
  %15 = add nsw i32 %.0, 1
  br label %6, !llvm.loop !7

16:                                               ; preds = %6
  %17 = add nsw i32 %.01, 1
  br label %3, !llvm.loop !9

18:                                               ; preds = %3
  br label %19

19:                                               ; preds = %21, %18
  %.12 = phi i32 [ 0, %18 ], [ %24, %21 ]
  %20 = icmp slt i32 %.12, 2000
  br i1 %20, label %21, label %25

21:                                               ; preds = %19
  %22 = sext i32 %.12 to i64
  %23 = getelementptr inbounds double, ptr %1, i64 %22
  store double 0.000000e+00, ptr %23, align 8
  %24 = add nsw i32 %.12, 1
  br label %19, !llvm.loop !10

25:                                               ; preds = %19
  br label %26

26:                                               ; preds = %42, %25
  %.1 = phi i32 [ 0, %25 ], [ %43, %42 ]
  %27 = icmp slt i32 %.1, 2000
  br i1 %27, label %28, label %44

28:                                               ; preds = %26
  br label %29

29:                                               ; preds = %31, %28
  %.2 = phi i32 [ 0, %28 ], [ %41, %31 ]
  %30 = icmp slt i32 %.2, 2000
  br i1 %30, label %31, label %42

31:                                               ; preds = %29
  %32 = sext i32 %.1 to i64
  %33 = getelementptr inbounds ptr, ptr %0, i64 %32
  %34 = load ptr, ptr %33, align 8
  %35 = sext i32 %.2 to i64
  %36 = getelementptr inbounds double, ptr %34, i64 %35
  %37 = load double, ptr %36, align 8
  %38 = getelementptr inbounds double, ptr %1, i64 %35
  %39 = load double, ptr %38, align 8
  %40 = fadd double %39, %37
  store double %40, ptr %38, align 8
  %41 = add nsw i32 %.2, 1
  br label %29, !llvm.loop !11

42:                                               ; preds = %29
  %43 = add nsw i32 %.1, 1
  br label %26, !llvm.loop !12

44:                                               ; preds = %26
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
  %11 = icmp ne i32 %3, 1
  br i1 %11, label %12, label %32

12:                                               ; preds = %10
  %13 = sext i32 %2 to i64
  %14 = getelementptr inbounds double, ptr %1, i64 %13
  %15 = load double, ptr %14, align 8
  %16 = call double @llvm.fabs.f64(double %15)
  %17 = add nsw i32 1, %3
  br label %18

18:                                               ; preds = %28, %12
  %.04 = phi double [ %16, %12 ], [ %.15, %28 ]
  %.02 = phi i32 [ 1, %12 ], [ %30, %28 ]
  %.01 = phi i32 [ %17, %12 ], [ %29, %28 ]
  %.2 = phi i32 [ 0, %12 ], [ %.3, %28 ]
  %19 = icmp slt i32 %.02, %0
  br i1 %19, label %20, label %31

20:                                               ; preds = %18
  %21 = add nsw i32 %.01, %2
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds double, ptr %1, i64 %22
  %24 = load double, ptr %23, align 8
  %25 = call double @llvm.fabs.f64(double %24)
  %26 = fcmp ogt double %25, %.04
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  br label %28

28:                                               ; preds = %27, %20
  %.15 = phi double [ %25, %27 ], [ %.04, %20 ]
  %.3 = phi i32 [ %.02, %27 ], [ %.2, %20 ]
  %29 = add nsw i32 %.01, %3
  %30 = add nsw i32 %.02, 1
  br label %18, !llvm.loop !13

31:                                               ; preds = %18
  br label %50

32:                                               ; preds = %10
  %33 = sext i32 %2 to i64
  %34 = getelementptr inbounds double, ptr %1, i64 %33
  %35 = load double, ptr %34, align 8
  %36 = call double @llvm.fabs.f64(double %35)
  br label %37

37:                                               ; preds = %47, %32
  %.26 = phi double [ %36, %32 ], [ %.37, %47 ]
  %.13 = phi i32 [ 1, %32 ], [ %48, %47 ]
  %.5 = phi i32 [ 0, %32 ], [ %.6, %47 ]
  %38 = icmp slt i32 %.13, %0
  br i1 %38, label %39, label %49

39:                                               ; preds = %37
  %40 = add nsw i32 %.13, %2
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds double, ptr %1, i64 %41
  %43 = load double, ptr %42, align 8
  %44 = call double @llvm.fabs.f64(double %43)
  %45 = fcmp ogt double %44, %.26
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  br label %47

47:                                               ; preds = %46, %39
  %.37 = phi double [ %44, %46 ], [ %.26, %39 ]
  %.6 = phi i32 [ %.13, %46 ], [ %.5, %39 ]
  %48 = add nsw i32 %.13, 1
  br label %37, !llvm.loop !14

49:                                               ; preds = %37
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
  %8 = icmp ne i32 %4, 1
  br i1 %8, label %9, label %21

9:                                                ; preds = %7
  %10 = mul nsw i32 %0, %4
  br label %11

11:                                               ; preds = %13, %9
  %.0 = phi i32 [ 0, %9 ], [ %19, %13 ]
  %12 = icmp slt i32 %.0, %10
  br i1 %12, label %13, label %20

13:                                               ; preds = %11
  %14 = add nsw i32 %.0, %3
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds double, ptr %2, i64 %15
  %17 = load double, ptr %16, align 8
  %18 = fmul double %17, %1
  store double %18, ptr %16, align 8
  %19 = add nsw i32 %.0, %4
  br label %11, !llvm.loop !15

20:                                               ; preds = %11
  br label %32

21:                                               ; preds = %7
  br label %22

22:                                               ; preds = %24, %21
  %.1 = phi i32 [ 0, %21 ], [ %30, %24 ]
  %23 = icmp slt i32 %.1, %0
  br i1 %23, label %24, label %31

24:                                               ; preds = %22
  %25 = add nsw i32 %.1, %3
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds double, ptr %2, i64 %26
  %28 = load double, ptr %27, align 8
  %29 = fmul double %28, %1
  store double %29, ptr %27, align 8
  %30 = add nsw i32 %.1, 1
  br label %22, !llvm.loop !16

31:                                               ; preds = %22
  br label %32

32:                                               ; preds = %31, %20
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
  br i1 %15, label %16, label %43

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
  br label %27

27:                                               ; preds = %29, %26
  %.03 = phi i32 [ 0, %26 ], [ %41, %29 ]
  %.12 = phi i32 [ %.01, %26 ], [ %39, %29 ]
  %.1 = phi i32 [ %.0, %26 ], [ %40, %29 ]
  %28 = icmp slt i32 %.03, %0
  br i1 %28, label %29, label %42

29:                                               ; preds = %27
  %30 = add nsw i32 %.12, %3
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds double, ptr %2, i64 %31
  %33 = load double, ptr %32, align 8
  %34 = add nsw i32 %.1, %6
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds double, ptr %5, i64 %35
  %37 = load double, ptr %36, align 8
  %38 = call double @llvm.fmuladd.f64(double %1, double %33, double %37)
  store double %38, ptr %36, align 8
  %39 = add nsw i32 %.12, %4
  %40 = add nsw i32 %.1, %7
  %41 = add nsw i32 %.03, 1
  br label %27, !llvm.loop !17

42:                                               ; preds = %27
  br label %58

43:                                               ; preds = %14
  br label %44

44:                                               ; preds = %46, %43
  %.14 = phi i32 [ 0, %43 ], [ %56, %46 ]
  %45 = icmp slt i32 %.14, %0
  br i1 %45, label %46, label %57

46:                                               ; preds = %44
  %47 = add nsw i32 %.14, %3
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds double, ptr %2, i64 %48
  %50 = load double, ptr %49, align 8
  %51 = add nsw i32 %.14, %6
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds double, ptr %5, i64 %52
  %54 = load double, ptr %53, align 8
  %55 = call double @llvm.fmuladd.f64(double %1, double %50, double %54)
  store double %55, ptr %53, align 8
  %56 = add nsw i32 %.14, 1
  br label %44, !llvm.loop !18

57:                                               ; preds = %44
  br label %58

58:                                               ; preds = %57, %42, %10, %8
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @dgefa(ptr noundef %0, ptr noundef %1) #0 {
  br label %3

3:                                                ; preds = %41, %2
  %.01 = phi i32 [ 0, %2 ], [ %9, %41 ]
  %4 = icmp slt i32 %.01, 1999
  br i1 %4, label %5, label %42

5:                                                ; preds = %3
  %6 = sext i32 %.01 to i64
  %7 = getelementptr inbounds ptr, ptr %0, i64 %6
  %8 = load ptr, ptr %7, align 8
  %9 = add nsw i32 %.01, 1
  %10 = sub nsw i32 2000, %.01
  %11 = call i32 @idamax(i32 noundef %10, ptr noundef %8, i32 noundef %.01, i32 noundef 1)
  %12 = add nsw i32 %11, %.01
  %13 = getelementptr inbounds i32, ptr %1, i64 %6
  store i32 %12, ptr %13, align 4
  %14 = sext i32 %12 to i64
  %15 = getelementptr inbounds double, ptr %8, i64 %14
  %16 = load double, ptr %15, align 8
  %17 = fcmp une double %16, 0.000000e+00
  br i1 %17, label %18, label %41

18:                                               ; preds = %5
  %19 = icmp ne i32 %12, %.01
  br i1 %19, label %20, label %._crit_edge

._crit_edge:                                      ; preds = %18
  %.phi.trans.insert = getelementptr inbounds double, ptr %8, i64 %6
  %.pre = load double, ptr %.phi.trans.insert, align 8
  br label %23

20:                                               ; preds = %18
  %21 = getelementptr inbounds double, ptr %8, i64 %6
  %22 = load double, ptr %21, align 8
  store double %22, ptr %15, align 8
  store double %16, ptr %21, align 8
  br label %23

23:                                               ; preds = %._crit_edge, %20
  %24 = phi double [ %.pre, %._crit_edge ], [ %16, %20 ]
  %25 = fdiv double -1.000000e+00, %24
  %26 = sub nsw i32 2000, %9
  call void @dscal(i32 noundef %26, double noundef %25, ptr noundef %8, i32 noundef %9, i32 noundef 1)
  br label %27

27:                                               ; preds = %38, %23
  %.0 = phi i32 [ %9, %23 ], [ %39, %38 ]
  %28 = icmp slt i32 %.0, 2000
  br i1 %28, label %29, label %40

29:                                               ; preds = %27
  %30 = sext i32 %.0 to i64
  %31 = getelementptr inbounds ptr, ptr %0, i64 %30
  %32 = load ptr, ptr %31, align 8
  %33 = getelementptr inbounds double, ptr %32, i64 %14
  %34 = load double, ptr %33, align 8
  br i1 %19, label %35, label %38

35:                                               ; preds = %29
  %36 = getelementptr inbounds double, ptr %32, i64 %6
  %37 = load double, ptr %36, align 8
  store double %37, ptr %33, align 8
  store double %34, ptr %36, align 8
  br label %38

38:                                               ; preds = %35, %29
  call void @daxpy(i32 noundef %26, double noundef %34, ptr noundef %8, i32 noundef %9, i32 noundef 1, ptr noundef %32, i32 noundef %9, i32 noundef 1)
  %39 = add nsw i32 %.0, 1
  br label %27, !llvm.loop !19

40:                                               ; preds = %27
  br label %41

41:                                               ; preds = %40, %5
  br label %3, !llvm.loop !20

42:                                               ; preds = %3
  %43 = getelementptr inbounds i32, ptr %1, i64 1999
  store i32 1999, ptr %43, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @dgesl(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  br label %4

4:                                                ; preds = %17, %3
  %.01 = phi i32 [ 0, %3 ], [ %18, %17 ]
  %5 = icmp slt i32 %.01, 1999
  br i1 %5, label %6, label %22

6:                                                ; preds = %4
  %7 = sext i32 %.01 to i64
  %8 = getelementptr inbounds i32, ptr %1, i64 %7
  %9 = load i32, ptr %8, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds double, ptr %2, i64 %10
  %12 = load double, ptr %11, align 8
  %13 = icmp ne i32 %9, %.01
  br i1 %13, label %14, label %17

14:                                               ; preds = %6
  %15 = getelementptr inbounds double, ptr %2, i64 %7
  %16 = load double, ptr %15, align 8
  store double %16, ptr %11, align 8
  store double %12, ptr %15, align 8
  br label %17

17:                                               ; preds = %14, %6
  %18 = add nsw i32 %.01, 1
  %19 = sub nsw i32 2000, %18
  %20 = getelementptr inbounds ptr, ptr %0, i64 %7
  %21 = load ptr, ptr %20, align 8
  call void @daxpy(i32 noundef %19, double noundef %12, ptr noundef %21, i32 noundef %18, i32 noundef 1, ptr noundef %2, i32 noundef %18, i32 noundef 1)
  br label %4, !llvm.loop !21

22:                                               ; preds = %4
  br label %23

23:                                               ; preds = %25, %22
  %.0 = phi i32 [ 0, %22 ], [ %26, %25 ]
  %24 = icmp slt i32 %.0, 2000
  br i1 %24, label %25, label %38

25:                                               ; preds = %23
  %26 = add nsw i32 %.0, 1
  %27 = sub nsw i32 2000, %26
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds ptr, ptr %0, i64 %28
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr inbounds double, ptr %30, i64 %28
  %32 = load double, ptr %31, align 8
  %33 = getelementptr inbounds double, ptr %2, i64 %28
  %34 = load double, ptr %33, align 8
  %35 = fdiv double %34, %32
  store double %35, ptr %33, align 8
  %36 = fneg double %35
  %37 = load ptr, ptr %29, align 8
  call void @daxpy(i32 noundef %27, double noundef %36, ptr noundef %37, i32 noundef 0, i32 noundef 1, ptr noundef %2, i32 noundef 0, i32 noundef 1)
  br label %23, !llvm.loop !22

38:                                               ; preds = %23
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
  %6 = icmp slt i32 %.01, %0
  br i1 %6, label %7, label %15

7:                                                ; preds = %5
  %8 = getelementptr inbounds ptr, ptr %1, i64 1
  %9 = load ptr, ptr %8, align 8
  %10 = call i32 @strcmp(ptr noundef %9, ptr noundef @.str) #5
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %7
  br label %15

13:                                               ; preds = %7
  %14 = add nsw i32 %.01, 1
  br label %5, !llvm.loop !23

15:                                               ; preds = %12, %5
  %.1 = phi i8 [ 1, %12 ], [ 0, %5 ]
  br label %16

16:                                               ; preds = %15, %2
  %.0 = phi i8 [ %.1, %15 ], [ 0, %2 ]
  %17 = call ptr @malloc(i64 noundef 16000) #6
  br label %18

18:                                               ; preds = %20, %16
  %.12 = phi i32 [ 0, %16 ], [ %24, %20 ]
  %19 = icmp slt i32 %.12, 2000
  br i1 %19, label %20, label %25

20:                                               ; preds = %18
  %21 = call ptr @malloc(i64 noundef 16008) #6
  %22 = sext i32 %.12 to i64
  %23 = getelementptr inbounds ptr, ptr %17, i64 %22
  store ptr %21, ptr %23, align 8
  %24 = add nsw i32 %.12, 1
  br label %18, !llvm.loop !24

25:                                               ; preds = %18
  %26 = call ptr @malloc(i64 noundef 16000) #6
  %27 = call ptr @malloc(i64 noundef 16000) #6
  %28 = call ptr @malloc(i64 noundef 8000) #6
  call void @matgen(ptr noundef %17, ptr noundef %26)
  call void @dgefa(ptr noundef %17, ptr noundef %28)
  call void @dgesl(ptr noundef %17, ptr noundef %28, ptr noundef %26)
  call void @free(ptr noundef %28)
  call void @free(ptr noundef %27)
  call void @free(ptr noundef %26)
  br label %29

29:                                               ; preds = %31, %25
  %.2 = phi i32 [ 0, %25 ], [ %35, %31 ]
  %30 = icmp slt i32 %.2, 2000
  br i1 %30, label %31, label %36

31:                                               ; preds = %29
  %32 = sext i32 %.2 to i64
  %33 = getelementptr inbounds ptr, ptr %17, i64 %32
  %34 = load ptr, ptr %33, align 8
  call void @free(ptr noundef %34)
  %35 = add nsw i32 %.2, 1
  br label %29, !llvm.loop !25

36:                                               ; preds = %29
  call void @free(ptr noundef %17)
  %37 = icmp ne i8 %.0, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %36
  %39 = call ptr @__acrt_iob_func(i32 noundef 1)
  %40 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %39, ptr noundef @.str.1, double noundef 0.000000e+00) #5
  br label %44

41:                                               ; preds = %36
  %42 = call ptr @__acrt_iob_func(i32 noundef 1)
  %43 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %42, ptr noundef @.str.2, double noundef 0.000000e+00) #5
  br label %44

44:                                               ; preds = %41, %38
  %45 = call ptr @__acrt_iob_func(i32 noundef 1)
  %46 = call i32 @fflush(ptr noundef %45)
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
  %13 = phi i32 [ %11, %10 ], [ %8, %0 ]
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
