; ModuleID = 'results\paper_full\CoyoteBench_lpbench\CoyoteBench_lpbench.ll'
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

26:                                               ; preds = %43, %25
  %.1 = phi i32 [ 0, %25 ], [ %44, %43 ]
  %27 = icmp slt i32 %.1, 2000
  br i1 %27, label %28, label %45

28:                                               ; preds = %26
  br label %29

29:                                               ; preds = %31, %28
  %.2 = phi i32 [ 0, %28 ], [ %42, %31 ]
  %30 = icmp slt i32 %.2, 2000
  br i1 %30, label %31, label %43

31:                                               ; preds = %29
  %32 = sext i32 %.1 to i64
  %33 = getelementptr inbounds ptr, ptr %0, i64 %32
  %34 = load ptr, ptr %33, align 8
  %35 = sext i32 %.2 to i64
  %36 = getelementptr inbounds double, ptr %34, i64 %35
  %37 = load double, ptr %36, align 8
  %38 = sext i32 %.2 to i64
  %39 = getelementptr inbounds double, ptr %1, i64 %38
  %40 = load double, ptr %39, align 8
  %41 = fadd double %40, %37
  store double %41, ptr %39, align 8
  %42 = add nsw i32 %.2, 1
  br label %29, !llvm.loop !11

43:                                               ; preds = %29
  %44 = add nsw i32 %.1, 1
  br label %26, !llvm.loop !12

45:                                               ; preds = %26
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @idamax(i32 noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = icmp slt i32 %0, 1
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  br label %48

7:                                                ; preds = %4
  %8 = icmp eq i32 %0, 1
  br i1 %8, label %9, label %10

9:                                                ; preds = %7
  br label %48

10:                                               ; preds = %7
  %11 = icmp ne i32 %3, 1
  br i1 %11, label %12, label %31

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
  %.0 = phi i32 [ 0, %12 ], [ %.1, %28 ]
  %19 = icmp slt i32 %.02, %0
  br i1 %19, label %20, label %48

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
  %.1 = phi i32 [ %.02, %27 ], [ %.0, %20 ]
  %29 = add nsw i32 %.01, %3
  %30 = add nsw i32 %.02, 1
  br label %18, !llvm.loop !13

31:                                               ; preds = %10
  %32 = sext i32 %2 to i64
  %33 = getelementptr inbounds double, ptr %1, i64 %32
  %34 = load double, ptr %33, align 8
  %35 = call double @llvm.fabs.f64(double %34)
  br label %36

36:                                               ; preds = %46, %31
  %.26 = phi double [ %35, %31 ], [ %.37, %46 ]
  %.13 = phi i32 [ 1, %31 ], [ %47, %46 ]
  %.2 = phi i32 [ 0, %31 ], [ %.3, %46 ]
  %37 = icmp slt i32 %.13, %0
  br i1 %37, label %38, label %48

38:                                               ; preds = %36
  %39 = add nsw i32 %.13, %2
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds double, ptr %1, i64 %40
  %42 = load double, ptr %41, align 8
  %43 = call double @llvm.fabs.f64(double %42)
  %44 = fcmp ogt double %43, %.26
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  br label %46

46:                                               ; preds = %38, %45
  %.37 = phi double [ %43, %45 ], [ %.26, %38 ]
  %.3 = phi i32 [ %.13, %45 ], [ %.2, %38 ]
  %47 = add nsw i32 %.13, 1
  br label %36, !llvm.loop !14

48:                                               ; preds = %9, %36, %18, %6
  %.4 = phi i32 [ -1, %6 ], [ 0, %9 ], [ %.0, %18 ], [ %.2, %36 ]
  ret i32 %.4
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @dscal(i32 noundef %0, double noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = icmp sgt i32 %0, 0
  br i1 %6, label %7, label %30

7:                                                ; preds = %5
  %8 = icmp ne i32 %4, 1
  br i1 %8, label %9, label %20

9:                                                ; preds = %7
  %10 = mul nsw i32 %0, %4
  br label %11

11:                                               ; preds = %13, %9
  %.0 = phi i32 [ 0, %9 ], [ %19, %13 ]
  %12 = icmp slt i32 %.0, %10
  br i1 %12, label %13, label %30

13:                                               ; preds = %11
  %14 = add nsw i32 %.0, %3
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds double, ptr %2, i64 %15
  %17 = load double, ptr %16, align 8
  %18 = fmul double %17, %1
  store double %18, ptr %16, align 8
  %19 = add nsw i32 %.0, %4
  br label %11, !llvm.loop !15

20:                                               ; preds = %7
  br label %21

21:                                               ; preds = %23, %20
  %.1 = phi i32 [ 0, %20 ], [ %29, %23 ]
  %22 = icmp slt i32 %.1, %0
  br i1 %22, label %23, label %30

23:                                               ; preds = %21
  %24 = add nsw i32 %.1, %3
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds double, ptr %2, i64 %25
  %27 = load double, ptr %26, align 8
  %28 = fmul double %27, %1
  store double %28, ptr %26, align 8
  %29 = add nsw i32 %.1, 1
  br label %21, !llvm.loop !16

30:                                               ; preds = %11, %21, %5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @daxpy(i32 noundef %0, double noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7) #0 {
  %9 = icmp sgt i32 %0, 0
  %10 = fcmp une double %1, 0.000000e+00
  %or.cond = select i1 %9, i1 %10, i1 false
  br i1 %or.cond, label %11, label %54

11:                                               ; preds = %8
  %12 = icmp ne i32 %4, 1
  %13 = icmp ne i32 %7, 1
  %or.cond3 = select i1 %12, i1 true, i1 %13
  br i1 %or.cond3, label %14, label %40

14:                                               ; preds = %11
  %15 = icmp slt i32 %4, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %14
  %17 = sub nsw i32 1, %0
  %18 = mul nsw i32 %17, %4
  br label %19

19:                                               ; preds = %16, %14
  %.04 = phi i32 [ %18, %16 ], [ 0, %14 ]
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
  %.06 = phi i32 [ 0, %24 ], [ %39, %27 ]
  %.15 = phi i32 [ %.04, %24 ], [ %37, %27 ]
  %.1 = phi i32 [ %.0, %24 ], [ %38, %27 ]
  %26 = icmp slt i32 %.06, %0
  br i1 %26, label %27, label %54

27:                                               ; preds = %25
  %28 = add nsw i32 %.15, %3
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds double, ptr %2, i64 %29
  %31 = load double, ptr %30, align 8
  %32 = add nsw i32 %.1, %6
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds double, ptr %5, i64 %33
  %35 = load double, ptr %34, align 8
  %36 = call double @llvm.fmuladd.f64(double %1, double %31, double %35)
  store double %36, ptr %34, align 8
  %37 = add nsw i32 %.15, %4
  %38 = add nsw i32 %.1, %7
  %39 = add nsw i32 %.06, 1
  br label %25, !llvm.loop !17

40:                                               ; preds = %11
  br label %41

41:                                               ; preds = %43, %40
  %.17 = phi i32 [ 0, %40 ], [ %53, %43 ]
  %42 = icmp slt i32 %.17, %0
  br i1 %42, label %43, label %54

43:                                               ; preds = %41
  %44 = add nsw i32 %.17, %3
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds double, ptr %2, i64 %45
  %47 = load double, ptr %46, align 8
  %48 = add nsw i32 %.17, %6
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds double, ptr %5, i64 %49
  %51 = load double, ptr %50, align 8
  %52 = call double @llvm.fmuladd.f64(double %1, double %47, double %51)
  store double %52, ptr %50, align 8
  %53 = add nsw i32 %.17, 1
  br label %41, !llvm.loop !18

54:                                               ; preds = %41, %25, %8
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @dgefa(ptr noundef %0, ptr noundef %1) #0 {
  br label %3

3:                                                ; preds = %59, %2
  %.01 = phi i32 [ 0, %2 ], [ %60, %59 ]
  %4 = icmp slt i32 %.01, 1999
  br i1 %4, label %5, label %61

5:                                                ; preds = %3
  %6 = sext i32 %.01 to i64
  %7 = getelementptr inbounds ptr, ptr %0, i64 %6
  %8 = load ptr, ptr %7, align 8
  %9 = add nsw i32 %.01, 1
  %10 = sub nsw i32 2000, %.01
  %11 = call i32 @idamax(i32 noundef %10, ptr noundef %8, i32 noundef %.01, i32 noundef 1)
  %12 = add nsw i32 %11, %.01
  %13 = sext i32 %.01 to i64
  %14 = getelementptr inbounds i32, ptr %1, i64 %13
  store i32 %12, ptr %14, align 4
  %15 = sext i32 %12 to i64
  %16 = getelementptr inbounds double, ptr %8, i64 %15
  %17 = load double, ptr %16, align 8
  %18 = fcmp une double %17, 0.000000e+00
  br i1 %18, label %19, label %59

19:                                               ; preds = %5
  %20 = icmp ne i32 %12, %.01
  br i1 %20, label %21, label %32

21:                                               ; preds = %19
  %22 = sext i32 %12 to i64
  %23 = getelementptr inbounds double, ptr %8, i64 %22
  %24 = load double, ptr %23, align 8
  %25 = sext i32 %.01 to i64
  %26 = getelementptr inbounds double, ptr %8, i64 %25
  %27 = load double, ptr %26, align 8
  %28 = sext i32 %12 to i64
  %29 = getelementptr inbounds double, ptr %8, i64 %28
  store double %27, ptr %29, align 8
  %30 = sext i32 %.01 to i64
  %31 = getelementptr inbounds double, ptr %8, i64 %30
  store double %24, ptr %31, align 8
  br label %32

32:                                               ; preds = %21, %19
  %33 = sext i32 %.01 to i64
  %34 = getelementptr inbounds double, ptr %8, i64 %33
  %35 = load double, ptr %34, align 8
  %36 = fdiv double -1.000000e+00, %35
  %37 = sub nsw i32 2000, %9
  call void @dscal(i32 noundef %37, double noundef %36, ptr noundef %8, i32 noundef %9, i32 noundef 1)
  br label %38

38:                                               ; preds = %56, %32
  %.0 = phi i32 [ %9, %32 ], [ %58, %56 ]
  %39 = icmp slt i32 %.0, 2000
  br i1 %39, label %40, label %59

40:                                               ; preds = %38
  %41 = sext i32 %.0 to i64
  %42 = getelementptr inbounds ptr, ptr %0, i64 %41
  %43 = load ptr, ptr %42, align 8
  %44 = sext i32 %12 to i64
  %45 = getelementptr inbounds double, ptr %43, i64 %44
  %46 = load double, ptr %45, align 8
  %47 = icmp ne i32 %12, %.01
  br i1 %47, label %48, label %56

48:                                               ; preds = %40
  %49 = sext i32 %.01 to i64
  %50 = getelementptr inbounds double, ptr %43, i64 %49
  %51 = load double, ptr %50, align 8
  %52 = sext i32 %12 to i64
  %53 = getelementptr inbounds double, ptr %43, i64 %52
  store double %51, ptr %53, align 8
  %54 = sext i32 %.01 to i64
  %55 = getelementptr inbounds double, ptr %43, i64 %54
  store double %46, ptr %55, align 8
  br label %56

56:                                               ; preds = %48, %40
  %57 = sub nsw i32 2000, %9
  call void @daxpy(i32 noundef %57, double noundef %46, ptr noundef %8, i32 noundef %9, i32 noundef 1, ptr noundef %43, i32 noundef %9, i32 noundef 1)
  %58 = add nsw i32 %.0, 1
  br label %38, !llvm.loop !19

59:                                               ; preds = %5, %38
  %60 = add nsw i32 %.01, 1
  br label %3, !llvm.loop !20

61:                                               ; preds = %3
  %62 = getelementptr inbounds i32, ptr %1, i64 1999
  store i32 1999, ptr %62, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @dgesl(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  br label %4

4:                                                ; preds = %22, %3
  %.01 = phi i32 [ 0, %3 ], [ %28, %22 ]
  %5 = icmp slt i32 %.01, 1999
  br i1 %5, label %6, label %29

6:                                                ; preds = %4
  %7 = sext i32 %.01 to i64
  %8 = getelementptr inbounds i32, ptr %1, i64 %7
  %9 = load i32, ptr %8, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds double, ptr %2, i64 %10
  %12 = load double, ptr %11, align 8
  %13 = icmp ne i32 %9, %.01
  br i1 %13, label %14, label %22

14:                                               ; preds = %6
  %15 = sext i32 %.01 to i64
  %16 = getelementptr inbounds double, ptr %2, i64 %15
  %17 = load double, ptr %16, align 8
  %18 = sext i32 %9 to i64
  %19 = getelementptr inbounds double, ptr %2, i64 %18
  store double %17, ptr %19, align 8
  %20 = sext i32 %.01 to i64
  %21 = getelementptr inbounds double, ptr %2, i64 %20
  store double %12, ptr %21, align 8
  br label %22

22:                                               ; preds = %14, %6
  %23 = add nsw i32 %.01, 1
  %24 = sub nsw i32 2000, %23
  %25 = sext i32 %.01 to i64
  %26 = getelementptr inbounds ptr, ptr %0, i64 %25
  %27 = load ptr, ptr %26, align 8
  call void @daxpy(i32 noundef %24, double noundef %12, ptr noundef %27, i32 noundef %23, i32 noundef 1, ptr noundef %2, i32 noundef %23, i32 noundef 1)
  %28 = add nsw i32 %.01, 1
  br label %4, !llvm.loop !21

29:                                               ; preds = %4
  br label %30

30:                                               ; preds = %32, %29
  %.0 = phi i32 [ 0, %29 ], [ %52, %32 ]
  %31 = icmp slt i32 %.0, 2000
  br i1 %31, label %32, label %53

32:                                               ; preds = %30
  %33 = add nsw i32 %.0, 1
  %34 = sub nsw i32 2000, %33
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds ptr, ptr %0, i64 %35
  %37 = load ptr, ptr %36, align 8
  %38 = sext i32 %34 to i64
  %39 = getelementptr inbounds double, ptr %37, i64 %38
  %40 = load double, ptr %39, align 8
  %41 = sext i32 %34 to i64
  %42 = getelementptr inbounds double, ptr %2, i64 %41
  %43 = load double, ptr %42, align 8
  %44 = fdiv double %43, %40
  store double %44, ptr %42, align 8
  %45 = sext i32 %34 to i64
  %46 = getelementptr inbounds double, ptr %2, i64 %45
  %47 = load double, ptr %46, align 8
  %48 = fneg double %47
  %49 = sext i32 %34 to i64
  %50 = getelementptr inbounds ptr, ptr %0, i64 %49
  %51 = load ptr, ptr %50, align 8
  call void @daxpy(i32 noundef %34, double noundef %48, ptr noundef %51, i32 noundef 0, i32 noundef 1, ptr noundef %2, i32 noundef 0, i32 noundef 1)
  %52 = add nsw i32 %.0, 1
  br label %30, !llvm.loop !22

53:                                               ; preds = %30
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = icmp sgt i32 %0, 1
  br i1 %3, label %4, label %15

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

15:                                               ; preds = %5, %12, %2
  %.0 = phi i8 [ 1, %12 ], [ 0, %5 ], [ 0, %2 ]
  %16 = call ptr @malloc(i64 noundef 16000) #6
  br label %17

17:                                               ; preds = %19, %15
  %.1 = phi i32 [ 0, %15 ], [ %23, %19 ]
  %18 = icmp slt i32 %.1, 2000
  br i1 %18, label %19, label %24

19:                                               ; preds = %17
  %20 = call ptr @malloc(i64 noundef 16008) #6
  %21 = sext i32 %.1 to i64
  %22 = getelementptr inbounds ptr, ptr %16, i64 %21
  store ptr %20, ptr %22, align 8
  %23 = add nsw i32 %.1, 1
  br label %17, !llvm.loop !24

24:                                               ; preds = %17
  %25 = call ptr @malloc(i64 noundef 16000) #6
  %26 = call ptr @malloc(i64 noundef 16000) #6
  %27 = call ptr @malloc(i64 noundef 8000) #6
  call void @matgen(ptr noundef %16, ptr noundef %25)
  call void @dgefa(ptr noundef %16, ptr noundef %27)
  call void @dgesl(ptr noundef %16, ptr noundef %27, ptr noundef %25)
  call void @free(ptr noundef %27)
  call void @free(ptr noundef %26)
  call void @free(ptr noundef %25)
  br label %28

28:                                               ; preds = %30, %24
  %.2 = phi i32 [ 0, %24 ], [ %34, %30 ]
  %29 = icmp slt i32 %.2, 2000
  br i1 %29, label %30, label %35

30:                                               ; preds = %28
  %31 = sext i32 %.2 to i64
  %32 = getelementptr inbounds ptr, ptr %16, i64 %31
  %33 = load ptr, ptr %32, align 8
  call void @free(ptr noundef %33)
  %34 = add nsw i32 %.2, 1
  br label %28, !llvm.loop !25

35:                                               ; preds = %28
  call void @free(ptr noundef %16)
  %36 = icmp ne i8 %.0, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %35
  %38 = call ptr @__acrt_iob_func(i32 noundef 1)
  %39 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %38, ptr noundef @.str.1, double noundef 0.000000e+00) #5
  br label %43

40:                                               ; preds = %35
  %41 = call ptr @__acrt_iob_func(i32 noundef 1)
  %42 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %41, ptr noundef @.str.2, double noundef 0.000000e+00) #5
  br label %43

43:                                               ; preds = %40, %37
  %44 = call ptr @__acrt_iob_func(i32 noundef 1)
  %45 = call i32 @fflush(ptr noundef %44)
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
  store i32 %2, ptr @seed, align 4
  %3 = load i32, ptr @seed, align 4
  %4 = sdiv i32 %3, 127773
  %5 = load i32, ptr @seed, align 4
  %6 = mul nsw i32 %4, 127773
  %7 = sub nsw i32 %5, %6
  %8 = mul nsw i32 16807, %7
  %9 = mul nsw i32 2836, %4
  %10 = sub nsw i32 %8, %9
  store i32 %10, ptr @seed, align 4
  %11 = load i32, ptr @seed, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %0
  %14 = load i32, ptr @seed, align 4
  %15 = add nsw i32 %14, 2147483647
  store i32 %15, ptr @seed, align 4
  br label %16

16:                                               ; preds = %13, %0
  %17 = load i32, ptr @seed, align 4
  %18 = sitofp i32 %17 to double
  %19 = fmul double f0x3E00000000200FE1, %18
  %20 = load i32, ptr @seed, align 4
  %21 = xor i32 %20, 123459876
  store i32 %21, ptr @seed, align 4
  ret double %19
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
