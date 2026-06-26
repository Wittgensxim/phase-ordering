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
  br label %7

7:                                                ; preds = %26, %2
  %storemerge = phi i32 [ 0, %2 ], [ %28, %26 ]
  store i32 %storemerge, ptr %5, align 4
  %8 = icmp slt i32 %storemerge, 2000
  br i1 %8, label %9, label %29

9:                                                ; preds = %7
  br label %10

10:                                               ; preds = %22, %9
  %storemerge4 = phi i32 [ 0, %9 ], [ %24, %22 ]
  store i32 %storemerge4, ptr %6, align 4
  %11 = icmp slt i32 %storemerge4, 2000
  br i1 %11, label %12, label %25

12:                                               ; preds = %10
  %13 = call double @random_double()
  %14 = load ptr, ptr %3, align 8
  %15 = load i32, ptr %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [8 x i8], ptr %14, i64 %16
  %18 = load ptr, ptr %17, align 8
  %19 = load i32, ptr %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [8 x i8], ptr %18, i64 %20
  store double %13, ptr %21, align 8
  br label %22

22:                                               ; preds = %12
  %23 = load i32, ptr %6, align 4
  %24 = add nsw i32 %23, 1
  br label %10, !llvm.loop !7

25:                                               ; preds = %10
  br label %26

26:                                               ; preds = %25
  %27 = load i32, ptr %5, align 4
  %28 = add nsw i32 %27, 1
  br label %7, !llvm.loop !9

29:                                               ; preds = %7
  br label %30

30:                                               ; preds = %36, %29
  %storemerge1 = phi i32 [ 0, %29 ], [ %38, %36 ]
  store i32 %storemerge1, ptr %5, align 4
  %31 = icmp slt i32 %storemerge1, 2000
  br i1 %31, label %32, label %39

32:                                               ; preds = %30
  %33 = load ptr, ptr %4, align 8
  %34 = sext i32 %storemerge1 to i64
  %35 = getelementptr inbounds [8 x i8], ptr %33, i64 %34
  store double 0.000000e+00, ptr %35, align 8
  br label %36

36:                                               ; preds = %32
  %37 = load i32, ptr %5, align 4
  %38 = add nsw i32 %37, 1
  br label %30, !llvm.loop !10

39:                                               ; preds = %30
  br label %40

40:                                               ; preds = %62, %39
  %storemerge2 = phi i32 [ 0, %39 ], [ %64, %62 ]
  store i32 %storemerge2, ptr %6, align 4
  %41 = icmp slt i32 %storemerge2, 2000
  br i1 %41, label %42, label %65

42:                                               ; preds = %40
  br label %43

43:                                               ; preds = %58, %42
  %storemerge3 = phi i32 [ 0, %42 ], [ %60, %58 ]
  store i32 %storemerge3, ptr %5, align 4
  %44 = icmp slt i32 %storemerge3, 2000
  br i1 %44, label %45, label %61

45:                                               ; preds = %43
  %46 = load ptr, ptr %3, align 8
  %47 = load i32, ptr %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [8 x i8], ptr %46, i64 %48
  %50 = load ptr, ptr %49, align 8
  %51 = sext i32 %storemerge3 to i64
  %52 = getelementptr inbounds [8 x i8], ptr %50, i64 %51
  %53 = load double, ptr %52, align 8
  %54 = load ptr, ptr %4, align 8
  %55 = getelementptr inbounds [8 x i8], ptr %54, i64 %51
  %56 = load double, ptr %55, align 8
  %57 = fadd double %56, %53
  store double %57, ptr %55, align 8
  br label %58

58:                                               ; preds = %45
  %59 = load i32, ptr %5, align 4
  %60 = add nsw i32 %59, 1
  br label %43, !llvm.loop !11

61:                                               ; preds = %43
  br label %62

62:                                               ; preds = %61
  %63 = load i32, ptr %6, align 4
  %64 = add nsw i32 %63, 1
  br label %40, !llvm.loop !12

65:                                               ; preds = %40
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
  br label %85

16:                                               ; preds = %4
  %17 = icmp eq i32 %0, 1
  br i1 %17, label %18, label %19

18:                                               ; preds = %16
  store i32 0, ptr %13, align 4
  br label %84

19:                                               ; preds = %16
  %20 = load i32, ptr %8, align 4
  %.not = icmp eq i32 %20, 1
  br i1 %.not, label %55, label %21

21:                                               ; preds = %19
  %22 = load ptr, ptr %6, align 8
  %23 = load i32, ptr %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [8 x i8], ptr %22, i64 %24
  %26 = load double, ptr %25, align 8
  %27 = call double @llvm.fabs.f64(double %26)
  store double %27, ptr %9, align 8
  %28 = load i32, ptr %8, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, ptr %12, align 4
  br label %30

30:                                               ; preds = %51, %21
  %storemerge1 = phi i32 [ 1, %21 ], [ %53, %51 ]
  store i32 %storemerge1, ptr %11, align 4
  %31 = load i32, ptr %5, align 4
  %32 = icmp slt i32 %storemerge1, %31
  br i1 %32, label %33, label %54

33:                                               ; preds = %30
  %34 = load ptr, ptr %6, align 8
  %35 = load i32, ptr %12, align 4
  %36 = load i32, ptr %7, align 4
  %37 = add nsw i32 %35, %36
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [8 x i8], ptr %34, i64 %38
  %40 = load double, ptr %39, align 8
  %41 = call double @llvm.fabs.f64(double %40)
  store double %41, ptr %10, align 8
  %42 = load double, ptr %9, align 8
  %43 = fcmp ogt double %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %33
  %45 = load i32, ptr %11, align 4
  store i32 %45, ptr %13, align 4
  %46 = load double, ptr %10, align 8
  store double %46, ptr %9, align 8
  br label %47

47:                                               ; preds = %44, %33
  %48 = load i32, ptr %8, align 4
  %49 = load i32, ptr %12, align 4
  %50 = add nsw i32 %49, %48
  store i32 %50, ptr %12, align 4
  br label %51

51:                                               ; preds = %47
  %52 = load i32, ptr %11, align 4
  %53 = add nsw i32 %52, 1
  br label %30, !llvm.loop !13

54:                                               ; preds = %30
  br label %83

55:                                               ; preds = %19
  store i32 0, ptr %13, align 4
  %56 = load ptr, ptr %6, align 8
  %57 = load i32, ptr %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [8 x i8], ptr %56, i64 %58
  %60 = load double, ptr %59, align 8
  %61 = call double @llvm.fabs.f64(double %60)
  store double %61, ptr %9, align 8
  br label %62

62:                                               ; preds = %79, %55
  %storemerge = phi i32 [ 1, %55 ], [ %81, %79 ]
  store i32 %storemerge, ptr %11, align 4
  %63 = load i32, ptr %5, align 4
  %64 = icmp slt i32 %storemerge, %63
  br i1 %64, label %65, label %82

65:                                               ; preds = %62
  %66 = load ptr, ptr %6, align 8
  %67 = load i32, ptr %7, align 4
  %68 = add nsw i32 %storemerge, %67
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [8 x i8], ptr %66, i64 %69
  %71 = load double, ptr %70, align 8
  %72 = call double @llvm.fabs.f64(double %71)
  store double %72, ptr %10, align 8
  %73 = load double, ptr %9, align 8
  %74 = fcmp ogt double %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %65
  %76 = load i32, ptr %11, align 4
  store i32 %76, ptr %13, align 4
  %77 = load double, ptr %10, align 8
  store double %77, ptr %9, align 8
  br label %78

78:                                               ; preds = %75, %65
  br label %79

79:                                               ; preds = %78
  %80 = load i32, ptr %11, align 4
  %81 = add nsw i32 %80, 1
  br label %62, !llvm.loop !14

82:                                               ; preds = %62
  br label %83

83:                                               ; preds = %82, %54
  br label %84

84:                                               ; preds = %83, %18
  br label %85

85:                                               ; preds = %84, %15
  %86 = load i32, ptr %13, align 4
  ret i32 %86
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
  br i1 %13, label %14, label %52

14:                                               ; preds = %5
  %.not = icmp eq i32 %4, 1
  br i1 %.not, label %34, label %15

15:                                               ; preds = %14
  %16 = mul nsw i32 %0, %4
  store i32 %16, ptr %12, align 4
  br label %17

17:                                               ; preds = %29, %15
  %storemerge1 = phi i32 [ 0, %15 ], [ %32, %29 ]
  store i32 %storemerge1, ptr %11, align 4
  %18 = load i32, ptr %12, align 4
  %19 = icmp slt i32 %storemerge1, %18
  br i1 %19, label %20, label %33

20:                                               ; preds = %17
  %21 = load double, ptr %7, align 8
  %22 = load ptr, ptr %8, align 8
  %23 = load i32, ptr %9, align 4
  %24 = add nsw i32 %storemerge1, %23
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [8 x i8], ptr %22, i64 %25
  %27 = load double, ptr %26, align 8
  %28 = fmul double %27, %21
  store double %28, ptr %26, align 8
  br label %29

29:                                               ; preds = %20
  %30 = load i32, ptr %10, align 4
  %31 = load i32, ptr %11, align 4
  %32 = add nsw i32 %31, %30
  br label %17, !llvm.loop !15

33:                                               ; preds = %17
  br label %51

34:                                               ; preds = %14
  br label %35

35:                                               ; preds = %47, %34
  %storemerge = phi i32 [ 0, %34 ], [ %49, %47 ]
  store i32 %storemerge, ptr %11, align 4
  %36 = load i32, ptr %6, align 4
  %37 = icmp slt i32 %storemerge, %36
  br i1 %37, label %38, label %50

38:                                               ; preds = %35
  %39 = load double, ptr %7, align 8
  %40 = load ptr, ptr %8, align 8
  %41 = load i32, ptr %9, align 4
  %42 = add nsw i32 %storemerge, %41
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [8 x i8], ptr %40, i64 %43
  %45 = load double, ptr %44, align 8
  %46 = fmul double %45, %39
  store double %46, ptr %44, align 8
  br label %47

47:                                               ; preds = %38
  %48 = load i32, ptr %11, align 4
  %49 = add nsw i32 %48, 1
  br label %35, !llvm.loop !16

50:                                               ; preds = %35
  br label %51

51:                                               ; preds = %50, %33
  br label %52

52:                                               ; preds = %51, %5
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
  %.not = icmp eq i32 %26, 1
  br i1 %.not, label %27, label %28

27:                                               ; preds = %25
  %.not1 = icmp eq i32 %7, 1
  br i1 %.not1, label %73, label %28

28:                                               ; preds = %27, %25
  store i32 0, ptr %18, align 4
  store i32 0, ptr %19, align 4
  %29 = load i32, ptr %13, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load i32, ptr %9, align 4
  %33 = sub nsw i32 1, %32
  %34 = mul nsw i32 %33, %29
  store i32 %34, ptr %18, align 4
  br label %35

35:                                               ; preds = %31, %28
  %36 = load i32, ptr %16, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load i32, ptr %9, align 4
  %40 = sub nsw i32 1, %39
  %41 = mul nsw i32 %40, %36
  store i32 %41, ptr %19, align 4
  br label %42

42:                                               ; preds = %38, %35
  br label %43

43:                                               ; preds = %69, %42
  %storemerge2 = phi i32 [ 0, %42 ], [ %71, %69 ]
  store i32 %storemerge2, ptr %17, align 4
  %44 = load i32, ptr %9, align 4
  %45 = icmp slt i32 %storemerge2, %44
  br i1 %45, label %46, label %72

46:                                               ; preds = %43
  %47 = load double, ptr %10, align 8
  %48 = load ptr, ptr %11, align 8
  %49 = load i32, ptr %18, align 4
  %50 = load i32, ptr %12, align 4
  %51 = add nsw i32 %49, %50
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [8 x i8], ptr %48, i64 %52
  %54 = load double, ptr %53, align 8
  %55 = load ptr, ptr %14, align 8
  %56 = load i32, ptr %19, align 4
  %57 = load i32, ptr %15, align 4
  %58 = add nsw i32 %56, %57
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [8 x i8], ptr %55, i64 %59
  %61 = load double, ptr %60, align 8
  %62 = call double @llvm.fmuladd.f64(double %47, double %54, double %61)
  store double %62, ptr %60, align 8
  %63 = load i32, ptr %13, align 4
  %64 = load i32, ptr %18, align 4
  %65 = add nsw i32 %64, %63
  store i32 %65, ptr %18, align 4
  %66 = load i32, ptr %16, align 4
  %67 = load i32, ptr %19, align 4
  %68 = add nsw i32 %67, %66
  store i32 %68, ptr %19, align 4
  br label %69

69:                                               ; preds = %46
  %70 = load i32, ptr %17, align 4
  %71 = add nsw i32 %70, 1
  br label %43, !llvm.loop !17

72:                                               ; preds = %43
  br label %97

73:                                               ; preds = %27
  br label %74

74:                                               ; preds = %92, %73
  %storemerge = phi i32 [ 0, %73 ], [ %94, %92 ]
  store i32 %storemerge, ptr %17, align 4
  %75 = load i32, ptr %9, align 4
  %76 = icmp slt i32 %storemerge, %75
  br i1 %76, label %77, label %95

77:                                               ; preds = %74
  %78 = load double, ptr %10, align 8
  %79 = load ptr, ptr %11, align 8
  %80 = load i32, ptr %12, align 4
  %81 = add nsw i32 %storemerge, %80
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [8 x i8], ptr %79, i64 %82
  %84 = load double, ptr %83, align 8
  %85 = load ptr, ptr %14, align 8
  %86 = load i32, ptr %15, align 4
  %87 = add nsw i32 %storemerge, %86
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [8 x i8], ptr %85, i64 %88
  %90 = load double, ptr %89, align 8
  %91 = call double @llvm.fmuladd.f64(double %78, double %84, double %90)
  store double %91, ptr %89, align 8
  br label %92

92:                                               ; preds = %77
  %93 = load i32, ptr %17, align 4
  %94 = add nsw i32 %93, 1
  br label %74, !llvm.loop !18

95:                                               ; preds = %74
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
  br label %12

12:                                               ; preds = %95, %2
  %storemerge = phi i32 [ 0, %2 ], [ %97, %95 ]
  store i32 %storemerge, ptr %6, align 4
  %13 = icmp slt i32 %storemerge, 1999
  br i1 %13, label %14, label %98

14:                                               ; preds = %12
  %15 = load ptr, ptr %3, align 8
  %16 = sext i32 %storemerge to i64
  %17 = getelementptr inbounds [8 x i8], ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8
  store ptr %18, ptr %8, align 8
  %19 = load i32, ptr %6, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, ptr %9, align 4
  %21 = sub nsw i32 2000, %19
  %22 = call i32 @idamax(i32 noundef %21, ptr noundef %18, i32 noundef %19, i32 noundef 1)
  %23 = add nsw i32 %22, %19
  store i32 %23, ptr %10, align 4
  %24 = load ptr, ptr %4, align 8
  %25 = load i32, ptr %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [4 x i8], ptr %24, i64 %26
  store i32 %23, ptr %27, align 4
  %28 = load ptr, ptr %8, align 8
  %29 = load i32, ptr %10, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [8 x i8], ptr %28, i64 %30
  %32 = load double, ptr %31, align 8
  %33 = fcmp une double %32, 0.000000e+00
  br i1 %33, label %34, label %94

34:                                               ; preds = %14
  %35 = load i32, ptr %6, align 4
  %.not = icmp eq i32 %29, %35
  br i1 %.not, label %50, label %36

36:                                               ; preds = %34
  store double %32, ptr %5, align 8
  %37 = load ptr, ptr %8, align 8
  %38 = load i32, ptr %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [8 x i8], ptr %37, i64 %39
  %41 = load double, ptr %40, align 8
  %42 = load i32, ptr %10, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [8 x i8], ptr %37, i64 %43
  store double %41, ptr %44, align 8
  %45 = load double, ptr %5, align 8
  %46 = load ptr, ptr %8, align 8
  %47 = load i32, ptr %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [8 x i8], ptr %46, i64 %48
  store double %45, ptr %49, align 8
  br label %50

50:                                               ; preds = %36, %34
  %51 = load ptr, ptr %8, align 8
  %52 = load i32, ptr %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [8 x i8], ptr %51, i64 %53
  %55 = load double, ptr %54, align 8
  %56 = fdiv double -1.000000e+00, %55
  store double %56, ptr %5, align 8
  %57 = load i32, ptr %9, align 4
  %58 = sub nsw i32 2000, %57
  %59 = load ptr, ptr %8, align 8
  call void @dscal(i32 noundef %58, double noundef %56, ptr noundef %59, i32 noundef %57, i32 noundef 1)
  br label %60

60:                                               ; preds = %90, %50
  %storemerge1 = phi i32 [ %57, %50 ], [ %92, %90 ]
  store i32 %storemerge1, ptr %7, align 4
  %61 = icmp slt i32 %storemerge1, 2000
  br i1 %61, label %62, label %93

62:                                               ; preds = %60
  %63 = load ptr, ptr %3, align 8
  %64 = sext i32 %storemerge1 to i64
  %65 = getelementptr inbounds [8 x i8], ptr %63, i64 %64
  %66 = load ptr, ptr %65, align 8
  store ptr %66, ptr %11, align 8
  %67 = load i32, ptr %10, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [8 x i8], ptr %66, i64 %68
  %70 = load double, ptr %69, align 8
  store double %70, ptr %5, align 8
  %71 = load i32, ptr %6, align 4
  %.not2 = icmp eq i32 %67, %71
  br i1 %.not2, label %84, label %72

72:                                               ; preds = %62
  %73 = load ptr, ptr %11, align 8
  %74 = sext i32 %71 to i64
  %75 = getelementptr inbounds [8 x i8], ptr %73, i64 %74
  %76 = load double, ptr %75, align 8
  %77 = sext i32 %67 to i64
  %78 = getelementptr inbounds [8 x i8], ptr %73, i64 %77
  store double %76, ptr %78, align 8
  %79 = load double, ptr %5, align 8
  %80 = load ptr, ptr %11, align 8
  %81 = load i32, ptr %6, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [8 x i8], ptr %80, i64 %82
  store double %79, ptr %83, align 8
  br label %84

84:                                               ; preds = %72, %62
  %85 = load i32, ptr %9, align 4
  %86 = sub nsw i32 2000, %85
  %87 = load double, ptr %5, align 8
  %88 = load ptr, ptr %8, align 8
  %89 = load ptr, ptr %11, align 8
  call void @daxpy(i32 noundef %86, double noundef %87, ptr noundef %88, i32 noundef %85, i32 noundef 1, ptr noundef %89, i32 noundef %85, i32 noundef 1)
  br label %90

90:                                               ; preds = %84
  %91 = load i32, ptr %7, align 4
  %92 = add nsw i32 %91, 1
  br label %60, !llvm.loop !19

93:                                               ; preds = %60
  br label %94

94:                                               ; preds = %93, %14
  br label %95

95:                                               ; preds = %94
  %96 = load i32, ptr %6, align 4
  %97 = add nsw i32 %96, 1
  br label %12, !llvm.loop !20

98:                                               ; preds = %12
  %99 = load ptr, ptr %4, align 8
  %100 = getelementptr inbounds nuw i8, ptr %99, i64 7996
  store i32 1999, ptr %100, align 4
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
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  br label %10

10:                                               ; preds = %44, %3
  %storemerge = phi i32 [ 0, %3 ], [ %46, %44 ]
  store i32 %storemerge, ptr %8, align 4
  %11 = icmp slt i32 %storemerge, 1999
  br i1 %11, label %12, label %47

12:                                               ; preds = %10
  %13 = load ptr, ptr %5, align 8
  %14 = sext i32 %storemerge to i64
  %15 = getelementptr inbounds [4 x i8], ptr %13, i64 %14
  %16 = load i32, ptr %15, align 4
  %17 = load ptr, ptr %6, align 8
  %18 = sext i32 %16 to i64
  %19 = getelementptr inbounds [8 x i8], ptr %17, i64 %18
  %20 = load double, ptr %19, align 8
  store double %20, ptr %7, align 8
  %21 = load i32, ptr %8, align 4
  %.not = icmp eq i32 %16, %21
  br i1 %.not, label %34, label %22

22:                                               ; preds = %12
  %23 = load ptr, ptr %6, align 8
  %24 = sext i32 %21 to i64
  %25 = getelementptr inbounds [8 x i8], ptr %23, i64 %24
  %26 = load double, ptr %25, align 8
  %27 = sext i32 %16 to i64
  %28 = getelementptr inbounds [8 x i8], ptr %23, i64 %27
  store double %26, ptr %28, align 8
  %29 = load double, ptr %7, align 8
  %30 = load ptr, ptr %6, align 8
  %31 = load i32, ptr %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [8 x i8], ptr %30, i64 %32
  store double %29, ptr %33, align 8
  br label %34

34:                                               ; preds = %22, %12
  %35 = load i32, ptr %8, align 4
  %36 = add nsw i32 %35, 1
  %37 = sub nsw i32 1999, %35
  %38 = load double, ptr %7, align 8
  %39 = load ptr, ptr %4, align 8
  %40 = sext i32 %35 to i64
  %41 = getelementptr inbounds [8 x i8], ptr %39, i64 %40
  %42 = load ptr, ptr %41, align 8
  %43 = load ptr, ptr %6, align 8
  call void @daxpy(i32 noundef %37, double noundef %38, ptr noundef %42, i32 noundef %36, i32 noundef 1, ptr noundef %43, i32 noundef %36, i32 noundef 1)
  br label %44

44:                                               ; preds = %34
  %45 = load i32, ptr %8, align 4
  %46 = add nsw i32 %45, 1
  br label %10, !llvm.loop !21

47:                                               ; preds = %10
  br label %48

48:                                               ; preds = %72, %47
  %storemerge1 = phi i32 [ 0, %47 ], [ %74, %72 ]
  store i32 %storemerge1, ptr %9, align 4
  %49 = icmp slt i32 %storemerge1, 2000
  br i1 %49, label %50, label %75

50:                                               ; preds = %48
  %51 = sub nsw i32 1999, %storemerge1
  store i32 %51, ptr %8, align 4
  %52 = load ptr, ptr %4, align 8
  %53 = zext nneg i32 %51 to i64
  %54 = getelementptr inbounds nuw [8 x i8], ptr %52, i64 %53
  %55 = load ptr, ptr %54, align 8
  %56 = getelementptr inbounds nuw [8 x i8], ptr %55, i64 %53
  %57 = load double, ptr %56, align 8
  %58 = load ptr, ptr %6, align 8
  %59 = getelementptr inbounds nuw [8 x i8], ptr %58, i64 %53
  %60 = load double, ptr %59, align 8
  %61 = fdiv double %60, %57
  store double %61, ptr %59, align 8
  %62 = load i32, ptr %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [8 x i8], ptr %58, i64 %63
  %65 = load double, ptr %64, align 8
  %66 = fneg double %65
  store double %66, ptr %7, align 8
  %67 = load ptr, ptr %4, align 8
  %68 = sext i32 %62 to i64
  %69 = getelementptr inbounds [8 x i8], ptr %67, i64 %68
  %70 = load ptr, ptr %69, align 8
  %71 = load ptr, ptr %6, align 8
  call void @daxpy(i32 noundef %62, double noundef %66, ptr noundef %70, i32 noundef 0, i32 noundef 1, ptr noundef %71, i32 noundef 0, i32 noundef 1)
  br label %72

72:                                               ; preds = %50
  %73 = load i32, ptr %9, align 4
  %74 = add nsw i32 %73, 1
  br label %48, !llvm.loop !22

75:                                               ; preds = %48
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca double, align 8
  store i32 %0, ptr %3, align 4
  store ptr %1, ptr %4, align 8
  store i8 0, ptr %6, align 1
  %12 = icmp sgt i32 %0, 1
  br i1 %12, label %13, label %28

13:                                               ; preds = %2
  br label %14

14:                                               ; preds = %24, %13
  %storemerge = phi i32 [ 1, %13 ], [ %26, %24 ]
  store i32 %storemerge, ptr %5, align 4
  %15 = load i32, ptr %3, align 4
  %16 = icmp slt i32 %storemerge, %15
  br i1 %16, label %17, label %27

17:                                               ; preds = %14
  %18 = load ptr, ptr %4, align 8
  %19 = getelementptr inbounds nuw i8, ptr %18, i64 8
  %20 = load ptr, ptr %19, align 8
  %21 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %20, ptr noundef nonnull dereferenceable(4) @.str) #5
  %.not = icmp eq i32 %21, 0
  br i1 %.not, label %22, label %23

22:                                               ; preds = %17
  store i8 1, ptr %6, align 1
  br label %27

23:                                               ; preds = %17
  br label %24

24:                                               ; preds = %23
  %25 = load i32, ptr %5, align 4
  %26 = add nsw i32 %25, 1
  br label %14, !llvm.loop !23

27:                                               ; preds = %22, %14
  br label %28

28:                                               ; preds = %27, %2
  %29 = call dereferenceable_or_null(16000) ptr @malloc(i64 noundef 16000) #6
  store ptr %29, ptr %7, align 8
  br label %30

30:                                               ; preds = %38, %28
  %storemerge1 = phi i32 [ 0, %28 ], [ %40, %38 ]
  store i32 %storemerge1, ptr %5, align 4
  %31 = icmp slt i32 %storemerge1, 2000
  br i1 %31, label %32, label %41

32:                                               ; preds = %30
  %33 = call dereferenceable_or_null(16008) ptr @malloc(i64 noundef 16008) #6
  %34 = load ptr, ptr %7, align 8
  %35 = load i32, ptr %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [8 x i8], ptr %34, i64 %36
  store ptr %33, ptr %37, align 8
  br label %38

38:                                               ; preds = %32
  %39 = load i32, ptr %5, align 4
  %40 = add nsw i32 %39, 1
  br label %30, !llvm.loop !24

41:                                               ; preds = %30
  %42 = call dereferenceable_or_null(16000) ptr @malloc(i64 noundef 16000) #6
  store ptr %42, ptr %8, align 8
  %43 = call dereferenceable_or_null(16000) ptr @malloc(i64 noundef 16000) #6
  store ptr %43, ptr %9, align 8
  %44 = call dereferenceable_or_null(8000) ptr @malloc(i64 noundef 8000) #6
  store ptr %44, ptr %10, align 8
  %45 = load ptr, ptr %7, align 8
  call void @matgen(ptr noundef %45, ptr noundef %42)
  call void @dgefa(ptr noundef %45, ptr noundef %44)
  %46 = load ptr, ptr %8, align 8
  call void @dgesl(ptr noundef %45, ptr noundef %44, ptr noundef %46)
  store double 0.000000e+00, ptr %11, align 8
  %47 = load ptr, ptr %10, align 8
  call void @free(ptr noundef %47) #5
  %48 = load ptr, ptr %9, align 8
  call void @free(ptr noundef %48) #5
  %49 = load ptr, ptr %8, align 8
  call void @free(ptr noundef %49) #5
  br label %50

50:                                               ; preds = %57, %41
  %storemerge2 = phi i32 [ 0, %41 ], [ %59, %57 ]
  store i32 %storemerge2, ptr %5, align 4
  %51 = icmp slt i32 %storemerge2, 2000
  br i1 %51, label %52, label %60

52:                                               ; preds = %50
  %53 = load ptr, ptr %7, align 8
  %54 = sext i32 %storemerge2 to i64
  %55 = getelementptr inbounds [8 x i8], ptr %53, i64 %54
  %56 = load ptr, ptr %55, align 8
  call void @free(ptr noundef %56) #5
  br label %57

57:                                               ; preds = %52
  %58 = load i32, ptr %5, align 4
  %59 = add nsw i32 %58, 1
  br label %50, !llvm.loop !25

60:                                               ; preds = %50
  %61 = load ptr, ptr %7, align 8
  call void @free(ptr noundef %61) #5
  %62 = load i8, ptr %6, align 1
  %.not3 = icmp eq i8 %62, 0
  br i1 %.not3, label %67, label %63

63:                                               ; preds = %60
  %64 = call ptr @__acrt_iob_func(i32 noundef 1) #5
  %65 = load double, ptr %11, align 8
  %66 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %64, ptr noundef nonnull @.str.1, double noundef %65) #5
  br label %71

67:                                               ; preds = %60
  %68 = call ptr @__acrt_iob_func(i32 noundef 1) #5
  %69 = load double, ptr %11, align 8
  %70 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %68, ptr noundef nonnull @.str.2, double noundef %69) #5
  br label %71

71:                                               ; preds = %67, %63
  %72 = call ptr @__acrt_iob_func(i32 noundef 1) #5
  %73 = call i32 @fflush(ptr noundef %72) #5
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
  %3 = sdiv i32 %2, 127773
  %.neg = mul i32 %3, -127773
  %4 = add i32 %.neg, %2
  %5 = mul nsw i32 %4, 16807
  %.neg1 = mul nsw i32 %3, -2836
  %6 = add i32 %.neg1, %5
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = add nsw i32 %6, 2147483647
  br label %10

10:                                               ; preds = %8, %0
  %storemerge = phi i32 [ %9, %8 ], [ %6, %0 ]
  store i32 %storemerge, ptr @seed, align 4
  %11 = sitofp i32 %storemerge to double
  %12 = fmul nnan double %11, f0x3E00000000200FE1
  %13 = xor i32 %storemerge, 123459876
  store i32 %13, ptr @seed, align 4
  ret double %12
}

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nounwind allocsize(0) }

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
