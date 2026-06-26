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
  br i1 %8, label %.lr.ph2, label %._crit_edge3

.lr.ph2:                                          ; preds = %2, %._crit_edge
  store i32 0, ptr %6, align 4
  %9 = load i32, ptr %6, align 4
  %10 = icmp slt i32 %9, 2000
  br i1 %10, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph2, %.lr.ph
  %11 = call double @random_double()
  %12 = load ptr, ptr %3, align 8
  %13 = load i32, ptr %6, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds ptr, ptr %12, i64 %14
  %16 = load ptr, ptr %15, align 8
  %17 = load i32, ptr %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds double, ptr %16, i64 %18
  store double %11, ptr %19, align 8
  %20 = load i32, ptr %6, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, ptr %6, align 4
  %22 = load i32, ptr %6, align 4
  %23 = icmp slt i32 %22, 2000
  br i1 %23, label %.lr.ph, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %.lr.ph2, %.lr.ph
  %24 = load i32, ptr %5, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, ptr %5, align 4
  %26 = load i32, ptr %5, align 4
  %27 = icmp slt i32 %26, 2000
  br i1 %27, label %.lr.ph2, label %._crit_edge3, !llvm.loop !9

._crit_edge3:                                     ; preds = %._crit_edge, %2
  store i32 0, ptr %5, align 4
  %28 = load i32, ptr %5, align 4
  %29 = icmp slt i32 %28, 2000
  br i1 %29, label %.lr.ph5, label %._crit_edge6

.lr.ph5:                                          ; preds = %._crit_edge3, %.lr.ph5
  %30 = load ptr, ptr %4, align 8
  %31 = load i32, ptr %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds double, ptr %30, i64 %32
  store double 0.000000e+00, ptr %33, align 8
  %34 = load i32, ptr %5, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, ptr %5, align 4
  %36 = load i32, ptr %5, align 4
  %37 = icmp slt i32 %36, 2000
  br i1 %37, label %.lr.ph5, label %._crit_edge6, !llvm.loop !10

._crit_edge6:                                     ; preds = %.lr.ph5, %._crit_edge3
  store i32 0, ptr %6, align 4
  %38 = load i32, ptr %6, align 4
  %39 = icmp slt i32 %38, 2000
  br i1 %39, label %.lr.ph11, label %._crit_edge12

.lr.ph11:                                         ; preds = %._crit_edge6, %._crit_edge9
  store i32 0, ptr %5, align 4
  %40 = load i32, ptr %5, align 4
  %41 = icmp slt i32 %40, 2000
  br i1 %41, label %.lr.ph8, label %._crit_edge9

.lr.ph8:                                          ; preds = %.lr.ph11, %.lr.ph8
  %42 = load ptr, ptr %3, align 8
  %43 = load i32, ptr %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds ptr, ptr %42, i64 %44
  %46 = load ptr, ptr %45, align 8
  %47 = load i32, ptr %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds double, ptr %46, i64 %48
  %50 = load double, ptr %49, align 8
  %51 = load ptr, ptr %4, align 8
  %52 = load i32, ptr %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds double, ptr %51, i64 %53
  %55 = load double, ptr %54, align 8
  %56 = fadd double %55, %50
  store double %56, ptr %54, align 8
  %57 = load i32, ptr %5, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, ptr %5, align 4
  %59 = load i32, ptr %5, align 4
  %60 = icmp slt i32 %59, 2000
  br i1 %60, label %.lr.ph8, label %._crit_edge9, !llvm.loop !11

._crit_edge9:                                     ; preds = %.lr.ph11, %.lr.ph8
  %61 = load i32, ptr %6, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, ptr %6, align 4
  %63 = load i32, ptr %6, align 4
  %64 = icmp slt i32 %63, 2000
  br i1 %64, label %.lr.ph11, label %._crit_edge12, !llvm.loop !12

._crit_edge12:                                    ; preds = %._crit_edge9, %._crit_edge6
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
  br label %._crit_edge3

17:                                               ; preds = %4
  %18 = load i32, ptr %5, align 4
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i32 0, ptr %13, align 4
  br label %._crit_edge3

21:                                               ; preds = %17
  %22 = load i32, ptr %8, align 4
  %23 = icmp ne i32 %22, 1
  br i1 %23, label %24, label %59

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
  br i1 %35, label %.lr.ph2, label %._crit_edge3

.lr.ph2:                                          ; preds = %24, %50
  %36 = load ptr, ptr %6, align 8
  %37 = load i32, ptr %12, align 4
  %38 = load i32, ptr %7, align 4
  %39 = add nsw i32 %37, %38
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds double, ptr %36, i64 %40
  %42 = load double, ptr %41, align 8
  %43 = call double @llvm.fabs.f64(double %42)
  store double %43, ptr %10, align 8
  %44 = load double, ptr %10, align 8
  %45 = load double, ptr %9, align 8
  %46 = fcmp ogt double %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %.lr.ph2
  %48 = load i32, ptr %11, align 4
  store i32 %48, ptr %13, align 4
  %49 = load double, ptr %10, align 8
  store double %49, ptr %9, align 8
  br label %50

50:                                               ; preds = %47, %.lr.ph2
  %51 = load i32, ptr %8, align 4
  %52 = load i32, ptr %12, align 4
  %53 = add nsw i32 %52, %51
  store i32 %53, ptr %12, align 4
  %54 = load i32, ptr %11, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, ptr %11, align 4
  %56 = load i32, ptr %11, align 4
  %57 = load i32, ptr %5, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %.lr.ph2, label %._crit_edge3, !llvm.loop !13

59:                                               ; preds = %21
  store i32 0, ptr %13, align 4
  %60 = load ptr, ptr %6, align 8
  %61 = load i32, ptr %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds double, ptr %60, i64 %62
  %64 = load double, ptr %63, align 8
  %65 = call double @llvm.fabs.f64(double %64)
  store double %65, ptr %9, align 8
  store i32 1, ptr %11, align 4
  %66 = load i32, ptr %11, align 4
  %67 = load i32, ptr %5, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %.lr.ph, label %._crit_edge3

.lr.ph:                                           ; preds = %59, %83
  %69 = load ptr, ptr %6, align 8
  %70 = load i32, ptr %11, align 4
  %71 = load i32, ptr %7, align 4
  %72 = add nsw i32 %70, %71
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds double, ptr %69, i64 %73
  %75 = load double, ptr %74, align 8
  %76 = call double @llvm.fabs.f64(double %75)
  store double %76, ptr %10, align 8
  %77 = load double, ptr %10, align 8
  %78 = load double, ptr %9, align 8
  %79 = fcmp ogt double %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %.lr.ph
  %81 = load i32, ptr %11, align 4
  store i32 %81, ptr %13, align 4
  %82 = load double, ptr %10, align 8
  store double %82, ptr %9, align 8
  br label %83

83:                                               ; preds = %.lr.ph, %80
  %84 = load i32, ptr %11, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, ptr %11, align 4
  %86 = load i32, ptr %11, align 4
  %87 = load i32, ptr %5, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %.lr.ph, label %._crit_edge3, !llvm.loop !14

._crit_edge3:                                     ; preds = %20, %59, %83, %24, %50, %16
  %89 = load i32, ptr %13, align 4
  ret i32 %89
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
  br i1 %14, label %15, label %._crit_edge3

15:                                               ; preds = %5
  %16 = load i32, ptr %10, align 4
  %17 = icmp ne i32 %16, 1
  br i1 %17, label %18, label %40

18:                                               ; preds = %15
  %19 = load i32, ptr %6, align 4
  %20 = load i32, ptr %10, align 4
  %21 = mul nsw i32 %19, %20
  store i32 %21, ptr %12, align 4
  store i32 0, ptr %11, align 4
  %22 = load i32, ptr %11, align 4
  %23 = load i32, ptr %12, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %.lr.ph2, label %._crit_edge3

.lr.ph2:                                          ; preds = %18, %.lr.ph2
  %25 = load double, ptr %7, align 8
  %26 = load ptr, ptr %8, align 8
  %27 = load i32, ptr %11, align 4
  %28 = load i32, ptr %9, align 4
  %29 = add nsw i32 %27, %28
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds double, ptr %26, i64 %30
  %32 = load double, ptr %31, align 8
  %33 = fmul double %32, %25
  store double %33, ptr %31, align 8
  %34 = load i32, ptr %10, align 4
  %35 = load i32, ptr %11, align 4
  %36 = add nsw i32 %35, %34
  store i32 %36, ptr %11, align 4
  %37 = load i32, ptr %11, align 4
  %38 = load i32, ptr %12, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %.lr.ph2, label %._crit_edge3, !llvm.loop !15

40:                                               ; preds = %15
  store i32 0, ptr %11, align 4
  %41 = load i32, ptr %11, align 4
  %42 = load i32, ptr %6, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %.lr.ph, label %._crit_edge3

.lr.ph:                                           ; preds = %40, %.lr.ph
  %44 = load double, ptr %7, align 8
  %45 = load ptr, ptr %8, align 8
  %46 = load i32, ptr %11, align 4
  %47 = load i32, ptr %9, align 4
  %48 = add nsw i32 %46, %47
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds double, ptr %45, i64 %49
  %51 = load double, ptr %50, align 8
  %52 = fmul double %51, %44
  store double %52, ptr %50, align 8
  %53 = load i32, ptr %11, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, ptr %11, align 4
  %55 = load i32, ptr %11, align 4
  %56 = load i32, ptr %6, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %.lr.ph, label %._crit_edge3, !llvm.loop !16

._crit_edge3:                                     ; preds = %.lr.ph2, %18, %.lr.ph, %40, %5
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
  br i1 %or.cond, label %24, label %._crit_edge3

24:                                               ; preds = %8
  %25 = load i32, ptr %13, align 4
  %26 = icmp ne i32 %25, 1
  %27 = load i32, ptr %16, align 4
  %28 = icmp ne i32 %27, 1
  %or.cond6 = select i1 %26, i1 true, i1 %28
  br i1 %or.cond6, label %29, label %76

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
  br i1 %48, label %.lr.ph2, label %._crit_edge3

.lr.ph2:                                          ; preds = %45, %.lr.ph2
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
  %71 = load i32, ptr %17, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, ptr %17, align 4
  %73 = load i32, ptr %17, align 4
  %74 = load i32, ptr %9, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %.lr.ph2, label %._crit_edge3, !llvm.loop !17

76:                                               ; preds = %24
  store i32 0, ptr %17, align 4
  %77 = load i32, ptr %17, align 4
  %78 = load i32, ptr %9, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %.lr.ph, label %._crit_edge3

.lr.ph:                                           ; preds = %76, %.lr.ph
  %80 = load double, ptr %10, align 8
  %81 = load ptr, ptr %11, align 8
  %82 = load i32, ptr %17, align 4
  %83 = load i32, ptr %12, align 4
  %84 = add nsw i32 %82, %83
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds double, ptr %81, i64 %85
  %87 = load double, ptr %86, align 8
  %88 = load ptr, ptr %14, align 8
  %89 = load i32, ptr %17, align 4
  %90 = load i32, ptr %15, align 4
  %91 = add nsw i32 %89, %90
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds double, ptr %88, i64 %92
  %94 = load double, ptr %93, align 8
  %95 = call double @llvm.fmuladd.f64(double %80, double %87, double %94)
  store double %95, ptr %93, align 8
  %96 = load i32, ptr %17, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, ptr %17, align 4
  %98 = load i32, ptr %17, align 4
  %99 = load i32, ptr %9, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %.lr.ph, label %._crit_edge3, !llvm.loop !18

._crit_edge3:                                     ; preds = %.lr.ph, %76, %45, %.lr.ph2, %8
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
  br i1 %13, label %.lr.ph2, label %._crit_edge3

.lr.ph2:                                          ; preds = %2, %._crit_edge
  %14 = load ptr, ptr %3, align 8
  %15 = load i32, ptr %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds ptr, ptr %14, i64 %16
  %18 = load ptr, ptr %17, align 8
  store ptr %18, ptr %8, align 8
  %19 = load i32, ptr %6, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, ptr %9, align 4
  %21 = load i32, ptr %6, align 4
  %22 = sub nsw i32 2000, %21
  %23 = load ptr, ptr %8, align 8
  %24 = load i32, ptr %6, align 4
  %25 = call i32 @idamax(i32 noundef %22, ptr noundef %23, i32 noundef %24, i32 noundef 1)
  %26 = load i32, ptr %6, align 4
  %27 = add nsw i32 %25, %26
  store i32 %27, ptr %10, align 4
  %28 = load i32, ptr %10, align 4
  %29 = load ptr, ptr %4, align 8
  %30 = load i32, ptr %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, ptr %29, i64 %31
  store i32 %28, ptr %32, align 4
  %33 = load ptr, ptr %8, align 8
  %34 = load i32, ptr %10, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds double, ptr %33, i64 %35
  %37 = load double, ptr %36, align 8
  %38 = fcmp une double %37, 0.000000e+00
  br i1 %38, label %39, label %._crit_edge

39:                                               ; preds = %.lr.ph2
  %40 = load i32, ptr %10, align 4
  %41 = load i32, ptr %6, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %63

43:                                               ; preds = %39
  %44 = load ptr, ptr %8, align 8
  %45 = load i32, ptr %10, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds double, ptr %44, i64 %46
  %48 = load double, ptr %47, align 8
  store double %48, ptr %5, align 8
  %49 = load ptr, ptr %8, align 8
  %50 = load i32, ptr %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds double, ptr %49, i64 %51
  %53 = load double, ptr %52, align 8
  %54 = load ptr, ptr %8, align 8
  %55 = load i32, ptr %10, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds double, ptr %54, i64 %56
  store double %53, ptr %57, align 8
  %58 = load double, ptr %5, align 8
  %59 = load ptr, ptr %8, align 8
  %60 = load i32, ptr %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds double, ptr %59, i64 %61
  store double %58, ptr %62, align 8
  br label %63

63:                                               ; preds = %43, %39
  %64 = load ptr, ptr %8, align 8
  %65 = load i32, ptr %6, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds double, ptr %64, i64 %66
  %68 = load double, ptr %67, align 8
  %69 = fdiv double -1.000000e+00, %68
  store double %69, ptr %5, align 8
  %70 = load i32, ptr %9, align 4
  %71 = sub nsw i32 2000, %70
  %72 = load double, ptr %5, align 8
  %73 = load ptr, ptr %8, align 8
  %74 = load i32, ptr %9, align 4
  call void @dscal(i32 noundef %71, double noundef %72, ptr noundef %73, i32 noundef %74, i32 noundef 1)
  %75 = load i32, ptr %9, align 4
  store i32 %75, ptr %7, align 4
  %76 = load i32, ptr %7, align 4
  %77 = icmp slt i32 %76, 2000
  br i1 %77, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %63, %106
  %78 = load ptr, ptr %3, align 8
  %79 = load i32, ptr %7, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds ptr, ptr %78, i64 %80
  %82 = load ptr, ptr %81, align 8
  store ptr %82, ptr %11, align 8
  %83 = load ptr, ptr %11, align 8
  %84 = load i32, ptr %10, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds double, ptr %83, i64 %85
  %87 = load double, ptr %86, align 8
  store double %87, ptr %5, align 8
  %88 = load i32, ptr %10, align 4
  %89 = load i32, ptr %6, align 4
  %90 = icmp ne i32 %88, %89
  br i1 %90, label %91, label %106

91:                                               ; preds = %.lr.ph
  %92 = load ptr, ptr %11, align 8
  %93 = load i32, ptr %6, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds double, ptr %92, i64 %94
  %96 = load double, ptr %95, align 8
  %97 = load ptr, ptr %11, align 8
  %98 = load i32, ptr %10, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds double, ptr %97, i64 %99
  store double %96, ptr %100, align 8
  %101 = load double, ptr %5, align 8
  %102 = load ptr, ptr %11, align 8
  %103 = load i32, ptr %6, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds double, ptr %102, i64 %104
  store double %101, ptr %105, align 8
  br label %106

106:                                              ; preds = %91, %.lr.ph
  %107 = load i32, ptr %9, align 4
  %108 = sub nsw i32 2000, %107
  %109 = load double, ptr %5, align 8
  %110 = load ptr, ptr %8, align 8
  %111 = load i32, ptr %9, align 4
  %112 = load ptr, ptr %11, align 8
  %113 = load i32, ptr %9, align 4
  call void @daxpy(i32 noundef %108, double noundef %109, ptr noundef %110, i32 noundef %111, i32 noundef 1, ptr noundef %112, i32 noundef %113, i32 noundef 1)
  %114 = load i32, ptr %7, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, ptr %7, align 4
  %116 = load i32, ptr %7, align 4
  %117 = icmp slt i32 %116, 2000
  br i1 %117, label %.lr.ph, label %._crit_edge, !llvm.loop !19

._crit_edge:                                      ; preds = %.lr.ph2, %106, %63
  %118 = load i32, ptr %6, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, ptr %6, align 4
  %120 = load i32, ptr %6, align 4
  %121 = icmp slt i32 %120, 1999
  br i1 %121, label %.lr.ph2, label %._crit_edge3, !llvm.loop !20

._crit_edge3:                                     ; preds = %._crit_edge, %2
  %122 = load ptr, ptr %4, align 8
  %123 = getelementptr inbounds i32, ptr %122, i64 1999
  store i32 1999, ptr %123, align 4
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
  br i1 %13, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %3, %42
  %14 = load ptr, ptr %5, align 8
  %15 = load i32, ptr %8, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, ptr %14, i64 %16
  %18 = load i32, ptr %17, align 4
  store i32 %18, ptr %10, align 4
  %19 = load ptr, ptr %6, align 8
  %20 = load i32, ptr %10, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds double, ptr %19, i64 %21
  %23 = load double, ptr %22, align 8
  store double %23, ptr %7, align 8
  %24 = load i32, ptr %10, align 4
  %25 = load i32, ptr %8, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %42

27:                                               ; preds = %.lr.ph
  %28 = load ptr, ptr %6, align 8
  %29 = load i32, ptr %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds double, ptr %28, i64 %30
  %32 = load double, ptr %31, align 8
  %33 = load ptr, ptr %6, align 8
  %34 = load i32, ptr %10, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds double, ptr %33, i64 %35
  store double %32, ptr %36, align 8
  %37 = load double, ptr %7, align 8
  %38 = load ptr, ptr %6, align 8
  %39 = load i32, ptr %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds double, ptr %38, i64 %40
  store double %37, ptr %41, align 8
  br label %42

42:                                               ; preds = %27, %.lr.ph
  %43 = load i32, ptr %8, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, ptr %11, align 4
  %45 = load i32, ptr %11, align 4
  %46 = sub nsw i32 2000, %45
  %47 = load double, ptr %7, align 8
  %48 = load ptr, ptr %4, align 8
  %49 = load i32, ptr %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds ptr, ptr %48, i64 %50
  %52 = load ptr, ptr %51, align 8
  %53 = load i32, ptr %11, align 4
  %54 = load ptr, ptr %6, align 8
  %55 = load i32, ptr %11, align 4
  call void @daxpy(i32 noundef %46, double noundef %47, ptr noundef %52, i32 noundef %53, i32 noundef 1, ptr noundef %54, i32 noundef %55, i32 noundef 1)
  %56 = load i32, ptr %8, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, ptr %8, align 4
  %58 = load i32, ptr %8, align 4
  %59 = icmp slt i32 %58, 1999
  br i1 %59, label %.lr.ph, label %._crit_edge, !llvm.loop !21

._crit_edge:                                      ; preds = %42, %3
  store i32 0, ptr %9, align 4
  %60 = load i32, ptr %9, align 4
  %61 = icmp slt i32 %60, 2000
  br i1 %61, label %.lr.ph2, label %._crit_edge3

.lr.ph2:                                          ; preds = %._crit_edge, %.lr.ph2
  %62 = load i32, ptr %9, align 4
  %63 = add nsw i32 %62, 1
  %64 = sub nsw i32 2000, %63
  store i32 %64, ptr %8, align 4
  %65 = load ptr, ptr %4, align 8
  %66 = load i32, ptr %8, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds ptr, ptr %65, i64 %67
  %69 = load ptr, ptr %68, align 8
  %70 = load i32, ptr %8, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds double, ptr %69, i64 %71
  %73 = load double, ptr %72, align 8
  %74 = load ptr, ptr %6, align 8
  %75 = load i32, ptr %8, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds double, ptr %74, i64 %76
  %78 = load double, ptr %77, align 8
  %79 = fdiv double %78, %73
  store double %79, ptr %77, align 8
  %80 = load ptr, ptr %6, align 8
  %81 = load i32, ptr %8, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds double, ptr %80, i64 %82
  %84 = load double, ptr %83, align 8
  %85 = fneg double %84
  store double %85, ptr %7, align 8
  %86 = load i32, ptr %8, align 4
  %87 = load double, ptr %7, align 8
  %88 = load ptr, ptr %4, align 8
  %89 = load i32, ptr %8, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds ptr, ptr %88, i64 %90
  %92 = load ptr, ptr %91, align 8
  %93 = load ptr, ptr %6, align 8
  call void @daxpy(i32 noundef %86, double noundef %87, ptr noundef %92, i32 noundef 0, i32 noundef 1, ptr noundef %93, i32 noundef 0, i32 noundef 1)
  %94 = load i32, ptr %9, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, ptr %9, align 4
  %96 = load i32, ptr %9, align 4
  %97 = icmp slt i32 %96, 2000
  br i1 %97, label %.lr.ph2, label %._crit_edge3, !llvm.loop !22

._crit_edge3:                                     ; preds = %.lr.ph2, %._crit_edge
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
  br i1 %15, label %16, label %.loopexit

16:                                               ; preds = %2
  store i32 1, ptr %6, align 4
  %17 = load i32, ptr %6, align 4
  %18 = load i32, ptr %4, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %16, %26
  %20 = load ptr, ptr %5, align 8
  %21 = getelementptr inbounds ptr, ptr %20, i64 1
  %22 = load ptr, ptr %21, align 8
  %23 = call i32 @strcmp(ptr noundef %22, ptr noundef @.str) #5
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %.lr.ph
  store i8 1, ptr %7, align 1
  br label %.loopexit

26:                                               ; preds = %.lr.ph
  %27 = load i32, ptr %6, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, ptr %6, align 4
  %29 = load i32, ptr %6, align 4
  %30 = load i32, ptr %4, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %.lr.ph, label %.loopexit, !llvm.loop !23

.loopexit:                                        ; preds = %25, %26, %16, %2
  %32 = call ptr @malloc(i64 noundef 16000) #6
  store ptr %32, ptr %8, align 8
  store i32 0, ptr %6, align 4
  %33 = load i32, ptr %6, align 4
  %34 = icmp slt i32 %33, 2000
  br i1 %34, label %.lr.ph1, label %._crit_edge

.lr.ph1:                                          ; preds = %.loopexit, %.lr.ph1
  %35 = call ptr @malloc(i64 noundef 16008) #6
  %36 = load ptr, ptr %8, align 8
  %37 = load i32, ptr %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds ptr, ptr %36, i64 %38
  store ptr %35, ptr %39, align 8
  %40 = load i32, ptr %6, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, ptr %6, align 4
  %42 = load i32, ptr %6, align 4
  %43 = icmp slt i32 %42, 2000
  br i1 %43, label %.lr.ph1, label %._crit_edge, !llvm.loop !24

._crit_edge:                                      ; preds = %.lr.ph1, %.loopexit
  %44 = call ptr @malloc(i64 noundef 16000) #6
  store ptr %44, ptr %9, align 8
  %45 = call ptr @malloc(i64 noundef 16000) #6
  store ptr %45, ptr %10, align 8
  %46 = call ptr @malloc(i64 noundef 8000) #6
  store ptr %46, ptr %11, align 8
  store double f0x41F3E5E475555555, ptr %12, align 8
  %47 = load ptr, ptr %8, align 8
  %48 = load ptr, ptr %9, align 8
  call void @matgen(ptr noundef %47, ptr noundef %48)
  %49 = load ptr, ptr %8, align 8
  %50 = load ptr, ptr %11, align 8
  call void @dgefa(ptr noundef %49, ptr noundef %50)
  %51 = load ptr, ptr %8, align 8
  %52 = load ptr, ptr %11, align 8
  %53 = load ptr, ptr %9, align 8
  call void @dgesl(ptr noundef %51, ptr noundef %52, ptr noundef %53)
  store double 0.000000e+00, ptr %13, align 8
  %54 = load ptr, ptr %11, align 8
  call void @free(ptr noundef %54)
  %55 = load ptr, ptr %10, align 8
  call void @free(ptr noundef %55)
  %56 = load ptr, ptr %9, align 8
  call void @free(ptr noundef %56)
  store i32 0, ptr %6, align 4
  %57 = load i32, ptr %6, align 4
  %58 = icmp slt i32 %57, 2000
  br i1 %58, label %.lr.ph3, label %._crit_edge4

.lr.ph3:                                          ; preds = %._crit_edge, %.lr.ph3
  %59 = load ptr, ptr %8, align 8
  %60 = load i32, ptr %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds ptr, ptr %59, i64 %61
  %63 = load ptr, ptr %62, align 8
  call void @free(ptr noundef %63)
  %64 = load i32, ptr %6, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, ptr %6, align 4
  %66 = load i32, ptr %6, align 4
  %67 = icmp slt i32 %66, 2000
  br i1 %67, label %.lr.ph3, label %._crit_edge4, !llvm.loop !25

._crit_edge4:                                     ; preds = %.lr.ph3, %._crit_edge
  %68 = load ptr, ptr %8, align 8
  call void @free(ptr noundef %68)
  %69 = load i8, ptr %7, align 1
  %70 = icmp ne i8 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %._crit_edge4
  %72 = call ptr @__acrt_iob_func(i32 noundef 1)
  %73 = load double, ptr %13, align 8
  %74 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %72, ptr noundef @.str.1, double noundef %73) #5
  br label %79

75:                                               ; preds = %._crit_edge4
  %76 = call ptr @__acrt_iob_func(i32 noundef 1)
  %77 = load double, ptr %13, align 8
  %78 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %76, ptr noundef @.str.2, double noundef %77) #5
  br label %79

79:                                               ; preds = %75, %71
  %80 = call ptr @__acrt_iob_func(i32 noundef 1)
  %81 = call i32 @fflush(ptr noundef %80)
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
