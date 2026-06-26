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

7:                                                ; preds = %28, %2
  %8 = load i32, ptr %5, align 4
  %9 = icmp slt i32 %8, 2000
  br i1 %9, label %10, label %31

10:                                               ; preds = %7
  store i32 0, ptr %6, align 4
  br label %11

11:                                               ; preds = %24, %10
  %12 = load i32, ptr %6, align 4
  %13 = icmp slt i32 %12, 2000
  br i1 %13, label %14, label %27

14:                                               ; preds = %11
  %15 = call double @random_double()
  %16 = load ptr, ptr %3, align 8
  %17 = load i32, ptr %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds ptr, ptr %16, i64 %18
  %20 = load ptr, ptr %19, align 8
  %21 = load i32, ptr %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds double, ptr %20, i64 %22
  store double %15, ptr %23, align 8
  br label %24

24:                                               ; preds = %14
  %25 = load i32, ptr %6, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, ptr %6, align 4
  br label %11, !llvm.loop !7

27:                                               ; preds = %11
  br label %28

28:                                               ; preds = %27
  %29 = load i32, ptr %5, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, ptr %5, align 4
  br label %7, !llvm.loop !9

31:                                               ; preds = %7
  store i32 0, ptr %5, align 4
  br label %32

32:                                               ; preds = %39, %31
  %33 = load i32, ptr %5, align 4
  %34 = icmp slt i32 %33, 2000
  br i1 %34, label %35, label %42

35:                                               ; preds = %32
  %36 = load ptr, ptr %4, align 8
  %37 = sext i32 %33 to i64
  %38 = getelementptr inbounds double, ptr %36, i64 %37
  store double 0.000000e+00, ptr %38, align 8
  br label %39

39:                                               ; preds = %35
  %40 = load i32, ptr %5, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, ptr %5, align 4
  br label %32, !llvm.loop !10

42:                                               ; preds = %32
  store i32 0, ptr %6, align 4
  br label %43

43:                                               ; preds = %67, %42
  %44 = load i32, ptr %6, align 4
  %45 = icmp slt i32 %44, 2000
  br i1 %45, label %46, label %70

46:                                               ; preds = %43
  store i32 0, ptr %5, align 4
  br label %47

47:                                               ; preds = %63, %46
  %48 = load i32, ptr %5, align 4
  %49 = icmp slt i32 %48, 2000
  br i1 %49, label %50, label %66

50:                                               ; preds = %47
  %51 = load ptr, ptr %3, align 8
  %52 = load i32, ptr %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds ptr, ptr %51, i64 %53
  %55 = load ptr, ptr %54, align 8
  %56 = sext i32 %48 to i64
  %57 = getelementptr inbounds double, ptr %55, i64 %56
  %58 = load double, ptr %57, align 8
  %59 = load ptr, ptr %4, align 8
  %60 = getelementptr inbounds double, ptr %59, i64 %56
  %61 = load double, ptr %60, align 8
  %62 = fadd double %58, %61
  store double %62, ptr %60, align 8
  br label %63

63:                                               ; preds = %50
  %64 = load i32, ptr %5, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, ptr %5, align 4
  br label %47, !llvm.loop !11

66:                                               ; preds = %47
  br label %67

67:                                               ; preds = %66
  %68 = load i32, ptr %6, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, ptr %6, align 4
  br label %43, !llvm.loop !12

70:                                               ; preds = %43
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
  br label %89

17:                                               ; preds = %4
  %18 = icmp eq i32 %14, 1
  br i1 %18, label %19, label %20

19:                                               ; preds = %17
  store i32 0, ptr %13, align 4
  br label %88

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
  %31 = add nsw i32 %30, 1
  store i32 %31, ptr %12, align 4
  store i32 1, ptr %11, align 4
  br label %32

32:                                               ; preds = %54, %23
  %33 = load i32, ptr %11, align 4
  %34 = load i32, ptr %5, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %57

36:                                               ; preds = %32
  %37 = load ptr, ptr %6, align 8
  %38 = load i32, ptr %12, align 4
  %39 = load i32, ptr %7, align 4
  %40 = add nsw i32 %39, %38
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds double, ptr %37, i64 %41
  %43 = load double, ptr %42, align 8
  %44 = call double @llvm.fabs.f64(double %43)
  store double %44, ptr %10, align 8
  %45 = load double, ptr %9, align 8
  %46 = fcmp ogt double %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %36
  %48 = load i32, ptr %11, align 4
  store i32 %48, ptr %13, align 4
  %49 = load double, ptr %10, align 8
  store double %49, ptr %9, align 8
  br label %50

50:                                               ; preds = %47, %36
  %51 = load i32, ptr %8, align 4
  %52 = load i32, ptr %12, align 4
  %53 = add nsw i32 %52, %51
  store i32 %53, ptr %12, align 4
  br label %54

54:                                               ; preds = %50
  %55 = load i32, ptr %11, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, ptr %11, align 4
  br label %32, !llvm.loop !13

57:                                               ; preds = %32
  br label %87

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
  br label %65

65:                                               ; preds = %83, %58
  %66 = load i32, ptr %11, align 4
  %67 = load i32, ptr %5, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %86

69:                                               ; preds = %65
  %70 = load ptr, ptr %6, align 8
  %71 = load i32, ptr %7, align 4
  %72 = add nsw i32 %71, %66
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds double, ptr %70, i64 %73
  %75 = load double, ptr %74, align 8
  %76 = call double @llvm.fabs.f64(double %75)
  store double %76, ptr %10, align 8
  %77 = load double, ptr %9, align 8
  %78 = fcmp ogt double %76, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %69
  %80 = load i32, ptr %11, align 4
  store i32 %80, ptr %13, align 4
  %81 = load double, ptr %10, align 8
  store double %81, ptr %9, align 8
  br label %82

82:                                               ; preds = %79, %69
  br label %83

83:                                               ; preds = %82
  %84 = load i32, ptr %11, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, ptr %11, align 4
  br label %65, !llvm.loop !14

86:                                               ; preds = %65
  br label %87

87:                                               ; preds = %86, %57
  br label %88

88:                                               ; preds = %87, %19
  br label %89

89:                                               ; preds = %88, %16
  %90 = load i32, ptr %13, align 4
  ret i32 %90
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
  br i1 %14, label %15, label %56

15:                                               ; preds = %5
  %16 = icmp ne i32 %4, 1
  br i1 %16, label %17, label %37

17:                                               ; preds = %15
  %18 = mul nsw i32 %13, %4
  store i32 %18, ptr %12, align 4
  store i32 0, ptr %11, align 4
  br label %19

19:                                               ; preds = %32, %17
  %20 = load i32, ptr %11, align 4
  %21 = load i32, ptr %12, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %36

23:                                               ; preds = %19
  %24 = load double, ptr %7, align 8
  %25 = load ptr, ptr %8, align 8
  %26 = load i32, ptr %9, align 4
  %27 = add nsw i32 %26, %20
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds double, ptr %25, i64 %28
  %30 = load double, ptr %29, align 8
  %31 = fmul double %24, %30
  store double %31, ptr %29, align 8
  br label %32

32:                                               ; preds = %23
  %33 = load i32, ptr %10, align 4
  %34 = load i32, ptr %11, align 4
  %35 = add nsw i32 %34, %33
  store i32 %35, ptr %11, align 4
  br label %19, !llvm.loop !15

36:                                               ; preds = %19
  br label %55

37:                                               ; preds = %15
  store i32 0, ptr %11, align 4
  br label %38

38:                                               ; preds = %51, %37
  %39 = load i32, ptr %11, align 4
  %40 = load i32, ptr %6, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %54

42:                                               ; preds = %38
  %43 = load double, ptr %7, align 8
  %44 = load ptr, ptr %8, align 8
  %45 = load i32, ptr %9, align 4
  %46 = add nsw i32 %45, %39
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds double, ptr %44, i64 %47
  %49 = load double, ptr %48, align 8
  %50 = fmul double %43, %49
  store double %50, ptr %48, align 8
  br label %51

51:                                               ; preds = %42
  %52 = load i32, ptr %11, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, ptr %11, align 4
  br label %38, !llvm.loop !16

54:                                               ; preds = %38
  br label %55

55:                                               ; preds = %54, %36
  br label %56

56:                                               ; preds = %55, %5
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
  br i1 %21, label %22, label %101

22:                                               ; preds = %8
  %23 = load double, ptr %10, align 8
  %24 = fcmp une double %23, 0.000000e+00
  br i1 %24, label %25, label %101

25:                                               ; preds = %22
  %26 = load i32, ptr %13, align 4
  %27 = icmp ne i32 %26, 1
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  %29 = icmp ne i32 %7, 1
  br i1 %29, label %30, label %76

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
  br label %45

45:                                               ; preds = %72, %44
  %46 = load i32, ptr %17, align 4
  %47 = load i32, ptr %9, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %75

49:                                               ; preds = %45
  %50 = load double, ptr %10, align 8
  %51 = load ptr, ptr %11, align 8
  %52 = load i32, ptr %18, align 4
  %53 = load i32, ptr %12, align 4
  %54 = add nsw i32 %53, %52
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds double, ptr %51, i64 %55
  %57 = load double, ptr %56, align 8
  %58 = load ptr, ptr %14, align 8
  %59 = load i32, ptr %19, align 4
  %60 = load i32, ptr %15, align 4
  %61 = add nsw i32 %60, %59
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds double, ptr %58, i64 %62
  %64 = load double, ptr %63, align 8
  %65 = call double @llvm.fmuladd.f64(double %50, double %57, double %64)
  store double %65, ptr %63, align 8
  %66 = load i32, ptr %13, align 4
  %67 = load i32, ptr %18, align 4
  %68 = add nsw i32 %67, %66
  store i32 %68, ptr %18, align 4
  %69 = load i32, ptr %16, align 4
  %70 = load i32, ptr %19, align 4
  %71 = add nsw i32 %70, %69
  store i32 %71, ptr %19, align 4
  br label %72

72:                                               ; preds = %49
  %73 = load i32, ptr %17, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, ptr %17, align 4
  br label %45, !llvm.loop !17

75:                                               ; preds = %45
  br label %101

76:                                               ; preds = %28
  store i32 0, ptr %17, align 4
  br label %77

77:                                               ; preds = %96, %76
  %78 = load i32, ptr %17, align 4
  %79 = load i32, ptr %9, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %99

81:                                               ; preds = %77
  %82 = load double, ptr %10, align 8
  %83 = load ptr, ptr %11, align 8
  %84 = load i32, ptr %12, align 4
  %85 = add nsw i32 %84, %78
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds double, ptr %83, i64 %86
  %88 = load double, ptr %87, align 8
  %89 = load ptr, ptr %14, align 8
  %90 = load i32, ptr %15, align 4
  %91 = add nsw i32 %90, %78
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds double, ptr %89, i64 %92
  %94 = load double, ptr %93, align 8
  %95 = call double @llvm.fmuladd.f64(double %82, double %88, double %94)
  store double %95, ptr %93, align 8
  br label %96

96:                                               ; preds = %81
  %97 = load i32, ptr %17, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, ptr %17, align 4
  br label %77, !llvm.loop !18

99:                                               ; preds = %77
  br label %100

100:                                              ; preds = %99
  br label %101

101:                                              ; preds = %100, %75, %22, %8
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

12:                                               ; preds = %104, %2
  %13 = load i32, ptr %6, align 4
  %14 = icmp slt i32 %13, 1999
  br i1 %14, label %15, label %107

15:                                               ; preds = %12
  %16 = load ptr, ptr %3, align 8
  %17 = sext i32 %13 to i64
  %18 = getelementptr inbounds ptr, ptr %16, i64 %17
  %19 = load ptr, ptr %18, align 8
  store ptr %19, ptr %8, align 8
  %20 = load i32, ptr %6, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, ptr %9, align 4
  %22 = load i32, ptr %6, align 4
  %23 = sub nsw i32 2000, %22
  %24 = load ptr, ptr %8, align 8
  %25 = call i32 @idamax(i32 noundef %23, ptr noundef %24, i32 noundef %22, i32 noundef 1)
  %26 = load i32, ptr %6, align 4
  %27 = add nsw i32 %26, %25
  store i32 %27, ptr %10, align 4
  %28 = load ptr, ptr %4, align 8
  %29 = load i32, ptr %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, ptr %28, i64 %30
  store i32 %27, ptr %31, align 4
  %32 = load ptr, ptr %8, align 8
  %33 = load i32, ptr %10, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds double, ptr %32, i64 %34
  %36 = load double, ptr %35, align 8
  %37 = fcmp une double %36, 0.000000e+00
  br i1 %37, label %38, label %103

38:                                               ; preds = %15
  %39 = load i32, ptr %6, align 4
  %40 = icmp ne i32 %33, %39
  br i1 %40, label %41, label %55

41:                                               ; preds = %38
  store double %36, ptr %5, align 8
  %42 = load ptr, ptr %8, align 8
  %43 = load i32, ptr %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds double, ptr %42, i64 %44
  %46 = load double, ptr %45, align 8
  %47 = load i32, ptr %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds double, ptr %42, i64 %48
  store double %46, ptr %49, align 8
  %50 = load double, ptr %5, align 8
  %51 = load ptr, ptr %8, align 8
  %52 = load i32, ptr %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds double, ptr %51, i64 %53
  store double %50, ptr %54, align 8
  br label %55

55:                                               ; preds = %41, %38
  %56 = load ptr, ptr %8, align 8
  %57 = load i32, ptr %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds double, ptr %56, i64 %58
  %60 = load double, ptr %59, align 8
  %61 = fdiv double -1.000000e+00, %60
  store double %61, ptr %5, align 8
  %62 = load i32, ptr %9, align 4
  %63 = sub nsw i32 2000, %62
  %64 = load ptr, ptr %8, align 8
  call void @dscal(i32 noundef %63, double noundef %61, ptr noundef %64, i32 noundef %62, i32 noundef 1)
  %65 = load i32, ptr %9, align 4
  store i32 %65, ptr %7, align 4
  br label %66

66:                                               ; preds = %99, %55
  %67 = load i32, ptr %7, align 4
  %68 = icmp slt i32 %67, 2000
  br i1 %68, label %69, label %102

69:                                               ; preds = %66
  %70 = load ptr, ptr %3, align 8
  %71 = sext i32 %67 to i64
  %72 = getelementptr inbounds ptr, ptr %70, i64 %71
  %73 = load ptr, ptr %72, align 8
  store ptr %73, ptr %11, align 8
  %74 = load i32, ptr %10, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds double, ptr %73, i64 %75
  %77 = load double, ptr %76, align 8
  store double %77, ptr %5, align 8
  %78 = load i32, ptr %10, align 4
  %79 = load i32, ptr %6, align 4
  %80 = icmp ne i32 %78, %79
  br i1 %80, label %81, label %93

81:                                               ; preds = %69
  %82 = load ptr, ptr %11, align 8
  %83 = sext i32 %79 to i64
  %84 = getelementptr inbounds double, ptr %82, i64 %83
  %85 = load double, ptr %84, align 8
  %86 = sext i32 %78 to i64
  %87 = getelementptr inbounds double, ptr %82, i64 %86
  store double %85, ptr %87, align 8
  %88 = load double, ptr %5, align 8
  %89 = load ptr, ptr %11, align 8
  %90 = load i32, ptr %6, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds double, ptr %89, i64 %91
  store double %88, ptr %92, align 8
  br label %93

93:                                               ; preds = %81, %69
  %94 = load i32, ptr %9, align 4
  %95 = sub nsw i32 2000, %94
  %96 = load double, ptr %5, align 8
  %97 = load ptr, ptr %8, align 8
  %98 = load ptr, ptr %11, align 8
  call void @daxpy(i32 noundef %95, double noundef %96, ptr noundef %97, i32 noundef %94, i32 noundef 1, ptr noundef %98, i32 noundef %94, i32 noundef 1)
  br label %99

99:                                               ; preds = %93
  %100 = load i32, ptr %7, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, ptr %7, align 4
  br label %66, !llvm.loop !19

102:                                              ; preds = %66
  br label %103

103:                                              ; preds = %102, %15
  br label %104

104:                                              ; preds = %103
  %105 = load i32, ptr %6, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, ptr %6, align 4
  br label %12, !llvm.loop !20

107:                                              ; preds = %12
  %108 = load ptr, ptr %4, align 8
  %109 = getelementptr inbounds i32, ptr %108, i64 1999
  store i32 1999, ptr %109, align 4
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

12:                                               ; preds = %50, %3
  %13 = load i32, ptr %8, align 4
  %14 = icmp slt i32 %13, 1999
  br i1 %14, label %15, label %53

15:                                               ; preds = %12
  %16 = load ptr, ptr %5, align 8
  %17 = sext i32 %13 to i64
  %18 = getelementptr inbounds i32, ptr %16, i64 %17
  %19 = load i32, ptr %18, align 4
  store i32 %19, ptr %10, align 4
  %20 = load ptr, ptr %6, align 8
  %21 = sext i32 %19 to i64
  %22 = getelementptr inbounds double, ptr %20, i64 %21
  %23 = load double, ptr %22, align 8
  store double %23, ptr %7, align 8
  %24 = load i32, ptr %10, align 4
  %25 = load i32, ptr %8, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %39

27:                                               ; preds = %15
  %28 = load ptr, ptr %6, align 8
  %29 = sext i32 %25 to i64
  %30 = getelementptr inbounds double, ptr %28, i64 %29
  %31 = load double, ptr %30, align 8
  %32 = sext i32 %24 to i64
  %33 = getelementptr inbounds double, ptr %28, i64 %32
  store double %31, ptr %33, align 8
  %34 = load double, ptr %7, align 8
  %35 = load ptr, ptr %6, align 8
  %36 = load i32, ptr %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds double, ptr %35, i64 %37
  store double %34, ptr %38, align 8
  br label %39

39:                                               ; preds = %27, %15
  %40 = load i32, ptr %8, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, ptr %11, align 4
  %42 = sub nsw i32 2000, %41
  %43 = load double, ptr %7, align 8
  %44 = load ptr, ptr %4, align 8
  %45 = load i32, ptr %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds ptr, ptr %44, i64 %46
  %48 = load ptr, ptr %47, align 8
  %49 = load ptr, ptr %6, align 8
  call void @daxpy(i32 noundef %42, double noundef %43, ptr noundef %48, i32 noundef %41, i32 noundef 1, ptr noundef %49, i32 noundef %41, i32 noundef 1)
  br label %50

50:                                               ; preds = %39
  %51 = load i32, ptr %8, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, ptr %8, align 4
  br label %12, !llvm.loop !21

53:                                               ; preds = %12
  store i32 0, ptr %9, align 4
  br label %54

54:                                               ; preds = %81, %53
  %55 = load i32, ptr %9, align 4
  %56 = icmp slt i32 %55, 2000
  br i1 %56, label %57, label %84

57:                                               ; preds = %54
  %.neg = sub i32 0, %55
  %58 = add i32 %.neg, 1999
  store i32 %58, ptr %8, align 4
  %59 = load ptr, ptr %4, align 8
  %60 = sext i32 %58 to i64
  %61 = getelementptr inbounds ptr, ptr %59, i64 %60
  %62 = load ptr, ptr %61, align 8
  %63 = getelementptr inbounds double, ptr %62, i64 %60
  %64 = load double, ptr %63, align 8
  %65 = load ptr, ptr %6, align 8
  %66 = getelementptr inbounds double, ptr %65, i64 %60
  %67 = load double, ptr %66, align 8
  %68 = fdiv double %67, %64
  store double %68, ptr %66, align 8
  %69 = load ptr, ptr %6, align 8
  %70 = load i32, ptr %8, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds double, ptr %69, i64 %71
  %73 = load double, ptr %72, align 8
  %74 = fneg double %73
  store double %74, ptr %7, align 8
  %75 = load i32, ptr %8, align 4
  %76 = load ptr, ptr %4, align 8
  %77 = sext i32 %75 to i64
  %78 = getelementptr inbounds ptr, ptr %76, i64 %77
  %79 = load ptr, ptr %78, align 8
  %80 = load ptr, ptr %6, align 8
  call void @daxpy(i32 noundef %75, double noundef %74, ptr noundef %79, i32 noundef 0, i32 noundef 1, ptr noundef %80, i32 noundef 0, i32 noundef 1)
  br label %81

81:                                               ; preds = %57
  %82 = load i32, ptr %9, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, ptr %9, align 4
  br label %54, !llvm.loop !22

84:                                               ; preds = %54
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
  br i1 %15, label %16, label %33

16:                                               ; preds = %2
  store i32 1, ptr %6, align 4
  br label %17

17:                                               ; preds = %29, %16
  %18 = load i32, ptr %6, align 4
  %19 = load i32, ptr %4, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %32

21:                                               ; preds = %17
  %22 = load ptr, ptr %5, align 8
  %23 = getelementptr inbounds ptr, ptr %22, i64 1
  %24 = load ptr, ptr %23, align 8
  %25 = call i32 @strcmp(ptr noundef %24, ptr noundef @.str) #5
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %21
  store i8 1, ptr %7, align 1
  br label %32

28:                                               ; preds = %21
  br label %29

29:                                               ; preds = %28
  %30 = load i32, ptr %6, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, ptr %6, align 4
  br label %17, !llvm.loop !23

32:                                               ; preds = %27, %17
  br label %33

33:                                               ; preds = %32, %2
  %34 = call ptr @malloc(i64 noundef 16000) #6
  store ptr %34, ptr %8, align 8
  store i32 0, ptr %6, align 4
  br label %35

35:                                               ; preds = %44, %33
  %36 = load i32, ptr %6, align 4
  %37 = icmp slt i32 %36, 2000
  br i1 %37, label %38, label %47

38:                                               ; preds = %35
  %39 = call ptr @malloc(i64 noundef 16008) #6
  %40 = load ptr, ptr %8, align 8
  %41 = load i32, ptr %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds ptr, ptr %40, i64 %42
  store ptr %39, ptr %43, align 8
  br label %44

44:                                               ; preds = %38
  %45 = load i32, ptr %6, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, ptr %6, align 4
  br label %35, !llvm.loop !24

47:                                               ; preds = %35
  %48 = call ptr @malloc(i64 noundef 16000) #6
  store ptr %48, ptr %9, align 8
  %49 = call ptr @malloc(i64 noundef 16000) #6
  store ptr %49, ptr %10, align 8
  %50 = call ptr @malloc(i64 noundef 8000) #6
  store ptr %50, ptr %11, align 8
  store double f0x41F3E5E475555555, ptr %12, align 8
  %51 = load ptr, ptr %8, align 8
  %52 = load ptr, ptr %9, align 8
  call void @matgen(ptr noundef %51, ptr noundef %52)
  %53 = load ptr, ptr %8, align 8
  %54 = load ptr, ptr %11, align 8
  call void @dgefa(ptr noundef %53, ptr noundef %54)
  %55 = load ptr, ptr %8, align 8
  %56 = load ptr, ptr %11, align 8
  %57 = load ptr, ptr %9, align 8
  call void @dgesl(ptr noundef %55, ptr noundef %56, ptr noundef %57)
  store double 0.000000e+00, ptr %13, align 8
  %58 = load ptr, ptr %11, align 8
  call void @free(ptr noundef %58)
  %59 = load ptr, ptr %10, align 8
  call void @free(ptr noundef %59)
  %60 = load ptr, ptr %9, align 8
  call void @free(ptr noundef %60)
  store i32 0, ptr %6, align 4
  br label %61

61:                                               ; preds = %69, %47
  %62 = load i32, ptr %6, align 4
  %63 = icmp slt i32 %62, 2000
  br i1 %63, label %64, label %72

64:                                               ; preds = %61
  %65 = load ptr, ptr %8, align 8
  %66 = sext i32 %62 to i64
  %67 = getelementptr inbounds ptr, ptr %65, i64 %66
  %68 = load ptr, ptr %67, align 8
  call void @free(ptr noundef %68)
  br label %69

69:                                               ; preds = %64
  %70 = load i32, ptr %6, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, ptr %6, align 4
  br label %61, !llvm.loop !25

72:                                               ; preds = %61
  %73 = load ptr, ptr %8, align 8
  call void @free(ptr noundef %73)
  %74 = load i8, ptr %7, align 1
  %75 = icmp ne i8 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %72
  %77 = call ptr @__acrt_iob_func(i32 noundef 1)
  %78 = load double, ptr %13, align 8
  %79 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %77, ptr noundef @.str.1, double noundef %78) #5
  br label %84

80:                                               ; preds = %72
  %81 = call ptr @__acrt_iob_func(i32 noundef 1)
  %82 = load double, ptr %13, align 8
  %83 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %81, ptr noundef @.str.2, double noundef %82) #5
  br label %84

84:                                               ; preds = %80, %76
  %85 = call ptr @__acrt_iob_func(i32 noundef 1)
  %86 = call i32 @fflush(ptr noundef %85)
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
  %9 = mul nsw i32 %8, 16807
  %10 = mul nsw i32 %5, 2836
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
  %18 = fmul double %17, f0x3E00000000200FE1
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
