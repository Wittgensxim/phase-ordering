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
  br i1 true, label %.lr.ph2, label %27

.lr.ph2:                                          ; preds = %2
  br label %7

7:                                                ; preds = %.lr.ph2, %23
  store i32 0, ptr %6, align 4
  br i1 true, label %.lr.ph, label %22

.lr.ph:                                           ; preds = %7
  br label %8

8:                                                ; preds = %.lr.ph, %18
  %9 = call double @random_double()
  %10 = load ptr, ptr %3, align 8
  %11 = load i32, ptr %6, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds ptr, ptr %10, i64 %12
  %14 = load ptr, ptr %13, align 8
  %15 = load i32, ptr %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds double, ptr %14, i64 %16
  store double %9, ptr %17, align 8
  br label %18

18:                                               ; preds = %8
  %19 = load i32, ptr %6, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, ptr %6, align 4
  %21 = icmp slt i32 %20, 2000
  br i1 %21, label %8, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %18
  br label %22

22:                                               ; preds = %._crit_edge, %7
  br label %23

23:                                               ; preds = %22
  %24 = load i32, ptr %5, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, ptr %5, align 4
  %26 = icmp slt i32 %25, 2000
  br i1 %26, label %7, label %._crit_edge3, !llvm.loop !9

._crit_edge3:                                     ; preds = %23
  br label %27

27:                                               ; preds = %._crit_edge3, %2
  store i32 0, ptr %5, align 4
  br i1 true, label %.lr.ph5, label %37

.lr.ph5:                                          ; preds = %27
  br label %28

28:                                               ; preds = %.lr.ph5, %33
  %29 = load ptr, ptr %4, align 8
  %30 = load i32, ptr %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds double, ptr %29, i64 %31
  store double 0.000000e+00, ptr %32, align 8
  br label %33

33:                                               ; preds = %28
  %34 = load i32, ptr %5, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, ptr %5, align 4
  %36 = icmp slt i32 %35, 2000
  br i1 %36, label %28, label %._crit_edge6, !llvm.loop !10

._crit_edge6:                                     ; preds = %33
  br label %37

37:                                               ; preds = %._crit_edge6, %27
  store i32 0, ptr %6, align 4
  br i1 true, label %.lr.ph11, label %62

.lr.ph11:                                         ; preds = %37
  br label %38

38:                                               ; preds = %.lr.ph11, %58
  store i32 0, ptr %5, align 4
  br i1 true, label %.lr.ph8, label %57

.lr.ph8:                                          ; preds = %38
  br label %39

39:                                               ; preds = %.lr.ph8, %53
  %40 = load ptr, ptr %3, align 8
  %41 = load i32, ptr %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds ptr, ptr %40, i64 %42
  %44 = load ptr, ptr %43, align 8
  %45 = load i32, ptr %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds double, ptr %44, i64 %46
  %48 = load double, ptr %47, align 8
  %49 = load ptr, ptr %4, align 8
  %50 = getelementptr inbounds double, ptr %49, i64 %46
  %51 = load double, ptr %50, align 8
  %52 = fadd double %51, %48
  store double %52, ptr %50, align 8
  br label %53

53:                                               ; preds = %39
  %54 = load i32, ptr %5, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, ptr %5, align 4
  %56 = icmp slt i32 %55, 2000
  br i1 %56, label %39, label %._crit_edge9, !llvm.loop !11

._crit_edge9:                                     ; preds = %53
  br label %57

57:                                               ; preds = %._crit_edge9, %38
  br label %58

58:                                               ; preds = %57
  %59 = load i32, ptr %6, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, ptr %6, align 4
  %61 = icmp slt i32 %60, 2000
  br i1 %61, label %38, label %._crit_edge12, !llvm.loop !12

._crit_edge12:                                    ; preds = %58
  br label %62

62:                                               ; preds = %._crit_edge12, %37
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
  br label %90

17:                                               ; preds = %4
  %18 = icmp eq i32 %14, 1
  br i1 %18, label %19, label %20

19:                                               ; preds = %17
  store i32 0, ptr %13, align 4
  br label %89

20:                                               ; preds = %17
  %21 = load i32, ptr %8, align 4
  %22 = icmp ne i32 %21, 1
  br i1 %22, label %23, label %58

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
  %32 = load i32, ptr %5, align 4
  %33 = icmp slt i32 1, %32
  br i1 %33, label %.lr.ph2, label %57

.lr.ph2:                                          ; preds = %23
  br label %34

34:                                               ; preds = %.lr.ph2, %52
  %35 = load ptr, ptr %6, align 8
  %36 = load i32, ptr %12, align 4
  %37 = load i32, ptr %7, align 4
  %38 = add nsw i32 %36, %37
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds double, ptr %35, i64 %39
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
  store i32 %54, ptr %11, align 4
  %55 = load i32, ptr %5, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %34, label %._crit_edge3, !llvm.loop !13

._crit_edge3:                                     ; preds = %52
  br label %57

57:                                               ; preds = %._crit_edge3, %23
  br label %88

58:                                               ; preds = %20
  store i32 0, ptr %13, align 4
  %59 = load ptr, ptr %6, align 8
  %60 = load i32, ptr %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds double, ptr %59, i64 %61
  %63 = load double, ptr %62, align 8
  %64 = call double @llvm.fabs.f64(double %63)
  store double %64, ptr %9, align 8
  store i32 1, ptr %11, align 4
  %65 = load i32, ptr %5, align 4
  %66 = icmp slt i32 1, %65
  br i1 %66, label %.lr.ph, label %87

.lr.ph:                                           ; preds = %58
  br label %67

67:                                               ; preds = %.lr.ph, %82
  %68 = load ptr, ptr %6, align 8
  %69 = load i32, ptr %11, align 4
  %70 = load i32, ptr %7, align 4
  %71 = add nsw i32 %69, %70
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds double, ptr %68, i64 %72
  %74 = load double, ptr %73, align 8
  %75 = call double @llvm.fabs.f64(double %74)
  store double %75, ptr %10, align 8
  %76 = load double, ptr %9, align 8
  %77 = fcmp ogt double %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %67
  %79 = load i32, ptr %11, align 4
  store i32 %79, ptr %13, align 4
  %80 = load double, ptr %10, align 8
  store double %80, ptr %9, align 8
  br label %81

81:                                               ; preds = %78, %67
  br label %82

82:                                               ; preds = %81
  %83 = load i32, ptr %11, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, ptr %11, align 4
  %85 = load i32, ptr %5, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %67, label %._crit_edge, !llvm.loop !14

._crit_edge:                                      ; preds = %82
  br label %87

87:                                               ; preds = %._crit_edge, %58
  br label %88

88:                                               ; preds = %87, %57
  br label %89

89:                                               ; preds = %88, %19
  br label %90

90:                                               ; preds = %89, %16
  %91 = load i32, ptr %13, align 4
  ret i32 %91
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
  br i1 %14, label %15, label %58

15:                                               ; preds = %5
  %16 = icmp ne i32 %4, 1
  br i1 %16, label %17, label %38

17:                                               ; preds = %15
  %18 = mul nsw i32 %13, %4
  store i32 %18, ptr %12, align 4
  store i32 0, ptr %11, align 4
  %19 = load i32, ptr %12, align 4
  %20 = icmp slt i32 0, %19
  br i1 %20, label %.lr.ph2, label %37

.lr.ph2:                                          ; preds = %17
  br label %21

21:                                               ; preds = %.lr.ph2, %31
  %22 = load double, ptr %7, align 8
  %23 = load ptr, ptr %8, align 8
  %24 = load i32, ptr %11, align 4
  %25 = load i32, ptr %9, align 4
  %26 = add nsw i32 %24, %25
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds double, ptr %23, i64 %27
  %29 = load double, ptr %28, align 8
  %30 = fmul double %29, %22
  store double %30, ptr %28, align 8
  br label %31

31:                                               ; preds = %21
  %32 = load i32, ptr %10, align 4
  %33 = load i32, ptr %11, align 4
  %34 = add nsw i32 %33, %32
  store i32 %34, ptr %11, align 4
  %35 = load i32, ptr %12, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %21, label %._crit_edge3, !llvm.loop !15

._crit_edge3:                                     ; preds = %31
  br label %37

37:                                               ; preds = %._crit_edge3, %17
  br label %57

38:                                               ; preds = %15
  store i32 0, ptr %11, align 4
  %39 = load i32, ptr %6, align 4
  %40 = icmp slt i32 0, %39
  br i1 %40, label %.lr.ph, label %56

.lr.ph:                                           ; preds = %38
  br label %41

41:                                               ; preds = %.lr.ph, %51
  %42 = load double, ptr %7, align 8
  %43 = load ptr, ptr %8, align 8
  %44 = load i32, ptr %11, align 4
  %45 = load i32, ptr %9, align 4
  %46 = add nsw i32 %44, %45
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds double, ptr %43, i64 %47
  %49 = load double, ptr %48, align 8
  %50 = fmul double %49, %42
  store double %50, ptr %48, align 8
  br label %51

51:                                               ; preds = %41
  %52 = load i32, ptr %11, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, ptr %11, align 4
  %54 = load i32, ptr %6, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %41, label %._crit_edge, !llvm.loop !16

._crit_edge:                                      ; preds = %51
  br label %56

56:                                               ; preds = %._crit_edge, %38
  br label %57

57:                                               ; preds = %56, %37
  br label %58

58:                                               ; preds = %57, %5
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
  %27 = icmp ne i32 %26, 1
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  %29 = icmp ne i32 %7, 1
  br i1 %29, label %30, label %76

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
  %45 = load i32, ptr %9, align 4
  %46 = icmp slt i32 0, %45
  br i1 %46, label %.lr.ph2, label %75

.lr.ph2:                                          ; preds = %44
  br label %47

47:                                               ; preds = %.lr.ph2, %70
  %48 = load double, ptr %10, align 8
  %49 = load ptr, ptr %11, align 8
  %50 = load i32, ptr %18, align 4
  %51 = load i32, ptr %12, align 4
  %52 = add nsw i32 %50, %51
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds double, ptr %49, i64 %53
  %55 = load double, ptr %54, align 8
  %56 = load ptr, ptr %14, align 8
  %57 = load i32, ptr %19, align 4
  %58 = load i32, ptr %15, align 4
  %59 = add nsw i32 %57, %58
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds double, ptr %56, i64 %60
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
  br label %70

70:                                               ; preds = %47
  %71 = load i32, ptr %17, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, ptr %17, align 4
  %73 = load i32, ptr %9, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %47, label %._crit_edge3, !llvm.loop !17

._crit_edge3:                                     ; preds = %70
  br label %75

75:                                               ; preds = %._crit_edge3, %44
  br label %102

76:                                               ; preds = %28
  store i32 0, ptr %17, align 4
  %77 = load i32, ptr %9, align 4
  %78 = icmp slt i32 0, %77
  br i1 %78, label %.lr.ph, label %100

.lr.ph:                                           ; preds = %76
  br label %79

79:                                               ; preds = %.lr.ph, %95
  %80 = load double, ptr %10, align 8
  %81 = load ptr, ptr %11, align 8
  %82 = load i32, ptr %17, align 4
  %83 = load i32, ptr %12, align 4
  %84 = add nsw i32 %82, %83
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds double, ptr %81, i64 %85
  %87 = load double, ptr %86, align 8
  %88 = load ptr, ptr %14, align 8
  %89 = load i32, ptr %15, align 4
  %90 = add nsw i32 %82, %89
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds double, ptr %88, i64 %91
  %93 = load double, ptr %92, align 8
  %94 = call double @llvm.fmuladd.f64(double %80, double %87, double %93)
  store double %94, ptr %92, align 8
  br label %95

95:                                               ; preds = %79
  %96 = load i32, ptr %17, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, ptr %17, align 4
  %98 = load i32, ptr %9, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %79, label %._crit_edge, !llvm.loop !18

._crit_edge:                                      ; preds = %95
  br label %100

100:                                              ; preds = %._crit_edge, %76
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
  store i32 0, ptr %6, align 4
  br i1 true, label %.lr.ph2, label %106

.lr.ph2:                                          ; preds = %2
  br label %12

12:                                               ; preds = %.lr.ph2, %102
  %13 = load ptr, ptr %3, align 8
  %14 = load i32, ptr %6, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds ptr, ptr %13, i64 %15
  %17 = load ptr, ptr %16, align 8
  store ptr %17, ptr %8, align 8
  %18 = load i32, ptr %6, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, ptr %9, align 4
  %20 = load i32, ptr %6, align 4
  %21 = sub nsw i32 2000, %20
  %22 = load ptr, ptr %8, align 8
  %23 = call i32 @idamax(i32 noundef %21, ptr noundef %22, i32 noundef %20, i32 noundef 1)
  %24 = load i32, ptr %6, align 4
  %25 = add nsw i32 %23, %24
  store i32 %25, ptr %10, align 4
  %26 = load ptr, ptr %4, align 8
  %27 = load i32, ptr %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, ptr %26, i64 %28
  store i32 %25, ptr %29, align 4
  %30 = load ptr, ptr %8, align 8
  %31 = load i32, ptr %10, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds double, ptr %30, i64 %32
  %34 = load double, ptr %33, align 8
  %35 = fcmp une double %34, 0.000000e+00
  br i1 %35, label %36, label %101

36:                                               ; preds = %12
  %37 = load i32, ptr %6, align 4
  %38 = icmp ne i32 %31, %37
  br i1 %38, label %39, label %53

39:                                               ; preds = %36
  store double %34, ptr %5, align 8
  %40 = load ptr, ptr %8, align 8
  %41 = load i32, ptr %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds double, ptr %40, i64 %42
  %44 = load double, ptr %43, align 8
  %45 = load i32, ptr %10, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds double, ptr %40, i64 %46
  store double %44, ptr %47, align 8
  %48 = load double, ptr %5, align 8
  %49 = load ptr, ptr %8, align 8
  %50 = load i32, ptr %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds double, ptr %49, i64 %51
  store double %48, ptr %52, align 8
  br label %53

53:                                               ; preds = %39, %36
  %54 = load ptr, ptr %8, align 8
  %55 = load i32, ptr %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds double, ptr %54, i64 %56
  %58 = load double, ptr %57, align 8
  %59 = fdiv double -1.000000e+00, %58
  store double %59, ptr %5, align 8
  %60 = load i32, ptr %9, align 4
  %61 = sub nsw i32 2000, %60
  %62 = load ptr, ptr %8, align 8
  call void @dscal(i32 noundef %61, double noundef %59, ptr noundef %62, i32 noundef %60, i32 noundef 1)
  %63 = load i32, ptr %9, align 4
  store i32 %63, ptr %7, align 4
  %64 = icmp slt i32 %63, 2000
  br i1 %64, label %.lr.ph, label %100

.lr.ph:                                           ; preds = %53
  br label %65

65:                                               ; preds = %.lr.ph, %96
  %66 = load ptr, ptr %3, align 8
  %67 = load i32, ptr %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds ptr, ptr %66, i64 %68
  %70 = load ptr, ptr %69, align 8
  store ptr %70, ptr %11, align 8
  %71 = load i32, ptr %10, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds double, ptr %70, i64 %72
  %74 = load double, ptr %73, align 8
  store double %74, ptr %5, align 8
  %75 = load i32, ptr %10, align 4
  %76 = load i32, ptr %6, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %90

78:                                               ; preds = %65
  %79 = load ptr, ptr %11, align 8
  %80 = sext i32 %76 to i64
  %81 = getelementptr inbounds double, ptr %79, i64 %80
  %82 = load double, ptr %81, align 8
  %83 = sext i32 %75 to i64
  %84 = getelementptr inbounds double, ptr %79, i64 %83
  store double %82, ptr %84, align 8
  %85 = load double, ptr %5, align 8
  %86 = load ptr, ptr %11, align 8
  %87 = load i32, ptr %6, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds double, ptr %86, i64 %88
  store double %85, ptr %89, align 8
  br label %90

90:                                               ; preds = %78, %65
  %91 = load i32, ptr %9, align 4
  %92 = sub nsw i32 2000, %91
  %93 = load double, ptr %5, align 8
  %94 = load ptr, ptr %8, align 8
  %95 = load ptr, ptr %11, align 8
  call void @daxpy(i32 noundef %92, double noundef %93, ptr noundef %94, i32 noundef %91, i32 noundef 1, ptr noundef %95, i32 noundef %91, i32 noundef 1)
  br label %96

96:                                               ; preds = %90
  %97 = load i32, ptr %7, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, ptr %7, align 4
  %99 = icmp slt i32 %98, 2000
  br i1 %99, label %65, label %._crit_edge, !llvm.loop !19

._crit_edge:                                      ; preds = %96
  br label %100

100:                                              ; preds = %._crit_edge, %53
  br label %101

101:                                              ; preds = %100, %12
  br label %102

102:                                              ; preds = %101
  %103 = load i32, ptr %6, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, ptr %6, align 4
  %105 = icmp slt i32 %104, 1999
  br i1 %105, label %12, label %._crit_edge3, !llvm.loop !20

._crit_edge3:                                     ; preds = %102
  br label %106

106:                                              ; preds = %._crit_edge3, %2
  %107 = load ptr, ptr %4, align 8
  %108 = getelementptr inbounds i32, ptr %107, i64 1999
  store i32 1999, ptr %108, align 4
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
  br i1 true, label %.lr.ph, label %52

.lr.ph:                                           ; preds = %3
  br label %12

12:                                               ; preds = %.lr.ph, %48
  %13 = load ptr, ptr %5, align 8
  %14 = load i32, ptr %8, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, ptr %13, i64 %15
  %17 = load i32, ptr %16, align 4
  store i32 %17, ptr %10, align 4
  %18 = load ptr, ptr %6, align 8
  %19 = sext i32 %17 to i64
  %20 = getelementptr inbounds double, ptr %18, i64 %19
  %21 = load double, ptr %20, align 8
  store double %21, ptr %7, align 8
  %22 = load i32, ptr %10, align 4
  %23 = load i32, ptr %8, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %37

25:                                               ; preds = %12
  %26 = load ptr, ptr %6, align 8
  %27 = sext i32 %23 to i64
  %28 = getelementptr inbounds double, ptr %26, i64 %27
  %29 = load double, ptr %28, align 8
  %30 = sext i32 %22 to i64
  %31 = getelementptr inbounds double, ptr %26, i64 %30
  store double %29, ptr %31, align 8
  %32 = load double, ptr %7, align 8
  %33 = load ptr, ptr %6, align 8
  %34 = load i32, ptr %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds double, ptr %33, i64 %35
  store double %32, ptr %36, align 8
  br label %37

37:                                               ; preds = %25, %12
  %38 = load i32, ptr %8, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, ptr %11, align 4
  %40 = sub nsw i32 2000, %39
  %41 = load double, ptr %7, align 8
  %42 = load ptr, ptr %4, align 8
  %43 = load i32, ptr %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds ptr, ptr %42, i64 %44
  %46 = load ptr, ptr %45, align 8
  %47 = load ptr, ptr %6, align 8
  call void @daxpy(i32 noundef %40, double noundef %41, ptr noundef %46, i32 noundef %39, i32 noundef 1, ptr noundef %47, i32 noundef %39, i32 noundef 1)
  br label %48

48:                                               ; preds = %37
  %49 = load i32, ptr %8, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, ptr %8, align 4
  %51 = icmp slt i32 %50, 1999
  br i1 %51, label %12, label %._crit_edge, !llvm.loop !21

._crit_edge:                                      ; preds = %48
  br label %52

52:                                               ; preds = %._crit_edge, %3
  store i32 0, ptr %9, align 4
  br i1 true, label %.lr.ph2, label %83

.lr.ph2:                                          ; preds = %52
  br label %53

53:                                               ; preds = %.lr.ph2, %79
  %54 = load i32, ptr %9, align 4
  %55 = add nsw i32 %54, 1
  %56 = sub nsw i32 2000, %55
  store i32 %56, ptr %8, align 4
  %57 = load ptr, ptr %4, align 8
  %58 = sext i32 %56 to i64
  %59 = getelementptr inbounds ptr, ptr %57, i64 %58
  %60 = load ptr, ptr %59, align 8
  %61 = getelementptr inbounds double, ptr %60, i64 %58
  %62 = load double, ptr %61, align 8
  %63 = load ptr, ptr %6, align 8
  %64 = getelementptr inbounds double, ptr %63, i64 %58
  %65 = load double, ptr %64, align 8
  %66 = fdiv double %65, %62
  store double %66, ptr %64, align 8
  %67 = load ptr, ptr %6, align 8
  %68 = load i32, ptr %8, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds double, ptr %67, i64 %69
  %71 = load double, ptr %70, align 8
  %72 = fneg double %71
  store double %72, ptr %7, align 8
  %73 = load i32, ptr %8, align 4
  %74 = load ptr, ptr %4, align 8
  %75 = sext i32 %73 to i64
  %76 = getelementptr inbounds ptr, ptr %74, i64 %75
  %77 = load ptr, ptr %76, align 8
  %78 = load ptr, ptr %6, align 8
  call void @daxpy(i32 noundef %73, double noundef %72, ptr noundef %77, i32 noundef 0, i32 noundef 1, ptr noundef %78, i32 noundef 0, i32 noundef 1)
  br label %79

79:                                               ; preds = %53
  %80 = load i32, ptr %9, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, ptr %9, align 4
  %82 = icmp slt i32 %81, 2000
  br i1 %82, label %53, label %._crit_edge3, !llvm.loop !22

._crit_edge3:                                     ; preds = %79
  br label %83

83:                                               ; preds = %._crit_edge3, %52
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
  br i1 %15, label %16, label %33

16:                                               ; preds = %2
  store i32 1, ptr %6, align 4
  %17 = load i32, ptr %4, align 4
  %18 = icmp slt i32 1, %17
  br i1 %18, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %16
  br label %19

19:                                               ; preds = %.lr.ph, %27
  %20 = load ptr, ptr %5, align 8
  %21 = getelementptr inbounds ptr, ptr %20, i64 1
  %22 = load ptr, ptr %21, align 8
  %23 = call i32 @strcmp(ptr noundef %22, ptr noundef @.str) #5
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %19
  store i8 1, ptr %7, align 1
  br label %32

26:                                               ; preds = %19
  br label %27

27:                                               ; preds = %26
  %28 = load i32, ptr %6, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, ptr %6, align 4
  %30 = load i32, ptr %4, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %19, label %..loopexit_crit_edge, !llvm.loop !23

..loopexit_crit_edge:                             ; preds = %27
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %16
  br label %32

32:                                               ; preds = %.loopexit, %25
  br label %33

33:                                               ; preds = %32, %2
  %34 = call ptr @malloc(i64 noundef 16000) #6
  store ptr %34, ptr %8, align 8
  store i32 0, ptr %6, align 4
  br i1 true, label %.lr.ph1, label %45

.lr.ph1:                                          ; preds = %33
  br label %35

35:                                               ; preds = %.lr.ph1, %41
  %36 = call ptr @malloc(i64 noundef 16008) #6
  %37 = load ptr, ptr %8, align 8
  %38 = load i32, ptr %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds ptr, ptr %37, i64 %39
  store ptr %36, ptr %40, align 8
  br label %41

41:                                               ; preds = %35
  %42 = load i32, ptr %6, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, ptr %6, align 4
  %44 = icmp slt i32 %43, 2000
  br i1 %44, label %35, label %._crit_edge, !llvm.loop !24

._crit_edge:                                      ; preds = %41
  br label %45

45:                                               ; preds = %._crit_edge, %33
  %46 = call ptr @malloc(i64 noundef 16000) #6
  store ptr %46, ptr %9, align 8
  %47 = call ptr @malloc(i64 noundef 16000) #6
  store ptr %47, ptr %10, align 8
  %48 = call ptr @malloc(i64 noundef 8000) #6
  store ptr %48, ptr %11, align 8
  store double f0x41F3E5E475555555, ptr %12, align 8
  %49 = load ptr, ptr %8, align 8
  %50 = load ptr, ptr %9, align 8
  call void @matgen(ptr noundef %49, ptr noundef %50)
  %51 = load ptr, ptr %8, align 8
  %52 = load ptr, ptr %11, align 8
  call void @dgefa(ptr noundef %51, ptr noundef %52)
  %53 = load ptr, ptr %8, align 8
  %54 = load ptr, ptr %11, align 8
  %55 = load ptr, ptr %9, align 8
  call void @dgesl(ptr noundef %53, ptr noundef %54, ptr noundef %55)
  store double 0.000000e+00, ptr %13, align 8
  %56 = load ptr, ptr %11, align 8
  call void @free(ptr noundef %56)
  %57 = load ptr, ptr %10, align 8
  call void @free(ptr noundef %57)
  %58 = load ptr, ptr %9, align 8
  call void @free(ptr noundef %58)
  store i32 0, ptr %6, align 4
  br i1 true, label %.lr.ph3, label %69

.lr.ph3:                                          ; preds = %45
  br label %59

59:                                               ; preds = %.lr.ph3, %65
  %60 = load ptr, ptr %8, align 8
  %61 = load i32, ptr %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds ptr, ptr %60, i64 %62
  %64 = load ptr, ptr %63, align 8
  call void @free(ptr noundef %64)
  br label %65

65:                                               ; preds = %59
  %66 = load i32, ptr %6, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, ptr %6, align 4
  %68 = icmp slt i32 %67, 2000
  br i1 %68, label %59, label %._crit_edge4, !llvm.loop !25

._crit_edge4:                                     ; preds = %65
  br label %69

69:                                               ; preds = %._crit_edge4, %45
  %70 = load ptr, ptr %8, align 8
  call void @free(ptr noundef %70)
  %71 = load i8, ptr %7, align 1
  %72 = icmp ne i8 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %69
  %74 = call ptr @__acrt_iob_func(i32 noundef 1)
  %75 = load double, ptr %13, align 8
  %76 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %74, ptr noundef @.str.1, double noundef %75) #5
  br label %81

77:                                               ; preds = %69
  %78 = call ptr @__acrt_iob_func(i32 noundef 1)
  %79 = load double, ptr %13, align 8
  %80 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %78, ptr noundef @.str.2, double noundef %79) #5
  br label %81

81:                                               ; preds = %77, %73
  %82 = call ptr @__acrt_iob_func(i32 noundef 1)
  %83 = call i32 @fflush(ptr noundef %82)
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
