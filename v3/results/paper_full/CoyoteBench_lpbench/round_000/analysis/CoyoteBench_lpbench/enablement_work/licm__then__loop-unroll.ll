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
  %7 = load ptr, ptr %3, align 8
  %.promoted1 = load i32, ptr %5, align 4
  %.promoted3 = load i32, ptr %6, align 4
  br label %8

8:                                                ; preds = %25, %2
  %.lcssa4 = phi i32 [ %.lcssa, %25 ], [ %.promoted3, %2 ]
  %9 = phi i32 [ %26, %25 ], [ %.promoted1, %2 ]
  %10 = icmp slt i32 %9, 2000
  br i1 %10, label %11, label %27

11:                                               ; preds = %8
  %12 = sext i32 %9 to i64
  br label %13

13:                                               ; preds = %22, %11
  %14 = phi i32 [ %23, %22 ], [ 0, %11 ]
  %15 = icmp slt i32 %14, 2000
  br i1 %15, label %16, label %24

16:                                               ; preds = %13
  %17 = call double @random_double()
  %18 = sext i32 %14 to i64
  %19 = getelementptr inbounds ptr, ptr %7, i64 %18
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds double, ptr %20, i64 %12
  store double %17, ptr %21, align 8
  br label %22

22:                                               ; preds = %16
  %23 = add nsw i32 %14, 1
  br label %13, !llvm.loop !7

24:                                               ; preds = %13
  %.lcssa = phi i32 [ %14, %13 ]
  br label %25

25:                                               ; preds = %24
  %26 = add nsw i32 %9, 1
  br label %8, !llvm.loop !9

27:                                               ; preds = %8
  %.lcssa4.lcssa = phi i32 [ %.lcssa4, %8 ]
  %.lcssa2 = phi i32 [ %9, %8 ]
  store i32 %.lcssa2, ptr %5, align 4
  store i32 %.lcssa4.lcssa, ptr %6, align 4
  store i32 0, ptr %5, align 4
  %28 = load ptr, ptr %4, align 8
  %.promoted = load i32, ptr %5, align 4
  br label %29

29:                                               ; preds = %35, %27
  %30 = phi i32 [ %36, %35 ], [ %.promoted, %27 ]
  %31 = icmp slt i32 %30, 2000
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = sext i32 %30 to i64
  %34 = getelementptr inbounds double, ptr %28, i64 %33
  store double 0.000000e+00, ptr %34, align 8
  br label %35

35:                                               ; preds = %32
  %36 = add nsw i32 %30, 1
  br label %29, !llvm.loop !10

37:                                               ; preds = %29
  %.lcssa5 = phi i32 [ %30, %29 ]
  store i32 %.lcssa5, ptr %5, align 4
  store i32 0, ptr %6, align 4
  %38 = load ptr, ptr %3, align 8
  %39 = load ptr, ptr %4, align 8
  %.promoted8 = load i32, ptr %6, align 4
  %.promoted10 = load i32, ptr %5, align 4
  br label %40

40:                                               ; preds = %72, %37
  %.lcssa711 = phi i32 [ %.lcssa7, %72 ], [ %.promoted10, %37 ]
  %41 = phi i32 [ %73, %72 ], [ %.promoted8, %37 ]
  %42 = icmp slt i32 %41, 2000
  br i1 %42, label %43, label %74

43:                                               ; preds = %40
  %44 = sext i32 %41 to i64
  %45 = getelementptr inbounds ptr, ptr %38, i64 %44
  br label %46

46:                                               ; preds = %69, %43
  %47 = phi i32 [ 0, %43 ], [ %70, %69 ]
  %48 = icmp samesign ult i32 %47, 2000
  br i1 %48, label %49, label %71

49:                                               ; preds = %46
  %50 = load ptr, ptr %45, align 8
  %51 = sext i32 %47 to i64
  %52 = getelementptr inbounds double, ptr %50, i64 %51
  %53 = load double, ptr %52, align 8
  %54 = sext i32 %47 to i64
  %55 = getelementptr inbounds double, ptr %39, i64 %54
  %56 = load double, ptr %55, align 8
  %57 = fadd double %56, %53
  store double %57, ptr %55, align 8
  br label %58

58:                                               ; preds = %49
  %59 = add nuw nsw i32 %47, 1
  br label %60

60:                                               ; preds = %58
  %61 = load ptr, ptr %45, align 8
  %62 = sext i32 %59 to i64
  %63 = getelementptr inbounds double, ptr %61, i64 %62
  %64 = load double, ptr %63, align 8
  %65 = sext i32 %59 to i64
  %66 = getelementptr inbounds double, ptr %39, i64 %65
  %67 = load double, ptr %66, align 8
  %68 = fadd double %67, %64
  store double %68, ptr %66, align 8
  br label %69

69:                                               ; preds = %60
  %70 = add nuw nsw i32 %47, 2
  br label %46, !llvm.loop !11

71:                                               ; preds = %46
  %.lcssa7 = phi i32 [ %47, %46 ]
  br label %72

72:                                               ; preds = %71
  %73 = add nsw i32 %41, 1
  br label %40, !llvm.loop !12

74:                                               ; preds = %40
  %.lcssa711.lcssa = phi i32 [ %.lcssa711, %40 ]
  %.lcssa9 = phi i32 [ %41, %40 ]
  store i32 %.lcssa9, ptr %6, align 4
  store i32 %.lcssa711.lcssa, ptr %5, align 4
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
  %14 = load i32, ptr %5, align 4
  %15 = icmp slt i32 %14, 1
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  store i32 -1, ptr %13, align 4
  br label %91

17:                                               ; preds = %4
  %18 = load i32, ptr %5, align 4
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i32 0, ptr %13, align 4
  br label %90

21:                                               ; preds = %17
  %22 = load i32, ptr %8, align 4
  %23 = icmp ne i32 %22, 1
  br i1 %23, label %24, label %59

24:                                               ; preds = %21
  %25 = load ptr, ptr %6, align 8
  %26 = load i32, ptr %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds double, ptr %25, i64 %27
  %29 = load double, ptr %28, align 8
  %30 = call double @llvm.fabs.f64(double %29)
  store double %30, ptr %9, align 8
  %31 = load i32, ptr %8, align 4
  %32 = add nsw i32 1, %31
  store i32 %32, ptr %12, align 4
  store i32 1, ptr %11, align 4
  %33 = load i32, ptr %5, align 4
  %34 = load ptr, ptr %6, align 8
  %35 = load i32, ptr %7, align 4
  %36 = load i32, ptr %8, align 4
  %.promoted7 = load i32, ptr %11, align 4
  %.promoted9 = load i32, ptr %12, align 4
  %.promoted11 = load double, ptr %10, align 8
  %.promoted13 = load double, ptr %9, align 8
  %.promoted15 = load i32, ptr %13, align 1
  br label %37

37:                                               ; preds = %56, %24
  %38 = phi i32 [ %53, %56 ], [ %.promoted15, %24 ]
  %39 = phi double [ %54, %56 ], [ %.promoted13, %24 ]
  %40 = phi double [ %49, %56 ], [ %.promoted11, %24 ]
  %41 = phi i32 [ %55, %56 ], [ %.promoted9, %24 ]
  %42 = phi i32 [ %57, %56 ], [ %.promoted7, %24 ]
  %43 = icmp slt i32 %42, %33
  br i1 %43, label %44, label %58

44:                                               ; preds = %37
  %45 = add nsw i32 %41, %35
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds double, ptr %34, i64 %46
  %48 = load double, ptr %47, align 8
  %49 = call double @llvm.fabs.f64(double %48)
  %50 = fcmp ogt double %49, %39
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  br label %52

52:                                               ; preds = %51, %44
  %53 = phi i32 [ %42, %51 ], [ %38, %44 ]
  %54 = phi double [ %49, %51 ], [ %39, %44 ]
  %55 = add nsw i32 %41, %36
  br label %56

56:                                               ; preds = %52
  %57 = add nsw i32 %42, 1
  br label %37, !llvm.loop !13

58:                                               ; preds = %37
  %.lcssa16 = phi i32 [ %38, %37 ]
  %.lcssa14 = phi double [ %39, %37 ]
  %.lcssa12 = phi double [ %40, %37 ]
  %.lcssa10 = phi i32 [ %41, %37 ]
  %.lcssa8 = phi i32 [ %42, %37 ]
  store i32 %.lcssa8, ptr %11, align 4
  store i32 %.lcssa10, ptr %12, align 4
  store double %.lcssa12, ptr %10, align 8
  store double %.lcssa14, ptr %9, align 8
  store i32 %.lcssa16, ptr %13, align 1
  br label %89

59:                                               ; preds = %21
  store i32 0, ptr %13, align 4
  %60 = load ptr, ptr %6, align 8
  %61 = load i32, ptr %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds double, ptr %60, i64 %62
  %64 = load double, ptr %63, align 8
  %65 = call double @llvm.fabs.f64(double %64)
  store double %65, ptr %9, align 8
  store i32 1, ptr %11, align 4
  %66 = load i32, ptr %5, align 4
  %67 = load ptr, ptr %6, align 8
  %68 = load i32, ptr %7, align 4
  %.promoted = load i32, ptr %11, align 4
  %.promoted1 = load double, ptr %10, align 8
  %.promoted3 = load double, ptr %9, align 8
  %.promoted5 = load i32, ptr %13, align 1
  br label %69

69:                                               ; preds = %86, %59
  %70 = phi i32 [ %84, %86 ], [ %.promoted5, %59 ]
  %71 = phi double [ %85, %86 ], [ %.promoted3, %59 ]
  %72 = phi double [ %80, %86 ], [ %.promoted1, %59 ]
  %73 = phi i32 [ %87, %86 ], [ %.promoted, %59 ]
  %74 = icmp slt i32 %73, %66
  br i1 %74, label %75, label %88

75:                                               ; preds = %69
  %76 = add nsw i32 %73, %68
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds double, ptr %67, i64 %77
  %79 = load double, ptr %78, align 8
  %80 = call double @llvm.fabs.f64(double %79)
  %81 = fcmp ogt double %80, %71
  br i1 %81, label %82, label %83

82:                                               ; preds = %75
  br label %83

83:                                               ; preds = %82, %75
  %84 = phi i32 [ %73, %82 ], [ %70, %75 ]
  %85 = phi double [ %80, %82 ], [ %71, %75 ]
  br label %86

86:                                               ; preds = %83
  %87 = add nsw i32 %73, 1
  br label %69, !llvm.loop !14

88:                                               ; preds = %69
  %.lcssa6 = phi i32 [ %70, %69 ]
  %.lcssa4 = phi double [ %71, %69 ]
  %.lcssa2 = phi double [ %72, %69 ]
  %.lcssa = phi i32 [ %73, %69 ]
  store i32 %.lcssa, ptr %11, align 4
  store double %.lcssa2, ptr %10, align 8
  store double %.lcssa4, ptr %9, align 8
  store i32 %.lcssa6, ptr %13, align 1
  br label %89

89:                                               ; preds = %88, %58
  br label %90

90:                                               ; preds = %89, %20
  br label %91

91:                                               ; preds = %90, %16
  %92 = load i32, ptr %13, align 4
  ret i32 %92
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
  %13 = load i32, ptr %6, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %57

15:                                               ; preds = %5
  %16 = load i32, ptr %10, align 4
  %17 = icmp ne i32 %16, 1
  br i1 %17, label %18, label %39

18:                                               ; preds = %15
  %19 = load i32, ptr %6, align 4
  %20 = load i32, ptr %10, align 4
  %21 = mul nsw i32 %19, %20
  store i32 %21, ptr %12, align 4
  store i32 0, ptr %11, align 4
  %22 = load i32, ptr %12, align 4
  %23 = load double, ptr %7, align 8
  %24 = load ptr, ptr %8, align 8
  %25 = load i32, ptr %9, align 4
  %26 = load i32, ptr %10, align 4
  %.promoted1 = load i32, ptr %11, align 4
  br label %27

27:                                               ; preds = %36, %18
  %28 = phi i32 [ %37, %36 ], [ %.promoted1, %18 ]
  %29 = icmp slt i32 %28, %22
  br i1 %29, label %30, label %38

30:                                               ; preds = %27
  %31 = add nsw i32 %28, %25
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds double, ptr %24, i64 %32
  %34 = load double, ptr %33, align 8
  %35 = fmul double %34, %23
  store double %35, ptr %33, align 8
  br label %36

36:                                               ; preds = %30
  %37 = add nsw i32 %28, %26
  br label %27, !llvm.loop !15

38:                                               ; preds = %27
  %.lcssa2 = phi i32 [ %28, %27 ]
  store i32 %.lcssa2, ptr %11, align 4
  br label %56

39:                                               ; preds = %15
  store i32 0, ptr %11, align 4
  %40 = load i32, ptr %6, align 4
  %41 = load double, ptr %7, align 8
  %42 = load ptr, ptr %8, align 8
  %43 = load i32, ptr %9, align 4
  %.promoted = load i32, ptr %11, align 4
  br label %44

44:                                               ; preds = %53, %39
  %45 = phi i32 [ %54, %53 ], [ %.promoted, %39 ]
  %46 = icmp slt i32 %45, %40
  br i1 %46, label %47, label %55

47:                                               ; preds = %44
  %48 = add nsw i32 %45, %43
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds double, ptr %42, i64 %49
  %51 = load double, ptr %50, align 8
  %52 = fmul double %51, %41
  store double %52, ptr %50, align 8
  br label %53

53:                                               ; preds = %47
  %54 = add nsw i32 %45, 1
  br label %44, !llvm.loop !16

55:                                               ; preds = %44
  %.lcssa = phi i32 [ %45, %44 ]
  store i32 %.lcssa, ptr %11, align 4
  br label %56

56:                                               ; preds = %55, %38
  br label %57

57:                                               ; preds = %56, %5
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
  %20 = load i32, ptr %9, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %100

22:                                               ; preds = %8
  %23 = load double, ptr %10, align 8
  %24 = fcmp une double %23, 0.000000e+00
  br i1 %24, label %25, label %100

25:                                               ; preds = %22
  %26 = load i32, ptr %13, align 4
  %27 = icmp ne i32 %26, 1
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load i32, ptr %16, align 4
  %30 = icmp ne i32 %29, 1
  br i1 %30, label %31, label %76

31:                                               ; preds = %28, %25
  store i32 0, ptr %18, align 4
  store i32 0, ptr %19, align 4
  %32 = load i32, ptr %13, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load i32, ptr %9, align 4
  %36 = sub nsw i32 1, %35
  %37 = load i32, ptr %13, align 4
  %38 = mul nsw i32 %36, %37
  store i32 %38, ptr %18, align 4
  br label %39

39:                                               ; preds = %34, %31
  %40 = load i32, ptr %16, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load i32, ptr %9, align 4
  %44 = sub nsw i32 1, %43
  %45 = load i32, ptr %16, align 4
  %46 = mul nsw i32 %44, %45
  store i32 %46, ptr %19, align 4
  br label %47

47:                                               ; preds = %42, %39
  store i32 0, ptr %17, align 4
  %48 = load i32, ptr %9, align 4
  %49 = load double, ptr %10, align 8
  %50 = load ptr, ptr %11, align 8
  %51 = load i32, ptr %12, align 4
  %52 = load ptr, ptr %14, align 8
  %53 = load i32, ptr %15, align 4
  %54 = load i32, ptr %13, align 4
  %55 = load i32, ptr %16, align 4
  %.promoted1 = load i32, ptr %17, align 4
  %.promoted3 = load i32, ptr %18, align 4
  %.promoted5 = load i32, ptr %19, align 4
  br label %56

56:                                               ; preds = %73, %47
  %57 = phi i32 [ %72, %73 ], [ %.promoted5, %47 ]
  %58 = phi i32 [ %71, %73 ], [ %.promoted3, %47 ]
  %59 = phi i32 [ %74, %73 ], [ %.promoted1, %47 ]
  %60 = icmp slt i32 %59, %48
  br i1 %60, label %61, label %75

61:                                               ; preds = %56
  %62 = add nsw i32 %58, %51
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds double, ptr %50, i64 %63
  %65 = load double, ptr %64, align 8
  %66 = add nsw i32 %57, %53
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds double, ptr %52, i64 %67
  %69 = load double, ptr %68, align 8
  %70 = call double @llvm.fmuladd.f64(double %49, double %65, double %69)
  store double %70, ptr %68, align 8
  %71 = add nsw i32 %58, %54
  %72 = add nsw i32 %57, %55
  br label %73

73:                                               ; preds = %61
  %74 = add nsw i32 %59, 1
  br label %56, !llvm.loop !17

75:                                               ; preds = %56
  %.lcssa6 = phi i32 [ %57, %56 ]
  %.lcssa4 = phi i32 [ %58, %56 ]
  %.lcssa2 = phi i32 [ %59, %56 ]
  store i32 %.lcssa2, ptr %17, align 4
  store i32 %.lcssa4, ptr %18, align 4
  store i32 %.lcssa6, ptr %19, align 4
  br label %100

76:                                               ; preds = %28
  store i32 0, ptr %17, align 4
  %77 = load i32, ptr %9, align 4
  %78 = load double, ptr %10, align 8
  %79 = load ptr, ptr %11, align 8
  %80 = load i32, ptr %12, align 4
  %81 = load ptr, ptr %14, align 8
  %82 = load i32, ptr %15, align 4
  %.promoted = load i32, ptr %17, align 4
  br label %83

83:                                               ; preds = %96, %76
  %84 = phi i32 [ %97, %96 ], [ %.promoted, %76 ]
  %85 = icmp slt i32 %84, %77
  br i1 %85, label %86, label %98

86:                                               ; preds = %83
  %87 = add nsw i32 %84, %80
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds double, ptr %79, i64 %88
  %90 = load double, ptr %89, align 8
  %91 = add nsw i32 %84, %82
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds double, ptr %81, i64 %92
  %94 = load double, ptr %93, align 8
  %95 = call double @llvm.fmuladd.f64(double %78, double %90, double %94)
  store double %95, ptr %93, align 8
  br label %96

96:                                               ; preds = %86
  %97 = add nsw i32 %84, 1
  br label %83, !llvm.loop !18

98:                                               ; preds = %83
  %.lcssa = phi i32 [ %84, %83 ]
  store i32 %.lcssa, ptr %17, align 4
  br label %99

99:                                               ; preds = %98
  br label %100

100:                                              ; preds = %99, %75, %22, %8
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
  %12 = load ptr, ptr %3, align 8
  %13 = load ptr, ptr %4, align 8
  %14 = load ptr, ptr %3, align 8
  %.promoted5 = load i32, ptr %6, align 4
  %.promoted7 = load ptr, ptr %8, align 8
  %.promoted9 = load i32, ptr %9, align 4
  %.promoted11 = load i32, ptr %10, align 4
  %.promoted13 = load double, ptr %5, align 8
  %.promoted16 = load i32, ptr %7, align 4
  %.promoted = load ptr, ptr %11, align 8
  br label %15

15:                                               ; preds = %81, %2
  %.lcssa220 = phi ptr [ %.lcssa219, %81 ], [ %.promoted, %2 ]
  %.lcssa18 = phi i32 [ %.lcssa17, %81 ], [ %.promoted16, %2 ]
  %.lcssa415 = phi double [ %.lcssa414, %81 ], [ %.promoted13, %2 ]
  %16 = phi i32 [ %28, %81 ], [ %.promoted11, %2 ]
  %17 = phi i32 [ %25, %81 ], [ %.promoted9, %2 ]
  %18 = phi ptr [ %24, %81 ], [ %.promoted7, %2 ]
  %19 = phi i32 [ %82, %81 ], [ %.promoted5, %2 ]
  %20 = icmp slt i32 %19, 1999
  br i1 %20, label %21, label %83

21:                                               ; preds = %15
  %22 = sext i32 %19 to i64
  %23 = getelementptr inbounds ptr, ptr %12, i64 %22
  %24 = load ptr, ptr %23, align 8
  %25 = add nsw i32 %19, 1
  %26 = sub nsw i32 2000, %19
  %27 = call i32 @idamax(i32 noundef %26, ptr noundef %24, i32 noundef %19, i32 noundef 1)
  %28 = add nsw i32 %27, %19
  %29 = sext i32 %19 to i64
  %30 = getelementptr inbounds i32, ptr %13, i64 %29
  store i32 %28, ptr %30, align 4
  %31 = sext i32 %28 to i64
  %32 = getelementptr inbounds double, ptr %24, i64 %31
  %33 = load double, ptr %32, align 8
  %34 = fcmp une double %33, 0.000000e+00
  br i1 %34, label %35, label %80

35:                                               ; preds = %21
  %36 = icmp ne i32 %28, %19
  br i1 %36, label %37, label %48

37:                                               ; preds = %35
  %38 = sext i32 %28 to i64
  %39 = getelementptr inbounds double, ptr %24, i64 %38
  %40 = load double, ptr %39, align 8
  %41 = sext i32 %19 to i64
  %42 = getelementptr inbounds double, ptr %24, i64 %41
  %43 = load double, ptr %42, align 8
  %44 = sext i32 %28 to i64
  %45 = getelementptr inbounds double, ptr %24, i64 %44
  store double %43, ptr %45, align 8
  %46 = sext i32 %19 to i64
  %47 = getelementptr inbounds double, ptr %24, i64 %46
  store double %40, ptr %47, align 8
  br label %48

48:                                               ; preds = %37, %35
  %49 = sext i32 %19 to i64
  %50 = getelementptr inbounds double, ptr %24, i64 %49
  %51 = load double, ptr %50, align 8
  %52 = fdiv double -1.000000e+00, %51
  %53 = sub nsw i32 2000, %25
  call void @dscal(i32 noundef %53, double noundef %52, ptr noundef %24, i32 noundef %25, i32 noundef 1)
  %54 = sext i32 %28 to i64
  %55 = icmp ne i32 %28, %19
  %56 = sext i32 %19 to i64
  %57 = sext i32 %28 to i64
  %58 = sext i32 %19 to i64
  %59 = sub nsw i32 2000, %25
  br label %60

60:                                               ; preds = %77, %48
  %61 = phi double [ %70, %77 ], [ %52, %48 ]
  %62 = phi ptr [ %68, %77 ], [ %.lcssa220, %48 ]
  %63 = phi i32 [ %78, %77 ], [ %25, %48 ]
  %64 = icmp slt i32 %63, 2000
  br i1 %64, label %65, label %79

65:                                               ; preds = %60
  %66 = sext i32 %63 to i64
  %67 = getelementptr inbounds ptr, ptr %14, i64 %66
  %68 = load ptr, ptr %67, align 8
  %69 = getelementptr inbounds double, ptr %68, i64 %54
  %70 = load double, ptr %69, align 8
  br i1 %55, label %71, label %76

71:                                               ; preds = %65
  %72 = getelementptr inbounds double, ptr %68, i64 %56
  %73 = load double, ptr %72, align 8
  %74 = getelementptr inbounds double, ptr %68, i64 %57
  store double %73, ptr %74, align 8
  %75 = getelementptr inbounds double, ptr %68, i64 %58
  store double %70, ptr %75, align 8
  br label %76

76:                                               ; preds = %71, %65
  call void @daxpy(i32 noundef %59, double noundef %70, ptr noundef %24, i32 noundef %25, i32 noundef 1, ptr noundef %68, i32 noundef %25, i32 noundef 1)
  br label %77

77:                                               ; preds = %76
  %78 = add nsw i32 %63, 1
  br label %60, !llvm.loop !19

79:                                               ; preds = %60
  %.lcssa4 = phi double [ %61, %60 ]
  %.lcssa2 = phi ptr [ %62, %60 ]
  %.lcssa = phi i32 [ %63, %60 ]
  br label %80

80:                                               ; preds = %79, %21
  %.lcssa219 = phi ptr [ %.lcssa2, %79 ], [ %.lcssa220, %21 ]
  %.lcssa17 = phi i32 [ %.lcssa, %79 ], [ %.lcssa18, %21 ]
  %.lcssa414 = phi double [ %.lcssa4, %79 ], [ %.lcssa415, %21 ]
  br label %81

81:                                               ; preds = %80
  %82 = add nsw i32 %19, 1
  br label %15, !llvm.loop !20

83:                                               ; preds = %15
  %.lcssa220.lcssa = phi ptr [ %.lcssa220, %15 ]
  %.lcssa18.lcssa = phi i32 [ %.lcssa18, %15 ]
  %.lcssa415.lcssa = phi double [ %.lcssa415, %15 ]
  %.lcssa12 = phi i32 [ %16, %15 ]
  %.lcssa10 = phi i32 [ %17, %15 ]
  %.lcssa8 = phi ptr [ %18, %15 ]
  %.lcssa6 = phi i32 [ %19, %15 ]
  store i32 %.lcssa6, ptr %6, align 4
  store ptr %.lcssa8, ptr %8, align 8
  store i32 %.lcssa10, ptr %9, align 4
  store i32 %.lcssa12, ptr %10, align 4
  store double %.lcssa415.lcssa, ptr %5, align 8
  store i32 %.lcssa18.lcssa, ptr %7, align 4
  store ptr %.lcssa220.lcssa, ptr %11, align 8
  %84 = load ptr, ptr %4, align 8
  %85 = getelementptr inbounds i32, ptr %84, i64 1999
  store i32 1999, ptr %85, align 4
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
  %12 = load ptr, ptr %5, align 8
  %13 = load ptr, ptr %6, align 8
  %14 = load ptr, ptr %6, align 8
  %15 = load ptr, ptr %6, align 8
  %16 = load ptr, ptr %6, align 8
  %17 = load ptr, ptr %4, align 8
  %18 = load ptr, ptr %6, align 8
  %.promoted = load i32, ptr %8, align 4
  %.promoted1 = load i32, ptr %10, align 4
  %.promoted3 = load double, ptr %7, align 8
  %.promoted5 = load i32, ptr %11, align 4
  br label %19

19:                                               ; preds = %47, %3
  %20 = phi i32 [ %42, %47 ], [ %.promoted5, %3 ]
  %21 = phi double [ %31, %47 ], [ %.promoted3, %3 ]
  %22 = phi i32 [ %28, %47 ], [ %.promoted1, %3 ]
  %23 = phi i32 [ %48, %47 ], [ %.promoted, %3 ]
  %24 = icmp slt i32 %23, 1999
  br i1 %24, label %25, label %49

25:                                               ; preds = %19
  %26 = sext i32 %23 to i64
  %27 = getelementptr inbounds i32, ptr %12, i64 %26
  %28 = load i32, ptr %27, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds double, ptr %13, i64 %29
  %31 = load double, ptr %30, align 8
  %32 = icmp ne i32 %28, %23
  br i1 %32, label %33, label %41

33:                                               ; preds = %25
  %34 = sext i32 %23 to i64
  %35 = getelementptr inbounds double, ptr %14, i64 %34
  %36 = load double, ptr %35, align 8
  %37 = sext i32 %28 to i64
  %38 = getelementptr inbounds double, ptr %15, i64 %37
  store double %36, ptr %38, align 8
  %39 = sext i32 %23 to i64
  %40 = getelementptr inbounds double, ptr %16, i64 %39
  store double %31, ptr %40, align 8
  br label %41

41:                                               ; preds = %33, %25
  %42 = add nsw i32 %23, 1
  %43 = sub nsw i32 2000, %42
  %44 = sext i32 %23 to i64
  %45 = getelementptr inbounds ptr, ptr %17, i64 %44
  %46 = load ptr, ptr %45, align 8
  call void @daxpy(i32 noundef %43, double noundef %31, ptr noundef %46, i32 noundef %42, i32 noundef 1, ptr noundef %18, i32 noundef %42, i32 noundef 1)
  br label %47

47:                                               ; preds = %41
  %48 = add nsw i32 %23, 1
  br label %19, !llvm.loop !21

49:                                               ; preds = %19
  %.lcssa6 = phi i32 [ %20, %19 ]
  %.lcssa4 = phi double [ %21, %19 ]
  %.lcssa2 = phi i32 [ %22, %19 ]
  %.lcssa = phi i32 [ %23, %19 ]
  store i32 %.lcssa, ptr %8, align 4
  store i32 %.lcssa2, ptr %10, align 4
  store double %.lcssa4, ptr %7, align 8
  store i32 %.lcssa6, ptr %11, align 4
  store i32 0, ptr %9, align 4
  %50 = load ptr, ptr %4, align 8
  %51 = load ptr, ptr %6, align 8
  %52 = load ptr, ptr %6, align 8
  %53 = load ptr, ptr %4, align 8
  %54 = load ptr, ptr %6, align 8
  %.promoted7 = load i32, ptr %9, align 4
  %.promoted9 = load i32, ptr %8, align 4
  %.promoted11 = load double, ptr %7, align 8
  br label %55

55:                                               ; preds = %80, %49
  %56 = phi double [ %76, %80 ], [ %.promoted11, %49 ]
  %57 = phi i32 [ %62, %80 ], [ %.promoted9, %49 ]
  %58 = phi i32 [ %81, %80 ], [ %.promoted7, %49 ]
  %59 = icmp slt i32 %58, 2000
  br i1 %59, label %60, label %82

60:                                               ; preds = %55
  %61 = add nsw i32 %58, 1
  %62 = sub nsw i32 2000, %61
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds ptr, ptr %50, i64 %63
  %65 = load ptr, ptr %64, align 8
  %66 = sext i32 %62 to i64
  %67 = getelementptr inbounds double, ptr %65, i64 %66
  %68 = load double, ptr %67, align 8
  %69 = sext i32 %62 to i64
  %70 = getelementptr inbounds double, ptr %51, i64 %69
  %71 = load double, ptr %70, align 8
  %72 = fdiv double %71, %68
  store double %72, ptr %70, align 8
  %73 = sext i32 %62 to i64
  %74 = getelementptr inbounds double, ptr %52, i64 %73
  %75 = load double, ptr %74, align 8
  %76 = fneg double %75
  %77 = sext i32 %62 to i64
  %78 = getelementptr inbounds ptr, ptr %53, i64 %77
  %79 = load ptr, ptr %78, align 8
  call void @daxpy(i32 noundef %62, double noundef %76, ptr noundef %79, i32 noundef 0, i32 noundef 1, ptr noundef %54, i32 noundef 0, i32 noundef 1)
  br label %80

80:                                               ; preds = %60
  %81 = add nsw i32 %58, 1
  br label %55, !llvm.loop !22

82:                                               ; preds = %55
  %.lcssa12 = phi double [ %56, %55 ]
  %.lcssa10 = phi i32 [ %57, %55 ]
  %.lcssa8 = phi i32 [ %58, %55 ]
  store i32 %.lcssa8, ptr %9, align 4
  store i32 %.lcssa10, ptr %8, align 4
  store double %.lcssa12, ptr %7, align 8
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
  %14 = load i32, ptr %4, align 4
  %15 = icmp sgt i32 %14, 1
  br i1 %15, label %16, label %32

16:                                               ; preds = %2
  store i32 1, ptr %6, align 4
  %17 = load i32, ptr %4, align 4
  %18 = load ptr, ptr %5, align 8
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %.promoted = load i32, ptr %6, align 4
  br label %20

20:                                               ; preds = %29, %16
  %21 = phi i32 [ %30, %29 ], [ %.promoted, %16 ]
  %22 = icmp slt i32 %21, %17
  br i1 %22, label %23, label %.loopexit

23:                                               ; preds = %20
  %24 = load ptr, ptr %19, align 8
  %25 = call i32 @strcmp(ptr noundef %24, ptr noundef @.str) #5
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  %.lcssa1 = phi i32 [ %21, %23 ]
  store i32 %.lcssa1, ptr %6, align 4
  store i8 1, ptr %7, align 1
  br label %31

28:                                               ; preds = %23
  br label %29

29:                                               ; preds = %28
  %30 = add nsw i32 %21, 1
  br label %20, !llvm.loop !23

.loopexit:                                        ; preds = %20
  %.lcssa = phi i32 [ %21, %20 ]
  store i32 %.lcssa, ptr %6, align 4
  br label %31

31:                                               ; preds = %.loopexit, %27
  br label %32

32:                                               ; preds = %31, %2
  %33 = call ptr @malloc(i64 noundef 16000) #6
  store ptr %33, ptr %8, align 8
  store i32 0, ptr %6, align 4
  %34 = load ptr, ptr %8, align 8
  %.promoted2 = load i32, ptr %6, align 4
  br label %35

35:                                               ; preds = %42, %32
  %36 = phi i32 [ %43, %42 ], [ %.promoted2, %32 ]
  %37 = icmp slt i32 %36, 2000
  br i1 %37, label %38, label %44

38:                                               ; preds = %35
  %39 = call ptr @malloc(i64 noundef 16008) #6
  %40 = sext i32 %36 to i64
  %41 = getelementptr inbounds ptr, ptr %34, i64 %40
  store ptr %39, ptr %41, align 8
  br label %42

42:                                               ; preds = %38
  %43 = add nsw i32 %36, 1
  br label %35, !llvm.loop !24

44:                                               ; preds = %35
  %.lcssa3 = phi i32 [ %36, %35 ]
  store i32 %.lcssa3, ptr %6, align 4
  %45 = call ptr @malloc(i64 noundef 16000) #6
  store ptr %45, ptr %9, align 8
  %46 = call ptr @malloc(i64 noundef 16000) #6
  store ptr %46, ptr %10, align 8
  %47 = call ptr @malloc(i64 noundef 8000) #6
  store ptr %47, ptr %11, align 8
  store double f0x41F3E5E475555555, ptr %12, align 8
  %48 = load ptr, ptr %8, align 8
  %49 = load ptr, ptr %9, align 8
  call void @matgen(ptr noundef %48, ptr noundef %49)
  %50 = load ptr, ptr %8, align 8
  %51 = load ptr, ptr %11, align 8
  call void @dgefa(ptr noundef %50, ptr noundef %51)
  %52 = load ptr, ptr %8, align 8
  %53 = load ptr, ptr %11, align 8
  %54 = load ptr, ptr %9, align 8
  call void @dgesl(ptr noundef %52, ptr noundef %53, ptr noundef %54)
  store double 0.000000e+00, ptr %13, align 8
  %55 = load ptr, ptr %11, align 8
  call void @free(ptr noundef %55)
  %56 = load ptr, ptr %10, align 8
  call void @free(ptr noundef %56)
  %57 = load ptr, ptr %9, align 8
  call void @free(ptr noundef %57)
  store i32 0, ptr %6, align 4
  %58 = load ptr, ptr %8, align 8
  %.promoted4 = load i32, ptr %6, align 4
  br label %59

59:                                               ; preds = %66, %44
  %60 = phi i32 [ %67, %66 ], [ %.promoted4, %44 ]
  %61 = icmp slt i32 %60, 2000
  br i1 %61, label %62, label %68

62:                                               ; preds = %59
  %63 = sext i32 %60 to i64
  %64 = getelementptr inbounds ptr, ptr %58, i64 %63
  %65 = load ptr, ptr %64, align 8
  call void @free(ptr noundef %65)
  br label %66

66:                                               ; preds = %62
  %67 = add nsw i32 %60, 1
  br label %59, !llvm.loop !25

68:                                               ; preds = %59
  %.lcssa5 = phi i32 [ %60, %59 ]
  store i32 %.lcssa5, ptr %6, align 4
  %69 = load ptr, ptr %8, align 8
  call void @free(ptr noundef %69)
  %70 = load i8, ptr %7, align 1
  %71 = icmp ne i8 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %68
  %73 = call ptr @__acrt_iob_func(i32 noundef 1)
  %74 = load double, ptr %13, align 8
  %75 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %73, ptr noundef @.str.1, double noundef %74) #5
  br label %80

76:                                               ; preds = %68
  %77 = call ptr @__acrt_iob_func(i32 noundef 1)
  %78 = load double, ptr %13, align 8
  %79 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %77, ptr noundef @.str.2, double noundef %78) #5
  br label %80

80:                                               ; preds = %76, %72
  %81 = call ptr @__acrt_iob_func(i32 noundef 1)
  %82 = call i32 @fflush(ptr noundef %81)
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
  %5 = load i32, ptr @seed, align 4
  %6 = sdiv i32 %5, 127773
  store i32 %6, ptr %1, align 4
  %7 = load i32, ptr @seed, align 4
  %8 = load i32, ptr %1, align 4
  %9 = mul nsw i32 %8, 127773
  %10 = sub nsw i32 %7, %9
  %11 = mul nsw i32 16807, %10
  %12 = load i32, ptr %1, align 4
  %13 = mul nsw i32 2836, %12
  %14 = sub nsw i32 %11, %13
  store i32 %14, ptr @seed, align 4
  %15 = load i32, ptr @seed, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %0
  %18 = load i32, ptr @seed, align 4
  %19 = add nsw i32 %18, 2147483647
  store i32 %19, ptr @seed, align 4
  br label %20

20:                                               ; preds = %17, %0
  %21 = load i32, ptr @seed, align 4
  %22 = sitofp i32 %21 to double
  %23 = fmul double f0x3E00000000200FE1, %22
  store double %23, ptr %2, align 8
  %24 = load i32, ptr @seed, align 4
  %25 = xor i32 %24, 123459876
  store i32 %25, ptr @seed, align 4
  %26 = load double, ptr %2, align 8
  ret double %26
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
