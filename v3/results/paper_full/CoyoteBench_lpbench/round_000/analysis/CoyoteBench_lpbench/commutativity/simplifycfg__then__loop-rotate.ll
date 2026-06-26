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
  br i1 %8, label %.lr.ph2, label %31

.lr.ph2:                                          ; preds = %2
  br label %9

9:                                                ; preds = %.lr.ph2, %26
  store i32 0, ptr %6, align 4
  %10 = load i32, ptr %6, align 4
  %11 = icmp slt i32 %10, 2000
  br i1 %11, label %.lr.ph, label %26

.lr.ph:                                           ; preds = %9
  br label %12

12:                                               ; preds = %.lr.ph, %12
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
  %22 = load i32, ptr %6, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, ptr %6, align 4
  %24 = load i32, ptr %6, align 4
  %25 = icmp slt i32 %24, 2000
  br i1 %25, label %12, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %12
  br label %26

26:                                               ; preds = %._crit_edge, %9
  %27 = load i32, ptr %5, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, ptr %5, align 4
  %29 = load i32, ptr %5, align 4
  %30 = icmp slt i32 %29, 2000
  br i1 %30, label %9, label %._crit_edge3, !llvm.loop !9

._crit_edge3:                                     ; preds = %26
  br label %31

31:                                               ; preds = %._crit_edge3, %2
  store i32 0, ptr %5, align 4
  %32 = load i32, ptr %5, align 4
  %33 = icmp slt i32 %32, 2000
  br i1 %33, label %.lr.ph5, label %43

.lr.ph5:                                          ; preds = %31
  br label %34

34:                                               ; preds = %.lr.ph5, %34
  %35 = load ptr, ptr %4, align 8
  %36 = load i32, ptr %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds double, ptr %35, i64 %37
  store double 0.000000e+00, ptr %38, align 8
  %39 = load i32, ptr %5, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, ptr %5, align 4
  %41 = load i32, ptr %5, align 4
  %42 = icmp slt i32 %41, 2000
  br i1 %42, label %34, label %._crit_edge6, !llvm.loop !10

._crit_edge6:                                     ; preds = %34
  br label %43

43:                                               ; preds = %._crit_edge6, %31
  store i32 0, ptr %6, align 4
  %44 = load i32, ptr %6, align 4
  %45 = icmp slt i32 %44, 2000
  br i1 %45, label %.lr.ph11, label %74

.lr.ph11:                                         ; preds = %43
  br label %46

46:                                               ; preds = %.lr.ph11, %69
  store i32 0, ptr %5, align 4
  %47 = load i32, ptr %5, align 4
  %48 = icmp slt i32 %47, 2000
  br i1 %48, label %.lr.ph8, label %69

.lr.ph8:                                          ; preds = %46
  br label %49

49:                                               ; preds = %.lr.ph8, %49
  %50 = load ptr, ptr %3, align 8
  %51 = load i32, ptr %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds ptr, ptr %50, i64 %52
  %54 = load ptr, ptr %53, align 8
  %55 = load i32, ptr %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds double, ptr %54, i64 %56
  %58 = load double, ptr %57, align 8
  %59 = load ptr, ptr %4, align 8
  %60 = load i32, ptr %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds double, ptr %59, i64 %61
  %63 = load double, ptr %62, align 8
  %64 = fadd double %63, %58
  store double %64, ptr %62, align 8
  %65 = load i32, ptr %5, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, ptr %5, align 4
  %67 = load i32, ptr %5, align 4
  %68 = icmp slt i32 %67, 2000
  br i1 %68, label %49, label %._crit_edge9, !llvm.loop !11

._crit_edge9:                                     ; preds = %49
  br label %69

69:                                               ; preds = %._crit_edge9, %46
  %70 = load i32, ptr %6, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, ptr %6, align 4
  %72 = load i32, ptr %6, align 4
  %73 = icmp slt i32 %72, 2000
  br i1 %73, label %46, label %._crit_edge12, !llvm.loop !12

._crit_edge12:                                    ; preds = %69
  br label %74

74:                                               ; preds = %._crit_edge12, %43
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
  br label %91

17:                                               ; preds = %4
  %18 = load i32, ptr %5, align 4
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i32 0, ptr %13, align 4
  br label %91

21:                                               ; preds = %17
  %22 = load i32, ptr %8, align 4
  %23 = icmp ne i32 %22, 1
  br i1 %23, label %24, label %60

24:                                               ; preds = %21
  %25 = load ptr, ptr %6, align 8
  %26 = load i32, ptr %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds double, ptr %25, i64 %27
  %29 = load double, ptr %28, align 8
  %30 = call double @llvm.fabs.f64(double %29)
  store double %30, ptr %9, align 8
  %31 = load i32, ptr %8, align 4
  %32 = add nsw i32 1, %31
  store i32 %32, ptr %12, align 4
  store i32 1, ptr %11, align 4
  %33 = load i32, ptr %11, align 4
  %34 = load i32, ptr %5, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %.lr.ph2, label %.loopexit

.lr.ph2:                                          ; preds = %24
  br label %36

36:                                               ; preds = %.lr.ph2, %51
  %37 = load ptr, ptr %6, align 8
  %38 = load i32, ptr %12, align 4
  %39 = load i32, ptr %7, align 4
  %40 = add nsw i32 %38, %39
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
  %55 = load i32, ptr %11, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, ptr %11, align 4
  %57 = load i32, ptr %11, align 4
  %58 = load i32, ptr %5, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %36, label %..loopexit_crit_edge, !llvm.loop !13

60:                                               ; preds = %21
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
  br i1 %69, label %.lr.ph, label %.loopexit1

.lr.ph:                                           ; preds = %60
  br label %70

70:                                               ; preds = %.lr.ph, %85
  %71 = load ptr, ptr %6, align 8
  %72 = load i32, ptr %11, align 4
  %73 = load i32, ptr %7, align 4
  %74 = add nsw i32 %72, %73
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds double, ptr %71, i64 %75
  %77 = load double, ptr %76, align 8
  %78 = call double @llvm.fabs.f64(double %77)
  store double %78, ptr %10, align 8
  %79 = load double, ptr %10, align 8
  %80 = load double, ptr %9, align 8
  %81 = fcmp ogt double %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %70
  %83 = load i32, ptr %11, align 4
  store i32 %83, ptr %13, align 4
  %84 = load double, ptr %10, align 8
  store double %84, ptr %9, align 8
  br label %85

85:                                               ; preds = %70, %82
  %86 = load i32, ptr %11, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, ptr %11, align 4
  %88 = load i32, ptr %11, align 4
  %89 = load i32, ptr %5, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %70, label %..loopexit1_crit_edge, !llvm.loop !14

..loopexit_crit_edge:                             ; preds = %51
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %24
  br label %91

..loopexit1_crit_edge:                            ; preds = %85
  br label %.loopexit1

.loopexit1:                                       ; preds = %..loopexit1_crit_edge, %60
  br label %91

91:                                               ; preds = %.loopexit1, %.loopexit, %20, %16
  %92 = load i32, ptr %13, align 4
  ret i32 %92
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
  br i1 %14, label %15, label %60

15:                                               ; preds = %5
  %16 = load i32, ptr %10, align 4
  %17 = icmp ne i32 %16, 1
  br i1 %17, label %18, label %41

18:                                               ; preds = %15
  %19 = load i32, ptr %6, align 4
  %20 = load i32, ptr %10, align 4
  %21 = mul nsw i32 %19, %20
  store i32 %21, ptr %12, align 4
  store i32 0, ptr %11, align 4
  %22 = load i32, ptr %11, align 4
  %23 = load i32, ptr %12, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %.lr.ph2, label %.loopexit

.lr.ph2:                                          ; preds = %18
  br label %25

25:                                               ; preds = %.lr.ph2, %25
  %26 = load double, ptr %7, align 8
  %27 = load ptr, ptr %8, align 8
  %28 = load i32, ptr %11, align 4
  %29 = load i32, ptr %9, align 4
  %30 = add nsw i32 %28, %29
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds double, ptr %27, i64 %31
  %33 = load double, ptr %32, align 8
  %34 = fmul double %33, %26
  store double %34, ptr %32, align 8
  %35 = load i32, ptr %10, align 4
  %36 = load i32, ptr %11, align 4
  %37 = add nsw i32 %36, %35
  store i32 %37, ptr %11, align 4
  %38 = load i32, ptr %11, align 4
  %39 = load i32, ptr %12, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %25, label %..loopexit_crit_edge, !llvm.loop !15

41:                                               ; preds = %15
  store i32 0, ptr %11, align 4
  %42 = load i32, ptr %11, align 4
  %43 = load i32, ptr %6, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %.lr.ph, label %.loopexit1

.lr.ph:                                           ; preds = %41
  br label %45

45:                                               ; preds = %.lr.ph, %45
  %46 = load double, ptr %7, align 8
  %47 = load ptr, ptr %8, align 8
  %48 = load i32, ptr %11, align 4
  %49 = load i32, ptr %9, align 4
  %50 = add nsw i32 %48, %49
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds double, ptr %47, i64 %51
  %53 = load double, ptr %52, align 8
  %54 = fmul double %53, %46
  store double %54, ptr %52, align 8
  %55 = load i32, ptr %11, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, ptr %11, align 4
  %57 = load i32, ptr %11, align 4
  %58 = load i32, ptr %6, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %45, label %..loopexit1_crit_edge, !llvm.loop !16

..loopexit_crit_edge:                             ; preds = %25
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %18
  br label %60

..loopexit1_crit_edge:                            ; preds = %45
  br label %.loopexit1

.loopexit1:                                       ; preds = %..loopexit1_crit_edge, %41
  br label %60

60:                                               ; preds = %.loopexit1, %.loopexit, %5
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
  br i1 %or.cond, label %24, label %103

24:                                               ; preds = %8
  %25 = load i32, ptr %13, align 4
  %26 = icmp ne i32 %25, 1
  %27 = load i32, ptr %16, align 4
  %28 = icmp ne i32 %27, 1
  %or.cond3 = select i1 %26, i1 true, i1 %28
  br i1 %or.cond3, label %29, label %77

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
  store i32 0, ptr %17, align 4
  %46 = load i32, ptr %17, align 4
  %47 = load i32, ptr %9, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %.lr.ph5, label %.loopexit

.lr.ph5:                                          ; preds = %45
  br label %49

49:                                               ; preds = %.lr.ph5, %49
  %50 = load double, ptr %10, align 8
  %51 = load ptr, ptr %11, align 8
  %52 = load i32, ptr %18, align 4
  %53 = load i32, ptr %12, align 4
  %54 = add nsw i32 %52, %53
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds double, ptr %51, i64 %55
  %57 = load double, ptr %56, align 8
  %58 = load ptr, ptr %14, align 8
  %59 = load i32, ptr %19, align 4
  %60 = load i32, ptr %15, align 4
  %61 = add nsw i32 %59, %60
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds double, ptr %58, i64 %62
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
  store i32 %73, ptr %17, align 4
  %74 = load i32, ptr %17, align 4
  %75 = load i32, ptr %9, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %49, label %..loopexit_crit_edge, !llvm.loop !17

77:                                               ; preds = %24
  store i32 0, ptr %17, align 4
  %78 = load i32, ptr %17, align 4
  %79 = load i32, ptr %9, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %.lr.ph, label %.loopexit4

.lr.ph:                                           ; preds = %77
  br label %81

81:                                               ; preds = %.lr.ph, %81
  %82 = load double, ptr %10, align 8
  %83 = load ptr, ptr %11, align 8
  %84 = load i32, ptr %17, align 4
  %85 = load i32, ptr %12, align 4
  %86 = add nsw i32 %84, %85
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds double, ptr %83, i64 %87
  %89 = load double, ptr %88, align 8
  %90 = load ptr, ptr %14, align 8
  %91 = load i32, ptr %17, align 4
  %92 = load i32, ptr %15, align 4
  %93 = add nsw i32 %91, %92
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds double, ptr %90, i64 %94
  %96 = load double, ptr %95, align 8
  %97 = call double @llvm.fmuladd.f64(double %82, double %89, double %96)
  store double %97, ptr %95, align 8
  %98 = load i32, ptr %17, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, ptr %17, align 4
  %100 = load i32, ptr %17, align 4
  %101 = load i32, ptr %9, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %81, label %..loopexit4_crit_edge, !llvm.loop !18

..loopexit_crit_edge:                             ; preds = %49
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %45
  br label %103

..loopexit4_crit_edge:                            ; preds = %81
  br label %.loopexit4

.loopexit4:                                       ; preds = %..loopexit4_crit_edge, %77
  br label %103

103:                                              ; preds = %.loopexit4, %.loopexit, %8
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
  br i1 %13, label %.lr.ph1, label %125

.lr.ph1:                                          ; preds = %2
  br label %14

14:                                               ; preds = %.lr.ph1, %120
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
  %28 = add nsw i32 %26, %27
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
  br i1 %39, label %40, label %120

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
  br i1 %78, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %64
  br label %79

79:                                               ; preds = %.lr.ph, %108
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
  %116 = load i32, ptr %7, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, ptr %7, align 4
  %118 = load i32, ptr %7, align 4
  %119 = icmp slt i32 %118, 2000
  br i1 %119, label %79, label %..loopexit_crit_edge, !llvm.loop !19

..loopexit_crit_edge:                             ; preds = %108
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %64
  br label %120

120:                                              ; preds = %.loopexit, %14
  %121 = load i32, ptr %6, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, ptr %6, align 4
  %123 = load i32, ptr %6, align 4
  %124 = icmp slt i32 %123, 1999
  br i1 %124, label %14, label %._crit_edge, !llvm.loop !20

._crit_edge:                                      ; preds = %120
  br label %125

125:                                              ; preds = %._crit_edge, %2
  %126 = load ptr, ptr %4, align 8
  %127 = getelementptr inbounds i32, ptr %126, i64 1999
  store i32 1999, ptr %127, align 4
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
  br i1 %13, label %.lr.ph, label %61

.lr.ph:                                           ; preds = %3
  br label %14

14:                                               ; preds = %.lr.ph, %43
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
  %57 = load i32, ptr %8, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, ptr %8, align 4
  %59 = load i32, ptr %8, align 4
  %60 = icmp slt i32 %59, 1999
  br i1 %60, label %14, label %._crit_edge, !llvm.loop !21

._crit_edge:                                      ; preds = %43
  br label %61

61:                                               ; preds = %._crit_edge, %3
  store i32 0, ptr %9, align 4
  %62 = load i32, ptr %9, align 4
  %63 = icmp slt i32 %62, 2000
  br i1 %63, label %.lr.ph2, label %101

.lr.ph2:                                          ; preds = %61
  br label %64

64:                                               ; preds = %.lr.ph2, %64
  %65 = load i32, ptr %9, align 4
  %66 = add nsw i32 %65, 1
  %67 = sub nsw i32 2000, %66
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
  %97 = load i32, ptr %9, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, ptr %9, align 4
  %99 = load i32, ptr %9, align 4
  %100 = icmp slt i32 %99, 2000
  br i1 %100, label %64, label %._crit_edge3, !llvm.loop !22

._crit_edge3:                                     ; preds = %64
  br label %101

101:                                              ; preds = %._crit_edge3, %61
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
  %17 = load i32, ptr %6, align 4
  %18 = load i32, ptr %4, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %16
  br label %20

20:                                               ; preds = %.lr.ph, %27
  %21 = load ptr, ptr %5, align 8
  %22 = getelementptr inbounds ptr, ptr %21, i64 1
  %23 = load ptr, ptr %22, align 8
  %24 = call i32 @strcmp(ptr noundef %23, ptr noundef @.str) #5
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %20
  store i8 1, ptr %7, align 1
  br label %33

27:                                               ; preds = %20
  %28 = load i32, ptr %6, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, ptr %6, align 4
  %30 = load i32, ptr %6, align 4
  %31 = load i32, ptr %4, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %20, label %..loopexit_crit_edge, !llvm.loop !23

..loopexit_crit_edge:                             ; preds = %27
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %16
  br label %33

33:                                               ; preds = %.loopexit, %26, %2
  %34 = call ptr @malloc(i64 noundef 16000) #6
  store ptr %34, ptr %8, align 8
  store i32 0, ptr %6, align 4
  %35 = load i32, ptr %6, align 4
  %36 = icmp slt i32 %35, 2000
  br i1 %36, label %.lr.ph1, label %47

.lr.ph1:                                          ; preds = %33
  br label %37

37:                                               ; preds = %.lr.ph1, %37
  %38 = call ptr @malloc(i64 noundef 16008) #6
  %39 = load ptr, ptr %8, align 8
  %40 = load i32, ptr %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds ptr, ptr %39, i64 %41
  store ptr %38, ptr %42, align 8
  %43 = load i32, ptr %6, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, ptr %6, align 4
  %45 = load i32, ptr %6, align 4
  %46 = icmp slt i32 %45, 2000
  br i1 %46, label %37, label %._crit_edge, !llvm.loop !24

._crit_edge:                                      ; preds = %37
  br label %47

47:                                               ; preds = %._crit_edge, %33
  %48 = call ptr @malloc(i64 noundef 16000) #6
  store ptr %48, ptr %9, align 8
  %49 = call ptr @malloc(i64 noundef 16000) #6
  store ptr %49, ptr %10, align 8
  %50 = call ptr @malloc(i64 noundef 8000) #6
  store ptr %50, ptr %11, align 8
  store double f0x41F3E5E475555555, ptr %12, align 8
  %51 = load ptr, ptr %8, align 8
  %52 = load ptr, ptr %9, align 8
  call void @matgen(ptr noundef %51, ptr noundef %52)
  %53 = load ptr, ptr %8, align 8
  %54 = load ptr, ptr %11, align 8
  call void @dgefa(ptr noundef %53, ptr noundef %54)
  %55 = load ptr, ptr %8, align 8
  %56 = load ptr, ptr %11, align 8
  %57 = load ptr, ptr %9, align 8
  call void @dgesl(ptr noundef %55, ptr noundef %56, ptr noundef %57)
  store double 0.000000e+00, ptr %13, align 8
  %58 = load ptr, ptr %11, align 8
  call void @free(ptr noundef %58)
  %59 = load ptr, ptr %10, align 8
  call void @free(ptr noundef %59)
  %60 = load ptr, ptr %9, align 8
  call void @free(ptr noundef %60)
  store i32 0, ptr %6, align 4
  %61 = load i32, ptr %6, align 4
  %62 = icmp slt i32 %61, 2000
  br i1 %62, label %.lr.ph3, label %73

.lr.ph3:                                          ; preds = %47
  br label %63

63:                                               ; preds = %.lr.ph3, %63
  %64 = load ptr, ptr %8, align 8
  %65 = load i32, ptr %6, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds ptr, ptr %64, i64 %66
  %68 = load ptr, ptr %67, align 8
  call void @free(ptr noundef %68)
  %69 = load i32, ptr %6, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, ptr %6, align 4
  %71 = load i32, ptr %6, align 4
  %72 = icmp slt i32 %71, 2000
  br i1 %72, label %63, label %._crit_edge4, !llvm.loop !25

._crit_edge4:                                     ; preds = %63
  br label %73

73:                                               ; preds = %._crit_edge4, %47
  %74 = load ptr, ptr %8, align 8
  call void @free(ptr noundef %74)
  %75 = load i8, ptr %7, align 1
  %76 = icmp ne i8 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %73
  %78 = call ptr @__acrt_iob_func(i32 noundef 1)
  %79 = load double, ptr %13, align 8
  %80 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %78, ptr noundef @.str.1, double noundef %79) #5
  br label %85

81:                                               ; preds = %73
  %82 = call ptr @__acrt_iob_func(i32 noundef 1)
  %83 = load double, ptr %13, align 8
  %84 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %82, ptr noundef @.str.2, double noundef %83) #5
  br label %85

85:                                               ; preds = %81, %77
  %86 = call ptr @__acrt_iob_func(i32 noundef 1)
  %87 = call i32 @fflush(ptr noundef %86)
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
  %11 = mul nsw i32 16807, %10
  %12 = load i32, ptr %1, align 4
  %13 = mul nsw i32 2836, %12
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
  %23 = fmul double f0x3E00000000200FE1, %22
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
