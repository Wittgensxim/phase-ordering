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
  %8 = sext i32 %.promoted1 to i64
  %smax = call i32 @llvm.smax.i32(i32 %.promoted1, i32 2000)
  %wide.trip.count = sext i32 %smax to i64
  br label %9

9:                                                ; preds = %20, %2
  %indvars.iv13 = phi i64 [ %indvars.iv.next14, %20 ], [ %8, %2 ]
  %.lcssa4 = phi i32 [ %19, %20 ], [ %.promoted3, %2 ]
  %exitcond16 = icmp ne i64 %indvars.iv13, %wide.trip.count
  br i1 %exitcond16, label %10, label %21

10:                                               ; preds = %9
  br label %11

11:                                               ; preds = %17, %10
  %indvars.iv = phi i64 [ %indvars.iv.next, %17 ], [ 0, %10 ]
  %exitcond = icmp ne i64 %indvars.iv, 2000
  br i1 %exitcond, label %12, label %18

12:                                               ; preds = %11
  %13 = call double @random_double()
  %14 = getelementptr inbounds ptr, ptr %7, i64 %indvars.iv
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds double, ptr %15, i64 %indvars.iv13
  store double %13, ptr %16, align 8
  br label %17

17:                                               ; preds = %12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %11, !llvm.loop !7

18:                                               ; preds = %11
  %19 = trunc nuw nsw i64 2000 to i32
  br label %20

20:                                               ; preds = %18
  %indvars.iv.next14 = add nsw i64 %indvars.iv13, 1
  br label %9, !llvm.loop !9

21:                                               ; preds = %9
  %.lcssa4.lcssa = phi i32 [ %.lcssa4, %9 ]
  %.lcssa2.wide = phi i64 [ %indvars.iv13, %9 ]
  %22 = trunc nsw i64 %.lcssa2.wide to i32
  store i32 %22, ptr %5, align 4
  store i32 %.lcssa4.lcssa, ptr %6, align 4
  store i32 0, ptr %5, align 4
  %23 = load ptr, ptr %4, align 8
  %.promoted = load i32, ptr %5, align 4
  %24 = sext i32 %.promoted to i64
  %smax20 = call i32 @llvm.smax.i32(i32 %.promoted, i32 2000)
  %wide.trip.count21 = sext i32 %smax20 to i64
  br label %25

25:                                               ; preds = %28, %21
  %indvars.iv17 = phi i64 [ %indvars.iv.next18, %28 ], [ %24, %21 ]
  %exitcond22 = icmp ne i64 %indvars.iv17, %wide.trip.count21
  br i1 %exitcond22, label %26, label %29

26:                                               ; preds = %25
  %27 = getelementptr inbounds double, ptr %23, i64 %indvars.iv17
  store double 0.000000e+00, ptr %27, align 8
  br label %28

28:                                               ; preds = %26
  %indvars.iv.next18 = add nsw i64 %indvars.iv17, 1
  br label %25, !llvm.loop !10

29:                                               ; preds = %25
  %.lcssa5.wide = phi i64 [ %indvars.iv17, %25 ]
  %30 = trunc nsw i64 %.lcssa5.wide to i32
  store i32 %30, ptr %5, align 4
  store i32 0, ptr %6, align 4
  %31 = load ptr, ptr %3, align 8
  %32 = load ptr, ptr %4, align 8
  %.promoted8 = load i32, ptr %6, align 4
  %.promoted10 = load i32, ptr %5, align 4
  %33 = sext i32 %.promoted8 to i64
  %smax30 = call i32 @llvm.smax.i32(i32 %.promoted8, i32 2000)
  %wide.trip.count31 = sext i32 %smax30 to i64
  br label %34

34:                                               ; preds = %48, %29
  %indvars.iv27 = phi i64 [ %indvars.iv.next28, %48 ], [ %33, %29 ]
  %.lcssa711 = phi i32 [ %47, %48 ], [ %.promoted10, %29 ]
  %exitcond32 = icmp ne i64 %indvars.iv27, %wide.trip.count31
  br i1 %exitcond32, label %35, label %49

35:                                               ; preds = %34
  %36 = getelementptr inbounds ptr, ptr %31, i64 %indvars.iv27
  br label %37

37:                                               ; preds = %45, %35
  %indvars.iv23 = phi i64 [ %indvars.iv.next24, %45 ], [ 0, %35 ]
  %exitcond26 = icmp ne i64 %indvars.iv23, 2000
  br i1 %exitcond26, label %38, label %46

38:                                               ; preds = %37
  %39 = load ptr, ptr %36, align 8
  %40 = getelementptr inbounds double, ptr %39, i64 %indvars.iv23
  %41 = load double, ptr %40, align 8
  %42 = getelementptr inbounds double, ptr %32, i64 %indvars.iv23
  %43 = load double, ptr %42, align 8
  %44 = fadd double %43, %41
  store double %44, ptr %42, align 8
  br label %45

45:                                               ; preds = %38
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1
  br label %37, !llvm.loop !11

46:                                               ; preds = %37
  %47 = trunc nuw nsw i64 2000 to i32
  br label %48

48:                                               ; preds = %46
  %indvars.iv.next28 = add nsw i64 %indvars.iv27, 1
  br label %34, !llvm.loop !12

49:                                               ; preds = %34
  %.lcssa711.lcssa = phi i32 [ %.lcssa711, %34 ]
  %.lcssa9.wide = phi i64 [ %indvars.iv27, %34 ]
  %50 = trunc nsw i64 %.lcssa9.wide to i32
  store i32 %50, ptr %6, align 4
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
  br label %91

17:                                               ; preds = %4
  %18 = load i32, ptr %5, align 4
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i32 0, ptr %13, align 4
  br label %90

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
  %33 = load i32, ptr %5, align 4
  %34 = load ptr, ptr %6, align 8
  %35 = load i32, ptr %7, align 4
  %36 = load i32, ptr %8, align 4
  %.promoted7 = load i32, ptr %11, align 4
  %.promoted9 = load i32, ptr %12, align 4
  %.promoted11 = load double, ptr %10, align 8
  %.promoted13 = load double, ptr %9, align 8
  %.promoted15 = load i32, ptr %13, align 1
  %37 = sext i32 %.promoted9 to i64
  %38 = sext i32 %36 to i64
  %39 = sext i32 %35 to i64
  %smax20 = call i32 @llvm.smax.i32(i32 %.promoted7, i32 %33)
  br label %40

40:                                               ; preds = %55, %24
  %indvars.iv18 = phi i64 [ %indvars.iv.next19, %55 ], [ %37, %24 ]
  %41 = phi i32 [ %53, %55 ], [ %.promoted15, %24 ]
  %42 = phi double [ %54, %55 ], [ %.promoted13, %24 ]
  %43 = phi double [ %49, %55 ], [ %.promoted11, %24 ]
  %44 = phi i32 [ %56, %55 ], [ %.promoted7, %24 ]
  %exitcond22 = icmp ne i32 %44, %smax20
  br i1 %exitcond22, label %45, label %57

45:                                               ; preds = %40
  %46 = add nsw i64 %indvars.iv18, %39
  %47 = getelementptr inbounds double, ptr %34, i64 %46
  %48 = load double, ptr %47, align 8
  %49 = call double @llvm.fabs.f64(double %48)
  %50 = fcmp ogt double %49, %42
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  br label %52

52:                                               ; preds = %51, %45
  %53 = phi i32 [ %44, %51 ], [ %41, %45 ]
  %54 = phi double [ %49, %51 ], [ %42, %45 ]
  %indvars.iv.next19 = add nsw i64 %indvars.iv18, %38
  br label %55

55:                                               ; preds = %52
  %56 = add i32 %44, 1
  br label %40, !llvm.loop !13

57:                                               ; preds = %40
  %.lcssa16 = phi i32 [ %41, %40 ]
  %.lcssa14 = phi double [ %42, %40 ]
  %.lcssa12 = phi double [ %43, %40 ]
  %.lcssa10.wide = phi i64 [ %indvars.iv18, %40 ]
  %58 = trunc nsw i64 %.lcssa10.wide to i32
  store i32 %smax20, ptr %11, align 4
  store i32 %58, ptr %12, align 4
  store double %.lcssa12, ptr %10, align 8
  store double %.lcssa14, ptr %9, align 8
  store i32 %.lcssa16, ptr %13, align 1
  br label %89

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
  %66 = load i32, ptr %5, align 4
  %67 = load ptr, ptr %6, align 8
  %68 = load i32, ptr %7, align 4
  %.promoted = load i32, ptr %11, align 4
  %.promoted1 = load double, ptr %10, align 8
  %.promoted3 = load double, ptr %9, align 8
  %.promoted5 = load i32, ptr %13, align 1
  %69 = sext i32 %.promoted to i64
  %70 = sext i32 %68 to i64
  %smax = call i32 @llvm.smax.i32(i32 %.promoted, i32 %66)
  %wide.trip.count = sext i32 %smax to i64
  br label %71

71:                                               ; preds = %86, %59
  %indvars.iv = phi i64 [ %indvars.iv.next, %86 ], [ %69, %59 ]
  %72 = phi i32 [ %84, %86 ], [ %.promoted5, %59 ]
  %73 = phi double [ %85, %86 ], [ %.promoted3, %59 ]
  %74 = phi double [ %79, %86 ], [ %.promoted1, %59 ]
  %exitcond = icmp ne i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %75, label %87

75:                                               ; preds = %71
  %76 = add nsw i64 %indvars.iv, %70
  %77 = getelementptr inbounds double, ptr %67, i64 %76
  %78 = load double, ptr %77, align 8
  %79 = call double @llvm.fabs.f64(double %78)
  %80 = fcmp ogt double %79, %73
  br i1 %80, label %81, label %83

81:                                               ; preds = %75
  %82 = trunc nsw i64 %indvars.iv to i32
  br label %83

83:                                               ; preds = %81, %75
  %84 = phi i32 [ %82, %81 ], [ %72, %75 ]
  %85 = phi double [ %79, %81 ], [ %73, %75 ]
  br label %86

86:                                               ; preds = %83
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %71, !llvm.loop !14

87:                                               ; preds = %71
  %.lcssa6 = phi i32 [ %72, %71 ]
  %.lcssa4 = phi double [ %73, %71 ]
  %.lcssa2 = phi double [ %74, %71 ]
  %.lcssa.wide = phi i64 [ %indvars.iv, %71 ]
  %88 = trunc nsw i64 %.lcssa.wide to i32
  store i32 %88, ptr %11, align 4
  store double %.lcssa2, ptr %10, align 8
  store double %.lcssa4, ptr %9, align 8
  store i32 %.lcssa6, ptr %13, align 1
  br label %89

89:                                               ; preds = %87, %57
  br label %90

90:                                               ; preds = %89, %20
  br label %91

91:                                               ; preds = %90, %16
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
  br i1 %14, label %15, label %58

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
  %22 = load i32, ptr %12, align 4
  %23 = load double, ptr %7, align 8
  %24 = load ptr, ptr %8, align 8
  %25 = load i32, ptr %9, align 4
  %26 = load i32, ptr %10, align 4
  %.promoted1 = load i32, ptr %11, align 4
  %27 = sext i32 %.promoted1 to i64
  %28 = sext i32 %26 to i64
  %29 = sext i32 %25 to i64
  %30 = sext i32 %22 to i64
  br label %31

31:                                               ; preds = %38, %18
  %indvars.iv4 = phi i64 [ %indvars.iv.next5, %38 ], [ %27, %18 ]
  %32 = icmp slt i64 %indvars.iv4, %30
  br i1 %32, label %33, label %39

33:                                               ; preds = %31
  %34 = add nsw i64 %indvars.iv4, %29
  %35 = getelementptr inbounds double, ptr %24, i64 %34
  %36 = load double, ptr %35, align 8
  %37 = fmul double %36, %23
  store double %37, ptr %35, align 8
  br label %38

38:                                               ; preds = %33
  %indvars.iv.next5 = add nsw i64 %indvars.iv4, %28
  br label %31, !llvm.loop !15

39:                                               ; preds = %31
  %.lcssa2.wide = phi i64 [ %indvars.iv4, %31 ]
  %40 = trunc nsw i64 %.lcssa2.wide to i32
  store i32 %40, ptr %11, align 4
  br label %57

41:                                               ; preds = %15
  store i32 0, ptr %11, align 4
  %42 = load i32, ptr %6, align 4
  %43 = load double, ptr %7, align 8
  %44 = load ptr, ptr %8, align 8
  %45 = load i32, ptr %9, align 4
  %.promoted = load i32, ptr %11, align 4
  %46 = sext i32 %.promoted to i64
  %47 = sext i32 %45 to i64
  %smax = call i32 @llvm.smax.i32(i32 %.promoted, i32 %42)
  %wide.trip.count = sext i32 %smax to i64
  br label %48

48:                                               ; preds = %54, %41
  %indvars.iv = phi i64 [ %indvars.iv.next, %54 ], [ %46, %41 ]
  %exitcond = icmp ne i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %49, label %55

49:                                               ; preds = %48
  %50 = add nsw i64 %indvars.iv, %47
  %51 = getelementptr inbounds double, ptr %44, i64 %50
  %52 = load double, ptr %51, align 8
  %53 = fmul double %52, %43
  store double %53, ptr %51, align 8
  br label %54

54:                                               ; preds = %49
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %48, !llvm.loop !16

55:                                               ; preds = %48
  %.lcssa.wide = phi i64 [ %indvars.iv, %48 ]
  %56 = trunc nsw i64 %.lcssa.wide to i32
  store i32 %56, ptr %11, align 4
  br label %57

57:                                               ; preds = %55, %39
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
  br i1 %30, label %31, label %77

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
  %56 = sext i32 %.promoted5 to i64
  %57 = sext i32 %55 to i64
  %58 = sext i32 %53 to i64
  %59 = sext i32 %.promoted3 to i64
  %60 = sext i32 %54 to i64
  %61 = sext i32 %51 to i64
  %smax12 = call i32 @llvm.smax.i32(i32 %.promoted1, i32 %48)
  br label %62

62:                                               ; preds = %72, %47
  %indvars.iv10 = phi i64 [ %indvars.iv.next11, %72 ], [ %59, %47 ]
  %indvars.iv8 = phi i64 [ %indvars.iv.next9, %72 ], [ %56, %47 ]
  %63 = phi i32 [ %73, %72 ], [ %.promoted1, %47 ]
  %exitcond16 = icmp ne i32 %63, %smax12
  br i1 %exitcond16, label %64, label %74

64:                                               ; preds = %62
  %65 = add nsw i64 %indvars.iv10, %61
  %66 = getelementptr inbounds double, ptr %50, i64 %65
  %67 = load double, ptr %66, align 8
  %68 = add nsw i64 %indvars.iv8, %58
  %69 = getelementptr inbounds double, ptr %52, i64 %68
  %70 = load double, ptr %69, align 8
  %71 = call double @llvm.fmuladd.f64(double %49, double %67, double %70)
  store double %71, ptr %69, align 8
  %indvars.iv.next11 = add nsw i64 %indvars.iv10, %60
  %indvars.iv.next9 = add nsw i64 %indvars.iv8, %57
  br label %72

72:                                               ; preds = %64
  %73 = add i32 %63, 1
  br label %62, !llvm.loop !17

74:                                               ; preds = %62
  %.lcssa6.wide = phi i64 [ %indvars.iv8, %62 ]
  %.lcssa4.wide = phi i64 [ %indvars.iv10, %62 ]
  %75 = trunc nsw i64 %.lcssa4.wide to i32
  %76 = trunc nsw i64 %.lcssa6.wide to i32
  store i32 %smax12, ptr %17, align 4
  store i32 %75, ptr %18, align 4
  store i32 %76, ptr %19, align 4
  br label %100

77:                                               ; preds = %28
  store i32 0, ptr %17, align 4
  %78 = load i32, ptr %9, align 4
  %79 = load double, ptr %10, align 8
  %80 = load ptr, ptr %11, align 8
  %81 = load i32, ptr %12, align 4
  %82 = load ptr, ptr %14, align 8
  %83 = load i32, ptr %15, align 4
  %.promoted = load i32, ptr %17, align 4
  %84 = sext i32 %.promoted to i64
  %85 = sext i32 %83 to i64
  %86 = sext i32 %81 to i64
  %smax = call i32 @llvm.smax.i32(i32 %.promoted, i32 %78)
  %wide.trip.count = sext i32 %smax to i64
  br label %87

87:                                               ; preds = %96, %77
  %indvars.iv = phi i64 [ %indvars.iv.next, %96 ], [ %84, %77 ]
  %exitcond = icmp ne i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %88, label %97

88:                                               ; preds = %87
  %89 = add nsw i64 %indvars.iv, %86
  %90 = getelementptr inbounds double, ptr %80, i64 %89
  %91 = load double, ptr %90, align 8
  %92 = add nsw i64 %indvars.iv, %85
  %93 = getelementptr inbounds double, ptr %82, i64 %92
  %94 = load double, ptr %93, align 8
  %95 = call double @llvm.fmuladd.f64(double %79, double %91, double %94)
  store double %95, ptr %93, align 8
  br label %96

96:                                               ; preds = %88
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %87, !llvm.loop !18

97:                                               ; preds = %87
  %.lcssa.wide = phi i64 [ %indvars.iv, %87 ]
  %98 = trunc nsw i64 %.lcssa.wide to i32
  store i32 %98, ptr %17, align 4
  br label %99

99:                                               ; preds = %97
  br label %100

100:                                              ; preds = %99, %74, %22, %8
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
  %15 = add i32 %.promoted5, 1
  %16 = sext i32 %15 to i64
  %17 = sext i32 %.promoted5 to i64
  %smax = call i32 @llvm.smax.i32(i32 %.promoted5, i32 1999)
  %wide.trip.count = sext i32 %smax to i64
  br label %18

18:                                               ; preds = %79, %2
  %indvars.iv24 = phi i64 [ %indvars.iv.next25, %79 ], [ %17, %2 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %79 ], [ %16, %2 ]
  %.lcssa220 = phi ptr [ %.lcssa219, %79 ], [ %.promoted, %2 ]
  %.lcssa18 = phi i32 [ %.lcssa17, %79 ], [ %.promoted16, %2 ]
  %.lcssa415 = phi double [ %.lcssa414, %79 ], [ %.promoted13, %2 ]
  %19 = phi i32 [ %30, %79 ], [ %.promoted11, %2 ]
  %20 = phi i32 [ %80, %79 ], [ %.promoted9, %2 ]
  %21 = phi ptr [ %24, %79 ], [ %.promoted7, %2 ]
  %indvars26 = trunc i64 %indvars.iv24 to i32
  %exitcond = icmp ne i64 %indvars.iv24, %wide.trip.count
  br i1 %exitcond, label %22, label %81

22:                                               ; preds = %18
  %23 = getelementptr inbounds ptr, ptr %12, i64 %indvars.iv24
  %24 = load ptr, ptr %23, align 8
  %indvars.iv.next25 = add nsw i64 %indvars.iv24, 1
  %25 = add nsw i32 %indvars26, 1
  %26 = sub nsw i32 2000, %indvars26
  %27 = trunc nsw i64 %indvars.iv24 to i32
  %28 = call i32 @idamax(i32 noundef %26, ptr noundef %24, i32 noundef %27, i32 noundef 1)
  %29 = trunc nsw i64 %indvars.iv24 to i32
  %30 = add nsw i32 %28, %29
  %31 = getelementptr inbounds i32, ptr %13, i64 %indvars.iv24
  store i32 %30, ptr %31, align 4
  %32 = sext i32 %30 to i64
  %33 = getelementptr inbounds double, ptr %24, i64 %32
  %34 = load double, ptr %33, align 8
  %35 = fcmp une double %34, 0.000000e+00
  br i1 %35, label %36, label %78

36:                                               ; preds = %22
  %37 = trunc nsw i64 %indvars.iv24 to i32
  %38 = icmp ne i32 %30, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %36
  %40 = sext i32 %30 to i64
  %41 = getelementptr inbounds double, ptr %24, i64 %40
  %42 = load double, ptr %41, align 8
  %43 = getelementptr inbounds double, ptr %24, i64 %indvars.iv24
  %44 = load double, ptr %43, align 8
  %45 = sext i32 %30 to i64
  %46 = getelementptr inbounds double, ptr %24, i64 %45
  store double %44, ptr %46, align 8
  %47 = getelementptr inbounds double, ptr %24, i64 %indvars.iv24
  store double %42, ptr %47, align 8
  br label %48

48:                                               ; preds = %39, %36
  %49 = getelementptr inbounds double, ptr %24, i64 %indvars.iv24
  %50 = load double, ptr %49, align 8
  %51 = fdiv double -1.000000e+00, %50
  %52 = sub nsw i32 2000, %25
  %53 = trunc nsw i64 %indvars.iv.next25 to i32
  call void @dscal(i32 noundef %52, double noundef %51, ptr noundef %24, i32 noundef %53, i32 noundef 1)
  %54 = sext i32 %30 to i64
  %55 = trunc nsw i64 %indvars.iv24 to i32
  %56 = icmp ne i32 %30, %55
  %57 = sext i32 %30 to i64
  %58 = sub nsw i32 2000, %25
  br label %59

59:                                               ; preds = %75, %48
  %indvars.iv21 = phi i64 [ %indvars.iv.next22, %75 ], [ %indvars.iv, %48 ]
  %60 = phi double [ %67, %75 ], [ %51, %48 ]
  %61 = phi ptr [ %65, %75 ], [ %.lcssa220, %48 ]
  %62 = icmp slt i64 %indvars.iv21, 2000
  br i1 %62, label %63, label %76

63:                                               ; preds = %59
  %64 = getelementptr inbounds ptr, ptr %14, i64 %indvars.iv21
  %65 = load ptr, ptr %64, align 8
  %66 = getelementptr inbounds double, ptr %65, i64 %54
  %67 = load double, ptr %66, align 8
  br i1 %56, label %68, label %73

68:                                               ; preds = %63
  %69 = getelementptr inbounds double, ptr %65, i64 %indvars.iv24
  %70 = load double, ptr %69, align 8
  %71 = getelementptr inbounds double, ptr %65, i64 %57
  store double %70, ptr %71, align 8
  %72 = getelementptr inbounds double, ptr %65, i64 %indvars.iv24
  store double %67, ptr %72, align 8
  br label %73

73:                                               ; preds = %68, %63
  %74 = trunc nsw i64 %indvars.iv.next25 to i32
  call void @daxpy(i32 noundef %58, double noundef %67, ptr noundef %24, i32 noundef %74, i32 noundef 1, ptr noundef %65, i32 noundef %74, i32 noundef 1)
  br label %75

75:                                               ; preds = %73
  %indvars.iv.next22 = add nsw i64 %indvars.iv21, 1
  br label %59, !llvm.loop !19

76:                                               ; preds = %59
  %.lcssa4 = phi double [ %60, %59 ]
  %.lcssa2 = phi ptr [ %61, %59 ]
  %.lcssa.wide = phi i64 [ %indvars.iv21, %59 ]
  %77 = trunc nsw i64 %.lcssa.wide to i32
  br label %78

78:                                               ; preds = %76, %22
  %.lcssa219 = phi ptr [ %.lcssa2, %76 ], [ %.lcssa220, %22 ]
  %.lcssa17 = phi i32 [ %77, %76 ], [ %.lcssa18, %22 ]
  %.lcssa414 = phi double [ %.lcssa4, %76 ], [ %.lcssa415, %22 ]
  br label %79

79:                                               ; preds = %78
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %80 = trunc nsw i64 %indvars.iv.next25 to i32
  br label %18, !llvm.loop !20

81:                                               ; preds = %18
  %.lcssa220.lcssa = phi ptr [ %.lcssa220, %18 ]
  %.lcssa18.lcssa = phi i32 [ %.lcssa18, %18 ]
  %.lcssa415.lcssa = phi double [ %.lcssa415, %18 ]
  %.lcssa12 = phi i32 [ %19, %18 ]
  %.lcssa10 = phi i32 [ %20, %18 ]
  %.lcssa8 = phi ptr [ %21, %18 ]
  %.lcssa6.wide = phi i64 [ %indvars.iv24, %18 ]
  %82 = trunc nsw i64 %.lcssa6.wide to i32
  store i32 %82, ptr %6, align 4
  store ptr %.lcssa8, ptr %8, align 8
  store i32 %.lcssa10, ptr %9, align 4
  store i32 %.lcssa12, ptr %10, align 4
  store double %.lcssa415.lcssa, ptr %5, align 8
  store i32 %.lcssa18.lcssa, ptr %7, align 4
  store ptr %.lcssa220.lcssa, ptr %11, align 8
  %83 = load ptr, ptr %4, align 8
  %84 = getelementptr inbounds i32, ptr %83, i64 1999
  store i32 1999, ptr %84, align 4
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
  %19 = sext i32 %.promoted to i64
  %smax = call i32 @llvm.smax.i32(i32 %.promoted, i32 1999)
  %wide.trip.count = sext i32 %smax to i64
  br label %20

20:                                               ; preds = %44, %3
  %indvars.iv = phi i64 [ %indvars.iv.next, %44 ], [ %19, %3 ]
  %21 = phi i32 [ %45, %44 ], [ %.promoted5, %3 ]
  %22 = phi double [ %29, %44 ], [ %.promoted3, %3 ]
  %23 = phi i32 [ %26, %44 ], [ %.promoted1, %3 ]
  %indvars13 = trunc i64 %indvars.iv to i32
  %exitcond = icmp ne i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %24, label %46

24:                                               ; preds = %20
  %25 = getelementptr inbounds i32, ptr %12, i64 %indvars.iv
  %26 = load i32, ptr %25, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds double, ptr %13, i64 %27
  %29 = load double, ptr %28, align 8
  %30 = trunc nsw i64 %indvars.iv to i32
  %31 = icmp ne i32 %26, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %24
  %33 = getelementptr inbounds double, ptr %14, i64 %indvars.iv
  %34 = load double, ptr %33, align 8
  %35 = sext i32 %26 to i64
  %36 = getelementptr inbounds double, ptr %15, i64 %35
  store double %34, ptr %36, align 8
  %37 = getelementptr inbounds double, ptr %16, i64 %indvars.iv
  store double %29, ptr %37, align 8
  br label %38

38:                                               ; preds = %32, %24
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %39 = add nsw i32 %indvars13, 1
  %40 = sub nsw i32 2000, %39
  %41 = getelementptr inbounds ptr, ptr %17, i64 %indvars.iv
  %42 = load ptr, ptr %41, align 8
  %43 = trunc nsw i64 %indvars.iv.next to i32
  call void @daxpy(i32 noundef %40, double noundef %29, ptr noundef %42, i32 noundef %43, i32 noundef 1, ptr noundef %18, i32 noundef %43, i32 noundef 1)
  br label %44

44:                                               ; preds = %38
  %45 = trunc nsw i64 %indvars.iv.next to i32
  br label %20, !llvm.loop !21

46:                                               ; preds = %20
  %.lcssa6 = phi i32 [ %21, %20 ]
  %.lcssa4 = phi double [ %22, %20 ]
  %.lcssa2 = phi i32 [ %23, %20 ]
  %.lcssa.wide = phi i64 [ %indvars.iv, %20 ]
  %47 = trunc nsw i64 %.lcssa.wide to i32
  store i32 %47, ptr %8, align 4
  store i32 %.lcssa2, ptr %10, align 4
  store double %.lcssa4, ptr %7, align 8
  store i32 %.lcssa6, ptr %11, align 4
  store i32 0, ptr %9, align 4
  %48 = load ptr, ptr %4, align 8
  %49 = load ptr, ptr %6, align 8
  %50 = load ptr, ptr %6, align 8
  %51 = load ptr, ptr %4, align 8
  %52 = load ptr, ptr %6, align 8
  %.promoted7 = load i32, ptr %9, align 4
  %.promoted9 = load i32, ptr %8, align 4
  %.promoted11 = load double, ptr %7, align 8
  %53 = sext i32 %.promoted7 to i64
  %smax17 = call i32 @llvm.smax.i32(i32 %.promoted7, i32 2000)
  %wide.trip.count18 = sext i32 %smax17 to i64
  br label %54

54:                                               ; preds = %72, %46
  %indvars.iv14 = phi i64 [ %indvars.iv.next15, %72 ], [ %53, %46 ]
  %55 = phi double [ %68, %72 ], [ %.promoted11, %46 ]
  %56 = phi i32 [ %73, %72 ], [ %.promoted9, %46 ]
  %exitcond19 = icmp ne i64 %indvars.iv14, %wide.trip.count18
  br i1 %exitcond19, label %57, label %74

57:                                               ; preds = %54
  %indvars.iv.next15 = add nsw i64 %indvars.iv14, 1
  %58 = sub nsw i64 2000, %indvars.iv.next15
  %59 = getelementptr inbounds ptr, ptr %48, i64 %58
  %60 = load ptr, ptr %59, align 8
  %61 = getelementptr inbounds double, ptr %60, i64 %58
  %62 = load double, ptr %61, align 8
  %63 = getelementptr inbounds double, ptr %49, i64 %58
  %64 = load double, ptr %63, align 8
  %65 = fdiv double %64, %62
  store double %65, ptr %63, align 8
  %66 = getelementptr inbounds double, ptr %50, i64 %58
  %67 = load double, ptr %66, align 8
  %68 = fneg double %67
  %69 = getelementptr inbounds ptr, ptr %51, i64 %58
  %70 = load ptr, ptr %69, align 8
  %71 = trunc nsw i64 %58 to i32
  call void @daxpy(i32 noundef %71, double noundef %68, ptr noundef %70, i32 noundef 0, i32 noundef 1, ptr noundef %52, i32 noundef 0, i32 noundef 1)
  br label %72

72:                                               ; preds = %57
  %73 = trunc nsw i64 %58 to i32
  br label %54, !llvm.loop !22

74:                                               ; preds = %54
  %.lcssa12 = phi double [ %55, %54 ]
  %.lcssa10 = phi i32 [ %56, %54 ]
  %.lcssa8.wide = phi i64 [ %indvars.iv14, %54 ]
  %75 = trunc nsw i64 %.lcssa8.wide to i32
  store i32 %75, ptr %9, align 4
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
  br i1 %15, label %16, label %31

16:                                               ; preds = %2
  store i32 1, ptr %6, align 4
  %17 = load i32, ptr %4, align 4
  %18 = load ptr, ptr %5, align 8
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %.promoted = load i32, ptr %6, align 4
  %smax = call i32 @llvm.smax.i32(i32 %.promoted, i32 %17)
  br label %20

20:                                               ; preds = %28, %16
  %21 = phi i32 [ %29, %28 ], [ %.promoted, %16 ]
  %exitcond = icmp ne i32 %21, %smax
  br i1 %exitcond, label %22, label %.loopexit

22:                                               ; preds = %20
  %23 = load ptr, ptr %19, align 8
  %24 = call i32 @strcmp(ptr noundef %23, ptr noundef @.str) #5
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  %.lcssa1 = phi i32 [ %21, %22 ]
  store i32 %.lcssa1, ptr %6, align 4
  store i8 1, ptr %7, align 1
  br label %30

27:                                               ; preds = %22
  br label %28

28:                                               ; preds = %27
  %29 = add i32 %21, 1
  br label %20, !llvm.loop !23

.loopexit:                                        ; preds = %20
  store i32 %smax, ptr %6, align 4
  br label %30

30:                                               ; preds = %.loopexit, %26
  br label %31

31:                                               ; preds = %30, %2
  %32 = call ptr @malloc(i64 noundef 16000) #6
  store ptr %32, ptr %8, align 8
  store i32 0, ptr %6, align 4
  %33 = load ptr, ptr %8, align 8
  %.promoted2 = load i32, ptr %6, align 4
  %34 = sext i32 %.promoted2 to i64
  %smax7 = call i32 @llvm.smax.i32(i32 %.promoted2, i32 2000)
  %wide.trip.count = sext i32 %smax7 to i64
  br label %35

35:                                               ; preds = %39, %31
  %indvars.iv = phi i64 [ %indvars.iv.next, %39 ], [ %34, %31 ]
  %exitcond8 = icmp ne i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond8, label %36, label %40

36:                                               ; preds = %35
  %37 = call ptr @malloc(i64 noundef 16008) #6
  %38 = getelementptr inbounds ptr, ptr %33, i64 %indvars.iv
  store ptr %37, ptr %38, align 8
  br label %39

39:                                               ; preds = %36
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %35, !llvm.loop !24

40:                                               ; preds = %35
  %.lcssa3.wide = phi i64 [ %indvars.iv, %35 ]
  %41 = trunc nsw i64 %.lcssa3.wide to i32
  store i32 %41, ptr %6, align 4
  %42 = call ptr @malloc(i64 noundef 16000) #6
  store ptr %42, ptr %9, align 8
  %43 = call ptr @malloc(i64 noundef 16000) #6
  store ptr %43, ptr %10, align 8
  %44 = call ptr @malloc(i64 noundef 8000) #6
  store ptr %44, ptr %11, align 8
  store double f0x41F3E5E475555555, ptr %12, align 8
  %45 = load ptr, ptr %8, align 8
  %46 = load ptr, ptr %9, align 8
  call void @matgen(ptr noundef %45, ptr noundef %46)
  %47 = load ptr, ptr %8, align 8
  %48 = load ptr, ptr %11, align 8
  call void @dgefa(ptr noundef %47, ptr noundef %48)
  %49 = load ptr, ptr %8, align 8
  %50 = load ptr, ptr %11, align 8
  %51 = load ptr, ptr %9, align 8
  call void @dgesl(ptr noundef %49, ptr noundef %50, ptr noundef %51)
  store double 0.000000e+00, ptr %13, align 8
  %52 = load ptr, ptr %11, align 8
  call void @free(ptr noundef %52)
  %53 = load ptr, ptr %10, align 8
  call void @free(ptr noundef %53)
  %54 = load ptr, ptr %9, align 8
  call void @free(ptr noundef %54)
  store i32 0, ptr %6, align 4
  %55 = load ptr, ptr %8, align 8
  %.promoted4 = load i32, ptr %6, align 4
  %56 = sext i32 %.promoted4 to i64
  %smax12 = call i32 @llvm.smax.i32(i32 %.promoted4, i32 2000)
  %wide.trip.count13 = sext i32 %smax12 to i64
  br label %57

57:                                               ; preds = %61, %40
  %indvars.iv9 = phi i64 [ %indvars.iv.next10, %61 ], [ %56, %40 ]
  %exitcond14 = icmp ne i64 %indvars.iv9, %wide.trip.count13
  br i1 %exitcond14, label %58, label %62

58:                                               ; preds = %57
  %59 = getelementptr inbounds ptr, ptr %55, i64 %indvars.iv9
  %60 = load ptr, ptr %59, align 8
  call void @free(ptr noundef %60)
  br label %61

61:                                               ; preds = %58
  %indvars.iv.next10 = add nsw i64 %indvars.iv9, 1
  br label %57, !llvm.loop !25

62:                                               ; preds = %57
  %.lcssa5.wide = phi i64 [ %indvars.iv9, %57 ]
  %63 = trunc nsw i64 %.lcssa5.wide to i32
  store i32 %63, ptr %6, align 4
  %64 = load ptr, ptr %8, align 8
  call void @free(ptr noundef %64)
  %65 = load i8, ptr %7, align 1
  %66 = icmp ne i8 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %62
  %68 = call ptr @__acrt_iob_func(i32 noundef 1)
  %69 = load double, ptr %13, align 8
  %70 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %68, ptr noundef @.str.1, double noundef %69) #5
  br label %75

71:                                               ; preds = %62
  %72 = call ptr @__acrt_iob_func(i32 noundef 1)
  %73 = load double, ptr %13, align 8
  %74 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %72, ptr noundef @.str.2, double noundef %73) #5
  br label %75

75:                                               ; preds = %71, %67
  %76 = call ptr @__acrt_iob_func(i32 noundef 1)
  %77 = call i32 @fflush(ptr noundef %76)
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

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #1

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
