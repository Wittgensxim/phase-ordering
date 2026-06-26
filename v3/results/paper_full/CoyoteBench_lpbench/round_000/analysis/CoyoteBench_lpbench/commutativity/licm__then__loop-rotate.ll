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
  %7 = load ptr, ptr %3, align 8
  %.promoted1 = load i32, ptr %5, align 4
  %.promoted3 = load i32, ptr %6, align 4
  %8 = icmp slt i32 %.promoted1, 2000
  br i1 %8, label %.lr.ph, label %26

.lr.ph:                                           ; preds = %2
  br label %9

9:                                                ; preds = %.lr.ph, %23
  %10 = phi i32 [ %.promoted1, %.lr.ph ], [ %24, %23 ]
  %11 = sext i32 %10 to i64
  br label %12

12:                                               ; preds = %9, %19
  %13 = phi i32 [ 0, %9 ], [ %20, %19 ]
  %14 = call double @random_double()
  %15 = sext i32 %13 to i64
  %16 = getelementptr inbounds ptr, ptr %7, i64 %15
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds double, ptr %17, i64 %11
  store double %14, ptr %18, align 8
  br label %19

19:                                               ; preds = %12
  %20 = add nsw i32 %13, 1
  %21 = icmp slt i32 %20, 2000
  br i1 %21, label %12, label %22, !llvm.loop !7

22:                                               ; preds = %19
  %.lcssa = phi i32 [ %20, %19 ]
  br label %23

23:                                               ; preds = %22
  %24 = add nsw i32 %10, 1
  %25 = icmp slt i32 %24, 2000
  br i1 %25, label %9, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %23
  %split = phi i32 [ %.lcssa, %23 ]
  %split12 = phi i32 [ %24, %23 ]
  br label %26

26:                                               ; preds = %._crit_edge, %2
  %.lcssa4.lcssa = phi i32 [ %split, %._crit_edge ], [ %.promoted3, %2 ]
  %.lcssa2 = phi i32 [ %split12, %._crit_edge ], [ %.promoted1, %2 ]
  store i32 %.lcssa2, ptr %5, align 4
  store i32 %.lcssa4.lcssa, ptr %6, align 4
  store i32 0, ptr %5, align 4
  %27 = load ptr, ptr %4, align 8
  %.promoted = load i32, ptr %5, align 4
  %28 = icmp slt i32 %.promoted, 2000
  br i1 %28, label %.lr.ph14, label %36

.lr.ph14:                                         ; preds = %26
  br label %29

29:                                               ; preds = %.lr.ph14, %33
  %30 = phi i32 [ %.promoted, %.lr.ph14 ], [ %34, %33 ]
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds double, ptr %27, i64 %31
  store double 0.000000e+00, ptr %32, align 8
  br label %33

33:                                               ; preds = %29
  %34 = add nsw i32 %30, 1
  %35 = icmp slt i32 %34, 2000
  br i1 %35, label %29, label %._crit_edge15, !llvm.loop !10

._crit_edge15:                                    ; preds = %33
  %split16 = phi i32 [ %34, %33 ]
  br label %36

36:                                               ; preds = %._crit_edge15, %26
  %.lcssa5 = phi i32 [ %split16, %._crit_edge15 ], [ %.promoted, %26 ]
  store i32 %.lcssa5, ptr %5, align 4
  store i32 0, ptr %6, align 4
  %37 = load ptr, ptr %3, align 8
  %38 = load ptr, ptr %4, align 8
  %.promoted8 = load i32, ptr %6, align 4
  %.promoted10 = load i32, ptr %5, align 4
  %39 = icmp slt i32 %.promoted8, 2000
  br i1 %39, label %.lr.ph18, label %61

.lr.ph18:                                         ; preds = %36
  br label %40

40:                                               ; preds = %.lr.ph18, %58
  %41 = phi i32 [ %.promoted8, %.lr.ph18 ], [ %59, %58 ]
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds ptr, ptr %37, i64 %42
  br label %44

44:                                               ; preds = %40, %54
  %45 = phi i32 [ 0, %40 ], [ %55, %54 ]
  %46 = load ptr, ptr %43, align 8
  %47 = sext i32 %45 to i64
  %48 = getelementptr inbounds double, ptr %46, i64 %47
  %49 = load double, ptr %48, align 8
  %50 = sext i32 %45 to i64
  %51 = getelementptr inbounds double, ptr %38, i64 %50
  %52 = load double, ptr %51, align 8
  %53 = fadd double %52, %49
  store double %53, ptr %51, align 8
  br label %54

54:                                               ; preds = %44
  %55 = add nsw i32 %45, 1
  %56 = icmp slt i32 %55, 2000
  br i1 %56, label %44, label %57, !llvm.loop !11

57:                                               ; preds = %54
  %.lcssa7 = phi i32 [ %55, %54 ]
  br label %58

58:                                               ; preds = %57
  %59 = add nsw i32 %41, 1
  %60 = icmp slt i32 %59, 2000
  br i1 %60, label %40, label %._crit_edge19, !llvm.loop !12

._crit_edge19:                                    ; preds = %58
  %split20 = phi i32 [ %.lcssa7, %58 ]
  %split21 = phi i32 [ %59, %58 ]
  br label %61

61:                                               ; preds = %._crit_edge19, %36
  %.lcssa711.lcssa = phi i32 [ %split20, %._crit_edge19 ], [ %.promoted10, %36 ]
  %.lcssa9 = phi i32 [ %split21, %._crit_edge19 ], [ %.promoted8, %36 ]
  store i32 %.lcssa9, ptr %6, align 4
  store i32 %.lcssa711.lcssa, ptr %5, align 4
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
  br label %89

17:                                               ; preds = %4
  %18 = load i32, ptr %5, align 4
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i32 0, ptr %13, align 4
  br label %88

21:                                               ; preds = %17
  %22 = load i32, ptr %8, align 4
  %23 = icmp ne i32 %22, 1
  br i1 %23, label %24, label %58

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
  %33 = load i32, ptr %5, align 4
  %34 = load ptr, ptr %6, align 8
  %35 = load i32, ptr %7, align 4
  %36 = load i32, ptr %8, align 4
  %.promoted7 = load i32, ptr %11, align 4
  %.promoted9 = load i32, ptr %12, align 4
  %.promoted11 = load double, ptr %10, align 8
  %.promoted13 = load double, ptr %9, align 8
  %.promoted15 = load i32, ptr %13, align 1
  %37 = icmp slt i32 %.promoted7, %33
  br i1 %37, label %.lr.ph21, label %57

.lr.ph21:                                         ; preds = %24
  br label %38

38:                                               ; preds = %.lr.ph21, %54
  %39 = phi i32 [ %.promoted7, %.lr.ph21 ], [ %55, %54 ]
  %40 = phi i32 [ %.promoted9, %.lr.ph21 ], [ %53, %54 ]
  %41 = phi double [ %.promoted13, %.lr.ph21 ], [ %52, %54 ]
  %42 = phi i32 [ %.promoted15, %.lr.ph21 ], [ %51, %54 ]
  %43 = add nsw i32 %40, %35
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds double, ptr %34, i64 %44
  %46 = load double, ptr %45, align 8
  %47 = call double @llvm.fabs.f64(double %46)
  %48 = fcmp ogt double %47, %41
  br i1 %48, label %49, label %50

49:                                               ; preds = %38
  br label %50

50:                                               ; preds = %49, %38
  %51 = phi i32 [ %39, %49 ], [ %42, %38 ]
  %52 = phi double [ %47, %49 ], [ %41, %38 ]
  %53 = add nsw i32 %40, %36
  br label %54

54:                                               ; preds = %50
  %55 = add nsw i32 %39, 1
  %56 = icmp slt i32 %55, %33
  br i1 %56, label %38, label %._crit_edge22, !llvm.loop !13

._crit_edge22:                                    ; preds = %54
  %split23 = phi i32 [ %51, %54 ]
  %split24 = phi double [ %52, %54 ]
  %split25 = phi double [ %47, %54 ]
  %split26 = phi i32 [ %53, %54 ]
  %split27 = phi i32 [ %55, %54 ]
  br label %57

57:                                               ; preds = %._crit_edge22, %24
  %.lcssa16 = phi i32 [ %split23, %._crit_edge22 ], [ %.promoted15, %24 ]
  %.lcssa14 = phi double [ %split24, %._crit_edge22 ], [ %.promoted13, %24 ]
  %.lcssa12 = phi double [ %split25, %._crit_edge22 ], [ %.promoted11, %24 ]
  %.lcssa10 = phi i32 [ %split26, %._crit_edge22 ], [ %.promoted9, %24 ]
  %.lcssa8 = phi i32 [ %split27, %._crit_edge22 ], [ %.promoted7, %24 ]
  store i32 %.lcssa8, ptr %11, align 4
  store i32 %.lcssa10, ptr %12, align 4
  store double %.lcssa12, ptr %10, align 8
  store double %.lcssa14, ptr %9, align 8
  store i32 %.lcssa16, ptr %13, align 1
  br label %87

58:                                               ; preds = %21
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
  %66 = load ptr, ptr %6, align 8
  %67 = load i32, ptr %7, align 4
  %.promoted = load i32, ptr %11, align 4
  %.promoted1 = load double, ptr %10, align 8
  %.promoted3 = load double, ptr %9, align 8
  %.promoted5 = load i32, ptr %13, align 1
  %68 = icmp slt i32 %.promoted, %65
  br i1 %68, label %.lr.ph, label %86

.lr.ph:                                           ; preds = %58
  br label %69

69:                                               ; preds = %.lr.ph, %83
  %70 = phi i32 [ %.promoted, %.lr.ph ], [ %84, %83 ]
  %71 = phi double [ %.promoted3, %.lr.ph ], [ %82, %83 ]
  %72 = phi i32 [ %.promoted5, %.lr.ph ], [ %81, %83 ]
  %73 = add nsw i32 %70, %67
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds double, ptr %66, i64 %74
  %76 = load double, ptr %75, align 8
  %77 = call double @llvm.fabs.f64(double %76)
  %78 = fcmp ogt double %77, %71
  br i1 %78, label %79, label %80

79:                                               ; preds = %69
  br label %80

80:                                               ; preds = %79, %69
  %81 = phi i32 [ %70, %79 ], [ %72, %69 ]
  %82 = phi double [ %77, %79 ], [ %71, %69 ]
  br label %83

83:                                               ; preds = %80
  %84 = add nsw i32 %70, 1
  %85 = icmp slt i32 %84, %65
  br i1 %85, label %69, label %._crit_edge, !llvm.loop !14

._crit_edge:                                      ; preds = %83
  %split = phi i32 [ %81, %83 ]
  %split17 = phi double [ %82, %83 ]
  %split18 = phi double [ %77, %83 ]
  %split19 = phi i32 [ %84, %83 ]
  br label %86

86:                                               ; preds = %._crit_edge, %58
  %.lcssa6 = phi i32 [ %split, %._crit_edge ], [ %.promoted5, %58 ]
  %.lcssa4 = phi double [ %split17, %._crit_edge ], [ %.promoted3, %58 ]
  %.lcssa2 = phi double [ %split18, %._crit_edge ], [ %.promoted1, %58 ]
  %.lcssa = phi i32 [ %split19, %._crit_edge ], [ %.promoted, %58 ]
  store i32 %.lcssa, ptr %11, align 4
  store double %.lcssa2, ptr %10, align 8
  store double %.lcssa4, ptr %9, align 8
  store i32 %.lcssa6, ptr %13, align 1
  br label %87

87:                                               ; preds = %86, %57
  br label %88

88:                                               ; preds = %87, %20
  br label %89

89:                                               ; preds = %88, %16
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
  %13 = load i32, ptr %6, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %57

15:                                               ; preds = %5
  %16 = load i32, ptr %10, align 4
  %17 = icmp ne i32 %16, 1
  br i1 %17, label %18, label %39

18:                                               ; preds = %15
  %19 = load i32, ptr %6, align 4
  %20 = load i32, ptr %10, align 4
  %21 = mul nsw i32 %19, %20
  store i32 %21, ptr %12, align 4
  store i32 0, ptr %11, align 4
  %22 = load i32, ptr %12, align 4
  %23 = load double, ptr %7, align 8
  %24 = load ptr, ptr %8, align 8
  %25 = load i32, ptr %9, align 4
  %26 = load i32, ptr %10, align 4
  %.promoted1 = load i32, ptr %11, align 4
  %27 = icmp slt i32 %.promoted1, %22
  br i1 %27, label %.lr.ph4, label %38

.lr.ph4:                                          ; preds = %18
  br label %28

28:                                               ; preds = %.lr.ph4, %35
  %29 = phi i32 [ %.promoted1, %.lr.ph4 ], [ %36, %35 ]
  %30 = add nsw i32 %29, %25
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds double, ptr %24, i64 %31
  %33 = load double, ptr %32, align 8
  %34 = fmul double %33, %23
  store double %34, ptr %32, align 8
  br label %35

35:                                               ; preds = %28
  %36 = add nsw i32 %29, %26
  %37 = icmp slt i32 %36, %22
  br i1 %37, label %28, label %._crit_edge5, !llvm.loop !15

._crit_edge5:                                     ; preds = %35
  %split6 = phi i32 [ %36, %35 ]
  br label %38

38:                                               ; preds = %._crit_edge5, %18
  %.lcssa2 = phi i32 [ %split6, %._crit_edge5 ], [ %.promoted1, %18 ]
  store i32 %.lcssa2, ptr %11, align 4
  br label %56

39:                                               ; preds = %15
  store i32 0, ptr %11, align 4
  %40 = load i32, ptr %6, align 4
  %41 = load double, ptr %7, align 8
  %42 = load ptr, ptr %8, align 8
  %43 = load i32, ptr %9, align 4
  %.promoted = load i32, ptr %11, align 4
  %44 = icmp slt i32 %.promoted, %40
  br i1 %44, label %.lr.ph, label %55

.lr.ph:                                           ; preds = %39
  br label %45

45:                                               ; preds = %.lr.ph, %52
  %46 = phi i32 [ %.promoted, %.lr.ph ], [ %53, %52 ]
  %47 = add nsw i32 %46, %43
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds double, ptr %42, i64 %48
  %50 = load double, ptr %49, align 8
  %51 = fmul double %50, %41
  store double %51, ptr %49, align 8
  br label %52

52:                                               ; preds = %45
  %53 = add nsw i32 %46, 1
  %54 = icmp slt i32 %53, %40
  br i1 %54, label %45, label %._crit_edge, !llvm.loop !16

._crit_edge:                                      ; preds = %52
  %split = phi i32 [ %53, %52 ]
  br label %55

55:                                               ; preds = %._crit_edge, %39
  %.lcssa = phi i32 [ %split, %._crit_edge ], [ %.promoted, %39 ]
  store i32 %.lcssa, ptr %11, align 4
  br label %56

56:                                               ; preds = %55, %38
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
  br i1 %21, label %22, label %100

22:                                               ; preds = %8
  %23 = load double, ptr %10, align 8
  %24 = fcmp une double %23, 0.000000e+00
  br i1 %24, label %25, label %100

25:                                               ; preds = %22
  %26 = load i32, ptr %13, align 4
  %27 = icmp ne i32 %26, 1
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load i32, ptr %16, align 4
  %30 = icmp ne i32 %29, 1
  br i1 %30, label %31, label %76

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
  %48 = load i32, ptr %9, align 4
  %49 = load double, ptr %10, align 8
  %50 = load ptr, ptr %11, align 8
  %51 = load i32, ptr %12, align 4
  %52 = load ptr, ptr %14, align 8
  %53 = load i32, ptr %15, align 4
  %54 = load i32, ptr %13, align 4
  %55 = load i32, ptr %16, align 4
  %.promoted1 = load i32, ptr %17, align 4
  %.promoted3 = load i32, ptr %18, align 4
  %.promoted5 = load i32, ptr %19, align 4
  %56 = icmp slt i32 %.promoted1, %48
  br i1 %56, label %.lr.ph8, label %75

.lr.ph8:                                          ; preds = %47
  br label %57

57:                                               ; preds = %.lr.ph8, %72
  %58 = phi i32 [ %.promoted1, %.lr.ph8 ], [ %73, %72 ]
  %59 = phi i32 [ %.promoted3, %.lr.ph8 ], [ %70, %72 ]
  %60 = phi i32 [ %.promoted5, %.lr.ph8 ], [ %71, %72 ]
  %61 = add nsw i32 %59, %51
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds double, ptr %50, i64 %62
  %64 = load double, ptr %63, align 8
  %65 = add nsw i32 %60, %53
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds double, ptr %52, i64 %66
  %68 = load double, ptr %67, align 8
  %69 = call double @llvm.fmuladd.f64(double %49, double %64, double %68)
  store double %69, ptr %67, align 8
  %70 = add nsw i32 %59, %54
  %71 = add nsw i32 %60, %55
  br label %72

72:                                               ; preds = %57
  %73 = add nsw i32 %58, 1
  %74 = icmp slt i32 %73, %48
  br i1 %74, label %57, label %._crit_edge9, !llvm.loop !17

._crit_edge9:                                     ; preds = %72
  %split10 = phi i32 [ %71, %72 ]
  %split11 = phi i32 [ %70, %72 ]
  %split12 = phi i32 [ %73, %72 ]
  br label %75

75:                                               ; preds = %._crit_edge9, %47
  %.lcssa6 = phi i32 [ %split10, %._crit_edge9 ], [ %.promoted5, %47 ]
  %.lcssa4 = phi i32 [ %split11, %._crit_edge9 ], [ %.promoted3, %47 ]
  %.lcssa2 = phi i32 [ %split12, %._crit_edge9 ], [ %.promoted1, %47 ]
  store i32 %.lcssa2, ptr %17, align 4
  store i32 %.lcssa4, ptr %18, align 4
  store i32 %.lcssa6, ptr %19, align 4
  br label %100

76:                                               ; preds = %28
  store i32 0, ptr %17, align 4
  %77 = load i32, ptr %9, align 4
  %78 = load double, ptr %10, align 8
  %79 = load ptr, ptr %11, align 8
  %80 = load i32, ptr %12, align 4
  %81 = load ptr, ptr %14, align 8
  %82 = load i32, ptr %15, align 4
  %.promoted = load i32, ptr %17, align 4
  %83 = icmp slt i32 %.promoted, %77
  br i1 %83, label %.lr.ph, label %98

.lr.ph:                                           ; preds = %76
  br label %84

84:                                               ; preds = %.lr.ph, %95
  %85 = phi i32 [ %.promoted, %.lr.ph ], [ %96, %95 ]
  %86 = add nsw i32 %85, %80
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds double, ptr %79, i64 %87
  %89 = load double, ptr %88, align 8
  %90 = add nsw i32 %85, %82
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds double, ptr %81, i64 %91
  %93 = load double, ptr %92, align 8
  %94 = call double @llvm.fmuladd.f64(double %78, double %89, double %93)
  store double %94, ptr %92, align 8
  br label %95

95:                                               ; preds = %84
  %96 = add nsw i32 %85, 1
  %97 = icmp slt i32 %96, %77
  br i1 %97, label %84, label %._crit_edge, !llvm.loop !18

._crit_edge:                                      ; preds = %95
  %split = phi i32 [ %96, %95 ]
  br label %98

98:                                               ; preds = %._crit_edge, %76
  %.lcssa = phi i32 [ %split, %._crit_edge ], [ %.promoted, %76 ]
  store i32 %.lcssa, ptr %17, align 4
  br label %99

99:                                               ; preds = %98
  br label %100

100:                                              ; preds = %99, %75, %22, %8
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
  %12 = load ptr, ptr %3, align 8
  %13 = load ptr, ptr %4, align 8
  %14 = load ptr, ptr %3, align 8
  %.promoted5 = load i32, ptr %6, align 4
  %.promoted7 = load ptr, ptr %8, align 8
  %.promoted9 = load i32, ptr %9, align 4
  %.promoted11 = load i32, ptr %10, align 4
  %.promoted13 = load double, ptr %5, align 8
  %.promoted16 = load i32, ptr %7, align 4
  %.promoted = load ptr, ptr %11, align 8
  %15 = icmp slt i32 %.promoted5, 1999
  br i1 %15, label %.lr.ph27, label %78

.lr.ph27:                                         ; preds = %2
  br label %16

16:                                               ; preds = %.lr.ph27, %75
  %17 = phi i32 [ %.promoted5, %.lr.ph27 ], [ %76, %75 ]
  %.lcssa41525 = phi double [ %.promoted13, %.lr.ph27 ], [ %.lcssa414, %75 ]
  %.lcssa1824 = phi i32 [ %.promoted16, %.lr.ph27 ], [ %.lcssa17, %75 ]
  %.lcssa22023 = phi ptr [ %.promoted, %.lr.ph27 ], [ %.lcssa219, %75 ]
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds ptr, ptr %12, i64 %18
  %20 = load ptr, ptr %19, align 8
  %21 = add nsw i32 %17, 1
  %22 = sub nsw i32 2000, %17
  %23 = call i32 @idamax(i32 noundef %22, ptr noundef %20, i32 noundef %17, i32 noundef 1)
  %24 = add nsw i32 %23, %17
  %25 = sext i32 %17 to i64
  %26 = getelementptr inbounds i32, ptr %13, i64 %25
  store i32 %24, ptr %26, align 4
  %27 = sext i32 %24 to i64
  %28 = getelementptr inbounds double, ptr %20, i64 %27
  %29 = load double, ptr %28, align 8
  %30 = fcmp une double %29, 0.000000e+00
  br i1 %30, label %31, label %74

31:                                               ; preds = %16
  %32 = icmp ne i32 %24, %17
  br i1 %32, label %33, label %44

33:                                               ; preds = %31
  %34 = sext i32 %24 to i64
  %35 = getelementptr inbounds double, ptr %20, i64 %34
  %36 = load double, ptr %35, align 8
  %37 = sext i32 %17 to i64
  %38 = getelementptr inbounds double, ptr %20, i64 %37
  %39 = load double, ptr %38, align 8
  %40 = sext i32 %24 to i64
  %41 = getelementptr inbounds double, ptr %20, i64 %40
  store double %39, ptr %41, align 8
  %42 = sext i32 %17 to i64
  %43 = getelementptr inbounds double, ptr %20, i64 %42
  store double %36, ptr %43, align 8
  br label %44

44:                                               ; preds = %33, %31
  %45 = sext i32 %17 to i64
  %46 = getelementptr inbounds double, ptr %20, i64 %45
  %47 = load double, ptr %46, align 8
  %48 = fdiv double -1.000000e+00, %47
  %49 = sub nsw i32 2000, %21
  call void @dscal(i32 noundef %49, double noundef %48, ptr noundef %20, i32 noundef %21, i32 noundef 1)
  %50 = sext i32 %24 to i64
  %51 = icmp ne i32 %24, %17
  %52 = sext i32 %17 to i64
  %53 = sext i32 %24 to i64
  %54 = sext i32 %17 to i64
  %55 = sub nsw i32 2000, %21
  %56 = icmp slt i32 %21, 2000
  br i1 %56, label %.lr.ph, label %73

.lr.ph:                                           ; preds = %44
  br label %57

57:                                               ; preds = %.lr.ph, %70
  %58 = phi i32 [ %21, %.lr.ph ], [ %71, %70 ]
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds ptr, ptr %14, i64 %59
  %61 = load ptr, ptr %60, align 8
  %62 = getelementptr inbounds double, ptr %61, i64 %50
  %63 = load double, ptr %62, align 8
  br i1 %51, label %64, label %69

64:                                               ; preds = %57
  %65 = getelementptr inbounds double, ptr %61, i64 %52
  %66 = load double, ptr %65, align 8
  %67 = getelementptr inbounds double, ptr %61, i64 %53
  store double %66, ptr %67, align 8
  %68 = getelementptr inbounds double, ptr %61, i64 %54
  store double %63, ptr %68, align 8
  br label %69

69:                                               ; preds = %64, %57
  call void @daxpy(i32 noundef %55, double noundef %63, ptr noundef %20, i32 noundef %21, i32 noundef 1, ptr noundef %61, i32 noundef %21, i32 noundef 1)
  br label %70

70:                                               ; preds = %69
  %71 = add nsw i32 %58, 1
  %72 = icmp slt i32 %71, 2000
  br i1 %72, label %57, label %._crit_edge, !llvm.loop !19

._crit_edge:                                      ; preds = %70
  %split = phi double [ %63, %70 ]
  %split21 = phi ptr [ %61, %70 ]
  %split22 = phi i32 [ %71, %70 ]
  br label %73

73:                                               ; preds = %._crit_edge, %44
  %.lcssa4 = phi double [ %split, %._crit_edge ], [ %48, %44 ]
  %.lcssa2 = phi ptr [ %split21, %._crit_edge ], [ %.lcssa22023, %44 ]
  %.lcssa = phi i32 [ %split22, %._crit_edge ], [ %21, %44 ]
  br label %74

74:                                               ; preds = %73, %16
  %.lcssa219 = phi ptr [ %.lcssa2, %73 ], [ %.lcssa22023, %16 ]
  %.lcssa17 = phi i32 [ %.lcssa, %73 ], [ %.lcssa1824, %16 ]
  %.lcssa414 = phi double [ %.lcssa4, %73 ], [ %.lcssa41525, %16 ]
  br label %75

75:                                               ; preds = %74
  %76 = add nsw i32 %17, 1
  %77 = icmp slt i32 %76, 1999
  br i1 %77, label %16, label %._crit_edge28, !llvm.loop !20

._crit_edge28:                                    ; preds = %75
  %split29 = phi ptr [ %.lcssa219, %75 ]
  %split30 = phi i32 [ %.lcssa17, %75 ]
  %split31 = phi double [ %.lcssa414, %75 ]
  %split32 = phi i32 [ %24, %75 ]
  %split33 = phi i32 [ %21, %75 ]
  %split34 = phi ptr [ %20, %75 ]
  %split35 = phi i32 [ %76, %75 ]
  br label %78

78:                                               ; preds = %._crit_edge28, %2
  %.lcssa220.lcssa = phi ptr [ %split29, %._crit_edge28 ], [ %.promoted, %2 ]
  %.lcssa18.lcssa = phi i32 [ %split30, %._crit_edge28 ], [ %.promoted16, %2 ]
  %.lcssa415.lcssa = phi double [ %split31, %._crit_edge28 ], [ %.promoted13, %2 ]
  %.lcssa12 = phi i32 [ %split32, %._crit_edge28 ], [ %.promoted11, %2 ]
  %.lcssa10 = phi i32 [ %split33, %._crit_edge28 ], [ %.promoted9, %2 ]
  %.lcssa8 = phi ptr [ %split34, %._crit_edge28 ], [ %.promoted7, %2 ]
  %.lcssa6 = phi i32 [ %split35, %._crit_edge28 ], [ %.promoted5, %2 ]
  store i32 %.lcssa6, ptr %6, align 4
  store ptr %.lcssa8, ptr %8, align 8
  store i32 %.lcssa10, ptr %9, align 4
  store i32 %.lcssa12, ptr %10, align 4
  store double %.lcssa415.lcssa, ptr %5, align 8
  store i32 %.lcssa18.lcssa, ptr %7, align 4
  store ptr %.lcssa220.lcssa, ptr %11, align 8
  %79 = load ptr, ptr %4, align 8
  %80 = getelementptr inbounds i32, ptr %79, i64 1999
  store i32 1999, ptr %80, align 4
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
  %12 = load ptr, ptr %5, align 8
  %13 = load ptr, ptr %6, align 8
  %14 = load ptr, ptr %6, align 8
  %15 = load ptr, ptr %6, align 8
  %16 = load ptr, ptr %6, align 8
  %17 = load ptr, ptr %4, align 8
  %18 = load ptr, ptr %6, align 8
  %.promoted = load i32, ptr %8, align 4
  %.promoted1 = load i32, ptr %10, align 4
  %.promoted3 = load double, ptr %7, align 8
  %.promoted5 = load i32, ptr %11, align 4
  %19 = icmp slt i32 %.promoted, 1999
  br i1 %19, label %.lr.ph, label %46

.lr.ph:                                           ; preds = %3
  br label %20

20:                                               ; preds = %.lr.ph, %43
  %21 = phi i32 [ %.promoted, %.lr.ph ], [ %44, %43 ]
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, ptr %12, i64 %22
  %24 = load i32, ptr %23, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds double, ptr %13, i64 %25
  %27 = load double, ptr %26, align 8
  %28 = icmp ne i32 %24, %21
  br i1 %28, label %29, label %37

29:                                               ; preds = %20
  %30 = sext i32 %21 to i64
  %31 = getelementptr inbounds double, ptr %14, i64 %30
  %32 = load double, ptr %31, align 8
  %33 = sext i32 %24 to i64
  %34 = getelementptr inbounds double, ptr %15, i64 %33
  store double %32, ptr %34, align 8
  %35 = sext i32 %21 to i64
  %36 = getelementptr inbounds double, ptr %16, i64 %35
  store double %27, ptr %36, align 8
  br label %37

37:                                               ; preds = %29, %20
  %38 = add nsw i32 %21, 1
  %39 = sub nsw i32 2000, %38
  %40 = sext i32 %21 to i64
  %41 = getelementptr inbounds ptr, ptr %17, i64 %40
  %42 = load ptr, ptr %41, align 8
  call void @daxpy(i32 noundef %39, double noundef %27, ptr noundef %42, i32 noundef %38, i32 noundef 1, ptr noundef %18, i32 noundef %38, i32 noundef 1)
  br label %43

43:                                               ; preds = %37
  %44 = add nsw i32 %21, 1
  %45 = icmp slt i32 %44, 1999
  br i1 %45, label %20, label %._crit_edge, !llvm.loop !21

._crit_edge:                                      ; preds = %43
  %split = phi i32 [ %38, %43 ]
  %split13 = phi double [ %27, %43 ]
  %split14 = phi i32 [ %24, %43 ]
  %split15 = phi i32 [ %44, %43 ]
  br label %46

46:                                               ; preds = %._crit_edge, %3
  %.lcssa6 = phi i32 [ %split, %._crit_edge ], [ %.promoted5, %3 ]
  %.lcssa4 = phi double [ %split13, %._crit_edge ], [ %.promoted3, %3 ]
  %.lcssa2 = phi i32 [ %split14, %._crit_edge ], [ %.promoted1, %3 ]
  %.lcssa = phi i32 [ %split15, %._crit_edge ], [ %.promoted, %3 ]
  store i32 %.lcssa, ptr %8, align 4
  store i32 %.lcssa2, ptr %10, align 4
  store double %.lcssa4, ptr %7, align 8
  store i32 %.lcssa6, ptr %11, align 4
  store i32 0, ptr %9, align 4
  %47 = load ptr, ptr %4, align 8
  %48 = load ptr, ptr %6, align 8
  %49 = load ptr, ptr %6, align 8
  %50 = load ptr, ptr %4, align 8
  %51 = load ptr, ptr %6, align 8
  %.promoted7 = load i32, ptr %9, align 4
  %.promoted9 = load i32, ptr %8, align 4
  %.promoted11 = load double, ptr %7, align 8
  %52 = icmp slt i32 %.promoted7, 2000
  br i1 %52, label %.lr.ph17, label %77

.lr.ph17:                                         ; preds = %46
  br label %53

53:                                               ; preds = %.lr.ph17, %74
  %54 = phi i32 [ %.promoted7, %.lr.ph17 ], [ %75, %74 ]
  %55 = add nsw i32 %54, 1
  %56 = sub nsw i32 2000, %55
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds ptr, ptr %47, i64 %57
  %59 = load ptr, ptr %58, align 8
  %60 = sext i32 %56 to i64
  %61 = getelementptr inbounds double, ptr %59, i64 %60
  %62 = load double, ptr %61, align 8
  %63 = sext i32 %56 to i64
  %64 = getelementptr inbounds double, ptr %48, i64 %63
  %65 = load double, ptr %64, align 8
  %66 = fdiv double %65, %62
  store double %66, ptr %64, align 8
  %67 = sext i32 %56 to i64
  %68 = getelementptr inbounds double, ptr %49, i64 %67
  %69 = load double, ptr %68, align 8
  %70 = fneg double %69
  %71 = sext i32 %56 to i64
  %72 = getelementptr inbounds ptr, ptr %50, i64 %71
  %73 = load ptr, ptr %72, align 8
  call void @daxpy(i32 noundef %56, double noundef %70, ptr noundef %73, i32 noundef 0, i32 noundef 1, ptr noundef %51, i32 noundef 0, i32 noundef 1)
  br label %74

74:                                               ; preds = %53
  %75 = add nsw i32 %54, 1
  %76 = icmp slt i32 %75, 2000
  br i1 %76, label %53, label %._crit_edge18, !llvm.loop !22

._crit_edge18:                                    ; preds = %74
  %split19 = phi double [ %70, %74 ]
  %split20 = phi i32 [ %56, %74 ]
  %split21 = phi i32 [ %75, %74 ]
  br label %77

77:                                               ; preds = %._crit_edge18, %46
  %.lcssa12 = phi double [ %split19, %._crit_edge18 ], [ %.promoted11, %46 ]
  %.lcssa10 = phi i32 [ %split20, %._crit_edge18 ], [ %.promoted9, %46 ]
  %.lcssa8 = phi i32 [ %split21, %._crit_edge18 ], [ %.promoted7, %46 ]
  store i32 %.lcssa8, ptr %9, align 4
  store i32 %.lcssa10, ptr %8, align 4
  store double %.lcssa12, ptr %7, align 8
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
  br i1 %15, label %16, label %32

16:                                               ; preds = %2
  store i32 1, ptr %6, align 4
  %17 = load i32, ptr %4, align 4
  %18 = load ptr, ptr %5, align 8
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %.promoted = load i32, ptr %6, align 4
  %20 = icmp slt i32 %.promoted, %17
  br i1 %20, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %16
  br label %21

21:                                               ; preds = %.lr.ph, %28
  %22 = phi i32 [ %.promoted, %.lr.ph ], [ %29, %28 ]
  %23 = load ptr, ptr %19, align 8
  %24 = call i32 @strcmp(ptr noundef %23, ptr noundef @.str) #5
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  %.lcssa1 = phi i32 [ %22, %21 ]
  store i32 %.lcssa1, ptr %6, align 4
  store i8 1, ptr %7, align 1
  br label %31

27:                                               ; preds = %21
  br label %28

28:                                               ; preds = %27
  %29 = add nsw i32 %22, 1
  %30 = icmp slt i32 %29, %17
  br i1 %30, label %21, label %..loopexit_crit_edge, !llvm.loop !23

..loopexit_crit_edge:                             ; preds = %28
  %split = phi i32 [ %29, %28 ]
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %16
  %.lcssa = phi i32 [ %split, %..loopexit_crit_edge ], [ %.promoted, %16 ]
  store i32 %.lcssa, ptr %6, align 4
  br label %31

31:                                               ; preds = %.loopexit, %26
  br label %32

32:                                               ; preds = %31, %2
  %33 = call ptr @malloc(i64 noundef 16000) #6
  store ptr %33, ptr %8, align 8
  store i32 0, ptr %6, align 4
  %34 = load ptr, ptr %8, align 8
  %.promoted2 = load i32, ptr %6, align 4
  %35 = icmp slt i32 %.promoted2, 2000
  br i1 %35, label %.lr.ph6, label %44

.lr.ph6:                                          ; preds = %32
  br label %36

36:                                               ; preds = %.lr.ph6, %41
  %37 = phi i32 [ %.promoted2, %.lr.ph6 ], [ %42, %41 ]
  %38 = call ptr @malloc(i64 noundef 16008) #6
  %39 = sext i32 %37 to i64
  %40 = getelementptr inbounds ptr, ptr %34, i64 %39
  store ptr %38, ptr %40, align 8
  br label %41

41:                                               ; preds = %36
  %42 = add nsw i32 %37, 1
  %43 = icmp slt i32 %42, 2000
  br i1 %43, label %36, label %._crit_edge, !llvm.loop !24

._crit_edge:                                      ; preds = %41
  %split7 = phi i32 [ %42, %41 ]
  br label %44

44:                                               ; preds = %._crit_edge, %32
  %.lcssa3 = phi i32 [ %split7, %._crit_edge ], [ %.promoted2, %32 ]
  store i32 %.lcssa3, ptr %6, align 4
  %45 = call ptr @malloc(i64 noundef 16000) #6
  store ptr %45, ptr %9, align 8
  %46 = call ptr @malloc(i64 noundef 16000) #6
  store ptr %46, ptr %10, align 8
  %47 = call ptr @malloc(i64 noundef 8000) #6
  store ptr %47, ptr %11, align 8
  store double f0x41F3E5E475555555, ptr %12, align 8
  %48 = load ptr, ptr %8, align 8
  %49 = load ptr, ptr %9, align 8
  call void @matgen(ptr noundef %48, ptr noundef %49)
  %50 = load ptr, ptr %8, align 8
  %51 = load ptr, ptr %11, align 8
  call void @dgefa(ptr noundef %50, ptr noundef %51)
  %52 = load ptr, ptr %8, align 8
  %53 = load ptr, ptr %11, align 8
  %54 = load ptr, ptr %9, align 8
  call void @dgesl(ptr noundef %52, ptr noundef %53, ptr noundef %54)
  store double 0.000000e+00, ptr %13, align 8
  %55 = load ptr, ptr %11, align 8
  call void @free(ptr noundef %55)
  %56 = load ptr, ptr %10, align 8
  call void @free(ptr noundef %56)
  %57 = load ptr, ptr %9, align 8
  call void @free(ptr noundef %57)
  store i32 0, ptr %6, align 4
  %58 = load ptr, ptr %8, align 8
  %.promoted4 = load i32, ptr %6, align 4
  %59 = icmp slt i32 %.promoted4, 2000
  br i1 %59, label %.lr.ph9, label %68

.lr.ph9:                                          ; preds = %44
  br label %60

60:                                               ; preds = %.lr.ph9, %65
  %61 = phi i32 [ %.promoted4, %.lr.ph9 ], [ %66, %65 ]
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds ptr, ptr %58, i64 %62
  %64 = load ptr, ptr %63, align 8
  call void @free(ptr noundef %64)
  br label %65

65:                                               ; preds = %60
  %66 = add nsw i32 %61, 1
  %67 = icmp slt i32 %66, 2000
  br i1 %67, label %60, label %._crit_edge10, !llvm.loop !25

._crit_edge10:                                    ; preds = %65
  %split11 = phi i32 [ %66, %65 ]
  br label %68

68:                                               ; preds = %._crit_edge10, %44
  %.lcssa5 = phi i32 [ %split11, %._crit_edge10 ], [ %.promoted4, %44 ]
  store i32 %.lcssa5, ptr %6, align 4
  %69 = load ptr, ptr %8, align 8
  call void @free(ptr noundef %69)
  %70 = load i8, ptr %7, align 1
  %71 = icmp ne i8 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %68
  %73 = call ptr @__acrt_iob_func(i32 noundef 1)
  %74 = load double, ptr %13, align 8
  %75 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %73, ptr noundef @.str.1, double noundef %74) #5
  br label %80

76:                                               ; preds = %68
  %77 = call ptr @__acrt_iob_func(i32 noundef 1)
  %78 = load double, ptr %13, align 8
  %79 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %77, ptr noundef @.str.2, double noundef %78) #5
  br label %80

80:                                               ; preds = %76, %72
  %81 = call ptr @__acrt_iob_func(i32 noundef 1)
  %82 = call i32 @fflush(ptr noundef %81)
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
