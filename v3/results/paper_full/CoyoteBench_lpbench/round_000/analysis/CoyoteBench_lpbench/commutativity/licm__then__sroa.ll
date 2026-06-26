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

3:                                                ; preds = %20, %2
  %.lcssa4 = phi i32 [ %.lcssa, %20 ], [ undef, %2 ]
  %4 = phi i32 [ %21, %20 ], [ 0, %2 ]
  %5 = icmp slt i32 %4, 2000
  br i1 %5, label %6, label %22

6:                                                ; preds = %3
  %7 = sext i32 %4 to i64
  br label %8

8:                                                ; preds = %17, %6
  %9 = phi i32 [ %18, %17 ], [ 0, %6 ]
  %10 = icmp slt i32 %9, 2000
  br i1 %10, label %11, label %19

11:                                               ; preds = %8
  %12 = call double @random_double()
  %13 = sext i32 %9 to i64
  %14 = getelementptr inbounds ptr, ptr %0, i64 %13
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds double, ptr %15, i64 %7
  store double %12, ptr %16, align 8
  br label %17

17:                                               ; preds = %11
  %18 = add nsw i32 %9, 1
  br label %8, !llvm.loop !7

19:                                               ; preds = %8
  %.lcssa = phi i32 [ %9, %8 ]
  br label %20

20:                                               ; preds = %19
  %21 = add nsw i32 %4, 1
  br label %3, !llvm.loop !9

22:                                               ; preds = %3
  %.lcssa4.lcssa = phi i32 [ %.lcssa4, %3 ]
  %.lcssa2 = phi i32 [ %4, %3 ]
  br label %23

23:                                               ; preds = %29, %22
  %24 = phi i32 [ %30, %29 ], [ 0, %22 ]
  %25 = icmp slt i32 %24, 2000
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = sext i32 %24 to i64
  %28 = getelementptr inbounds double, ptr %1, i64 %27
  store double 0.000000e+00, ptr %28, align 8
  br label %29

29:                                               ; preds = %26
  %30 = add nsw i32 %24, 1
  br label %23, !llvm.loop !10

31:                                               ; preds = %23
  %.lcssa5 = phi i32 [ %24, %23 ]
  br label %32

32:                                               ; preds = %53, %31
  %.lcssa711 = phi i32 [ %.lcssa7, %53 ], [ %.lcssa5, %31 ]
  %33 = phi i32 [ %54, %53 ], [ 0, %31 ]
  %34 = icmp slt i32 %33, 2000
  br i1 %34, label %35, label %55

35:                                               ; preds = %32
  %36 = sext i32 %33 to i64
  %37 = getelementptr inbounds ptr, ptr %0, i64 %36
  br label %38

38:                                               ; preds = %50, %35
  %39 = phi i32 [ %51, %50 ], [ 0, %35 ]
  %40 = icmp slt i32 %39, 2000
  br i1 %40, label %41, label %52

41:                                               ; preds = %38
  %42 = load ptr, ptr %37, align 8
  %43 = sext i32 %39 to i64
  %44 = getelementptr inbounds double, ptr %42, i64 %43
  %45 = load double, ptr %44, align 8
  %46 = sext i32 %39 to i64
  %47 = getelementptr inbounds double, ptr %1, i64 %46
  %48 = load double, ptr %47, align 8
  %49 = fadd double %48, %45
  store double %49, ptr %47, align 8
  br label %50

50:                                               ; preds = %41
  %51 = add nsw i32 %39, 1
  br label %38, !llvm.loop !11

52:                                               ; preds = %38
  %.lcssa7 = phi i32 [ %39, %38 ]
  br label %53

53:                                               ; preds = %52
  %54 = add nsw i32 %33, 1
  br label %32, !llvm.loop !12

55:                                               ; preds = %32
  %.lcssa711.lcssa = phi i32 [ %.lcssa711, %32 ]
  %.lcssa9 = phi i32 [ %33, %32 ]
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @idamax(i32 noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = icmp slt i32 %0, 1
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  br label %67

7:                                                ; preds = %4
  %8 = icmp eq i32 %0, 1
  br i1 %8, label %9, label %10

9:                                                ; preds = %7
  br label %66

10:                                               ; preds = %7
  %11 = icmp ne i32 %3, 1
  br i1 %11, label %12, label %40

12:                                               ; preds = %10
  %13 = sext i32 %2 to i64
  %14 = getelementptr inbounds double, ptr %1, i64 %13
  %15 = load double, ptr %14, align 8
  %16 = call double @llvm.fabs.f64(double %15)
  %17 = add nsw i32 1, %3
  br label %18

18:                                               ; preds = %37, %12
  %19 = phi i32 [ %34, %37 ], [ 0, %12 ]
  %20 = phi double [ %35, %37 ], [ %16, %12 ]
  %21 = phi double [ %30, %37 ], [ undef, %12 ]
  %22 = phi i32 [ %36, %37 ], [ %17, %12 ]
  %23 = phi i32 [ %38, %37 ], [ 1, %12 ]
  %24 = icmp slt i32 %23, %0
  br i1 %24, label %25, label %39

25:                                               ; preds = %18
  %26 = add nsw i32 %22, %2
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds double, ptr %1, i64 %27
  %29 = load double, ptr %28, align 8
  %30 = call double @llvm.fabs.f64(double %29)
  %31 = fcmp ogt double %30, %20
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  br label %33

33:                                               ; preds = %32, %25
  %34 = phi i32 [ %23, %32 ], [ %19, %25 ]
  %35 = phi double [ %30, %32 ], [ %20, %25 ]
  %36 = add nsw i32 %22, %3
  br label %37

37:                                               ; preds = %33
  %38 = add nsw i32 %23, 1
  br label %18, !llvm.loop !13

39:                                               ; preds = %18
  %.lcssa16 = phi i32 [ %19, %18 ]
  %.lcssa14 = phi double [ %20, %18 ]
  %.lcssa12 = phi double [ %21, %18 ]
  %.lcssa10 = phi i32 [ %22, %18 ]
  %.lcssa8 = phi i32 [ %23, %18 ]
  br label %65

40:                                               ; preds = %10
  %41 = sext i32 %2 to i64
  %42 = getelementptr inbounds double, ptr %1, i64 %41
  %43 = load double, ptr %42, align 8
  %44 = call double @llvm.fabs.f64(double %43)
  br label %45

45:                                               ; preds = %62, %40
  %46 = phi i32 [ %60, %62 ], [ 0, %40 ]
  %47 = phi double [ %61, %62 ], [ %44, %40 ]
  %48 = phi double [ %56, %62 ], [ undef, %40 ]
  %49 = phi i32 [ %63, %62 ], [ 1, %40 ]
  %50 = icmp slt i32 %49, %0
  br i1 %50, label %51, label %64

51:                                               ; preds = %45
  %52 = add nsw i32 %49, %2
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds double, ptr %1, i64 %53
  %55 = load double, ptr %54, align 8
  %56 = call double @llvm.fabs.f64(double %55)
  %57 = fcmp ogt double %56, %47
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  br label %59

59:                                               ; preds = %58, %51
  %60 = phi i32 [ %49, %58 ], [ %46, %51 ]
  %61 = phi double [ %56, %58 ], [ %47, %51 ]
  br label %62

62:                                               ; preds = %59
  %63 = add nsw i32 %49, 1
  br label %45, !llvm.loop !14

64:                                               ; preds = %45
  %.lcssa6 = phi i32 [ %46, %45 ]
  %.lcssa4 = phi double [ %47, %45 ]
  %.lcssa2 = phi double [ %48, %45 ]
  %.lcssa = phi i32 [ %49, %45 ]
  br label %65

65:                                               ; preds = %64, %39
  %.2 = phi i32 [ %.lcssa16, %39 ], [ %.lcssa6, %64 ]
  br label %66

66:                                               ; preds = %65, %9
  %.1 = phi i32 [ 0, %9 ], [ %.2, %65 ]
  br label %67

67:                                               ; preds = %66, %6
  %.0 = phi i32 [ -1, %6 ], [ %.1, %66 ]
  ret i32 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @dscal(i32 noundef %0, double noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = icmp sgt i32 %0, 0
  br i1 %6, label %7, label %37

7:                                                ; preds = %5
  %8 = icmp ne i32 %4, 1
  br i1 %8, label %9, label %23

9:                                                ; preds = %7
  %10 = mul nsw i32 %0, %4
  br label %11

11:                                               ; preds = %20, %9
  %12 = phi i32 [ %21, %20 ], [ 0, %9 ]
  %13 = icmp slt i32 %12, %10
  br i1 %13, label %14, label %22

14:                                               ; preds = %11
  %15 = add nsw i32 %12, %3
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds double, ptr %2, i64 %16
  %18 = load double, ptr %17, align 8
  %19 = fmul double %18, %1
  store double %19, ptr %17, align 8
  br label %20

20:                                               ; preds = %14
  %21 = add nsw i32 %12, %4
  br label %11, !llvm.loop !15

22:                                               ; preds = %11
  %.lcssa2 = phi i32 [ %12, %11 ]
  br label %36

23:                                               ; preds = %7
  br label %24

24:                                               ; preds = %33, %23
  %25 = phi i32 [ %34, %33 ], [ 0, %23 ]
  %26 = icmp slt i32 %25, %0
  br i1 %26, label %27, label %35

27:                                               ; preds = %24
  %28 = add nsw i32 %25, %3
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds double, ptr %2, i64 %29
  %31 = load double, ptr %30, align 8
  %32 = fmul double %31, %1
  store double %32, ptr %30, align 8
  br label %33

33:                                               ; preds = %27
  %34 = add nsw i32 %25, 1
  br label %24, !llvm.loop !16

35:                                               ; preds = %24
  %.lcssa = phi i32 [ %25, %24 ]
  br label %36

36:                                               ; preds = %35, %22
  br label %37

37:                                               ; preds = %36, %5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @daxpy(i32 noundef %0, double noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7) #0 {
  %9 = icmp sgt i32 %0, 0
  br i1 %9, label %10, label %65

10:                                               ; preds = %8
  %11 = fcmp une double %1, 0.000000e+00
  br i1 %11, label %12, label %65

12:                                               ; preds = %10
  %13 = icmp ne i32 %4, 1
  br i1 %13, label %16, label %14

14:                                               ; preds = %12
  %15 = icmp ne i32 %7, 1
  br i1 %15, label %16, label %47

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

27:                                               ; preds = %44, %26
  %28 = phi i32 [ %43, %44 ], [ %.0, %26 ]
  %29 = phi i32 [ %42, %44 ], [ %.033, %26 ]
  %30 = phi i32 [ %45, %44 ], [ 0, %26 ]
  %31 = icmp slt i32 %30, %0
  br i1 %31, label %32, label %46

32:                                               ; preds = %27
  %33 = add nsw i32 %29, %3
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds double, ptr %2, i64 %34
  %36 = load double, ptr %35, align 8
  %37 = add nsw i32 %28, %6
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds double, ptr %5, i64 %38
  %40 = load double, ptr %39, align 8
  %41 = call double @llvm.fmuladd.f64(double %1, double %36, double %40)
  store double %41, ptr %39, align 8
  %42 = add nsw i32 %29, %4
  %43 = add nsw i32 %28, %7
  br label %44

44:                                               ; preds = %32
  %45 = add nsw i32 %30, 1
  br label %27, !llvm.loop !17

46:                                               ; preds = %27
  %.lcssa6 = phi i32 [ %28, %27 ]
  %.lcssa4 = phi i32 [ %29, %27 ]
  %.lcssa2 = phi i32 [ %30, %27 ]
  br label %65

47:                                               ; preds = %14
  br label %48

48:                                               ; preds = %61, %47
  %49 = phi i32 [ %62, %61 ], [ 0, %47 ]
  %50 = icmp slt i32 %49, %0
  br i1 %50, label %51, label %63

51:                                               ; preds = %48
  %52 = add nsw i32 %49, %3
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds double, ptr %2, i64 %53
  %55 = load double, ptr %54, align 8
  %56 = add nsw i32 %49, %6
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds double, ptr %5, i64 %57
  %59 = load double, ptr %58, align 8
  %60 = call double @llvm.fmuladd.f64(double %1, double %55, double %59)
  store double %60, ptr %58, align 8
  br label %61

61:                                               ; preds = %51
  %62 = add nsw i32 %49, 1
  br label %48, !llvm.loop !18

63:                                               ; preds = %48
  %.lcssa = phi i32 [ %49, %48 ]
  br label %64

64:                                               ; preds = %63
  br label %65

65:                                               ; preds = %64, %46, %10, %8
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @dgefa(ptr noundef %0, ptr noundef %1) #0 {
  br label %3

3:                                                ; preds = %69, %2
  %.lcssa220 = phi ptr [ %.lcssa219, %69 ], [ undef, %2 ]
  %.lcssa18 = phi i32 [ %.lcssa17, %69 ], [ undef, %2 ]
  %.lcssa415 = phi double [ %.lcssa414, %69 ], [ undef, %2 ]
  %4 = phi i32 [ %16, %69 ], [ undef, %2 ]
  %5 = phi i32 [ %13, %69 ], [ undef, %2 ]
  %6 = phi ptr [ %12, %69 ], [ undef, %2 ]
  %7 = phi i32 [ %70, %69 ], [ 0, %2 ]
  %8 = icmp slt i32 %7, 1999
  br i1 %8, label %9, label %71

9:                                                ; preds = %3
  %10 = sext i32 %7 to i64
  %11 = getelementptr inbounds ptr, ptr %0, i64 %10
  %12 = load ptr, ptr %11, align 8
  %13 = add nsw i32 %7, 1
  %14 = sub nsw i32 2000, %7
  %15 = call i32 @idamax(i32 noundef %14, ptr noundef %12, i32 noundef %7, i32 noundef 1)
  %16 = add nsw i32 %15, %7
  %17 = sext i32 %7 to i64
  %18 = getelementptr inbounds i32, ptr %1, i64 %17
  store i32 %16, ptr %18, align 4
  %19 = sext i32 %16 to i64
  %20 = getelementptr inbounds double, ptr %12, i64 %19
  %21 = load double, ptr %20, align 8
  %22 = fcmp une double %21, 0.000000e+00
  br i1 %22, label %23, label %68

23:                                               ; preds = %9
  %24 = icmp ne i32 %16, %7
  br i1 %24, label %25, label %36

25:                                               ; preds = %23
  %26 = sext i32 %16 to i64
  %27 = getelementptr inbounds double, ptr %12, i64 %26
  %28 = load double, ptr %27, align 8
  %29 = sext i32 %7 to i64
  %30 = getelementptr inbounds double, ptr %12, i64 %29
  %31 = load double, ptr %30, align 8
  %32 = sext i32 %16 to i64
  %33 = getelementptr inbounds double, ptr %12, i64 %32
  store double %31, ptr %33, align 8
  %34 = sext i32 %7 to i64
  %35 = getelementptr inbounds double, ptr %12, i64 %34
  store double %28, ptr %35, align 8
  br label %36

36:                                               ; preds = %25, %23
  %37 = sext i32 %7 to i64
  %38 = getelementptr inbounds double, ptr %12, i64 %37
  %39 = load double, ptr %38, align 8
  %40 = fdiv double -1.000000e+00, %39
  %41 = sub nsw i32 2000, %13
  call void @dscal(i32 noundef %41, double noundef %40, ptr noundef %12, i32 noundef %13, i32 noundef 1)
  %42 = sext i32 %16 to i64
  %43 = icmp ne i32 %16, %7
  %44 = sext i32 %7 to i64
  %45 = sext i32 %16 to i64
  %46 = sext i32 %7 to i64
  %47 = sub nsw i32 2000, %13
  br label %48

48:                                               ; preds = %65, %36
  %49 = phi double [ %58, %65 ], [ %40, %36 ]
  %50 = phi ptr [ %56, %65 ], [ %.lcssa220, %36 ]
  %51 = phi i32 [ %66, %65 ], [ %13, %36 ]
  %52 = icmp slt i32 %51, 2000
  br i1 %52, label %53, label %67

53:                                               ; preds = %48
  %54 = sext i32 %51 to i64
  %55 = getelementptr inbounds ptr, ptr %0, i64 %54
  %56 = load ptr, ptr %55, align 8
  %57 = getelementptr inbounds double, ptr %56, i64 %42
  %58 = load double, ptr %57, align 8
  br i1 %43, label %59, label %64

59:                                               ; preds = %53
  %60 = getelementptr inbounds double, ptr %56, i64 %44
  %61 = load double, ptr %60, align 8
  %62 = getelementptr inbounds double, ptr %56, i64 %45
  store double %61, ptr %62, align 8
  %63 = getelementptr inbounds double, ptr %56, i64 %46
  store double %58, ptr %63, align 8
  br label %64

64:                                               ; preds = %59, %53
  call void @daxpy(i32 noundef %47, double noundef %58, ptr noundef %12, i32 noundef %13, i32 noundef 1, ptr noundef %56, i32 noundef %13, i32 noundef 1)
  br label %65

65:                                               ; preds = %64
  %66 = add nsw i32 %51, 1
  br label %48, !llvm.loop !19

67:                                               ; preds = %48
  %.lcssa4 = phi double [ %49, %48 ]
  %.lcssa2 = phi ptr [ %50, %48 ]
  %.lcssa = phi i32 [ %51, %48 ]
  br label %68

68:                                               ; preds = %67, %9
  %.lcssa219 = phi ptr [ %.lcssa2, %67 ], [ %.lcssa220, %9 ]
  %.lcssa17 = phi i32 [ %.lcssa, %67 ], [ %.lcssa18, %9 ]
  %.lcssa414 = phi double [ %.lcssa4, %67 ], [ %.lcssa415, %9 ]
  br label %69

69:                                               ; preds = %68
  %70 = add nsw i32 %7, 1
  br label %3, !llvm.loop !20

71:                                               ; preds = %3
  %.lcssa220.lcssa = phi ptr [ %.lcssa220, %3 ]
  %.lcssa18.lcssa = phi i32 [ %.lcssa18, %3 ]
  %.lcssa415.lcssa = phi double [ %.lcssa415, %3 ]
  %.lcssa12 = phi i32 [ %4, %3 ]
  %.lcssa10 = phi i32 [ %5, %3 ]
  %.lcssa8 = phi ptr [ %6, %3 ]
  %.lcssa6 = phi i32 [ %7, %3 ]
  %72 = getelementptr inbounds i32, ptr %1, i64 1999
  store i32 1999, ptr %72, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @dgesl(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  br label %4

4:                                                ; preds = %32, %3
  %5 = phi i32 [ %27, %32 ], [ undef, %3 ]
  %6 = phi double [ %16, %32 ], [ undef, %3 ]
  %7 = phi i32 [ %13, %32 ], [ undef, %3 ]
  %8 = phi i32 [ %33, %32 ], [ 0, %3 ]
  %9 = icmp slt i32 %8, 1999
  br i1 %9, label %10, label %34

10:                                               ; preds = %4
  %11 = sext i32 %8 to i64
  %12 = getelementptr inbounds i32, ptr %1, i64 %11
  %13 = load i32, ptr %12, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds double, ptr %2, i64 %14
  %16 = load double, ptr %15, align 8
  %17 = icmp ne i32 %13, %8
  br i1 %17, label %18, label %26

18:                                               ; preds = %10
  %19 = sext i32 %8 to i64
  %20 = getelementptr inbounds double, ptr %2, i64 %19
  %21 = load double, ptr %20, align 8
  %22 = sext i32 %13 to i64
  %23 = getelementptr inbounds double, ptr %2, i64 %22
  store double %21, ptr %23, align 8
  %24 = sext i32 %8 to i64
  %25 = getelementptr inbounds double, ptr %2, i64 %24
  store double %16, ptr %25, align 8
  br label %26

26:                                               ; preds = %18, %10
  %27 = add nsw i32 %8, 1
  %28 = sub nsw i32 2000, %27
  %29 = sext i32 %8 to i64
  %30 = getelementptr inbounds ptr, ptr %0, i64 %29
  %31 = load ptr, ptr %30, align 8
  call void @daxpy(i32 noundef %28, double noundef %16, ptr noundef %31, i32 noundef %27, i32 noundef 1, ptr noundef %2, i32 noundef %27, i32 noundef 1)
  br label %32

32:                                               ; preds = %26
  %33 = add nsw i32 %8, 1
  br label %4, !llvm.loop !21

34:                                               ; preds = %4
  %.lcssa6 = phi i32 [ %5, %4 ]
  %.lcssa4 = phi double [ %6, %4 ]
  %.lcssa2 = phi i32 [ %7, %4 ]
  %.lcssa = phi i32 [ %8, %4 ]
  br label %35

35:                                               ; preds = %60, %34
  %36 = phi double [ %56, %60 ], [ %.lcssa4, %34 ]
  %37 = phi i32 [ %42, %60 ], [ %.lcssa, %34 ]
  %38 = phi i32 [ %61, %60 ], [ 0, %34 ]
  %39 = icmp slt i32 %38, 2000
  br i1 %39, label %40, label %62

40:                                               ; preds = %35
  %41 = add nsw i32 %38, 1
  %42 = sub nsw i32 2000, %41
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds ptr, ptr %0, i64 %43
  %45 = load ptr, ptr %44, align 8
  %46 = sext i32 %42 to i64
  %47 = getelementptr inbounds double, ptr %45, i64 %46
  %48 = load double, ptr %47, align 8
  %49 = sext i32 %42 to i64
  %50 = getelementptr inbounds double, ptr %2, i64 %49
  %51 = load double, ptr %50, align 8
  %52 = fdiv double %51, %48
  store double %52, ptr %50, align 8
  %53 = sext i32 %42 to i64
  %54 = getelementptr inbounds double, ptr %2, i64 %53
  %55 = load double, ptr %54, align 8
  %56 = fneg double %55
  %57 = sext i32 %42 to i64
  %58 = getelementptr inbounds ptr, ptr %0, i64 %57
  %59 = load ptr, ptr %58, align 8
  call void @daxpy(i32 noundef %42, double noundef %56, ptr noundef %59, i32 noundef 0, i32 noundef 1, ptr noundef %2, i32 noundef 0, i32 noundef 1)
  br label %60

60:                                               ; preds = %40
  %61 = add nsw i32 %38, 1
  br label %35, !llvm.loop !22

62:                                               ; preds = %35
  %.lcssa12 = phi double [ %36, %35 ]
  %.lcssa10 = phi i32 [ %37, %35 ]
  %.lcssa8 = phi i32 [ %38, %35 ]
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = icmp sgt i32 %0, 1
  br i1 %3, label %4, label %18

4:                                                ; preds = %2
  %5 = getelementptr inbounds ptr, ptr %1, i64 1
  br label %6

6:                                                ; preds = %15, %4
  %7 = phi i32 [ %16, %15 ], [ 1, %4 ]
  %8 = icmp slt i32 %7, %0
  br i1 %8, label %9, label %.loopexit

9:                                                ; preds = %6
  %10 = load ptr, ptr %5, align 8
  %11 = call i32 @strcmp(ptr noundef %10, ptr noundef @.str) #5
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  %.lcssa1 = phi i32 [ %7, %9 ]
  br label %17

14:                                               ; preds = %9
  br label %15

15:                                               ; preds = %14
  %16 = add nsw i32 %7, 1
  br label %6, !llvm.loop !23

.loopexit:                                        ; preds = %6
  %.lcssa = phi i32 [ %7, %6 ]
  br label %17

17:                                               ; preds = %.loopexit, %13
  %.1 = phi i8 [ 1, %13 ], [ 0, %.loopexit ]
  br label %18

18:                                               ; preds = %17, %2
  %.0 = phi i8 [ %.1, %17 ], [ 0, %2 ]
  %19 = call ptr @malloc(i64 noundef 16000) #6
  br label %20

20:                                               ; preds = %27, %18
  %21 = phi i32 [ %28, %27 ], [ 0, %18 ]
  %22 = icmp slt i32 %21, 2000
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = call ptr @malloc(i64 noundef 16008) #6
  %25 = sext i32 %21 to i64
  %26 = getelementptr inbounds ptr, ptr %19, i64 %25
  store ptr %24, ptr %26, align 8
  br label %27

27:                                               ; preds = %23
  %28 = add nsw i32 %21, 1
  br label %20, !llvm.loop !24

29:                                               ; preds = %20
  %.lcssa3 = phi i32 [ %21, %20 ]
  %30 = call ptr @malloc(i64 noundef 16000) #6
  %31 = call ptr @malloc(i64 noundef 16000) #6
  %32 = call ptr @malloc(i64 noundef 8000) #6
  call void @matgen(ptr noundef %19, ptr noundef %30)
  call void @dgefa(ptr noundef %19, ptr noundef %32)
  call void @dgesl(ptr noundef %19, ptr noundef %32, ptr noundef %30)
  call void @free(ptr noundef %32)
  call void @free(ptr noundef %31)
  call void @free(ptr noundef %30)
  br label %33

33:                                               ; preds = %40, %29
  %34 = phi i32 [ %41, %40 ], [ 0, %29 ]
  %35 = icmp slt i32 %34, 2000
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = sext i32 %34 to i64
  %38 = getelementptr inbounds ptr, ptr %19, i64 %37
  %39 = load ptr, ptr %38, align 8
  call void @free(ptr noundef %39)
  br label %40

40:                                               ; preds = %36
  %41 = add nsw i32 %34, 1
  br label %33, !llvm.loop !25

42:                                               ; preds = %33
  %.lcssa5 = phi i32 [ %34, %33 ]
  call void @free(ptr noundef %19)
  %43 = icmp ne i8 %.0, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %42
  %45 = call ptr @__acrt_iob_func(i32 noundef 1)
  %46 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %45, ptr noundef @.str.1, double noundef 0.000000e+00) #5
  br label %50

47:                                               ; preds = %42
  %48 = call ptr @__acrt_iob_func(i32 noundef 1)
  %49 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %48, ptr noundef @.str.2, double noundef 0.000000e+00) #5
  br label %50

50:                                               ; preds = %47, %44
  %51 = call ptr @__acrt_iob_func(i32 noundef 1)
  %52 = call i32 @fflush(ptr noundef %51)
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
