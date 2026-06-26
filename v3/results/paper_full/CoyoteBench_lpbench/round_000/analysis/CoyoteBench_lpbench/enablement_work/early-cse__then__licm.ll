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

40:                                               ; preds = %60, %37
  %.lcssa711 = phi i32 [ %.lcssa7, %60 ], [ %.promoted10, %37 ]
  %41 = phi i32 [ %61, %60 ], [ %.promoted8, %37 ]
  %42 = icmp slt i32 %41, 2000
  br i1 %42, label %43, label %62

43:                                               ; preds = %40
  %44 = sext i32 %41 to i64
  %45 = getelementptr inbounds ptr, ptr %38, i64 %44
  br label %46

46:                                               ; preds = %57, %43
  %47 = phi i32 [ %58, %57 ], [ 0, %43 ]
  %48 = icmp slt i32 %47, 2000
  br i1 %48, label %49, label %59

49:                                               ; preds = %46
  %50 = load ptr, ptr %45, align 8
  %51 = sext i32 %47 to i64
  %52 = getelementptr inbounds double, ptr %50, i64 %51
  %53 = load double, ptr %52, align 8
  %54 = getelementptr inbounds double, ptr %39, i64 %51
  %55 = load double, ptr %54, align 8
  %56 = fadd double %55, %53
  store double %56, ptr %54, align 8
  br label %57

57:                                               ; preds = %49
  %58 = add nsw i32 %47, 1
  br label %46, !llvm.loop !11

59:                                               ; preds = %46
  %.lcssa7 = phi i32 [ %47, %46 ]
  br label %60

60:                                               ; preds = %59
  %61 = add nsw i32 %41, 1
  br label %40, !llvm.loop !12

62:                                               ; preds = %40
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
  br label %90

17:                                               ; preds = %4
  %18 = icmp eq i32 %14, 1
  br i1 %18, label %19, label %20

19:                                               ; preds = %17
  store i32 0, ptr %13, align 4
  br label %89

20:                                               ; preds = %17
  %21 = load i32, ptr %8, align 4
  %22 = icmp ne i32 %21, 1
  br i1 %22, label %23, label %58

23:                                               ; preds = %20
  %24 = load ptr, ptr %6, align 8
  %25 = load i32, ptr %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds double, ptr %24, i64 %26
  %28 = load double, ptr %27, align 8
  %29 = call double @llvm.fabs.f64(double %28)
  store double %29, ptr %9, align 8
  %30 = load i32, ptr %8, align 4
  %31 = add nsw i32 1, %30
  store i32 %31, ptr %12, align 4
  store i32 1, ptr %11, align 4
  %32 = load i32, ptr %5, align 4
  %33 = load ptr, ptr %6, align 8
  %34 = load i32, ptr %7, align 4
  %35 = load i32, ptr %8, align 4
  %.promoted7 = load i32, ptr %11, align 4
  %.promoted9 = load i32, ptr %12, align 4
  %.promoted11 = load double, ptr %10, align 8
  %.promoted13 = load double, ptr %9, align 8
  %.promoted15 = load i32, ptr %13, align 1
  br label %36

36:                                               ; preds = %55, %23
  %37 = phi i32 [ %52, %55 ], [ %.promoted15, %23 ]
  %38 = phi double [ %53, %55 ], [ %.promoted13, %23 ]
  %39 = phi double [ %48, %55 ], [ %.promoted11, %23 ]
  %40 = phi i32 [ %54, %55 ], [ %.promoted9, %23 ]
  %41 = phi i32 [ %56, %55 ], [ %.promoted7, %23 ]
  %42 = icmp slt i32 %41, %32
  br i1 %42, label %43, label %57

43:                                               ; preds = %36
  %44 = add nsw i32 %40, %34
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds double, ptr %33, i64 %45
  %47 = load double, ptr %46, align 8
  %48 = call double @llvm.fabs.f64(double %47)
  %49 = fcmp ogt double %48, %38
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  br label %51

51:                                               ; preds = %50, %43
  %52 = phi i32 [ %41, %50 ], [ %37, %43 ]
  %53 = phi double [ %48, %50 ], [ %38, %43 ]
  %54 = add nsw i32 %40, %35
  br label %55

55:                                               ; preds = %51
  %56 = add nsw i32 %41, 1
  br label %36, !llvm.loop !13

57:                                               ; preds = %36
  %.lcssa16 = phi i32 [ %37, %36 ]
  %.lcssa14 = phi double [ %38, %36 ]
  %.lcssa12 = phi double [ %39, %36 ]
  %.lcssa10 = phi i32 [ %40, %36 ]
  %.lcssa8 = phi i32 [ %41, %36 ]
  store i32 %.lcssa8, ptr %11, align 4
  store i32 %.lcssa10, ptr %12, align 4
  store double %.lcssa12, ptr %10, align 8
  store double %.lcssa14, ptr %9, align 8
  store i32 %.lcssa16, ptr %13, align 1
  br label %88

58:                                               ; preds = %20
  store i32 0, ptr %13, align 4
  %59 = load ptr, ptr %6, align 8
  %60 = load i32, ptr %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds double, ptr %59, i64 %61
  %63 = load double, ptr %62, align 8
  %64 = call double @llvm.fabs.f64(double %63)
  store double %64, ptr %9, align 8
  store i32 1, ptr %11, align 4
  %65 = load i32, ptr %5, align 4
  %66 = load ptr, ptr %6, align 8
  %67 = load i32, ptr %7, align 4
  %.promoted = load i32, ptr %11, align 4
  %.promoted1 = load double, ptr %10, align 8
  %.promoted3 = load double, ptr %9, align 8
  %.promoted5 = load i32, ptr %13, align 1
  br label %68

68:                                               ; preds = %85, %58
  %69 = phi i32 [ %83, %85 ], [ %.promoted5, %58 ]
  %70 = phi double [ %84, %85 ], [ %.promoted3, %58 ]
  %71 = phi double [ %79, %85 ], [ %.promoted1, %58 ]
  %72 = phi i32 [ %86, %85 ], [ %.promoted, %58 ]
  %73 = icmp slt i32 %72, %65
  br i1 %73, label %74, label %87

74:                                               ; preds = %68
  %75 = add nsw i32 %72, %67
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds double, ptr %66, i64 %76
  %78 = load double, ptr %77, align 8
  %79 = call double @llvm.fabs.f64(double %78)
  %80 = fcmp ogt double %79, %70
  br i1 %80, label %81, label %82

81:                                               ; preds = %74
  br label %82

82:                                               ; preds = %81, %74
  %83 = phi i32 [ %72, %81 ], [ %69, %74 ]
  %84 = phi double [ %79, %81 ], [ %70, %74 ]
  br label %85

85:                                               ; preds = %82
  %86 = add nsw i32 %72, 1
  br label %68, !llvm.loop !14

87:                                               ; preds = %68
  %.lcssa6 = phi i32 [ %69, %68 ]
  %.lcssa4 = phi double [ %70, %68 ]
  %.lcssa2 = phi double [ %71, %68 ]
  %.lcssa = phi i32 [ %72, %68 ]
  store i32 %.lcssa, ptr %11, align 4
  store double %.lcssa2, ptr %10, align 8
  store double %.lcssa4, ptr %9, align 8
  store i32 %.lcssa6, ptr %13, align 1
  br label %88

88:                                               ; preds = %87, %57
  br label %89

89:                                               ; preds = %88, %19
  br label %90

90:                                               ; preds = %89, %16
  %91 = load i32, ptr %13, align 4
  ret i32 %91
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
  br i1 %14, label %15, label %54

15:                                               ; preds = %5
  %16 = icmp ne i32 %4, 1
  br i1 %16, label %17, label %36

17:                                               ; preds = %15
  %18 = mul nsw i32 %13, %4
  store i32 %18, ptr %12, align 4
  store i32 0, ptr %11, align 4
  %19 = load i32, ptr %12, align 4
  %20 = load double, ptr %7, align 8
  %21 = load ptr, ptr %8, align 8
  %22 = load i32, ptr %9, align 4
  %23 = load i32, ptr %10, align 4
  %.promoted1 = load i32, ptr %11, align 4
  br label %24

24:                                               ; preds = %33, %17
  %25 = phi i32 [ %34, %33 ], [ %.promoted1, %17 ]
  %26 = icmp slt i32 %25, %19
  br i1 %26, label %27, label %35

27:                                               ; preds = %24
  %28 = add nsw i32 %25, %22
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds double, ptr %21, i64 %29
  %31 = load double, ptr %30, align 8
  %32 = fmul double %31, %20
  store double %32, ptr %30, align 8
  br label %33

33:                                               ; preds = %27
  %34 = add nsw i32 %25, %23
  br label %24, !llvm.loop !15

35:                                               ; preds = %24
  %.lcssa2 = phi i32 [ %25, %24 ]
  store i32 %.lcssa2, ptr %11, align 4
  br label %53

36:                                               ; preds = %15
  store i32 0, ptr %11, align 4
  %37 = load i32, ptr %6, align 4
  %38 = load double, ptr %7, align 8
  %39 = load ptr, ptr %8, align 8
  %40 = load i32, ptr %9, align 4
  %.promoted = load i32, ptr %11, align 4
  br label %41

41:                                               ; preds = %50, %36
  %42 = phi i32 [ %51, %50 ], [ %.promoted, %36 ]
  %43 = icmp slt i32 %42, %37
  br i1 %43, label %44, label %52

44:                                               ; preds = %41
  %45 = add nsw i32 %42, %40
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds double, ptr %39, i64 %46
  %48 = load double, ptr %47, align 8
  %49 = fmul double %48, %38
  store double %49, ptr %47, align 8
  br label %50

50:                                               ; preds = %44
  %51 = add nsw i32 %42, 1
  br label %41, !llvm.loop !16

52:                                               ; preds = %41
  %.lcssa = phi i32 [ %42, %41 ]
  store i32 %.lcssa, ptr %11, align 4
  br label %53

53:                                               ; preds = %52, %35
  br label %54

54:                                               ; preds = %53, %5
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
  br i1 %21, label %22, label %97

22:                                               ; preds = %8
  %23 = load double, ptr %10, align 8
  %24 = fcmp une double %23, 0.000000e+00
  br i1 %24, label %25, label %97

25:                                               ; preds = %22
  %26 = load i32, ptr %13, align 4
  %27 = icmp ne i32 %26, 1
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  %29 = icmp ne i32 %7, 1
  br i1 %29, label %30, label %73

30:                                               ; preds = %28, %25
  store i32 0, ptr %18, align 4
  store i32 0, ptr %19, align 4
  %31 = load i32, ptr %13, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load i32, ptr %9, align 4
  %35 = sub nsw i32 1, %34
  %36 = mul nsw i32 %35, %31
  store i32 %36, ptr %18, align 4
  br label %37

37:                                               ; preds = %33, %30
  %38 = load i32, ptr %16, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load i32, ptr %9, align 4
  %42 = sub nsw i32 1, %41
  %43 = mul nsw i32 %42, %38
  store i32 %43, ptr %19, align 4
  br label %44

44:                                               ; preds = %40, %37
  store i32 0, ptr %17, align 4
  %45 = load i32, ptr %9, align 4
  %46 = load double, ptr %10, align 8
  %47 = load ptr, ptr %11, align 8
  %48 = load i32, ptr %12, align 4
  %49 = load ptr, ptr %14, align 8
  %50 = load i32, ptr %15, align 4
  %51 = load i32, ptr %13, align 4
  %52 = load i32, ptr %16, align 4
  %.promoted1 = load i32, ptr %17, align 4
  %.promoted3 = load i32, ptr %18, align 4
  %.promoted5 = load i32, ptr %19, align 4
  br label %53

53:                                               ; preds = %70, %44
  %54 = phi i32 [ %69, %70 ], [ %.promoted5, %44 ]
  %55 = phi i32 [ %68, %70 ], [ %.promoted3, %44 ]
  %56 = phi i32 [ %71, %70 ], [ %.promoted1, %44 ]
  %57 = icmp slt i32 %56, %45
  br i1 %57, label %58, label %72

58:                                               ; preds = %53
  %59 = add nsw i32 %55, %48
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds double, ptr %47, i64 %60
  %62 = load double, ptr %61, align 8
  %63 = add nsw i32 %54, %50
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds double, ptr %49, i64 %64
  %66 = load double, ptr %65, align 8
  %67 = call double @llvm.fmuladd.f64(double %46, double %62, double %66)
  store double %67, ptr %65, align 8
  %68 = add nsw i32 %55, %51
  %69 = add nsw i32 %54, %52
  br label %70

70:                                               ; preds = %58
  %71 = add nsw i32 %56, 1
  br label %53, !llvm.loop !17

72:                                               ; preds = %53
  %.lcssa6 = phi i32 [ %54, %53 ]
  %.lcssa4 = phi i32 [ %55, %53 ]
  %.lcssa2 = phi i32 [ %56, %53 ]
  store i32 %.lcssa2, ptr %17, align 4
  store i32 %.lcssa4, ptr %18, align 4
  store i32 %.lcssa6, ptr %19, align 4
  br label %97

73:                                               ; preds = %28
  store i32 0, ptr %17, align 4
  %74 = load i32, ptr %9, align 4
  %75 = load double, ptr %10, align 8
  %76 = load ptr, ptr %11, align 8
  %77 = load i32, ptr %12, align 4
  %78 = load ptr, ptr %14, align 8
  %79 = load i32, ptr %15, align 4
  %.promoted = load i32, ptr %17, align 4
  br label %80

80:                                               ; preds = %93, %73
  %81 = phi i32 [ %94, %93 ], [ %.promoted, %73 ]
  %82 = icmp slt i32 %81, %74
  br i1 %82, label %83, label %95

83:                                               ; preds = %80
  %84 = add nsw i32 %81, %77
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds double, ptr %76, i64 %85
  %87 = load double, ptr %86, align 8
  %88 = add nsw i32 %81, %79
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds double, ptr %78, i64 %89
  %91 = load double, ptr %90, align 8
  %92 = call double @llvm.fmuladd.f64(double %75, double %87, double %91)
  store double %92, ptr %90, align 8
  br label %93

93:                                               ; preds = %83
  %94 = add nsw i32 %81, 1
  br label %80, !llvm.loop !18

95:                                               ; preds = %80
  %.lcssa = phi i32 [ %81, %80 ]
  store i32 %.lcssa, ptr %17, align 4
  br label %96

96:                                               ; preds = %95
  br label %97

97:                                               ; preds = %96, %72, %22, %8
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

15:                                               ; preds = %78, %2
  %.lcssa220 = phi ptr [ %.lcssa219, %78 ], [ %.promoted, %2 ]
  %.lcssa18 = phi i32 [ %.lcssa17, %78 ], [ %.promoted16, %2 ]
  %.lcssa415 = phi double [ %.lcssa414, %78 ], [ %.promoted13, %2 ]
  %16 = phi i32 [ %28, %78 ], [ %.promoted11, %2 ]
  %17 = phi i32 [ %25, %78 ], [ %.promoted9, %2 ]
  %18 = phi ptr [ %24, %78 ], [ %.promoted7, %2 ]
  %19 = phi i32 [ %79, %78 ], [ %.promoted5, %2 ]
  %20 = icmp slt i32 %19, 1999
  br i1 %20, label %21, label %80

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
  br i1 %34, label %35, label %77

35:                                               ; preds = %21
  %36 = icmp ne i32 %28, %19
  br i1 %36, label %37, label %45

37:                                               ; preds = %35
  %38 = sext i32 %19 to i64
  %39 = getelementptr inbounds double, ptr %24, i64 %38
  %40 = load double, ptr %39, align 8
  %41 = sext i32 %28 to i64
  %42 = getelementptr inbounds double, ptr %24, i64 %41
  store double %40, ptr %42, align 8
  %43 = sext i32 %19 to i64
  %44 = getelementptr inbounds double, ptr %24, i64 %43
  store double %33, ptr %44, align 8
  br label %45

45:                                               ; preds = %37, %35
  %46 = sext i32 %19 to i64
  %47 = getelementptr inbounds double, ptr %24, i64 %46
  %48 = load double, ptr %47, align 8
  %49 = fdiv double -1.000000e+00, %48
  %50 = sub nsw i32 2000, %25
  call void @dscal(i32 noundef %50, double noundef %49, ptr noundef %24, i32 noundef %25, i32 noundef 1)
  %51 = sext i32 %28 to i64
  %52 = icmp ne i32 %28, %19
  %53 = sext i32 %19 to i64
  %54 = sext i32 %28 to i64
  %55 = sext i32 %19 to i64
  %56 = sub nsw i32 2000, %25
  br label %57

57:                                               ; preds = %74, %45
  %58 = phi double [ %67, %74 ], [ %49, %45 ]
  %59 = phi ptr [ %65, %74 ], [ %.lcssa220, %45 ]
  %60 = phi i32 [ %75, %74 ], [ %25, %45 ]
  %61 = icmp slt i32 %60, 2000
  br i1 %61, label %62, label %76

62:                                               ; preds = %57
  %63 = sext i32 %60 to i64
  %64 = getelementptr inbounds ptr, ptr %14, i64 %63
  %65 = load ptr, ptr %64, align 8
  %66 = getelementptr inbounds double, ptr %65, i64 %51
  %67 = load double, ptr %66, align 8
  br i1 %52, label %68, label %73

68:                                               ; preds = %62
  %69 = getelementptr inbounds double, ptr %65, i64 %53
  %70 = load double, ptr %69, align 8
  %71 = getelementptr inbounds double, ptr %65, i64 %54
  store double %70, ptr %71, align 8
  %72 = getelementptr inbounds double, ptr %65, i64 %55
  store double %67, ptr %72, align 8
  br label %73

73:                                               ; preds = %68, %62
  call void @daxpy(i32 noundef %56, double noundef %67, ptr noundef %24, i32 noundef %25, i32 noundef 1, ptr noundef %65, i32 noundef %25, i32 noundef 1)
  br label %74

74:                                               ; preds = %73
  %75 = add nsw i32 %60, 1
  br label %57, !llvm.loop !19

76:                                               ; preds = %57
  %.lcssa4 = phi double [ %58, %57 ]
  %.lcssa2 = phi ptr [ %59, %57 ]
  %.lcssa = phi i32 [ %60, %57 ]
  br label %77

77:                                               ; preds = %76, %21
  %.lcssa219 = phi ptr [ %.lcssa2, %76 ], [ %.lcssa220, %21 ]
  %.lcssa17 = phi i32 [ %.lcssa, %76 ], [ %.lcssa18, %21 ]
  %.lcssa414 = phi double [ %.lcssa4, %76 ], [ %.lcssa415, %21 ]
  br label %78

78:                                               ; preds = %77
  %79 = add nsw i32 %19, 1
  br label %15, !llvm.loop !20

80:                                               ; preds = %15
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
  %81 = load ptr, ptr %4, align 8
  %82 = getelementptr inbounds i32, ptr %81, i64 1999
  store i32 1999, ptr %82, align 4
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
  %16 = load ptr, ptr %4, align 8
  %17 = load ptr, ptr %6, align 8
  %.promoted = load i32, ptr %8, align 4
  %.promoted1 = load i32, ptr %10, align 4
  %.promoted3 = load double, ptr %7, align 8
  %.promoted5 = load i32, ptr %11, align 1
  br label %18

18:                                               ; preds = %46, %3
  %19 = phi i32 [ %41, %46 ], [ %.promoted5, %3 ]
  %20 = phi double [ %30, %46 ], [ %.promoted3, %3 ]
  %21 = phi i32 [ %27, %46 ], [ %.promoted1, %3 ]
  %22 = phi i32 [ %47, %46 ], [ %.promoted, %3 ]
  %23 = icmp slt i32 %22, 1999
  br i1 %23, label %24, label %48

24:                                               ; preds = %18
  %25 = sext i32 %22 to i64
  %26 = getelementptr inbounds i32, ptr %12, i64 %25
  %27 = load i32, ptr %26, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds double, ptr %13, i64 %28
  %30 = load double, ptr %29, align 8
  %31 = icmp ne i32 %27, %22
  br i1 %31, label %32, label %40

32:                                               ; preds = %24
  %33 = sext i32 %22 to i64
  %34 = getelementptr inbounds double, ptr %14, i64 %33
  %35 = load double, ptr %34, align 8
  %36 = sext i32 %27 to i64
  %37 = getelementptr inbounds double, ptr %14, i64 %36
  store double %35, ptr %37, align 8
  %38 = sext i32 %22 to i64
  %39 = getelementptr inbounds double, ptr %15, i64 %38
  store double %30, ptr %39, align 8
  br label %40

40:                                               ; preds = %32, %24
  %41 = add nsw i32 %22, 1
  %42 = sub nsw i32 2000, %41
  %43 = sext i32 %22 to i64
  %44 = getelementptr inbounds ptr, ptr %16, i64 %43
  %45 = load ptr, ptr %44, align 8
  call void @daxpy(i32 noundef %42, double noundef %30, ptr noundef %45, i32 noundef %41, i32 noundef 1, ptr noundef %17, i32 noundef %41, i32 noundef 1)
  br label %46

46:                                               ; preds = %40
  %47 = add nsw i32 %22, 1
  br label %18, !llvm.loop !21

48:                                               ; preds = %18
  %.lcssa6 = phi i32 [ %19, %18 ]
  %.lcssa4 = phi double [ %20, %18 ]
  %.lcssa2 = phi i32 [ %21, %18 ]
  %.lcssa = phi i32 [ %22, %18 ]
  store i32 %.lcssa, ptr %8, align 4
  store i32 %.lcssa2, ptr %10, align 4
  store double %.lcssa4, ptr %7, align 8
  store i32 %.lcssa6, ptr %11, align 1
  store i32 0, ptr %9, align 4
  %49 = load ptr, ptr %4, align 8
  %50 = load ptr, ptr %6, align 8
  %51 = load ptr, ptr %6, align 8
  %52 = load ptr, ptr %4, align 8
  %53 = load ptr, ptr %6, align 8
  %.promoted7 = load i32, ptr %9, align 4
  %.promoted9 = load i32, ptr %8, align 4
  %.promoted11 = load double, ptr %7, align 1
  br label %54

54:                                               ; preds = %77, %48
  %55 = phi double [ %73, %77 ], [ %.promoted11, %48 ]
  %56 = phi i32 [ %61, %77 ], [ %.promoted9, %48 ]
  %57 = phi i32 [ %78, %77 ], [ %.promoted7, %48 ]
  %58 = icmp slt i32 %57, 2000
  br i1 %58, label %59, label %79

59:                                               ; preds = %54
  %60 = add nsw i32 %57, 1
  %61 = sub nsw i32 2000, %60
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds ptr, ptr %49, i64 %62
  %64 = load ptr, ptr %63, align 8
  %65 = getelementptr inbounds double, ptr %64, i64 %62
  %66 = load double, ptr %65, align 8
  %67 = getelementptr inbounds double, ptr %50, i64 %62
  %68 = load double, ptr %67, align 8
  %69 = fdiv double %68, %66
  store double %69, ptr %67, align 8
  %70 = sext i32 %61 to i64
  %71 = getelementptr inbounds double, ptr %51, i64 %70
  %72 = load double, ptr %71, align 8
  %73 = fneg double %72
  %74 = sext i32 %61 to i64
  %75 = getelementptr inbounds ptr, ptr %52, i64 %74
  %76 = load ptr, ptr %75, align 8
  call void @daxpy(i32 noundef %61, double noundef %73, ptr noundef %76, i32 noundef 0, i32 noundef 1, ptr noundef %53, i32 noundef 0, i32 noundef 1)
  br label %77

77:                                               ; preds = %59
  %78 = add nsw i32 %57, 1
  br label %54, !llvm.loop !22

79:                                               ; preds = %54
  %.lcssa12 = phi double [ %55, %54 ]
  %.lcssa10 = phi i32 [ %56, %54 ]
  %.lcssa8 = phi i32 [ %57, %54 ]
  store i32 %.lcssa8, ptr %9, align 4
  store i32 %.lcssa10, ptr %8, align 4
  store double %.lcssa12, ptr %7, align 1
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
  %5 = sdiv i32 %4, 127773
  store i32 %5, ptr %1, align 4
  %6 = load i32, ptr @seed, align 4
  %7 = mul nsw i32 %5, 127773
  %8 = sub nsw i32 %6, %7
  %9 = mul nsw i32 16807, %8
  %10 = mul nsw i32 2836, %5
  %11 = sub nsw i32 %9, %10
  store i32 %11, ptr @seed, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %0
  %14 = add nsw i32 %11, 2147483647
  store i32 %14, ptr @seed, align 4
  br label %15

15:                                               ; preds = %13, %0
  %16 = load i32, ptr @seed, align 4
  %17 = sitofp i32 %16 to double
  %18 = fmul double f0x3E00000000200FE1, %17
  store double %18, ptr %2, align 8
  %19 = load i32, ptr @seed, align 4
  %20 = xor i32 %19, 123459876
  store i32 %20, ptr @seed, align 4
  %21 = load double, ptr %2, align 8
  ret double %21
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
