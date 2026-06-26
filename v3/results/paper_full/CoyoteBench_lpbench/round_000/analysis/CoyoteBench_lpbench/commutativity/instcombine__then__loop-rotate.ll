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

7:                                                ; preds = %2, %23
  store i32 0, ptr %6, align 4
  br label %8

8:                                                ; preds = %7, %18
  %9 = call double @random_double()
  %10 = load ptr, ptr %3, align 8
  %11 = load i32, ptr %6, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [8 x i8], ptr %10, i64 %12
  %14 = load ptr, ptr %13, align 8
  %15 = load i32, ptr %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [8 x i8], ptr %14, i64 %16
  store double %9, ptr %17, align 8
  br label %18

18:                                               ; preds = %8
  %19 = load i32, ptr %6, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, ptr %6, align 4
  %21 = icmp slt i32 %20, 2000
  br i1 %21, label %8, label %22, !llvm.loop !7

22:                                               ; preds = %18
  br label %23

23:                                               ; preds = %22
  %24 = load i32, ptr %5, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, ptr %5, align 4
  %26 = icmp slt i32 %25, 2000
  br i1 %26, label %7, label %27, !llvm.loop !9

27:                                               ; preds = %23
  store i32 0, ptr %5, align 4
  br label %28

28:                                               ; preds = %27, %33
  %29 = load ptr, ptr %4, align 8
  %30 = load i32, ptr %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [8 x i8], ptr %29, i64 %31
  store double 0.000000e+00, ptr %32, align 8
  br label %33

33:                                               ; preds = %28
  %34 = load i32, ptr %5, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, ptr %5, align 4
  %36 = icmp slt i32 %35, 2000
  br i1 %36, label %28, label %37, !llvm.loop !10

37:                                               ; preds = %33
  store i32 0, ptr %6, align 4
  br label %38

38:                                               ; preds = %37, %59
  store i32 0, ptr %5, align 4
  br label %39

39:                                               ; preds = %38, %54
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
  br label %54

54:                                               ; preds = %39
  %55 = load i32, ptr %5, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, ptr %5, align 4
  %57 = icmp slt i32 %56, 2000
  br i1 %57, label %39, label %58, !llvm.loop !11

58:                                               ; preds = %54
  br label %59

59:                                               ; preds = %58
  %60 = load i32, ptr %6, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, ptr %6, align 4
  %62 = icmp slt i32 %61, 2000
  br i1 %62, label %38, label %63, !llvm.loop !12

63:                                               ; preds = %59
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
  br label %89

16:                                               ; preds = %4
  %17 = load i32, ptr %5, align 4
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store i32 0, ptr %13, align 4
  br label %88

20:                                               ; preds = %16
  %21 = load i32, ptr %8, align 4
  %.not = icmp eq i32 %21, 1
  br i1 %.not, label %57, label %22

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
  store i32 1, ptr %11, align 4
  %31 = load i32, ptr %5, align 4
  %32 = icmp slt i32 1, %31
  br i1 %32, label %.lr.ph, label %56

.lr.ph:                                           ; preds = %22
  br label %33

33:                                               ; preds = %.lr.ph, %51
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
  store i32 %53, ptr %11, align 4
  %54 = load i32, ptr %5, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %33, label %._crit_edge, !llvm.loop !13

._crit_edge:                                      ; preds = %51
  br label %56

56:                                               ; preds = %._crit_edge, %22
  br label %87

57:                                               ; preds = %20
  store i32 0, ptr %13, align 4
  %58 = load ptr, ptr %6, align 8
  %59 = load i32, ptr %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [8 x i8], ptr %58, i64 %60
  %62 = load double, ptr %61, align 8
  %63 = call double @llvm.fabs.f64(double %62)
  store double %63, ptr %9, align 8
  store i32 1, ptr %11, align 4
  %64 = load i32, ptr %5, align 4
  %65 = icmp slt i32 1, %64
  br i1 %65, label %.lr.ph3, label %86

.lr.ph3:                                          ; preds = %57
  br label %66

66:                                               ; preds = %.lr.ph3, %81
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
  store i32 %83, ptr %11, align 4
  %84 = load i32, ptr %5, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %66, label %._crit_edge4, !llvm.loop !14

._crit_edge4:                                     ; preds = %81
  br label %86

86:                                               ; preds = %._crit_edge4, %57
  br label %87

87:                                               ; preds = %86, %56
  br label %88

88:                                               ; preds = %87, %19
  br label %89

89:                                               ; preds = %88, %15
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
  %13 = icmp sgt i32 %0, 0
  br i1 %13, label %14, label %59

14:                                               ; preds = %5
  %15 = load i32, ptr %10, align 4
  %.not = icmp eq i32 %15, 1
  br i1 %.not, label %39, label %16

16:                                               ; preds = %14
  %17 = load i32, ptr %6, align 4
  %18 = load i32, ptr %10, align 4
  %19 = mul nsw i32 %17, %18
  store i32 %19, ptr %12, align 4
  store i32 0, ptr %11, align 4
  %20 = load i32, ptr %12, align 4
  %21 = icmp slt i32 0, %20
  br i1 %21, label %.lr.ph, label %38

.lr.ph:                                           ; preds = %16
  br label %22

22:                                               ; preds = %.lr.ph, %32
  %23 = load double, ptr %7, align 8
  %24 = load ptr, ptr %8, align 8
  %25 = load i32, ptr %11, align 4
  %26 = load i32, ptr %9, align 4
  %27 = add nsw i32 %25, %26
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [8 x i8], ptr %24, i64 %28
  %30 = load double, ptr %29, align 8
  %31 = fmul double %30, %23
  store double %31, ptr %29, align 8
  br label %32

32:                                               ; preds = %22
  %33 = load i32, ptr %10, align 4
  %34 = load i32, ptr %11, align 4
  %35 = add nsw i32 %34, %33
  store i32 %35, ptr %11, align 4
  %36 = load i32, ptr %12, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %22, label %._crit_edge, !llvm.loop !15

._crit_edge:                                      ; preds = %32
  br label %38

38:                                               ; preds = %._crit_edge, %16
  br label %58

39:                                               ; preds = %14
  store i32 0, ptr %11, align 4
  %40 = load i32, ptr %6, align 4
  %41 = icmp slt i32 0, %40
  br i1 %41, label %.lr.ph3, label %57

.lr.ph3:                                          ; preds = %39
  br label %42

42:                                               ; preds = %.lr.ph3, %52
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
  store i32 %54, ptr %11, align 4
  %55 = load i32, ptr %6, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %42, label %._crit_edge4, !llvm.loop !16

._crit_edge4:                                     ; preds = %52
  br label %57

57:                                               ; preds = %._crit_edge4, %39
  br label %58

58:                                               ; preds = %57, %38
  br label %59

59:                                               ; preds = %58, %5
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
  br i1 %21, label %22, label %104

22:                                               ; preds = %8
  %23 = load double, ptr %10, align 8
  %24 = fcmp une double %23, 0.000000e+00
  br i1 %24, label %25, label %104

25:                                               ; preds = %22
  %26 = load i32, ptr %13, align 4
  %.not = icmp eq i32 %26, 1
  br i1 %.not, label %27, label %29

27:                                               ; preds = %25
  %28 = load i32, ptr %16, align 4
  %.not1 = icmp eq i32 %28, 1
  br i1 %.not1, label %77, label %29

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
  %47 = icmp slt i32 0, %46
  br i1 %47, label %.lr.ph, label %76

.lr.ph:                                           ; preds = %45
  br label %48

48:                                               ; preds = %.lr.ph, %71
  %49 = load double, ptr %10, align 8
  %50 = load ptr, ptr %11, align 8
  %51 = load i32, ptr %18, align 4
  %52 = load i32, ptr %12, align 4
  %53 = add nsw i32 %51, %52
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [8 x i8], ptr %50, i64 %54
  %56 = load double, ptr %55, align 8
  %57 = load ptr, ptr %14, align 8
  %58 = load i32, ptr %19, align 4
  %59 = load i32, ptr %15, align 4
  %60 = add nsw i32 %58, %59
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [8 x i8], ptr %57, i64 %61
  %63 = load double, ptr %62, align 8
  %64 = call double @llvm.fmuladd.f64(double %49, double %56, double %63)
  store double %64, ptr %62, align 8
  %65 = load i32, ptr %13, align 4
  %66 = load i32, ptr %18, align 4
  %67 = add nsw i32 %66, %65
  store i32 %67, ptr %18, align 4
  %68 = load i32, ptr %16, align 4
  %69 = load i32, ptr %19, align 4
  %70 = add nsw i32 %69, %68
  store i32 %70, ptr %19, align 4
  br label %71

71:                                               ; preds = %48
  %72 = load i32, ptr %17, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, ptr %17, align 4
  %74 = load i32, ptr %9, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %48, label %._crit_edge, !llvm.loop !17

._crit_edge:                                      ; preds = %71
  br label %76

76:                                               ; preds = %._crit_edge, %45
  br label %104

77:                                               ; preds = %27
  store i32 0, ptr %17, align 4
  %78 = load i32, ptr %9, align 4
  %79 = icmp slt i32 0, %78
  br i1 %79, label %.lr.ph4, label %102

.lr.ph4:                                          ; preds = %77
  br label %80

80:                                               ; preds = %.lr.ph4, %97
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
  store i32 %99, ptr %17, align 4
  %100 = load i32, ptr %9, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %80, label %._crit_edge5, !llvm.loop !18

._crit_edge5:                                     ; preds = %97
  br label %102

102:                                              ; preds = %._crit_edge5, %77
  br label %103

103:                                              ; preds = %102
  br label %104

104:                                              ; preds = %103, %76, %22, %8
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

12:                                               ; preds = %2, %100
  %13 = load ptr, ptr %3, align 8
  %14 = load i32, ptr %6, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [8 x i8], ptr %13, i64 %15
  %17 = load ptr, ptr %16, align 8
  store ptr %17, ptr %8, align 8
  %18 = add nsw i32 %14, 1
  store i32 %18, ptr %9, align 4
  %19 = load i32, ptr %6, align 4
  %20 = sub nsw i32 2000, %19
  %21 = call i32 @idamax(i32 noundef %20, ptr noundef %17, i32 noundef %19, i32 noundef 1)
  %22 = add nsw i32 %21, %19
  store i32 %22, ptr %10, align 4
  %23 = load ptr, ptr %4, align 8
  %24 = sext i32 %19 to i64
  %25 = getelementptr inbounds [4 x i8], ptr %23, i64 %24
  store i32 %22, ptr %25, align 4
  %26 = load ptr, ptr %8, align 8
  %27 = sext i32 %22 to i64
  %28 = getelementptr inbounds [8 x i8], ptr %26, i64 %27
  %29 = load double, ptr %28, align 8
  %30 = fcmp une double %29, 0.000000e+00
  br i1 %30, label %31, label %99

31:                                               ; preds = %12
  %32 = load i32, ptr %10, align 4
  %33 = load i32, ptr %6, align 4
  %.not = icmp eq i32 %32, %33
  br i1 %.not, label %52, label %34

34:                                               ; preds = %31
  %35 = load ptr, ptr %8, align 8
  %36 = load i32, ptr %10, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [8 x i8], ptr %35, i64 %37
  %39 = load double, ptr %38, align 8
  store double %39, ptr %5, align 8
  %40 = load i32, ptr %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [8 x i8], ptr %35, i64 %41
  %43 = load double, ptr %42, align 8
  %44 = load ptr, ptr %8, align 8
  %45 = load i32, ptr %10, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [8 x i8], ptr %44, i64 %46
  store double %43, ptr %47, align 8
  %48 = load double, ptr %5, align 8
  %49 = load i32, ptr %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [8 x i8], ptr %44, i64 %50
  store double %48, ptr %51, align 8
  br label %52

52:                                               ; preds = %34, %31
  %53 = load ptr, ptr %8, align 8
  %54 = load i32, ptr %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [8 x i8], ptr %53, i64 %55
  %57 = load double, ptr %56, align 8
  %58 = fdiv double -1.000000e+00, %57
  store double %58, ptr %5, align 8
  %59 = load i32, ptr %9, align 4
  %60 = sub nsw i32 2000, %59
  %61 = load ptr, ptr %8, align 8
  call void @dscal(i32 noundef %60, double noundef %58, ptr noundef %61, i32 noundef %59, i32 noundef 1)
  store i32 %59, ptr %7, align 4
  %62 = icmp slt i32 %59, 2000
  br i1 %62, label %.lr.ph, label %98

.lr.ph:                                           ; preds = %52
  br label %63

63:                                               ; preds = %.lr.ph, %94
  %64 = load ptr, ptr %3, align 8
  %65 = load i32, ptr %7, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [8 x i8], ptr %64, i64 %66
  %68 = load ptr, ptr %67, align 8
  store ptr %68, ptr %11, align 8
  %69 = load i32, ptr %10, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [8 x i8], ptr %68, i64 %70
  %72 = load double, ptr %71, align 8
  store double %72, ptr %5, align 8
  %73 = load i32, ptr %6, align 4
  %.not2 = icmp eq i32 %69, %73
  br i1 %.not2, label %88, label %74

74:                                               ; preds = %63
  %75 = load ptr, ptr %11, align 8
  %76 = load i32, ptr %6, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [8 x i8], ptr %75, i64 %77
  %79 = load double, ptr %78, align 8
  %80 = load i32, ptr %10, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [8 x i8], ptr %75, i64 %81
  store double %79, ptr %82, align 8
  %83 = load double, ptr %5, align 8
  %84 = load ptr, ptr %11, align 8
  %85 = load i32, ptr %6, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [8 x i8], ptr %84, i64 %86
  store double %83, ptr %87, align 8
  br label %88

88:                                               ; preds = %74, %63
  %89 = load i32, ptr %9, align 4
  %90 = sub nsw i32 2000, %89
  %91 = load double, ptr %5, align 8
  %92 = load ptr, ptr %8, align 8
  %93 = load ptr, ptr %11, align 8
  call void @daxpy(i32 noundef %90, double noundef %91, ptr noundef %92, i32 noundef %89, i32 noundef 1, ptr noundef %93, i32 noundef %89, i32 noundef 1)
  br label %94

94:                                               ; preds = %88
  %95 = load i32, ptr %7, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, ptr %7, align 4
  %97 = icmp slt i32 %96, 2000
  br i1 %97, label %63, label %._crit_edge, !llvm.loop !19

._crit_edge:                                      ; preds = %94
  br label %98

98:                                               ; preds = %._crit_edge, %52
  br label %99

99:                                               ; preds = %98, %12
  br label %100

100:                                              ; preds = %99
  %101 = load i32, ptr %6, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, ptr %6, align 4
  %103 = icmp slt i32 %102, 1999
  br i1 %103, label %12, label %104, !llvm.loop !20

104:                                              ; preds = %100
  %105 = load ptr, ptr %4, align 8
  %106 = getelementptr inbounds nuw i8, ptr %105, i64 7996
  store i32 1999, ptr %106, align 4
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

12:                                               ; preds = %3, %48
  %13 = load ptr, ptr %5, align 8
  %14 = load i32, ptr %8, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [4 x i8], ptr %13, i64 %15
  %17 = load i32, ptr %16, align 4
  store i32 %17, ptr %10, align 4
  %18 = load ptr, ptr %6, align 8
  %19 = sext i32 %17 to i64
  %20 = getelementptr inbounds [8 x i8], ptr %18, i64 %19
  %21 = load double, ptr %20, align 8
  store double %21, ptr %7, align 8
  %22 = load i32, ptr %8, align 4
  %.not = icmp eq i32 %17, %22
  br i1 %.not, label %37, label %23

23:                                               ; preds = %12
  %24 = load ptr, ptr %6, align 8
  %25 = load i32, ptr %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [8 x i8], ptr %24, i64 %26
  %28 = load double, ptr %27, align 8
  %29 = load i32, ptr %10, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [8 x i8], ptr %24, i64 %30
  store double %28, ptr %31, align 8
  %32 = load double, ptr %7, align 8
  %33 = load ptr, ptr %6, align 8
  %34 = load i32, ptr %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [8 x i8], ptr %33, i64 %35
  store double %32, ptr %36, align 8
  br label %37

37:                                               ; preds = %23, %12
  %38 = load i32, ptr %8, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, ptr %11, align 4
  %40 = sub nsw i32 1999, %38
  %41 = load double, ptr %7, align 8
  %42 = load ptr, ptr %4, align 8
  %43 = sext i32 %38 to i64
  %44 = getelementptr inbounds [8 x i8], ptr %42, i64 %43
  %45 = load ptr, ptr %44, align 8
  %46 = load i32, ptr %11, align 4
  %47 = load ptr, ptr %6, align 8
  call void @daxpy(i32 noundef %40, double noundef %41, ptr noundef %45, i32 noundef %46, i32 noundef 1, ptr noundef %47, i32 noundef %46, i32 noundef 1)
  br label %48

48:                                               ; preds = %37
  %49 = load i32, ptr %8, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, ptr %8, align 4
  %51 = icmp slt i32 %50, 1999
  br i1 %51, label %12, label %52, !llvm.loop !21

52:                                               ; preds = %48
  store i32 0, ptr %9, align 4
  br label %53

53:                                               ; preds = %52, %81
  %54 = load i32, ptr %9, align 4
  %55 = sub nsw i32 1999, %54
  store i32 %55, ptr %8, align 4
  %56 = load ptr, ptr %4, align 8
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds [8 x i8], ptr %56, i64 %57
  %59 = load ptr, ptr %58, align 8
  %60 = sext i32 %55 to i64
  %61 = getelementptr inbounds [8 x i8], ptr %59, i64 %60
  %62 = load double, ptr %61, align 8
  %63 = load ptr, ptr %6, align 8
  %64 = load i32, ptr %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [8 x i8], ptr %63, i64 %65
  %67 = load double, ptr %66, align 8
  %68 = fdiv double %67, %62
  store double %68, ptr %66, align 8
  %69 = load ptr, ptr %6, align 8
  %70 = load i32, ptr %8, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [8 x i8], ptr %69, i64 %71
  %73 = load double, ptr %72, align 8
  %74 = fneg double %73
  store double %74, ptr %7, align 8
  %75 = load ptr, ptr %4, align 8
  %76 = load i32, ptr %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [8 x i8], ptr %75, i64 %77
  %79 = load ptr, ptr %78, align 8
  %80 = load ptr, ptr %6, align 8
  call void @daxpy(i32 noundef %70, double noundef %74, ptr noundef %79, i32 noundef 0, i32 noundef 1, ptr noundef %80, i32 noundef 0, i32 noundef 1)
  br label %81

81:                                               ; preds = %53
  %82 = load i32, ptr %9, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, ptr %9, align 4
  %84 = icmp slt i32 %83, 2000
  br i1 %84, label %53, label %85, !llvm.loop !22

85:                                               ; preds = %81
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
  br i1 %12, label %13, label %29

13:                                               ; preds = %2
  store i32 1, ptr %5, align 4
  %14 = load i32, ptr %3, align 4
  %15 = icmp slt i32 1, %14
  br i1 %15, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %13
  br label %16

16:                                               ; preds = %.lr.ph, %23
  %17 = load ptr, ptr %4, align 8
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 8
  %19 = load ptr, ptr %18, align 8
  %20 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %19, ptr noundef nonnull dereferenceable(4) @.str) #5
  %.not = icmp eq i32 %20, 0
  br i1 %.not, label %21, label %22

21:                                               ; preds = %16
  store i8 1, ptr %6, align 1
  br label %28

22:                                               ; preds = %16
  br label %23

23:                                               ; preds = %22
  %24 = load i32, ptr %5, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, ptr %5, align 4
  %26 = load i32, ptr %3, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %16, label %..loopexit_crit_edge, !llvm.loop !23

..loopexit_crit_edge:                             ; preds = %23
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %13
  br label %28

28:                                               ; preds = %.loopexit, %21
  br label %29

29:                                               ; preds = %28, %2
  %30 = call dereferenceable_or_null(16000) ptr @malloc(i64 noundef 16000) #6
  store ptr %30, ptr %7, align 8
  store i32 0, ptr %5, align 4
  br label %31

31:                                               ; preds = %29, %37
  %32 = call dereferenceable_or_null(16008) ptr @malloc(i64 noundef 16008) #6
  %33 = load ptr, ptr %7, align 8
  %34 = load i32, ptr %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [8 x i8], ptr %33, i64 %35
  store ptr %32, ptr %36, align 8
  br label %37

37:                                               ; preds = %31
  %38 = load i32, ptr %5, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, ptr %5, align 4
  %40 = icmp slt i32 %39, 2000
  br i1 %40, label %31, label %41, !llvm.loop !24

41:                                               ; preds = %37
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
  store i32 0, ptr %5, align 4
  br label %50

50:                                               ; preds = %41, %56
  %51 = load ptr, ptr %7, align 8
  %52 = load i32, ptr %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [8 x i8], ptr %51, i64 %53
  %55 = load ptr, ptr %54, align 8
  call void @free(ptr noundef %55) #5
  br label %56

56:                                               ; preds = %50
  %57 = load i32, ptr %5, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, ptr %5, align 4
  %59 = icmp slt i32 %58, 2000
  br i1 %59, label %50, label %60, !llvm.loop !25

60:                                               ; preds = %56
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
