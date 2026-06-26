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
  %8 = phi ptr [ %0, %2 ], [ %13, %24 ]
  %9 = phi i32 [ 0, %2 ], [ %25, %24 ]
  store i32 %9, ptr %5, align 4
  %10 = icmp slt i32 %9, 2000
  br i1 %10, label %11, label %26

11:                                               ; preds = %7
  br label %12

12:                                               ; preds = %16, %11
  %13 = phi ptr [ %8, %11 ], [ %0, %16 ]
  %14 = phi i32 [ 0, %11 ], [ %23, %16 ]
  store i32 %14, ptr %6, align 4
  %15 = icmp slt i32 %14, 2000
  br i1 %15, label %16, label %24

16:                                               ; preds = %12
  %17 = call double @random_double()
  %18 = sext i32 %14 to i64
  %19 = getelementptr inbounds [8 x i8], ptr %0, i64 %18
  %20 = load ptr, ptr %19, align 8
  %21 = sext i32 %9 to i64
  %22 = getelementptr inbounds [8 x i8], ptr %20, i64 %21
  store double %17, ptr %22, align 8
  %23 = add nsw i32 %14, 1
  br label %12, !llvm.loop !7

24:                                               ; preds = %12
  %25 = add nsw i32 %9, 1
  br label %7, !llvm.loop !9

26:                                               ; preds = %7
  br label %27

27:                                               ; preds = %30, %26
  %28 = phi i32 [ 0, %26 ], [ %33, %30 ]
  store i32 %28, ptr %5, align 4
  %29 = icmp slt i32 %28, 2000
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = sext i32 %28 to i64
  %32 = getelementptr inbounds [8 x i8], ptr %1, i64 %31
  store double 0.000000e+00, ptr %32, align 8
  %33 = add nsw i32 %28, 1
  br label %27, !llvm.loop !10

34:                                               ; preds = %27
  br label %35

35:                                               ; preds = %53, %34
  %36 = phi i32 [ 0, %34 ], [ %54, %53 ]
  store i32 %36, ptr %6, align 4
  %37 = icmp slt i32 %36, 2000
  br i1 %37, label %38, label %55

38:                                               ; preds = %35
  br label %39

39:                                               ; preds = %42, %38
  %40 = phi i32 [ 0, %38 ], [ %52, %42 ]
  store i32 %40, ptr %5, align 4
  %41 = icmp slt i32 %40, 2000
  br i1 %41, label %42, label %53

42:                                               ; preds = %39
  %43 = sext i32 %36 to i64
  %44 = getelementptr inbounds [8 x i8], ptr %8, i64 %43
  %45 = load ptr, ptr %44, align 8
  %46 = sext i32 %40 to i64
  %47 = getelementptr inbounds [8 x i8], ptr %45, i64 %46
  %48 = load double, ptr %47, align 8
  %49 = getelementptr inbounds [8 x i8], ptr %1, i64 %46
  %50 = load double, ptr %49, align 8
  %51 = fadd double %50, %48
  store double %51, ptr %49, align 8
  %52 = add nsw i32 %40, 1
  br label %39, !llvm.loop !11

53:                                               ; preds = %39
  %54 = add nsw i32 %36, 1
  br label %35, !llvm.loop !12

55:                                               ; preds = %35
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
  br label %73

16:                                               ; preds = %4
  %17 = icmp eq i32 %0, 1
  br i1 %17, label %18, label %19

18:                                               ; preds = %16
  store i32 0, ptr %13, align 4
  br label %71

19:                                               ; preds = %16
  %.not = icmp eq i32 %3, 1
  br i1 %.not, label %46, label %20

20:                                               ; preds = %19
  %21 = sext i32 %2 to i64
  %22 = getelementptr inbounds [8 x i8], ptr %1, i64 %21
  %23 = load double, ptr %22, align 8
  %24 = call double @llvm.fabs.f64(double %23)
  store double %24, ptr %9, align 8
  %25 = add nsw i32 %3, 1
  store i32 %25, ptr %12, align 4
  br label %26

26:                                               ; preds = %40, %20
  %27 = phi i32 [ 0, %20 ], [ %41, %40 ]
  %28 = phi double [ %24, %20 ], [ %42, %40 ]
  %29 = phi i32 [ %25, %20 ], [ %43, %40 ]
  %30 = phi i32 [ 1, %20 ], [ %44, %40 ]
  store i32 %30, ptr %11, align 4
  %31 = icmp slt i32 %30, %0
  br i1 %31, label %32, label %45

32:                                               ; preds = %26
  %33 = add nsw i32 %29, %2
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [8 x i8], ptr %1, i64 %34
  %36 = load double, ptr %35, align 8
  %37 = call double @llvm.fabs.f64(double %36)
  store double %37, ptr %10, align 8
  %38 = fcmp ogt double %37, %28
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  store i32 %30, ptr %13, align 4
  store double %37, ptr %9, align 8
  br label %40

40:                                               ; preds = %39, %32
  %41 = phi i32 [ %30, %39 ], [ %27, %32 ]
  %42 = phi double [ %37, %39 ], [ %28, %32 ]
  %43 = add nsw i32 %29, %3
  store i32 %43, ptr %12, align 4
  %44 = add nsw i32 %30, 1
  br label %26, !llvm.loop !13

45:                                               ; preds = %26
  br label %69

46:                                               ; preds = %19
  store i32 0, ptr %13, align 4
  %47 = sext i32 %2 to i64
  %48 = getelementptr inbounds [8 x i8], ptr %1, i64 %47
  %49 = load double, ptr %48, align 8
  %50 = call double @llvm.fabs.f64(double %49)
  store double %50, ptr %9, align 8
  br label %51

51:                                               ; preds = %64, %46
  %52 = phi i32 [ 0, %46 ], [ %65, %64 ]
  %53 = phi double [ %50, %46 ], [ %66, %64 ]
  %54 = phi i32 [ 1, %46 ], [ %67, %64 ]
  store i32 %54, ptr %11, align 4
  %55 = icmp slt i32 %54, %0
  br i1 %55, label %56, label %68

56:                                               ; preds = %51
  %57 = add nsw i32 %54, %2
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [8 x i8], ptr %1, i64 %58
  %60 = load double, ptr %59, align 8
  %61 = call double @llvm.fabs.f64(double %60)
  store double %61, ptr %10, align 8
  %62 = fcmp ogt double %61, %53
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  store i32 %54, ptr %13, align 4
  store double %61, ptr %9, align 8
  br label %64

64:                                               ; preds = %63, %56
  %65 = phi i32 [ %54, %63 ], [ %52, %56 ]
  %66 = phi double [ %61, %63 ], [ %53, %56 ]
  %67 = add nsw i32 %54, 1
  br label %51, !llvm.loop !14

68:                                               ; preds = %51
  br label %69

69:                                               ; preds = %68, %45
  %70 = phi i32 [ %52, %68 ], [ %27, %45 ]
  br label %71

71:                                               ; preds = %69, %18
  %72 = phi i32 [ %70, %69 ], [ 0, %18 ]
  br label %73

73:                                               ; preds = %71, %15
  %74 = phi i32 [ %72, %71 ], [ -1, %15 ]
  ret i32 %74
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
  br i1 %13, label %14, label %41

14:                                               ; preds = %5
  %.not = icmp eq i32 %4, 1
  br i1 %.not, label %28, label %15

15:                                               ; preds = %14
  %16 = mul nsw i32 %0, %4
  store i32 %16, ptr %12, align 4
  br label %17

17:                                               ; preds = %20, %15
  %18 = phi i32 [ 0, %15 ], [ %26, %20 ]
  store i32 %18, ptr %11, align 4
  %19 = icmp slt i32 %18, %16
  br i1 %19, label %20, label %27

20:                                               ; preds = %17
  %21 = add nsw i32 %18, %3
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [8 x i8], ptr %2, i64 %22
  %24 = load double, ptr %23, align 8
  %25 = fmul double %24, %1
  store double %25, ptr %23, align 8
  %26 = add nsw i32 %18, %4
  br label %17, !llvm.loop !15

27:                                               ; preds = %17
  br label %40

28:                                               ; preds = %14
  br label %29

29:                                               ; preds = %32, %28
  %30 = phi i32 [ 0, %28 ], [ %38, %32 ]
  store i32 %30, ptr %11, align 4
  %31 = icmp slt i32 %30, %0
  br i1 %31, label %32, label %39

32:                                               ; preds = %29
  %33 = add nsw i32 %30, %3
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [8 x i8], ptr %2, i64 %34
  %36 = load double, ptr %35, align 8
  %37 = fmul double %36, %1
  store double %37, ptr %35, align 8
  %38 = add nsw i32 %30, 1
  br label %29, !llvm.loop !16

39:                                               ; preds = %29
  br label %40

40:                                               ; preds = %39, %27
  br label %41

41:                                               ; preds = %40, %5
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
  br i1 %20, label %21, label %73

21:                                               ; preds = %8
  %22 = fcmp une double %1, 0.000000e+00
  br i1 %22, label %23, label %73

23:                                               ; preds = %21
  %.not = icmp eq i32 %4, 1
  br i1 %.not, label %24, label %25

24:                                               ; preds = %23
  %.not1 = icmp eq i32 %7, 1
  br i1 %.not1, label %57, label %25

25:                                               ; preds = %24, %23
  store i32 0, ptr %18, align 4
  store i32 0, ptr %19, align 4
  %26 = icmp slt i32 %4, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %25
  %28 = sub nsw i32 1, %0
  %29 = mul nsw i32 %28, %4
  store i32 %29, ptr %18, align 4
  br label %30

30:                                               ; preds = %27, %25
  %31 = phi i32 [ %29, %27 ], [ 0, %25 ]
  %32 = icmp slt i32 %7, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = sub nsw i32 1, %0
  %35 = mul nsw i32 %34, %7
  store i32 %35, ptr %19, align 4
  br label %36

36:                                               ; preds = %33, %30
  %37 = phi i32 [ %35, %33 ], [ 0, %30 ]
  br label %38

38:                                               ; preds = %43, %36
  %39 = phi i32 [ %37, %36 ], [ %54, %43 ]
  %40 = phi i32 [ %31, %36 ], [ %53, %43 ]
  %41 = phi i32 [ 0, %36 ], [ %55, %43 ]
  store i32 %41, ptr %17, align 4
  %42 = icmp slt i32 %41, %0
  br i1 %42, label %43, label %56

43:                                               ; preds = %38
  %44 = add nsw i32 %40, %3
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [8 x i8], ptr %2, i64 %45
  %47 = load double, ptr %46, align 8
  %48 = add nsw i32 %39, %6
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [8 x i8], ptr %5, i64 %49
  %51 = load double, ptr %50, align 8
  %52 = call double @llvm.fmuladd.f64(double %1, double %47, double %51)
  store double %52, ptr %50, align 8
  %53 = add nsw i32 %40, %4
  store i32 %53, ptr %18, align 4
  %54 = add nsw i32 %39, %7
  store i32 %54, ptr %19, align 4
  %55 = add nsw i32 %41, 1
  br label %38, !llvm.loop !17

56:                                               ; preds = %38
  br label %73

57:                                               ; preds = %24
  br label %58

58:                                               ; preds = %61, %57
  %59 = phi i32 [ 0, %57 ], [ %71, %61 ]
  store i32 %59, ptr %17, align 4
  %60 = icmp slt i32 %59, %0
  br i1 %60, label %61, label %72

61:                                               ; preds = %58
  %62 = add nsw i32 %59, %3
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [8 x i8], ptr %2, i64 %63
  %65 = load double, ptr %64, align 8
  %66 = add nsw i32 %59, %6
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [8 x i8], ptr %5, i64 %67
  %69 = load double, ptr %68, align 8
  %70 = call double @llvm.fmuladd.f64(double %1, double %65, double %69)
  store double %70, ptr %68, align 8
  %71 = add nsw i32 %59, 1
  br label %58, !llvm.loop !18

72:                                               ; preds = %58
  br label %73

73:                                               ; preds = %72, %56, %21, %8
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

12:                                               ; preds = %64, %2
  %13 = phi ptr [ %0, %2 ], [ %66, %64 ]
  %14 = phi i32 [ 0, %2 ], [ %.pre-phi, %64 ]
  store i32 %14, ptr %6, align 4
  %15 = icmp slt i32 %14, 1999
  br i1 %15, label %16, label %67

16:                                               ; preds = %12
  %17 = sext i32 %14 to i64
  %18 = getelementptr inbounds [8 x i8], ptr %13, i64 %17
  %19 = load ptr, ptr %18, align 8
  store ptr %19, ptr %8, align 8
  %20 = add nsw i32 %14, 1
  store i32 %20, ptr %9, align 4
  %21 = sub nsw i32 2000, %14
  %22 = call i32 @idamax(i32 noundef %21, ptr noundef %19, i32 noundef %14, i32 noundef 1)
  %23 = add nsw i32 %22, %14
  store i32 %23, ptr %10, align 4
  %24 = getelementptr inbounds [4 x i8], ptr %1, i64 %17
  store i32 %23, ptr %24, align 4
  %25 = sext i32 %23 to i64
  %26 = getelementptr inbounds [8 x i8], ptr %19, i64 %25
  %27 = load double, ptr %26, align 8
  %28 = fcmp une double %27, 0.000000e+00
  br i1 %28, label %29, label %64

29:                                               ; preds = %16
  %.not = icmp eq i32 %23, %14
  br i1 %.not, label %._crit_edge, label %30

._crit_edge:                                      ; preds = %29
  %.phi.trans.insert = getelementptr inbounds [8 x i8], ptr %19, i64 %17
  %.pre = load double, ptr %.phi.trans.insert, align 8
  br label %33

30:                                               ; preds = %29
  store double %27, ptr %5, align 8
  %31 = getelementptr inbounds [8 x i8], ptr %19, i64 %17
  %32 = load double, ptr %31, align 8
  store double %32, ptr %26, align 8
  store double %27, ptr %31, align 8
  br label %33

33:                                               ; preds = %._crit_edge, %30
  %34 = phi double [ %.pre, %._crit_edge ], [ %27, %30 ]
  %35 = getelementptr inbounds [8 x i8], ptr %19, i64 %17
  %36 = fdiv double -1.000000e+00, %34
  store double %36, ptr %5, align 8
  %37 = sub nsw i32 2000, %20
  call void @dscal(i32 noundef %37, double noundef %36, ptr noundef %19, i32 noundef %20, i32 noundef 1)
  br label %38

38:                                               ; preds = %58, %33
  %39 = phi i32 [ %14, %33 ], [ %59, %58 ]
  %40 = phi i32 [ %14, %33 ], [ %60, %58 ]
  %41 = phi i32 [ %23, %33 ], [ %61, %58 ]
  %42 = phi ptr [ %13, %33 ], [ %0, %58 ]
  %43 = phi i32 [ %20, %33 ], [ %62, %58 ]
  store i32 %43, ptr %7, align 4
  %44 = icmp slt i32 %43, 2000
  br i1 %44, label %45, label %63

45:                                               ; preds = %38
  %46 = sext i32 %43 to i64
  %47 = getelementptr inbounds [8 x i8], ptr %0, i64 %46
  %48 = load ptr, ptr %47, align 8
  store ptr %48, ptr %11, align 8
  %49 = sext i32 %41 to i64
  %50 = getelementptr inbounds [8 x i8], ptr %48, i64 %49
  %51 = load double, ptr %50, align 8
  store double %51, ptr %5, align 8
  %.not2 = icmp eq i32 %41, %40
  br i1 %.not2, label %58, label %52

52:                                               ; preds = %45
  %53 = sext i32 %39 to i64
  %54 = getelementptr inbounds [8 x i8], ptr %48, i64 %53
  %55 = load double, ptr %54, align 8
  %56 = getelementptr inbounds [8 x i8], ptr %48, i64 %25
  store double %55, ptr %56, align 8
  %57 = getelementptr inbounds [8 x i8], ptr %48, i64 %17
  store double %51, ptr %57, align 8
  br label %58

58:                                               ; preds = %52, %45
  %59 = phi i32 [ %14, %52 ], [ %39, %45 ]
  %60 = phi i32 [ %14, %52 ], [ %40, %45 ]
  %61 = phi i32 [ %23, %52 ], [ %40, %45 ]
  call void @daxpy(i32 noundef %37, double noundef %51, ptr noundef %19, i32 noundef %20, i32 noundef 1, ptr noundef %48, i32 noundef %20, i32 noundef 1)
  %62 = add nsw i32 %43, 1
  br label %38, !llvm.loop !19

63:                                               ; preds = %38
  %.pre3 = add nsw i32 %40, 1
  br label %64

64:                                               ; preds = %63, %16
  %.pre-phi = phi i32 [ %.pre3, %63 ], [ %20, %16 ]
  %65 = phi i32 [ %40, %63 ], [ %14, %16 ]
  %66 = phi ptr [ %42, %63 ], [ %13, %16 ]
  br label %12, !llvm.loop !20

67:                                               ; preds = %12
  %68 = getelementptr inbounds nuw i8, ptr %1, i64 7996
  store i32 1999, ptr %68, align 4
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

12:                                               ; preds = %25, %3
  %13 = phi i32 [ 0, %3 ], [ %26, %25 ]
  store i32 %13, ptr %8, align 4
  %14 = icmp slt i32 %13, 1999
  br i1 %14, label %15, label %30

15:                                               ; preds = %12
  %16 = sext i32 %13 to i64
  %17 = getelementptr inbounds [4 x i8], ptr %1, i64 %16
  %18 = load i32, ptr %17, align 4
  store i32 %18, ptr %10, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [8 x i8], ptr %2, i64 %19
  %21 = load double, ptr %20, align 8
  store double %21, ptr %7, align 8
  %.not = icmp eq i32 %18, %13
  br i1 %.not, label %25, label %22

22:                                               ; preds = %15
  %23 = getelementptr inbounds [8 x i8], ptr %2, i64 %16
  %24 = load double, ptr %23, align 8
  store double %24, ptr %20, align 8
  store double %21, ptr %23, align 8
  br label %25

25:                                               ; preds = %22, %15
  %26 = add nsw i32 %13, 1
  store i32 %26, ptr %11, align 4
  %27 = sub nsw i32 1999, %13
  %28 = getelementptr inbounds [8 x i8], ptr %0, i64 %16
  %29 = load ptr, ptr %28, align 8
  call void @daxpy(i32 noundef %27, double noundef %21, ptr noundef %29, i32 noundef %26, i32 noundef 1, ptr noundef %2, i32 noundef %26, i32 noundef 1)
  br label %12, !llvm.loop !21

30:                                               ; preds = %12
  br label %31

31:                                               ; preds = %36, %30
  %32 = phi ptr [ %2, %30 ], [ %46, %36 ]
  %33 = phi ptr [ %0, %30 ], [ %50, %36 ]
  %34 = phi i32 [ 0, %30 ], [ %53, %36 ]
  store i32 %34, ptr %9, align 4
  %35 = icmp slt i32 %34, 2000
  br i1 %35, label %36, label %54

36:                                               ; preds = %31
  %37 = sub nsw i32 1999, %34
  store i32 %37, ptr %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [8 x i8], ptr %33, i64 %38
  %40 = load ptr, ptr %39, align 8
  %41 = getelementptr inbounds [8 x i8], ptr %40, i64 %38
  %42 = load double, ptr %41, align 8
  %43 = getelementptr inbounds [8 x i8], ptr %32, i64 %38
  %44 = load double, ptr %43, align 8
  %45 = fdiv double %44, %42
  store double %45, ptr %43, align 8
  %46 = load ptr, ptr %6, align 8
  %47 = getelementptr inbounds [8 x i8], ptr %46, i64 %38
  %48 = load double, ptr %47, align 8
  %49 = fneg double %48
  store double %49, ptr %7, align 8
  %50 = load ptr, ptr %4, align 8
  %51 = getelementptr inbounds [8 x i8], ptr %50, i64 %38
  %52 = load ptr, ptr %51, align 8
  call void @daxpy(i32 noundef %37, double noundef %49, ptr noundef %52, i32 noundef 0, i32 noundef 1, ptr noundef %46, i32 noundef 0, i32 noundef 1)
  %53 = add nsw i32 %34, 1
  br label %31, !llvm.loop !22

54:                                               ; preds = %31
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

13:                                               ; preds = %2
  br label %14

14:                                               ; preds = %22, %13
  %15 = phi i32 [ 1, %13 ], [ %23, %22 ]
  store i32 %15, ptr %5, align 4
  %16 = icmp slt i32 %15, %0
  br i1 %16, label %17, label %24

17:                                               ; preds = %14
  %18 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %19 = load ptr, ptr %18, align 8
  %20 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %19, ptr noundef nonnull dereferenceable(4) @.str) #5
  %.not = icmp eq i32 %20, 0
  br i1 %.not, label %21, label %22

21:                                               ; preds = %17
  store i8 1, ptr %6, align 1
  br label %24

22:                                               ; preds = %17
  %23 = add nsw i32 %15, 1
  br label %14, !llvm.loop !23

24:                                               ; preds = %21, %14
  br label %25

25:                                               ; preds = %24, %2
  %26 = call dereferenceable_or_null(16000) ptr @malloc(i64 noundef 16000) #6
  store ptr %26, ptr %7, align 8
  br label %27

27:                                               ; preds = %30, %25
  %28 = phi i32 [ 0, %25 ], [ %34, %30 ]
  store i32 %28, ptr %5, align 4
  %29 = icmp slt i32 %28, 2000
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = call dereferenceable_or_null(16008) ptr @malloc(i64 noundef 16008) #6
  %32 = sext i32 %28 to i64
  %33 = getelementptr inbounds [8 x i8], ptr %26, i64 %32
  store ptr %31, ptr %33, align 8
  %34 = add nsw i32 %28, 1
  br label %27, !llvm.loop !24

35:                                               ; preds = %27
  %36 = call dereferenceable_or_null(16000) ptr @malloc(i64 noundef 16000) #6
  store ptr %36, ptr %8, align 8
  %37 = call dereferenceable_or_null(16000) ptr @malloc(i64 noundef 16000) #6
  store ptr %37, ptr %9, align 8
  %38 = call dereferenceable_or_null(8000) ptr @malloc(i64 noundef 8000) #6
  store ptr %38, ptr %10, align 8
  call void @matgen(ptr noundef %26, ptr noundef %36)
  call void @dgefa(ptr noundef %26, ptr noundef %38)
  call void @dgesl(ptr noundef %26, ptr noundef %38, ptr noundef %36)
  store double 0.000000e+00, ptr %11, align 8
  call void @free(ptr noundef %38) #5
  call void @free(ptr noundef %37) #5
  call void @free(ptr noundef %36) #5
  br label %39

39:                                               ; preds = %42, %35
  %40 = phi i32 [ 0, %35 ], [ %46, %42 ]
  store i32 %40, ptr %5, align 4
  %41 = icmp slt i32 %40, 2000
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = sext i32 %40 to i64
  %44 = getelementptr inbounds [8 x i8], ptr %26, i64 %43
  %45 = load ptr, ptr %44, align 8
  call void @free(ptr noundef %45) #5
  %46 = add nsw i32 %40, 1
  br label %39, !llvm.loop !25

47:                                               ; preds = %39
  call void @free(ptr noundef %26) #5
  %48 = load i8, ptr %6, align 1
  %.not3 = icmp eq i8 %48, 0
  br i1 %.not3, label %53, label %49

49:                                               ; preds = %47
  %50 = call ptr @__acrt_iob_func(i32 noundef 1) #5
  %51 = load double, ptr %11, align 8
  %52 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %50, ptr noundef nonnull @.str.1, double noundef %51) #5
  br label %57

53:                                               ; preds = %47
  %54 = call ptr @__acrt_iob_func(i32 noundef 1) #5
  %55 = load double, ptr %11, align 8
  %56 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %54, ptr noundef nonnull @.str.2, double noundef %55) #5
  br label %57

57:                                               ; preds = %53, %49
  %58 = call ptr @__acrt_iob_func(i32 noundef 1) #5
  %59 = call i32 @fflush(ptr noundef %58) #5
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
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = add nsw i32 %6, 2147483647
  store i32 %9, ptr @seed, align 4
  br label %10

10:                                               ; preds = %8, %0
  %11 = phi i32 [ %9, %8 ], [ %6, %0 ]
  %12 = sitofp i32 %11 to double
  %13 = fmul nnan double %12, f0x3E00000000200FE1
  %14 = xor i32 %11, 123459876
  store i32 %14, ptr @seed, align 4
  ret double %13
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
