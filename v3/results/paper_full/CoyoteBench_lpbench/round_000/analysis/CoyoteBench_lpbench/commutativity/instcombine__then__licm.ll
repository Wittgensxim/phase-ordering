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
  %7 = load ptr, ptr %3, align 8
  %.promoted = load i32, ptr %6, align 1
  br label %8

8:                                                ; preds = %23, %2
  %storemerge4.lcssa5 = phi i32 [ %.promoted, %2 ], [ %storemerge4.lcssa, %23 ]
  %storemerge = phi i32 [ 0, %2 ], [ %24, %23 ]
  %9 = icmp slt i32 %storemerge, 2000
  br i1 %9, label %10, label %25

10:                                               ; preds = %8
  %11 = sext i32 %storemerge to i64
  br label %12

12:                                               ; preds = %20, %10
  %storemerge4 = phi i32 [ 0, %10 ], [ %21, %20 ]
  %13 = icmp slt i32 %storemerge4, 2000
  br i1 %13, label %14, label %22

14:                                               ; preds = %12
  %15 = call double @random_double()
  %16 = sext i32 %storemerge4 to i64
  %17 = getelementptr inbounds [8 x i8], ptr %7, i64 %16
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds [8 x i8], ptr %18, i64 %11
  store double %15, ptr %19, align 8
  br label %20

20:                                               ; preds = %14
  %21 = add nsw i32 %storemerge4, 1
  br label %12, !llvm.loop !7

22:                                               ; preds = %12
  %storemerge4.lcssa = phi i32 [ %storemerge4, %12 ]
  br label %23

23:                                               ; preds = %22
  %24 = add nsw i32 %storemerge, 1
  br label %8, !llvm.loop !9

25:                                               ; preds = %8
  %storemerge4.lcssa5.lcssa = phi i32 [ %storemerge4.lcssa5, %8 ]
  %storemerge.lcssa = phi i32 [ %storemerge, %8 ]
  store i32 %storemerge.lcssa, ptr %5, align 4
  store i32 %storemerge4.lcssa5.lcssa, ptr %6, align 1
  %26 = load ptr, ptr %4, align 8
  br label %27

27:                                               ; preds = %32, %25
  %storemerge1 = phi i32 [ 0, %25 ], [ %33, %32 ]
  %28 = icmp slt i32 %storemerge1, 2000
  br i1 %28, label %29, label %34

29:                                               ; preds = %27
  %30 = sext i32 %storemerge1 to i64
  %31 = getelementptr inbounds [8 x i8], ptr %26, i64 %30
  store double 0.000000e+00, ptr %31, align 8
  br label %32

32:                                               ; preds = %29
  %33 = add nsw i32 %storemerge1, 1
  br label %27, !llvm.loop !10

34:                                               ; preds = %27
  %storemerge1.lcssa = phi i32 [ %storemerge1, %27 ]
  store i32 %storemerge1.lcssa, ptr %5, align 4
  %35 = load ptr, ptr %3, align 8
  %36 = load ptr, ptr %4, align 8
  br label %37

37:                                               ; preds = %56, %34
  %storemerge3.lcssa9 = phi i32 [ poison, %34 ], [ %storemerge3.lcssa, %56 ]
  %storemerge2 = phi i32 [ 0, %34 ], [ %57, %56 ]
  %38 = icmp slt i32 %storemerge2, 2000
  br i1 %38, label %39, label %58

39:                                               ; preds = %37
  %40 = sext i32 %storemerge2 to i64
  %41 = getelementptr inbounds [8 x i8], ptr %35, i64 %40
  br label %42

42:                                               ; preds = %53, %39
  %storemerge3 = phi i32 [ 0, %39 ], [ %54, %53 ]
  %43 = icmp slt i32 %storemerge3, 2000
  br i1 %43, label %44, label %55

44:                                               ; preds = %42
  %45 = load ptr, ptr %41, align 8
  %46 = sext i32 %storemerge3 to i64
  %47 = getelementptr inbounds [8 x i8], ptr %45, i64 %46
  %48 = load double, ptr %47, align 8
  %49 = sext i32 %storemerge3 to i64
  %50 = getelementptr inbounds [8 x i8], ptr %36, i64 %49
  %51 = load double, ptr %50, align 8
  %52 = fadd double %51, %48
  store double %52, ptr %50, align 8
  br label %53

53:                                               ; preds = %44
  %54 = add nsw i32 %storemerge3, 1
  br label %42, !llvm.loop !11

55:                                               ; preds = %42
  %storemerge3.lcssa = phi i32 [ %storemerge3, %42 ]
  br label %56

56:                                               ; preds = %55
  %57 = add nsw i32 %storemerge2, 1
  br label %37, !llvm.loop !12

58:                                               ; preds = %37
  %storemerge3.lcssa9.lcssa = phi i32 [ %storemerge3.lcssa9, %37 ]
  %storemerge2.lcssa = phi i32 [ %storemerge2, %37 ]
  store i32 %storemerge2.lcssa, ptr %6, align 4
  store i32 %storemerge3.lcssa9.lcssa, ptr %5, align 4
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
  br label %83

16:                                               ; preds = %4
  %17 = load i32, ptr %5, align 4
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store i32 0, ptr %13, align 4
  br label %82

20:                                               ; preds = %16
  %21 = load i32, ptr %8, align 4
  %.not = icmp eq i32 %21, 1
  br i1 %.not, label %54, label %22

22:                                               ; preds = %20
  %23 = load ptr, ptr %6, align 8
  %24 = load i32, ptr %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [8 x i8], ptr %23, i64 %25
  %27 = load double, ptr %26, align 8
  %28 = call double @llvm.fabs.f64(double %27)
  store double %28, ptr %9, align 8
  %29 = load i32, ptr %8, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, ptr %12, align 4
  %31 = load i32, ptr %5, align 4
  %32 = load ptr, ptr %6, align 8
  %33 = load i32, ptr %7, align 4
  %34 = load i32, ptr %8, align 4
  %.promoted = load i32, ptr %12, align 4
  %.promoted2 = load double, ptr %10, align 8
  %.promoted4 = load double, ptr %9, align 8
  %.promoted6 = load i32, ptr %13, align 1
  br label %35

35:                                               ; preds = %51, %22
  %storemerge18 = phi i32 [ %.promoted6, %22 ], [ %storemerge17, %51 ]
  %36 = phi double [ %.promoted4, %22 ], [ %49, %51 ]
  %37 = phi double [ %.promoted2, %22 ], [ %45, %51 ]
  %38 = phi i32 [ %.promoted, %22 ], [ %50, %51 ]
  %storemerge1 = phi i32 [ 1, %22 ], [ %52, %51 ]
  %39 = icmp slt i32 %storemerge1, %31
  br i1 %39, label %40, label %53

40:                                               ; preds = %35
  %41 = add nsw i32 %38, %33
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [8 x i8], ptr %32, i64 %42
  %44 = load double, ptr %43, align 8
  %45 = call double @llvm.fabs.f64(double %44)
  %46 = fcmp ogt double %45, %36
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  br label %48

48:                                               ; preds = %47, %40
  %storemerge17 = phi i32 [ %storemerge1, %47 ], [ %storemerge18, %40 ]
  %49 = phi double [ %45, %47 ], [ %36, %40 ]
  %50 = add nsw i32 %38, %34
  br label %51

51:                                               ; preds = %48
  %52 = add nsw i32 %storemerge1, 1
  br label %35, !llvm.loop !13

53:                                               ; preds = %35
  %storemerge18.lcssa = phi i32 [ %storemerge18, %35 ]
  %.lcssa5 = phi double [ %36, %35 ]
  %.lcssa3 = phi double [ %37, %35 ]
  %.lcssa = phi i32 [ %38, %35 ]
  %storemerge1.lcssa = phi i32 [ %storemerge1, %35 ]
  store i32 %storemerge1.lcssa, ptr %11, align 4
  store i32 %.lcssa, ptr %12, align 4
  store double %.lcssa3, ptr %10, align 8
  store double %.lcssa5, ptr %9, align 8
  store i32 %storemerge18.lcssa, ptr %13, align 1
  br label %81

54:                                               ; preds = %20
  store i32 0, ptr %13, align 4
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
  %.promoted10 = load double, ptr %10, align 8
  %.promoted12 = load double, ptr %9, align 8
  %.promoted14 = load i32, ptr %13, align 1
  br label %64

64:                                               ; preds = %78, %54
  %storemerge16 = phi i32 [ %.promoted14, %54 ], [ %storemerge15, %78 ]
  %65 = phi double [ %.promoted12, %54 ], [ %77, %78 ]
  %66 = phi double [ %.promoted10, %54 ], [ %73, %78 ]
  %storemerge = phi i32 [ 1, %54 ], [ %79, %78 ]
  %67 = icmp slt i32 %storemerge, %61
  br i1 %67, label %68, label %80

68:                                               ; preds = %64
  %69 = add nsw i32 %storemerge, %63
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [8 x i8], ptr %62, i64 %70
  %72 = load double, ptr %71, align 8
  %73 = call double @llvm.fabs.f64(double %72)
  %74 = fcmp ogt double %73, %65
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  br label %76

76:                                               ; preds = %75, %68
  %storemerge15 = phi i32 [ %storemerge, %75 ], [ %storemerge16, %68 ]
  %77 = phi double [ %73, %75 ], [ %65, %68 ]
  br label %78

78:                                               ; preds = %76
  %79 = add nsw i32 %storemerge, 1
  br label %64, !llvm.loop !14

80:                                               ; preds = %64
  %storemerge16.lcssa = phi i32 [ %storemerge16, %64 ]
  %.lcssa13 = phi double [ %65, %64 ]
  %.lcssa11 = phi double [ %66, %64 ]
  %storemerge.lcssa = phi i32 [ %storemerge, %64 ]
  store i32 %storemerge.lcssa, ptr %11, align 4
  store double %.lcssa11, ptr %10, align 8
  store double %.lcssa13, ptr %9, align 8
  store i32 %storemerge16.lcssa, ptr %13, align 1
  br label %81

81:                                               ; preds = %80, %53
  br label %82

82:                                               ; preds = %81, %19
  br label %83

83:                                               ; preds = %82, %15
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
  %13 = icmp sgt i32 %0, 0
  br i1 %13, label %14, label %53

14:                                               ; preds = %5
  %15 = load i32, ptr %10, align 4
  %.not = icmp eq i32 %15, 1
  br i1 %.not, label %36, label %16

16:                                               ; preds = %14
  %17 = load i32, ptr %6, align 4
  %18 = load i32, ptr %10, align 4
  %19 = mul nsw i32 %17, %18
  store i32 %19, ptr %12, align 4
  %20 = load i32, ptr %12, align 4
  %21 = load double, ptr %7, align 8
  %22 = load ptr, ptr %8, align 8
  %23 = load i32, ptr %9, align 4
  %24 = load i32, ptr %10, align 4
  br label %25

25:                                               ; preds = %33, %16
  %storemerge1 = phi i32 [ 0, %16 ], [ %34, %33 ]
  %26 = icmp slt i32 %storemerge1, %20
  br i1 %26, label %27, label %35

27:                                               ; preds = %25
  %28 = add nsw i32 %storemerge1, %23
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [8 x i8], ptr %22, i64 %29
  %31 = load double, ptr %30, align 8
  %32 = fmul double %31, %21
  store double %32, ptr %30, align 8
  br label %33

33:                                               ; preds = %27
  %34 = add nsw i32 %storemerge1, %24
  br label %25, !llvm.loop !15

35:                                               ; preds = %25
  %storemerge1.lcssa = phi i32 [ %storemerge1, %25 ]
  store i32 %storemerge1.lcssa, ptr %11, align 4
  br label %52

36:                                               ; preds = %14
  %37 = load i32, ptr %6, align 4
  %38 = load double, ptr %7, align 8
  %39 = load ptr, ptr %8, align 8
  %40 = load i32, ptr %9, align 4
  br label %41

41:                                               ; preds = %49, %36
  %storemerge = phi i32 [ 0, %36 ], [ %50, %49 ]
  %42 = icmp slt i32 %storemerge, %37
  br i1 %42, label %43, label %51

43:                                               ; preds = %41
  %44 = add nsw i32 %storemerge, %40
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [8 x i8], ptr %39, i64 %45
  %47 = load double, ptr %46, align 8
  %48 = fmul double %47, %38
  store double %48, ptr %46, align 8
  br label %49

49:                                               ; preds = %43
  %50 = add nsw i32 %storemerge, 1
  br label %41, !llvm.loop !16

51:                                               ; preds = %41
  %storemerge.lcssa = phi i32 [ %storemerge, %41 ]
  store i32 %storemerge.lcssa, ptr %11, align 4
  br label %52

52:                                               ; preds = %51, %35
  br label %53

53:                                               ; preds = %52, %5
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
  br i1 %21, label %22, label %96

22:                                               ; preds = %8
  %23 = load double, ptr %10, align 8
  %24 = fcmp une double %23, 0.000000e+00
  br i1 %24, label %25, label %96

25:                                               ; preds = %22
  %26 = load i32, ptr %13, align 4
  %.not = icmp eq i32 %26, 1
  br i1 %.not, label %27, label %29

27:                                               ; preds = %25
  %28 = load i32, ptr %16, align 4
  %.not1 = icmp eq i32 %28, 1
  br i1 %.not1, label %73, label %29

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
  %46 = load i32, ptr %9, align 4
  %47 = load double, ptr %10, align 8
  %48 = load ptr, ptr %11, align 8
  %49 = load i32, ptr %12, align 4
  %50 = load ptr, ptr %14, align 8
  %51 = load i32, ptr %15, align 4
  %52 = load i32, ptr %13, align 4
  %53 = load i32, ptr %16, align 4
  %.promoted = load i32, ptr %18, align 4
  %.promoted3 = load i32, ptr %19, align 4
  br label %54

54:                                               ; preds = %70, %45
  %55 = phi i32 [ %.promoted3, %45 ], [ %69, %70 ]
  %56 = phi i32 [ %.promoted, %45 ], [ %68, %70 ]
  %storemerge2 = phi i32 [ 0, %45 ], [ %71, %70 ]
  %57 = icmp slt i32 %storemerge2, %46
  br i1 %57, label %58, label %72

58:                                               ; preds = %54
  %59 = add nsw i32 %56, %49
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [8 x i8], ptr %48, i64 %60
  %62 = load double, ptr %61, align 8
  %63 = add nsw i32 %55, %51
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [8 x i8], ptr %50, i64 %64
  %66 = load double, ptr %65, align 8
  %67 = call double @llvm.fmuladd.f64(double %47, double %62, double %66)
  store double %67, ptr %65, align 8
  %68 = add nsw i32 %56, %52
  %69 = add nsw i32 %55, %53
  br label %70

70:                                               ; preds = %58
  %71 = add nsw i32 %storemerge2, 1
  br label %54, !llvm.loop !17

72:                                               ; preds = %54
  %.lcssa4 = phi i32 [ %55, %54 ]
  %.lcssa = phi i32 [ %56, %54 ]
  %storemerge2.lcssa = phi i32 [ %storemerge2, %54 ]
  store i32 %storemerge2.lcssa, ptr %17, align 4
  store i32 %.lcssa, ptr %18, align 4
  store i32 %.lcssa4, ptr %19, align 4
  br label %96

73:                                               ; preds = %27
  %74 = load i32, ptr %9, align 4
  %75 = load double, ptr %10, align 8
  %76 = load ptr, ptr %11, align 8
  %77 = load i32, ptr %12, align 4
  %78 = load ptr, ptr %14, align 8
  %79 = load i32, ptr %15, align 4
  br label %80

80:                                               ; preds = %92, %73
  %storemerge = phi i32 [ 0, %73 ], [ %93, %92 ]
  %81 = icmp slt i32 %storemerge, %74
  br i1 %81, label %82, label %94

82:                                               ; preds = %80
  %83 = add nsw i32 %storemerge, %77
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [8 x i8], ptr %76, i64 %84
  %86 = load double, ptr %85, align 8
  %87 = add nsw i32 %storemerge, %79
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [8 x i8], ptr %78, i64 %88
  %90 = load double, ptr %89, align 8
  %91 = call double @llvm.fmuladd.f64(double %75, double %86, double %90)
  store double %91, ptr %89, align 8
  br label %92

92:                                               ; preds = %82
  %93 = add nsw i32 %storemerge, 1
  br label %80, !llvm.loop !18

94:                                               ; preds = %80
  %storemerge.lcssa = phi i32 [ %storemerge, %80 ]
  store i32 %storemerge.lcssa, ptr %17, align 4
  br label %95

95:                                               ; preds = %94
  br label %96

96:                                               ; preds = %95, %72, %22, %8
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
  %12 = load ptr, ptr %3, align 8
  %13 = load ptr, ptr %4, align 8
  %14 = load ptr, ptr %3, align 8
  %.promoted6 = load ptr, ptr %8, align 8
  %.promoted8 = load i32, ptr %9, align 4
  %.promoted10 = load i32, ptr %10, align 4
  %.promoted12 = load double, ptr %5, align 8
  %.promoted15 = load ptr, ptr %11, align 8
  %.promoted = load i32, ptr %7, align 1
  br label %15

15:                                               ; preds = %77, %2
  %storemerge1.lcssa19 = phi i32 [ %.promoted, %2 ], [ %storemerge1.lcssa18, %77 ]
  %.lcssa17 = phi ptr [ %.promoted15, %2 ], [ %.lcssa16, %77 ]
  %.lcssa414 = phi double [ %.promoted12, %2 ], [ %.lcssa413, %77 ]
  %16 = phi i32 [ %.promoted10, %2 ], [ %27, %77 ]
  %17 = phi i32 [ %.promoted8, %2 ], [ %24, %77 ]
  %18 = phi ptr [ %.promoted6, %2 ], [ %23, %77 ]
  %storemerge = phi i32 [ 0, %2 ], [ %78, %77 ]
  %19 = icmp slt i32 %storemerge, 1999
  br i1 %19, label %20, label %79

20:                                               ; preds = %15
  %21 = sext i32 %storemerge to i64
  %22 = getelementptr inbounds [8 x i8], ptr %12, i64 %21
  %23 = load ptr, ptr %22, align 8
  %24 = add nsw i32 %storemerge, 1
  %25 = sub nsw i32 2000, %storemerge
  %26 = call i32 @idamax(i32 noundef %25, ptr noundef %23, i32 noundef %storemerge, i32 noundef 1)
  %27 = add nsw i32 %26, %storemerge
  %28 = sext i32 %storemerge to i64
  %29 = getelementptr inbounds [4 x i8], ptr %13, i64 %28
  store i32 %27, ptr %29, align 4
  %30 = sext i32 %27 to i64
  %31 = getelementptr inbounds [8 x i8], ptr %23, i64 %30
  %32 = load double, ptr %31, align 8
  %33 = fcmp une double %32, 0.000000e+00
  br i1 %33, label %34, label %76

34:                                               ; preds = %20
  %.not = icmp eq i32 %27, %storemerge
  br i1 %.not, label %46, label %35

35:                                               ; preds = %34
  %36 = sext i32 %27 to i64
  %37 = getelementptr inbounds [8 x i8], ptr %23, i64 %36
  %38 = load double, ptr %37, align 8
  %39 = sext i32 %storemerge to i64
  %40 = getelementptr inbounds [8 x i8], ptr %23, i64 %39
  %41 = load double, ptr %40, align 8
  %42 = sext i32 %27 to i64
  %43 = getelementptr inbounds [8 x i8], ptr %23, i64 %42
  store double %41, ptr %43, align 8
  %44 = sext i32 %storemerge to i64
  %45 = getelementptr inbounds [8 x i8], ptr %23, i64 %44
  store double %38, ptr %45, align 8
  br label %46

46:                                               ; preds = %35, %34
  %47 = sext i32 %storemerge to i64
  %48 = getelementptr inbounds [8 x i8], ptr %23, i64 %47
  %49 = load double, ptr %48, align 8
  %50 = fdiv double -1.000000e+00, %49
  %51 = sub nsw i32 2000, %24
  call void @dscal(i32 noundef %51, double noundef %50, ptr noundef %23, i32 noundef %24, i32 noundef 1)
  %52 = sext i32 %27 to i64
  %.not2 = icmp eq i32 %27, %storemerge
  %53 = sext i32 %storemerge to i64
  %54 = sext i32 %27 to i64
  %55 = sext i32 %storemerge to i64
  %56 = sub nsw i32 2000, %24
  br label %57

57:                                               ; preds = %73, %46
  %58 = phi double [ %50, %46 ], [ %66, %73 ]
  %59 = phi ptr [ %.lcssa17, %46 ], [ %64, %73 ]
  %storemerge1 = phi i32 [ %24, %46 ], [ %74, %73 ]
  %60 = icmp slt i32 %storemerge1, 2000
  br i1 %60, label %61, label %75

61:                                               ; preds = %57
  %62 = sext i32 %storemerge1 to i64
  %63 = getelementptr inbounds [8 x i8], ptr %14, i64 %62
  %64 = load ptr, ptr %63, align 8
  %65 = getelementptr inbounds [8 x i8], ptr %64, i64 %52
  %66 = load double, ptr %65, align 8
  br i1 %.not2, label %72, label %67

67:                                               ; preds = %61
  %68 = getelementptr inbounds [8 x i8], ptr %64, i64 %53
  %69 = load double, ptr %68, align 8
  %70 = getelementptr inbounds [8 x i8], ptr %64, i64 %54
  store double %69, ptr %70, align 8
  %71 = getelementptr inbounds [8 x i8], ptr %64, i64 %55
  store double %66, ptr %71, align 8
  br label %72

72:                                               ; preds = %67, %61
  call void @daxpy(i32 noundef %56, double noundef %66, ptr noundef %23, i32 noundef %24, i32 noundef 1, ptr noundef %64, i32 noundef %24, i32 noundef 1)
  br label %73

73:                                               ; preds = %72
  %74 = add nsw i32 %storemerge1, 1
  br label %57, !llvm.loop !19

75:                                               ; preds = %57
  %.lcssa4 = phi double [ %58, %57 ]
  %.lcssa = phi ptr [ %59, %57 ]
  %storemerge1.lcssa = phi i32 [ %storemerge1, %57 ]
  br label %76

76:                                               ; preds = %75, %20
  %storemerge1.lcssa18 = phi i32 [ %storemerge1.lcssa, %75 ], [ %storemerge1.lcssa19, %20 ]
  %.lcssa16 = phi ptr [ %.lcssa, %75 ], [ %.lcssa17, %20 ]
  %.lcssa413 = phi double [ %.lcssa4, %75 ], [ %.lcssa414, %20 ]
  br label %77

77:                                               ; preds = %76
  %78 = add nsw i32 %storemerge, 1
  br label %15, !llvm.loop !20

79:                                               ; preds = %15
  %storemerge1.lcssa19.lcssa = phi i32 [ %storemerge1.lcssa19, %15 ]
  %.lcssa17.lcssa = phi ptr [ %.lcssa17, %15 ]
  %.lcssa414.lcssa = phi double [ %.lcssa414, %15 ]
  %.lcssa11 = phi i32 [ %16, %15 ]
  %.lcssa9 = phi i32 [ %17, %15 ]
  %.lcssa7 = phi ptr [ %18, %15 ]
  %storemerge.lcssa = phi i32 [ %storemerge, %15 ]
  store i32 %storemerge.lcssa, ptr %6, align 4
  store ptr %.lcssa7, ptr %8, align 8
  store i32 %.lcssa9, ptr %9, align 4
  store i32 %.lcssa11, ptr %10, align 4
  store double %.lcssa414.lcssa, ptr %5, align 8
  store ptr %.lcssa17.lcssa, ptr %11, align 8
  store i32 %storemerge1.lcssa19.lcssa, ptr %7, align 1
  %80 = load ptr, ptr %4, align 8
  %81 = getelementptr inbounds nuw i8, ptr %80, i64 7996
  store i32 1999, ptr %81, align 4
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
  %12 = load ptr, ptr %5, align 8
  %13 = load ptr, ptr %6, align 8
  %14 = load ptr, ptr %6, align 8
  %15 = load ptr, ptr %6, align 8
  %16 = load ptr, ptr %4, align 8
  %17 = load ptr, ptr %6, align 8
  %.promoted = load i32, ptr %10, align 4
  %.promoted2 = load double, ptr %7, align 8
  %.promoted4 = load i32, ptr %11, align 4
  br label %18

18:                                               ; preds = %44, %3
  %19 = phi i32 [ %.promoted4, %3 ], [ %39, %44 ]
  %20 = phi double [ %.promoted2, %3 ], [ %29, %44 ]
  %21 = phi i32 [ %.promoted, %3 ], [ %26, %44 ]
  %storemerge = phi i32 [ 0, %3 ], [ %45, %44 ]
  %22 = icmp slt i32 %storemerge, 1999
  br i1 %22, label %23, label %46

23:                                               ; preds = %18
  %24 = sext i32 %storemerge to i64
  %25 = getelementptr inbounds [4 x i8], ptr %12, i64 %24
  %26 = load i32, ptr %25, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [8 x i8], ptr %13, i64 %27
  %29 = load double, ptr %28, align 8
  %.not = icmp eq i32 %26, %storemerge
  br i1 %.not, label %38, label %30

30:                                               ; preds = %23
  %31 = sext i32 %storemerge to i64
  %32 = getelementptr inbounds [8 x i8], ptr %14, i64 %31
  %33 = load double, ptr %32, align 8
  %34 = sext i32 %26 to i64
  %35 = getelementptr inbounds [8 x i8], ptr %14, i64 %34
  store double %33, ptr %35, align 8
  %36 = sext i32 %storemerge to i64
  %37 = getelementptr inbounds [8 x i8], ptr %15, i64 %36
  store double %29, ptr %37, align 8
  br label %38

38:                                               ; preds = %30, %23
  %39 = add nsw i32 %storemerge, 1
  %40 = sub nsw i32 1999, %storemerge
  %41 = sext i32 %storemerge to i64
  %42 = getelementptr inbounds [8 x i8], ptr %16, i64 %41
  %43 = load ptr, ptr %42, align 8
  call void @daxpy(i32 noundef %40, double noundef %29, ptr noundef %43, i32 noundef %39, i32 noundef 1, ptr noundef %17, i32 noundef %39, i32 noundef 1)
  br label %44

44:                                               ; preds = %38
  %45 = add nsw i32 %storemerge, 1
  br label %18, !llvm.loop !21

46:                                               ; preds = %18
  %.lcssa5 = phi i32 [ %19, %18 ]
  %.lcssa3 = phi double [ %20, %18 ]
  %.lcssa = phi i32 [ %21, %18 ]
  %storemerge.lcssa = phi i32 [ %storemerge, %18 ]
  store i32 %storemerge.lcssa, ptr %8, align 4
  store i32 %.lcssa, ptr %10, align 4
  store double %.lcssa3, ptr %7, align 8
  store i32 %.lcssa5, ptr %11, align 4
  %47 = load ptr, ptr %4, align 8
  %48 = load ptr, ptr %6, align 8
  %49 = load ptr, ptr %6, align 8
  %50 = load ptr, ptr %4, align 8
  %51 = load ptr, ptr %6, align 8
  %.promoted7 = load i32, ptr %8, align 4
  br label %52

52:                                               ; preds = %75, %46
  %53 = phi double [ poison, %46 ], [ %71, %75 ]
  %54 = phi i32 [ %.promoted7, %46 ], [ %57, %75 ]
  %storemerge1 = phi i32 [ 0, %46 ], [ %76, %75 ]
  %55 = icmp slt i32 %storemerge1, 2000
  br i1 %55, label %56, label %77

56:                                               ; preds = %52
  %57 = sub nsw i32 1999, %storemerge1
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [8 x i8], ptr %47, i64 %58
  %60 = load ptr, ptr %59, align 8
  %61 = sext i32 %57 to i64
  %62 = getelementptr inbounds [8 x i8], ptr %60, i64 %61
  %63 = load double, ptr %62, align 8
  %64 = sext i32 %57 to i64
  %65 = getelementptr inbounds [8 x i8], ptr %48, i64 %64
  %66 = load double, ptr %65, align 8
  %67 = fdiv double %66, %63
  store double %67, ptr %65, align 8
  %68 = sext i32 %57 to i64
  %69 = getelementptr inbounds [8 x i8], ptr %49, i64 %68
  %70 = load double, ptr %69, align 8
  %71 = fneg double %70
  %72 = sext i32 %57 to i64
  %73 = getelementptr inbounds [8 x i8], ptr %50, i64 %72
  %74 = load ptr, ptr %73, align 8
  call void @daxpy(i32 noundef %57, double noundef %71, ptr noundef %74, i32 noundef 0, i32 noundef 1, ptr noundef %51, i32 noundef 0, i32 noundef 1)
  br label %75

75:                                               ; preds = %56
  %76 = add nsw i32 %storemerge1, 1
  br label %52, !llvm.loop !22

77:                                               ; preds = %52
  %.lcssa9 = phi double [ %53, %52 ]
  %.lcssa8 = phi i32 [ %54, %52 ]
  %storemerge1.lcssa = phi i32 [ %storemerge1, %52 ]
  store i32 %storemerge1.lcssa, ptr %9, align 4
  store i32 %.lcssa8, ptr %8, align 4
  store double %.lcssa9, ptr %7, align 8
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
  br i1 %12, label %13, label %27

13:                                               ; preds = %2
  %14 = load i32, ptr %3, align 4
  %15 = load ptr, ptr %4, align 8
  %16 = getelementptr inbounds nuw i8, ptr %15, i64 8
  br label %17

17:                                               ; preds = %24, %13
  %storemerge = phi i32 [ 1, %13 ], [ %25, %24 ]
  %18 = icmp slt i32 %storemerge, %14
  br i1 %18, label %19, label %.loopexit

19:                                               ; preds = %17
  %20 = load ptr, ptr %16, align 8
  %21 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %20, ptr noundef nonnull dereferenceable(4) @.str) #5
  %.not = icmp eq i32 %21, 0
  br i1 %.not, label %22, label %23

22:                                               ; preds = %19
  %storemerge.lcssa4 = phi i32 [ %storemerge, %19 ]
  store i32 %storemerge.lcssa4, ptr %5, align 4
  store i8 1, ptr %6, align 1
  br label %26

23:                                               ; preds = %19
  br label %24

24:                                               ; preds = %23
  %25 = add nsw i32 %storemerge, 1
  br label %17, !llvm.loop !23

.loopexit:                                        ; preds = %17
  %storemerge.lcssa = phi i32 [ %storemerge, %17 ]
  store i32 %storemerge.lcssa, ptr %5, align 4
  br label %26

26:                                               ; preds = %.loopexit, %22
  br label %27

27:                                               ; preds = %26, %2
  %28 = call dereferenceable_or_null(16000) ptr @malloc(i64 noundef 16000) #6
  store ptr %28, ptr %7, align 8
  %29 = load ptr, ptr %7, align 8
  br label %30

30:                                               ; preds = %36, %27
  %storemerge1 = phi i32 [ 0, %27 ], [ %37, %36 ]
  %31 = icmp slt i32 %storemerge1, 2000
  br i1 %31, label %32, label %38

32:                                               ; preds = %30
  %33 = call dereferenceable_or_null(16008) ptr @malloc(i64 noundef 16008) #6
  %34 = sext i32 %storemerge1 to i64
  %35 = getelementptr inbounds [8 x i8], ptr %29, i64 %34
  store ptr %33, ptr %35, align 8
  br label %36

36:                                               ; preds = %32
  %37 = add nsw i32 %storemerge1, 1
  br label %30, !llvm.loop !24

38:                                               ; preds = %30
  %storemerge1.lcssa = phi i32 [ %storemerge1, %30 ]
  store i32 %storemerge1.lcssa, ptr %5, align 4
  %39 = call dereferenceable_or_null(16000) ptr @malloc(i64 noundef 16000) #6
  store ptr %39, ptr %8, align 8
  %40 = call dereferenceable_or_null(16000) ptr @malloc(i64 noundef 16000) #6
  store ptr %40, ptr %9, align 8
  %41 = call dereferenceable_or_null(8000) ptr @malloc(i64 noundef 8000) #6
  store ptr %41, ptr %10, align 8
  %42 = load ptr, ptr %7, align 8
  call void @matgen(ptr noundef %42, ptr noundef %39)
  call void @dgefa(ptr noundef %42, ptr noundef %41)
  %43 = load ptr, ptr %8, align 8
  call void @dgesl(ptr noundef %42, ptr noundef %41, ptr noundef %43)
  store double 0.000000e+00, ptr %11, align 8
  %44 = load ptr, ptr %10, align 8
  call void @free(ptr noundef %44) #5
  %45 = load ptr, ptr %9, align 8
  call void @free(ptr noundef %45) #5
  %46 = load ptr, ptr %8, align 8
  call void @free(ptr noundef %46) #5
  %47 = load ptr, ptr %7, align 8
  br label %48

48:                                               ; preds = %54, %38
  %storemerge2 = phi i32 [ 0, %38 ], [ %55, %54 ]
  %49 = icmp slt i32 %storemerge2, 2000
  br i1 %49, label %50, label %56

50:                                               ; preds = %48
  %51 = sext i32 %storemerge2 to i64
  %52 = getelementptr inbounds [8 x i8], ptr %47, i64 %51
  %53 = load ptr, ptr %52, align 8
  call void @free(ptr noundef %53) #5
  br label %54

54:                                               ; preds = %50
  %55 = add nsw i32 %storemerge2, 1
  br label %48, !llvm.loop !25

56:                                               ; preds = %48
  %storemerge2.lcssa = phi i32 [ %storemerge2, %48 ]
  store i32 %storemerge2.lcssa, ptr %5, align 4
  %57 = load ptr, ptr %7, align 8
  call void @free(ptr noundef %57) #5
  %58 = load i8, ptr %6, align 1
  %.not3 = icmp eq i8 %58, 0
  br i1 %.not3, label %63, label %59

59:                                               ; preds = %56
  %60 = call ptr @__acrt_iob_func(i32 noundef 1) #5
  %61 = load double, ptr %11, align 8
  %62 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %60, ptr noundef nonnull @.str.1, double noundef %61) #5
  br label %67

63:                                               ; preds = %56
  %64 = call ptr @__acrt_iob_func(i32 noundef 1) #5
  %65 = load double, ptr %11, align 8
  %66 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %64, ptr noundef nonnull @.str.2, double noundef %65) #5
  br label %67

67:                                               ; preds = %63, %59
  %68 = call ptr @__acrt_iob_func(i32 noundef 1) #5
  %69 = call i32 @fflush(ptr noundef %68) #5
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
