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

7:                                                ; preds = %16, %2
  %indvars.iv3 = phi i64 [ %indvars.iv.next4, %16 ], [ 0, %2 ]
  %exitcond6 = icmp ne i64 %indvars.iv3, 2000
  br i1 %exitcond6, label %8, label %18

8:                                                ; preds = %7
  store i32 0, ptr %6, align 4
  br label %9

9:                                                ; preds = %10, %8
  %indvars.iv = phi i64 [ %indvars.iv.next, %10 ], [ 0, %8 ]
  %exitcond = icmp ne i64 %indvars.iv, 2000
  br i1 %exitcond, label %10, label %16

10:                                               ; preds = %9
  %11 = call double @random_double()
  %12 = getelementptr inbounds ptr, ptr %0, i64 %indvars.iv
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds double, ptr %13, i64 %indvars.iv3
  store double %11, ptr %14, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %15 = trunc nuw nsw i64 %indvars.iv.next to i32
  store i32 %15, ptr %6, align 4
  br label %9, !llvm.loop !7

16:                                               ; preds = %9
  %indvars.iv.next4 = add nuw nsw i64 %indvars.iv3, 1
  %17 = trunc nuw nsw i64 %indvars.iv.next4 to i32
  store i32 %17, ptr %5, align 4
  br label %7, !llvm.loop !9

18:                                               ; preds = %7
  store i32 0, ptr %5, align 4
  br label %19

19:                                               ; preds = %20, %18
  %indvars.iv7 = phi i64 [ %indvars.iv.next8, %20 ], [ 0, %18 ]
  %exitcond10 = icmp ne i64 %indvars.iv7, 2000
  br i1 %exitcond10, label %20, label %23

20:                                               ; preds = %19
  %21 = getelementptr inbounds double, ptr %1, i64 %indvars.iv7
  store double 0.000000e+00, ptr %21, align 8
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv7, 1
  %22 = trunc nuw nsw i64 %indvars.iv.next8 to i32
  store i32 %22, ptr %5, align 4
  br label %19, !llvm.loop !10

23:                                               ; preds = %19
  store i32 0, ptr %6, align 4
  br label %24

24:                                               ; preds = %36, %23
  %indvars.iv15 = phi i64 [ %indvars.iv.next16, %36 ], [ 0, %23 ]
  %exitcond18 = icmp ne i64 %indvars.iv15, 2000
  br i1 %exitcond18, label %25, label %38

25:                                               ; preds = %24
  store i32 0, ptr %5, align 4
  br label %26

26:                                               ; preds = %27, %25
  %indvars.iv11 = phi i64 [ %indvars.iv.next12, %27 ], [ 0, %25 ]
  %exitcond14 = icmp ne i64 %indvars.iv11, 2000
  br i1 %exitcond14, label %27, label %36

27:                                               ; preds = %26
  %28 = getelementptr inbounds ptr, ptr %0, i64 %indvars.iv15
  %29 = load ptr, ptr %28, align 8
  %30 = getelementptr inbounds double, ptr %29, i64 %indvars.iv11
  %31 = load double, ptr %30, align 8
  %32 = getelementptr inbounds double, ptr %1, i64 %indvars.iv11
  %33 = load double, ptr %32, align 8
  %34 = fadd double %33, %31
  store double %34, ptr %32, align 8
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv11, 1
  %35 = trunc nuw nsw i64 %indvars.iv.next12 to i32
  store i32 %35, ptr %5, align 4
  br label %26, !llvm.loop !11

36:                                               ; preds = %26
  %indvars.iv.next16 = add nuw nsw i64 %indvars.iv15, 1
  %37 = trunc nuw nsw i64 %indvars.iv.next16 to i32
  store i32 %37, ptr %6, align 4
  br label %24, !llvm.loop !12

38:                                               ; preds = %24
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
  br label %74

16:                                               ; preds = %4
  %17 = icmp eq i32 %0, 1
  br i1 %17, label %18, label %19

18:                                               ; preds = %16
  store i32 0, ptr %13, align 4
  br label %72

19:                                               ; preds = %16
  %20 = icmp ne i32 %3, 1
  br i1 %20, label %21, label %47

21:                                               ; preds = %19
  %22 = sext i32 %2 to i64
  %23 = getelementptr inbounds double, ptr %1, i64 %22
  %24 = load double, ptr %23, align 8
  %25 = call double @llvm.fabs.f64(double %24)
  store double %25, ptr %9, align 8
  %26 = add i32 1, %3
  store i32 %26, ptr %12, align 4
  store i32 1, ptr %11, align 4
  %27 = sext i32 %26 to i64
  %28 = sext i32 %3 to i64
  %29 = sext i32 %2 to i64
  br label %30

30:                                               ; preds = %41, %21
  %indvars.iv3 = phi i64 [ %indvars.iv.next4, %41 ], [ %27, %21 ]
  %31 = phi i32 [ %42, %41 ], [ 0, %21 ]
  %32 = phi double [ %43, %41 ], [ %25, %21 ]
  %33 = phi i32 [ %45, %41 ], [ 1, %21 ]
  %exitcond6 = icmp ne i32 %33, %0
  br i1 %exitcond6, label %34, label %46

34:                                               ; preds = %30
  %35 = add nsw i64 %indvars.iv3, %29
  %36 = getelementptr inbounds double, ptr %1, i64 %35
  %37 = load double, ptr %36, align 8
  %38 = call double @llvm.fabs.f64(double %37)
  store double %38, ptr %10, align 8
  %39 = fcmp ogt double %38, %32
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store i32 %33, ptr %13, align 4
  store double %38, ptr %9, align 8
  br label %41

41:                                               ; preds = %40, %34
  %42 = phi i32 [ %33, %40 ], [ %31, %34 ]
  %43 = phi double [ %38, %40 ], [ %32, %34 ]
  %indvars.iv.next4 = add nsw i64 %indvars.iv3, %28
  %44 = trunc nsw i64 %indvars.iv.next4 to i32
  store i32 %44, ptr %12, align 4
  %45 = add nuw i32 %33, 1
  store i32 %45, ptr %11, align 4
  br label %30, !llvm.loop !13

46:                                               ; preds = %30
  %.lcssa = phi i32 [ %31, %30 ]
  br label %70

47:                                               ; preds = %19
  store i32 0, ptr %13, align 4
  %48 = sext i32 %2 to i64
  %49 = getelementptr inbounds double, ptr %1, i64 %48
  %50 = load double, ptr %49, align 8
  %51 = call double @llvm.fabs.f64(double %50)
  store double %51, ptr %9, align 8
  store i32 1, ptr %11, align 4
  %52 = sext i32 %2 to i64
  %wide.trip.count = zext i32 %0 to i64
  br label %53

53:                                               ; preds = %65, %47
  %indvars.iv = phi i64 [ %indvars.iv.next, %65 ], [ 1, %47 ]
  %54 = phi i32 [ %66, %65 ], [ 0, %47 ]
  %55 = phi double [ %67, %65 ], [ %51, %47 ]
  %exitcond = icmp ne i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %56, label %69

56:                                               ; preds = %53
  %57 = add nsw i64 %indvars.iv, %52
  %58 = getelementptr inbounds double, ptr %1, i64 %57
  %59 = load double, ptr %58, align 8
  %60 = call double @llvm.fabs.f64(double %59)
  store double %60, ptr %10, align 8
  %61 = fcmp ogt double %60, %55
  br i1 %61, label %62, label %65

62:                                               ; preds = %56
  %63 = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %63, ptr %13, align 4
  store double %60, ptr %9, align 8
  %64 = trunc nuw nsw i64 %indvars.iv to i32
  br label %65

65:                                               ; preds = %62, %56
  %66 = phi i32 [ %64, %62 ], [ %54, %56 ]
  %67 = phi double [ %60, %62 ], [ %55, %56 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %68 = trunc nsw i64 %indvars.iv.next to i32
  store i32 %68, ptr %11, align 4
  br label %53, !llvm.loop !14

69:                                               ; preds = %53
  %.lcssa1 = phi i32 [ %54, %53 ]
  br label %70

70:                                               ; preds = %69, %46
  %71 = phi i32 [ %.lcssa1, %69 ], [ %.lcssa, %46 ]
  br label %72

72:                                               ; preds = %70, %18
  %73 = phi i32 [ %71, %70 ], [ 0, %18 ]
  br label %74

74:                                               ; preds = %72, %15
  %75 = phi i32 [ %73, %72 ], [ -1, %15 ]
  ret i32 %75
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
  %15 = icmp ne i32 %4, 1
  br i1 %15, label %16, label %30

16:                                               ; preds = %14
  %17 = mul nsw i32 %0, %4
  store i32 %17, ptr %12, align 4
  store i32 0, ptr %11, align 4
  %18 = sext i32 %4 to i64
  %19 = sext i32 %17 to i64
  %20 = sext i32 %3 to i64
  br label %21

21:                                               ; preds = %23, %16
  %indvars.iv2 = phi i64 [ %indvars.iv.next3, %23 ], [ 0, %16 ]
  %22 = icmp slt i64 %indvars.iv2, %19
  br i1 %22, label %23, label %29

23:                                               ; preds = %21
  %24 = add nsw i64 %indvars.iv2, %20
  %25 = getelementptr inbounds double, ptr %2, i64 %24
  %26 = load double, ptr %25, align 8
  %27 = fmul double %26, %1
  store double %27, ptr %25, align 8
  %indvars.iv.next3 = add nsw i64 %indvars.iv2, %18
  %28 = trunc nsw i64 %indvars.iv.next3 to i32
  store i32 %28, ptr %11, align 4
  br label %21, !llvm.loop !15

29:                                               ; preds = %21
  br label %40

30:                                               ; preds = %14
  store i32 0, ptr %11, align 4
  %31 = sext i32 %3 to i64
  %wide.trip.count = zext i32 %0 to i64
  br label %32

32:                                               ; preds = %33, %30
  %indvars.iv = phi i64 [ %indvars.iv.next, %33 ], [ 0, %30 ]
  %exitcond = icmp ne i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %33, label %39

33:                                               ; preds = %32
  %34 = add nsw i64 %indvars.iv, %31
  %35 = getelementptr inbounds double, ptr %2, i64 %34
  %36 = load double, ptr %35, align 8
  %37 = fmul double %36, %1
  store double %37, ptr %35, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %38 = trunc nsw i64 %indvars.iv.next to i32
  store i32 %38, ptr %11, align 4
  br label %32, !llvm.loop !16

39:                                               ; preds = %32
  br label %40

40:                                               ; preds = %39, %29
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
  br i1 %20, label %21, label %74

21:                                               ; preds = %8
  %22 = fcmp une double %1, 0.000000e+00
  br i1 %22, label %23, label %74

23:                                               ; preds = %21
  %24 = icmp ne i32 %4, 1
  br i1 %24, label %27, label %25

25:                                               ; preds = %23
  %26 = icmp ne i32 %7, 1
  br i1 %26, label %27, label %60

27:                                               ; preds = %25, %23
  store i32 0, ptr %18, align 4
  store i32 0, ptr %19, align 4
  %28 = icmp slt i32 %4, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %27
  %30 = sub nsw i32 1, %0
  %31 = mul nsw i32 %30, %4
  store i32 %31, ptr %18, align 4
  br label %32

32:                                               ; preds = %29, %27
  %33 = phi i32 [ %31, %29 ], [ 0, %27 ]
  %34 = icmp slt i32 %7, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = sub nsw i32 1, %0
  %37 = mul nsw i32 %36, %7
  store i32 %37, ptr %19, align 4
  br label %38

38:                                               ; preds = %35, %32
  %39 = phi i32 [ %37, %35 ], [ 0, %32 ]
  store i32 0, ptr %17, align 4
  %40 = sext i32 %39 to i64
  %41 = sext i32 %7 to i64
  %42 = sext i32 %6 to i64
  %43 = sext i32 %33 to i64
  %44 = sext i32 %4 to i64
  %45 = sext i32 %3 to i64
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 0)
  br label %46

46:                                               ; preds = %48, %38
  %indvars.iv4 = phi i64 [ %indvars.iv.next5, %48 ], [ %43, %38 ]
  %indvars.iv2 = phi i64 [ %indvars.iv.next3, %48 ], [ %40, %38 ]
  %47 = phi i32 [ %58, %48 ], [ 0, %38 ]
  %exitcond9 = icmp ne i32 %47, %smax
  br i1 %exitcond9, label %48, label %59

48:                                               ; preds = %46
  %49 = add nsw i64 %indvars.iv4, %45
  %50 = getelementptr inbounds double, ptr %2, i64 %49
  %51 = load double, ptr %50, align 8
  %52 = add nsw i64 %indvars.iv2, %42
  %53 = getelementptr inbounds double, ptr %5, i64 %52
  %54 = load double, ptr %53, align 8
  %55 = call double @llvm.fmuladd.f64(double %1, double %51, double %54)
  store double %55, ptr %53, align 8
  %indvars.iv.next5 = add nsw i64 %indvars.iv4, %44
  %56 = trunc nsw i64 %indvars.iv.next5 to i32
  store i32 %56, ptr %18, align 4
  %indvars.iv.next3 = add nsw i64 %indvars.iv2, %41
  %57 = trunc nsw i64 %indvars.iv.next3 to i32
  store i32 %57, ptr %19, align 4
  %58 = add nuw i32 %47, 1
  store i32 %58, ptr %17, align 4
  br label %46, !llvm.loop !17

59:                                               ; preds = %46
  br label %74

60:                                               ; preds = %25
  store i32 0, ptr %17, align 4
  %61 = sext i32 %3 to i64
  %62 = sext i32 %6 to i64
  %wide.trip.count = zext i32 %0 to i64
  br label %63

63:                                               ; preds = %64, %60
  %indvars.iv = phi i64 [ %indvars.iv.next, %64 ], [ 0, %60 ]
  %exitcond = icmp ne i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %64, label %73

64:                                               ; preds = %63
  %65 = add nsw i64 %indvars.iv, %61
  %66 = getelementptr inbounds double, ptr %2, i64 %65
  %67 = load double, ptr %66, align 8
  %68 = add nsw i64 %indvars.iv, %62
  %69 = getelementptr inbounds double, ptr %5, i64 %68
  %70 = load double, ptr %69, align 8
  %71 = call double @llvm.fmuladd.f64(double %1, double %67, double %70)
  store double %71, ptr %69, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %72 = trunc nsw i64 %indvars.iv.next to i32
  store i32 %72, ptr %17, align 4
  br label %63, !llvm.loop !18

73:                                               ; preds = %63
  br label %74

74:                                               ; preds = %73, %59, %21, %8
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

12:                                               ; preds = %65, %2
  %13 = phi ptr [ %66, %65 ], [ %0, %2 ]
  %14 = phi i32 [ %.pre-phi, %65 ], [ 0, %2 ]
  %15 = icmp slt i32 %14, 1999
  br i1 %15, label %16, label %67

16:                                               ; preds = %12
  %17 = sext i32 %14 to i64
  %18 = getelementptr inbounds ptr, ptr %13, i64 %17
  %19 = load ptr, ptr %18, align 8
  store ptr %19, ptr %8, align 8
  %20 = add nsw i32 %14, 1
  store i32 %20, ptr %9, align 4
  %21 = sub nsw i32 2000, %14
  %22 = call i32 @idamax(i32 noundef %21, ptr noundef %19, i32 noundef %14, i32 noundef 1)
  %23 = add nsw i32 %22, %14
  store i32 %23, ptr %10, align 4
  %24 = getelementptr inbounds i32, ptr %1, i64 %17
  store i32 %23, ptr %24, align 4
  %25 = sext i32 %23 to i64
  %26 = getelementptr inbounds double, ptr %19, i64 %25
  %27 = load double, ptr %26, align 8
  %28 = fcmp une double %27, 0.000000e+00
  br i1 %28, label %29, label %65

29:                                               ; preds = %16
  %30 = icmp ne i32 %23, %14
  br i1 %30, label %31, label %._crit_edge

._crit_edge:                                      ; preds = %29
  %.phi.trans.insert = getelementptr inbounds double, ptr %19, i64 %17
  %.pre = load double, ptr %.phi.trans.insert, align 8
  br label %34

31:                                               ; preds = %29
  store double %27, ptr %5, align 8
  %32 = getelementptr inbounds double, ptr %19, i64 %17
  %33 = load double, ptr %32, align 8
  store double %33, ptr %26, align 8
  store double %27, ptr %32, align 8
  br label %34

34:                                               ; preds = %._crit_edge, %31
  %35 = phi double [ %.pre, %._crit_edge ], [ %27, %31 ]
  %36 = fdiv double -1.000000e+00, %35
  store double %36, ptr %5, align 8
  %37 = sub nsw i32 2000, %20
  call void @dscal(i32 noundef %37, double noundef %36, ptr noundef %19, i32 noundef %20, i32 noundef 1)
  store i32 %20, ptr %7, align 4
  %38 = sext i32 %20 to i64
  br label %39

39:                                               ; preds = %58, %34
  %indvars.iv = phi i64 [ %indvars.iv.next, %58 ], [ %38, %34 ]
  %40 = phi i32 [ %59, %58 ], [ %14, %34 ]
  %41 = phi i32 [ %60, %58 ], [ %14, %34 ]
  %42 = phi i32 [ %61, %58 ], [ %23, %34 ]
  %43 = phi ptr [ %0, %58 ], [ %13, %34 ]
  %44 = icmp slt i64 %indvars.iv, 2000
  br i1 %44, label %45, label %63

45:                                               ; preds = %39
  %46 = getelementptr inbounds ptr, ptr %0, i64 %indvars.iv
  %47 = load ptr, ptr %46, align 8
  store ptr %47, ptr %11, align 8
  %48 = sext i32 %42 to i64
  %49 = getelementptr inbounds double, ptr %47, i64 %48
  %50 = load double, ptr %49, align 8
  store double %50, ptr %5, align 8
  %51 = icmp ne i32 %42, %41
  br i1 %51, label %52, label %58

52:                                               ; preds = %45
  %53 = sext i32 %40 to i64
  %54 = getelementptr inbounds double, ptr %47, i64 %53
  %55 = load double, ptr %54, align 8
  %56 = getelementptr inbounds double, ptr %47, i64 %25
  store double %55, ptr %56, align 8
  %57 = getelementptr inbounds double, ptr %47, i64 %17
  store double %50, ptr %57, align 8
  br label %58

58:                                               ; preds = %52, %45
  %59 = phi i32 [ %14, %52 ], [ %40, %45 ]
  %60 = phi i32 [ %14, %52 ], [ %41, %45 ]
  %61 = phi i32 [ %23, %52 ], [ %41, %45 ]
  call void @daxpy(i32 noundef %37, double noundef %50, ptr noundef %19, i32 noundef %20, i32 noundef 1, ptr noundef %47, i32 noundef %20, i32 noundef 1)
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %62 = trunc nsw i64 %indvars.iv.next to i32
  store i32 %62, ptr %7, align 4
  br label %39, !llvm.loop !19

63:                                               ; preds = %39
  %.lcssa2 = phi i32 [ %41, %39 ]
  %.lcssa = phi ptr [ %43, %39 ]
  %64 = getelementptr inbounds double, ptr %19, i64 %17
  %.pre1 = add nsw i32 %.lcssa2, 1
  br label %65

65:                                               ; preds = %63, %16
  %.pre-phi = phi i32 [ %.pre1, %63 ], [ %20, %16 ]
  %66 = phi ptr [ %.lcssa, %63 ], [ %13, %16 ]
  store i32 %.pre-phi, ptr %6, align 4
  br label %12, !llvm.loop !20

67:                                               ; preds = %12
  %68 = getelementptr inbounds i32, ptr %1, i64 1999
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
  store i32 0, ptr %8, align 4
  br label %12

12:                                               ; preds = %24, %3
  %indvars.iv = phi i64 [ %indvars.iv.next, %24 ], [ 0, %3 ]
  %exitcond = icmp ne i64 %indvars.iv, 1999
  br i1 %exitcond, label %13, label %31

13:                                               ; preds = %12
  %14 = getelementptr inbounds i32, ptr %1, i64 %indvars.iv
  %15 = load i32, ptr %14, align 4
  store i32 %15, ptr %10, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds double, ptr %2, i64 %16
  %18 = load double, ptr %17, align 8
  store double %18, ptr %7, align 8
  %19 = zext i32 %15 to i64
  %20 = icmp ne i64 %19, %indvars.iv
  br i1 %20, label %21, label %24

21:                                               ; preds = %13
  %22 = getelementptr inbounds double, ptr %2, i64 %indvars.iv
  %23 = load double, ptr %22, align 8
  store double %23, ptr %17, align 8
  store double %18, ptr %22, align 8
  br label %24

24:                                               ; preds = %21, %13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %indvars = trunc i64 %indvars.iv.next to i32
  %25 = trunc nuw nsw i64 %indvars.iv.next to i32
  store i32 %25, ptr %11, align 4
  %26 = sub nuw nsw i32 2000, %indvars
  %27 = getelementptr inbounds ptr, ptr %0, i64 %indvars.iv
  %28 = load ptr, ptr %27, align 8
  %29 = trunc nuw nsw i64 %indvars.iv.next to i32
  call void @daxpy(i32 noundef %26, double noundef %18, ptr noundef %28, i32 noundef %29, i32 noundef 1, ptr noundef %2, i32 noundef %29, i32 noundef 1)
  %30 = trunc nuw nsw i64 %indvars.iv.next to i32
  store i32 %30, ptr %8, align 4
  br label %12, !llvm.loop !21

31:                                               ; preds = %12
  store i32 0, ptr %9, align 4
  br label %32

32:                                               ; preds = %35, %31
  %indvars.iv2 = phi i64 [ %indvars.iv.next3, %35 ], [ 0, %31 ]
  %33 = phi ptr [ %45, %35 ], [ %2, %31 ]
  %34 = phi ptr [ %49, %35 ], [ %0, %31 ]
  %exitcond6 = icmp ne i64 %indvars.iv2, 2000
  br i1 %exitcond6, label %35, label %54

35:                                               ; preds = %32
  %indvars.iv.next3 = add nuw nsw i64 %indvars.iv2, 1
  %36 = sub nsw i64 2000, %indvars.iv.next3
  %37 = trunc nsw i64 %36 to i32
  store i32 %37, ptr %8, align 4
  %38 = getelementptr inbounds ptr, ptr %34, i64 %36
  %39 = load ptr, ptr %38, align 8
  %40 = getelementptr inbounds double, ptr %39, i64 %36
  %41 = load double, ptr %40, align 8
  %42 = getelementptr inbounds double, ptr %33, i64 %36
  %43 = load double, ptr %42, align 8
  %44 = fdiv double %43, %41
  store double %44, ptr %42, align 8
  %45 = load ptr, ptr %6, align 8
  %46 = getelementptr inbounds double, ptr %45, i64 %36
  %47 = load double, ptr %46, align 8
  %48 = fneg double %47
  store double %48, ptr %7, align 8
  %49 = load ptr, ptr %4, align 8
  %50 = getelementptr inbounds ptr, ptr %49, i64 %36
  %51 = load ptr, ptr %50, align 8
  %52 = trunc nsw i64 %36 to i32
  call void @daxpy(i32 noundef %52, double noundef %48, ptr noundef %51, i32 noundef 0, i32 noundef 1, ptr noundef %45, i32 noundef 0, i32 noundef 1)
  %53 = trunc nuw nsw i64 %indvars.iv.next3 to i32
  store i32 %53, ptr %9, align 4
  br label %32, !llvm.loop !22

54:                                               ; preds = %32
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
  %14 = icmp sgt i32 %0, 1
  br i1 %14, label %15, label %27

15:                                               ; preds = %2
  store i32 1, ptr %6, align 4
  br label %16

16:                                               ; preds = %24, %15
  %17 = phi i32 [ %25, %24 ], [ 1, %15 ]
  %exitcond = icmp ne i32 %17, %0
  br i1 %exitcond, label %18, label %.loopexit

18:                                               ; preds = %16
  %19 = getelementptr inbounds ptr, ptr %1, i64 1
  %20 = load ptr, ptr %19, align 8
  %21 = call i32 @strcmp(ptr noundef %20, ptr noundef @.str) #5
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  store i8 1, ptr %7, align 1
  br label %26

24:                                               ; preds = %18
  %25 = add nuw i32 %17, 1
  store i32 %25, ptr %6, align 4
  br label %16, !llvm.loop !23

.loopexit:                                        ; preds = %16
  br label %26

26:                                               ; preds = %.loopexit, %23
  br label %27

27:                                               ; preds = %26, %2
  %28 = call ptr @malloc(i64 noundef 16000) #6
  store ptr %28, ptr %8, align 8
  store i32 0, ptr %6, align 4
  br label %29

29:                                               ; preds = %30, %27
  %indvars.iv = phi i64 [ %indvars.iv.next, %30 ], [ 0, %27 ]
  %exitcond2 = icmp ne i64 %indvars.iv, 2000
  br i1 %exitcond2, label %30, label %34

30:                                               ; preds = %29
  %31 = call ptr @malloc(i64 noundef 16008) #6
  %32 = getelementptr inbounds ptr, ptr %28, i64 %indvars.iv
  store ptr %31, ptr %32, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %33 = trunc nuw nsw i64 %indvars.iv.next to i32
  store i32 %33, ptr %6, align 4
  br label %29, !llvm.loop !24

34:                                               ; preds = %29
  %35 = call ptr @malloc(i64 noundef 16000) #6
  store ptr %35, ptr %9, align 8
  %36 = call ptr @malloc(i64 noundef 16000) #6
  store ptr %36, ptr %10, align 8
  %37 = call ptr @malloc(i64 noundef 8000) #6
  store ptr %37, ptr %11, align 8
  store double f0x41F3E5E475555555, ptr %12, align 8
  call void @matgen(ptr noundef %28, ptr noundef %35)
  call void @dgefa(ptr noundef %28, ptr noundef %37)
  call void @dgesl(ptr noundef %28, ptr noundef %37, ptr noundef %35)
  store double 0.000000e+00, ptr %13, align 8
  call void @free(ptr noundef %37)
  call void @free(ptr noundef %36)
  call void @free(ptr noundef %35)
  store i32 0, ptr %6, align 4
  br label %38

38:                                               ; preds = %39, %34
  %indvars.iv3 = phi i64 [ %indvars.iv.next4, %39 ], [ 0, %34 ]
  %exitcond6 = icmp ne i64 %indvars.iv3, 2000
  br i1 %exitcond6, label %39, label %43

39:                                               ; preds = %38
  %40 = getelementptr inbounds ptr, ptr %28, i64 %indvars.iv3
  %41 = load ptr, ptr %40, align 8
  call void @free(ptr noundef %41)
  %indvars.iv.next4 = add nuw nsw i64 %indvars.iv3, 1
  %42 = trunc nuw nsw i64 %indvars.iv.next4 to i32
  store i32 %42, ptr %6, align 4
  br label %38, !llvm.loop !25

43:                                               ; preds = %38
  call void @free(ptr noundef %28)
  %44 = load i8, ptr %7, align 1
  %45 = icmp ne i8 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = call ptr @__acrt_iob_func(i32 noundef 1)
  %48 = load double, ptr %13, align 8
  %49 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %47, ptr noundef @.str.1, double noundef %48) #5
  br label %54

50:                                               ; preds = %43
  %51 = call ptr @__acrt_iob_func(i32 noundef 1)
  %52 = load double, ptr %13, align 8
  %53 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %51, ptr noundef @.str.2, double noundef %52) #5
  br label %54

54:                                               ; preds = %50, %46
  %55 = call ptr @__acrt_iob_func(i32 noundef 1)
  %56 = call i32 @fflush(ptr noundef %55)
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
  %6 = mul nsw i32 %5, 127773
  %7 = sub nsw i32 %4, %6
  %8 = mul nsw i32 16807, %7
  %9 = mul nsw i32 2836, %5
  %10 = sub nsw i32 %8, %9
  store i32 %10, ptr @seed, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %0
  %13 = add nsw i32 %10, 2147483647
  store i32 %13, ptr @seed, align 4
  br label %14

14:                                               ; preds = %12, %0
  %15 = phi i32 [ %13, %12 ], [ %10, %0 ]
  %16 = sitofp i32 %15 to double
  %17 = fmul double f0x3E00000000200FE1, %16
  store double %17, ptr %2, align 8
  %18 = xor i32 %15, 123459876
  store i32 %18, ptr @seed, align 4
  ret double %17
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
