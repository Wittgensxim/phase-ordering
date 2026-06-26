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
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  store i32 0, ptr %5, align 4
  br label %7

7:                                                ; preds = %24, %2
  %8 = phi ptr [ %14, %24 ], [ %0, %2 ]
  %9 = phi i32 [ %25, %24 ], [ 0, %2 ]
  %10 = icmp slt i32 %9, 2000
  br i1 %10, label %11, label %26

11:                                               ; preds = %7
  store i32 0, ptr %6, align 4
  br label %12

12:                                               ; preds = %16, %11
  %13 = phi i32 [ %23, %16 ], [ 0, %11 ]
  %14 = phi ptr [ %0, %16 ], [ %8, %11 ]
  %15 = icmp slt i32 %13, 2000
  br i1 %15, label %16, label %24

16:                                               ; preds = %12
  %17 = call double @random_double()
  %18 = sext i32 %13 to i64
  %19 = getelementptr inbounds ptr, ptr %0, i64 %18
  %20 = load ptr, ptr %19, align 8
  %21 = sext i32 %9 to i64
  %22 = getelementptr inbounds double, ptr %20, i64 %21
  store double %17, ptr %22, align 8
  %23 = add nsw i32 %13, 1
  store i32 %23, ptr %6, align 4
  br label %12, !llvm.loop !7

24:                                               ; preds = %12
  %25 = add nsw i32 %9, 1
  store i32 %25, ptr %5, align 4
  br label %7, !llvm.loop !9

26:                                               ; preds = %7
  store i32 0, ptr %5, align 4
  br label %27

27:                                               ; preds = %30, %26
  %28 = phi i32 [ %33, %30 ], [ 0, %26 ]
  %29 = icmp slt i32 %28, 2000
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = sext i32 %28 to i64
  %32 = getelementptr inbounds double, ptr %1, i64 %31
  store double 0.000000e+00, ptr %32, align 8
  %33 = add nsw i32 %28, 1
  store i32 %33, ptr %5, align 4
  br label %27, !llvm.loop !10

34:                                               ; preds = %27
  store i32 0, ptr %6, align 4
  br label %35

35:                                               ; preds = %53, %34
  %36 = phi i32 [ %54, %53 ], [ 0, %34 ]
  %37 = icmp slt i32 %36, 2000
  br i1 %37, label %38, label %55

38:                                               ; preds = %35
  store i32 0, ptr %5, align 4
  br label %39

39:                                               ; preds = %42, %38
  %40 = phi i32 [ %52, %42 ], [ 0, %38 ]
  %41 = icmp slt i32 %40, 2000
  br i1 %41, label %42, label %53

42:                                               ; preds = %39
  %43 = sext i32 %36 to i64
  %44 = getelementptr inbounds ptr, ptr %8, i64 %43
  %45 = load ptr, ptr %44, align 8
  %46 = sext i32 %40 to i64
  %47 = getelementptr inbounds double, ptr %45, i64 %46
  %48 = load double, ptr %47, align 8
  %49 = getelementptr inbounds double, ptr %1, i64 %46
  %50 = load double, ptr %49, align 8
  %51 = fadd double %50, %48
  store double %51, ptr %49, align 8
  %52 = add nsw i32 %40, 1
  store i32 %52, ptr %5, align 4
  br label %39, !llvm.loop !11

53:                                               ; preds = %39
  %54 = add nsw i32 %36, 1
  store i32 %54, ptr %6, align 4
  br label %35, !llvm.loop !12

55:                                               ; preds = %35
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @idamax(i32 noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, ptr %5, align 4
  store ptr %1, ptr %6, align 8
  store i32 %2, ptr %7, align 4
  store i32 %3, ptr %8, align 4
  store i32 0, ptr %13, align 4
  %14 = icmp slt i32 %0, 1
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store i32 -1, ptr %13, align 4
  br label %74

16:                                               ; preds = %4
  %17 = icmp eq i32 %0, 1
  br i1 %17, label %18, label %19

18:                                               ; preds = %16
  store i32 0, ptr %13, align 4
  br label %72

19:                                               ; preds = %16
  %20 = icmp ne i32 %3, 1
  br i1 %20, label %21, label %47

21:                                               ; preds = %19
  %22 = sext i32 %2 to i64
  %23 = getelementptr inbounds double, ptr %1, i64 %22
  %24 = load double, ptr %23, align 8
  %25 = call double @llvm.fabs.f64(double %24)
  store double %25, ptr %9, align 8
  %26 = add nsw i32 1, %3
  store i32 %26, ptr %12, align 4
  store i32 1, ptr %11, align 4
  br label %27

27:                                               ; preds = %41, %21
  %28 = phi i32 [ %42, %41 ], [ 0, %21 ]
  %29 = phi double [ %43, %41 ], [ %25, %21 ]
  %30 = phi i32 [ %44, %41 ], [ %26, %21 ]
  %31 = phi i32 [ %45, %41 ], [ 1, %21 ]
  %32 = icmp slt i32 %31, %0
  br i1 %32, label %33, label %46

33:                                               ; preds = %27
  %34 = add nsw i32 %30, %2
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds double, ptr %1, i64 %35
  %37 = load double, ptr %36, align 8
  %38 = call double @llvm.fabs.f64(double %37)
  store double %38, ptr %10, align 8
  %39 = fcmp ogt double %38, %29
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  store i32 %31, ptr %13, align 4
  store double %38, ptr %9, align 8
  br label %41

41:                                               ; preds = %40, %33
  %42 = phi i32 [ %31, %40 ], [ %28, %33 ]
  %43 = phi double [ %38, %40 ], [ %29, %33 ]
  %44 = add nsw i32 %30, %3
  store i32 %44, ptr %12, align 4
  %45 = add nsw i32 %31, 1
  store i32 %45, ptr %11, align 4
  br label %27, !llvm.loop !13

46:                                               ; preds = %27
  br label %70

47:                                               ; preds = %19
  store i32 0, ptr %13, align 4
  %48 = sext i32 %2 to i64
  %49 = getelementptr inbounds double, ptr %1, i64 %48
  %50 = load double, ptr %49, align 8
  %51 = call double @llvm.fabs.f64(double %50)
  store double %51, ptr %9, align 8
  store i32 1, ptr %11, align 4
  br label %52

52:                                               ; preds = %65, %47
  %53 = phi i32 [ %66, %65 ], [ 0, %47 ]
  %54 = phi double [ %67, %65 ], [ %51, %47 ]
  %55 = phi i32 [ %68, %65 ], [ 1, %47 ]
  %56 = icmp slt i32 %55, %0
  br i1 %56, label %57, label %69

57:                                               ; preds = %52
  %58 = add nsw i32 %55, %2
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds double, ptr %1, i64 %59
  %61 = load double, ptr %60, align 8
  %62 = call double @llvm.fabs.f64(double %61)
  store double %62, ptr %10, align 8
  %63 = fcmp ogt double %62, %54
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  store i32 %55, ptr %13, align 4
  store double %62, ptr %9, align 8
  br label %65

65:                                               ; preds = %64, %57
  %66 = phi i32 [ %55, %64 ], [ %53, %57 ]
  %67 = phi double [ %62, %64 ], [ %54, %57 ]
  %68 = add nsw i32 %55, 1
  store i32 %68, ptr %11, align 4
  br label %52, !llvm.loop !14

69:                                               ; preds = %52
  br label %70

70:                                               ; preds = %69, %46
  %71 = phi i32 [ %53, %69 ], [ %28, %46 ]
  br label %72

72:                                               ; preds = %70, %18
  %73 = phi i32 [ %71, %70 ], [ 0, %18 ]
  br label %74

74:                                               ; preds = %72, %15
  %75 = phi i32 [ %73, %72 ], [ -1, %15 ]
  ret i32 %75
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @dscal(i32 noundef %0, double noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, ptr %6, align 4
  store double %1, ptr %7, align 8
  store ptr %2, ptr %8, align 8
  store i32 %3, ptr %9, align 4
  store i32 %4, ptr %10, align 4
  %13 = icmp sgt i32 %0, 0
  br i1 %13, label %14, label %42

14:                                               ; preds = %5
  %15 = icmp ne i32 %4, 1
  br i1 %15, label %16, label %29

16:                                               ; preds = %14
  %17 = mul nsw i32 %0, %4
  store i32 %17, ptr %12, align 4
  store i32 0, ptr %11, align 4
  br label %18

18:                                               ; preds = %21, %16
  %19 = phi i32 [ %27, %21 ], [ 0, %16 ]
  %20 = icmp slt i32 %19, %17
  br i1 %20, label %21, label %28

21:                                               ; preds = %18
  %22 = add nsw i32 %19, %3
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds double, ptr %2, i64 %23
  %25 = load double, ptr %24, align 8
  %26 = fmul double %25, %1
  store double %26, ptr %24, align 8
  %27 = add nsw i32 %19, %4
  store i32 %27, ptr %11, align 4
  br label %18, !llvm.loop !15

28:                                               ; preds = %18
  br label %41

29:                                               ; preds = %14
  store i32 0, ptr %11, align 4
  br label %30

30:                                               ; preds = %33, %29
  %31 = phi i32 [ %39, %33 ], [ 0, %29 ]
  %32 = icmp slt i32 %31, %0
  br i1 %32, label %33, label %40

33:                                               ; preds = %30
  %34 = add nsw i32 %31, %3
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds double, ptr %2, i64 %35
  %37 = load double, ptr %36, align 8
  %38 = fmul double %37, %1
  store double %38, ptr %36, align 8
  %39 = add nsw i32 %31, 1
  store i32 %39, ptr %11, align 4
  br label %30, !llvm.loop !16

40:                                               ; preds = %30
  br label %41

41:                                               ; preds = %40, %28
  br label %42

42:                                               ; preds = %41, %5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @daxpy(i32 noundef %0, double noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca ptr, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 %0, ptr %9, align 4
  store double %1, ptr %10, align 8
  store ptr %2, ptr %11, align 8
  store i32 %3, ptr %12, align 4
  store i32 %4, ptr %13, align 4
  store ptr %5, ptr %14, align 8
  store i32 %6, ptr %15, align 4
  store i32 %7, ptr %16, align 4
  %20 = icmp sgt i32 %0, 0
  br i1 %20, label %21, label %75

21:                                               ; preds = %8
  %22 = fcmp une double %1, 0.000000e+00
  br i1 %22, label %23, label %75

23:                                               ; preds = %21
  %24 = icmp ne i32 %4, 1
  br i1 %24, label %27, label %25

25:                                               ; preds = %23
  %26 = icmp ne i32 %7, 1
  br i1 %26, label %27, label %59

27:                                               ; preds = %25, %23
  store i32 0, ptr %18, align 4
  store i32 0, ptr %19, align 4
  %28 = icmp slt i32 %4, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %27
  %30 = sub nsw i32 1, %0
  %31 = mul nsw i32 %30, %4
  store i32 %31, ptr %18, align 4
  br label %32

32:                                               ; preds = %29, %27
  %33 = phi i32 [ %31, %29 ], [ 0, %27 ]
  %34 = icmp slt i32 %7, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = sub nsw i32 1, %0
  %37 = mul nsw i32 %36, %7
  store i32 %37, ptr %19, align 4
  br label %38

38:                                               ; preds = %35, %32
  %39 = phi i32 [ %37, %35 ], [ 0, %32 ]
  store i32 0, ptr %17, align 4
  br label %40

40:                                               ; preds = %45, %38
  %41 = phi i32 [ %56, %45 ], [ %39, %38 ]
  %42 = phi i32 [ %55, %45 ], [ %33, %38 ]
  %43 = phi i32 [ %57, %45 ], [ 0, %38 ]
  %44 = icmp slt i32 %43, %0
  br i1 %44, label %45, label %58

45:                                               ; preds = %40
  %46 = add nsw i32 %42, %3
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds double, ptr %2, i64 %47
  %49 = load double, ptr %48, align 8
  %50 = add nsw i32 %41, %6
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds double, ptr %5, i64 %51
  %53 = load double, ptr %52, align 8
  %54 = call double @llvm.fmuladd.f64(double %1, double %49, double %53)
  store double %54, ptr %52, align 8
  %55 = add nsw i32 %42, %4
  store i32 %55, ptr %18, align 4
  %56 = add nsw i32 %41, %7
  store i32 %56, ptr %19, align 4
  %57 = add nsw i32 %43, 1
  store i32 %57, ptr %17, align 4
  br label %40, !llvm.loop !17

58:                                               ; preds = %40
  br label %75

59:                                               ; preds = %25
  store i32 0, ptr %17, align 4
  br label %60

60:                                               ; preds = %63, %59
  %61 = phi i32 [ %73, %63 ], [ 0, %59 ]
  %62 = icmp slt i32 %61, %0
  br i1 %62, label %63, label %74

63:                                               ; preds = %60
  %64 = add nsw i32 %61, %3
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds double, ptr %2, i64 %65
  %67 = load double, ptr %66, align 8
  %68 = add nsw i32 %61, %6
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds double, ptr %5, i64 %69
  %71 = load double, ptr %70, align 8
  %72 = call double @llvm.fmuladd.f64(double %1, double %67, double %71)
  store double %72, ptr %70, align 8
  %73 = add nsw i32 %61, 1
  store i32 %73, ptr %17, align 4
  br label %60, !llvm.loop !18

74:                                               ; preds = %60
  br label %75

75:                                               ; preds = %74, %58, %21, %8
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @dgefa(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  store i32 0, ptr %6, align 4
  br label %12

12:                                               ; preds = %60, %2
  %13 = phi ptr [ %62, %60 ], [ %0, %2 ]
  %14 = phi i32 [ %.pre-phi, %60 ], [ 0, %2 ]
  %15 = icmp slt i32 %14, 1999
  br i1 %15, label %16, label %63

16:                                               ; preds = %12
  %17 = sext i32 %14 to i64
  %18 = getelementptr inbounds ptr, ptr %13, i64 %17
  %19 = load ptr, ptr %18, align 8
  store ptr %19, ptr %8, align 8
  %20 = add nsw i32 %14, 1
  store i32 %20, ptr %9, align 4
  %21 = sub nsw i32 2000, %14
  %22 = call i32 @idamax(i32 noundef %21, ptr noundef %19, i32 noundef %14, i32 noundef 1)
  %23 = add nsw i32 %22, %14
  store i32 %23, ptr %10, align 4
  %24 = getelementptr inbounds i32, ptr %1, i64 %17
  store i32 %23, ptr %24, align 4
  %25 = sext i32 %23 to i64
  %26 = getelementptr inbounds double, ptr %19, i64 %25
  %27 = load double, ptr %26, align 8
  %28 = fcmp une double %27, 0.000000e+00
  br i1 %28, label %29, label %60

29:                                               ; preds = %16
  %30 = icmp ne i32 %23, %14
  br i1 %30, label %31, label %._crit_edge

._crit_edge:                                      ; preds = %29
  %.phi.trans.insert = getelementptr inbounds double, ptr %19, i64 %17
  %.pre = load double, ptr %.phi.trans.insert, align 8
  br label %34

31:                                               ; preds = %29
  store double %27, ptr %5, align 8
  %32 = getelementptr inbounds double, ptr %19, i64 %17
  %33 = load double, ptr %32, align 8
  store double %33, ptr %26, align 8
  store double %27, ptr %32, align 8
  br label %34

34:                                               ; preds = %._crit_edge, %31
  %35 = phi double [ %.pre, %._crit_edge ], [ %27, %31 ]
  %36 = getelementptr inbounds double, ptr %19, i64 %17
  %37 = fdiv double -1.000000e+00, %35
  store double %37, ptr %5, align 8
  %38 = sub nsw i32 2000, %20
  call void @dscal(i32 noundef %38, double noundef %37, ptr noundef %19, i32 noundef %20, i32 noundef 1)
  store i32 %20, ptr %7, align 4
  br label %39

39:                                               ; preds = %56, %34
  %40 = phi i32 [ %57, %56 ], [ %14, %34 ]
  %41 = phi i32 [ %58, %56 ], [ %20, %34 ]
  %42 = phi ptr [ %0, %56 ], [ %13, %34 ]
  %43 = icmp slt i32 %41, 2000
  br i1 %43, label %44, label %59

44:                                               ; preds = %39
  %45 = sext i32 %41 to i64
  %46 = getelementptr inbounds ptr, ptr %0, i64 %45
  %47 = load ptr, ptr %46, align 8
  store ptr %47, ptr %11, align 8
  %48 = getelementptr inbounds double, ptr %47, i64 %25
  %49 = load double, ptr %48, align 8
  store double %49, ptr %5, align 8
  %50 = icmp ne i32 %23, %40
  br i1 %50, label %51, label %56

51:                                               ; preds = %44
  %52 = sext i32 %40 to i64
  %53 = getelementptr inbounds double, ptr %47, i64 %52
  %54 = load double, ptr %53, align 8
  store double %54, ptr %48, align 8
  %55 = getelementptr inbounds double, ptr %47, i64 %17
  store double %49, ptr %55, align 8
  br label %56

56:                                               ; preds = %51, %44
  %57 = phi i32 [ %14, %51 ], [ %23, %44 ]
  call void @daxpy(i32 noundef %38, double noundef %49, ptr noundef %19, i32 noundef %20, i32 noundef 1, ptr noundef %47, i32 noundef %20, i32 noundef 1)
  %58 = add nsw i32 %41, 1
  store i32 %58, ptr %7, align 4
  br label %39, !llvm.loop !19

59:                                               ; preds = %39
  %.pre1 = add nsw i32 %40, 1
  br label %60

60:                                               ; preds = %59, %16
  %.pre-phi = phi i32 [ %.pre1, %59 ], [ %20, %16 ]
  %61 = phi i32 [ %40, %59 ], [ %14, %16 ]
  %62 = phi ptr [ %42, %59 ], [ %13, %16 ]
  store i32 %.pre-phi, ptr %6, align 4
  br label %12, !llvm.loop !20

63:                                               ; preds = %12
  %64 = getelementptr inbounds i32, ptr %1, i64 1999
  store i32 1999, ptr %64, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @dgesl(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  store i32 0, ptr %8, align 4
  br label %12

12:                                               ; preds = %26, %3
  %13 = phi i32 [ %27, %26 ], [ 0, %3 ]
  %14 = icmp slt i32 %13, 1999
  br i1 %14, label %15, label %31

15:                                               ; preds = %12
  %16 = sext i32 %13 to i64
  %17 = getelementptr inbounds i32, ptr %1, i64 %16
  %18 = load i32, ptr %17, align 4
  store i32 %18, ptr %10, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds double, ptr %2, i64 %19
  %21 = load double, ptr %20, align 8
  store double %21, ptr %7, align 8
  %22 = icmp ne i32 %18, %13
  br i1 %22, label %23, label %26

23:                                               ; preds = %15
  %24 = getelementptr inbounds double, ptr %2, i64 %16
  %25 = load double, ptr %24, align 8
  store double %25, ptr %20, align 8
  store double %21, ptr %24, align 8
  br label %26

26:                                               ; preds = %23, %15
  %27 = add nsw i32 %13, 1
  store i32 %27, ptr %11, align 4
  %28 = sub nsw i32 2000, %27
  %29 = getelementptr inbounds ptr, ptr %0, i64 %16
  %30 = load ptr, ptr %29, align 8
  call void @daxpy(i32 noundef %28, double noundef %21, ptr noundef %30, i32 noundef %27, i32 noundef 1, ptr noundef %2, i32 noundef %27, i32 noundef 1)
  store i32 %27, ptr %8, align 4
  br label %12, !llvm.loop !21

31:                                               ; preds = %12
  store i32 0, ptr %9, align 4
  br label %32

32:                                               ; preds = %37, %31
  %33 = phi ptr [ %48, %37 ], [ %2, %31 ]
  %34 = phi ptr [ %52, %37 ], [ %0, %31 ]
  %35 = phi i32 [ %38, %37 ], [ 0, %31 ]
  %36 = icmp slt i32 %35, 2000
  br i1 %36, label %37, label %55

37:                                               ; preds = %32
  %38 = add nsw i32 %35, 1
  %39 = sub nsw i32 2000, %38
  store i32 %39, ptr %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds ptr, ptr %34, i64 %40
  %42 = load ptr, ptr %41, align 8
  %43 = getelementptr inbounds double, ptr %42, i64 %40
  %44 = load double, ptr %43, align 8
  %45 = getelementptr inbounds double, ptr %33, i64 %40
  %46 = load double, ptr %45, align 8
  %47 = fdiv double %46, %44
  store double %47, ptr %45, align 8
  %48 = load ptr, ptr %6, align 8
  %49 = getelementptr inbounds double, ptr %48, i64 %40
  %50 = load double, ptr %49, align 8
  %51 = fneg double %50
  store double %51, ptr %7, align 8
  %52 = load ptr, ptr %4, align 8
  %53 = getelementptr inbounds ptr, ptr %52, i64 %40
  %54 = load ptr, ptr %53, align 8
  call void @daxpy(i32 noundef %39, double noundef %51, ptr noundef %54, i32 noundef 0, i32 noundef 1, ptr noundef %48, i32 noundef 0, i32 noundef 1)
  store i32 %38, ptr %9, align 4
  br label %32, !llvm.loop !22

55:                                               ; preds = %32
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  store i32 0, ptr %3, align 4
  store i32 %0, ptr %4, align 4
  store ptr %1, ptr %5, align 8
  store i8 0, ptr %7, align 1
  %14 = icmp sgt i32 %0, 1
  br i1 %14, label %15, label %28

15:                                               ; preds = %2
  store i32 1, ptr %6, align 4
  br label %16

16:                                               ; preds = %25, %15
  %17 = phi i32 [ %26, %25 ], [ 1, %15 ]
  %18 = icmp slt i32 %17, %0
  br i1 %18, label %19, label %27

19:                                               ; preds = %16
  %20 = getelementptr inbounds ptr, ptr %1, i64 1
  %21 = load ptr, ptr %20, align 8
  %22 = call i32 @strcmp(ptr noundef %21, ptr noundef @.str) #5
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  store i8 1, ptr %7, align 1
  br label %27

25:                                               ; preds = %19
  %26 = add nsw i32 %17, 1
  store i32 %26, ptr %6, align 4
  br label %16, !llvm.loop !23

27:                                               ; preds = %24, %16
  br label %28

28:                                               ; preds = %27, %2
  %29 = call ptr @malloc(i64 noundef 16000) #6
  store ptr %29, ptr %8, align 8
  store i32 0, ptr %6, align 4
  br label %30

30:                                               ; preds = %33, %28
  %31 = phi i32 [ %37, %33 ], [ 0, %28 ]
  %32 = icmp slt i32 %31, 2000
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = call ptr @malloc(i64 noundef 16008) #6
  %35 = sext i32 %31 to i64
  %36 = getelementptr inbounds ptr, ptr %29, i64 %35
  store ptr %34, ptr %36, align 8
  %37 = add nsw i32 %31, 1
  store i32 %37, ptr %6, align 4
  br label %30, !llvm.loop !24

38:                                               ; preds = %30
  %39 = call ptr @malloc(i64 noundef 16000) #6
  store ptr %39, ptr %9, align 8
  %40 = call ptr @malloc(i64 noundef 16000) #6
  store ptr %40, ptr %10, align 8
  %41 = call ptr @malloc(i64 noundef 8000) #6
  store ptr %41, ptr %11, align 8
  store double f0x41F3E5E475555555, ptr %12, align 8
  call void @matgen(ptr noundef %29, ptr noundef %39)
  call void @dgefa(ptr noundef %29, ptr noundef %41)
  call void @dgesl(ptr noundef %29, ptr noundef %41, ptr noundef %39)
  store double 0.000000e+00, ptr %13, align 8
  call void @free(ptr noundef %41)
  call void @free(ptr noundef %40)
  call void @free(ptr noundef %39)
  store i32 0, ptr %6, align 4
  br label %42

42:                                               ; preds = %45, %38
  %43 = phi i32 [ %49, %45 ], [ 0, %38 ]
  %44 = icmp slt i32 %43, 2000
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = sext i32 %43 to i64
  %47 = getelementptr inbounds ptr, ptr %29, i64 %46
  %48 = load ptr, ptr %47, align 8
  call void @free(ptr noundef %48)
  %49 = add nsw i32 %43, 1
  store i32 %49, ptr %6, align 4
  br label %42, !llvm.loop !25

50:                                               ; preds = %42
  call void @free(ptr noundef %29)
  %51 = load i8, ptr %7, align 1
  %52 = icmp ne i8 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = call ptr @__acrt_iob_func(i32 noundef 1)
  %55 = load double, ptr %13, align 8
  %56 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %54, ptr noundef @.str.1, double noundef %55) #5
  br label %61

57:                                               ; preds = %50
  %58 = call ptr @__acrt_iob_func(i32 noundef 1)
  %59 = load double, ptr %13, align 8
  %60 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %58, ptr noundef @.str.2, double noundef %59) #5
  br label %61

61:                                               ; preds = %57, %53
  %62 = call ptr @__acrt_iob_func(i32 noundef 1)
  %63 = call i32 @fflush(ptr noundef %62)
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
  %1 = alloca i32, align 4
  %2 = alloca double, align 8
  %3 = load i32, ptr @seed, align 4
  %4 = xor i32 %3, 123459876
  store i32 %4, ptr @seed, align 4
  %5 = sdiv i32 %4, 127773
  store i32 %5, ptr %1, align 4
  %6 = mul nsw i32 %5, 127773
  %7 = sub nsw i32 %4, %6
  %8 = mul nsw i32 16807, %7
  %9 = mul nsw i32 2836, %5
  %10 = sub nsw i32 %8, %9
  store i32 %10, ptr @seed, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %0
  %13 = add nsw i32 %10, 2147483647
  store i32 %13, ptr @seed, align 4
  br label %14

14:                                               ; preds = %12, %0
  %15 = phi i32 [ %13, %12 ], [ %10, %0 ]
  %16 = sitofp i32 %15 to double
  %17 = fmul double f0x3E00000000200FE1, %16
  store double %17, ptr %2, align 8
  %18 = xor i32 %15, 123459876
  store i32 %18, ptr @seed, align 4
  ret double %17
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
