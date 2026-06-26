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
  %37 = load ptr, ptr %4, align 8
  %38 = load i32, ptr %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds double, ptr %37, i64 %39
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
  br i1 %48, label %.lr.ph11, label %79

.lr.ph11:                                         ; preds = %46
  br label %49

49:                                               ; preds = %.lr.ph11, %74
  store i32 0, ptr %5, align 4
  %50 = load i32, ptr %5, align 4
  %51 = icmp slt i32 %50, 2000
  br i1 %51, label %.lr.ph8, label %73

.lr.ph8:                                          ; preds = %49
  br label %52

52:                                               ; preds = %.lr.ph8, %68
  %53 = load ptr, ptr %3, align 8
  %54 = load i32, ptr %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds ptr, ptr %53, i64 %55
  %57 = load ptr, ptr %56, align 8
  %58 = load i32, ptr %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds double, ptr %57, i64 %59
  %61 = load double, ptr %60, align 8
  %62 = load ptr, ptr %4, align 8
  %63 = load i32, ptr %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds double, ptr %62, i64 %64
  %66 = load double, ptr %65, align 8
  %67 = fadd double %61, %66
  store double %67, ptr %65, align 8
  br label %68

68:                                               ; preds = %52
  %69 = load i32, ptr %5, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, ptr %5, align 4
  %71 = load i32, ptr %5, align 4
  %72 = icmp slt i32 %71, 2000
  br i1 %72, label %52, label %._crit_edge9, !llvm.loop !11

._crit_edge9:                                     ; preds = %68
  br label %73

73:                                               ; preds = %._crit_edge9, %49
  br label %74

74:                                               ; preds = %73
  %75 = load i32, ptr %6, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, ptr %6, align 4
  %77 = load i32, ptr %6, align 4
  %78 = icmp slt i32 %77, 2000
  br i1 %78, label %49, label %._crit_edge12, !llvm.loop !12

._crit_edge12:                                    ; preds = %74
  br label %79

79:                                               ; preds = %._crit_edge12, %46
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
  br label %97

17:                                               ; preds = %4
  %18 = load i32, ptr %5, align 4
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i32 0, ptr %13, align 4
  br label %96

21:                                               ; preds = %17
  %22 = load i32, ptr %8, align 4
  %23 = icmp ne i32 %22, 1
  br i1 %23, label %24, label %62

24:                                               ; preds = %21
  %25 = load ptr, ptr %6, align 8
  %26 = load i32, ptr %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds double, ptr %25, i64 %27
  %29 = load double, ptr %28, align 8
  %30 = call double @llvm.fabs.f64(double %29)
  store double %30, ptr %9, align 8
  %31 = load i32, ptr %8, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, ptr %12, align 4
  store i32 1, ptr %11, align 4
  %33 = load i32, ptr %11, align 4
  %34 = load i32, ptr %5, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %.lr.ph2, label %61

.lr.ph2:                                          ; preds = %24
  br label %36

36:                                               ; preds = %.lr.ph2, %55
  %37 = load ptr, ptr %6, align 8
  %38 = load i32, ptr %12, align 4
  %39 = load i32, ptr %7, align 4
  %40 = add nsw i32 %39, %38
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds double, ptr %37, i64 %41
  %43 = load double, ptr %42, align 8
  %44 = call double @llvm.fabs.f64(double %43)
  store double %44, ptr %10, align 8
  %45 = load double, ptr %10, align 8
  %46 = load double, ptr %9, align 8
  %47 = fcmp ogt double %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %36
  %49 = load i32, ptr %11, align 4
  store i32 %49, ptr %13, align 4
  %50 = load double, ptr %10, align 8
  store double %50, ptr %9, align 8
  br label %51

51:                                               ; preds = %48, %36
  %52 = load i32, ptr %8, align 4
  %53 = load i32, ptr %12, align 4
  %54 = add nsw i32 %53, %52
  store i32 %54, ptr %12, align 4
  br label %55

55:                                               ; preds = %51
  %56 = load i32, ptr %11, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, ptr %11, align 4
  %58 = load i32, ptr %11, align 4
  %59 = load i32, ptr %5, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %36, label %._crit_edge3, !llvm.loop !13

._crit_edge3:                                     ; preds = %55
  br label %61

61:                                               ; preds = %._crit_edge3, %24
  br label %95

62:                                               ; preds = %21
  store i32 0, ptr %13, align 4
  %63 = load ptr, ptr %6, align 8
  %64 = load i32, ptr %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds double, ptr %63, i64 %65
  %67 = load double, ptr %66, align 8
  %68 = call double @llvm.fabs.f64(double %67)
  store double %68, ptr %9, align 8
  store i32 1, ptr %11, align 4
  %69 = load i32, ptr %11, align 4
  %70 = load i32, ptr %5, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %.lr.ph, label %94

.lr.ph:                                           ; preds = %62
  br label %72

72:                                               ; preds = %.lr.ph, %88
  %73 = load ptr, ptr %6, align 8
  %74 = load i32, ptr %11, align 4
  %75 = load i32, ptr %7, align 4
  %76 = add nsw i32 %75, %74
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds double, ptr %73, i64 %77
  %79 = load double, ptr %78, align 8
  %80 = call double @llvm.fabs.f64(double %79)
  store double %80, ptr %10, align 8
  %81 = load double, ptr %10, align 8
  %82 = load double, ptr %9, align 8
  %83 = fcmp ogt double %81, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %72
  %85 = load i32, ptr %11, align 4
  store i32 %85, ptr %13, align 4
  %86 = load double, ptr %10, align 8
  store double %86, ptr %9, align 8
  br label %87

87:                                               ; preds = %84, %72
  br label %88

88:                                               ; preds = %87
  %89 = load i32, ptr %11, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, ptr %11, align 4
  %91 = load i32, ptr %11, align 4
  %92 = load i32, ptr %5, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %72, label %._crit_edge, !llvm.loop !14

._crit_edge:                                      ; preds = %88
  br label %94

94:                                               ; preds = %._crit_edge, %62
  br label %95

95:                                               ; preds = %94, %61
  br label %96

96:                                               ; preds = %95, %20
  br label %97

97:                                               ; preds = %96, %16
  %98 = load i32, ptr %13, align 4
  ret i32 %98
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
  br i1 %14, label %15, label %65

15:                                               ; preds = %5
  %16 = load i32, ptr %10, align 4
  %17 = icmp ne i32 %16, 1
  br i1 %17, label %18, label %43

18:                                               ; preds = %15
  %19 = load i32, ptr %6, align 4
  %20 = load i32, ptr %10, align 4
  %21 = mul nsw i32 %20, %19
  store i32 %21, ptr %12, align 4
  store i32 0, ptr %11, align 4
  %22 = load i32, ptr %11, align 4
  %23 = load i32, ptr %12, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %.lr.ph2, label %42

.lr.ph2:                                          ; preds = %18
  br label %25

25:                                               ; preds = %.lr.ph2, %35
  %26 = load double, ptr %7, align 8
  %27 = load ptr, ptr %8, align 8
  %28 = load i32, ptr %11, align 4
  %29 = load i32, ptr %9, align 4
  %30 = add nsw i32 %29, %28
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds double, ptr %27, i64 %31
  %33 = load double, ptr %32, align 8
  %34 = fmul double %26, %33
  store double %34, ptr %32, align 8
  br label %35

35:                                               ; preds = %25
  %36 = load i32, ptr %10, align 4
  %37 = load i32, ptr %11, align 4
  %38 = add nsw i32 %37, %36
  store i32 %38, ptr %11, align 4
  %39 = load i32, ptr %11, align 4
  %40 = load i32, ptr %12, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %25, label %._crit_edge3, !llvm.loop !15

._crit_edge3:                                     ; preds = %35
  br label %42

42:                                               ; preds = %._crit_edge3, %18
  br label %64

43:                                               ; preds = %15
  store i32 0, ptr %11, align 4
  %44 = load i32, ptr %11, align 4
  %45 = load i32, ptr %6, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %.lr.ph, label %63

.lr.ph:                                           ; preds = %43
  br label %47

47:                                               ; preds = %.lr.ph, %57
  %48 = load double, ptr %7, align 8
  %49 = load ptr, ptr %8, align 8
  %50 = load i32, ptr %11, align 4
  %51 = load i32, ptr %9, align 4
  %52 = add nsw i32 %51, %50
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds double, ptr %49, i64 %53
  %55 = load double, ptr %54, align 8
  %56 = fmul double %48, %55
  store double %56, ptr %54, align 8
  br label %57

57:                                               ; preds = %47
  %58 = load i32, ptr %11, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, ptr %11, align 4
  %60 = load i32, ptr %11, align 4
  %61 = load i32, ptr %6, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %47, label %._crit_edge, !llvm.loop !16

._crit_edge:                                      ; preds = %57
  br label %63

63:                                               ; preds = %._crit_edge, %43
  br label %64

64:                                               ; preds = %63, %42
  br label %65

65:                                               ; preds = %64, %5
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
  br i1 %21, label %22, label %110

22:                                               ; preds = %8
  %23 = load double, ptr %10, align 8
  %24 = fcmp une double %23, 0.000000e+00
  br i1 %24, label %25, label %110

25:                                               ; preds = %22
  %26 = load i32, ptr %13, align 4
  %27 = icmp ne i32 %26, 1
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load i32, ptr %16, align 4
  %30 = icmp ne i32 %29, 1
  br i1 %30, label %31, label %81

31:                                               ; preds = %28, %25
  store i32 0, ptr %18, align 4
  store i32 0, ptr %19, align 4
  %32 = load i32, ptr %13, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load i32, ptr %9, align 4
  %36 = sub nsw i32 1, %35
  %37 = load i32, ptr %13, align 4
  %38 = mul nsw i32 %36, %37
  store i32 %38, ptr %18, align 4
  br label %39

39:                                               ; preds = %34, %31
  %40 = load i32, ptr %16, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load i32, ptr %9, align 4
  %44 = sub nsw i32 1, %43
  %45 = load i32, ptr %16, align 4
  %46 = mul nsw i32 %44, %45
  store i32 %46, ptr %19, align 4
  br label %47

47:                                               ; preds = %42, %39
  store i32 0, ptr %17, align 4
  %48 = load i32, ptr %17, align 4
  %49 = load i32, ptr %9, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %.lr.ph2, label %80

.lr.ph2:                                          ; preds = %47
  br label %51

51:                                               ; preds = %.lr.ph2, %74
  %52 = load double, ptr %10, align 8
  %53 = load ptr, ptr %11, align 8
  %54 = load i32, ptr %18, align 4
  %55 = load i32, ptr %12, align 4
  %56 = add nsw i32 %55, %54
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds double, ptr %53, i64 %57
  %59 = load double, ptr %58, align 8
  %60 = load ptr, ptr %14, align 8
  %61 = load i32, ptr %19, align 4
  %62 = load i32, ptr %15, align 4
  %63 = add nsw i32 %62, %61
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds double, ptr %60, i64 %64
  %66 = load double, ptr %65, align 8
  %67 = call double @llvm.fmuladd.f64(double %52, double %59, double %66)
  store double %67, ptr %65, align 8
  %68 = load i32, ptr %13, align 4
  %69 = load i32, ptr %18, align 4
  %70 = add nsw i32 %69, %68
  store i32 %70, ptr %18, align 4
  %71 = load i32, ptr %16, align 4
  %72 = load i32, ptr %19, align 4
  %73 = add nsw i32 %72, %71
  store i32 %73, ptr %19, align 4
  br label %74

74:                                               ; preds = %51
  %75 = load i32, ptr %17, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, ptr %17, align 4
  %77 = load i32, ptr %17, align 4
  %78 = load i32, ptr %9, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %51, label %._crit_edge3, !llvm.loop !17

._crit_edge3:                                     ; preds = %74
  br label %80

80:                                               ; preds = %._crit_edge3, %47
  br label %110

81:                                               ; preds = %28
  store i32 0, ptr %17, align 4
  %82 = load i32, ptr %17, align 4
  %83 = load i32, ptr %9, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %.lr.ph, label %108

.lr.ph:                                           ; preds = %81
  br label %85

85:                                               ; preds = %.lr.ph, %102
  %86 = load double, ptr %10, align 8
  %87 = load ptr, ptr %11, align 8
  %88 = load i32, ptr %17, align 4
  %89 = load i32, ptr %12, align 4
  %90 = add nsw i32 %89, %88
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds double, ptr %87, i64 %91
  %93 = load double, ptr %92, align 8
  %94 = load ptr, ptr %14, align 8
  %95 = load i32, ptr %17, align 4
  %96 = load i32, ptr %15, align 4
  %97 = add nsw i32 %96, %95
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds double, ptr %94, i64 %98
  %100 = load double, ptr %99, align 8
  %101 = call double @llvm.fmuladd.f64(double %86, double %93, double %100)
  store double %101, ptr %99, align 8
  br label %102

102:                                              ; preds = %85
  %103 = load i32, ptr %17, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, ptr %17, align 4
  %105 = load i32, ptr %17, align 4
  %106 = load i32, ptr %9, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %85, label %._crit_edge, !llvm.loop !18

._crit_edge:                                      ; preds = %102
  br label %108

108:                                              ; preds = %._crit_edge, %81
  br label %109

109:                                              ; preds = %108
  br label %110

110:                                              ; preds = %109, %80, %22, %8
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
  br i1 %13, label %.lr.ph2, label %128

.lr.ph2:                                          ; preds = %2
  br label %14

14:                                               ; preds = %.lr.ph2, %123
  %15 = load ptr, ptr %3, align 8
  %16 = load i32, ptr %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds ptr, ptr %15, i64 %17
  %19 = load ptr, ptr %18, align 8
  store ptr %19, ptr %8, align 8
  %20 = load i32, ptr %6, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, ptr %9, align 4
  %22 = load i32, ptr %6, align 4
  %23 = sub nsw i32 2000, %22
  %24 = load ptr, ptr %8, align 8
  %25 = load i32, ptr %6, align 4
  %26 = call i32 @idamax(i32 noundef %23, ptr noundef %24, i32 noundef %25, i32 noundef 1)
  %27 = load i32, ptr %6, align 4
  %28 = add nsw i32 %27, %26
  store i32 %28, ptr %10, align 4
  %29 = load i32, ptr %10, align 4
  %30 = load ptr, ptr %4, align 8
  %31 = load i32, ptr %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, ptr %30, i64 %32
  store i32 %29, ptr %33, align 4
  %34 = load ptr, ptr %8, align 8
  %35 = load i32, ptr %10, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds double, ptr %34, i64 %36
  %38 = load double, ptr %37, align 8
  %39 = fcmp une double %38, 0.000000e+00
  br i1 %39, label %40, label %122

40:                                               ; preds = %14
  %41 = load i32, ptr %10, align 4
  %42 = load i32, ptr %6, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %64

44:                                               ; preds = %40
  %45 = load ptr, ptr %8, align 8
  %46 = load i32, ptr %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds double, ptr %45, i64 %47
  %49 = load double, ptr %48, align 8
  store double %49, ptr %5, align 8
  %50 = load ptr, ptr %8, align 8
  %51 = load i32, ptr %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds double, ptr %50, i64 %52
  %54 = load double, ptr %53, align 8
  %55 = load ptr, ptr %8, align 8
  %56 = load i32, ptr %10, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds double, ptr %55, i64 %57
  store double %54, ptr %58, align 8
  %59 = load double, ptr %5, align 8
  %60 = load ptr, ptr %8, align 8
  %61 = load i32, ptr %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds double, ptr %60, i64 %62
  store double %59, ptr %63, align 8
  br label %64

64:                                               ; preds = %44, %40
  %65 = load ptr, ptr %8, align 8
  %66 = load i32, ptr %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds double, ptr %65, i64 %67
  %69 = load double, ptr %68, align 8
  %70 = fdiv double -1.000000e+00, %69
  store double %70, ptr %5, align 8
  %71 = load i32, ptr %9, align 4
  %72 = sub nsw i32 2000, %71
  %73 = load double, ptr %5, align 8
  %74 = load ptr, ptr %8, align 8
  %75 = load i32, ptr %9, align 4
  call void @dscal(i32 noundef %72, double noundef %73, ptr noundef %74, i32 noundef %75, i32 noundef 1)
  %76 = load i32, ptr %9, align 4
  store i32 %76, ptr %7, align 4
  %77 = load i32, ptr %7, align 4
  %78 = icmp slt i32 %77, 2000
  br i1 %78, label %.lr.ph, label %121

.lr.ph:                                           ; preds = %64
  br label %79

79:                                               ; preds = %.lr.ph, %116
  %80 = load ptr, ptr %3, align 8
  %81 = load i32, ptr %7, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds ptr, ptr %80, i64 %82
  %84 = load ptr, ptr %83, align 8
  store ptr %84, ptr %11, align 8
  %85 = load ptr, ptr %11, align 8
  %86 = load i32, ptr %10, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds double, ptr %85, i64 %87
  %89 = load double, ptr %88, align 8
  store double %89, ptr %5, align 8
  %90 = load i32, ptr %10, align 4
  %91 = load i32, ptr %6, align 4
  %92 = icmp ne i32 %90, %91
  br i1 %92, label %93, label %108

93:                                               ; preds = %79
  %94 = load ptr, ptr %11, align 8
  %95 = load i32, ptr %6, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds double, ptr %94, i64 %96
  %98 = load double, ptr %97, align 8
  %99 = load ptr, ptr %11, align 8
  %100 = load i32, ptr %10, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds double, ptr %99, i64 %101
  store double %98, ptr %102, align 8
  %103 = load double, ptr %5, align 8
  %104 = load ptr, ptr %11, align 8
  %105 = load i32, ptr %6, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds double, ptr %104, i64 %106
  store double %103, ptr %107, align 8
  br label %108

108:                                              ; preds = %93, %79
  %109 = load i32, ptr %9, align 4
  %110 = sub nsw i32 2000, %109
  %111 = load double, ptr %5, align 8
  %112 = load ptr, ptr %8, align 8
  %113 = load i32, ptr %9, align 4
  %114 = load ptr, ptr %11, align 8
  %115 = load i32, ptr %9, align 4
  call void @daxpy(i32 noundef %110, double noundef %111, ptr noundef %112, i32 noundef %113, i32 noundef 1, ptr noundef %114, i32 noundef %115, i32 noundef 1)
  br label %116

116:                                              ; preds = %108
  %117 = load i32, ptr %7, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, ptr %7, align 4
  %119 = load i32, ptr %7, align 4
  %120 = icmp slt i32 %119, 2000
  br i1 %120, label %79, label %._crit_edge, !llvm.loop !19

._crit_edge:                                      ; preds = %116
  br label %121

121:                                              ; preds = %._crit_edge, %64
  br label %122

122:                                              ; preds = %121, %14
  br label %123

123:                                              ; preds = %122
  %124 = load i32, ptr %6, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, ptr %6, align 4
  %126 = load i32, ptr %6, align 4
  %127 = icmp slt i32 %126, 1999
  br i1 %127, label %14, label %._crit_edge3, !llvm.loop !20

._crit_edge3:                                     ; preds = %123
  br label %128

128:                                              ; preds = %._crit_edge3, %2
  %129 = load ptr, ptr %4, align 8
  %130 = getelementptr inbounds i32, ptr %129, i64 1999
  store i32 1999, ptr %130, align 4
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
  br i1 %13, label %.lr.ph, label %62

.lr.ph:                                           ; preds = %3
  br label %14

14:                                               ; preds = %.lr.ph, %57
  %15 = load ptr, ptr %5, align 8
  %16 = load i32, ptr %8, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, ptr %15, i64 %17
  %19 = load i32, ptr %18, align 4
  store i32 %19, ptr %10, align 4
  %20 = load ptr, ptr %6, align 8
  %21 = load i32, ptr %10, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds double, ptr %20, i64 %22
  %24 = load double, ptr %23, align 8
  store double %24, ptr %7, align 8
  %25 = load i32, ptr %10, align 4
  %26 = load i32, ptr %8, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %43

28:                                               ; preds = %14
  %29 = load ptr, ptr %6, align 8
  %30 = load i32, ptr %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds double, ptr %29, i64 %31
  %33 = load double, ptr %32, align 8
  %34 = load ptr, ptr %6, align 8
  %35 = load i32, ptr %10, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds double, ptr %34, i64 %36
  store double %33, ptr %37, align 8
  %38 = load double, ptr %7, align 8
  %39 = load ptr, ptr %6, align 8
  %40 = load i32, ptr %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds double, ptr %39, i64 %41
  store double %38, ptr %42, align 8
  br label %43

43:                                               ; preds = %28, %14
  %44 = load i32, ptr %8, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, ptr %11, align 4
  %46 = load i32, ptr %11, align 4
  %47 = sub nsw i32 2000, %46
  %48 = load double, ptr %7, align 8
  %49 = load ptr, ptr %4, align 8
  %50 = load i32, ptr %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds ptr, ptr %49, i64 %51
  %53 = load ptr, ptr %52, align 8
  %54 = load i32, ptr %11, align 4
  %55 = load ptr, ptr %6, align 8
  %56 = load i32, ptr %11, align 4
  call void @daxpy(i32 noundef %47, double noundef %48, ptr noundef %53, i32 noundef %54, i32 noundef 1, ptr noundef %55, i32 noundef %56, i32 noundef 1)
  br label %57

57:                                               ; preds = %43
  %58 = load i32, ptr %8, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, ptr %8, align 4
  %60 = load i32, ptr %8, align 4
  %61 = icmp slt i32 %60, 1999
  br i1 %61, label %14, label %._crit_edge, !llvm.loop !21

._crit_edge:                                      ; preds = %57
  br label %62

62:                                               ; preds = %._crit_edge, %3
  store i32 0, ptr %9, align 4
  %63 = load i32, ptr %9, align 4
  %64 = icmp slt i32 %63, 2000
  br i1 %64, label %.lr.ph2, label %102

.lr.ph2:                                          ; preds = %62
  br label %65

65:                                               ; preds = %.lr.ph2, %97
  %66 = load i32, ptr %9, align 4
  %.neg = sub i32 0, %66
  %67 = add i32 %.neg, 1999
  store i32 %67, ptr %8, align 4
  %68 = load ptr, ptr %4, align 8
  %69 = load i32, ptr %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds ptr, ptr %68, i64 %70
  %72 = load ptr, ptr %71, align 8
  %73 = load i32, ptr %8, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds double, ptr %72, i64 %74
  %76 = load double, ptr %75, align 8
  %77 = load ptr, ptr %6, align 8
  %78 = load i32, ptr %8, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds double, ptr %77, i64 %79
  %81 = load double, ptr %80, align 8
  %82 = fdiv double %81, %76
  store double %82, ptr %80, align 8
  %83 = load ptr, ptr %6, align 8
  %84 = load i32, ptr %8, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds double, ptr %83, i64 %85
  %87 = load double, ptr %86, align 8
  %88 = fneg double %87
  store double %88, ptr %7, align 8
  %89 = load i32, ptr %8, align 4
  %90 = load double, ptr %7, align 8
  %91 = load ptr, ptr %4, align 8
  %92 = load i32, ptr %8, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds ptr, ptr %91, i64 %93
  %95 = load ptr, ptr %94, align 8
  %96 = load ptr, ptr %6, align 8
  call void @daxpy(i32 noundef %89, double noundef %90, ptr noundef %95, i32 noundef 0, i32 noundef 1, ptr noundef %96, i32 noundef 0, i32 noundef 1)
  br label %97

97:                                               ; preds = %65
  %98 = load i32, ptr %9, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, ptr %9, align 4
  %100 = load i32, ptr %9, align 4
  %101 = icmp slt i32 %100, 2000
  br i1 %101, label %65, label %._crit_edge3, !llvm.loop !22

._crit_edge3:                                     ; preds = %97
  br label %102

102:                                              ; preds = %._crit_edge3, %62
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
  %67 = load ptr, ptr %8, align 8
  %68 = load i32, ptr %6, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds ptr, ptr %67, i64 %69
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
  %5 = load i32, ptr @seed, align 4
  %6 = sdiv i32 %5, 127773
  store i32 %6, ptr %1, align 4
  %7 = load i32, ptr @seed, align 4
  %8 = load i32, ptr %1, align 4
  %9 = mul nsw i32 %8, 127773
  %10 = sub nsw i32 %7, %9
  %11 = mul nsw i32 %10, 16807
  %12 = load i32, ptr %1, align 4
  %13 = mul nsw i32 %12, 2836
  %14 = sub nsw i32 %11, %13
  store i32 %14, ptr @seed, align 4
  %15 = load i32, ptr @seed, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %0
  %18 = load i32, ptr @seed, align 4
  %19 = add nsw i32 %18, 2147483647
  store i32 %19, ptr @seed, align 4
  br label %20

20:                                               ; preds = %17, %0
  %21 = load i32, ptr @seed, align 4
  %22 = sitofp i32 %21 to double
  %23 = fmul double %22, f0x3E00000000200FE1
  store double %23, ptr %2, align 8
  %24 = load i32, ptr @seed, align 4
  %25 = xor i32 %24, 123459876
  store i32 %25, ptr @seed, align 4
  %26 = load double, ptr %2, align 8
  ret double %26
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
