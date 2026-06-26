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

3:                                                ; preds = %18, %2
  %.019 = phi i32 [ 0, %2 ], [ %19, %18 ]
  %4 = icmp slt i32 %.019, 2000
  br i1 %4, label %5, label %20

5:                                                ; preds = %3
  br label %6

6:                                                ; preds = %15, %5
  %.0 = phi i32 [ 0, %5 ], [ %16, %15 ]
  %7 = icmp slt i32 %.0, 2000
  br i1 %7, label %8, label %17

8:                                                ; preds = %6
  %9 = call double @random_double()
  %10 = sext i32 %.0 to i64
  %11 = getelementptr inbounds ptr, ptr %0, i64 %10
  %12 = load ptr, ptr %11, align 8
  %13 = sext i32 %.019 to i64
  %14 = getelementptr inbounds double, ptr %12, i64 %13
  store double %9, ptr %14, align 8
  br label %15

15:                                               ; preds = %8
  %16 = add nsw i32 %.0, 1
  br label %6, !llvm.loop !7

17:                                               ; preds = %6
  br label %18

18:                                               ; preds = %17
  %19 = add nsw i32 %.019, 1
  br label %3, !llvm.loop !9

20:                                               ; preds = %3
  br label %21

21:                                               ; preds = %26, %20
  %.120 = phi i32 [ 0, %20 ], [ %27, %26 ]
  %22 = icmp slt i32 %.120, 2000
  br i1 %22, label %23, label %28

23:                                               ; preds = %21
  %24 = sext i32 %.120 to i64
  %25 = getelementptr inbounds double, ptr %1, i64 %24
  store double 0.000000e+00, ptr %25, align 8
  br label %26

26:                                               ; preds = %23
  %27 = add nsw i32 %.120, 1
  br label %21, !llvm.loop !10

28:                                               ; preds = %21
  br label %29

29:                                               ; preds = %47, %28
  %.1 = phi i32 [ 0, %28 ], [ %48, %47 ]
  %30 = icmp slt i32 %.1, 2000
  br i1 %30, label %31, label %49

31:                                               ; preds = %29
  br label %32

32:                                               ; preds = %44, %31
  %.2 = phi i32 [ 0, %31 ], [ %45, %44 ]
  %33 = icmp slt i32 %.2, 2000
  br i1 %33, label %34, label %46

34:                                               ; preds = %32
  %35 = sext i32 %.1 to i64
  %36 = getelementptr inbounds ptr, ptr %0, i64 %35
  %37 = load ptr, ptr %36, align 8
  %38 = sext i32 %.2 to i64
  %39 = getelementptr inbounds double, ptr %37, i64 %38
  %40 = load double, ptr %39, align 8
  %41 = getelementptr inbounds double, ptr %1, i64 %38
  %42 = load double, ptr %41, align 8
  %43 = fadd double %42, %40
  store double %43, ptr %41, align 8
  br label %44

44:                                               ; preds = %34
  %45 = add nsw i32 %.2, 1
  br label %32, !llvm.loop !11

46:                                               ; preds = %32
  br label %47

47:                                               ; preds = %46
  %48 = add nsw i32 %.1, 1
  br label %29, !llvm.loop !12

49:                                               ; preds = %29
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @idamax(i32 noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = icmp slt i32 %0, 1
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  br label %54

7:                                                ; preds = %4
  %8 = icmp eq i32 %0, 1
  br i1 %8, label %9, label %10

9:                                                ; preds = %7
  br label %53

10:                                               ; preds = %7
  %11 = icmp ne i32 %3, 1
  br i1 %11, label %12, label %33

12:                                               ; preds = %10
  %13 = sext i32 %2 to i64
  %14 = getelementptr inbounds double, ptr %1, i64 %13
  %15 = load double, ptr %14, align 8
  %16 = call double @llvm.fabs.f64(double %15)
  %17 = add nsw i32 1, %3
  br label %18

18:                                               ; preds = %30, %12
  %.033 = phi double [ %16, %12 ], [ %.134, %30 ]
  %.031 = phi i32 [ 1, %12 ], [ %31, %30 ]
  %.030 = phi i32 [ %17, %12 ], [ %29, %30 ]
  %.2 = phi i32 [ 0, %12 ], [ %.3, %30 ]
  %19 = icmp slt i32 %.031, %0
  br i1 %19, label %20, label %32

20:                                               ; preds = %18
  %21 = add nsw i32 %.030, %2
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds double, ptr %1, i64 %22
  %24 = load double, ptr %23, align 8
  %25 = call double @llvm.fabs.f64(double %24)
  %26 = fcmp ogt double %25, %.033
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  br label %28

28:                                               ; preds = %27, %20
  %.134 = phi double [ %25, %27 ], [ %.033, %20 ]
  %.3 = phi i32 [ %.031, %27 ], [ %.2, %20 ]
  %29 = add nsw i32 %.030, %3
  br label %30

30:                                               ; preds = %28
  %31 = add nsw i32 %.031, 1
  br label %18, !llvm.loop !13

32:                                               ; preds = %18
  br label %52

33:                                               ; preds = %10
  %34 = sext i32 %2 to i64
  %35 = getelementptr inbounds double, ptr %1, i64 %34
  %36 = load double, ptr %35, align 8
  %37 = call double @llvm.fabs.f64(double %36)
  br label %38

38:                                               ; preds = %49, %33
  %.235 = phi double [ %37, %33 ], [ %.336, %49 ]
  %.132 = phi i32 [ 1, %33 ], [ %50, %49 ]
  %.5 = phi i32 [ 0, %33 ], [ %.6, %49 ]
  %39 = icmp slt i32 %.132, %0
  br i1 %39, label %40, label %51

40:                                               ; preds = %38
  %41 = add nsw i32 %.132, %2
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds double, ptr %1, i64 %42
  %44 = load double, ptr %43, align 8
  %45 = call double @llvm.fabs.f64(double %44)
  %46 = fcmp ogt double %45, %.235
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  br label %48

48:                                               ; preds = %47, %40
  %.336 = phi double [ %45, %47 ], [ %.235, %40 ]
  %.6 = phi i32 [ %.132, %47 ], [ %.5, %40 ]
  br label %49

49:                                               ; preds = %48
  %50 = add nsw i32 %.132, 1
  br label %38, !llvm.loop !14

51:                                               ; preds = %38
  br label %52

52:                                               ; preds = %51, %32
  %.4 = phi i32 [ %.2, %32 ], [ %.5, %51 ]
  br label %53

53:                                               ; preds = %52, %9
  %.1 = phi i32 [ 0, %9 ], [ %.4, %52 ]
  br label %54

54:                                               ; preds = %53, %6
  %.0 = phi i32 [ -1, %6 ], [ %.1, %53 ]
  ret i32 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @dscal(i32 noundef %0, double noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = icmp sgt i32 %0, 0
  br i1 %6, label %7, label %35

7:                                                ; preds = %5
  %8 = icmp ne i32 %4, 1
  br i1 %8, label %9, label %22

9:                                                ; preds = %7
  %10 = mul nsw i32 %0, %4
  br label %11

11:                                               ; preds = %19, %9
  %.0 = phi i32 [ 0, %9 ], [ %20, %19 ]
  %12 = icmp slt i32 %.0, %10
  br i1 %12, label %13, label %21

13:                                               ; preds = %11
  %14 = add nsw i32 %.0, %3
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds double, ptr %2, i64 %15
  %17 = load double, ptr %16, align 8
  %18 = fmul double %17, %1
  store double %18, ptr %16, align 8
  br label %19

19:                                               ; preds = %13
  %20 = add nsw i32 %.0, %4
  br label %11, !llvm.loop !15

21:                                               ; preds = %11
  br label %34

22:                                               ; preds = %7
  br label %23

23:                                               ; preds = %31, %22
  %.1 = phi i32 [ 0, %22 ], [ %32, %31 ]
  %24 = icmp slt i32 %.1, %0
  br i1 %24, label %25, label %33

25:                                               ; preds = %23
  %26 = add nsw i32 %.1, %3
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds double, ptr %2, i64 %27
  %29 = load double, ptr %28, align 8
  %30 = fmul double %29, %1
  store double %30, ptr %28, align 8
  br label %31

31:                                               ; preds = %25
  %32 = add nsw i32 %.1, 1
  br label %23, !llvm.loop !16

33:                                               ; preds = %23
  br label %34

34:                                               ; preds = %33, %21
  br label %35

35:                                               ; preds = %34, %5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @daxpy(i32 noundef %0, double noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7) #0 {
  %9 = icmp sgt i32 %0, 0
  br i1 %9, label %10, label %61

10:                                               ; preds = %8
  %11 = fcmp une double %1, 0.000000e+00
  br i1 %11, label %12, label %61

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
  %.033 = phi i32 [ %20, %18 ], [ 0, %16 ]
  %22 = icmp slt i32 %7, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %21
  %24 = sub nsw i32 1, %0
  %25 = mul nsw i32 %24, %7
  br label %26

26:                                               ; preds = %23, %21
  %.0 = phi i32 [ %25, %23 ], [ 0, %21 ]
  br label %27

27:                                               ; preds = %41, %26
  %.035 = phi i32 [ 0, %26 ], [ %42, %41 ]
  %.134 = phi i32 [ %.033, %26 ], [ %39, %41 ]
  %.1 = phi i32 [ %.0, %26 ], [ %40, %41 ]
  %28 = icmp slt i32 %.035, %0
  br i1 %28, label %29, label %43

29:                                               ; preds = %27
  %30 = add nsw i32 %.134, %3
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds double, ptr %2, i64 %31
  %33 = load double, ptr %32, align 8
  %34 = add nsw i32 %.1, %6
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds double, ptr %5, i64 %35
  %37 = load double, ptr %36, align 8
  %38 = call double @llvm.fmuladd.f64(double %1, double %33, double %37)
  store double %38, ptr %36, align 8
  %39 = add nsw i32 %.134, %4
  %40 = add nsw i32 %.1, %7
  br label %41

41:                                               ; preds = %29
  %42 = add nsw i32 %.035, 1
  br label %27, !llvm.loop !17

43:                                               ; preds = %27
  br label %61

44:                                               ; preds = %14
  br label %45

45:                                               ; preds = %57, %44
  %.136 = phi i32 [ 0, %44 ], [ %58, %57 ]
  %46 = icmp slt i32 %.136, %0
  br i1 %46, label %47, label %59

47:                                               ; preds = %45
  %48 = add nsw i32 %.136, %3
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds double, ptr %2, i64 %49
  %51 = load double, ptr %50, align 8
  %52 = add nsw i32 %.136, %6
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds double, ptr %5, i64 %53
  %55 = load double, ptr %54, align 8
  %56 = call double @llvm.fmuladd.f64(double %1, double %51, double %55)
  store double %56, ptr %54, align 8
  br label %57

57:                                               ; preds = %47
  %58 = add nsw i32 %.136, 1
  br label %45, !llvm.loop !18

59:                                               ; preds = %45
  br label %60

60:                                               ; preds = %59
  br label %61

61:                                               ; preds = %60, %43, %10, %8
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @dgefa(ptr noundef %0, ptr noundef %1) #0 {
  br label %3

3:                                                ; preds = %44, %2
  %.0 = phi i32 [ 0, %2 ], [ %9, %44 ]
  %4 = icmp slt i32 %.0, 1999
  br i1 %4, label %5, label %45

5:                                                ; preds = %3
  %6 = sext i32 %.0 to i64
  %7 = getelementptr inbounds ptr, ptr %0, i64 %6
  %8 = load ptr, ptr %7, align 8
  %9 = add nsw i32 %.0, 1
  %10 = sub nsw i32 2000, %.0
  %11 = call i32 @idamax(i32 noundef %10, ptr noundef %8, i32 noundef %.0, i32 noundef 1)
  %12 = add nsw i32 %11, %.0
  %13 = getelementptr inbounds i32, ptr %1, i64 %6
  store i32 %12, ptr %13, align 4
  %14 = sext i32 %12 to i64
  %15 = getelementptr inbounds double, ptr %8, i64 %14
  %16 = load double, ptr %15, align 8
  %17 = fcmp une double %16, 0.000000e+00
  br i1 %17, label %18, label %43

18:                                               ; preds = %5
  %19 = icmp ne i32 %12, %.0
  br i1 %19, label %20, label %23

20:                                               ; preds = %18
  %21 = getelementptr inbounds double, ptr %8, i64 %6
  %22 = load double, ptr %21, align 8
  store double %22, ptr %15, align 8
  store double %16, ptr %21, align 8
  br label %23

23:                                               ; preds = %20, %18
  %24 = getelementptr inbounds double, ptr %8, i64 %6
  %25 = load double, ptr %24, align 8
  %26 = fdiv double -1.000000e+00, %25
  %27 = sub nsw i32 2000, %9
  call void @dscal(i32 noundef %27, double noundef %26, ptr noundef %8, i32 noundef %9, i32 noundef 1)
  br label %28

28:                                               ; preds = %40, %23
  %.053 = phi i32 [ %9, %23 ], [ %41, %40 ]
  %29 = icmp slt i32 %.053, 2000
  br i1 %29, label %30, label %42

30:                                               ; preds = %28
  %31 = sext i32 %.053 to i64
  %32 = getelementptr inbounds ptr, ptr %0, i64 %31
  %33 = load ptr, ptr %32, align 8
  %34 = getelementptr inbounds double, ptr %33, i64 %14
  %35 = load double, ptr %34, align 8
  br i1 %19, label %36, label %39

36:                                               ; preds = %30
  %37 = getelementptr inbounds double, ptr %33, i64 %6
  %38 = load double, ptr %37, align 8
  store double %38, ptr %34, align 8
  store double %35, ptr %37, align 8
  br label %39

39:                                               ; preds = %36, %30
  call void @daxpy(i32 noundef %27, double noundef %35, ptr noundef %8, i32 noundef %9, i32 noundef 1, ptr noundef %33, i32 noundef %9, i32 noundef 1)
  br label %40

40:                                               ; preds = %39
  %41 = add nsw i32 %.053, 1
  br label %28, !llvm.loop !19

42:                                               ; preds = %28
  br label %43

43:                                               ; preds = %42, %5
  br label %44

44:                                               ; preds = %43
  br label %3, !llvm.loop !20

45:                                               ; preds = %3
  %46 = getelementptr inbounds i32, ptr %1, i64 1999
  store i32 1999, ptr %46, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @dgesl(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  br label %4

4:                                                ; preds = %22, %3
  %.0 = phi i32 [ 0, %3 ], [ %18, %22 ]
  %5 = icmp slt i32 %.0, 1999
  br i1 %5, label %6, label %23

6:                                                ; preds = %4
  %7 = sext i32 %.0 to i64
  %8 = getelementptr inbounds i32, ptr %1, i64 %7
  %9 = load i32, ptr %8, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds double, ptr %2, i64 %10
  %12 = load double, ptr %11, align 8
  %13 = icmp ne i32 %9, %.0
  br i1 %13, label %14, label %17

14:                                               ; preds = %6
  %15 = getelementptr inbounds double, ptr %2, i64 %7
  %16 = load double, ptr %15, align 8
  store double %16, ptr %11, align 8
  store double %12, ptr %15, align 8
  br label %17

17:                                               ; preds = %14, %6
  %18 = add nsw i32 %.0, 1
  %19 = sub nsw i32 2000, %18
  %20 = getelementptr inbounds ptr, ptr %0, i64 %7
  %21 = load ptr, ptr %20, align 8
  call void @daxpy(i32 noundef %19, double noundef %12, ptr noundef %21, i32 noundef %18, i32 noundef 1, ptr noundef %2, i32 noundef %18, i32 noundef 1)
  br label %22

22:                                               ; preds = %17
  br label %4, !llvm.loop !21

23:                                               ; preds = %4
  br label %24

24:                                               ; preds = %39, %23
  %.037 = phi i32 [ 0, %23 ], [ %27, %39 ]
  %25 = icmp slt i32 %.037, 2000
  br i1 %25, label %26, label %40

26:                                               ; preds = %24
  %27 = add nsw i32 %.037, 1
  %28 = sub nsw i32 2000, %27
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds ptr, ptr %0, i64 %29
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds double, ptr %31, i64 %29
  %33 = load double, ptr %32, align 8
  %34 = getelementptr inbounds double, ptr %2, i64 %29
  %35 = load double, ptr %34, align 8
  %36 = fdiv double %35, %33
  store double %36, ptr %34, align 8
  %37 = fneg double %36
  %38 = load ptr, ptr %30, align 8
  call void @daxpy(i32 noundef %28, double noundef %37, ptr noundef %38, i32 noundef 0, i32 noundef 1, ptr noundef %2, i32 noundef 0, i32 noundef 1)
  br label %39

39:                                               ; preds = %26
  br label %24, !llvm.loop !22

40:                                               ; preds = %24
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = icmp sgt i32 %0, 1
  br i1 %3, label %4, label %17

4:                                                ; preds = %2
  br label %5

5:                                                ; preds = %14, %4
  %.0 = phi i32 [ 1, %4 ], [ %15, %14 ]
  %6 = icmp slt i32 %.0, %0
  br i1 %6, label %7, label %16

7:                                                ; preds = %5
  %8 = getelementptr inbounds ptr, ptr %1, i64 1
  %9 = load ptr, ptr %8, align 8
  %10 = call i32 @strcmp(ptr noundef %9, ptr noundef @.str) #5
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %7
  br label %16

13:                                               ; preds = %7
  br label %14

14:                                               ; preds = %13
  %15 = add nsw i32 %.0, 1
  br label %5, !llvm.loop !23

16:                                               ; preds = %12, %5
  %.127 = phi i8 [ 1, %12 ], [ 0, %5 ]
  br label %17

17:                                               ; preds = %16, %2
  %.026 = phi i8 [ %.127, %16 ], [ 0, %2 ]
  %18 = call ptr @malloc(i64 noundef 16000) #6
  br label %19

19:                                               ; preds = %25, %17
  %.1 = phi i32 [ 0, %17 ], [ %26, %25 ]
  %20 = icmp slt i32 %.1, 2000
  br i1 %20, label %21, label %27

21:                                               ; preds = %19
  %22 = call ptr @malloc(i64 noundef 16008) #6
  %23 = sext i32 %.1 to i64
  %24 = getelementptr inbounds ptr, ptr %18, i64 %23
  store ptr %22, ptr %24, align 8
  br label %25

25:                                               ; preds = %21
  %26 = add nsw i32 %.1, 1
  br label %19, !llvm.loop !24

27:                                               ; preds = %19
  %28 = call ptr @malloc(i64 noundef 16000) #6
  %29 = call ptr @malloc(i64 noundef 16000) #6
  %30 = call ptr @malloc(i64 noundef 8000) #6
  call void @matgen(ptr noundef %18, ptr noundef %28)
  call void @dgefa(ptr noundef %18, ptr noundef %30)
  call void @dgesl(ptr noundef %18, ptr noundef %30, ptr noundef %28)
  call void @free(ptr noundef %30)
  call void @free(ptr noundef %29)
  call void @free(ptr noundef %28)
  br label %31

31:                                               ; preds = %37, %27
  %.2 = phi i32 [ 0, %27 ], [ %38, %37 ]
  %32 = icmp slt i32 %.2, 2000
  br i1 %32, label %33, label %39

33:                                               ; preds = %31
  %34 = sext i32 %.2 to i64
  %35 = getelementptr inbounds ptr, ptr %18, i64 %34
  %36 = load ptr, ptr %35, align 8
  call void @free(ptr noundef %36)
  br label %37

37:                                               ; preds = %33
  %38 = add nsw i32 %.2, 1
  br label %31, !llvm.loop !25

39:                                               ; preds = %31
  call void @free(ptr noundef %18)
  %40 = icmp ne i8 %.026, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %39
  %42 = call ptr @__acrt_iob_func(i32 noundef 1)
  %43 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %42, ptr noundef @.str.1, double noundef 0.000000e+00) #5
  br label %47

44:                                               ; preds = %39
  %45 = call ptr @__acrt_iob_func(i32 noundef 1)
  %46 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %45, ptr noundef @.str.2, double noundef 0.000000e+00) #5
  br label %47

47:                                               ; preds = %44, %41
  %48 = call ptr @__acrt_iob_func(i32 noundef 1)
  %49 = call i32 @fflush(ptr noundef %48)
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
