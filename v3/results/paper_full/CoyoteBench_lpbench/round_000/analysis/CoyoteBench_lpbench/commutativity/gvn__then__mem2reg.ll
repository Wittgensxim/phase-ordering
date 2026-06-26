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
  br label %3

3:                                                ; preds = %20, %2
  %4 = phi ptr [ %10, %20 ], [ %0, %2 ]
  %5 = phi i32 [ %21, %20 ], [ 0, %2 ]
  %6 = icmp slt i32 %5, 2000
  br i1 %6, label %7, label %22

7:                                                ; preds = %3
  br label %8

8:                                                ; preds = %12, %7
  %9 = phi i32 [ %19, %12 ], [ 0, %7 ]
  %10 = phi ptr [ %0, %12 ], [ %4, %7 ]
  %11 = icmp slt i32 %9, 2000
  br i1 %11, label %12, label %20

12:                                               ; preds = %8
  %13 = call double @random_double()
  %14 = sext i32 %9 to i64
  %15 = getelementptr inbounds ptr, ptr %0, i64 %14
  %16 = load ptr, ptr %15, align 8
  %17 = sext i32 %5 to i64
  %18 = getelementptr inbounds double, ptr %16, i64 %17
  store double %13, ptr %18, align 8
  %19 = add nsw i32 %9, 1
  br label %8, !llvm.loop !7

20:                                               ; preds = %8
  %21 = add nsw i32 %5, 1
  br label %3, !llvm.loop !9

22:                                               ; preds = %3
  br label %23

23:                                               ; preds = %26, %22
  %24 = phi i32 [ %29, %26 ], [ 0, %22 ]
  %25 = icmp slt i32 %24, 2000
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = sext i32 %24 to i64
  %28 = getelementptr inbounds double, ptr %1, i64 %27
  store double 0.000000e+00, ptr %28, align 8
  %29 = add nsw i32 %24, 1
  br label %23, !llvm.loop !10

30:                                               ; preds = %23
  br label %31

31:                                               ; preds = %49, %30
  %32 = phi i32 [ %50, %49 ], [ 0, %30 ]
  %33 = icmp slt i32 %32, 2000
  br i1 %33, label %34, label %51

34:                                               ; preds = %31
  br label %35

35:                                               ; preds = %38, %34
  %36 = phi i32 [ %48, %38 ], [ 0, %34 ]
  %37 = icmp slt i32 %36, 2000
  br i1 %37, label %38, label %49

38:                                               ; preds = %35
  %39 = sext i32 %32 to i64
  %40 = getelementptr inbounds ptr, ptr %4, i64 %39
  %41 = load ptr, ptr %40, align 8
  %42 = sext i32 %36 to i64
  %43 = getelementptr inbounds double, ptr %41, i64 %42
  %44 = load double, ptr %43, align 8
  %45 = getelementptr inbounds double, ptr %1, i64 %42
  %46 = load double, ptr %45, align 8
  %47 = fadd double %46, %44
  store double %47, ptr %45, align 8
  %48 = add nsw i32 %36, 1
  br label %35, !llvm.loop !11

49:                                               ; preds = %35
  %50 = add nsw i32 %32, 1
  br label %31, !llvm.loop !12

51:                                               ; preds = %31
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @idamax(i32 noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = icmp slt i32 %0, 1
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  br label %65

7:                                                ; preds = %4
  %8 = icmp eq i32 %0, 1
  br i1 %8, label %9, label %10

9:                                                ; preds = %7
  br label %63

10:                                               ; preds = %7
  %11 = icmp ne i32 %3, 1
  br i1 %11, label %12, label %38

12:                                               ; preds = %10
  %13 = sext i32 %2 to i64
  %14 = getelementptr inbounds double, ptr %1, i64 %13
  %15 = load double, ptr %14, align 8
  %16 = call double @llvm.fabs.f64(double %15)
  %17 = add nsw i32 1, %3
  br label %18

18:                                               ; preds = %32, %12
  %19 = phi i32 [ %33, %32 ], [ 0, %12 ]
  %20 = phi double [ %34, %32 ], [ %16, %12 ]
  %21 = phi i32 [ %35, %32 ], [ %17, %12 ]
  %22 = phi i32 [ %36, %32 ], [ 1, %12 ]
  %23 = icmp slt i32 %22, %0
  br i1 %23, label %24, label %37

24:                                               ; preds = %18
  %25 = add nsw i32 %21, %2
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds double, ptr %1, i64 %26
  %28 = load double, ptr %27, align 8
  %29 = call double @llvm.fabs.f64(double %28)
  %30 = fcmp ogt double %29, %20
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  br label %32

32:                                               ; preds = %31, %24
  %33 = phi i32 [ %22, %31 ], [ %19, %24 ]
  %34 = phi double [ %29, %31 ], [ %20, %24 ]
  %35 = add nsw i32 %21, %3
  %36 = add nsw i32 %22, 1
  br label %18, !llvm.loop !13

37:                                               ; preds = %18
  br label %61

38:                                               ; preds = %10
  %39 = sext i32 %2 to i64
  %40 = getelementptr inbounds double, ptr %1, i64 %39
  %41 = load double, ptr %40, align 8
  %42 = call double @llvm.fabs.f64(double %41)
  br label %43

43:                                               ; preds = %56, %38
  %44 = phi i32 [ %57, %56 ], [ 0, %38 ]
  %45 = phi double [ %58, %56 ], [ %42, %38 ]
  %46 = phi i32 [ %59, %56 ], [ 1, %38 ]
  %47 = icmp slt i32 %46, %0
  br i1 %47, label %48, label %60

48:                                               ; preds = %43
  %49 = add nsw i32 %46, %2
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds double, ptr %1, i64 %50
  %52 = load double, ptr %51, align 8
  %53 = call double @llvm.fabs.f64(double %52)
  %54 = fcmp ogt double %53, %45
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  br label %56

56:                                               ; preds = %55, %48
  %57 = phi i32 [ %46, %55 ], [ %44, %48 ]
  %58 = phi double [ %53, %55 ], [ %45, %48 ]
  %59 = add nsw i32 %46, 1
  br label %43, !llvm.loop !14

60:                                               ; preds = %43
  br label %61

61:                                               ; preds = %60, %37
  %62 = phi i32 [ %44, %60 ], [ %19, %37 ]
  br label %63

63:                                               ; preds = %61, %9
  %64 = phi i32 [ %62, %61 ], [ 0, %9 ]
  br label %65

65:                                               ; preds = %63, %6
  %66 = phi i32 [ %64, %63 ], [ -1, %6 ]
  ret i32 %66
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @dscal(i32 noundef %0, double noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = icmp sgt i32 %0, 0
  br i1 %6, label %7, label %35

7:                                                ; preds = %5
  %8 = icmp ne i32 %4, 1
  br i1 %8, label %9, label %22

9:                                                ; preds = %7
  %10 = mul nsw i32 %0, %4
  br label %11

11:                                               ; preds = %14, %9
  %12 = phi i32 [ %20, %14 ], [ 0, %9 ]
  %13 = icmp slt i32 %12, %10
  br i1 %13, label %14, label %21

14:                                               ; preds = %11
  %15 = add nsw i32 %12, %3
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds double, ptr %2, i64 %16
  %18 = load double, ptr %17, align 8
  %19 = fmul double %18, %1
  store double %19, ptr %17, align 8
  %20 = add nsw i32 %12, %4
  br label %11, !llvm.loop !15

21:                                               ; preds = %11
  br label %34

22:                                               ; preds = %7
  br label %23

23:                                               ; preds = %26, %22
  %24 = phi i32 [ %32, %26 ], [ 0, %22 ]
  %25 = icmp slt i32 %24, %0
  br i1 %25, label %26, label %33

26:                                               ; preds = %23
  %27 = add nsw i32 %24, %3
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds double, ptr %2, i64 %28
  %30 = load double, ptr %29, align 8
  %31 = fmul double %30, %1
  store double %31, ptr %29, align 8
  %32 = add nsw i32 %24, 1
  br label %23, !llvm.loop !16

33:                                               ; preds = %23
  br label %34

34:                                               ; preds = %33, %21
  br label %35

35:                                               ; preds = %34, %5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @daxpy(i32 noundef %0, double noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7) #0 {
  %9 = icmp sgt i32 %0, 0
  br i1 %9, label %10, label %64

10:                                               ; preds = %8
  %11 = fcmp une double %1, 0.000000e+00
  br i1 %11, label %12, label %64

12:                                               ; preds = %10
  %13 = icmp ne i32 %4, 1
  br i1 %13, label %16, label %14

14:                                               ; preds = %12
  %15 = icmp ne i32 %7, 1
  br i1 %15, label %16, label %48

16:                                               ; preds = %14, %12
  %17 = icmp slt i32 %4, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %16
  %19 = sub nsw i32 1, %0
  %20 = mul nsw i32 %19, %4
  br label %21

21:                                               ; preds = %18, %16
  %22 = phi i32 [ %20, %18 ], [ 0, %16 ]
  %23 = icmp slt i32 %7, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = sub nsw i32 1, %0
  %26 = mul nsw i32 %25, %7
  br label %27

27:                                               ; preds = %24, %21
  %28 = phi i32 [ %26, %24 ], [ 0, %21 ]
  br label %29

29:                                               ; preds = %34, %27
  %30 = phi i32 [ %45, %34 ], [ %28, %27 ]
  %31 = phi i32 [ %44, %34 ], [ %22, %27 ]
  %32 = phi i32 [ %46, %34 ], [ 0, %27 ]
  %33 = icmp slt i32 %32, %0
  br i1 %33, label %34, label %47

34:                                               ; preds = %29
  %35 = add nsw i32 %31, %3
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds double, ptr %2, i64 %36
  %38 = load double, ptr %37, align 8
  %39 = add nsw i32 %30, %6
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds double, ptr %5, i64 %40
  %42 = load double, ptr %41, align 8
  %43 = call double @llvm.fmuladd.f64(double %1, double %38, double %42)
  store double %43, ptr %41, align 8
  %44 = add nsw i32 %31, %4
  %45 = add nsw i32 %30, %7
  %46 = add nsw i32 %32, 1
  br label %29, !llvm.loop !17

47:                                               ; preds = %29
  br label %64

48:                                               ; preds = %14
  br label %49

49:                                               ; preds = %52, %48
  %50 = phi i32 [ %62, %52 ], [ 0, %48 ]
  %51 = icmp slt i32 %50, %0
  br i1 %51, label %52, label %63

52:                                               ; preds = %49
  %53 = add nsw i32 %50, %3
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds double, ptr %2, i64 %54
  %56 = load double, ptr %55, align 8
  %57 = add nsw i32 %50, %6
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds double, ptr %5, i64 %58
  %60 = load double, ptr %59, align 8
  %61 = call double @llvm.fmuladd.f64(double %1, double %56, double %60)
  store double %61, ptr %59, align 8
  %62 = add nsw i32 %50, 1
  br label %49, !llvm.loop !18

63:                                               ; preds = %49
  br label %64

64:                                               ; preds = %63, %47, %10, %8
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @dgefa(ptr noundef %0, ptr noundef %1) #0 {
  br label %3

3:                                                ; preds = %57, %2
  %4 = phi ptr [ %59, %57 ], [ %0, %2 ]
  %5 = phi i32 [ %.pre-phi, %57 ], [ 0, %2 ]
  %6 = icmp slt i32 %5, 1999
  br i1 %6, label %7, label %60

7:                                                ; preds = %3
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %4, i64 %8
  %10 = load ptr, ptr %9, align 8
  %11 = add nsw i32 %5, 1
  %12 = sub nsw i32 2000, %5
  %13 = call i32 @idamax(i32 noundef %12, ptr noundef %10, i32 noundef %5, i32 noundef 1)
  %14 = add nsw i32 %13, %5
  %15 = getelementptr inbounds i32, ptr %1, i64 %8
  store i32 %14, ptr %15, align 4
  %16 = sext i32 %14 to i64
  %17 = getelementptr inbounds double, ptr %10, i64 %16
  %18 = load double, ptr %17, align 8
  %19 = fcmp une double %18, 0.000000e+00
  br i1 %19, label %20, label %57

20:                                               ; preds = %7
  %21 = icmp ne i32 %14, %5
  br i1 %21, label %22, label %._crit_edge

._crit_edge:                                      ; preds = %20
  %.phi.trans.insert = getelementptr inbounds double, ptr %10, i64 %8
  %.pre = load double, ptr %.phi.trans.insert, align 8
  br label %25

22:                                               ; preds = %20
  %23 = getelementptr inbounds double, ptr %10, i64 %8
  %24 = load double, ptr %23, align 8
  store double %24, ptr %17, align 8
  store double %18, ptr %23, align 8
  br label %25

25:                                               ; preds = %._crit_edge, %22
  %26 = phi double [ %.pre, %._crit_edge ], [ %18, %22 ]
  %27 = getelementptr inbounds double, ptr %10, i64 %8
  %28 = fdiv double -1.000000e+00, %26
  %29 = sub nsw i32 2000, %11
  call void @dscal(i32 noundef %29, double noundef %28, ptr noundef %10, i32 noundef %11, i32 noundef 1)
  br label %30

30:                                               ; preds = %51, %25
  %31 = phi i32 [ %52, %51 ], [ %5, %25 ]
  %32 = phi i32 [ %53, %51 ], [ %5, %25 ]
  %33 = phi i32 [ %54, %51 ], [ %14, %25 ]
  %34 = phi i32 [ %55, %51 ], [ %11, %25 ]
  %35 = phi ptr [ %0, %51 ], [ %4, %25 ]
  %36 = icmp slt i32 %34, 2000
  br i1 %36, label %37, label %56

37:                                               ; preds = %30
  %38 = sext i32 %34 to i64
  %39 = getelementptr inbounds ptr, ptr %0, i64 %38
  %40 = load ptr, ptr %39, align 8
  %41 = sext i32 %33 to i64
  %42 = getelementptr inbounds double, ptr %40, i64 %41
  %43 = load double, ptr %42, align 8
  %44 = icmp ne i32 %33, %32
  br i1 %44, label %45, label %51

45:                                               ; preds = %37
  %46 = sext i32 %31 to i64
  %47 = getelementptr inbounds double, ptr %40, i64 %46
  %48 = load double, ptr %47, align 8
  %49 = getelementptr inbounds double, ptr %40, i64 %16
  store double %48, ptr %49, align 8
  %50 = getelementptr inbounds double, ptr %40, i64 %8
  store double %43, ptr %50, align 8
  br label %51

51:                                               ; preds = %45, %37
  %52 = phi i32 [ %5, %45 ], [ %31, %37 ]
  %53 = phi i32 [ %5, %45 ], [ %32, %37 ]
  %54 = phi i32 [ %14, %45 ], [ %32, %37 ]
  call void @daxpy(i32 noundef %29, double noundef %43, ptr noundef %10, i32 noundef %11, i32 noundef 1, ptr noundef %40, i32 noundef %11, i32 noundef 1)
  %55 = add nsw i32 %34, 1
  br label %30, !llvm.loop !19

56:                                               ; preds = %30
  %.pre1 = add nsw i32 %32, 1
  br label %57

57:                                               ; preds = %56, %7
  %.pre-phi = phi i32 [ %.pre1, %56 ], [ %11, %7 ]
  %58 = phi i32 [ %32, %56 ], [ %5, %7 ]
  %59 = phi ptr [ %35, %56 ], [ %4, %7 ]
  br label %3, !llvm.loop !20

60:                                               ; preds = %3
  %61 = getelementptr inbounds i32, ptr %1, i64 1999
  store i32 1999, ptr %61, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @dgesl(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  br label %4

4:                                                ; preds = %18, %3
  %5 = phi i32 [ %19, %18 ], [ 0, %3 ]
  %6 = icmp slt i32 %5, 1999
  br i1 %6, label %7, label %23

7:                                                ; preds = %4
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds i32, ptr %1, i64 %8
  %10 = load i32, ptr %9, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds double, ptr %2, i64 %11
  %13 = load double, ptr %12, align 8
  %14 = icmp ne i32 %10, %5
  br i1 %14, label %15, label %18

15:                                               ; preds = %7
  %16 = getelementptr inbounds double, ptr %2, i64 %8
  %17 = load double, ptr %16, align 8
  store double %17, ptr %12, align 8
  store double %13, ptr %16, align 8
  br label %18

18:                                               ; preds = %15, %7
  %19 = add nsw i32 %5, 1
  %20 = sub nsw i32 2000, %19
  %21 = getelementptr inbounds ptr, ptr %0, i64 %8
  %22 = load ptr, ptr %21, align 8
  call void @daxpy(i32 noundef %20, double noundef %13, ptr noundef %22, i32 noundef %19, i32 noundef 1, ptr noundef %2, i32 noundef %19, i32 noundef 1)
  br label %4, !llvm.loop !21

23:                                               ; preds = %4
  br label %24

24:                                               ; preds = %29, %23
  %25 = phi ptr [ %2, %29 ], [ %2, %23 ]
  %26 = phi ptr [ %0, %29 ], [ %0, %23 ]
  %27 = phi i32 [ %30, %29 ], [ 0, %23 ]
  %28 = icmp slt i32 %27, 2000
  br i1 %28, label %29, label %45

29:                                               ; preds = %24
  %30 = add nsw i32 %27, 1
  %31 = sub nsw i32 2000, %30
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds ptr, ptr %26, i64 %32
  %34 = load ptr, ptr %33, align 8
  %35 = getelementptr inbounds double, ptr %34, i64 %32
  %36 = load double, ptr %35, align 8
  %37 = getelementptr inbounds double, ptr %25, i64 %32
  %38 = load double, ptr %37, align 8
  %39 = fdiv double %38, %36
  store double %39, ptr %37, align 8
  %40 = getelementptr inbounds double, ptr %2, i64 %32
  %41 = load double, ptr %40, align 8
  %42 = fneg double %41
  %43 = getelementptr inbounds ptr, ptr %0, i64 %32
  %44 = load ptr, ptr %43, align 8
  call void @daxpy(i32 noundef %31, double noundef %42, ptr noundef %44, i32 noundef 0, i32 noundef 1, ptr noundef %2, i32 noundef 0, i32 noundef 1)
  br label %24, !llvm.loop !22

45:                                               ; preds = %24
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = icmp sgt i32 %0, 1
  br i1 %3, label %4, label %17

4:                                                ; preds = %2
  br label %5

5:                                                ; preds = %14, %4
  %6 = phi i32 [ %15, %14 ], [ 1, %4 ]
  %7 = icmp slt i32 %6, %0
  br i1 %7, label %8, label %16

8:                                                ; preds = %5
  %9 = getelementptr inbounds ptr, ptr %1, i64 1
  %10 = load ptr, ptr %9, align 8
  %11 = call i32 @strcmp(ptr noundef %10, ptr noundef @.str) #5
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  br label %16

14:                                               ; preds = %8
  %15 = add nsw i32 %6, 1
  br label %5, !llvm.loop !23

16:                                               ; preds = %13, %5
  %.1 = phi i8 [ 1, %13 ], [ 0, %5 ]
  br label %17

17:                                               ; preds = %16, %2
  %.0 = phi i8 [ %.1, %16 ], [ 0, %2 ]
  %18 = call ptr @malloc(i64 noundef 16000) #6
  br label %19

19:                                               ; preds = %22, %17
  %20 = phi i32 [ %26, %22 ], [ 0, %17 ]
  %21 = icmp slt i32 %20, 2000
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = call ptr @malloc(i64 noundef 16008) #6
  %24 = sext i32 %20 to i64
  %25 = getelementptr inbounds ptr, ptr %18, i64 %24
  store ptr %23, ptr %25, align 8
  %26 = add nsw i32 %20, 1
  br label %19, !llvm.loop !24

27:                                               ; preds = %19
  %28 = call ptr @malloc(i64 noundef 16000) #6
  %29 = call ptr @malloc(i64 noundef 16000) #6
  %30 = call ptr @malloc(i64 noundef 8000) #6
  call void @matgen(ptr noundef %18, ptr noundef %28)
  call void @dgefa(ptr noundef %18, ptr noundef %30)
  call void @dgesl(ptr noundef %18, ptr noundef %30, ptr noundef %28)
  call void @free(ptr noundef %30)
  call void @free(ptr noundef %29)
  call void @free(ptr noundef %28)
  br label %31

31:                                               ; preds = %34, %27
  %32 = phi i32 [ %38, %34 ], [ 0, %27 ]
  %33 = icmp slt i32 %32, 2000
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = sext i32 %32 to i64
  %36 = getelementptr inbounds ptr, ptr %18, i64 %35
  %37 = load ptr, ptr %36, align 8
  call void @free(ptr noundef %37)
  %38 = add nsw i32 %32, 1
  br label %31, !llvm.loop !25

39:                                               ; preds = %31
  call void @free(ptr noundef %18)
  %40 = icmp ne i8 %.0, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %39
  %42 = call ptr @__acrt_iob_func(i32 noundef 1)
  %43 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %42, ptr noundef @.str.1, double noundef 0.000000e+00) #5
  br label %47

44:                                               ; preds = %39
  %45 = call ptr @__acrt_iob_func(i32 noundef 1)
  %46 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %45, ptr noundef @.str.2, double noundef 0.000000e+00) #5
  br label %47

47:                                               ; preds = %44, %41
  %48 = call ptr @__acrt_iob_func(i32 noundef 1)
  %49 = call i32 @fflush(ptr noundef %48)
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
  %4 = mul nsw i32 %3, 127773
  %5 = sub nsw i32 %2, %4
  %6 = mul nsw i32 16807, %5
  %7 = mul nsw i32 2836, %3
  %8 = sub nsw i32 %6, %7
  store i32 %8, ptr @seed, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %0
  %11 = add nsw i32 %8, 2147483647
  store i32 %11, ptr @seed, align 4
  br label %12

12:                                               ; preds = %10, %0
  %13 = phi i32 [ %11, %10 ], [ %8, %0 ]
  %14 = sitofp i32 %13 to double
  %15 = fmul double f0x3E00000000200FE1, %14
  %16 = xor i32 %13, 123459876
  store i32 %16, ptr @seed, align 4
  ret double %15
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
