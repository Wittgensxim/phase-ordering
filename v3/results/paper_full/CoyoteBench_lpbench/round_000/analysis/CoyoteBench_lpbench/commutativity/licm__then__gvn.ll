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

7:                                                ; preds = %22, %2
  %.lcssa4 = phi i32 [ %13, %22 ], [ undef, %2 ]
  %8 = phi i32 [ %23, %22 ], [ 0, %2 ]
  %9 = icmp slt i32 %8, 2000
  br i1 %9, label %10, label %24

10:                                               ; preds = %7
  %11 = sext i32 %8 to i64
  br label %12

12:                                               ; preds = %15, %10
  %13 = phi i32 [ %21, %15 ], [ 0, %10 ]
  %14 = icmp slt i32 %13, 2000
  br i1 %14, label %15, label %22

15:                                               ; preds = %12
  %16 = call double @random_double()
  %17 = sext i32 %13 to i64
  %18 = getelementptr inbounds ptr, ptr %0, i64 %17
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds double, ptr %19, i64 %11
  store double %16, ptr %20, align 8
  %21 = add nsw i32 %13, 1
  br label %12, !llvm.loop !7

22:                                               ; preds = %12
  %23 = add nsw i32 %8, 1
  br label %7, !llvm.loop !9

24:                                               ; preds = %7
  store i32 %8, ptr %5, align 4
  store i32 %.lcssa4, ptr %6, align 4
  store i32 0, ptr %5, align 4
  br label %25

25:                                               ; preds = %28, %24
  %26 = phi i32 [ %31, %28 ], [ 0, %24 ]
  %27 = icmp slt i32 %26, 2000
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = sext i32 %26 to i64
  %30 = getelementptr inbounds double, ptr %1, i64 %29
  store double 0.000000e+00, ptr %30, align 8
  %31 = add nsw i32 %26, 1
  br label %25, !llvm.loop !10

32:                                               ; preds = %25
  store i32 %26, ptr %5, align 4
  store i32 0, ptr %6, align 4
  br label %33

33:                                               ; preds = %51, %32
  %.lcssa711 = phi i32 [ %40, %51 ], [ %26, %32 ]
  %34 = phi i32 [ %52, %51 ], [ 0, %32 ]
  %35 = icmp slt i32 %34, 2000
  br i1 %35, label %36, label %53

36:                                               ; preds = %33
  %37 = sext i32 %34 to i64
  %38 = getelementptr inbounds ptr, ptr %0, i64 %37
  br label %39

39:                                               ; preds = %42, %36
  %40 = phi i32 [ %50, %42 ], [ 0, %36 ]
  %41 = icmp slt i32 %40, 2000
  br i1 %41, label %42, label %51

42:                                               ; preds = %39
  %43 = load ptr, ptr %38, align 8
  %44 = sext i32 %40 to i64
  %45 = getelementptr inbounds double, ptr %43, i64 %44
  %46 = load double, ptr %45, align 8
  %47 = getelementptr inbounds double, ptr %1, i64 %44
  %48 = load double, ptr %47, align 8
  %49 = fadd double %48, %46
  store double %49, ptr %47, align 8
  %50 = add nsw i32 %40, 1
  br label %39, !llvm.loop !11

51:                                               ; preds = %39
  %52 = add nsw i32 %34, 1
  br label %33, !llvm.loop !12

53:                                               ; preds = %33
  store i32 %34, ptr %6, align 4
  store i32 %.lcssa711, ptr %5, align 4
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
  br label %76

16:                                               ; preds = %4
  %17 = icmp eq i32 %0, 1
  br i1 %17, label %18, label %19

18:                                               ; preds = %16
  store i32 0, ptr %13, align 4
  br label %74

19:                                               ; preds = %16
  %20 = icmp ne i32 %3, 1
  br i1 %20, label %21, label %48

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

27:                                               ; preds = %42, %21
  %28 = phi i32 [ %43, %42 ], [ 0, %21 ]
  %29 = phi double [ %44, %42 ], [ %25, %21 ]
  %30 = phi double [ %39, %42 ], [ undef, %21 ]
  %31 = phi i32 [ %45, %42 ], [ %26, %21 ]
  %32 = phi i32 [ %46, %42 ], [ 1, %21 ]
  %33 = icmp slt i32 %32, %0
  br i1 %33, label %34, label %47

34:                                               ; preds = %27
  %35 = add nsw i32 %31, %2
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds double, ptr %1, i64 %36
  %38 = load double, ptr %37, align 8
  %39 = call double @llvm.fabs.f64(double %38)
  %40 = fcmp ogt double %39, %29
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  br label %42

42:                                               ; preds = %41, %34
  %43 = phi i32 [ %32, %41 ], [ %28, %34 ]
  %44 = phi double [ %39, %41 ], [ %29, %34 ]
  %45 = add nsw i32 %31, %3
  %46 = add nsw i32 %32, 1
  br label %27, !llvm.loop !13

47:                                               ; preds = %27
  store i32 %32, ptr %11, align 4
  store i32 %31, ptr %12, align 4
  store double %30, ptr %10, align 8
  store double %29, ptr %9, align 8
  store i32 %28, ptr %13, align 1
  br label %72

48:                                               ; preds = %19
  store i32 0, ptr %13, align 4
  %49 = sext i32 %2 to i64
  %50 = getelementptr inbounds double, ptr %1, i64 %49
  %51 = load double, ptr %50, align 8
  %52 = call double @llvm.fabs.f64(double %51)
  store double %52, ptr %9, align 8
  store i32 1, ptr %11, align 4
  br label %53

53:                                               ; preds = %67, %48
  %54 = phi i32 [ %68, %67 ], [ 0, %48 ]
  %55 = phi double [ %69, %67 ], [ %52, %48 ]
  %56 = phi double [ %64, %67 ], [ undef, %48 ]
  %57 = phi i32 [ %70, %67 ], [ 1, %48 ]
  %58 = icmp slt i32 %57, %0
  br i1 %58, label %59, label %71

59:                                               ; preds = %53
  %60 = add nsw i32 %57, %2
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds double, ptr %1, i64 %61
  %63 = load double, ptr %62, align 8
  %64 = call double @llvm.fabs.f64(double %63)
  %65 = fcmp ogt double %64, %55
  br i1 %65, label %66, label %67

66:                                               ; preds = %59
  br label %67

67:                                               ; preds = %66, %59
  %68 = phi i32 [ %57, %66 ], [ %54, %59 ]
  %69 = phi double [ %64, %66 ], [ %55, %59 ]
  %70 = add nsw i32 %57, 1
  br label %53, !llvm.loop !14

71:                                               ; preds = %53
  store i32 %57, ptr %11, align 4
  store double %56, ptr %10, align 8
  store double %55, ptr %9, align 8
  store i32 %54, ptr %13, align 1
  br label %72

72:                                               ; preds = %71, %47
  %73 = phi i32 [ %54, %71 ], [ %28, %47 ]
  br label %74

74:                                               ; preds = %72, %18
  %75 = phi i32 [ %73, %72 ], [ 0, %18 ]
  br label %76

76:                                               ; preds = %74, %15
  %77 = phi i32 [ %75, %74 ], [ -1, %15 ]
  ret i32 %77
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
  br label %18, !llvm.loop !15

28:                                               ; preds = %18
  store i32 %19, ptr %11, align 4
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
  br label %30, !llvm.loop !16

40:                                               ; preds = %30
  store i32 %31, ptr %11, align 4
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
  br i1 %20, label %21, label %73

21:                                               ; preds = %8
  %22 = fcmp une double %1, 0.000000e+00
  br i1 %22, label %23, label %73

23:                                               ; preds = %21
  %24 = icmp ne i32 %4, 1
  br i1 %24, label %27, label %25

25:                                               ; preds = %23
  %26 = icmp ne i32 %7, 1
  br i1 %26, label %27, label %57

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
  %.promoted3 = phi i32 [ %31, %29 ], [ 0, %27 ]
  %33 = icmp slt i32 %7, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %32
  %35 = sub nsw i32 1, %0
  %36 = mul nsw i32 %35, %7
  store i32 %36, ptr %19, align 4
  br label %37

37:                                               ; preds = %34, %32
  %.promoted5 = phi i32 [ %36, %34 ], [ 0, %32 ]
  store i32 0, ptr %17, align 4
  br label %38

38:                                               ; preds = %43, %37
  %39 = phi i32 [ %54, %43 ], [ %.promoted5, %37 ]
  %40 = phi i32 [ %53, %43 ], [ %.promoted3, %37 ]
  %41 = phi i32 [ %55, %43 ], [ 0, %37 ]
  %42 = icmp slt i32 %41, %0
  br i1 %42, label %43, label %56

43:                                               ; preds = %38
  %44 = add nsw i32 %40, %3
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds double, ptr %2, i64 %45
  %47 = load double, ptr %46, align 8
  %48 = add nsw i32 %39, %6
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds double, ptr %5, i64 %49
  %51 = load double, ptr %50, align 8
  %52 = call double @llvm.fmuladd.f64(double %1, double %47, double %51)
  store double %52, ptr %50, align 8
  %53 = add nsw i32 %40, %4
  %54 = add nsw i32 %39, %7
  %55 = add nsw i32 %41, 1
  br label %38, !llvm.loop !17

56:                                               ; preds = %38
  store i32 %41, ptr %17, align 4
  store i32 %40, ptr %18, align 4
  store i32 %39, ptr %19, align 4
  br label %73

57:                                               ; preds = %25
  store i32 0, ptr %17, align 4
  br label %58

58:                                               ; preds = %61, %57
  %59 = phi i32 [ %71, %61 ], [ 0, %57 ]
  %60 = icmp slt i32 %59, %0
  br i1 %60, label %61, label %72

61:                                               ; preds = %58
  %62 = add nsw i32 %59, %3
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds double, ptr %2, i64 %63
  %65 = load double, ptr %64, align 8
  %66 = add nsw i32 %59, %6
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds double, ptr %5, i64 %67
  %69 = load double, ptr %68, align 8
  %70 = call double @llvm.fmuladd.f64(double %1, double %65, double %69)
  store double %70, ptr %68, align 8
  %71 = add nsw i32 %59, 1
  br label %58, !llvm.loop !18

72:                                               ; preds = %58
  store i32 %59, ptr %17, align 4
  br label %73

73:                                               ; preds = %72, %56, %21, %8
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

12:                                               ; preds = %58, %2
  %.lcssa220 = phi ptr [ %.lcssa219, %58 ], [ undef, %2 ]
  %.lcssa18 = phi i32 [ %.lcssa17, %58 ], [ undef, %2 ]
  %.lcssa415 = phi double [ %.lcssa414, %58 ], [ undef, %2 ]
  %13 = phi i32 [ %25, %58 ], [ undef, %2 ]
  %14 = phi i32 [ %22, %58 ], [ undef, %2 ]
  %15 = phi ptr [ %21, %58 ], [ undef, %2 ]
  %16 = phi i32 [ %22, %58 ], [ 0, %2 ]
  %17 = icmp slt i32 %16, 1999
  br i1 %17, label %18, label %59

18:                                               ; preds = %12
  %19 = sext i32 %16 to i64
  %20 = getelementptr inbounds ptr, ptr %0, i64 %19
  %21 = load ptr, ptr %20, align 8
  %22 = add nsw i32 %16, 1
  %23 = sub nsw i32 2000, %16
  %24 = call i32 @idamax(i32 noundef %23, ptr noundef %21, i32 noundef %16, i32 noundef 1)
  %25 = add nsw i32 %24, %16
  %26 = getelementptr inbounds i32, ptr %1, i64 %19
  store i32 %25, ptr %26, align 4
  %27 = sext i32 %25 to i64
  %28 = getelementptr inbounds double, ptr %21, i64 %27
  %29 = load double, ptr %28, align 8
  %30 = fcmp une double %29, 0.000000e+00
  br i1 %30, label %31, label %58

31:                                               ; preds = %18
  %32 = icmp ne i32 %25, %16
  br i1 %32, label %33, label %._crit_edge

._crit_edge:                                      ; preds = %31
  %.phi.trans.insert = getelementptr inbounds double, ptr %21, i64 %19
  %.pre = load double, ptr %.phi.trans.insert, align 8
  br label %36

33:                                               ; preds = %31
  %34 = getelementptr inbounds double, ptr %21, i64 %19
  %35 = load double, ptr %34, align 8
  store double %35, ptr %28, align 8
  store double %29, ptr %34, align 8
  br label %36

36:                                               ; preds = %._crit_edge, %33
  %37 = phi double [ %.pre, %._crit_edge ], [ %29, %33 ]
  %38 = getelementptr inbounds double, ptr %21, i64 %19
  %39 = fdiv double -1.000000e+00, %37
  %40 = sub nsw i32 2000, %22
  call void @dscal(i32 noundef %40, double noundef %39, ptr noundef %21, i32 noundef %22, i32 noundef 1)
  br label %41

41:                                               ; preds = %55, %36
  %42 = phi double [ %51, %55 ], [ %39, %36 ]
  %43 = phi ptr [ %49, %55 ], [ %.lcssa220, %36 ]
  %44 = phi i32 [ %56, %55 ], [ %22, %36 ]
  %45 = icmp slt i32 %44, 2000
  br i1 %45, label %46, label %57

46:                                               ; preds = %41
  %47 = sext i32 %44 to i64
  %48 = getelementptr inbounds ptr, ptr %0, i64 %47
  %49 = load ptr, ptr %48, align 8
  %50 = getelementptr inbounds double, ptr %49, i64 %27
  %51 = load double, ptr %50, align 8
  br i1 %32, label %52, label %55

52:                                               ; preds = %46
  %53 = getelementptr inbounds double, ptr %49, i64 %19
  %54 = load double, ptr %53, align 8
  store double %54, ptr %50, align 8
  store double %51, ptr %53, align 8
  br label %55

55:                                               ; preds = %52, %46
  call void @daxpy(i32 noundef %40, double noundef %51, ptr noundef %21, i32 noundef %22, i32 noundef 1, ptr noundef %49, i32 noundef %22, i32 noundef 1)
  %56 = add nsw i32 %44, 1
  br label %41, !llvm.loop !19

57:                                               ; preds = %41
  br label %58

58:                                               ; preds = %57, %18
  %.lcssa219 = phi ptr [ %43, %57 ], [ %.lcssa220, %18 ]
  %.lcssa17 = phi i32 [ %44, %57 ], [ %.lcssa18, %18 ]
  %.lcssa414 = phi double [ %42, %57 ], [ %.lcssa415, %18 ]
  br label %12, !llvm.loop !20

59:                                               ; preds = %12
  store i32 %16, ptr %6, align 4
  store ptr %15, ptr %8, align 8
  store i32 %14, ptr %9, align 4
  store i32 %13, ptr %10, align 4
  store double %.lcssa415, ptr %5, align 8
  store i32 %.lcssa18, ptr %7, align 4
  store ptr %.lcssa220, ptr %11, align 8
  %60 = getelementptr inbounds i32, ptr %1, i64 1999
  store i32 1999, ptr %60, align 4
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

12:                                               ; preds = %29, %3
  %13 = phi i32 [ %30, %29 ], [ undef, %3 ]
  %14 = phi double [ %24, %29 ], [ undef, %3 ]
  %15 = phi i32 [ %21, %29 ], [ undef, %3 ]
  %16 = phi i32 [ %30, %29 ], [ 0, %3 ]
  %17 = icmp slt i32 %16, 1999
  br i1 %17, label %18, label %34

18:                                               ; preds = %12
  %19 = sext i32 %16 to i64
  %20 = getelementptr inbounds i32, ptr %1, i64 %19
  %21 = load i32, ptr %20, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds double, ptr %2, i64 %22
  %24 = load double, ptr %23, align 8
  %25 = icmp ne i32 %21, %16
  br i1 %25, label %26, label %29

26:                                               ; preds = %18
  %27 = getelementptr inbounds double, ptr %2, i64 %19
  %28 = load double, ptr %27, align 8
  store double %28, ptr %23, align 8
  store double %24, ptr %27, align 8
  br label %29

29:                                               ; preds = %26, %18
  %30 = add nsw i32 %16, 1
  %31 = sub nsw i32 2000, %30
  %32 = getelementptr inbounds ptr, ptr %0, i64 %19
  %33 = load ptr, ptr %32, align 8
  call void @daxpy(i32 noundef %31, double noundef %24, ptr noundef %33, i32 noundef %30, i32 noundef 1, ptr noundef %2, i32 noundef %30, i32 noundef 1)
  br label %12, !llvm.loop !21

34:                                               ; preds = %12
  store i32 %16, ptr %8, align 4
  store i32 %15, ptr %10, align 4
  store double %14, ptr %7, align 8
  store i32 %13, ptr %11, align 4
  store i32 0, ptr %9, align 4
  br label %35

35:                                               ; preds = %40, %34
  %36 = phi double [ %51, %40 ], [ %14, %34 ]
  %37 = phi i32 [ %42, %40 ], [ %16, %34 ]
  %38 = phi i32 [ %41, %40 ], [ 0, %34 ]
  %39 = icmp slt i32 %38, 2000
  br i1 %39, label %40, label %53

40:                                               ; preds = %35
  %41 = add nsw i32 %38, 1
  %42 = sub nsw i32 2000, %41
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds ptr, ptr %0, i64 %43
  %45 = load ptr, ptr %44, align 8
  %46 = getelementptr inbounds double, ptr %45, i64 %43
  %47 = load double, ptr %46, align 8
  %48 = getelementptr inbounds double, ptr %2, i64 %43
  %49 = load double, ptr %48, align 8
  %50 = fdiv double %49, %47
  store double %50, ptr %48, align 8
  %51 = fneg double %50
  %52 = load ptr, ptr %44, align 8
  call void @daxpy(i32 noundef %42, double noundef %51, ptr noundef %52, i32 noundef 0, i32 noundef 1, ptr noundef %2, i32 noundef 0, i32 noundef 1)
  br label %35, !llvm.loop !22

53:                                               ; preds = %35
  store i32 %38, ptr %9, align 4
  store i32 %37, ptr %8, align 4
  store double %36, ptr %7, align 8
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
  br i1 %14, label %15, label %29

15:                                               ; preds = %2
  store i32 1, ptr %6, align 4
  %16 = getelementptr inbounds ptr, ptr %1, i64 1
  br label %17

17:                                               ; preds = %25, %15
  %18 = phi i32 [ %26, %25 ], [ 1, %15 ]
  %19 = icmp slt i32 %18, %0
  br i1 %19, label %20, label %.loopexit

20:                                               ; preds = %17
  %21 = load ptr, ptr %16, align 8
  %22 = call i32 @strcmp(ptr noundef %21, ptr noundef @.str) #5
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  store i32 %18, ptr %6, align 4
  store i8 1, ptr %7, align 1
  br label %27

25:                                               ; preds = %20
  %26 = add nsw i32 %18, 1
  br label %17, !llvm.loop !23

.loopexit:                                        ; preds = %17
  store i32 %18, ptr %6, align 4
  br label %27

27:                                               ; preds = %.loopexit, %24
  %28 = phi i8 [ 0, %.loopexit ], [ 1, %24 ]
  br label %29

29:                                               ; preds = %27, %2
  %30 = phi i8 [ %28, %27 ], [ 0, %2 ]
  %31 = call ptr @malloc(i64 noundef 16000) #6
  store ptr %31, ptr %8, align 8
  store i32 0, ptr %6, align 4
  br label %32

32:                                               ; preds = %35, %29
  %33 = phi i32 [ %39, %35 ], [ 0, %29 ]
  %34 = icmp slt i32 %33, 2000
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = call ptr @malloc(i64 noundef 16008) #6
  %37 = sext i32 %33 to i64
  %38 = getelementptr inbounds ptr, ptr %31, i64 %37
  store ptr %36, ptr %38, align 8
  %39 = add nsw i32 %33, 1
  br label %32, !llvm.loop !24

40:                                               ; preds = %32
  store i32 %33, ptr %6, align 4
  %41 = call ptr @malloc(i64 noundef 16000) #6
  store ptr %41, ptr %9, align 8
  %42 = call ptr @malloc(i64 noundef 16000) #6
  store ptr %42, ptr %10, align 8
  %43 = call ptr @malloc(i64 noundef 8000) #6
  store ptr %43, ptr %11, align 8
  store double f0x41F3E5E475555555, ptr %12, align 8
  call void @matgen(ptr noundef %31, ptr noundef %41)
  call void @dgefa(ptr noundef %31, ptr noundef %43)
  call void @dgesl(ptr noundef %31, ptr noundef %43, ptr noundef %41)
  store double 0.000000e+00, ptr %13, align 8
  call void @free(ptr noundef %43)
  call void @free(ptr noundef %42)
  call void @free(ptr noundef %41)
  store i32 0, ptr %6, align 4
  br label %44

44:                                               ; preds = %47, %40
  %45 = phi i32 [ %51, %47 ], [ 0, %40 ]
  %46 = icmp slt i32 %45, 2000
  br i1 %46, label %47, label %52

47:                                               ; preds = %44
  %48 = sext i32 %45 to i64
  %49 = getelementptr inbounds ptr, ptr %31, i64 %48
  %50 = load ptr, ptr %49, align 8
  call void @free(ptr noundef %50)
  %51 = add nsw i32 %45, 1
  br label %44, !llvm.loop !25

52:                                               ; preds = %44
  store i32 %45, ptr %6, align 4
  call void @free(ptr noundef %31)
  %53 = icmp ne i8 %30, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %52
  %55 = call ptr @__acrt_iob_func(i32 noundef 1)
  %56 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %55, ptr noundef @.str.1, double noundef 0.000000e+00) #5
  br label %60

57:                                               ; preds = %52
  %58 = call ptr @__acrt_iob_func(i32 noundef 1)
  %59 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %58, ptr noundef @.str.2, double noundef 0.000000e+00) #5
  br label %60

60:                                               ; preds = %57, %54
  %61 = call ptr @__acrt_iob_func(i32 noundef 1)
  %62 = call i32 @fflush(ptr noundef %61)
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
