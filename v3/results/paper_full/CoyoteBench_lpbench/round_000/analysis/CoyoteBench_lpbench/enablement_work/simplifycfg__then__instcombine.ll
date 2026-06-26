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

7:                                                ; preds = %24, %2
  %storemerge = phi i32 [ 0, %2 ], [ %26, %24 ]
  store i32 %storemerge, ptr %5, align 4
  %8 = icmp slt i32 %storemerge, 2000
  br i1 %8, label %9, label %27

9:                                                ; preds = %7
  br label %10

10:                                               ; preds = %12, %9
  %storemerge4 = phi i32 [ 0, %9 ], [ %23, %12 ]
  store i32 %storemerge4, ptr %6, align 4
  %11 = icmp slt i32 %storemerge4, 2000
  br i1 %11, label %12, label %24

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
  %22 = load i32, ptr %6, align 4
  %23 = add nsw i32 %22, 1
  br label %10, !llvm.loop !7

24:                                               ; preds = %10
  %25 = load i32, ptr %5, align 4
  %26 = add nsw i32 %25, 1
  br label %7, !llvm.loop !9

27:                                               ; preds = %7
  br label %28

28:                                               ; preds = %30, %27
  %storemerge1 = phi i32 [ 0, %27 ], [ %35, %30 ]
  store i32 %storemerge1, ptr %5, align 4
  %29 = icmp slt i32 %storemerge1, 2000
  br i1 %29, label %30, label %36

30:                                               ; preds = %28
  %31 = load ptr, ptr %4, align 8
  %32 = load i32, ptr %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [8 x i8], ptr %31, i64 %33
  store double 0.000000e+00, ptr %34, align 8
  %35 = add nsw i32 %32, 1
  br label %28, !llvm.loop !10

36:                                               ; preds = %28
  br label %37

37:                                               ; preds = %59, %36
  %storemerge2 = phi i32 [ 0, %36 ], [ %61, %59 ]
  store i32 %storemerge2, ptr %6, align 4
  %38 = icmp slt i32 %storemerge2, 2000
  br i1 %38, label %39, label %62

39:                                               ; preds = %37
  br label %40

40:                                               ; preds = %42, %39
  %storemerge3 = phi i32 [ 0, %39 ], [ %58, %42 ]
  store i32 %storemerge3, ptr %5, align 4
  %41 = icmp slt i32 %storemerge3, 2000
  br i1 %41, label %42, label %59

42:                                               ; preds = %40
  %43 = load ptr, ptr %3, align 8
  %44 = load i32, ptr %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [8 x i8], ptr %43, i64 %45
  %47 = load ptr, ptr %46, align 8
  %48 = load i32, ptr %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [8 x i8], ptr %47, i64 %49
  %51 = load double, ptr %50, align 8
  %52 = load ptr, ptr %4, align 8
  %53 = sext i32 %48 to i64
  %54 = getelementptr inbounds [8 x i8], ptr %52, i64 %53
  %55 = load double, ptr %54, align 8
  %56 = fadd double %55, %51
  store double %56, ptr %54, align 8
  %57 = load i32, ptr %5, align 4
  %58 = add nsw i32 %57, 1
  br label %40, !llvm.loop !11

59:                                               ; preds = %40
  %60 = load i32, ptr %6, align 4
  %61 = add nsw i32 %60, 1
  br label %37, !llvm.loop !12

62:                                               ; preds = %37
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
  br label %81

16:                                               ; preds = %4
  %17 = load i32, ptr %5, align 4
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store i32 0, ptr %13, align 4
  br label %81

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
  br label %31

31:                                               ; preds = %48, %22
  %storemerge1 = phi i32 [ 1, %22 ], [ %53, %48 ]
  store i32 %storemerge1, ptr %11, align 4
  %32 = load i32, ptr %5, align 4
  %33 = icmp slt i32 %storemerge1, %32
  br i1 %33, label %34, label %81

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
  %52 = load i32, ptr %11, align 4
  %53 = add nsw i32 %52, 1
  br label %31, !llvm.loop !13

54:                                               ; preds = %20
  store i32 0, ptr %13, align 4
  %55 = load ptr, ptr %6, align 8
  %56 = load i32, ptr %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [8 x i8], ptr %55, i64 %57
  %59 = load double, ptr %58, align 8
  %60 = call double @llvm.fabs.f64(double %59)
  store double %60, ptr %9, align 8
  br label %61

61:                                               ; preds = %78, %54
  %storemerge = phi i32 [ 1, %54 ], [ %80, %78 ]
  store i32 %storemerge, ptr %11, align 4
  %62 = load i32, ptr %5, align 4
  %63 = icmp slt i32 %storemerge, %62
  br i1 %63, label %64, label %81

64:                                               ; preds = %61
  %65 = load ptr, ptr %6, align 8
  %66 = load i32, ptr %11, align 4
  %67 = load i32, ptr %7, align 4
  %68 = add nsw i32 %66, %67
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [8 x i8], ptr %65, i64 %69
  %71 = load double, ptr %70, align 8
  %72 = call double @llvm.fabs.f64(double %71)
  store double %72, ptr %10, align 8
  %73 = load double, ptr %9, align 8
  %74 = fcmp ogt double %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %64
  %76 = load i32, ptr %11, align 4
  store i32 %76, ptr %13, align 4
  %77 = load double, ptr %10, align 8
  store double %77, ptr %9, align 8
  br label %78

78:                                               ; preds = %64, %75
  %79 = load i32, ptr %11, align 4
  %80 = add nsw i32 %79, 1
  br label %61, !llvm.loop !14

81:                                               ; preds = %19, %61, %31, %15
  %82 = load i32, ptr %13, align 4
  ret i32 %82
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
  %15 = load i32, ptr %10, align 4
  %.not = icmp eq i32 %15, 1
  br i1 %.not, label %36, label %16

16:                                               ; preds = %14
  %17 = load i32, ptr %6, align 4
  %18 = load i32, ptr %10, align 4
  %19 = mul nsw i32 %17, %18
  store i32 %19, ptr %12, align 4
  br label %20

20:                                               ; preds = %23, %16
  %storemerge1 = phi i32 [ 0, %16 ], [ %35, %23 ]
  store i32 %storemerge1, ptr %11, align 4
  %21 = load i32, ptr %12, align 4
  %22 = icmp slt i32 %storemerge1, %21
  br i1 %22, label %23, label %52

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
  %33 = load i32, ptr %10, align 4
  %34 = load i32, ptr %11, align 4
  %35 = add nsw i32 %34, %33
  br label %20, !llvm.loop !15

36:                                               ; preds = %14
  br label %37

37:                                               ; preds = %40, %36
  %storemerge = phi i32 [ 0, %36 ], [ %51, %40 ]
  store i32 %storemerge, ptr %11, align 4
  %38 = load i32, ptr %6, align 4
  %39 = icmp slt i32 %storemerge, %38
  br i1 %39, label %40, label %52

40:                                               ; preds = %37
  %41 = load double, ptr %7, align 8
  %42 = load ptr, ptr %8, align 8
  %43 = load i32, ptr %11, align 4
  %44 = load i32, ptr %9, align 4
  %45 = add nsw i32 %43, %44
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [8 x i8], ptr %42, i64 %46
  %48 = load double, ptr %47, align 8
  %49 = fmul double %48, %41
  store double %49, ptr %47, align 8
  %50 = load i32, ptr %11, align 4
  %51 = add nsw i32 %50, 1
  br label %37, !llvm.loop !16

52:                                               ; preds = %20, %37, %5
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
  br i1 %or.cond, label %24, label %97

24:                                               ; preds = %8
  %25 = load i32, ptr %13, align 4
  %26 = icmp ne i32 %25, 1
  %27 = load i32, ptr %16, align 4
  %28 = icmp ne i32 %27, 1
  %or.cond3 = select i1 %26, i1 true, i1 %28
  br i1 %or.cond3, label %29, label %74

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
  br label %46

46:                                               ; preds = %49, %45
  %storemerge4 = phi i32 [ 0, %45 ], [ %73, %49 ]
  store i32 %storemerge4, ptr %17, align 4
  %47 = load i32, ptr %9, align 4
  %48 = icmp slt i32 %storemerge4, %47
  br i1 %48, label %49, label %97

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
  %72 = load i32, ptr %17, align 4
  %73 = add nsw i32 %72, 1
  br label %46, !llvm.loop !17

74:                                               ; preds = %24
  br label %75

75:                                               ; preds = %78, %74
  %storemerge = phi i32 [ 0, %74 ], [ %96, %78 ]
  store i32 %storemerge, ptr %17, align 4
  %76 = load i32, ptr %9, align 4
  %77 = icmp slt i32 %storemerge, %76
  br i1 %77, label %78, label %97

78:                                               ; preds = %75
  %79 = load double, ptr %10, align 8
  %80 = load ptr, ptr %11, align 8
  %81 = load i32, ptr %17, align 4
  %82 = load i32, ptr %12, align 4
  %83 = add nsw i32 %81, %82
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [8 x i8], ptr %80, i64 %84
  %86 = load double, ptr %85, align 8
  %87 = load ptr, ptr %14, align 8
  %88 = load i32, ptr %17, align 4
  %89 = load i32, ptr %15, align 4
  %90 = add nsw i32 %88, %89
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [8 x i8], ptr %87, i64 %91
  %93 = load double, ptr %92, align 8
  %94 = call double @llvm.fmuladd.f64(double %79, double %86, double %93)
  store double %94, ptr %92, align 8
  %95 = load i32, ptr %17, align 4
  %96 = add nsw i32 %95, 1
  br label %75, !llvm.loop !18

97:                                               ; preds = %75, %46, %8
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

12:                                               ; preds = %99, %2
  %storemerge = phi i32 [ 0, %2 ], [ %101, %99 ]
  store i32 %storemerge, ptr %6, align 4
  %13 = icmp slt i32 %storemerge, 1999
  br i1 %13, label %14, label %102

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
  br i1 %32, label %33, label %99

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

64:                                               ; preds = %91, %54
  %storemerge1 = phi i32 [ %61, %54 ], [ %98, %91 ]
  store i32 %storemerge1, ptr %7, align 4
  %65 = icmp slt i32 %storemerge1, 2000
  br i1 %65, label %66, label %99

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
  %97 = load i32, ptr %7, align 4
  %98 = add nsw i32 %97, 1
  br label %64, !llvm.loop !19

99:                                               ; preds = %14, %64
  %100 = load i32, ptr %6, align 4
  %101 = add nsw i32 %100, 1
  br label %12, !llvm.loop !20

102:                                              ; preds = %12
  %103 = load ptr, ptr %4, align 8
  %104 = getelementptr inbounds nuw i8, ptr %103, i64 7996
  store i32 1999, ptr %104, align 4
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

12:                                               ; preds = %39, %3
  %storemerge = phi i32 [ 0, %3 ], [ %51, %39 ]
  store i32 %storemerge, ptr %8, align 4
  %13 = icmp slt i32 %storemerge, 1999
  br i1 %13, label %14, label %52

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
  %50 = load i32, ptr %8, align 4
  %51 = add nsw i32 %50, 1
  br label %12, !llvm.loop !21

52:                                               ; preds = %12
  br label %53

53:                                               ; preds = %55, %52
  %storemerge1 = phi i32 [ 0, %52 ], [ %84, %55 ]
  store i32 %storemerge1, ptr %9, align 4
  %54 = icmp slt i32 %storemerge1, 2000
  br i1 %54, label %55, label %85

55:                                               ; preds = %53
  %56 = load i32, ptr %9, align 4
  %57 = sub nsw i32 1999, %56
  store i32 %57, ptr %8, align 4
  %58 = load ptr, ptr %4, align 8
  %59 = sext i32 %57 to i64
  %60 = getelementptr inbounds [8 x i8], ptr %58, i64 %59
  %61 = load ptr, ptr %60, align 8
  %62 = sext i32 %57 to i64
  %63 = getelementptr inbounds [8 x i8], ptr %61, i64 %62
  %64 = load double, ptr %63, align 8
  %65 = load ptr, ptr %6, align 8
  %66 = load i32, ptr %8, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [8 x i8], ptr %65, i64 %67
  %69 = load double, ptr %68, align 8
  %70 = fdiv double %69, %64
  store double %70, ptr %68, align 8
  %71 = load ptr, ptr %6, align 8
  %72 = load i32, ptr %8, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [8 x i8], ptr %71, i64 %73
  %75 = load double, ptr %74, align 8
  %76 = fneg double %75
  store double %76, ptr %7, align 8
  %77 = load ptr, ptr %4, align 8
  %78 = load i32, ptr %8, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [8 x i8], ptr %77, i64 %79
  %81 = load ptr, ptr %80, align 8
  %82 = load ptr, ptr %6, align 8
  call void @daxpy(i32 noundef %72, double noundef %76, ptr noundef %81, i32 noundef 0, i32 noundef 1, ptr noundef %82, i32 noundef 0, i32 noundef 1)
  %83 = load i32, ptr %9, align 4
  %84 = add nsw i32 %83, 1
  br label %53, !llvm.loop !22

85:                                               ; preds = %53
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
  br i1 %12, label %13, label %26

13:                                               ; preds = %2
  br label %14

14:                                               ; preds = %23, %13
  %storemerge = phi i32 [ 1, %13 ], [ %25, %23 ]
  store i32 %storemerge, ptr %5, align 4
  %15 = load i32, ptr %3, align 4
  %16 = icmp slt i32 %storemerge, %15
  br i1 %16, label %17, label %26

17:                                               ; preds = %14
  %18 = load ptr, ptr %4, align 8
  %19 = getelementptr inbounds nuw i8, ptr %18, i64 8
  %20 = load ptr, ptr %19, align 8
  %21 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %20, ptr noundef nonnull dereferenceable(4) @.str) #5
  %.not = icmp eq i32 %21, 0
  br i1 %.not, label %22, label %23

22:                                               ; preds = %17
  store i8 1, ptr %6, align 1
  br label %26

23:                                               ; preds = %17
  %24 = load i32, ptr %5, align 4
  %25 = add nsw i32 %24, 1
  br label %14, !llvm.loop !23

26:                                               ; preds = %14, %22, %2
  %27 = call dereferenceable_or_null(16000) ptr @malloc(i64 noundef 16000) #6
  store ptr %27, ptr %7, align 8
  br label %28

28:                                               ; preds = %30, %26
  %storemerge1 = phi i32 [ 0, %26 ], [ %36, %30 ]
  store i32 %storemerge1, ptr %5, align 4
  %29 = icmp slt i32 %storemerge1, 2000
  br i1 %29, label %30, label %37

30:                                               ; preds = %28
  %31 = call dereferenceable_or_null(16008) ptr @malloc(i64 noundef 16008) #6
  %32 = load ptr, ptr %7, align 8
  %33 = load i32, ptr %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [8 x i8], ptr %32, i64 %34
  store ptr %31, ptr %35, align 8
  %36 = add nsw i32 %33, 1
  br label %28, !llvm.loop !24

37:                                               ; preds = %28
  %38 = call dereferenceable_or_null(16000) ptr @malloc(i64 noundef 16000) #6
  store ptr %38, ptr %8, align 8
  %39 = call dereferenceable_or_null(16000) ptr @malloc(i64 noundef 16000) #6
  store ptr %39, ptr %9, align 8
  %40 = call dereferenceable_or_null(8000) ptr @malloc(i64 noundef 8000) #6
  store ptr %40, ptr %10, align 8
  %41 = load ptr, ptr %7, align 8
  call void @matgen(ptr noundef %41, ptr noundef %38)
  call void @dgefa(ptr noundef %41, ptr noundef %40)
  %42 = load ptr, ptr %8, align 8
  call void @dgesl(ptr noundef %41, ptr noundef %40, ptr noundef %42)
  store double 0.000000e+00, ptr %11, align 8
  %43 = load ptr, ptr %10, align 8
  call void @free(ptr noundef %43) #5
  %44 = load ptr, ptr %9, align 8
  call void @free(ptr noundef %44) #5
  %45 = load ptr, ptr %8, align 8
  call void @free(ptr noundef %45) #5
  br label %46

46:                                               ; preds = %48, %37
  %storemerge2 = phi i32 [ 0, %37 ], [ %54, %48 ]
  store i32 %storemerge2, ptr %5, align 4
  %47 = icmp slt i32 %storemerge2, 2000
  br i1 %47, label %48, label %55

48:                                               ; preds = %46
  %49 = load ptr, ptr %7, align 8
  %50 = load i32, ptr %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [8 x i8], ptr %49, i64 %51
  %53 = load ptr, ptr %52, align 8
  call void @free(ptr noundef %53) #5
  %54 = add nsw i32 %50, 1
  br label %46, !llvm.loop !25

55:                                               ; preds = %46
  %56 = load ptr, ptr %7, align 8
  call void @free(ptr noundef %56) #5
  %57 = load i8, ptr %6, align 1
  %.not3 = icmp eq i8 %57, 0
  br i1 %.not3, label %62, label %58

58:                                               ; preds = %55
  %59 = call ptr @__acrt_iob_func(i32 noundef 1) #5
  %60 = load double, ptr %11, align 8
  %61 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %59, ptr noundef nonnull @.str.1, double noundef %60) #5
  br label %66

62:                                               ; preds = %55
  %63 = call ptr @__acrt_iob_func(i32 noundef 1) #5
  %64 = load double, ptr %11, align 8
  %65 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %63, ptr noundef nonnull @.str.2, double noundef %64) #5
  br label %66

66:                                               ; preds = %62, %58
  %67 = call ptr @__acrt_iob_func(i32 noundef 1) #5
  %68 = call i32 @fflush(ptr noundef %67) #5
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
