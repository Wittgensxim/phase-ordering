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

3:                                                ; preds = %18, %2
  %storemerge = phi i32 [ 0, %2 ], [ %19, %18 ]
  %4 = icmp slt i32 %storemerge, 2000
  br i1 %4, label %5, label %20

5:                                                ; preds = %3
  br label %6

6:                                                ; preds = %15, %5
  %storemerge4 = phi i32 [ 0, %5 ], [ %16, %15 ]
  %7 = icmp slt i32 %storemerge4, 2000
  br i1 %7, label %8, label %17

8:                                                ; preds = %6
  %9 = call double @random_double()
  %10 = sext i32 %storemerge4 to i64
  %11 = getelementptr inbounds [8 x i8], ptr %0, i64 %10
  %12 = load ptr, ptr %11, align 8
  %13 = sext i32 %storemerge to i64
  %14 = getelementptr inbounds [8 x i8], ptr %12, i64 %13
  store double %9, ptr %14, align 8
  br label %15

15:                                               ; preds = %8
  %16 = add nsw i32 %storemerge4, 1
  br label %6, !llvm.loop !7

17:                                               ; preds = %6
  br label %18

18:                                               ; preds = %17
  %19 = add nsw i32 %storemerge, 1
  br label %3, !llvm.loop !9

20:                                               ; preds = %3
  br label %21

21:                                               ; preds = %26, %20
  %storemerge1 = phi i32 [ 0, %20 ], [ %27, %26 ]
  %22 = icmp slt i32 %storemerge1, 2000
  br i1 %22, label %23, label %28

23:                                               ; preds = %21
  %24 = sext i32 %storemerge1 to i64
  %25 = getelementptr inbounds [8 x i8], ptr %1, i64 %24
  store double 0.000000e+00, ptr %25, align 8
  br label %26

26:                                               ; preds = %23
  %27 = add nsw i32 %storemerge1, 1
  br label %21, !llvm.loop !10

28:                                               ; preds = %21
  br label %29

29:                                               ; preds = %48, %28
  %storemerge2 = phi i32 [ 0, %28 ], [ %49, %48 ]
  %30 = icmp slt i32 %storemerge2, 2000
  br i1 %30, label %31, label %50

31:                                               ; preds = %29
  br label %32

32:                                               ; preds = %45, %31
  %storemerge3 = phi i32 [ 0, %31 ], [ %46, %45 ]
  %33 = icmp slt i32 %storemerge3, 2000
  br i1 %33, label %34, label %47

34:                                               ; preds = %32
  %35 = sext i32 %storemerge2 to i64
  %36 = getelementptr inbounds [8 x i8], ptr %0, i64 %35
  %37 = load ptr, ptr %36, align 8
  %38 = sext i32 %storemerge3 to i64
  %39 = getelementptr inbounds [8 x i8], ptr %37, i64 %38
  %40 = load double, ptr %39, align 8
  %41 = sext i32 %storemerge3 to i64
  %42 = getelementptr inbounds [8 x i8], ptr %1, i64 %41
  %43 = load double, ptr %42, align 8
  %44 = fadd double %43, %40
  store double %44, ptr %42, align 8
  br label %45

45:                                               ; preds = %34
  %46 = add nsw i32 %storemerge3, 1
  br label %32, !llvm.loop !11

47:                                               ; preds = %32
  br label %48

48:                                               ; preds = %47
  %49 = add nsw i32 %storemerge2, 1
  br label %29, !llvm.loop !12

50:                                               ; preds = %29
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @idamax(i32 noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = icmp slt i32 %0, 1
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  br label %53

7:                                                ; preds = %4
  %8 = icmp eq i32 %0, 1
  br i1 %8, label %9, label %10

9:                                                ; preds = %7
  br label %52

10:                                               ; preds = %7
  %.not = icmp eq i32 %3, 1
  br i1 %.not, label %32, label %11

11:                                               ; preds = %10
  %12 = sext i32 %2 to i64
  %13 = getelementptr inbounds [8 x i8], ptr %1, i64 %12
  %14 = load double, ptr %13, align 8
  %15 = call double @llvm.fabs.f64(double %14)
  %16 = add nsw i32 %3, 1
  br label %17

17:                                               ; preds = %29, %11
  %.03 = phi double [ %15, %11 ], [ %.14, %29 ]
  %.02 = phi i32 [ %16, %11 ], [ %28, %29 ]
  %.2 = phi i32 [ 0, %11 ], [ %.3, %29 ]
  %storemerge1 = phi i32 [ 1, %11 ], [ %30, %29 ]
  %18 = icmp slt i32 %storemerge1, %0
  br i1 %18, label %19, label %31

19:                                               ; preds = %17
  %20 = add nsw i32 %.02, %2
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [8 x i8], ptr %1, i64 %21
  %23 = load double, ptr %22, align 8
  %24 = call double @llvm.fabs.f64(double %23)
  %25 = fcmp ogt double %24, %.03
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  br label %27

27:                                               ; preds = %26, %19
  %.14 = phi double [ %24, %26 ], [ %.03, %19 ]
  %.3 = phi i32 [ %storemerge1, %26 ], [ %.2, %19 ]
  %28 = add nsw i32 %.02, %3
  br label %29

29:                                               ; preds = %27
  %30 = add nsw i32 %storemerge1, 1
  br label %17, !llvm.loop !13

31:                                               ; preds = %17
  br label %51

32:                                               ; preds = %10
  %33 = sext i32 %2 to i64
  %34 = getelementptr inbounds [8 x i8], ptr %1, i64 %33
  %35 = load double, ptr %34, align 8
  %36 = call double @llvm.fabs.f64(double %35)
  br label %37

37:                                               ; preds = %48, %32
  %.25 = phi double [ %36, %32 ], [ %.36, %48 ]
  %.5 = phi i32 [ 0, %32 ], [ %.6, %48 ]
  %storemerge = phi i32 [ 1, %32 ], [ %49, %48 ]
  %38 = icmp slt i32 %storemerge, %0
  br i1 %38, label %39, label %50

39:                                               ; preds = %37
  %40 = add nsw i32 %storemerge, %2
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [8 x i8], ptr %1, i64 %41
  %43 = load double, ptr %42, align 8
  %44 = call double @llvm.fabs.f64(double %43)
  %45 = fcmp ogt double %44, %.25
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  br label %47

47:                                               ; preds = %46, %39
  %.36 = phi double [ %44, %46 ], [ %.25, %39 ]
  %.6 = phi i32 [ %storemerge, %46 ], [ %.5, %39 ]
  br label %48

48:                                               ; preds = %47
  %49 = add nsw i32 %storemerge, 1
  br label %37, !llvm.loop !14

50:                                               ; preds = %37
  br label %51

51:                                               ; preds = %50, %31
  %.4 = phi i32 [ %.5, %50 ], [ %.2, %31 ]
  br label %52

52:                                               ; preds = %51, %9
  %.1 = phi i32 [ 0, %9 ], [ %.4, %51 ]
  br label %53

53:                                               ; preds = %52, %6
  %.0 = phi i32 [ -1, %6 ], [ %.1, %52 ]
  ret i32 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @dscal(i32 noundef %0, double noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = icmp sgt i32 %0, 0
  br i1 %6, label %7, label %34

7:                                                ; preds = %5
  %.not = icmp eq i32 %4, 1
  br i1 %.not, label %21, label %8

8:                                                ; preds = %7
  %9 = mul nsw i32 %0, %4
  br label %10

10:                                               ; preds = %18, %8
  %storemerge1 = phi i32 [ 0, %8 ], [ %19, %18 ]
  %11 = icmp slt i32 %storemerge1, %9
  br i1 %11, label %12, label %20

12:                                               ; preds = %10
  %13 = add nsw i32 %storemerge1, %3
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [8 x i8], ptr %2, i64 %14
  %16 = load double, ptr %15, align 8
  %17 = fmul double %16, %1
  store double %17, ptr %15, align 8
  br label %18

18:                                               ; preds = %12
  %19 = add nsw i32 %storemerge1, %4
  br label %10, !llvm.loop !15

20:                                               ; preds = %10
  br label %33

21:                                               ; preds = %7
  br label %22

22:                                               ; preds = %30, %21
  %storemerge = phi i32 [ 0, %21 ], [ %31, %30 ]
  %23 = icmp slt i32 %storemerge, %0
  br i1 %23, label %24, label %32

24:                                               ; preds = %22
  %25 = add nsw i32 %storemerge, %3
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [8 x i8], ptr %2, i64 %26
  %28 = load double, ptr %27, align 8
  %29 = fmul double %28, %1
  store double %29, ptr %27, align 8
  br label %30

30:                                               ; preds = %24
  %31 = add nsw i32 %storemerge, 1
  br label %22, !llvm.loop !16

32:                                               ; preds = %22
  br label %33

33:                                               ; preds = %32, %20
  br label %34

34:                                               ; preds = %33, %5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @daxpy(i32 noundef %0, double noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7) #0 {
  %9 = icmp sgt i32 %0, 0
  br i1 %9, label %10, label %59

10:                                               ; preds = %8
  %11 = fcmp une double %1, 0.000000e+00
  br i1 %11, label %12, label %59

12:                                               ; preds = %10
  %.not = icmp eq i32 %4, 1
  br i1 %.not, label %13, label %14

13:                                               ; preds = %12
  %.not1 = icmp eq i32 %7, 1
  br i1 %.not1, label %42, label %14

14:                                               ; preds = %13, %12
  %15 = icmp slt i32 %4, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %14
  %17 = sub nsw i32 1, %0
  %18 = mul nsw i32 %17, %4
  br label %19

19:                                               ; preds = %16, %14
  %.03 = phi i32 [ %18, %16 ], [ 0, %14 ]
  %20 = icmp slt i32 %7, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %19
  %22 = sub nsw i32 1, %0
  %23 = mul nsw i32 %22, %7
  br label %24

24:                                               ; preds = %21, %19
  %.0 = phi i32 [ %23, %21 ], [ 0, %19 ]
  br label %25

25:                                               ; preds = %39, %24
  %.14 = phi i32 [ %.03, %24 ], [ %37, %39 ]
  %.1 = phi i32 [ %.0, %24 ], [ %38, %39 ]
  %storemerge2 = phi i32 [ 0, %24 ], [ %40, %39 ]
  %26 = icmp slt i32 %storemerge2, %0
  br i1 %26, label %27, label %41

27:                                               ; preds = %25
  %28 = add nsw i32 %.14, %3
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [8 x i8], ptr %2, i64 %29
  %31 = load double, ptr %30, align 8
  %32 = add nsw i32 %.1, %6
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [8 x i8], ptr %5, i64 %33
  %35 = load double, ptr %34, align 8
  %36 = call double @llvm.fmuladd.f64(double %1, double %31, double %35)
  store double %36, ptr %34, align 8
  %37 = add nsw i32 %.14, %4
  %38 = add nsw i32 %.1, %7
  br label %39

39:                                               ; preds = %27
  %40 = add nsw i32 %storemerge2, 1
  br label %25, !llvm.loop !17

41:                                               ; preds = %25
  br label %59

42:                                               ; preds = %13
  br label %43

43:                                               ; preds = %55, %42
  %storemerge = phi i32 [ 0, %42 ], [ %56, %55 ]
  %44 = icmp slt i32 %storemerge, %0
  br i1 %44, label %45, label %57

45:                                               ; preds = %43
  %46 = add nsw i32 %storemerge, %3
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [8 x i8], ptr %2, i64 %47
  %49 = load double, ptr %48, align 8
  %50 = add nsw i32 %storemerge, %6
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [8 x i8], ptr %5, i64 %51
  %53 = load double, ptr %52, align 8
  %54 = call double @llvm.fmuladd.f64(double %1, double %49, double %53)
  store double %54, ptr %52, align 8
  br label %55

55:                                               ; preds = %45
  %56 = add nsw i32 %storemerge, 1
  br label %43, !llvm.loop !18

57:                                               ; preds = %43
  br label %58

58:                                               ; preds = %57
  br label %59

59:                                               ; preds = %58, %41, %10, %8
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @dgefa(ptr noundef %0, ptr noundef %1) #0 {
  br label %3

3:                                                ; preds = %60, %2
  %storemerge = phi i32 [ 0, %2 ], [ %61, %60 ]
  %4 = icmp slt i32 %storemerge, 1999
  br i1 %4, label %5, label %62

5:                                                ; preds = %3
  %6 = sext i32 %storemerge to i64
  %7 = getelementptr inbounds [8 x i8], ptr %0, i64 %6
  %8 = load ptr, ptr %7, align 8
  %9 = add nsw i32 %storemerge, 1
  %10 = sub nsw i32 2000, %storemerge
  %11 = call i32 @idamax(i32 noundef %10, ptr noundef %8, i32 noundef %storemerge, i32 noundef 1)
  %12 = add nsw i32 %11, %storemerge
  %13 = sext i32 %storemerge to i64
  %14 = getelementptr inbounds [4 x i8], ptr %1, i64 %13
  store i32 %12, ptr %14, align 4
  %15 = sext i32 %12 to i64
  %16 = getelementptr inbounds [8 x i8], ptr %8, i64 %15
  %17 = load double, ptr %16, align 8
  %18 = fcmp une double %17, 0.000000e+00
  br i1 %18, label %19, label %59

19:                                               ; preds = %5
  %.not = icmp eq i32 %12, %storemerge
  br i1 %.not, label %31, label %20

20:                                               ; preds = %19
  %21 = sext i32 %12 to i64
  %22 = getelementptr inbounds [8 x i8], ptr %8, i64 %21
  %23 = load double, ptr %22, align 8
  %24 = sext i32 %storemerge to i64
  %25 = getelementptr inbounds [8 x i8], ptr %8, i64 %24
  %26 = load double, ptr %25, align 8
  %27 = sext i32 %12 to i64
  %28 = getelementptr inbounds [8 x i8], ptr %8, i64 %27
  store double %26, ptr %28, align 8
  %29 = sext i32 %storemerge to i64
  %30 = getelementptr inbounds [8 x i8], ptr %8, i64 %29
  store double %23, ptr %30, align 8
  br label %31

31:                                               ; preds = %20, %19
  %32 = sext i32 %storemerge to i64
  %33 = getelementptr inbounds [8 x i8], ptr %8, i64 %32
  %34 = load double, ptr %33, align 8
  %35 = fdiv double -1.000000e+00, %34
  %36 = sub nsw i32 2000, %9
  call void @dscal(i32 noundef %36, double noundef %35, ptr noundef %8, i32 noundef %9, i32 noundef 1)
  br label %37

37:                                               ; preds = %56, %31
  %storemerge1 = phi i32 [ %9, %31 ], [ %57, %56 ]
  %38 = icmp slt i32 %storemerge1, 2000
  br i1 %38, label %39, label %58

39:                                               ; preds = %37
  %40 = sext i32 %storemerge1 to i64
  %41 = getelementptr inbounds [8 x i8], ptr %0, i64 %40
  %42 = load ptr, ptr %41, align 8
  %43 = sext i32 %12 to i64
  %44 = getelementptr inbounds [8 x i8], ptr %42, i64 %43
  %45 = load double, ptr %44, align 8
  %.not2 = icmp eq i32 %12, %storemerge
  br i1 %.not2, label %54, label %46

46:                                               ; preds = %39
  %47 = sext i32 %storemerge to i64
  %48 = getelementptr inbounds [8 x i8], ptr %42, i64 %47
  %49 = load double, ptr %48, align 8
  %50 = sext i32 %12 to i64
  %51 = getelementptr inbounds [8 x i8], ptr %42, i64 %50
  store double %49, ptr %51, align 8
  %52 = sext i32 %storemerge to i64
  %53 = getelementptr inbounds [8 x i8], ptr %42, i64 %52
  store double %45, ptr %53, align 8
  br label %54

54:                                               ; preds = %46, %39
  %55 = sub nsw i32 2000, %9
  call void @daxpy(i32 noundef %55, double noundef %45, ptr noundef %8, i32 noundef %9, i32 noundef 1, ptr noundef %42, i32 noundef %9, i32 noundef 1)
  br label %56

56:                                               ; preds = %54
  %57 = add nsw i32 %storemerge1, 1
  br label %37, !llvm.loop !19

58:                                               ; preds = %37
  br label %59

59:                                               ; preds = %58, %5
  br label %60

60:                                               ; preds = %59
  %61 = add nsw i32 %storemerge, 1
  br label %3, !llvm.loop !20

62:                                               ; preds = %3
  %63 = getelementptr inbounds nuw i8, ptr %1, i64 7996
  store i32 1999, ptr %63, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @dgesl(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  br label %4

4:                                                ; preds = %27, %3
  %storemerge = phi i32 [ 0, %3 ], [ %28, %27 ]
  %5 = icmp slt i32 %storemerge, 1999
  br i1 %5, label %6, label %29

6:                                                ; preds = %4
  %7 = sext i32 %storemerge to i64
  %8 = getelementptr inbounds [4 x i8], ptr %1, i64 %7
  %9 = load i32, ptr %8, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [8 x i8], ptr %2, i64 %10
  %12 = load double, ptr %11, align 8
  %.not = icmp eq i32 %9, %storemerge
  br i1 %.not, label %21, label %13

13:                                               ; preds = %6
  %14 = sext i32 %storemerge to i64
  %15 = getelementptr inbounds [8 x i8], ptr %2, i64 %14
  %16 = load double, ptr %15, align 8
  %17 = sext i32 %9 to i64
  %18 = getelementptr inbounds [8 x i8], ptr %2, i64 %17
  store double %16, ptr %18, align 8
  %19 = sext i32 %storemerge to i64
  %20 = getelementptr inbounds [8 x i8], ptr %2, i64 %19
  store double %12, ptr %20, align 8
  br label %21

21:                                               ; preds = %13, %6
  %22 = add nsw i32 %storemerge, 1
  %23 = sub nsw i32 1999, %storemerge
  %24 = sext i32 %storemerge to i64
  %25 = getelementptr inbounds [8 x i8], ptr %0, i64 %24
  %26 = load ptr, ptr %25, align 8
  call void @daxpy(i32 noundef %23, double noundef %12, ptr noundef %26, i32 noundef %22, i32 noundef 1, ptr noundef %2, i32 noundef %22, i32 noundef 1)
  br label %27

27:                                               ; preds = %21
  %28 = add nsw i32 %storemerge, 1
  br label %4, !llvm.loop !21

29:                                               ; preds = %4
  br label %30

30:                                               ; preds = %51, %29
  %storemerge1 = phi i32 [ 0, %29 ], [ %52, %51 ]
  %31 = icmp slt i32 %storemerge1, 2000
  br i1 %31, label %32, label %53

32:                                               ; preds = %30
  %33 = sub nsw i32 1999, %storemerge1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [8 x i8], ptr %0, i64 %34
  %36 = load ptr, ptr %35, align 8
  %37 = sext i32 %33 to i64
  %38 = getelementptr inbounds [8 x i8], ptr %36, i64 %37
  %39 = load double, ptr %38, align 8
  %40 = sext i32 %33 to i64
  %41 = getelementptr inbounds [8 x i8], ptr %2, i64 %40
  %42 = load double, ptr %41, align 8
  %43 = fdiv double %42, %39
  store double %43, ptr %41, align 8
  %44 = sext i32 %33 to i64
  %45 = getelementptr inbounds [8 x i8], ptr %2, i64 %44
  %46 = load double, ptr %45, align 8
  %47 = fneg double %46
  %48 = sext i32 %33 to i64
  %49 = getelementptr inbounds [8 x i8], ptr %0, i64 %48
  %50 = load ptr, ptr %49, align 8
  call void @daxpy(i32 noundef %33, double noundef %47, ptr noundef %50, i32 noundef 0, i32 noundef 1, ptr noundef %2, i32 noundef 0, i32 noundef 1)
  br label %51

51:                                               ; preds = %32
  %52 = add nsw i32 %storemerge1, 1
  br label %30, !llvm.loop !22

53:                                               ; preds = %30
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = icmp sgt i32 %0, 1
  br i1 %3, label %4, label %16

4:                                                ; preds = %2
  br label %5

5:                                                ; preds = %13, %4
  %storemerge = phi i32 [ 1, %4 ], [ %14, %13 ]
  %6 = icmp slt i32 %storemerge, %0
  br i1 %6, label %7, label %15

7:                                                ; preds = %5
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %9 = load ptr, ptr %8, align 8
  %10 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(4) @.str) #5
  %.not = icmp eq i32 %10, 0
  br i1 %.not, label %11, label %12

11:                                               ; preds = %7
  br label %15

12:                                               ; preds = %7
  br label %13

13:                                               ; preds = %12
  %14 = add nsw i32 %storemerge, 1
  br label %5, !llvm.loop !23

15:                                               ; preds = %11, %5
  %.1 = phi i8 [ 1, %11 ], [ 0, %5 ]
  br label %16

16:                                               ; preds = %15, %2
  %.0 = phi i8 [ %.1, %15 ], [ 0, %2 ]
  %17 = call dereferenceable_or_null(16000) ptr @malloc(i64 noundef 16000) #6
  br label %18

18:                                               ; preds = %24, %16
  %storemerge1 = phi i32 [ 0, %16 ], [ %25, %24 ]
  %19 = icmp slt i32 %storemerge1, 2000
  br i1 %19, label %20, label %26

20:                                               ; preds = %18
  %21 = call dereferenceable_or_null(16008) ptr @malloc(i64 noundef 16008) #6
  %22 = sext i32 %storemerge1 to i64
  %23 = getelementptr inbounds [8 x i8], ptr %17, i64 %22
  store ptr %21, ptr %23, align 8
  br label %24

24:                                               ; preds = %20
  %25 = add nsw i32 %storemerge1, 1
  br label %18, !llvm.loop !24

26:                                               ; preds = %18
  %27 = call dereferenceable_or_null(16000) ptr @malloc(i64 noundef 16000) #6
  %28 = call dereferenceable_or_null(16000) ptr @malloc(i64 noundef 16000) #6
  %29 = call dereferenceable_or_null(8000) ptr @malloc(i64 noundef 8000) #6
  call void @matgen(ptr noundef %17, ptr noundef %27)
  call void @dgefa(ptr noundef %17, ptr noundef %29)
  call void @dgesl(ptr noundef %17, ptr noundef %29, ptr noundef %27)
  call void @free(ptr noundef %29) #5
  call void @free(ptr noundef %28) #5
  call void @free(ptr noundef %27) #5
  br label %30

30:                                               ; preds = %36, %26
  %storemerge2 = phi i32 [ 0, %26 ], [ %37, %36 ]
  %31 = icmp slt i32 %storemerge2, 2000
  br i1 %31, label %32, label %38

32:                                               ; preds = %30
  %33 = sext i32 %storemerge2 to i64
  %34 = getelementptr inbounds [8 x i8], ptr %17, i64 %33
  %35 = load ptr, ptr %34, align 8
  call void @free(ptr noundef %35) #5
  br label %36

36:                                               ; preds = %32
  %37 = add nsw i32 %storemerge2, 1
  br label %30, !llvm.loop !25

38:                                               ; preds = %30
  call void @free(ptr noundef %17) #5
  %.not3 = icmp eq i8 %.0, 0
  br i1 %.not3, label %42, label %39

39:                                               ; preds = %38
  %40 = call ptr @__acrt_iob_func(i32 noundef 1) #5
  %41 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %40, ptr noundef nonnull @.str.1, double noundef 0.000000e+00) #5
  br label %45

42:                                               ; preds = %38
  %43 = call ptr @__acrt_iob_func(i32 noundef 1) #5
  %44 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %43, ptr noundef nonnull @.str.2, double noundef 0.000000e+00) #5
  br label %45

45:                                               ; preds = %42, %39
  %46 = call ptr @__acrt_iob_func(i32 noundef 1) #5
  %47 = call i32 @fflush(ptr noundef %46) #5
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
