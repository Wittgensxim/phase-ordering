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
  %4 = phi i32 [ %19, %18 ], [ 0, %2 ]
  %5 = icmp samesign ult i32 %4, 2000
  br i1 %5, label %6, label %20

6:                                                ; preds = %3
  br label %7

7:                                                ; preds = %10, %6
  %8 = phi i32 [ %17, %10 ], [ 0, %6 ]
  %9 = icmp samesign ult i32 %8, 2000
  br i1 %9, label %10, label %18

10:                                               ; preds = %7
  %11 = call double @random_double()
  %12 = zext nneg i32 %8 to i64
  %13 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %12
  %14 = load ptr, ptr %13, align 8
  %15 = zext nneg i32 %4 to i64
  %16 = getelementptr inbounds nuw [8 x i8], ptr %14, i64 %15
  store double %11, ptr %16, align 8
  %17 = add nuw nsw i32 %8, 1
  br label %7, !llvm.loop !7

18:                                               ; preds = %7
  %19 = add nuw nsw i32 %4, 1
  br label %3, !llvm.loop !9

20:                                               ; preds = %3
  br label %21

21:                                               ; preds = %24, %20
  %22 = phi i32 [ %27, %24 ], [ 0, %20 ]
  %23 = icmp samesign ult i32 %22, 2000
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = zext nneg i32 %22 to i64
  %26 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %25
  store double 0.000000e+00, ptr %26, align 8
  %27 = add nuw nsw i32 %22, 1
  br label %21, !llvm.loop !10

28:                                               ; preds = %21
  br label %29

29:                                               ; preds = %47, %28
  %30 = phi i32 [ %48, %47 ], [ 0, %28 ]
  %31 = icmp samesign ult i32 %30, 2000
  br i1 %31, label %32, label %49

32:                                               ; preds = %29
  br label %33

33:                                               ; preds = %36, %32
  %34 = phi i32 [ %46, %36 ], [ 0, %32 ]
  %35 = icmp samesign ult i32 %34, 2000
  br i1 %35, label %36, label %47

36:                                               ; preds = %33
  %37 = zext nneg i32 %30 to i64
  %38 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %37
  %39 = load ptr, ptr %38, align 8
  %40 = zext nneg i32 %34 to i64
  %41 = getelementptr inbounds nuw [8 x i8], ptr %39, i64 %40
  %42 = load double, ptr %41, align 8
  %43 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %40
  %44 = load double, ptr %43, align 8
  %45 = fadd double %44, %42
  store double %45, ptr %43, align 8
  %46 = add nuw nsw i32 %34, 1
  br label %33, !llvm.loop !11

47:                                               ; preds = %33
  %48 = add nuw nsw i32 %30, 1
  br label %29, !llvm.loop !12

49:                                               ; preds = %29
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @idamax(i32 noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = icmp slt i32 %0, 1
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  br label %64

7:                                                ; preds = %4
  %8 = icmp eq i32 %0, 1
  br i1 %8, label %9, label %10

9:                                                ; preds = %7
  br label %62

10:                                               ; preds = %7
  %.not = icmp eq i32 %3, 1
  br i1 %.not, label %37, label %11

11:                                               ; preds = %10
  %12 = sext i32 %2 to i64
  %13 = getelementptr inbounds [8 x i8], ptr %1, i64 %12
  %14 = load double, ptr %13, align 8
  %15 = call double @llvm.fabs.f64(double %14)
  %16 = add nsw i32 %3, 1
  br label %17

17:                                               ; preds = %31, %11
  %18 = phi i32 [ %32, %31 ], [ 0, %11 ]
  %19 = phi double [ %33, %31 ], [ %15, %11 ]
  %20 = phi i32 [ %34, %31 ], [ %16, %11 ]
  %21 = phi i32 [ %35, %31 ], [ 1, %11 ]
  %22 = icmp slt i32 %21, %0
  br i1 %22, label %23, label %36

23:                                               ; preds = %17
  %24 = add nsw i32 %20, %2
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [8 x i8], ptr %1, i64 %25
  %27 = load double, ptr %26, align 8
  %28 = call double @llvm.fabs.f64(double %27)
  %29 = fcmp ogt double %28, %19
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  br label %31

31:                                               ; preds = %30, %23
  %32 = phi i32 [ %21, %30 ], [ %18, %23 ]
  %33 = phi double [ %28, %30 ], [ %19, %23 ]
  %34 = add nsw i32 %20, %3
  %35 = add nuw nsw i32 %21, 1
  br label %17, !llvm.loop !13

36:                                               ; preds = %17
  br label %60

37:                                               ; preds = %10
  %38 = sext i32 %2 to i64
  %39 = getelementptr inbounds [8 x i8], ptr %1, i64 %38
  %40 = load double, ptr %39, align 8
  %41 = call double @llvm.fabs.f64(double %40)
  br label %42

42:                                               ; preds = %55, %37
  %43 = phi i32 [ %56, %55 ], [ 0, %37 ]
  %44 = phi double [ %57, %55 ], [ %41, %37 ]
  %45 = phi i32 [ %58, %55 ], [ 1, %37 ]
  %46 = icmp slt i32 %45, %0
  br i1 %46, label %47, label %59

47:                                               ; preds = %42
  %48 = add nsw i32 %45, %2
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [8 x i8], ptr %1, i64 %49
  %51 = load double, ptr %50, align 8
  %52 = call double @llvm.fabs.f64(double %51)
  %53 = fcmp ogt double %52, %44
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  br label %55

55:                                               ; preds = %54, %47
  %56 = phi i32 [ %45, %54 ], [ %43, %47 ]
  %57 = phi double [ %52, %54 ], [ %44, %47 ]
  %58 = add nuw nsw i32 %45, 1
  br label %42, !llvm.loop !14

59:                                               ; preds = %42
  br label %60

60:                                               ; preds = %59, %36
  %61 = phi i32 [ %43, %59 ], [ %18, %36 ]
  br label %62

62:                                               ; preds = %60, %9
  %63 = phi i32 [ %61, %60 ], [ 0, %9 ]
  br label %64

64:                                               ; preds = %62, %6
  %65 = phi i32 [ %63, %62 ], [ -1, %6 ]
  ret i32 %65
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

10:                                               ; preds = %13, %8
  %11 = phi i32 [ %19, %13 ], [ 0, %8 ]
  %12 = icmp slt i32 %11, %9
  br i1 %12, label %13, label %20

13:                                               ; preds = %10
  %14 = add nsw i32 %11, %3
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [8 x i8], ptr %2, i64 %15
  %17 = load double, ptr %16, align 8
  %18 = fmul double %17, %1
  store double %18, ptr %16, align 8
  %19 = add nsw i32 %11, %4
  br label %10, !llvm.loop !15

20:                                               ; preds = %10
  br label %33

21:                                               ; preds = %7
  br label %22

22:                                               ; preds = %25, %21
  %23 = phi i32 [ %31, %25 ], [ 0, %21 ]
  %24 = icmp slt i32 %23, %0
  br i1 %24, label %25, label %32

25:                                               ; preds = %22
  %26 = add nsw i32 %23, %3
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [8 x i8], ptr %2, i64 %27
  %29 = load double, ptr %28, align 8
  %30 = fmul double %29, %1
  store double %30, ptr %28, align 8
  %31 = add nuw nsw i32 %23, 1
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
  br i1 %9, label %10, label %62

10:                                               ; preds = %8
  %11 = fcmp une double %1, 0.000000e+00
  br i1 %11, label %12, label %62

12:                                               ; preds = %10
  %.not = icmp eq i32 %4, 1
  br i1 %.not, label %13, label %14

13:                                               ; preds = %12
  %.not1 = icmp eq i32 %7, 1
  br i1 %.not1, label %46, label %14

14:                                               ; preds = %13, %12
  %15 = icmp slt i32 %4, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %14
  %17 = sub nsw i32 1, %0
  %18 = mul nsw i32 %17, %4
  br label %19

19:                                               ; preds = %16, %14
  %20 = phi i32 [ %18, %16 ], [ 0, %14 ]
  %21 = icmp slt i32 %7, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = sub nsw i32 1, %0
  %24 = mul nsw i32 %23, %7
  br label %25

25:                                               ; preds = %22, %19
  %26 = phi i32 [ %24, %22 ], [ 0, %19 ]
  br label %27

27:                                               ; preds = %32, %25
  %28 = phi i32 [ %43, %32 ], [ %26, %25 ]
  %29 = phi i32 [ %42, %32 ], [ %20, %25 ]
  %30 = phi i32 [ %44, %32 ], [ 0, %25 ]
  %31 = icmp slt i32 %30, %0
  br i1 %31, label %32, label %45

32:                                               ; preds = %27
  %33 = add nsw i32 %29, %3
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [8 x i8], ptr %2, i64 %34
  %36 = load double, ptr %35, align 8
  %37 = add nsw i32 %28, %6
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [8 x i8], ptr %5, i64 %38
  %40 = load double, ptr %39, align 8
  %41 = call double @llvm.fmuladd.f64(double %1, double %36, double %40)
  store double %41, ptr %39, align 8
  %42 = add nsw i32 %29, %4
  %43 = add nsw i32 %28, %7
  %44 = add nuw nsw i32 %30, 1
  br label %27, !llvm.loop !17

45:                                               ; preds = %27
  br label %62

46:                                               ; preds = %13
  br label %47

47:                                               ; preds = %50, %46
  %48 = phi i32 [ %60, %50 ], [ 0, %46 ]
  %49 = icmp slt i32 %48, %0
  br i1 %49, label %50, label %61

50:                                               ; preds = %47
  %51 = add nsw i32 %48, %3
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [8 x i8], ptr %2, i64 %52
  %54 = load double, ptr %53, align 8
  %55 = add nsw i32 %48, %6
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [8 x i8], ptr %5, i64 %56
  %58 = load double, ptr %57, align 8
  %59 = call double @llvm.fmuladd.f64(double %1, double %54, double %58)
  store double %59, ptr %57, align 8
  %60 = add nuw nsw i32 %48, 1
  br label %47, !llvm.loop !18

61:                                               ; preds = %47
  br label %62

62:                                               ; preds = %61, %45, %10, %8
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @dgefa(ptr noundef %0, ptr noundef %1) #0 {
  br label %3

3:                                                ; preds = %52, %2
  %4 = phi i32 [ %.pre-phi, %52 ], [ 0, %2 ]
  %5 = icmp slt i32 %4, 1999
  br i1 %5, label %6, label %53

6:                                                ; preds = %3
  %7 = sext i32 %4 to i64
  %8 = getelementptr inbounds [8 x i8], ptr %0, i64 %7
  %9 = load ptr, ptr %8, align 8
  %10 = add nsw i32 %4, 1
  %11 = sub nsw i32 2000, %4
  %12 = call i32 @idamax(i32 noundef %11, ptr noundef %9, i32 noundef %4, i32 noundef 1)
  %13 = add nsw i32 %12, %4
  %14 = getelementptr inbounds [4 x i8], ptr %1, i64 %7
  store i32 %13, ptr %14, align 4
  %15 = sext i32 %13 to i64
  %16 = getelementptr inbounds [8 x i8], ptr %9, i64 %15
  %17 = load double, ptr %16, align 8
  %18 = fcmp une double %17, 0.000000e+00
  br i1 %18, label %19, label %52

19:                                               ; preds = %6
  %.not = icmp eq i32 %12, 0
  br i1 %.not, label %._crit_edge, label %20

._crit_edge:                                      ; preds = %19
  %.phi.trans.insert = getelementptr inbounds [8 x i8], ptr %9, i64 %7
  %.pre = load double, ptr %.phi.trans.insert, align 8
  br label %23

20:                                               ; preds = %19
  %21 = getelementptr inbounds [8 x i8], ptr %9, i64 %7
  %22 = load double, ptr %21, align 8
  store double %22, ptr %16, align 8
  store double %17, ptr %21, align 8
  br label %23

23:                                               ; preds = %._crit_edge, %20
  %24 = phi double [ %.pre, %._crit_edge ], [ %17, %20 ]
  %25 = fdiv double -1.000000e+00, %24
  %26 = sub nsw i32 1999, %4
  call void @dscal(i32 noundef %26, double noundef %25, ptr noundef %9, i32 noundef %10, i32 noundef 1)
  br label %27

27:                                               ; preds = %46, %23
  %28 = phi i32 [ %47, %46 ], [ %4, %23 ]
  %29 = phi i32 [ %48, %46 ], [ %4, %23 ]
  %30 = phi i32 [ %49, %46 ], [ %13, %23 ]
  %31 = phi i32 [ %50, %46 ], [ %10, %23 ]
  %32 = icmp slt i32 %31, 2000
  br i1 %32, label %33, label %51

33:                                               ; preds = %27
  %34 = sext i32 %31 to i64
  %35 = getelementptr inbounds [8 x i8], ptr %0, i64 %34
  %36 = load ptr, ptr %35, align 8
  %37 = sext i32 %30 to i64
  %38 = getelementptr inbounds [8 x i8], ptr %36, i64 %37
  %39 = load double, ptr %38, align 8
  %.not2 = icmp eq i32 %30, %29
  br i1 %.not2, label %46, label %40

40:                                               ; preds = %33
  %41 = sext i32 %28 to i64
  %42 = getelementptr inbounds [8 x i8], ptr %36, i64 %41
  %43 = load double, ptr %42, align 8
  %44 = getelementptr inbounds [8 x i8], ptr %36, i64 %15
  store double %43, ptr %44, align 8
  %45 = getelementptr inbounds [8 x i8], ptr %36, i64 %7
  store double %39, ptr %45, align 8
  br label %46

46:                                               ; preds = %40, %33
  %47 = phi i32 [ %4, %40 ], [ %28, %33 ]
  %48 = phi i32 [ %4, %40 ], [ %29, %33 ]
  %49 = phi i32 [ %13, %40 ], [ %29, %33 ]
  call void @daxpy(i32 noundef %26, double noundef %39, ptr noundef %9, i32 noundef %10, i32 noundef 1, ptr noundef %36, i32 noundef %10, i32 noundef 1)
  %50 = add nsw i32 %31, 1
  br label %27, !llvm.loop !19

51:                                               ; preds = %27
  %.pre1 = add nsw i32 %29, 1
  br label %52

52:                                               ; preds = %51, %6
  %.pre-phi = phi i32 [ %.pre1, %51 ], [ %10, %6 ]
  br label %3, !llvm.loop !20

53:                                               ; preds = %3
  %54 = getelementptr inbounds nuw i8, ptr %1, i64 7996
  store i32 1999, ptr %54, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @dgesl(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %2, ptr %5, align 8
  br label %6

6:                                                ; preds = %19, %3
  %7 = phi i32 [ %20, %19 ], [ 0, %3 ]
  %8 = icmp samesign ult i32 %7, 1999
  br i1 %8, label %9, label %24

9:                                                ; preds = %6
  %10 = zext nneg i32 %7 to i64
  %11 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %10
  %12 = load i32, ptr %11, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [8 x i8], ptr %2, i64 %13
  %15 = load double, ptr %14, align 8
  %.not = icmp eq i32 %12, %7
  br i1 %.not, label %19, label %16

16:                                               ; preds = %9
  %17 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %10
  %18 = load double, ptr %17, align 8
  store double %18, ptr %14, align 8
  store double %15, ptr %17, align 8
  br label %19

19:                                               ; preds = %16, %9
  %20 = add nuw nsw i32 %7, 1
  %21 = sub nsw i32 1999, %7
  %22 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %10
  %23 = load ptr, ptr %22, align 8
  call void @daxpy(i32 noundef %21, double noundef %15, ptr noundef %23, i32 noundef %20, i32 noundef 1, ptr noundef %2, i32 noundef %20, i32 noundef 1)
  br label %6, !llvm.loop !21

24:                                               ; preds = %6
  br label %25

25:                                               ; preds = %30, %24
  %26 = phi ptr [ %41, %30 ], [ %2, %24 ]
  %27 = phi ptr [ %45, %30 ], [ %0, %24 ]
  %28 = phi i32 [ %31, %30 ], [ 0, %24 ]
  %29 = icmp samesign ult i32 %28, 2000
  br i1 %29, label %30, label %48

30:                                               ; preds = %25
  %31 = add nuw nsw i32 %28, 1
  %32 = sub nuw nsw i32 1999, %28
  %33 = zext nneg i32 %32 to i64
  %34 = getelementptr inbounds nuw [8 x i8], ptr %27, i64 %33
  %35 = load ptr, ptr %34, align 8
  %36 = getelementptr inbounds nuw [8 x i8], ptr %35, i64 %33
  %37 = load double, ptr %36, align 8
  %38 = getelementptr inbounds nuw [8 x i8], ptr %26, i64 %33
  %39 = load double, ptr %38, align 8
  %40 = fdiv double %39, %37
  store double %40, ptr %38, align 8
  %41 = load ptr, ptr %5, align 8
  %42 = getelementptr inbounds nuw [8 x i8], ptr %41, i64 %33
  %43 = load double, ptr %42, align 8
  %44 = fneg double %43
  %45 = load ptr, ptr %4, align 8
  %46 = getelementptr inbounds nuw [8 x i8], ptr %45, i64 %33
  %47 = load ptr, ptr %46, align 8
  call void @daxpy(i32 noundef %32, double noundef %44, ptr noundef %47, i32 noundef 0, i32 noundef 1, ptr noundef %41, i32 noundef 0, i32 noundef 1)
  br label %25, !llvm.loop !22

48:                                               ; preds = %25
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca double, align 8
  store i8 0, ptr %3, align 1
  %5 = icmp sgt i32 %0, 1
  br i1 %5, label %6, label %18

6:                                                ; preds = %2
  br label %7

7:                                                ; preds = %15, %6
  %8 = phi i32 [ %16, %15 ], [ 1, %6 ]
  %9 = icmp slt i32 %8, %0
  br i1 %9, label %10, label %17

10:                                               ; preds = %7
  %11 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %12 = load ptr, ptr %11, align 8
  %13 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(4) @.str) #5
  %.not = icmp eq i32 %13, 0
  br i1 %.not, label %14, label %15

14:                                               ; preds = %10
  store i8 1, ptr %3, align 1
  br label %17

15:                                               ; preds = %10
  %16 = add nuw nsw i32 %8, 1
  br label %7, !llvm.loop !23

17:                                               ; preds = %14, %7
  br label %18

18:                                               ; preds = %17, %2
  %19 = call dereferenceable_or_null(16000) ptr @malloc(i64 noundef 16000) #6
  br label %20

20:                                               ; preds = %23, %18
  %21 = phi i32 [ %27, %23 ], [ 0, %18 ]
  %22 = icmp samesign ult i32 %21, 2000
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = call dereferenceable_or_null(16008) ptr @malloc(i64 noundef 16008) #6
  %25 = zext nneg i32 %21 to i64
  %26 = getelementptr inbounds nuw [8 x i8], ptr %19, i64 %25
  store ptr %24, ptr %26, align 8
  %27 = add nuw nsw i32 %21, 1
  br label %20, !llvm.loop !24

28:                                               ; preds = %20
  %29 = call dereferenceable_or_null(16000) ptr @malloc(i64 noundef 16000) #6
  %30 = call dereferenceable_or_null(16000) ptr @malloc(i64 noundef 16000) #6
  %31 = call dereferenceable_or_null(8000) ptr @malloc(i64 noundef 8000) #6
  call void @matgen(ptr noundef %19, ptr noundef %29)
  call void @dgefa(ptr noundef %19, ptr noundef %31)
  call void @dgesl(ptr noundef %19, ptr noundef %31, ptr noundef %29)
  store double 0.000000e+00, ptr %4, align 8
  call void @free(ptr noundef %31) #5
  call void @free(ptr noundef %30) #5
  call void @free(ptr noundef %29) #5
  br label %32

32:                                               ; preds = %35, %28
  %33 = phi i32 [ %39, %35 ], [ 0, %28 ]
  %34 = icmp samesign ult i32 %33, 2000
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = zext nneg i32 %33 to i64
  %37 = getelementptr inbounds nuw [8 x i8], ptr %19, i64 %36
  %38 = load ptr, ptr %37, align 8
  call void @free(ptr noundef %38) #5
  %39 = add nuw nsw i32 %33, 1
  br label %32, !llvm.loop !25

40:                                               ; preds = %32
  call void @free(ptr noundef %19) #5
  %41 = load i8, ptr %3, align 1
  %.not1 = icmp eq i8 %41, 0
  br i1 %.not1, label %46, label %42

42:                                               ; preds = %40
  %43 = call ptr @__acrt_iob_func(i32 noundef 1) #5
  %44 = load double, ptr %4, align 8
  %45 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %43, ptr noundef nonnull @.str.1, double noundef %44) #5
  br label %50

46:                                               ; preds = %40
  %47 = call ptr @__acrt_iob_func(i32 noundef 1) #5
  %48 = load double, ptr %4, align 8
  %49 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %47, ptr noundef nonnull @.str.2, double noundef %48) #5
  br label %50

50:                                               ; preds = %46, %42
  %51 = call ptr @__acrt_iob_func(i32 noundef 1) #5
  %52 = call i32 @fflush(ptr noundef %51) #5
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
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = add nsw i32 %6, 2147483647
  br label %10

10:                                               ; preds = %8, %0
  %11 = phi i32 [ %9, %8 ], [ %6, %0 ]
  %12 = sitofp i32 %11 to double
  %13 = fmul nnan double %12, f0x3E00000000200FE1
  %14 = xor i32 %11, 123459876
  store i32 %14, ptr @seed, align 4
  ret double %13
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
