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

7:                                                ; preds = %23, %2
  %storemerge = phi i32 [ 0, %2 ], [ %25, %23 ]
  store i32 %storemerge, ptr %5, align 4
  %8 = icmp slt i32 %storemerge, 2000
  br i1 %8, label %9, label %26

9:                                                ; preds = %7, %11
  %storemerge4 = phi i32 [ %22, %11 ], [ 0, %7 ]
  store i32 %storemerge4, ptr %6, align 4
  %10 = icmp slt i32 %storemerge4, 2000
  br i1 %10, label %11, label %23

11:                                               ; preds = %9
  %12 = call double @random_double()
  %13 = load ptr, ptr %3, align 8
  %14 = load i32, ptr %6, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [8 x i8], ptr %13, i64 %15
  %17 = load ptr, ptr %16, align 8
  %18 = load i32, ptr %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [8 x i8], ptr %17, i64 %19
  store double %12, ptr %20, align 8
  %21 = load i32, ptr %6, align 4
  %22 = add nsw i32 %21, 1
  br label %9, !llvm.loop !7

23:                                               ; preds = %9
  %24 = load i32, ptr %5, align 4
  %25 = add nsw i32 %24, 1
  br label %7, !llvm.loop !9

26:                                               ; preds = %7, %28
  %storemerge1 = phi i32 [ %34, %28 ], [ 0, %7 ]
  store i32 %storemerge1, ptr %5, align 4
  %27 = icmp slt i32 %storemerge1, 2000
  br i1 %27, label %28, label %35

28:                                               ; preds = %26
  %29 = load ptr, ptr %4, align 8
  %30 = load i32, ptr %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [8 x i8], ptr %29, i64 %31
  store double 0.000000e+00, ptr %32, align 8
  %33 = load i32, ptr %5, align 4
  %34 = add nsw i32 %33, 1
  br label %26, !llvm.loop !10

35:                                               ; preds = %26, %56
  %storemerge2 = phi i32 [ %58, %56 ], [ 0, %26 ]
  store i32 %storemerge2, ptr %6, align 4
  %36 = icmp slt i32 %storemerge2, 2000
  br i1 %36, label %37, label %59

37:                                               ; preds = %35, %39
  %storemerge3 = phi i32 [ %55, %39 ], [ 0, %35 ]
  store i32 %storemerge3, ptr %5, align 4
  %38 = icmp slt i32 %storemerge3, 2000
  br i1 %38, label %39, label %56

39:                                               ; preds = %37
  %40 = load ptr, ptr %3, align 8
  %41 = load i32, ptr %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [8 x i8], ptr %40, i64 %42
  %44 = load ptr, ptr %43, align 8
  %45 = load i32, ptr %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [8 x i8], ptr %44, i64 %46
  %48 = load double, ptr %47, align 8
  %49 = load ptr, ptr %4, align 8
  %50 = sext i32 %45 to i64
  %51 = getelementptr inbounds [8 x i8], ptr %49, i64 %50
  %52 = load double, ptr %51, align 8
  %53 = fadd double %52, %48
  store double %53, ptr %51, align 8
  %54 = load i32, ptr %5, align 4
  %55 = add nsw i32 %54, 1
  br label %37, !llvm.loop !11

56:                                               ; preds = %37
  %57 = load i32, ptr %6, align 4
  %58 = add nsw i32 %57, 1
  br label %35, !llvm.loop !12

59:                                               ; preds = %35
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
  br i1 %13, label %14, label %51

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
  br i1 %22, label %23, label %51

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

36:                                               ; preds = %14, %39
  %storemerge = phi i32 [ %50, %39 ], [ 0, %14 ]
  store i32 %storemerge, ptr %11, align 4
  %37 = load i32, ptr %6, align 4
  %38 = icmp slt i32 %storemerge, %37
  br i1 %38, label %39, label %51

39:                                               ; preds = %36
  %40 = load double, ptr %7, align 8
  %41 = load ptr, ptr %8, align 8
  %42 = load i32, ptr %11, align 4
  %43 = load i32, ptr %9, align 4
  %44 = add nsw i32 %42, %43
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [8 x i8], ptr %41, i64 %45
  %47 = load double, ptr %46, align 8
  %48 = fmul double %47, %40
  store double %48, ptr %46, align 8
  %49 = load i32, ptr %11, align 4
  %50 = add nsw i32 %49, 1
  br label %36, !llvm.loop !16

51:                                               ; preds = %20, %36, %5
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
  br i1 %or.cond, label %24, label %94

24:                                               ; preds = %8
  %25 = load i32, ptr %13, align 4
  %.not = icmp eq i32 %25, 1
  %26 = load i32, ptr %16, align 4
  %.not1 = icmp eq i32 %26, 1
  %or.cond4 = select i1 %.not, i1 %.not1, i1 false
  br i1 %or.cond4, label %72, label %27

27:                                               ; preds = %24
  store i32 0, ptr %18, align 4
  store i32 0, ptr %19, align 4
  %28 = load i32, ptr %13, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = load i32, ptr %9, align 4
  %32 = sub nsw i32 1, %31
  %33 = load i32, ptr %13, align 4
  %34 = mul nsw i32 %32, %33
  store i32 %34, ptr %18, align 4
  br label %35

35:                                               ; preds = %30, %27
  %36 = load i32, ptr %16, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = load i32, ptr %9, align 4
  %40 = sub nsw i32 1, %39
  %41 = load i32, ptr %16, align 4
  %42 = mul nsw i32 %40, %41
  store i32 %42, ptr %19, align 4
  br label %43

43:                                               ; preds = %38, %35
  br label %44

44:                                               ; preds = %47, %43
  %storemerge2 = phi i32 [ 0, %43 ], [ %71, %47 ]
  store i32 %storemerge2, ptr %17, align 4
  %45 = load i32, ptr %9, align 4
  %46 = icmp slt i32 %storemerge2, %45
  br i1 %46, label %47, label %94

47:                                               ; preds = %44
  %48 = load double, ptr %10, align 8
  %49 = load ptr, ptr %11, align 8
  %50 = load i32, ptr %18, align 4
  %51 = load i32, ptr %12, align 4
  %52 = add nsw i32 %50, %51
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [8 x i8], ptr %49, i64 %53
  %55 = load double, ptr %54, align 8
  %56 = load ptr, ptr %14, align 8
  %57 = load i32, ptr %19, align 4
  %58 = load i32, ptr %15, align 4
  %59 = add nsw i32 %57, %58
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [8 x i8], ptr %56, i64 %60
  %62 = load double, ptr %61, align 8
  %63 = call double @llvm.fmuladd.f64(double %48, double %55, double %62)
  store double %63, ptr %61, align 8
  %64 = load i32, ptr %13, align 4
  %65 = load i32, ptr %18, align 4
  %66 = add nsw i32 %65, %64
  store i32 %66, ptr %18, align 4
  %67 = load i32, ptr %16, align 4
  %68 = load i32, ptr %19, align 4
  %69 = add nsw i32 %68, %67
  store i32 %69, ptr %19, align 4
  %70 = load i32, ptr %17, align 4
  %71 = add nsw i32 %70, 1
  br label %44, !llvm.loop !17

72:                                               ; preds = %24, %75
  %storemerge = phi i32 [ %93, %75 ], [ 0, %24 ]
  store i32 %storemerge, ptr %17, align 4
  %73 = load i32, ptr %9, align 4
  %74 = icmp slt i32 %storemerge, %73
  br i1 %74, label %75, label %94

75:                                               ; preds = %72
  %76 = load double, ptr %10, align 8
  %77 = load ptr, ptr %11, align 8
  %78 = load i32, ptr %17, align 4
  %79 = load i32, ptr %12, align 4
  %80 = add nsw i32 %78, %79
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [8 x i8], ptr %77, i64 %81
  %83 = load double, ptr %82, align 8
  %84 = load ptr, ptr %14, align 8
  %85 = load i32, ptr %17, align 4
  %86 = load i32, ptr %15, align 4
  %87 = add nsw i32 %85, %86
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [8 x i8], ptr %84, i64 %88
  %90 = load double, ptr %89, align 8
  %91 = call double @llvm.fmuladd.f64(double %76, double %83, double %90)
  store double %91, ptr %89, align 8
  %92 = load i32, ptr %17, align 4
  %93 = add nsw i32 %92, 1
  br label %72, !llvm.loop !18

94:                                               ; preds = %72, %44, %8
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

52:                                               ; preds = %12, %54
  %storemerge1 = phi i32 [ %83, %54 ], [ 0, %12 ]
  store i32 %storemerge1, ptr %9, align 4
  %53 = icmp slt i32 %storemerge1, 2000
  br i1 %53, label %54, label %84

54:                                               ; preds = %52
  %55 = load i32, ptr %9, align 4
  %56 = sub nsw i32 1999, %55
  store i32 %56, ptr %8, align 4
  %57 = load ptr, ptr %4, align 8
  %58 = sext i32 %56 to i64
  %59 = getelementptr inbounds [8 x i8], ptr %57, i64 %58
  %60 = load ptr, ptr %59, align 8
  %61 = sext i32 %56 to i64
  %62 = getelementptr inbounds [8 x i8], ptr %60, i64 %61
  %63 = load double, ptr %62, align 8
  %64 = load ptr, ptr %6, align 8
  %65 = load i32, ptr %8, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [8 x i8], ptr %64, i64 %66
  %68 = load double, ptr %67, align 8
  %69 = fdiv double %68, %63
  store double %69, ptr %67, align 8
  %70 = load ptr, ptr %6, align 8
  %71 = load i32, ptr %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [8 x i8], ptr %70, i64 %72
  %74 = load double, ptr %73, align 8
  %75 = fneg double %74
  store double %75, ptr %7, align 8
  %76 = load ptr, ptr %4, align 8
  %77 = load i32, ptr %8, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [8 x i8], ptr %76, i64 %78
  %80 = load ptr, ptr %79, align 8
  %81 = load ptr, ptr %6, align 8
  call void @daxpy(i32 noundef %71, double noundef %75, ptr noundef %80, i32 noundef 0, i32 noundef 1, ptr noundef %81, i32 noundef 0, i32 noundef 1)
  %82 = load i32, ptr %9, align 4
  %83 = add nsw i32 %82, 1
  br label %52, !llvm.loop !22

84:                                               ; preds = %52
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
  br i1 %12, label %13, label %25

13:                                               ; preds = %2, %22
  %storemerge = phi i32 [ %24, %22 ], [ 1, %2 ]
  store i32 %storemerge, ptr %5, align 4
  %14 = load i32, ptr %3, align 4
  %15 = icmp slt i32 %storemerge, %14
  br i1 %15, label %16, label %25

16:                                               ; preds = %13
  %17 = load ptr, ptr %4, align 8
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 8
  %19 = load ptr, ptr %18, align 8
  %20 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %19, ptr noundef nonnull dereferenceable(4) @.str) #5
  %.not = icmp eq i32 %20, 0
  br i1 %.not, label %21, label %22

21:                                               ; preds = %16
  store i8 1, ptr %6, align 1
  br label %25

22:                                               ; preds = %16
  %23 = load i32, ptr %5, align 4
  %24 = add nsw i32 %23, 1
  br label %13, !llvm.loop !23

25:                                               ; preds = %13, %21, %2
  %26 = call dereferenceable_or_null(16000) ptr @malloc(i64 noundef 16000) #6
  store ptr %26, ptr %7, align 8
  br label %27

27:                                               ; preds = %29, %25
  %storemerge1 = phi i32 [ 0, %25 ], [ %36, %29 ]
  store i32 %storemerge1, ptr %5, align 4
  %28 = icmp slt i32 %storemerge1, 2000
  br i1 %28, label %29, label %37

29:                                               ; preds = %27
  %30 = call dereferenceable_or_null(16008) ptr @malloc(i64 noundef 16008) #6
  %31 = load ptr, ptr %7, align 8
  %32 = load i32, ptr %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [8 x i8], ptr %31, i64 %33
  store ptr %30, ptr %34, align 8
  %35 = load i32, ptr %5, align 4
  %36 = add nsw i32 %35, 1
  br label %27, !llvm.loop !24

37:                                               ; preds = %27
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
  %storemerge2 = phi i32 [ 0, %37 ], [ %55, %48 ]
  store i32 %storemerge2, ptr %5, align 4
  %47 = icmp slt i32 %storemerge2, 2000
  br i1 %47, label %48, label %56

48:                                               ; preds = %46
  %49 = load ptr, ptr %7, align 8
  %50 = load i32, ptr %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [8 x i8], ptr %49, i64 %51
  %53 = load ptr, ptr %52, align 8
  call void @free(ptr noundef %53) #5
  %54 = load i32, ptr %5, align 4
  %55 = add nsw i32 %54, 1
  br label %46, !llvm.loop !25

56:                                               ; preds = %46
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
