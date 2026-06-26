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

30:                                               ; preds = %37, %29
  %storemerge1 = phi i32 [ 0, %29 ], [ %39, %37 ]
  store i32 %storemerge1, ptr %5, align 4
  %31 = icmp slt i32 %storemerge1, 2000
  br i1 %31, label %32, label %40

32:                                               ; preds = %30
  %33 = load ptr, ptr %4, align 8
  %34 = load i32, ptr %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [8 x i8], ptr %33, i64 %35
  store double 0.000000e+00, ptr %36, align 8
  br label %37

37:                                               ; preds = %32
  %38 = load i32, ptr %5, align 4
  %39 = add nsw i32 %38, 1
  br label %30, !llvm.loop !10

40:                                               ; preds = %30
  br label %41

41:                                               ; preds = %65, %40
  %storemerge2 = phi i32 [ 0, %40 ], [ %67, %65 ]
  store i32 %storemerge2, ptr %6, align 4
  %42 = icmp slt i32 %storemerge2, 2000
  br i1 %42, label %43, label %68

43:                                               ; preds = %41
  br label %44

44:                                               ; preds = %61, %43
  %storemerge3 = phi i32 [ 0, %43 ], [ %63, %61 ]
  store i32 %storemerge3, ptr %5, align 4
  %45 = icmp slt i32 %storemerge3, 2000
  br i1 %45, label %46, label %64

46:                                               ; preds = %44
  %47 = load ptr, ptr %3, align 8
  %48 = load i32, ptr %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [8 x i8], ptr %47, i64 %49
  %51 = load ptr, ptr %50, align 8
  %52 = load i32, ptr %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [8 x i8], ptr %51, i64 %53
  %55 = load double, ptr %54, align 8
  %56 = load ptr, ptr %4, align 8
  %57 = sext i32 %52 to i64
  %58 = getelementptr inbounds [8 x i8], ptr %56, i64 %57
  %59 = load double, ptr %58, align 8
  %60 = fadd double %59, %55
  store double %60, ptr %58, align 8
  br label %61

61:                                               ; preds = %46
  %62 = load i32, ptr %5, align 4
  %63 = add nsw i32 %62, 1
  br label %44, !llvm.loop !11

64:                                               ; preds = %44
  br label %65

65:                                               ; preds = %64
  %66 = load i32, ptr %6, align 4
  %67 = add nsw i32 %66, 1
  br label %41, !llvm.loop !12

68:                                               ; preds = %41
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
  %17 = load i32, ptr %5, align 4
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store i32 0, ptr %13, align 4
  br label %86

20:                                               ; preds = %16
  %21 = load i32, ptr %8, align 4
  %.not = icmp eq i32 %21, 1
  br i1 %.not, label %56, label %22

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
  br label %31

31:                                               ; preds = %52, %22
  %storemerge1 = phi i32 [ 1, %22 ], [ %54, %52 ]
  store i32 %storemerge1, ptr %11, align 4
  %32 = load i32, ptr %5, align 4
  %33 = icmp slt i32 %storemerge1, %32
  br i1 %33, label %34, label %55

34:                                               ; preds = %31
  %35 = load ptr, ptr %6, align 8
  %36 = load i32, ptr %12, align 4
  %37 = load i32, ptr %7, align 4
  %38 = add nsw i32 %36, %37
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [8 x i8], ptr %35, i64 %39
  %41 = load double, ptr %40, align 8
  %42 = call double @llvm.fabs.f64(double %41)
  store double %42, ptr %10, align 8
  %43 = load double, ptr %9, align 8
  %44 = fcmp ogt double %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %34
  %46 = load i32, ptr %11, align 4
  store i32 %46, ptr %13, align 4
  %47 = load double, ptr %10, align 8
  store double %47, ptr %9, align 8
  br label %48

48:                                               ; preds = %45, %34
  %49 = load i32, ptr %8, align 4
  %50 = load i32, ptr %12, align 4
  %51 = add nsw i32 %50, %49
  store i32 %51, ptr %12, align 4
  br label %52

52:                                               ; preds = %48
  %53 = load i32, ptr %11, align 4
  %54 = add nsw i32 %53, 1
  br label %31, !llvm.loop !13

55:                                               ; preds = %31
  br label %85

56:                                               ; preds = %20
  store i32 0, ptr %13, align 4
  %57 = load ptr, ptr %6, align 8
  %58 = load i32, ptr %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [8 x i8], ptr %57, i64 %59
  %61 = load double, ptr %60, align 8
  %62 = call double @llvm.fabs.f64(double %61)
  store double %62, ptr %9, align 8
  br label %63

63:                                               ; preds = %81, %56
  %storemerge = phi i32 [ 1, %56 ], [ %83, %81 ]
  store i32 %storemerge, ptr %11, align 4
  %64 = load i32, ptr %5, align 4
  %65 = icmp slt i32 %storemerge, %64
  br i1 %65, label %66, label %84

66:                                               ; preds = %63
  %67 = load ptr, ptr %6, align 8
  %68 = load i32, ptr %11, align 4
  %69 = load i32, ptr %7, align 4
  %70 = add nsw i32 %68, %69
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [8 x i8], ptr %67, i64 %71
  %73 = load double, ptr %72, align 8
  %74 = call double @llvm.fabs.f64(double %73)
  store double %74, ptr %10, align 8
  %75 = load double, ptr %9, align 8
  %76 = fcmp ogt double %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %66
  %78 = load i32, ptr %11, align 4
  store i32 %78, ptr %13, align 4
  %79 = load double, ptr %10, align 8
  store double %79, ptr %9, align 8
  br label %80

80:                                               ; preds = %77, %66
  br label %81

81:                                               ; preds = %80
  %82 = load i32, ptr %11, align 4
  %83 = add nsw i32 %82, 1
  br label %63, !llvm.loop !14

84:                                               ; preds = %63
  br label %85

85:                                               ; preds = %84, %55
  br label %86

86:                                               ; preds = %85, %19
  br label %87

87:                                               ; preds = %86, %15
  %88 = load i32, ptr %13, align 4
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
  br i1 %13, label %14, label %57

14:                                               ; preds = %5
  %15 = load i32, ptr %10, align 4
  %.not = icmp eq i32 %15, 1
  br i1 %.not, label %38, label %16

16:                                               ; preds = %14
  %17 = load i32, ptr %6, align 4
  %18 = load i32, ptr %10, align 4
  %19 = mul nsw i32 %17, %18
  store i32 %19, ptr %12, align 4
  br label %20

20:                                               ; preds = %33, %16
  %storemerge1 = phi i32 [ 0, %16 ], [ %36, %33 ]
  store i32 %storemerge1, ptr %11, align 4
  %21 = load i32, ptr %12, align 4
  %22 = icmp slt i32 %storemerge1, %21
  br i1 %22, label %23, label %37

23:                                               ; preds = %20
  %24 = load double, ptr %7, align 8
  %25 = load ptr, ptr %8, align 8
  %26 = load i32, ptr %11, align 4
  %27 = load i32, ptr %9, align 4
  %28 = add nsw i32 %26, %27
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [8 x i8], ptr %25, i64 %29
  %31 = load double, ptr %30, align 8
  %32 = fmul double %31, %24
  store double %32, ptr %30, align 8
  br label %33

33:                                               ; preds = %23
  %34 = load i32, ptr %10, align 4
  %35 = load i32, ptr %11, align 4
  %36 = add nsw i32 %35, %34
  br label %20, !llvm.loop !15

37:                                               ; preds = %20
  br label %56

38:                                               ; preds = %14
  br label %39

39:                                               ; preds = %52, %38
  %storemerge = phi i32 [ 0, %38 ], [ %54, %52 ]
  store i32 %storemerge, ptr %11, align 4
  %40 = load i32, ptr %6, align 4
  %41 = icmp slt i32 %storemerge, %40
  br i1 %41, label %42, label %55

42:                                               ; preds = %39
  %43 = load double, ptr %7, align 8
  %44 = load ptr, ptr %8, align 8
  %45 = load i32, ptr %11, align 4
  %46 = load i32, ptr %9, align 4
  %47 = add nsw i32 %45, %46
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [8 x i8], ptr %44, i64 %48
  %50 = load double, ptr %49, align 8
  %51 = fmul double %50, %43
  store double %51, ptr %49, align 8
  br label %52

52:                                               ; preds = %42
  %53 = load i32, ptr %11, align 4
  %54 = add nsw i32 %53, 1
  br label %39, !llvm.loop !16

55:                                               ; preds = %39
  br label %56

56:                                               ; preds = %55, %37
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
  br i1 %21, label %22, label %102

22:                                               ; preds = %8
  %23 = load double, ptr %10, align 8
  %24 = fcmp une double %23, 0.000000e+00
  br i1 %24, label %25, label %102

25:                                               ; preds = %22
  %26 = load i32, ptr %13, align 4
  %.not = icmp eq i32 %26, 1
  br i1 %.not, label %27, label %29

27:                                               ; preds = %25
  %28 = load i32, ptr %16, align 4
  %.not1 = icmp eq i32 %28, 1
  br i1 %.not1, label %76, label %29

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
  br label %46

46:                                               ; preds = %72, %45
  %storemerge2 = phi i32 [ 0, %45 ], [ %74, %72 ]
  store i32 %storemerge2, ptr %17, align 4
  %47 = load i32, ptr %9, align 4
  %48 = icmp slt i32 %storemerge2, %47
  br i1 %48, label %49, label %75

49:                                               ; preds = %46
  %50 = load double, ptr %10, align 8
  %51 = load ptr, ptr %11, align 8
  %52 = load i32, ptr %18, align 4
  %53 = load i32, ptr %12, align 4
  %54 = add nsw i32 %52, %53
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [8 x i8], ptr %51, i64 %55
  %57 = load double, ptr %56, align 8
  %58 = load ptr, ptr %14, align 8
  %59 = load i32, ptr %19, align 4
  %60 = load i32, ptr %15, align 4
  %61 = add nsw i32 %59, %60
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [8 x i8], ptr %58, i64 %62
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
  br label %46, !llvm.loop !17

75:                                               ; preds = %46
  br label %102

76:                                               ; preds = %27
  br label %77

77:                                               ; preds = %97, %76
  %storemerge = phi i32 [ 0, %76 ], [ %99, %97 ]
  store i32 %storemerge, ptr %17, align 4
  %78 = load i32, ptr %9, align 4
  %79 = icmp slt i32 %storemerge, %78
  br i1 %79, label %80, label %100

80:                                               ; preds = %77
  %81 = load double, ptr %10, align 8
  %82 = load ptr, ptr %11, align 8
  %83 = load i32, ptr %17, align 4
  %84 = load i32, ptr %12, align 4
  %85 = add nsw i32 %83, %84
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [8 x i8], ptr %82, i64 %86
  %88 = load double, ptr %87, align 8
  %89 = load ptr, ptr %14, align 8
  %90 = load i32, ptr %17, align 4
  %91 = load i32, ptr %15, align 4
  %92 = add nsw i32 %90, %91
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [8 x i8], ptr %89, i64 %93
  %95 = load double, ptr %94, align 8
  %96 = call double @llvm.fmuladd.f64(double %81, double %88, double %95)
  store double %96, ptr %94, align 8
  br label %97

97:                                               ; preds = %80
  %98 = load i32, ptr %17, align 4
  %99 = add nsw i32 %98, 1
  br label %77, !llvm.loop !18

100:                                              ; preds = %77
  br label %101

101:                                              ; preds = %100
  br label %102

102:                                              ; preds = %101, %75, %22, %8
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

12:                                               ; preds = %102, %2
  %storemerge = phi i32 [ 0, %2 ], [ %104, %102 ]
  store i32 %storemerge, ptr %6, align 4
  %13 = icmp slt i32 %storemerge, 1999
  br i1 %13, label %14, label %105

14:                                               ; preds = %12
  %15 = load ptr, ptr %3, align 8
  %16 = load i32, ptr %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [8 x i8], ptr %15, i64 %17
  %19 = load ptr, ptr %18, align 8
  store ptr %19, ptr %8, align 8
  %20 = add nsw i32 %16, 1
  store i32 %20, ptr %9, align 4
  %21 = load i32, ptr %6, align 4
  %22 = sub nsw i32 2000, %21
  %23 = call i32 @idamax(i32 noundef %22, ptr noundef %19, i32 noundef %21, i32 noundef 1)
  %24 = add nsw i32 %23, %21
  store i32 %24, ptr %10, align 4
  %25 = load ptr, ptr %4, align 8
  %26 = sext i32 %21 to i64
  %27 = getelementptr inbounds [4 x i8], ptr %25, i64 %26
  store i32 %24, ptr %27, align 4
  %28 = load ptr, ptr %8, align 8
  %29 = sext i32 %24 to i64
  %30 = getelementptr inbounds [8 x i8], ptr %28, i64 %29
  %31 = load double, ptr %30, align 8
  %32 = fcmp une double %31, 0.000000e+00
  br i1 %32, label %33, label %101

33:                                               ; preds = %14
  %34 = load i32, ptr %10, align 4
  %35 = load i32, ptr %6, align 4
  %.not = icmp eq i32 %34, %35
  br i1 %.not, label %54, label %36

36:                                               ; preds = %33
  %37 = load ptr, ptr %8, align 8
  %38 = load i32, ptr %10, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [8 x i8], ptr %37, i64 %39
  %41 = load double, ptr %40, align 8
  store double %41, ptr %5, align 8
  %42 = load i32, ptr %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [8 x i8], ptr %37, i64 %43
  %45 = load double, ptr %44, align 8
  %46 = load ptr, ptr %8, align 8
  %47 = load i32, ptr %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [8 x i8], ptr %46, i64 %48
  store double %45, ptr %49, align 8
  %50 = load double, ptr %5, align 8
  %51 = load i32, ptr %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [8 x i8], ptr %46, i64 %52
  store double %50, ptr %53, align 8
  br label %54

54:                                               ; preds = %36, %33
  %55 = load ptr, ptr %8, align 8
  %56 = load i32, ptr %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [8 x i8], ptr %55, i64 %57
  %59 = load double, ptr %58, align 8
  %60 = fdiv double -1.000000e+00, %59
  store double %60, ptr %5, align 8
  %61 = load i32, ptr %9, align 4
  %62 = sub nsw i32 2000, %61
  %63 = load ptr, ptr %8, align 8
  call void @dscal(i32 noundef %62, double noundef %60, ptr noundef %63, i32 noundef %61, i32 noundef 1)
  br label %64

64:                                               ; preds = %97, %54
  %storemerge1 = phi i32 [ %61, %54 ], [ %99, %97 ]
  store i32 %storemerge1, ptr %7, align 4
  %65 = icmp slt i32 %storemerge1, 2000
  br i1 %65, label %66, label %100

66:                                               ; preds = %64
  %67 = load ptr, ptr %3, align 8
  %68 = load i32, ptr %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [8 x i8], ptr %67, i64 %69
  %71 = load ptr, ptr %70, align 8
  store ptr %71, ptr %11, align 8
  %72 = load i32, ptr %10, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [8 x i8], ptr %71, i64 %73
  %75 = load double, ptr %74, align 8
  store double %75, ptr %5, align 8
  %76 = load i32, ptr %6, align 4
  %.not2 = icmp eq i32 %72, %76
  br i1 %.not2, label %91, label %77

77:                                               ; preds = %66
  %78 = load ptr, ptr %11, align 8
  %79 = load i32, ptr %6, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [8 x i8], ptr %78, i64 %80
  %82 = load double, ptr %81, align 8
  %83 = load i32, ptr %10, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [8 x i8], ptr %78, i64 %84
  store double %82, ptr %85, align 8
  %86 = load double, ptr %5, align 8
  %87 = load ptr, ptr %11, align 8
  %88 = load i32, ptr %6, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [8 x i8], ptr %87, i64 %89
  store double %86, ptr %90, align 8
  br label %91

91:                                               ; preds = %77, %66
  %92 = load i32, ptr %9, align 4
  %93 = sub nsw i32 2000, %92
  %94 = load double, ptr %5, align 8
  %95 = load ptr, ptr %8, align 8
  %96 = load ptr, ptr %11, align 8
  call void @daxpy(i32 noundef %93, double noundef %94, ptr noundef %95, i32 noundef %92, i32 noundef 1, ptr noundef %96, i32 noundef %92, i32 noundef 1)
  br label %97

97:                                               ; preds = %91
  %98 = load i32, ptr %7, align 4
  %99 = add nsw i32 %98, 1
  br label %64, !llvm.loop !19

100:                                              ; preds = %64
  br label %101

101:                                              ; preds = %100, %14
  br label %102

102:                                              ; preds = %101
  %103 = load i32, ptr %6, align 4
  %104 = add nsw i32 %103, 1
  br label %12, !llvm.loop !20

105:                                              ; preds = %12
  %106 = load ptr, ptr %4, align 8
  %107 = getelementptr inbounds nuw i8, ptr %106, i64 7996
  store i32 1999, ptr %107, align 4
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
  br label %12

12:                                               ; preds = %50, %3
  %storemerge = phi i32 [ 0, %3 ], [ %52, %50 ]
  store i32 %storemerge, ptr %8, align 4
  %13 = icmp slt i32 %storemerge, 1999
  br i1 %13, label %14, label %53

14:                                               ; preds = %12
  %15 = load ptr, ptr %5, align 8
  %16 = load i32, ptr %8, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [4 x i8], ptr %15, i64 %17
  %19 = load i32, ptr %18, align 4
  store i32 %19, ptr %10, align 4
  %20 = load ptr, ptr %6, align 8
  %21 = sext i32 %19 to i64
  %22 = getelementptr inbounds [8 x i8], ptr %20, i64 %21
  %23 = load double, ptr %22, align 8
  store double %23, ptr %7, align 8
  %24 = load i32, ptr %8, align 4
  %.not = icmp eq i32 %19, %24
  br i1 %.not, label %39, label %25

25:                                               ; preds = %14
  %26 = load ptr, ptr %6, align 8
  %27 = load i32, ptr %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [8 x i8], ptr %26, i64 %28
  %30 = load double, ptr %29, align 8
  %31 = load i32, ptr %10, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [8 x i8], ptr %26, i64 %32
  store double %30, ptr %33, align 8
  %34 = load double, ptr %7, align 8
  %35 = load ptr, ptr %6, align 8
  %36 = load i32, ptr %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [8 x i8], ptr %35, i64 %37
  store double %34, ptr %38, align 8
  br label %39

39:                                               ; preds = %25, %14
  %40 = load i32, ptr %8, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, ptr %11, align 4
  %42 = sub nsw i32 1999, %40
  %43 = load double, ptr %7, align 8
  %44 = load ptr, ptr %4, align 8
  %45 = sext i32 %40 to i64
  %46 = getelementptr inbounds [8 x i8], ptr %44, i64 %45
  %47 = load ptr, ptr %46, align 8
  %48 = load i32, ptr %11, align 4
  %49 = load ptr, ptr %6, align 8
  call void @daxpy(i32 noundef %42, double noundef %43, ptr noundef %47, i32 noundef %48, i32 noundef 1, ptr noundef %49, i32 noundef %48, i32 noundef 1)
  br label %50

50:                                               ; preds = %39
  %51 = load i32, ptr %8, align 4
  %52 = add nsw i32 %51, 1
  br label %12, !llvm.loop !21

53:                                               ; preds = %12
  br label %54

54:                                               ; preds = %84, %53
  %storemerge1 = phi i32 [ 0, %53 ], [ %86, %84 ]
  store i32 %storemerge1, ptr %9, align 4
  %55 = icmp slt i32 %storemerge1, 2000
  br i1 %55, label %56, label %87

56:                                               ; preds = %54
  %57 = load i32, ptr %9, align 4
  %58 = sub nsw i32 1999, %57
  store i32 %58, ptr %8, align 4
  %59 = load ptr, ptr %4, align 8
  %60 = sext i32 %58 to i64
  %61 = getelementptr inbounds [8 x i8], ptr %59, i64 %60
  %62 = load ptr, ptr %61, align 8
  %63 = sext i32 %58 to i64
  %64 = getelementptr inbounds [8 x i8], ptr %62, i64 %63
  %65 = load double, ptr %64, align 8
  %66 = load ptr, ptr %6, align 8
  %67 = load i32, ptr %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [8 x i8], ptr %66, i64 %68
  %70 = load double, ptr %69, align 8
  %71 = fdiv double %70, %65
  store double %71, ptr %69, align 8
  %72 = load ptr, ptr %6, align 8
  %73 = load i32, ptr %8, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [8 x i8], ptr %72, i64 %74
  %76 = load double, ptr %75, align 8
  %77 = fneg double %76
  store double %77, ptr %7, align 8
  %78 = load ptr, ptr %4, align 8
  %79 = load i32, ptr %8, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [8 x i8], ptr %78, i64 %80
  %82 = load ptr, ptr %81, align 8
  %83 = load ptr, ptr %6, align 8
  call void @daxpy(i32 noundef %73, double noundef %77, ptr noundef %82, i32 noundef 0, i32 noundef 1, ptr noundef %83, i32 noundef 0, i32 noundef 1)
  br label %84

84:                                               ; preds = %56
  %85 = load i32, ptr %9, align 4
  %86 = add nsw i32 %85, 1
  br label %54, !llvm.loop !22

87:                                               ; preds = %54
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

50:                                               ; preds = %58, %41
  %storemerge2 = phi i32 [ 0, %41 ], [ %60, %58 ]
  store i32 %storemerge2, ptr %5, align 4
  %51 = icmp slt i32 %storemerge2, 2000
  br i1 %51, label %52, label %61

52:                                               ; preds = %50
  %53 = load ptr, ptr %7, align 8
  %54 = load i32, ptr %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [8 x i8], ptr %53, i64 %55
  %57 = load ptr, ptr %56, align 8
  call void @free(ptr noundef %57) #5
  br label %58

58:                                               ; preds = %52
  %59 = load i32, ptr %5, align 4
  %60 = add nsw i32 %59, 1
  br label %50, !llvm.loop !25

61:                                               ; preds = %50
  %62 = load ptr, ptr %7, align 8
  call void @free(ptr noundef %62) #5
  %63 = load i8, ptr %6, align 1
  %.not3 = icmp eq i8 %63, 0
  br i1 %.not3, label %68, label %64

64:                                               ; preds = %61
  %65 = call ptr @__acrt_iob_func(i32 noundef 1) #5
  %66 = load double, ptr %11, align 8
  %67 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %65, ptr noundef nonnull @.str.1, double noundef %66) #5
  br label %72

68:                                               ; preds = %61
  %69 = call ptr @__acrt_iob_func(i32 noundef 1) #5
  %70 = load double, ptr %11, align 8
  %71 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %69, ptr noundef nonnull @.str.2, double noundef %70) #5
  br label %72

72:                                               ; preds = %68, %64
  %73 = call ptr @__acrt_iob_func(i32 noundef 1) #5
  %74 = call i32 @fflush(ptr noundef %73) #5
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
