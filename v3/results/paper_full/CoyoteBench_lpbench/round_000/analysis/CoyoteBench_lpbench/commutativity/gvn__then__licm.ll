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
  %.promoted3 = load i32, ptr %6, align 4
  %.promoted = load i32, ptr %5, align 1
  br label %7

7:                                                ; preds = %26, %2
  %8 = phi i32 [ %27, %26 ], [ %.promoted, %2 ]
  %.lcssa24 = phi i32 [ %.lcssa2, %26 ], [ %.promoted3, %2 ]
  %9 = phi ptr [ %.lcssa, %26 ], [ %0, %2 ]
  %10 = phi i32 [ %27, %26 ], [ 0, %2 ]
  %11 = icmp slt i32 %10, 2000
  br i1 %11, label %12, label %28

12:                                               ; preds = %7
  %13 = sext i32 %10 to i64
  br label %14

14:                                               ; preds = %19, %12
  %15 = phi i32 [ %25, %19 ], [ 0, %12 ]
  %16 = phi i32 [ %25, %19 ], [ 0, %12 ]
  %17 = phi ptr [ %0, %19 ], [ %9, %12 ]
  %18 = icmp slt i32 %16, 2000
  br i1 %18, label %19, label %26

19:                                               ; preds = %14
  %20 = call double @random_double()
  %21 = sext i32 %16 to i64
  %22 = getelementptr inbounds ptr, ptr %0, i64 %21
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds double, ptr %23, i64 %13
  store double %20, ptr %24, align 8
  %25 = add nsw i32 %16, 1
  br label %14, !llvm.loop !7

26:                                               ; preds = %14
  %.lcssa2 = phi i32 [ %15, %14 ]
  %.lcssa = phi ptr [ %17, %14 ]
  %27 = add nsw i32 %10, 1
  br label %7, !llvm.loop !9

28:                                               ; preds = %7
  %.lcssa5 = phi i32 [ %8, %7 ]
  %.lcssa24.lcssa = phi i32 [ %.lcssa24, %7 ]
  %.lcssa1 = phi ptr [ %9, %7 ]
  store i32 %.lcssa24.lcssa, ptr %6, align 4
  store i32 %.lcssa5, ptr %5, align 1
  store i32 0, ptr %5, align 4
  br label %29

29:                                               ; preds = %33, %28
  %30 = phi i32 [ %36, %33 ], [ poison, %28 ]
  %31 = phi i32 [ %36, %33 ], [ 0, %28 ]
  %32 = icmp slt i32 %31, 2000
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = sext i32 %31 to i64
  %35 = getelementptr inbounds double, ptr %1, i64 %34
  store double 0.000000e+00, ptr %35, align 8
  %36 = add nsw i32 %31, 1
  br label %29, !llvm.loop !10

37:                                               ; preds = %29
  %.lcssa6 = phi i32 [ %30, %29 ]
  store i32 %.lcssa6, ptr %5, align 4
  store i32 0, ptr %6, align 4
  br label %38

38:                                               ; preds = %58, %37
  %39 = phi i32 [ %59, %58 ], [ poison, %37 ]
  %.lcssa78 = phi i32 [ %.lcssa7, %58 ], [ poison, %37 ]
  %40 = phi i32 [ %59, %58 ], [ 0, %37 ]
  %41 = icmp slt i32 %40, 2000
  br i1 %41, label %42, label %60

42:                                               ; preds = %38
  %43 = sext i32 %40 to i64
  %44 = getelementptr inbounds ptr, ptr %.lcssa1, i64 %43
  br label %45

45:                                               ; preds = %49, %42
  %46 = phi i32 [ %57, %49 ], [ poison, %42 ]
  %47 = phi i32 [ %57, %49 ], [ 0, %42 ]
  %48 = icmp slt i32 %47, 2000
  br i1 %48, label %49, label %58

49:                                               ; preds = %45
  %50 = load ptr, ptr %44, align 8
  %51 = sext i32 %47 to i64
  %52 = getelementptr inbounds double, ptr %50, i64 %51
  %53 = load double, ptr %52, align 8
  %54 = getelementptr inbounds double, ptr %1, i64 %51
  %55 = load double, ptr %54, align 8
  %56 = fadd double %55, %53
  store double %56, ptr %54, align 8
  %57 = add nsw i32 %47, 1
  br label %45, !llvm.loop !11

58:                                               ; preds = %45
  %.lcssa7 = phi i32 [ %46, %45 ]
  %59 = add nsw i32 %40, 1
  br label %38, !llvm.loop !12

60:                                               ; preds = %38
  %.lcssa9 = phi i32 [ %39, %38 ]
  %.lcssa78.lcssa = phi i32 [ %.lcssa78, %38 ]
  store i32 %.lcssa78.lcssa, ptr %5, align 4
  store i32 %.lcssa9, ptr %6, align 4
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
  br label %87

16:                                               ; preds = %4
  %17 = icmp eq i32 %0, 1
  br i1 %17, label %18, label %19

18:                                               ; preds = %16
  store i32 0, ptr %13, align 4
  br label %85

19:                                               ; preds = %16
  %20 = icmp ne i32 %3, 1
  br i1 %20, label %21, label %54

21:                                               ; preds = %19
  %22 = sext i32 %2 to i64
  %23 = getelementptr inbounds double, ptr %1, i64 %22
  %24 = load double, ptr %23, align 8
  %25 = call double @llvm.fabs.f64(double %24)
  store double %25, ptr %9, align 8
  %26 = add nsw i32 1, %3
  store i32 %26, ptr %12, align 4
  store i32 1, ptr %11, align 4
  %.promoted9 = load double, ptr %10, align 1
  %.promoted11 = load i32, ptr %13, align 1
  %.promoted13 = load double, ptr %9, align 1
  %.promoted15 = load i32, ptr %12, align 1
  %.promoted17 = load i32, ptr %11, align 1
  br label %27

27:                                               ; preds = %46, %21
  %28 = phi i32 [ %52, %46 ], [ %.promoted17, %21 ]
  %29 = phi i32 [ %51, %46 ], [ %.promoted15, %21 ]
  %30 = phi double [ %47, %46 ], [ %.promoted13, %21 ]
  %31 = phi i32 [ %48, %46 ], [ %.promoted11, %21 ]
  %32 = phi double [ %43, %46 ], [ %.promoted9, %21 ]
  %33 = phi i32 [ %49, %46 ], [ 0, %21 ]
  %34 = phi double [ %50, %46 ], [ %25, %21 ]
  %35 = phi i32 [ %51, %46 ], [ %26, %21 ]
  %36 = phi i32 [ %52, %46 ], [ 1, %21 ]
  %37 = icmp slt i32 %36, %0
  br i1 %37, label %38, label %53

38:                                               ; preds = %27
  %39 = add nsw i32 %35, %2
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds double, ptr %1, i64 %40
  %42 = load double, ptr %41, align 8
  %43 = call double @llvm.fabs.f64(double %42)
  %44 = fcmp ogt double %43, %34
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  br label %46

46:                                               ; preds = %45, %38
  %47 = phi double [ %43, %45 ], [ %30, %38 ]
  %48 = phi i32 [ %36, %45 ], [ %31, %38 ]
  %49 = phi i32 [ %36, %45 ], [ %33, %38 ]
  %50 = phi double [ %43, %45 ], [ %34, %38 ]
  %51 = add nsw i32 %35, %3
  %52 = add nsw i32 %36, 1
  br label %27, !llvm.loop !13

53:                                               ; preds = %27
  %.lcssa18 = phi i32 [ %28, %27 ]
  %.lcssa16 = phi i32 [ %29, %27 ]
  %.lcssa14 = phi double [ %30, %27 ]
  %.lcssa12 = phi i32 [ %31, %27 ]
  %.lcssa10 = phi double [ %32, %27 ]
  %.lcssa = phi i32 [ %33, %27 ]
  store double %.lcssa10, ptr %10, align 1
  store i32 %.lcssa12, ptr %13, align 1
  store double %.lcssa14, ptr %9, align 1
  store i32 %.lcssa16, ptr %12, align 1
  store i32 %.lcssa18, ptr %11, align 1
  br label %83

54:                                               ; preds = %19
  store i32 0, ptr %13, align 4
  %55 = sext i32 %2 to i64
  %56 = getelementptr inbounds double, ptr %1, i64 %55
  %57 = load double, ptr %56, align 8
  %58 = call double @llvm.fabs.f64(double %57)
  store double %58, ptr %9, align 8
  store i32 1, ptr %11, align 4
  %.promoted = load double, ptr %10, align 1
  %.promoted3 = load i32, ptr %13, align 1
  %.promoted5 = load double, ptr %9, align 1
  %.promoted7 = load i32, ptr %11, align 1
  br label %59

59:                                               ; preds = %76, %54
  %60 = phi i32 [ %81, %76 ], [ %.promoted7, %54 ]
  %61 = phi double [ %77, %76 ], [ %.promoted5, %54 ]
  %62 = phi i32 [ %78, %76 ], [ %.promoted3, %54 ]
  %63 = phi double [ %73, %76 ], [ %.promoted, %54 ]
  %64 = phi i32 [ %79, %76 ], [ 0, %54 ]
  %65 = phi double [ %80, %76 ], [ %58, %54 ]
  %66 = phi i32 [ %81, %76 ], [ 1, %54 ]
  %67 = icmp slt i32 %66, %0
  br i1 %67, label %68, label %82

68:                                               ; preds = %59
  %69 = add nsw i32 %66, %2
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds double, ptr %1, i64 %70
  %72 = load double, ptr %71, align 8
  %73 = call double @llvm.fabs.f64(double %72)
  %74 = fcmp ogt double %73, %65
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  br label %76

76:                                               ; preds = %75, %68
  %77 = phi double [ %73, %75 ], [ %61, %68 ]
  %78 = phi i32 [ %66, %75 ], [ %62, %68 ]
  %79 = phi i32 [ %66, %75 ], [ %64, %68 ]
  %80 = phi double [ %73, %75 ], [ %65, %68 ]
  %81 = add nsw i32 %66, 1
  br label %59, !llvm.loop !14

82:                                               ; preds = %59
  %.lcssa8 = phi i32 [ %60, %59 ]
  %.lcssa6 = phi double [ %61, %59 ]
  %.lcssa4 = phi i32 [ %62, %59 ]
  %.lcssa2 = phi double [ %63, %59 ]
  %.lcssa1 = phi i32 [ %64, %59 ]
  store double %.lcssa2, ptr %10, align 1
  store i32 %.lcssa4, ptr %13, align 1
  store double %.lcssa6, ptr %9, align 1
  store i32 %.lcssa8, ptr %11, align 1
  br label %83

83:                                               ; preds = %82, %53
  %84 = phi i32 [ %.lcssa1, %82 ], [ %.lcssa, %53 ]
  br label %85

85:                                               ; preds = %83, %18
  %86 = phi i32 [ %84, %83 ], [ 0, %18 ]
  br label %87

87:                                               ; preds = %85, %15
  %88 = phi i32 [ %86, %85 ], [ -1, %15 ]
  ret i32 %88
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
  br i1 %13, label %14, label %44

14:                                               ; preds = %5
  %15 = icmp ne i32 %4, 1
  br i1 %15, label %16, label %30

16:                                               ; preds = %14
  %17 = mul nsw i32 %0, %4
  store i32 %17, ptr %12, align 4
  store i32 0, ptr %11, align 4
  %.promoted1 = load i32, ptr %11, align 1
  br label %18

18:                                               ; preds = %22, %16
  %19 = phi i32 [ %28, %22 ], [ %.promoted1, %16 ]
  %20 = phi i32 [ %28, %22 ], [ 0, %16 ]
  %21 = icmp slt i32 %20, %17
  br i1 %21, label %22, label %29

22:                                               ; preds = %18
  %23 = add nsw i32 %20, %3
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds double, ptr %2, i64 %24
  %26 = load double, ptr %25, align 8
  %27 = fmul double %26, %1
  store double %27, ptr %25, align 8
  %28 = add nsw i32 %20, %4
  br label %18, !llvm.loop !15

29:                                               ; preds = %18
  %.lcssa2 = phi i32 [ %19, %18 ]
  store i32 %.lcssa2, ptr %11, align 1
  br label %43

30:                                               ; preds = %14
  store i32 0, ptr %11, align 4
  %.promoted = load i32, ptr %11, align 1
  br label %31

31:                                               ; preds = %35, %30
  %32 = phi i32 [ %41, %35 ], [ %.promoted, %30 ]
  %33 = phi i32 [ %41, %35 ], [ 0, %30 ]
  %34 = icmp slt i32 %33, %0
  br i1 %34, label %35, label %42

35:                                               ; preds = %31
  %36 = add nsw i32 %33, %3
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds double, ptr %2, i64 %37
  %39 = load double, ptr %38, align 8
  %40 = fmul double %39, %1
  store double %40, ptr %38, align 8
  %41 = add nsw i32 %33, 1
  br label %31, !llvm.loop !16

42:                                               ; preds = %31
  %.lcssa = phi i32 [ %32, %31 ]
  store i32 %.lcssa, ptr %11, align 1
  br label %43

43:                                               ; preds = %42, %29
  br label %44

44:                                               ; preds = %43, %5
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
  br i1 %20, label %21, label %79

21:                                               ; preds = %8
  %22 = fcmp une double %1, 0.000000e+00
  br i1 %22, label %23, label %79

23:                                               ; preds = %21
  %24 = icmp ne i32 %4, 1
  br i1 %24, label %27, label %25

25:                                               ; preds = %23
  %26 = icmp ne i32 %7, 1
  br i1 %26, label %27, label %62

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
  %.promoted1 = load i32, ptr %18, align 1
  %.promoted3 = load i32, ptr %19, align 1
  %.promoted5 = load i32, ptr %17, align 1
  br label %40

40:                                               ; preds = %48, %38
  %41 = phi i32 [ %60, %48 ], [ %.promoted5, %38 ]
  %42 = phi i32 [ %59, %48 ], [ %.promoted3, %38 ]
  %43 = phi i32 [ %58, %48 ], [ %.promoted1, %38 ]
  %44 = phi i32 [ %59, %48 ], [ %39, %38 ]
  %45 = phi i32 [ %58, %48 ], [ %33, %38 ]
  %46 = phi i32 [ %60, %48 ], [ 0, %38 ]
  %47 = icmp slt i32 %46, %0
  br i1 %47, label %48, label %61

48:                                               ; preds = %40
  %49 = add nsw i32 %45, %3
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds double, ptr %2, i64 %50
  %52 = load double, ptr %51, align 8
  %53 = add nsw i32 %44, %6
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds double, ptr %5, i64 %54
  %56 = load double, ptr %55, align 8
  %57 = call double @llvm.fmuladd.f64(double %1, double %52, double %56)
  store double %57, ptr %55, align 8
  %58 = add nsw i32 %45, %4
  %59 = add nsw i32 %44, %7
  %60 = add nsw i32 %46, 1
  br label %40, !llvm.loop !17

61:                                               ; preds = %40
  %.lcssa6 = phi i32 [ %41, %40 ]
  %.lcssa4 = phi i32 [ %42, %40 ]
  %.lcssa2 = phi i32 [ %43, %40 ]
  store i32 %.lcssa2, ptr %18, align 1
  store i32 %.lcssa4, ptr %19, align 1
  store i32 %.lcssa6, ptr %17, align 1
  br label %79

62:                                               ; preds = %25
  store i32 0, ptr %17, align 4
  %.promoted = load i32, ptr %17, align 1
  br label %63

63:                                               ; preds = %67, %62
  %64 = phi i32 [ %77, %67 ], [ %.promoted, %62 ]
  %65 = phi i32 [ %77, %67 ], [ 0, %62 ]
  %66 = icmp slt i32 %65, %0
  br i1 %66, label %67, label %78

67:                                               ; preds = %63
  %68 = add nsw i32 %65, %3
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds double, ptr %2, i64 %69
  %71 = load double, ptr %70, align 8
  %72 = add nsw i32 %65, %6
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds double, ptr %5, i64 %73
  %75 = load double, ptr %74, align 8
  %76 = call double @llvm.fmuladd.f64(double %1, double %71, double %75)
  store double %76, ptr %74, align 8
  %77 = add nsw i32 %65, 1
  br label %63, !llvm.loop !18

78:                                               ; preds = %63
  %.lcssa = phi i32 [ %64, %63 ]
  store i32 %.lcssa, ptr %17, align 1
  br label %79

79:                                               ; preds = %78, %61, %21, %8
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
  %.promoted9 = load i32, ptr %10, align 1
  %.promoted12 = load i32, ptr %7, align 1
  %.promoted15 = load ptr, ptr %11, align 1
  %.promoted = load i32, ptr %6, align 1
  br label %12

12:                                               ; preds = %70, %2
  %.pre-phi18 = phi i32 [ %.pre-phi, %70 ], [ %.promoted, %2 ]
  %.lcssa317 = phi ptr [ %.lcssa316, %70 ], [ %.promoted15, %2 ]
  %.lcssa714 = phi i32 [ %.lcssa713, %70 ], [ %.promoted12, %2 ]
  %13 = phi i32 [ %25, %70 ], [ %.promoted9, %2 ]
  %14 = phi i32 [ %22, %70 ], [ poison, %2 ]
  %15 = phi ptr [ %71, %70 ], [ %0, %2 ]
  %16 = phi i32 [ %.pre-phi, %70 ], [ 0, %2 ]
  %17 = icmp slt i32 %16, 1999
  br i1 %17, label %18, label %72

18:                                               ; preds = %12
  %19 = sext i32 %16 to i64
  %20 = getelementptr inbounds ptr, ptr %15, i64 %19
  %21 = load ptr, ptr %20, align 8
  store ptr %21, ptr %8, align 8
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
  br i1 %30, label %31, label %70

31:                                               ; preds = %18
  %32 = icmp ne i32 %25, %16
  br i1 %32, label %33, label %._crit_edge

._crit_edge:                                      ; preds = %31
  %.phi.trans.insert = getelementptr inbounds double, ptr %21, i64 %19
  %.pre = load double, ptr %.phi.trans.insert, align 8
  br label %36

33:                                               ; preds = %31
  store double %29, ptr %5, align 8
  %34 = getelementptr inbounds double, ptr %21, i64 %19
  %35 = load double, ptr %34, align 8
  store double %35, ptr %28, align 8
  store double %29, ptr %34, align 8
  br label %36

36:                                               ; preds = %._crit_edge, %33
  %37 = phi double [ %.pre, %._crit_edge ], [ %29, %33 ]
  %38 = fdiv double -1.000000e+00, %37
  store double %38, ptr %5, align 8
  %39 = sub nsw i32 2000, %22
  call void @dscal(i32 noundef %39, double noundef %38, ptr noundef %21, i32 noundef %22, i32 noundef 1)
  br label %40

40:                                               ; preds = %64, %36
  %41 = phi i32 [ %68, %64 ], [ %22, %36 ]
  %42 = phi double [ %56, %64 ], [ %38, %36 ]
  %43 = phi ptr [ %53, %64 ], [ %.lcssa317, %36 ]
  %44 = phi i32 [ %65, %64 ], [ %16, %36 ]
  %45 = phi i32 [ %66, %64 ], [ %16, %36 ]
  %46 = phi i32 [ %67, %64 ], [ %25, %36 ]
  %47 = phi i32 [ %68, %64 ], [ %22, %36 ]
  %48 = phi ptr [ %0, %64 ], [ %15, %36 ]
  %49 = icmp slt i32 %47, 2000
  br i1 %49, label %50, label %69

50:                                               ; preds = %40
  %51 = sext i32 %47 to i64
  %52 = getelementptr inbounds ptr, ptr %0, i64 %51
  %53 = load ptr, ptr %52, align 8
  %54 = sext i32 %46 to i64
  %55 = getelementptr inbounds double, ptr %53, i64 %54
  %56 = load double, ptr %55, align 8
  %57 = icmp ne i32 %46, %45
  br i1 %57, label %58, label %64

58:                                               ; preds = %50
  %59 = sext i32 %44 to i64
  %60 = getelementptr inbounds double, ptr %53, i64 %59
  %61 = load double, ptr %60, align 8
  %62 = getelementptr inbounds double, ptr %53, i64 %27
  store double %61, ptr %62, align 8
  %63 = getelementptr inbounds double, ptr %53, i64 %19
  store double %56, ptr %63, align 8
  br label %64

64:                                               ; preds = %58, %50
  %65 = phi i32 [ %16, %58 ], [ %44, %50 ]
  %66 = phi i32 [ %16, %58 ], [ %45, %50 ]
  %67 = phi i32 [ %25, %58 ], [ %45, %50 ]
  call void @daxpy(i32 noundef %39, double noundef %56, ptr noundef %21, i32 noundef %22, i32 noundef 1, ptr noundef %53, i32 noundef %22, i32 noundef 1)
  %68 = add nsw i32 %47, 1
  br label %40, !llvm.loop !19

69:                                               ; preds = %40
  %.lcssa7 = phi i32 [ %41, %40 ]
  %.lcssa5 = phi double [ %42, %40 ]
  %.lcssa3 = phi ptr [ %43, %40 ]
  %.lcssa2 = phi i32 [ %45, %40 ]
  %.lcssa = phi ptr [ %48, %40 ]
  store ptr %.lcssa3, ptr %11, align 1
  store double %.lcssa5, ptr %5, align 1
  %.pre1 = add nsw i32 %.lcssa2, 1
  br label %70

70:                                               ; preds = %69, %18
  %.lcssa316 = phi ptr [ %.lcssa3, %69 ], [ %.lcssa317, %18 ]
  %.lcssa713 = phi i32 [ %.lcssa7, %69 ], [ %.lcssa714, %18 ]
  %.pre-phi = phi i32 [ %.pre1, %69 ], [ %22, %18 ]
  %71 = phi ptr [ %.lcssa, %69 ], [ %15, %18 ]
  br label %12, !llvm.loop !20

72:                                               ; preds = %12
  %.pre-phi18.lcssa = phi i32 [ %.pre-phi18, %12 ]
  %.lcssa714.lcssa = phi i32 [ %.lcssa714, %12 ]
  %.lcssa10 = phi i32 [ %13, %12 ]
  %.lcssa8 = phi i32 [ %14, %12 ]
  store i32 %.lcssa8, ptr %9, align 4
  store i32 %.lcssa10, ptr %10, align 1
  store i32 %.lcssa714.lcssa, ptr %7, align 1
  store i32 %.pre-phi18.lcssa, ptr %6, align 1
  %73 = getelementptr inbounds i32, ptr %1, i64 1999
  store i32 1999, ptr %73, align 4
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
  %.promoted = load i32, ptr %8, align 1
  br label %12

12:                                               ; preds = %30, %3
  %13 = phi i32 [ %31, %30 ], [ %.promoted, %3 ]
  %14 = phi i32 [ %31, %30 ], [ poison, %3 ]
  %15 = phi double [ %25, %30 ], [ poison, %3 ]
  %16 = phi i32 [ %22, %30 ], [ poison, %3 ]
  %17 = phi i32 [ %31, %30 ], [ 0, %3 ]
  %18 = icmp slt i32 %17, 1999
  br i1 %18, label %19, label %35

19:                                               ; preds = %12
  %20 = sext i32 %17 to i64
  %21 = getelementptr inbounds i32, ptr %1, i64 %20
  %22 = load i32, ptr %21, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds double, ptr %2, i64 %23
  %25 = load double, ptr %24, align 8
  %26 = icmp ne i32 %22, %17
  br i1 %26, label %27, label %30

27:                                               ; preds = %19
  %28 = getelementptr inbounds double, ptr %2, i64 %20
  %29 = load double, ptr %28, align 8
  store double %29, ptr %24, align 8
  store double %25, ptr %28, align 8
  br label %30

30:                                               ; preds = %27, %19
  %31 = add nsw i32 %17, 1
  %32 = sub nsw i32 2000, %31
  %33 = getelementptr inbounds ptr, ptr %0, i64 %20
  %34 = load ptr, ptr %33, align 8
  call void @daxpy(i32 noundef %32, double noundef %25, ptr noundef %34, i32 noundef %31, i32 noundef 1, ptr noundef %2, i32 noundef %31, i32 noundef 1)
  br label %12, !llvm.loop !21

35:                                               ; preds = %12
  %.lcssa3 = phi i32 [ %13, %12 ]
  %.lcssa2 = phi i32 [ %14, %12 ]
  %.lcssa1 = phi double [ %15, %12 ]
  %.lcssa = phi i32 [ %16, %12 ]
  store i32 %.lcssa, ptr %10, align 4
  store double %.lcssa1, ptr %7, align 8
  store i32 %.lcssa2, ptr %11, align 4
  store i32 %.lcssa3, ptr %8, align 1
  store i32 0, ptr %9, align 4
  %36 = load ptr, ptr %6, align 8
  %37 = load ptr, ptr %4, align 8
  %.promoted6 = load i32, ptr %9, align 1
  br label %38

38:                                               ; preds = %46, %35
  %39 = phi i32 [ %47, %46 ], [ %.promoted6, %35 ]
  %40 = phi double [ %59, %46 ], [ poison, %35 ]
  %41 = phi i32 [ %48, %46 ], [ poison, %35 ]
  %42 = phi ptr [ %36, %46 ], [ %2, %35 ]
  %43 = phi ptr [ %37, %46 ], [ %0, %35 ]
  %44 = phi i32 [ %47, %46 ], [ 0, %35 ]
  %45 = icmp slt i32 %44, 2000
  br i1 %45, label %46, label %62

46:                                               ; preds = %38
  %47 = add nsw i32 %44, 1
  %48 = sub nsw i32 2000, %47
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds ptr, ptr %43, i64 %49
  %51 = load ptr, ptr %50, align 8
  %52 = getelementptr inbounds double, ptr %51, i64 %49
  %53 = load double, ptr %52, align 8
  %54 = getelementptr inbounds double, ptr %42, i64 %49
  %55 = load double, ptr %54, align 8
  %56 = fdiv double %55, %53
  store double %56, ptr %54, align 8
  %57 = getelementptr inbounds double, ptr %36, i64 %49
  %58 = load double, ptr %57, align 8
  %59 = fneg double %58
  %60 = getelementptr inbounds ptr, ptr %37, i64 %49
  %61 = load ptr, ptr %60, align 8
  call void @daxpy(i32 noundef %48, double noundef %59, ptr noundef %61, i32 noundef 0, i32 noundef 1, ptr noundef %36, i32 noundef 0, i32 noundef 1)
  br label %38, !llvm.loop !22

62:                                               ; preds = %38
  %.lcssa7 = phi i32 [ %39, %38 ]
  %.lcssa5 = phi double [ %40, %38 ]
  %.lcssa4 = phi i32 [ %41, %38 ]
  store i32 %.lcssa4, ptr %8, align 4
  store double %.lcssa5, ptr %7, align 8
  store i32 %.lcssa7, ptr %9, align 1
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
  %.promoted = load i32, ptr %6, align 1
  br label %17

17:                                               ; preds = %26, %15
  %18 = phi i32 [ %27, %26 ], [ %.promoted, %15 ]
  %19 = phi i32 [ %27, %26 ], [ 1, %15 ]
  %20 = icmp slt i32 %19, %0
  br i1 %20, label %21, label %.loopexit

21:                                               ; preds = %17
  %22 = load ptr, ptr %16, align 8
  %23 = call i32 @strcmp(ptr noundef %22, ptr noundef @.str) #5
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  %.lcssa1 = phi i32 [ %18, %21 ]
  store i32 %.lcssa1, ptr %6, align 1
  store i8 1, ptr %7, align 1
  br label %28

26:                                               ; preds = %21
  %27 = add nsw i32 %19, 1
  br label %17, !llvm.loop !23

.loopexit:                                        ; preds = %17
  %.lcssa = phi i32 [ %18, %17 ]
  store i32 %.lcssa, ptr %6, align 1
  br label %28

28:                                               ; preds = %.loopexit, %25
  br label %29

29:                                               ; preds = %28, %2
  %30 = call ptr @malloc(i64 noundef 16000) #6
  store ptr %30, ptr %8, align 8
  store i32 0, ptr %6, align 4
  %.promoted2 = load i32, ptr %6, align 1
  br label %31

31:                                               ; preds = %35, %29
  %32 = phi i32 [ %39, %35 ], [ %.promoted2, %29 ]
  %33 = phi i32 [ %39, %35 ], [ 0, %29 ]
  %34 = icmp slt i32 %33, 2000
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  %36 = call ptr @malloc(i64 noundef 16008) #6
  %37 = sext i32 %33 to i64
  %38 = getelementptr inbounds ptr, ptr %30, i64 %37
  store ptr %36, ptr %38, align 8
  %39 = add nsw i32 %33, 1
  br label %31, !llvm.loop !24

40:                                               ; preds = %31
  %.lcssa3 = phi i32 [ %32, %31 ]
  store i32 %.lcssa3, ptr %6, align 1
  %41 = call ptr @malloc(i64 noundef 16000) #6
  store ptr %41, ptr %9, align 8
  %42 = call ptr @malloc(i64 noundef 16000) #6
  store ptr %42, ptr %10, align 8
  %43 = call ptr @malloc(i64 noundef 8000) #6
  store ptr %43, ptr %11, align 8
  store double f0x41F3E5E475555555, ptr %12, align 8
  call void @matgen(ptr noundef %30, ptr noundef %41)
  call void @dgefa(ptr noundef %30, ptr noundef %43)
  call void @dgesl(ptr noundef %30, ptr noundef %43, ptr noundef %41)
  store double 0.000000e+00, ptr %13, align 8
  call void @free(ptr noundef %43)
  call void @free(ptr noundef %42)
  call void @free(ptr noundef %41)
  store i32 0, ptr %6, align 4
  %.promoted4 = load i32, ptr %6, align 1
  br label %44

44:                                               ; preds = %48, %40
  %45 = phi i32 [ %52, %48 ], [ %.promoted4, %40 ]
  %46 = phi i32 [ %52, %48 ], [ 0, %40 ]
  %47 = icmp slt i32 %46, 2000
  br i1 %47, label %48, label %53

48:                                               ; preds = %44
  %49 = sext i32 %46 to i64
  %50 = getelementptr inbounds ptr, ptr %30, i64 %49
  %51 = load ptr, ptr %50, align 8
  call void @free(ptr noundef %51)
  %52 = add nsw i32 %46, 1
  br label %44, !llvm.loop !25

53:                                               ; preds = %44
  %.lcssa5 = phi i32 [ %45, %44 ]
  store i32 %.lcssa5, ptr %6, align 1
  call void @free(ptr noundef %30)
  %54 = load i8, ptr %7, align 1
  %55 = icmp ne i8 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = call ptr @__acrt_iob_func(i32 noundef 1)
  %58 = load double, ptr %13, align 8
  %59 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %57, ptr noundef @.str.1, double noundef %58) #5
  br label %64

60:                                               ; preds = %53
  %61 = call ptr @__acrt_iob_func(i32 noundef 1)
  %62 = load double, ptr %13, align 8
  %63 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %61, ptr noundef @.str.2, double noundef %62) #5
  br label %64

64:                                               ; preds = %60, %56
  %65 = call ptr @__acrt_iob_func(i32 noundef 1)
  %66 = call i32 @fflush(ptr noundef %65)
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
