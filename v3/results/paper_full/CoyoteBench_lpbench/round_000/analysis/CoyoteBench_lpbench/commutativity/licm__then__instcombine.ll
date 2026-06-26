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
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %.promoted3 = load i32, ptr %5, align 4
  br label %6

6:                                                ; preds = %23, %2
  %.lcssa4 = phi i32 [ %12, %23 ], [ %.promoted3, %2 ]
  %7 = phi i32 [ %24, %23 ], [ 0, %2 ]
  %8 = icmp samesign ult i32 %7, 2000
  br i1 %8, label %9, label %25

9:                                                ; preds = %6
  %10 = zext nneg i32 %7 to i64
  br label %11

11:                                               ; preds = %20, %9
  %12 = phi i32 [ %21, %20 ], [ 0, %9 ]
  %13 = icmp samesign ult i32 %12, 2000
  br i1 %13, label %14, label %22

14:                                               ; preds = %11
  %15 = call double @random_double()
  %16 = zext nneg i32 %12 to i64
  %17 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %16
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds nuw [8 x i8], ptr %18, i64 %10
  store double %15, ptr %19, align 8
  br label %20

20:                                               ; preds = %14
  %21 = add nuw nsw i32 %12, 1
  br label %11, !llvm.loop !7

22:                                               ; preds = %11
  br label %23

23:                                               ; preds = %22
  %24 = add nuw nsw i32 %7, 1
  br label %6, !llvm.loop !9

25:                                               ; preds = %6
  store i32 %.lcssa4, ptr %5, align 4
  %26 = load ptr, ptr %4, align 8
  br label %27

27:                                               ; preds = %33, %25
  %28 = phi i32 [ %34, %33 ], [ 0, %25 ]
  %29 = icmp samesign ult i32 %28, 2000
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = zext nneg i32 %28 to i64
  %32 = getelementptr inbounds nuw [8 x i8], ptr %26, i64 %31
  store double 0.000000e+00, ptr %32, align 8
  br label %33

33:                                               ; preds = %30
  %34 = add nuw nsw i32 %28, 1
  br label %27, !llvm.loop !10

35:                                               ; preds = %27
  store i32 0, ptr %5, align 4
  %36 = load ptr, ptr %3, align 8
  %37 = load ptr, ptr %4, align 8
  br label %38

38:                                               ; preds = %59, %35
  %39 = phi i32 [ %60, %59 ], [ 0, %35 ]
  %40 = icmp samesign ult i32 %39, 2000
  br i1 %40, label %41, label %61

41:                                               ; preds = %38
  %42 = zext nneg i32 %39 to i64
  %43 = getelementptr inbounds nuw [8 x i8], ptr %36, i64 %42
  br label %44

44:                                               ; preds = %56, %41
  %45 = phi i32 [ %57, %56 ], [ 0, %41 ]
  %46 = icmp samesign ult i32 %45, 2000
  br i1 %46, label %47, label %58

47:                                               ; preds = %44
  %48 = load ptr, ptr %43, align 8
  %49 = zext nneg i32 %45 to i64
  %50 = getelementptr inbounds nuw [8 x i8], ptr %48, i64 %49
  %51 = load double, ptr %50, align 8
  %52 = zext nneg i32 %45 to i64
  %53 = getelementptr inbounds nuw [8 x i8], ptr %37, i64 %52
  %54 = load double, ptr %53, align 8
  %55 = fadd double %54, %51
  store double %55, ptr %53, align 8
  br label %56

56:                                               ; preds = %47
  %57 = add nuw nsw i32 %45, 1
  br label %44, !llvm.loop !11

58:                                               ; preds = %44
  br label %59

59:                                               ; preds = %58
  %60 = add nuw nsw i32 %39, 1
  br label %38, !llvm.loop !12

61:                                               ; preds = %38
  store i32 %39, ptr %5, align 4
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
  store i32 %0, ptr %5, align 4
  store ptr %1, ptr %6, align 8
  store i32 %2, ptr %7, align 4
  store i32 %3, ptr %8, align 4
  store i32 0, ptr %11, align 4
  %12 = icmp slt i32 %0, 1
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  store i32 -1, ptr %11, align 4
  br label %86

14:                                               ; preds = %4
  %15 = load i32, ptr %5, align 4
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store i32 0, ptr %11, align 4
  br label %85

18:                                               ; preds = %14
  %19 = load i32, ptr %8, align 4
  %.not = icmp eq i32 %19, 1
  br i1 %.not, label %54, label %20

20:                                               ; preds = %18
  %21 = load ptr, ptr %6, align 8
  %22 = load i32, ptr %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [8 x i8], ptr %21, i64 %23
  %25 = load double, ptr %24, align 8
  %26 = call double @llvm.fabs.f64(double %25)
  store double %26, ptr %9, align 8
  %27 = load i32, ptr %8, align 4
  %28 = add nsw i32 %27, 1
  %29 = load i32, ptr %5, align 4
  %30 = load ptr, ptr %6, align 8
  %31 = load i32, ptr %7, align 4
  %.promoted11 = load double, ptr %10, align 8
  %.promoted13 = load double, ptr %9, align 8
  %.promoted15 = load i32, ptr %11, align 1
  br label %32

32:                                               ; preds = %50, %20
  %33 = phi i32 [ %48, %50 ], [ %.promoted15, %20 ]
  %34 = phi double [ %49, %50 ], [ %.promoted13, %20 ]
  %35 = phi double [ %44, %50 ], [ %.promoted11, %20 ]
  %36 = phi i32 [ %51, %50 ], [ %28, %20 ]
  %37 = phi i32 [ %52, %50 ], [ 1, %20 ]
  %38 = icmp slt i32 %37, %29
  br i1 %38, label %39, label %53

39:                                               ; preds = %32
  %40 = add nsw i32 %36, %31
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [8 x i8], ptr %30, i64 %41
  %43 = load double, ptr %42, align 8
  %44 = call double @llvm.fabs.f64(double %43)
  %45 = fcmp ogt double %44, %34
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  br label %47

47:                                               ; preds = %46, %39
  %48 = phi i32 [ %37, %46 ], [ %33, %39 ]
  %49 = phi double [ %44, %46 ], [ %34, %39 ]
  br label %50

50:                                               ; preds = %47
  %51 = add nsw i32 %36, %27
  %52 = add nuw nsw i32 %37, 1
  br label %32, !llvm.loop !13

53:                                               ; preds = %32
  br label %84

54:                                               ; preds = %18
  store i32 0, ptr %11, align 4
  %55 = load ptr, ptr %6, align 8
  %56 = load i32, ptr %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [8 x i8], ptr %55, i64 %57
  %59 = load double, ptr %58, align 8
  %60 = call double @llvm.fabs.f64(double %59)
  store double %60, ptr %9, align 8
  %61 = load i32, ptr %5, align 4
  %62 = load ptr, ptr %6, align 8
  %63 = load i32, ptr %7, align 4
  %.promoted1 = load double, ptr %10, align 8
  %.promoted5 = load i32, ptr %11, align 1
  br label %64

64:                                               ; preds = %81, %54
  %65 = phi i32 [ %79, %81 ], [ %.promoted5, %54 ]
  %66 = phi double [ %80, %81 ], [ %60, %54 ]
  %67 = phi double [ %75, %81 ], [ %.promoted1, %54 ]
  %68 = phi i32 [ %82, %81 ], [ 1, %54 ]
  %69 = icmp slt i32 %68, %61
  br i1 %69, label %70, label %83

70:                                               ; preds = %64
  %71 = add nsw i32 %68, %63
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [8 x i8], ptr %62, i64 %72
  %74 = load double, ptr %73, align 8
  %75 = call double @llvm.fabs.f64(double %74)
  %76 = fcmp ogt double %75, %66
  br i1 %76, label %77, label %78

77:                                               ; preds = %70
  br label %78

78:                                               ; preds = %77, %70
  %79 = phi i32 [ %68, %77 ], [ %65, %70 ]
  %80 = phi double [ %75, %77 ], [ %66, %70 ]
  br label %81

81:                                               ; preds = %78
  %82 = add nuw nsw i32 %68, 1
  br label %64, !llvm.loop !14

83:                                               ; preds = %64
  br label %84

84:                                               ; preds = %83, %53
  %storemerge18 = phi double [ %67, %83 ], [ %35, %53 ]
  %storemerge17 = phi double [ %66, %83 ], [ %34, %53 ]
  %storemerge = phi i32 [ %65, %83 ], [ %33, %53 ]
  store double %storemerge18, ptr %10, align 8
  store double %storemerge17, ptr %9, align 8
  store i32 %storemerge, ptr %11, align 1
  br label %85

85:                                               ; preds = %84, %17
  br label %86

86:                                               ; preds = %85, %13
  %87 = load i32, ptr %11, align 4
  ret i32 %87
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
  store i32 %0, ptr %6, align 4
  store double %1, ptr %7, align 8
  store ptr %2, ptr %8, align 8
  store i32 %3, ptr %9, align 4
  store i32 %4, ptr %10, align 4
  %11 = icmp sgt i32 %0, 0
  br i1 %11, label %12, label %51

12:                                               ; preds = %5
  %13 = load i32, ptr %10, align 4
  %.not = icmp eq i32 %13, 1
  br i1 %.not, label %33, label %14

14:                                               ; preds = %12
  %15 = load i32, ptr %6, align 4
  %16 = load i32, ptr %10, align 4
  %17 = mul nsw i32 %15, %16
  %18 = load double, ptr %7, align 8
  %19 = load ptr, ptr %8, align 8
  %20 = load i32, ptr %9, align 4
  br label %21

21:                                               ; preds = %30, %14
  %22 = phi i32 [ %31, %30 ], [ 0, %14 ]
  %23 = icmp slt i32 %22, %17
  br i1 %23, label %24, label %32

24:                                               ; preds = %21
  %25 = add nsw i32 %22, %20
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [8 x i8], ptr %19, i64 %26
  %28 = load double, ptr %27, align 8
  %29 = fmul double %28, %18
  store double %29, ptr %27, align 8
  br label %30

30:                                               ; preds = %24
  %31 = add nsw i32 %22, %16
  br label %21, !llvm.loop !15

32:                                               ; preds = %21
  br label %50

33:                                               ; preds = %12
  %34 = load i32, ptr %6, align 4
  %35 = load double, ptr %7, align 8
  %36 = load ptr, ptr %8, align 8
  %37 = load i32, ptr %9, align 4
  br label %38

38:                                               ; preds = %47, %33
  %39 = phi i32 [ %48, %47 ], [ 0, %33 ]
  %40 = icmp slt i32 %39, %34
  br i1 %40, label %41, label %49

41:                                               ; preds = %38
  %42 = add nsw i32 %39, %37
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [8 x i8], ptr %36, i64 %43
  %45 = load double, ptr %44, align 8
  %46 = fmul double %45, %35
  store double %46, ptr %44, align 8
  br label %47

47:                                               ; preds = %41
  %48 = add nuw nsw i32 %39, 1
  br label %38, !llvm.loop !16

49:                                               ; preds = %38
  br label %50

50:                                               ; preds = %49, %32
  br label %51

51:                                               ; preds = %50, %5
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
  br i1 %21, label %22, label %98

22:                                               ; preds = %8
  %23 = load double, ptr %10, align 8
  %24 = fcmp une double %23, 0.000000e+00
  br i1 %24, label %25, label %98

25:                                               ; preds = %22
  %26 = load i32, ptr %13, align 4
  %.not = icmp eq i32 %26, 1
  br i1 %.not, label %27, label %29

27:                                               ; preds = %25
  %28 = load i32, ptr %16, align 4
  %.not7 = icmp eq i32 %28, 1
  br i1 %.not7, label %74, label %29

29:                                               ; preds = %27, %25
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

54:                                               ; preds = %69, %45
  %55 = phi i32 [ %70, %69 ], [ %.promoted5, %45 ]
  %56 = phi i32 [ %71, %69 ], [ %.promoted3, %45 ]
  %57 = phi i32 [ %72, %69 ], [ %.promoted1, %45 ]
  %58 = icmp slt i32 %57, %46
  br i1 %58, label %59, label %73

59:                                               ; preds = %54
  %60 = add nsw i32 %56, %49
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [8 x i8], ptr %48, i64 %61
  %63 = load double, ptr %62, align 8
  %64 = add nsw i32 %55, %51
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [8 x i8], ptr %50, i64 %65
  %67 = load double, ptr %66, align 8
  %68 = call double @llvm.fmuladd.f64(double %47, double %63, double %67)
  store double %68, ptr %66, align 8
  br label %69

69:                                               ; preds = %59
  %70 = add nsw i32 %55, %53
  %71 = add nsw i32 %56, %52
  %72 = add nsw i32 %57, 1
  br label %54, !llvm.loop !17

73:                                               ; preds = %54
  store i32 %57, ptr %17, align 4
  store i32 %56, ptr %18, align 4
  store i32 %55, ptr %19, align 4
  br label %98

74:                                               ; preds = %27
  store i32 0, ptr %17, align 4
  %75 = load i32, ptr %9, align 4
  %76 = load double, ptr %10, align 8
  %77 = load ptr, ptr %11, align 8
  %78 = load i32, ptr %12, align 4
  %79 = load ptr, ptr %14, align 8
  %80 = load i32, ptr %15, align 4
  %.promoted = load i32, ptr %17, align 4
  br label %81

81:                                               ; preds = %94, %74
  %82 = phi i32 [ %95, %94 ], [ %.promoted, %74 ]
  %83 = icmp slt i32 %82, %75
  br i1 %83, label %84, label %96

84:                                               ; preds = %81
  %85 = add nsw i32 %82, %78
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [8 x i8], ptr %77, i64 %86
  %88 = load double, ptr %87, align 8
  %89 = add nsw i32 %82, %80
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [8 x i8], ptr %79, i64 %90
  %92 = load double, ptr %91, align 8
  %93 = call double @llvm.fmuladd.f64(double %76, double %88, double %92)
  store double %93, ptr %91, align 8
  br label %94

94:                                               ; preds = %84
  %95 = add nsw i32 %82, 1
  br label %81, !llvm.loop !18

96:                                               ; preds = %81
  store i32 %82, ptr %17, align 4
  br label %97

97:                                               ; preds = %96
  br label %98

98:                                               ; preds = %97, %73, %22, %8
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @dgefa(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  %.promoted7 = load ptr, ptr %6, align 8
  %.promoted9 = load i32, ptr %7, align 4
  %.promoted11 = load i32, ptr %8, align 4
  %.promoted13 = load double, ptr %4, align 8
  %.promoted16 = load i32, ptr %5, align 4
  %.promoted = load ptr, ptr %9, align 8
  br label %10

10:                                               ; preds = %74, %2
  %.lcssa220 = phi ptr [ %.lcssa219, %74 ], [ %.promoted, %2 ]
  %.lcssa18 = phi i32 [ %.lcssa17, %74 ], [ %.promoted16, %2 ]
  %.lcssa415 = phi double [ %.lcssa414, %74 ], [ %.promoted13, %2 ]
  %11 = phi i32 [ %23, %74 ], [ %.promoted11, %2 ]
  %12 = phi i32 [ %20, %74 ], [ %.promoted9, %2 ]
  %13 = phi ptr [ %19, %74 ], [ %.promoted7, %2 ]
  %14 = phi i32 [ %75, %74 ], [ 0, %2 ]
  %15 = icmp samesign ult i32 %14, 1999
  br i1 %15, label %16, label %76

16:                                               ; preds = %10
  %17 = zext nneg i32 %14 to i64
  %18 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %17
  %19 = load ptr, ptr %18, align 8
  %20 = add nuw nsw i32 %14, 1
  %21 = sub nuw nsw i32 2000, %14
  %22 = call i32 @idamax(i32 noundef %21, ptr noundef %19, i32 noundef %14, i32 noundef 1)
  %23 = add nsw i32 %22, %14
  %24 = zext nneg i32 %14 to i64
  %25 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %24
  store i32 %23, ptr %25, align 4
  %26 = sext i32 %23 to i64
  %27 = getelementptr inbounds [8 x i8], ptr %19, i64 %26
  %28 = load double, ptr %27, align 8
  %29 = fcmp une double %28, 0.000000e+00
  br i1 %29, label %30, label %73

30:                                               ; preds = %16
  %.not = icmp eq i32 %22, 0
  br i1 %.not, label %42, label %31

31:                                               ; preds = %30
  %32 = sext i32 %23 to i64
  %33 = getelementptr inbounds [8 x i8], ptr %19, i64 %32
  %34 = load double, ptr %33, align 8
  %35 = zext nneg i32 %14 to i64
  %36 = getelementptr inbounds nuw [8 x i8], ptr %19, i64 %35
  %37 = load double, ptr %36, align 8
  %38 = sext i32 %23 to i64
  %39 = getelementptr inbounds [8 x i8], ptr %19, i64 %38
  store double %37, ptr %39, align 8
  %40 = zext nneg i32 %14 to i64
  %41 = getelementptr inbounds nuw [8 x i8], ptr %19, i64 %40
  store double %34, ptr %41, align 8
  br label %42

42:                                               ; preds = %31, %30
  %43 = zext nneg i32 %14 to i64
  %44 = getelementptr inbounds nuw [8 x i8], ptr %19, i64 %43
  %45 = load double, ptr %44, align 8
  %46 = fdiv double -1.000000e+00, %45
  %47 = sub nsw i32 1999, %14
  call void @dscal(i32 noundef %47, double noundef %46, ptr noundef %19, i32 noundef %20, i32 noundef 1)
  %48 = sext i32 %23 to i64
  %.not21 = icmp eq i32 %22, 0
  %49 = zext nneg i32 %14 to i64
  %50 = sext i32 %23 to i64
  %51 = zext nneg i32 %14 to i64
  %52 = sub nsw i32 1999, %14
  br label %53

53:                                               ; preds = %70, %42
  %54 = phi double [ %63, %70 ], [ %46, %42 ]
  %55 = phi ptr [ %61, %70 ], [ %.lcssa220, %42 ]
  %56 = phi i32 [ %71, %70 ], [ %20, %42 ]
  %57 = icmp samesign ult i32 %56, 2000
  br i1 %57, label %58, label %72

58:                                               ; preds = %53
  %59 = zext nneg i32 %56 to i64
  %60 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %59
  %61 = load ptr, ptr %60, align 8
  %62 = getelementptr inbounds [8 x i8], ptr %61, i64 %48
  %63 = load double, ptr %62, align 8
  br i1 %.not21, label %69, label %64

64:                                               ; preds = %58
  %65 = getelementptr inbounds nuw [8 x i8], ptr %61, i64 %49
  %66 = load double, ptr %65, align 8
  %67 = getelementptr inbounds [8 x i8], ptr %61, i64 %50
  store double %66, ptr %67, align 8
  %68 = getelementptr inbounds nuw [8 x i8], ptr %61, i64 %51
  store double %63, ptr %68, align 8
  br label %69

69:                                               ; preds = %64, %58
  call void @daxpy(i32 noundef %52, double noundef %63, ptr noundef %19, i32 noundef %20, i32 noundef 1, ptr noundef %61, i32 noundef %20, i32 noundef 1)
  br label %70

70:                                               ; preds = %69
  %71 = add nuw nsw i32 %56, 1
  br label %53, !llvm.loop !19

72:                                               ; preds = %53
  br label %73

73:                                               ; preds = %72, %16
  %.lcssa219 = phi ptr [ %55, %72 ], [ %.lcssa220, %16 ]
  %.lcssa17 = phi i32 [ %56, %72 ], [ %.lcssa18, %16 ]
  %.lcssa414 = phi double [ %54, %72 ], [ %.lcssa415, %16 ]
  br label %74

74:                                               ; preds = %73
  %75 = add nuw nsw i32 %14, 1
  br label %10, !llvm.loop !20

76:                                               ; preds = %10
  store ptr %13, ptr %6, align 8
  store i32 %12, ptr %7, align 4
  store i32 %11, ptr %8, align 4
  store double %.lcssa415, ptr %4, align 8
  store i32 %.lcssa18, ptr %5, align 4
  store ptr %.lcssa220, ptr %9, align 8
  %77 = load ptr, ptr %3, align 8
  %78 = getelementptr inbounds nuw i8, ptr %77, i64 7996
  store i32 1999, ptr %78, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @dgesl(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store ptr %2, ptr %5, align 8
  %.promoted1 = load i32, ptr %7, align 4
  %.promoted3 = load double, ptr %6, align 8
  %.promoted5 = load i32, ptr %8, align 4
  br label %9

9:                                                ; preds = %36, %3
  %10 = phi i32 [ %31, %36 ], [ %.promoted5, %3 ]
  %11 = phi double [ %21, %36 ], [ %.promoted3, %3 ]
  %12 = phi i32 [ %18, %36 ], [ %.promoted1, %3 ]
  %13 = phi i32 [ %37, %36 ], [ 0, %3 ]
  %14 = icmp samesign ult i32 %13, 1999
  br i1 %14, label %15, label %38

15:                                               ; preds = %9
  %16 = zext nneg i32 %13 to i64
  %17 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %16
  %18 = load i32, ptr %17, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [8 x i8], ptr %2, i64 %19
  %21 = load double, ptr %20, align 8
  %.not = icmp eq i32 %18, %13
  br i1 %.not, label %30, label %22

22:                                               ; preds = %15
  %23 = zext nneg i32 %13 to i64
  %24 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %23
  %25 = load double, ptr %24, align 8
  %26 = sext i32 %18 to i64
  %27 = getelementptr inbounds [8 x i8], ptr %2, i64 %26
  store double %25, ptr %27, align 8
  %28 = zext nneg i32 %13 to i64
  %29 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %28
  store double %21, ptr %29, align 8
  br label %30

30:                                               ; preds = %22, %15
  %31 = add nuw nsw i32 %13, 1
  %32 = sub nsw i32 1999, %13
  %33 = zext nneg i32 %13 to i64
  %34 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %33
  %35 = load ptr, ptr %34, align 8
  call void @daxpy(i32 noundef %32, double noundef %21, ptr noundef %35, i32 noundef %31, i32 noundef 1, ptr noundef %2, i32 noundef %31, i32 noundef 1)
  br label %36

36:                                               ; preds = %30
  %37 = add nuw nsw i32 %13, 1
  br label %9, !llvm.loop !21

38:                                               ; preds = %9
  store i32 %12, ptr %7, align 4
  store double %11, ptr %6, align 8
  store i32 %10, ptr %8, align 4
  %39 = load ptr, ptr %4, align 8
  %40 = load ptr, ptr %5, align 8
  br label %41

41:                                               ; preds = %64, %38
  %42 = phi double [ %60, %64 ], [ %11, %38 ]
  %43 = phi i32 [ %65, %64 ], [ 0, %38 ]
  %44 = icmp samesign ult i32 %43, 2000
  br i1 %44, label %45, label %66

45:                                               ; preds = %41
  %46 = sub nuw nsw i32 1999, %43
  %47 = zext nneg i32 %46 to i64
  %48 = getelementptr inbounds nuw [8 x i8], ptr %39, i64 %47
  %49 = load ptr, ptr %48, align 8
  %50 = zext nneg i32 %46 to i64
  %51 = getelementptr inbounds nuw [8 x i8], ptr %49, i64 %50
  %52 = load double, ptr %51, align 8
  %53 = zext nneg i32 %46 to i64
  %54 = getelementptr inbounds nuw [8 x i8], ptr %40, i64 %53
  %55 = load double, ptr %54, align 8
  %56 = fdiv double %55, %52
  store double %56, ptr %54, align 8
  %57 = zext nneg i32 %46 to i64
  %58 = getelementptr inbounds nuw [8 x i8], ptr %40, i64 %57
  %59 = load double, ptr %58, align 8
  %60 = fneg double %59
  %61 = zext nneg i32 %46 to i64
  %62 = getelementptr inbounds nuw [8 x i8], ptr %39, i64 %61
  %63 = load ptr, ptr %62, align 8
  call void @daxpy(i32 noundef %46, double noundef %60, ptr noundef %63, i32 noundef 0, i32 noundef 1, ptr noundef %40, i32 noundef 0, i32 noundef 1)
  br label %64

64:                                               ; preds = %45
  %65 = add nuw nsw i32 %43, 1
  br label %41, !llvm.loop !22

66:                                               ; preds = %41
  store double %42, ptr %6, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i8, align 1
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca double, align 8
  store i32 %0, ptr %3, align 4
  store ptr %1, ptr %4, align 8
  store i8 0, ptr %5, align 1
  %11 = icmp sgt i32 %0, 1
  br i1 %11, label %12, label %27

12:                                               ; preds = %2
  %13 = load i32, ptr %3, align 4
  %14 = load ptr, ptr %4, align 8
  %15 = getelementptr inbounds nuw i8, ptr %14, i64 8
  br label %16

16:                                               ; preds = %24, %12
  %17 = phi i32 [ %25, %24 ], [ 1, %12 ]
  %18 = icmp slt i32 %17, %13
  br i1 %18, label %19, label %.loopexit

19:                                               ; preds = %16
  %20 = load ptr, ptr %15, align 8
  %21 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %20, ptr noundef nonnull dereferenceable(4) @.str) #5
  %.not = icmp eq i32 %21, 0
  br i1 %.not, label %22, label %23

22:                                               ; preds = %19
  store i8 1, ptr %5, align 1
  br label %26

23:                                               ; preds = %19
  br label %24

24:                                               ; preds = %23
  %25 = add nuw nsw i32 %17, 1
  br label %16, !llvm.loop !23

.loopexit:                                        ; preds = %16
  br label %26

26:                                               ; preds = %.loopexit, %22
  br label %27

27:                                               ; preds = %26, %2
  %28 = call dereferenceable_or_null(16000) ptr @malloc(i64 noundef 16000) #6
  store ptr %28, ptr %6, align 8
  br label %29

29:                                               ; preds = %36, %27
  %30 = phi i32 [ %37, %36 ], [ 0, %27 ]
  %31 = icmp samesign ult i32 %30, 2000
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = call dereferenceable_or_null(16008) ptr @malloc(i64 noundef 16008) #6
  %34 = zext nneg i32 %30 to i64
  %35 = getelementptr inbounds nuw [8 x i8], ptr %28, i64 %34
  store ptr %33, ptr %35, align 8
  br label %36

36:                                               ; preds = %32
  %37 = add nuw nsw i32 %30, 1
  br label %29, !llvm.loop !24

38:                                               ; preds = %29
  %39 = call dereferenceable_or_null(16000) ptr @malloc(i64 noundef 16000) #6
  store ptr %39, ptr %7, align 8
  %40 = call dereferenceable_or_null(16000) ptr @malloc(i64 noundef 16000) #6
  store ptr %40, ptr %8, align 8
  %41 = call dereferenceable_or_null(8000) ptr @malloc(i64 noundef 8000) #6
  store ptr %41, ptr %9, align 8
  %42 = load ptr, ptr %6, align 8
  call void @matgen(ptr noundef %42, ptr noundef %39)
  call void @dgefa(ptr noundef %42, ptr noundef %41)
  %43 = load ptr, ptr %7, align 8
  call void @dgesl(ptr noundef %42, ptr noundef %41, ptr noundef %43)
  store double 0.000000e+00, ptr %10, align 8
  %44 = load ptr, ptr %9, align 8
  call void @free(ptr noundef %44) #5
  %45 = load ptr, ptr %8, align 8
  call void @free(ptr noundef %45) #5
  %46 = load ptr, ptr %7, align 8
  call void @free(ptr noundef %46) #5
  %47 = load ptr, ptr %6, align 8
  br label %48

48:                                               ; preds = %55, %38
  %49 = phi i32 [ %56, %55 ], [ 0, %38 ]
  %50 = icmp samesign ult i32 %49, 2000
  br i1 %50, label %51, label %57

51:                                               ; preds = %48
  %52 = zext nneg i32 %49 to i64
  %53 = getelementptr inbounds nuw [8 x i8], ptr %47, i64 %52
  %54 = load ptr, ptr %53, align 8
  call void @free(ptr noundef %54) #5
  br label %55

55:                                               ; preds = %51
  %56 = add nuw nsw i32 %49, 1
  br label %48, !llvm.loop !25

57:                                               ; preds = %48
  %58 = load ptr, ptr %6, align 8
  call void @free(ptr noundef %58) #5
  %59 = load i8, ptr %5, align 1
  %.not6 = icmp eq i8 %59, 0
  br i1 %.not6, label %64, label %60

60:                                               ; preds = %57
  %61 = call ptr @__acrt_iob_func(i32 noundef 1) #5
  %62 = load double, ptr %10, align 8
  %63 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %61, ptr noundef nonnull @.str.1, double noundef %62) #5
  br label %68

64:                                               ; preds = %57
  %65 = call ptr @__acrt_iob_func(i32 noundef 1) #5
  %66 = load double, ptr %10, align 8
  %67 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %65, ptr noundef nonnull @.str.2, double noundef %66) #5
  br label %68

68:                                               ; preds = %64, %60
  %69 = call ptr @__acrt_iob_func(i32 noundef 1) #5
  %70 = call i32 @fflush(ptr noundef %69) #5
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
  store i32 %6, ptr @seed, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %0
  %9 = load i32, ptr @seed, align 4
  %10 = add nsw i32 %9, 2147483647
  store i32 %10, ptr @seed, align 4
  br label %11

11:                                               ; preds = %8, %0
  %12 = load i32, ptr @seed, align 4
  %13 = sitofp i32 %12 to double
  %14 = fmul nnan double %13, f0x3E00000000200FE1
  %15 = xor i32 %12, 123459876
  store i32 %15, ptr @seed, align 4
  ret double %14
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
