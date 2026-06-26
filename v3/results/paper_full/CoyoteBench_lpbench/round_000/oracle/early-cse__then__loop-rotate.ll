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
  %7 = load i32, ptr %5, align 4
  %8 = icmp slt i32 %7, 2000
  br i1 %8, label %.lr.ph2, label %33

.lr.ph2:                                          ; preds = %2
  br label %9

9:                                                ; preds = %.lr.ph2, %28
  store i32 0, ptr %6, align 4
  %10 = load i32, ptr %6, align 4
  %11 = icmp slt i32 %10, 2000
  br i1 %11, label %.lr.ph, label %27

.lr.ph:                                           ; preds = %9
  br label %12

12:                                               ; preds = %.lr.ph, %22
  %13 = call double @random_double()
  %14 = load ptr, ptr %3, align 8
  %15 = load i32, ptr %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds ptr, ptr %14, i64 %16
  %18 = load ptr, ptr %17, align 8
  %19 = load i32, ptr %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds double, ptr %18, i64 %20
  store double %13, ptr %21, align 8
  br label %22

22:                                               ; preds = %12
  %23 = load i32, ptr %6, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, ptr %6, align 4
  %25 = load i32, ptr %6, align 4
  %26 = icmp slt i32 %25, 2000
  br i1 %26, label %12, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %22
  br label %27

27:                                               ; preds = %._crit_edge, %9
  br label %28

28:                                               ; preds = %27
  %29 = load i32, ptr %5, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, ptr %5, align 4
  %31 = load i32, ptr %5, align 4
  %32 = icmp slt i32 %31, 2000
  br i1 %32, label %9, label %._crit_edge3, !llvm.loop !9

._crit_edge3:                                     ; preds = %28
  br label %33

33:                                               ; preds = %._crit_edge3, %2
  store i32 0, ptr %5, align 4
  %34 = load i32, ptr %5, align 4
  %35 = icmp slt i32 %34, 2000
  br i1 %35, label %.lr.ph5, label %46

.lr.ph5:                                          ; preds = %33
  br label %36

36:                                               ; preds = %.lr.ph5, %41
  %37 = phi i32 [ %34, %.lr.ph5 ], [ %44, %41 ]
  %38 = load ptr, ptr %4, align 8
  %39 = sext i32 %37 to i64
  %40 = getelementptr inbounds double, ptr %38, i64 %39
  store double 0.000000e+00, ptr %40, align 8
  br label %41

41:                                               ; preds = %36
  %42 = load i32, ptr %5, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, ptr %5, align 4
  %44 = load i32, ptr %5, align 4
  %45 = icmp slt i32 %44, 2000
  br i1 %45, label %36, label %._crit_edge6, !llvm.loop !10

._crit_edge6:                                     ; preds = %41
  br label %46

46:                                               ; preds = %._crit_edge6, %33
  store i32 0, ptr %6, align 4
  %47 = load i32, ptr %6, align 4
  %48 = icmp slt i32 %47, 2000
  br i1 %48, label %.lr.ph11, label %77

.lr.ph11:                                         ; preds = %46
  br label %49

49:                                               ; preds = %.lr.ph11, %72
  store i32 0, ptr %5, align 4
  %50 = load i32, ptr %5, align 4
  %51 = icmp slt i32 %50, 2000
  br i1 %51, label %.lr.ph8, label %71

.lr.ph8:                                          ; preds = %49
  br label %52

52:                                               ; preds = %.lr.ph8, %66
  %53 = phi i32 [ %50, %.lr.ph8 ], [ %69, %66 ]
  %54 = load ptr, ptr %3, align 8
  %55 = load i32, ptr %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds ptr, ptr %54, i64 %56
  %58 = load ptr, ptr %57, align 8
  %59 = sext i32 %53 to i64
  %60 = getelementptr inbounds double, ptr %58, i64 %59
  %61 = load double, ptr %60, align 8
  %62 = load ptr, ptr %4, align 8
  %63 = getelementptr inbounds double, ptr %62, i64 %59
  %64 = load double, ptr %63, align 8
  %65 = fadd double %64, %61
  store double %65, ptr %63, align 8
  br label %66

66:                                               ; preds = %52
  %67 = load i32, ptr %5, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, ptr %5, align 4
  %69 = load i32, ptr %5, align 4
  %70 = icmp slt i32 %69, 2000
  br i1 %70, label %52, label %._crit_edge9, !llvm.loop !11

._crit_edge9:                                     ; preds = %66
  br label %71

71:                                               ; preds = %._crit_edge9, %49
  br label %72

72:                                               ; preds = %71
  %73 = load i32, ptr %6, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, ptr %6, align 4
  %75 = load i32, ptr %6, align 4
  %76 = icmp slt i32 %75, 2000
  br i1 %76, label %49, label %._crit_edge12, !llvm.loop !12

._crit_edge12:                                    ; preds = %72
  br label %77

77:                                               ; preds = %._crit_edge12, %46
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
  br label %94

17:                                               ; preds = %4
  %18 = icmp eq i32 %14, 1
  br i1 %18, label %19, label %20

19:                                               ; preds = %17
  store i32 0, ptr %13, align 4
  br label %93

20:                                               ; preds = %17
  %21 = load i32, ptr %8, align 4
  %22 = icmp ne i32 %21, 1
  br i1 %22, label %23, label %60

23:                                               ; preds = %20
  %24 = load ptr, ptr %6, align 8
  %25 = load i32, ptr %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds double, ptr %24, i64 %26
  %28 = load double, ptr %27, align 8
  %29 = call double @llvm.fabs.f64(double %28)
  store double %29, ptr %9, align 8
  %30 = load i32, ptr %8, align 4
  %31 = add nsw i32 1, %30
  store i32 %31, ptr %12, align 4
  store i32 1, ptr %11, align 4
  %32 = load i32, ptr %11, align 4
  %33 = load i32, ptr %5, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %.lr.ph2, label %59

.lr.ph2:                                          ; preds = %23
  br label %35

35:                                               ; preds = %.lr.ph2, %53
  %36 = load ptr, ptr %6, align 8
  %37 = load i32, ptr %12, align 4
  %38 = load i32, ptr %7, align 4
  %39 = add nsw i32 %37, %38
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds double, ptr %36, i64 %40
  %42 = load double, ptr %41, align 8
  %43 = call double @llvm.fabs.f64(double %42)
  store double %43, ptr %10, align 8
  %44 = load double, ptr %9, align 8
  %45 = fcmp ogt double %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %35
  %47 = load i32, ptr %11, align 4
  store i32 %47, ptr %13, align 4
  %48 = load double, ptr %10, align 8
  store double %48, ptr %9, align 8
  br label %49

49:                                               ; preds = %46, %35
  %50 = load i32, ptr %8, align 4
  %51 = load i32, ptr %12, align 4
  %52 = add nsw i32 %51, %50
  store i32 %52, ptr %12, align 4
  br label %53

53:                                               ; preds = %49
  %54 = load i32, ptr %11, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, ptr %11, align 4
  %56 = load i32, ptr %11, align 4
  %57 = load i32, ptr %5, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %35, label %._crit_edge3, !llvm.loop !13

._crit_edge3:                                     ; preds = %53
  br label %59

59:                                               ; preds = %._crit_edge3, %23
  br label %92

60:                                               ; preds = %20
  store i32 0, ptr %13, align 4
  %61 = load ptr, ptr %6, align 8
  %62 = load i32, ptr %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds double, ptr %61, i64 %63
  %65 = load double, ptr %64, align 8
  %66 = call double @llvm.fabs.f64(double %65)
  store double %66, ptr %9, align 8
  store i32 1, ptr %11, align 4
  %67 = load i32, ptr %11, align 4
  %68 = load i32, ptr %5, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %.lr.ph, label %91

.lr.ph:                                           ; preds = %60
  br label %70

70:                                               ; preds = %.lr.ph, %85
  %71 = phi i32 [ %67, %.lr.ph ], [ %88, %85 ]
  %72 = load ptr, ptr %6, align 8
  %73 = load i32, ptr %7, align 4
  %74 = add nsw i32 %71, %73
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds double, ptr %72, i64 %75
  %77 = load double, ptr %76, align 8
  %78 = call double @llvm.fabs.f64(double %77)
  store double %78, ptr %10, align 8
  %79 = load double, ptr %9, align 8
  %80 = fcmp ogt double %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %70
  %82 = load i32, ptr %11, align 4
  store i32 %82, ptr %13, align 4
  %83 = load double, ptr %10, align 8
  store double %83, ptr %9, align 8
  br label %84

84:                                               ; preds = %81, %70
  br label %85

85:                                               ; preds = %84
  %86 = load i32, ptr %11, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, ptr %11, align 4
  %88 = load i32, ptr %11, align 4
  %89 = load i32, ptr %5, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %70, label %._crit_edge, !llvm.loop !14

._crit_edge:                                      ; preds = %85
  br label %91

91:                                               ; preds = %._crit_edge, %60
  br label %92

92:                                               ; preds = %91, %59
  br label %93

93:                                               ; preds = %92, %19
  br label %94

94:                                               ; preds = %93, %16
  %95 = load i32, ptr %13, align 4
  ret i32 %95
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
  br i1 %14, label %15, label %62

15:                                               ; preds = %5
  %16 = icmp ne i32 %4, 1
  br i1 %16, label %17, label %40

17:                                               ; preds = %15
  %18 = mul nsw i32 %13, %4
  store i32 %18, ptr %12, align 4
  store i32 0, ptr %11, align 4
  %19 = load i32, ptr %11, align 4
  %20 = load i32, ptr %12, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %.lr.ph2, label %39

.lr.ph2:                                          ; preds = %17
  br label %22

22:                                               ; preds = %.lr.ph2, %32
  %23 = phi i32 [ %19, %.lr.ph2 ], [ %36, %32 ]
  %24 = load double, ptr %7, align 8
  %25 = load ptr, ptr %8, align 8
  %26 = load i32, ptr %9, align 4
  %27 = add nsw i32 %23, %26
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds double, ptr %25, i64 %28
  %30 = load double, ptr %29, align 8
  %31 = fmul double %30, %24
  store double %31, ptr %29, align 8
  br label %32

32:                                               ; preds = %22
  %33 = load i32, ptr %10, align 4
  %34 = load i32, ptr %11, align 4
  %35 = add nsw i32 %34, %33
  store i32 %35, ptr %11, align 4
  %36 = load i32, ptr %11, align 4
  %37 = load i32, ptr %12, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %22, label %._crit_edge3, !llvm.loop !15

._crit_edge3:                                     ; preds = %32
  br label %39

39:                                               ; preds = %._crit_edge3, %17
  br label %61

40:                                               ; preds = %15
  store i32 0, ptr %11, align 4
  %41 = load i32, ptr %11, align 4
  %42 = load i32, ptr %6, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %.lr.ph, label %60

.lr.ph:                                           ; preds = %40
  br label %44

44:                                               ; preds = %.lr.ph, %54
  %45 = phi i32 [ %41, %.lr.ph ], [ %57, %54 ]
  %46 = load double, ptr %7, align 8
  %47 = load ptr, ptr %8, align 8
  %48 = load i32, ptr %9, align 4
  %49 = add nsw i32 %45, %48
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds double, ptr %47, i64 %50
  %52 = load double, ptr %51, align 8
  %53 = fmul double %52, %46
  store double %53, ptr %51, align 8
  br label %54

54:                                               ; preds = %44
  %55 = load i32, ptr %11, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, ptr %11, align 4
  %57 = load i32, ptr %11, align 4
  %58 = load i32, ptr %6, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %44, label %._crit_edge, !llvm.loop !16

._crit_edge:                                      ; preds = %54
  br label %60

60:                                               ; preds = %._crit_edge, %40
  br label %61

61:                                               ; preds = %60, %39
  br label %62

62:                                               ; preds = %61, %5
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
  br i1 %21, label %22, label %106

22:                                               ; preds = %8
  %23 = load double, ptr %10, align 8
  %24 = fcmp une double %23, 0.000000e+00
  br i1 %24, label %25, label %106

25:                                               ; preds = %22
  %26 = load i32, ptr %13, align 4
  %27 = icmp ne i32 %26, 1
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  %29 = icmp ne i32 %7, 1
  br i1 %29, label %30, label %78

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
  %45 = load i32, ptr %17, align 4
  %46 = load i32, ptr %9, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %.lr.ph2, label %77

.lr.ph2:                                          ; preds = %44
  br label %48

48:                                               ; preds = %.lr.ph2, %71
  %49 = load double, ptr %10, align 8
  %50 = load ptr, ptr %11, align 8
  %51 = load i32, ptr %18, align 4
  %52 = load i32, ptr %12, align 4
  %53 = add nsw i32 %51, %52
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds double, ptr %50, i64 %54
  %56 = load double, ptr %55, align 8
  %57 = load ptr, ptr %14, align 8
  %58 = load i32, ptr %19, align 4
  %59 = load i32, ptr %15, align 4
  %60 = add nsw i32 %58, %59
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds double, ptr %57, i64 %61
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
  %74 = load i32, ptr %17, align 4
  %75 = load i32, ptr %9, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %48, label %._crit_edge3, !llvm.loop !17

._crit_edge3:                                     ; preds = %71
  br label %77

77:                                               ; preds = %._crit_edge3, %44
  br label %106

78:                                               ; preds = %28
  store i32 0, ptr %17, align 4
  %79 = load i32, ptr %17, align 4
  %80 = load i32, ptr %9, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %.lr.ph, label %104

.lr.ph:                                           ; preds = %78
  br label %82

82:                                               ; preds = %.lr.ph, %98
  %83 = phi i32 [ %79, %.lr.ph ], [ %101, %98 ]
  %84 = load double, ptr %10, align 8
  %85 = load ptr, ptr %11, align 8
  %86 = load i32, ptr %12, align 4
  %87 = add nsw i32 %83, %86
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds double, ptr %85, i64 %88
  %90 = load double, ptr %89, align 8
  %91 = load ptr, ptr %14, align 8
  %92 = load i32, ptr %15, align 4
  %93 = add nsw i32 %83, %92
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds double, ptr %91, i64 %94
  %96 = load double, ptr %95, align 8
  %97 = call double @llvm.fmuladd.f64(double %84, double %90, double %96)
  store double %97, ptr %95, align 8
  br label %98

98:                                               ; preds = %82
  %99 = load i32, ptr %17, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, ptr %17, align 4
  %101 = load i32, ptr %17, align 4
  %102 = load i32, ptr %9, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %82, label %._crit_edge, !llvm.loop !18

._crit_edge:                                      ; preds = %98
  br label %104

104:                                              ; preds = %._crit_edge, %78
  br label %105

105:                                              ; preds = %104
  br label %106

106:                                              ; preds = %105, %77, %22, %8
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
  %12 = load i32, ptr %6, align 4
  %13 = icmp slt i32 %12, 1999
  br i1 %13, label %.lr.ph2, label %111

.lr.ph2:                                          ; preds = %2
  br label %14

14:                                               ; preds = %.lr.ph2, %106
  %15 = phi i32 [ %12, %.lr.ph2 ], [ %109, %106 ]
  %16 = load ptr, ptr %3, align 8
  %17 = sext i32 %15 to i64
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
  %27 = add nsw i32 %25, %26
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
  br i1 %37, label %38, label %105

38:                                               ; preds = %14
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
  %66 = load i32, ptr %7, align 4
  %67 = icmp slt i32 %66, 2000
  br i1 %67, label %.lr.ph, label %104

.lr.ph:                                           ; preds = %55
  br label %68

68:                                               ; preds = %.lr.ph, %99
  %69 = phi i32 [ %66, %.lr.ph ], [ %102, %99 ]
  %70 = load ptr, ptr %3, align 8
  %71 = sext i32 %69 to i64
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

81:                                               ; preds = %68
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

93:                                               ; preds = %81, %68
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
  %102 = load i32, ptr %7, align 4
  %103 = icmp slt i32 %102, 2000
  br i1 %103, label %68, label %._crit_edge, !llvm.loop !19

._crit_edge:                                      ; preds = %99
  br label %104

104:                                              ; preds = %._crit_edge, %55
  br label %105

105:                                              ; preds = %104, %14
  br label %106

106:                                              ; preds = %105
  %107 = load i32, ptr %6, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, ptr %6, align 4
  %109 = load i32, ptr %6, align 4
  %110 = icmp slt i32 %109, 1999
  br i1 %110, label %14, label %._crit_edge3, !llvm.loop !20

._crit_edge3:                                     ; preds = %106
  br label %111

111:                                              ; preds = %._crit_edge3, %2
  %112 = load ptr, ptr %4, align 8
  %113 = getelementptr inbounds i32, ptr %112, i64 1999
  store i32 1999, ptr %113, align 4
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
  %12 = load i32, ptr %8, align 4
  %13 = icmp slt i32 %12, 1999
  br i1 %13, label %.lr.ph, label %55

.lr.ph:                                           ; preds = %3
  br label %14

14:                                               ; preds = %.lr.ph, %50
  %15 = phi i32 [ %12, %.lr.ph ], [ %53, %50 ]
  %16 = load ptr, ptr %5, align 8
  %17 = sext i32 %15 to i64
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

27:                                               ; preds = %14
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

39:                                               ; preds = %27, %14
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
  %53 = load i32, ptr %8, align 4
  %54 = icmp slt i32 %53, 1999
  br i1 %54, label %14, label %._crit_edge, !llvm.loop !21

._crit_edge:                                      ; preds = %50
  br label %55

55:                                               ; preds = %._crit_edge, %3
  store i32 0, ptr %9, align 4
  %56 = load i32, ptr %9, align 4
  %57 = icmp slt i32 %56, 2000
  br i1 %57, label %.lr.ph2, label %89

.lr.ph2:                                          ; preds = %55
  br label %58

58:                                               ; preds = %.lr.ph2, %84
  %59 = phi i32 [ %56, %.lr.ph2 ], [ %87, %84 ]
  %60 = add nsw i32 %59, 1
  %61 = sub nsw i32 2000, %60
  store i32 %61, ptr %8, align 4
  %62 = load ptr, ptr %4, align 8
  %63 = sext i32 %61 to i64
  %64 = getelementptr inbounds ptr, ptr %62, i64 %63
  %65 = load ptr, ptr %64, align 8
  %66 = getelementptr inbounds double, ptr %65, i64 %63
  %67 = load double, ptr %66, align 8
  %68 = load ptr, ptr %6, align 8
  %69 = getelementptr inbounds double, ptr %68, i64 %63
  %70 = load double, ptr %69, align 8
  %71 = fdiv double %70, %67
  store double %71, ptr %69, align 8
  %72 = load ptr, ptr %6, align 8
  %73 = load i32, ptr %8, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds double, ptr %72, i64 %74
  %76 = load double, ptr %75, align 8
  %77 = fneg double %76
  store double %77, ptr %7, align 8
  %78 = load i32, ptr %8, align 4
  %79 = load ptr, ptr %4, align 8
  %80 = sext i32 %78 to i64
  %81 = getelementptr inbounds ptr, ptr %79, i64 %80
  %82 = load ptr, ptr %81, align 8
  %83 = load ptr, ptr %6, align 8
  call void @daxpy(i32 noundef %78, double noundef %77, ptr noundef %82, i32 noundef 0, i32 noundef 1, ptr noundef %83, i32 noundef 0, i32 noundef 1)
  br label %84

84:                                               ; preds = %58
  %85 = load i32, ptr %9, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, ptr %9, align 4
  %87 = load i32, ptr %9, align 4
  %88 = icmp slt i32 %87, 2000
  br i1 %88, label %58, label %._crit_edge3, !llvm.loop !22

._crit_edge3:                                     ; preds = %84
  br label %89

89:                                               ; preds = %._crit_edge3, %55
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
  br i1 %15, label %16, label %35

16:                                               ; preds = %2
  store i32 1, ptr %6, align 4
  %17 = load i32, ptr %6, align 4
  %18 = load i32, ptr %4, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %16
  br label %20

20:                                               ; preds = %.lr.ph, %28
  %21 = load ptr, ptr %5, align 8
  %22 = getelementptr inbounds ptr, ptr %21, i64 1
  %23 = load ptr, ptr %22, align 8
  %24 = call i32 @strcmp(ptr noundef %23, ptr noundef @.str) #5
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %20
  store i8 1, ptr %7, align 1
  br label %34

27:                                               ; preds = %20
  br label %28

28:                                               ; preds = %27
  %29 = load i32, ptr %6, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, ptr %6, align 4
  %31 = load i32, ptr %6, align 4
  %32 = load i32, ptr %4, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %20, label %..loopexit_crit_edge, !llvm.loop !23

..loopexit_crit_edge:                             ; preds = %28
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %16
  br label %34

34:                                               ; preds = %.loopexit, %26
  br label %35

35:                                               ; preds = %34, %2
  %36 = call ptr @malloc(i64 noundef 16000) #6
  store ptr %36, ptr %8, align 8
  store i32 0, ptr %6, align 4
  %37 = load i32, ptr %6, align 4
  %38 = icmp slt i32 %37, 2000
  br i1 %38, label %.lr.ph1, label %50

.lr.ph1:                                          ; preds = %35
  br label %39

39:                                               ; preds = %.lr.ph1, %45
  %40 = call ptr @malloc(i64 noundef 16008) #6
  %41 = load ptr, ptr %8, align 8
  %42 = load i32, ptr %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds ptr, ptr %41, i64 %43
  store ptr %40, ptr %44, align 8
  br label %45

45:                                               ; preds = %39
  %46 = load i32, ptr %6, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, ptr %6, align 4
  %48 = load i32, ptr %6, align 4
  %49 = icmp slt i32 %48, 2000
  br i1 %49, label %39, label %._crit_edge, !llvm.loop !24

._crit_edge:                                      ; preds = %45
  br label %50

50:                                               ; preds = %._crit_edge, %35
  %51 = call ptr @malloc(i64 noundef 16000) #6
  store ptr %51, ptr %9, align 8
  %52 = call ptr @malloc(i64 noundef 16000) #6
  store ptr %52, ptr %10, align 8
  %53 = call ptr @malloc(i64 noundef 8000) #6
  store ptr %53, ptr %11, align 8
  store double f0x41F3E5E475555555, ptr %12, align 8
  %54 = load ptr, ptr %8, align 8
  %55 = load ptr, ptr %9, align 8
  call void @matgen(ptr noundef %54, ptr noundef %55)
  %56 = load ptr, ptr %8, align 8
  %57 = load ptr, ptr %11, align 8
  call void @dgefa(ptr noundef %56, ptr noundef %57)
  %58 = load ptr, ptr %8, align 8
  %59 = load ptr, ptr %11, align 8
  %60 = load ptr, ptr %9, align 8
  call void @dgesl(ptr noundef %58, ptr noundef %59, ptr noundef %60)
  store double 0.000000e+00, ptr %13, align 8
  %61 = load ptr, ptr %11, align 8
  call void @free(ptr noundef %61)
  %62 = load ptr, ptr %10, align 8
  call void @free(ptr noundef %62)
  %63 = load ptr, ptr %9, align 8
  call void @free(ptr noundef %63)
  store i32 0, ptr %6, align 4
  %64 = load i32, ptr %6, align 4
  %65 = icmp slt i32 %64, 2000
  br i1 %65, label %.lr.ph3, label %77

.lr.ph3:                                          ; preds = %50
  br label %66

66:                                               ; preds = %.lr.ph3, %72
  %67 = phi i32 [ %64, %.lr.ph3 ], [ %75, %72 ]
  %68 = load ptr, ptr %8, align 8
  %69 = sext i32 %67 to i64
  %70 = getelementptr inbounds ptr, ptr %68, i64 %69
  %71 = load ptr, ptr %70, align 8
  call void @free(ptr noundef %71)
  br label %72

72:                                               ; preds = %66
  %73 = load i32, ptr %6, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, ptr %6, align 4
  %75 = load i32, ptr %6, align 4
  %76 = icmp slt i32 %75, 2000
  br i1 %76, label %66, label %._crit_edge4, !llvm.loop !25

._crit_edge4:                                     ; preds = %72
  br label %77

77:                                               ; preds = %._crit_edge4, %50
  %78 = load ptr, ptr %8, align 8
  call void @free(ptr noundef %78)
  %79 = load i8, ptr %7, align 1
  %80 = icmp ne i8 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %77
  %82 = call ptr @__acrt_iob_func(i32 noundef 1)
  %83 = load double, ptr %13, align 8
  %84 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %82, ptr noundef @.str.1, double noundef %83) #5
  br label %89

85:                                               ; preds = %77
  %86 = call ptr @__acrt_iob_func(i32 noundef 1)
  %87 = load double, ptr %13, align 8
  %88 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %86, ptr noundef @.str.2, double noundef %87) #5
  br label %89

89:                                               ; preds = %85, %81
  %90 = call ptr @__acrt_iob_func(i32 noundef 1)
  %91 = call i32 @fflush(ptr noundef %90)
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
  %9 = mul nsw i32 16807, %8
  %10 = mul nsw i32 2836, %5
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
  %18 = fmul double f0x3E00000000200FE1, %17
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
