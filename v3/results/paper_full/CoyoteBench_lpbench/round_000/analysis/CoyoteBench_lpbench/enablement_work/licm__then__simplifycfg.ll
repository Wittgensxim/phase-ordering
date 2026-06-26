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

8:                                                ; preds = %23, %2
  %.lcssa4 = phi i32 [ %.lcssa, %23 ], [ %.promoted3, %2 ]
  %9 = phi i32 [ %24, %23 ], [ %.promoted1, %2 ]
  %10 = icmp slt i32 %9, 2000
  br i1 %10, label %11, label %25

11:                                               ; preds = %8
  %12 = sext i32 %9 to i64
  br label %13

13:                                               ; preds = %16, %11
  %14 = phi i32 [ %22, %16 ], [ 0, %11 ]
  %15 = icmp slt i32 %14, 2000
  br i1 %15, label %16, label %23

16:                                               ; preds = %13
  %17 = call double @random_double()
  %18 = sext i32 %14 to i64
  %19 = getelementptr inbounds ptr, ptr %7, i64 %18
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds double, ptr %20, i64 %12
  store double %17, ptr %21, align 8
  %22 = add nsw i32 %14, 1
  br label %13, !llvm.loop !7

23:                                               ; preds = %13
  %.lcssa = phi i32 [ %14, %13 ]
  %24 = add nsw i32 %9, 1
  br label %8, !llvm.loop !9

25:                                               ; preds = %8
  %.lcssa4.lcssa = phi i32 [ %.lcssa4, %8 ]
  %.lcssa2 = phi i32 [ %9, %8 ]
  store i32 %.lcssa2, ptr %5, align 4
  store i32 %.lcssa4.lcssa, ptr %6, align 4
  store i32 0, ptr %5, align 4
  %26 = load ptr, ptr %4, align 8
  %.promoted = load i32, ptr %5, align 4
  br label %27

27:                                               ; preds = %30, %25
  %28 = phi i32 [ %33, %30 ], [ %.promoted, %25 ]
  %29 = icmp slt i32 %28, 2000
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = sext i32 %28 to i64
  %32 = getelementptr inbounds double, ptr %26, i64 %31
  store double 0.000000e+00, ptr %32, align 8
  %33 = add nsw i32 %28, 1
  br label %27, !llvm.loop !10

34:                                               ; preds = %27
  %.lcssa5 = phi i32 [ %28, %27 ]
  store i32 %.lcssa5, ptr %5, align 4
  store i32 0, ptr %6, align 4
  %35 = load ptr, ptr %3, align 8
  %36 = load ptr, ptr %4, align 8
  %.promoted8 = load i32, ptr %6, align 4
  %.promoted10 = load i32, ptr %5, align 4
  br label %37

37:                                               ; preds = %56, %34
  %.lcssa711 = phi i32 [ %.lcssa7, %56 ], [ %.promoted10, %34 ]
  %38 = phi i32 [ %57, %56 ], [ %.promoted8, %34 ]
  %39 = icmp slt i32 %38, 2000
  br i1 %39, label %40, label %58

40:                                               ; preds = %37
  %41 = sext i32 %38 to i64
  %42 = getelementptr inbounds ptr, ptr %35, i64 %41
  br label %43

43:                                               ; preds = %46, %40
  %44 = phi i32 [ %55, %46 ], [ 0, %40 ]
  %45 = icmp slt i32 %44, 2000
  br i1 %45, label %46, label %56

46:                                               ; preds = %43
  %47 = load ptr, ptr %42, align 8
  %48 = sext i32 %44 to i64
  %49 = getelementptr inbounds double, ptr %47, i64 %48
  %50 = load double, ptr %49, align 8
  %51 = sext i32 %44 to i64
  %52 = getelementptr inbounds double, ptr %36, i64 %51
  %53 = load double, ptr %52, align 8
  %54 = fadd double %53, %50
  store double %54, ptr %52, align 8
  %55 = add nsw i32 %44, 1
  br label %43, !llvm.loop !11

56:                                               ; preds = %43
  %.lcssa7 = phi i32 [ %44, %43 ]
  %57 = add nsw i32 %38, 1
  br label %37, !llvm.loop !12

58:                                               ; preds = %37
  %.lcssa711.lcssa = phi i32 [ %.lcssa711, %37 ]
  %.lcssa9 = phi i32 [ %38, %37 ]
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
  br label %83

17:                                               ; preds = %4
  %18 = load i32, ptr %5, align 4
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i32 0, ptr %13, align 4
  br label %83

21:                                               ; preds = %17
  %22 = load i32, ptr %8, align 4
  %23 = icmp ne i32 %22, 1
  br i1 %23, label %24, label %56

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

37:                                               ; preds = %44, %24
  %38 = phi i32 [ %51, %44 ], [ %.promoted15, %24 ]
  %39 = phi double [ %52, %44 ], [ %.promoted13, %24 ]
  %40 = phi double [ %49, %44 ], [ %.promoted11, %24 ]
  %41 = phi i32 [ %53, %44 ], [ %.promoted9, %24 ]
  %42 = phi i32 [ %54, %44 ], [ %.promoted7, %24 ]
  %43 = icmp slt i32 %42, %33
  br i1 %43, label %44, label %55

44:                                               ; preds = %37
  %45 = add nsw i32 %41, %35
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds double, ptr %34, i64 %46
  %48 = load double, ptr %47, align 8
  %49 = call double @llvm.fabs.f64(double %48)
  %50 = fcmp ogt double %49, %39
  %51 = select i1 %50, i32 %42, i32 %38
  %52 = select i1 %50, double %49, double %39
  %53 = add nsw i32 %41, %36
  %54 = add nsw i32 %42, 1
  br label %37, !llvm.loop !13

55:                                               ; preds = %37
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
  br label %83

56:                                               ; preds = %21
  store i32 0, ptr %13, align 4
  %57 = load ptr, ptr %6, align 8
  %58 = load i32, ptr %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds double, ptr %57, i64 %59
  %61 = load double, ptr %60, align 8
  %62 = call double @llvm.fabs.f64(double %61)
  store double %62, ptr %9, align 8
  store i32 1, ptr %11, align 4
  %63 = load i32, ptr %5, align 4
  %64 = load ptr, ptr %6, align 8
  %65 = load i32, ptr %7, align 4
  %.promoted = load i32, ptr %11, align 4
  %.promoted1 = load double, ptr %10, align 8
  %.promoted3 = load double, ptr %9, align 8
  %.promoted5 = load i32, ptr %13, align 1
  br label %66

66:                                               ; preds = %72, %56
  %67 = phi i32 [ %79, %72 ], [ %.promoted5, %56 ]
  %68 = phi double [ %80, %72 ], [ %.promoted3, %56 ]
  %69 = phi double [ %77, %72 ], [ %.promoted1, %56 ]
  %70 = phi i32 [ %81, %72 ], [ %.promoted, %56 ]
  %71 = icmp slt i32 %70, %63
  br i1 %71, label %72, label %82

72:                                               ; preds = %66
  %73 = add nsw i32 %70, %65
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds double, ptr %64, i64 %74
  %76 = load double, ptr %75, align 8
  %77 = call double @llvm.fabs.f64(double %76)
  %78 = fcmp ogt double %77, %68
  %79 = select i1 %78, i32 %70, i32 %67
  %80 = select i1 %78, double %77, double %68
  %81 = add nsw i32 %70, 1
  br label %66, !llvm.loop !14

82:                                               ; preds = %66
  %.lcssa6 = phi i32 [ %67, %66 ]
  %.lcssa4 = phi double [ %68, %66 ]
  %.lcssa2 = phi double [ %69, %66 ]
  %.lcssa = phi i32 [ %70, %66 ]
  store i32 %.lcssa, ptr %11, align 4
  store double %.lcssa2, ptr %10, align 8
  store double %.lcssa4, ptr %9, align 8
  store i32 %.lcssa6, ptr %13, align 1
  br label %83

83:                                               ; preds = %20, %82, %55, %16
  %84 = load i32, ptr %13, align 4
  ret i32 %84
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
  %16 = load i32, ptr %10, align 4
  %17 = icmp ne i32 %16, 1
  br i1 %17, label %18, label %38

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

27:                                               ; preds = %30, %18
  %28 = phi i32 [ %36, %30 ], [ %.promoted1, %18 ]
  %29 = icmp slt i32 %28, %22
  br i1 %29, label %30, label %37

30:                                               ; preds = %27
  %31 = add nsw i32 %28, %25
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds double, ptr %24, i64 %32
  %34 = load double, ptr %33, align 8
  %35 = fmul double %34, %23
  store double %35, ptr %33, align 8
  %36 = add nsw i32 %28, %26
  br label %27, !llvm.loop !15

37:                                               ; preds = %27
  %.lcssa2 = phi i32 [ %28, %27 ]
  store i32 %.lcssa2, ptr %11, align 4
  br label %54

38:                                               ; preds = %15
  store i32 0, ptr %11, align 4
  %39 = load i32, ptr %6, align 4
  %40 = load double, ptr %7, align 8
  %41 = load ptr, ptr %8, align 8
  %42 = load i32, ptr %9, align 4
  %.promoted = load i32, ptr %11, align 4
  br label %43

43:                                               ; preds = %46, %38
  %44 = phi i32 [ %52, %46 ], [ %.promoted, %38 ]
  %45 = icmp slt i32 %44, %39
  br i1 %45, label %46, label %53

46:                                               ; preds = %43
  %47 = add nsw i32 %44, %42
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds double, ptr %41, i64 %48
  %50 = load double, ptr %49, align 8
  %51 = fmul double %50, %40
  store double %51, ptr %49, align 8
  %52 = add nsw i32 %44, 1
  br label %43, !llvm.loop !16

53:                                               ; preds = %43
  %.lcssa = phi i32 [ %44, %43 ]
  store i32 %.lcssa, ptr %11, align 4
  br label %54

54:                                               ; preds = %37, %53, %5
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
  %22 = load double, ptr %10, align 8
  %23 = fcmp une double %22, 0.000000e+00
  %or.cond = select i1 %21, i1 %23, i1 false
  br i1 %or.cond, label %24, label %95

24:                                               ; preds = %8
  %25 = load i32, ptr %13, align 4
  %26 = icmp ne i32 %25, 1
  %27 = load i32, ptr %16, align 4
  %28 = icmp ne i32 %27, 1
  %or.cond9 = select i1 %26, i1 true, i1 %28
  br i1 %or.cond9, label %29, label %73

29:                                               ; preds = %24
  store i32 0, ptr %18, align 4
  store i32 0, ptr %19, align 4
  %30 = load i32, ptr %13, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = load i32, ptr %9, align 4
  %34 = sub nsw i32 1, %33
  %35 = load i32, ptr %13, align 4
  %36 = mul nsw i32 %34, %35
  store i32 %36, ptr %18, align 4
  br label %37

37:                                               ; preds = %32, %29
  %38 = load i32, ptr %16, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = load i32, ptr %9, align 4
  %42 = sub nsw i32 1, %41
  %43 = load i32, ptr %16, align 4
  %44 = mul nsw i32 %42, %43
  store i32 %44, ptr %19, align 4
  br label %45

45:                                               ; preds = %40, %37
  store i32 0, ptr %17, align 4
  %46 = load i32, ptr %9, align 4
  %47 = load double, ptr %10, align 8
  %48 = load ptr, ptr %11, align 8
  %49 = load i32, ptr %12, align 4
  %50 = load ptr, ptr %14, align 8
  %51 = load i32, ptr %15, align 4
  %52 = load i32, ptr %13, align 4
  %53 = load i32, ptr %16, align 4
  %.promoted1 = load i32, ptr %17, align 4
  %.promoted3 = load i32, ptr %18, align 4
  %.promoted5 = load i32, ptr %19, align 4
  br label %54

54:                                               ; preds = %59, %45
  %55 = phi i32 [ %70, %59 ], [ %.promoted5, %45 ]
  %56 = phi i32 [ %69, %59 ], [ %.promoted3, %45 ]
  %57 = phi i32 [ %71, %59 ], [ %.promoted1, %45 ]
  %58 = icmp slt i32 %57, %46
  br i1 %58, label %59, label %72

59:                                               ; preds = %54
  %60 = add nsw i32 %56, %49
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds double, ptr %48, i64 %61
  %63 = load double, ptr %62, align 8
  %64 = add nsw i32 %55, %51
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds double, ptr %50, i64 %65
  %67 = load double, ptr %66, align 8
  %68 = call double @llvm.fmuladd.f64(double %47, double %63, double %67)
  store double %68, ptr %66, align 8
  %69 = add nsw i32 %56, %52
  %70 = add nsw i32 %55, %53
  %71 = add nsw i32 %57, 1
  br label %54, !llvm.loop !17

72:                                               ; preds = %54
  %.lcssa6 = phi i32 [ %55, %54 ]
  %.lcssa4 = phi i32 [ %56, %54 ]
  %.lcssa2 = phi i32 [ %57, %54 ]
  store i32 %.lcssa2, ptr %17, align 4
  store i32 %.lcssa4, ptr %18, align 4
  store i32 %.lcssa6, ptr %19, align 4
  br label %95

73:                                               ; preds = %24
  store i32 0, ptr %17, align 4
  %74 = load i32, ptr %9, align 4
  %75 = load double, ptr %10, align 8
  %76 = load ptr, ptr %11, align 8
  %77 = load i32, ptr %12, align 4
  %78 = load ptr, ptr %14, align 8
  %79 = load i32, ptr %15, align 4
  %.promoted = load i32, ptr %17, align 4
  br label %80

80:                                               ; preds = %83, %73
  %81 = phi i32 [ %93, %83 ], [ %.promoted, %73 ]
  %82 = icmp slt i32 %81, %74
  br i1 %82, label %83, label %94

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
  %93 = add nsw i32 %81, 1
  br label %80, !llvm.loop !18

94:                                               ; preds = %80
  %.lcssa = phi i32 [ %81, %80 ]
  store i32 %.lcssa, ptr %17, align 4
  br label %95

95:                                               ; preds = %94, %72, %8
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
  br i1 %34, label %35, label %78

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

60:                                               ; preds = %76, %48
  %61 = phi double [ %70, %76 ], [ %52, %48 ]
  %62 = phi ptr [ %68, %76 ], [ %.lcssa220, %48 ]
  %63 = phi i32 [ %77, %76 ], [ %25, %48 ]
  %64 = icmp slt i32 %63, 2000
  br i1 %64, label %65, label %78

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
  %77 = add nsw i32 %63, 1
  br label %60, !llvm.loop !19

78:                                               ; preds = %21, %60
  %.lcssa219 = phi ptr [ %.lcssa220, %21 ], [ %62, %60 ]
  %.lcssa17 = phi i32 [ %.lcssa18, %21 ], [ %63, %60 ]
  %.lcssa414 = phi double [ %.lcssa415, %21 ], [ %61, %60 ]
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
  %16 = load ptr, ptr %6, align 8
  %17 = load ptr, ptr %4, align 8
  %18 = load ptr, ptr %6, align 8
  %.promoted = load i32, ptr %8, align 4
  %.promoted1 = load i32, ptr %10, align 4
  %.promoted3 = load double, ptr %7, align 8
  %.promoted5 = load i32, ptr %11, align 4
  br label %19

19:                                               ; preds = %41, %3
  %20 = phi i32 [ %42, %41 ], [ %.promoted5, %3 ]
  %21 = phi double [ %31, %41 ], [ %.promoted3, %3 ]
  %22 = phi i32 [ %28, %41 ], [ %.promoted1, %3 ]
  %23 = phi i32 [ %47, %41 ], [ %.promoted, %3 ]
  %24 = icmp slt i32 %23, 1999
  br i1 %24, label %25, label %48

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
  %47 = add nsw i32 %23, 1
  br label %19, !llvm.loop !21

48:                                               ; preds = %19
  %.lcssa6 = phi i32 [ %20, %19 ]
  %.lcssa4 = phi double [ %21, %19 ]
  %.lcssa2 = phi i32 [ %22, %19 ]
  %.lcssa = phi i32 [ %23, %19 ]
  store i32 %.lcssa, ptr %8, align 4
  store i32 %.lcssa2, ptr %10, align 4
  store double %.lcssa4, ptr %7, align 8
  store i32 %.lcssa6, ptr %11, align 4
  store i32 0, ptr %9, align 4
  %49 = load ptr, ptr %4, align 8
  %50 = load ptr, ptr %6, align 8
  %51 = load ptr, ptr %6, align 8
  %52 = load ptr, ptr %4, align 8
  %53 = load ptr, ptr %6, align 8
  %.promoted7 = load i32, ptr %9, align 4
  %.promoted9 = load i32, ptr %8, align 4
  %.promoted11 = load double, ptr %7, align 8
  br label %54

54:                                               ; preds = %59, %48
  %55 = phi double [ %75, %59 ], [ %.promoted11, %48 ]
  %56 = phi i32 [ %61, %59 ], [ %.promoted9, %48 ]
  %57 = phi i32 [ %79, %59 ], [ %.promoted7, %48 ]
  %58 = icmp slt i32 %57, 2000
  br i1 %58, label %59, label %80

59:                                               ; preds = %54
  %60 = add nsw i32 %57, 1
  %61 = sub nsw i32 2000, %60
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds ptr, ptr %49, i64 %62
  %64 = load ptr, ptr %63, align 8
  %65 = sext i32 %61 to i64
  %66 = getelementptr inbounds double, ptr %64, i64 %65
  %67 = load double, ptr %66, align 8
  %68 = sext i32 %61 to i64
  %69 = getelementptr inbounds double, ptr %50, i64 %68
  %70 = load double, ptr %69, align 8
  %71 = fdiv double %70, %67
  store double %71, ptr %69, align 8
  %72 = sext i32 %61 to i64
  %73 = getelementptr inbounds double, ptr %51, i64 %72
  %74 = load double, ptr %73, align 8
  %75 = fneg double %74
  %76 = sext i32 %61 to i64
  %77 = getelementptr inbounds ptr, ptr %52, i64 %76
  %78 = load ptr, ptr %77, align 8
  call void @daxpy(i32 noundef %61, double noundef %75, ptr noundef %78, i32 noundef 0, i32 noundef 1, ptr noundef %53, i32 noundef 0, i32 noundef 1)
  %79 = add nsw i32 %57, 1
  br label %54, !llvm.loop !22

80:                                               ; preds = %54
  %.lcssa12 = phi double [ %55, %54 ]
  %.lcssa10 = phi i32 [ %56, %54 ]
  %.lcssa8 = phi i32 [ %57, %54 ]
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
  br i1 %15, label %16, label %30

16:                                               ; preds = %2
  store i32 1, ptr %6, align 4
  %17 = load i32, ptr %4, align 4
  %18 = load ptr, ptr %5, align 8
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %.promoted = load i32, ptr %6, align 4
  br label %20

20:                                               ; preds = %28, %16
  %21 = phi i32 [ %29, %28 ], [ %.promoted, %16 ]
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
  br label %30

28:                                               ; preds = %23
  %29 = add nsw i32 %21, 1
  br label %20, !llvm.loop !23

.loopexit:                                        ; preds = %20
  %.lcssa = phi i32 [ %21, %20 ]
  store i32 %.lcssa, ptr %6, align 4
  br label %30

30:                                               ; preds = %27, %.loopexit, %2
  %31 = call ptr @malloc(i64 noundef 16000) #6
  store ptr %31, ptr %8, align 8
  store i32 0, ptr %6, align 4
  %32 = load ptr, ptr %8, align 8
  %.promoted2 = load i32, ptr %6, align 4
  br label %33

33:                                               ; preds = %36, %30
  %34 = phi i32 [ %40, %36 ], [ %.promoted2, %30 ]
  %35 = icmp slt i32 %34, 2000
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = call ptr @malloc(i64 noundef 16008) #6
  %38 = sext i32 %34 to i64
  %39 = getelementptr inbounds ptr, ptr %32, i64 %38
  store ptr %37, ptr %39, align 8
  %40 = add nsw i32 %34, 1
  br label %33, !llvm.loop !24

41:                                               ; preds = %33
  %.lcssa3 = phi i32 [ %34, %33 ]
  store i32 %.lcssa3, ptr %6, align 4
  %42 = call ptr @malloc(i64 noundef 16000) #6
  store ptr %42, ptr %9, align 8
  %43 = call ptr @malloc(i64 noundef 16000) #6
  store ptr %43, ptr %10, align 8
  %44 = call ptr @malloc(i64 noundef 8000) #6
  store ptr %44, ptr %11, align 8
  store double f0x41F3E5E475555555, ptr %12, align 8
  %45 = load ptr, ptr %8, align 8
  %46 = load ptr, ptr %9, align 8
  call void @matgen(ptr noundef %45, ptr noundef %46)
  %47 = load ptr, ptr %8, align 8
  %48 = load ptr, ptr %11, align 8
  call void @dgefa(ptr noundef %47, ptr noundef %48)
  %49 = load ptr, ptr %8, align 8
  %50 = load ptr, ptr %11, align 8
  %51 = load ptr, ptr %9, align 8
  call void @dgesl(ptr noundef %49, ptr noundef %50, ptr noundef %51)
  store double 0.000000e+00, ptr %13, align 8
  %52 = load ptr, ptr %11, align 8
  call void @free(ptr noundef %52)
  %53 = load ptr, ptr %10, align 8
  call void @free(ptr noundef %53)
  %54 = load ptr, ptr %9, align 8
  call void @free(ptr noundef %54)
  store i32 0, ptr %6, align 4
  %55 = load ptr, ptr %8, align 8
  %.promoted4 = load i32, ptr %6, align 4
  br label %56

56:                                               ; preds = %59, %41
  %57 = phi i32 [ %63, %59 ], [ %.promoted4, %41 ]
  %58 = icmp slt i32 %57, 2000
  br i1 %58, label %59, label %64

59:                                               ; preds = %56
  %60 = sext i32 %57 to i64
  %61 = getelementptr inbounds ptr, ptr %55, i64 %60
  %62 = load ptr, ptr %61, align 8
  call void @free(ptr noundef %62)
  %63 = add nsw i32 %57, 1
  br label %56, !llvm.loop !25

64:                                               ; preds = %56
  %.lcssa5 = phi i32 [ %57, %56 ]
  store i32 %.lcssa5, ptr %6, align 4
  %65 = load ptr, ptr %8, align 8
  call void @free(ptr noundef %65)
  %66 = load i8, ptr %7, align 1
  %67 = icmp ne i8 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %64
  %69 = call ptr @__acrt_iob_func(i32 noundef 1)
  %70 = load double, ptr %13, align 8
  %71 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %69, ptr noundef @.str.1, double noundef %70) #5
  br label %76

72:                                               ; preds = %64
  %73 = call ptr @__acrt_iob_func(i32 noundef 1)
  %74 = load double, ptr %13, align 8
  %75 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %73, ptr noundef @.str.2, double noundef %74) #5
  br label %76

76:                                               ; preds = %72, %68
  %77 = call ptr @__acrt_iob_func(i32 noundef 1)
  %78 = call i32 @fflush(ptr noundef %77)
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
