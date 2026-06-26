; ModuleID = 'results\paper_full\CoyoteBench_lpbench\round_000\output.ll'
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

3:                                                ; preds = %2, %15
  %.013 = phi i32 [ 0, %2 ], [ %16, %15 ]
  br label %4

4:                                                ; preds = %3, %11
  %.02 = phi i32 [ 0, %3 ], [ %12, %11 ]
  %5 = call double @random_double()
  %6 = zext nneg i32 %.02 to i64
  %7 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %6
  %8 = load ptr, ptr %7, align 8
  %9 = zext nneg i32 %.013 to i64
  %10 = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %9
  store double %5, ptr %10, align 8
  br label %11

11:                                               ; preds = %4
  %12 = add nuw nsw i32 %.02, 1
  %13 = icmp samesign ult i32 %.02, 1999
  br i1 %13, label %4, label %14, !llvm.loop !7

14:                                               ; preds = %11
  br label %15

15:                                               ; preds = %14
  %16 = add nuw nsw i32 %.013, 1
  %17 = icmp samesign ult i32 %.013, 1999
  br i1 %17, label %3, label %18, !llvm.loop !9

18:                                               ; preds = %15
  br label %19

19:                                               ; preds = %18, %22
  %.124 = phi i32 [ 0, %18 ], [ %23, %22 ]
  %20 = zext nneg i32 %.124 to i64
  %21 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %20
  store double 0.000000e+00, ptr %21, align 8
  br label %22

22:                                               ; preds = %19
  %23 = add nuw nsw i32 %.124, 1
  %24 = icmp samesign ult i32 %.124, 1999
  br i1 %24, label %19, label %25, !llvm.loop !10

25:                                               ; preds = %22
  br label %26

26:                                               ; preds = %25, %41
  %.16 = phi i32 [ 0, %25 ], [ %42, %41 ]
  br label %27

27:                                               ; preds = %26, %37
  %.25 = phi i32 [ 0, %26 ], [ %38, %37 ]
  %28 = zext nneg i32 %.16 to i64
  %29 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %28
  %30 = load ptr, ptr %29, align 8
  %31 = zext nneg i32 %.25 to i64
  %32 = getelementptr inbounds nuw [8 x i8], ptr %30, i64 %31
  %33 = load double, ptr %32, align 8
  %34 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %31
  %35 = load double, ptr %34, align 8
  %36 = fadd double %35, %33
  store double %36, ptr %34, align 8
  br label %37

37:                                               ; preds = %27
  %38 = add nuw nsw i32 %.25, 1
  %39 = icmp samesign ult i32 %.25, 1999
  br i1 %39, label %27, label %40, !llvm.loop !11

40:                                               ; preds = %37
  br label %41

41:                                               ; preds = %40
  %42 = add nuw nsw i32 %.16, 1
  %43 = icmp samesign ult i32 %.16, 1999
  br i1 %43, label %26, label %44, !llvm.loop !12

44:                                               ; preds = %41
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @idamax(i32 noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = icmp slt i32 %0, 1
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  br label %51

7:                                                ; preds = %4
  %8 = icmp eq i32 %0, 1
  br i1 %8, label %9, label %10

9:                                                ; preds = %7
  br label %50

10:                                               ; preds = %7
  %.not = icmp eq i32 %3, 1
  br i1 %.not, label %31, label %11

11:                                               ; preds = %10
  br i1 true, label %.lr.ph9, label %30

.lr.ph9:                                          ; preds = %11
  %12 = add nsw i32 %3, 1
  %13 = sext i32 %2 to i64
  %14 = getelementptr inbounds [8 x i8], ptr %1, i64 %13
  %15 = load double, ptr %14, align 8
  %16 = call double @llvm.fabs.f64(double %15)
  br label %17

17:                                               ; preds = %.lr.ph9, %26
  %.27 = phi i32 [ 0, %.lr.ph9 ], [ %.3, %26 ]
  %.016 = phi i32 [ %12, %.lr.ph9 ], [ %27, %26 ]
  %.025 = phi i32 [ 1, %.lr.ph9 ], [ %28, %26 ]
  %.044 = phi double [ %16, %.lr.ph9 ], [ %.15, %26 ]
  %18 = add nsw i32 %.016, %2
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [8 x i8], ptr %1, i64 %19
  %21 = load double, ptr %20, align 8
  %22 = call double @llvm.fabs.f64(double %21)
  %23 = fcmp ogt double %22, %.044
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  br label %25

25:                                               ; preds = %24, %17
  %.15 = phi double [ %22, %24 ], [ %.044, %17 ]
  %.3 = phi i32 [ %.025, %24 ], [ %.27, %17 ]
  br label %26

26:                                               ; preds = %25
  %27 = add nsw i32 %.016, %3
  %28 = add nuw nsw i32 %.025, 1
  %29 = icmp slt i32 %28, %0
  br i1 %29, label %17, label %._crit_edge10, !llvm.loop !13

._crit_edge10:                                    ; preds = %26
  br label %30

30:                                               ; preds = %._crit_edge10, %11
  %.2.lcssa = phi i32 [ %.3, %._crit_edge10 ], [ poison, %11 ]
  br label %49

31:                                               ; preds = %10
  br i1 true, label %.lr.ph, label %48

.lr.ph:                                           ; preds = %31
  %32 = sext i32 %2 to i64
  %33 = getelementptr inbounds [8 x i8], ptr %1, i64 %32
  %34 = load double, ptr %33, align 8
  %35 = call double @llvm.fabs.f64(double %34)
  br label %36

36:                                               ; preds = %.lr.ph, %45
  %.53 = phi i32 [ 0, %.lr.ph ], [ %.6, %45 ]
  %.132 = phi i32 [ 1, %.lr.ph ], [ %46, %45 ]
  %.261 = phi double [ %35, %.lr.ph ], [ %.37, %45 ]
  %37 = add nsw i32 %.132, %2
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [8 x i8], ptr %1, i64 %38
  %40 = load double, ptr %39, align 8
  %41 = call double @llvm.fabs.f64(double %40)
  %42 = fcmp ogt double %41, %.261
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  br label %44

44:                                               ; preds = %43, %36
  %.37 = phi double [ %41, %43 ], [ %.261, %36 ]
  %.6 = phi i32 [ %.132, %43 ], [ %.53, %36 ]
  br label %45

45:                                               ; preds = %44
  %46 = add nuw nsw i32 %.132, 1
  %47 = icmp slt i32 %46, %0
  br i1 %47, label %36, label %._crit_edge, !llvm.loop !14

._crit_edge:                                      ; preds = %45
  br label %48

48:                                               ; preds = %._crit_edge, %31
  %.5.lcssa = phi i32 [ %.6, %._crit_edge ], [ poison, %31 ]
  br label %49

49:                                               ; preds = %48, %30
  %.4 = phi i32 [ %.2.lcssa, %30 ], [ %.5.lcssa, %48 ]
  br label %50

50:                                               ; preds = %49, %9
  %.1 = phi i32 [ 0, %9 ], [ %.4, %49 ]
  br label %51

51:                                               ; preds = %50, %6
  %.0 = phi i32 [ -1, %6 ], [ %.1, %50 ]
  ret i32 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @dscal(i32 noundef %0, double noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = icmp sgt i32 %0, 0
  br i1 %6, label %7, label %33

7:                                                ; preds = %5
  %.not = icmp eq i32 %4, 1
  br i1 %.not, label %21, label %8

8:                                                ; preds = %7
  %9 = mul nsw i32 %0, %4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %.lr.ph4, label %20

.lr.ph4:                                          ; preds = %8
  br label %11

11:                                               ; preds = %.lr.ph4, %17
  %.02 = phi i32 [ 0, %.lr.ph4 ], [ %18, %17 ]
  %12 = add nsw i32 %.02, %3
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [8 x i8], ptr %2, i64 %13
  %15 = load double, ptr %14, align 8
  %16 = fmul double %15, %1
  store double %16, ptr %14, align 8
  br label %17

17:                                               ; preds = %11
  %18 = add nsw i32 %.02, %4
  %19 = icmp slt i32 %18, %9
  br i1 %19, label %11, label %._crit_edge5, !llvm.loop !15

._crit_edge5:                                     ; preds = %17
  br label %20

20:                                               ; preds = %._crit_edge5, %8
  br label %32

21:                                               ; preds = %7
  br i1 true, label %.lr.ph, label %31

.lr.ph:                                           ; preds = %21
  br label %22

22:                                               ; preds = %.lr.ph, %28
  %.11 = phi i32 [ 0, %.lr.ph ], [ %29, %28 ]
  %23 = add nsw i32 %.11, %3
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [8 x i8], ptr %2, i64 %24
  %26 = load double, ptr %25, align 8
  %27 = fmul double %26, %1
  store double %27, ptr %25, align 8
  br label %28

28:                                               ; preds = %22
  %29 = add nuw nsw i32 %.11, 1
  %30 = icmp slt i32 %29, %0
  br i1 %30, label %22, label %._crit_edge, !llvm.loop !16

._crit_edge:                                      ; preds = %28
  br label %31

31:                                               ; preds = %._crit_edge, %21
  br label %32

32:                                               ; preds = %31, %20
  br label %33

33:                                               ; preds = %32, %5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @daxpy(i32 noundef %0, double noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7) #0 {
  %9 = icmp sgt i32 %0, 0
  br i1 %9, label %10, label %57

10:                                               ; preds = %8
  %11 = fcmp une double %1, 0.000000e+00
  br i1 %11, label %12, label %57

12:                                               ; preds = %10
  %.not = icmp eq i32 %4, 1
  br i1 %.not, label %13, label %14

13:                                               ; preds = %12
  %.not8 = icmp eq i32 %7, 1
  br i1 %.not8, label %41, label %14

14:                                               ; preds = %13, %12
  %15 = icmp slt i32 %4, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %14
  %17 = sub nsw i32 1, %0
  %18 = mul nsw i32 %17, %4
  br label %19

19:                                               ; preds = %16, %14
  %.01 = phi i32 [ %18, %16 ], [ 0, %14 ]
  %20 = icmp slt i32 %7, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %19
  %22 = sub nsw i32 1, %0
  %23 = mul nsw i32 %22, %7
  br label %24

24:                                               ; preds = %21, %19
  %.0 = phi i32 [ %23, %21 ], [ 0, %19 ]
  br i1 true, label %.lr.ph6, label %40

.lr.ph6:                                          ; preds = %24
  br label %25

25:                                               ; preds = %.lr.ph6, %35
  %.14 = phi i32 [ %.0, %.lr.ph6 ], [ %36, %35 ]
  %.123 = phi i32 [ %.01, %.lr.ph6 ], [ %37, %35 ]
  %.032 = phi i32 [ 0, %.lr.ph6 ], [ %38, %35 ]
  %26 = add nsw i32 %.123, %3
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [8 x i8], ptr %2, i64 %27
  %29 = load double, ptr %28, align 8
  %30 = add nsw i32 %.14, %6
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [8 x i8], ptr %5, i64 %31
  %33 = load double, ptr %32, align 8
  %34 = call double @llvm.fmuladd.f64(double %1, double %29, double %33)
  store double %34, ptr %32, align 8
  br label %35

35:                                               ; preds = %25
  %36 = add nsw i32 %.14, %7
  %37 = add nsw i32 %.123, %4
  %38 = add nuw nsw i32 %.032, 1
  %39 = icmp slt i32 %38, %0
  br i1 %39, label %25, label %._crit_edge7, !llvm.loop !17

._crit_edge7:                                     ; preds = %35
  br label %40

40:                                               ; preds = %._crit_edge7, %24
  br label %57

41:                                               ; preds = %13
  br i1 true, label %.lr.ph, label %55

.lr.ph:                                           ; preds = %41
  br label %42

42:                                               ; preds = %.lr.ph, %52
  %.141 = phi i32 [ 0, %.lr.ph ], [ %53, %52 ]
  %43 = add nsw i32 %.141, %3
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [8 x i8], ptr %2, i64 %44
  %46 = load double, ptr %45, align 8
  %47 = add nsw i32 %.141, %6
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [8 x i8], ptr %5, i64 %48
  %50 = load double, ptr %49, align 8
  %51 = call double @llvm.fmuladd.f64(double %1, double %46, double %50)
  store double %51, ptr %49, align 8
  br label %52

52:                                               ; preds = %42
  %53 = add nuw nsw i32 %.141, 1
  %54 = icmp slt i32 %53, %0
  br i1 %54, label %42, label %._crit_edge, !llvm.loop !18

._crit_edge:                                      ; preds = %52
  br label %55

55:                                               ; preds = %._crit_edge, %41
  br label %56

56:                                               ; preds = %55
  br label %57

57:                                               ; preds = %56, %40, %10, %8
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @dgefa(ptr noundef %0, ptr noundef %1) #0 {
  br label %3

3:                                                ; preds = %2, %41
  %.013 = phi i32 [ 0, %2 ], [ %7, %41 ]
  %4 = zext nneg i32 %.013 to i64
  %5 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %4
  %6 = load ptr, ptr %5, align 8
  %7 = add nuw nsw i32 %.013, 1
  %8 = sub nsw i32 2000, %.013
  %9 = call i32 @idamax(i32 noundef %8, ptr noundef %6, i32 noundef %.013, i32 noundef 1)
  %10 = add nsw i32 %9, %.013
  %11 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %4
  store i32 %10, ptr %11, align 4
  %12 = sext i32 %10 to i64
  %13 = getelementptr inbounds [8 x i8], ptr %6, i64 %12
  %14 = load double, ptr %13, align 8
  %15 = fcmp une double %14, 0.000000e+00
  br i1 %15, label %16, label %40

16:                                               ; preds = %3
  %.not = icmp eq i32 %9, 0
  br i1 %.not, label %20, label %17

17:                                               ; preds = %16
  %18 = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %4
  %19 = load double, ptr %18, align 8
  store double %19, ptr %13, align 8
  store double %14, ptr %18, align 8
  br label %20

20:                                               ; preds = %17, %16
  %21 = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %4
  %22 = load double, ptr %21, align 8
  %23 = fdiv double -1.000000e+00, %22
  %24 = sub nsw i32 1999, %.013
  call void @dscal(i32 noundef %24, double noundef %23, ptr noundef %6, i32 noundef %7, i32 noundef 1)
  %25 = icmp samesign ult i32 %.013, 1999
  br i1 %25, label %.lr.ph, label %39

.lr.ph:                                           ; preds = %20
  br label %26

26:                                               ; preds = %.lr.ph, %36
  %.02 = phi i32 [ %7, %.lr.ph ], [ %37, %36 ]
  %27 = zext nneg i32 %.02 to i64
  %28 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %27
  %29 = load ptr, ptr %28, align 8
  %30 = getelementptr inbounds [8 x i8], ptr %29, i64 %12
  %31 = load double, ptr %30, align 8
  br i1 %.not, label %35, label %32

32:                                               ; preds = %26
  %33 = getelementptr inbounds nuw [8 x i8], ptr %29, i64 %4
  %34 = load double, ptr %33, align 8
  store double %34, ptr %30, align 8
  store double %31, ptr %33, align 8
  br label %35

35:                                               ; preds = %32, %26
  call void @daxpy(i32 noundef %24, double noundef %31, ptr noundef %6, i32 noundef %7, i32 noundef 1, ptr noundef %29, i32 noundef %7, i32 noundef 1)
  br label %36

36:                                               ; preds = %35
  %37 = add nuw nsw i32 %.02, 1
  %38 = icmp samesign ult i32 %.02, 1999
  br i1 %38, label %26, label %._crit_edge, !llvm.loop !19

._crit_edge:                                      ; preds = %36
  br label %39

39:                                               ; preds = %._crit_edge, %20
  br label %40

40:                                               ; preds = %39, %3
  br label %41

41:                                               ; preds = %40
  %42 = icmp samesign ult i32 %.013, 1998
  br i1 %42, label %3, label %43, !llvm.loop !20

43:                                               ; preds = %41
  %44 = getelementptr inbounds nuw i8, ptr %1, i64 7996
  store i32 1999, ptr %44, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @dgesl(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  br label %4

4:                                                ; preds = %3, %19
  %.011 = phi i32 [ 0, %3 ], [ %15, %19 ]
  %5 = zext nneg i32 %.011 to i64
  %6 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %5
  %7 = load i32, ptr %6, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [8 x i8], ptr %2, i64 %8
  %10 = load double, ptr %9, align 8
  %.not = icmp eq i32 %7, %.011
  br i1 %.not, label %14, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %5
  %13 = load double, ptr %12, align 8
  store double %13, ptr %9, align 8
  store double %10, ptr %12, align 8
  br label %14

14:                                               ; preds = %11, %4
  %15 = add nuw nsw i32 %.011, 1
  %16 = sub nsw i32 1999, %.011
  %17 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %5
  %18 = load ptr, ptr %17, align 8
  call void @daxpy(i32 noundef %16, double noundef %10, ptr noundef %18, i32 noundef %15, i32 noundef 1, ptr noundef %2, i32 noundef %15, i32 noundef 1)
  br label %19

19:                                               ; preds = %14
  %20 = icmp samesign ult i32 %.011, 1998
  br i1 %20, label %4, label %21, !llvm.loop !21

21:                                               ; preds = %19
  br label %22

22:                                               ; preds = %21, %34
  %.02 = phi i32 [ 0, %21 ], [ %35, %34 ]
  %23 = sub nsw i32 1999, %.02
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [8 x i8], ptr %0, i64 %24
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds [8 x i8], ptr %26, i64 %24
  %28 = load double, ptr %27, align 8
  %29 = getelementptr inbounds [8 x i8], ptr %2, i64 %24
  %30 = load double, ptr %29, align 8
  %31 = fdiv double %30, %28
  store double %31, ptr %29, align 8
  %32 = fneg double %31
  %33 = load ptr, ptr %25, align 8
  call void @daxpy(i32 noundef %23, double noundef %32, ptr noundef %33, i32 noundef 0, i32 noundef 1, ptr noundef %2, i32 noundef 0, i32 noundef 1)
  br label %34

34:                                               ; preds = %22
  %35 = add nuw nsw i32 %.02, 1
  %36 = icmp samesign ult i32 %.02, 1999
  br i1 %36, label %22, label %37, !llvm.loop !22

37:                                               ; preds = %34
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = icmp sgt i32 %0, 1
  br i1 %3, label %4, label %15

4:                                                ; preds = %2
  br label %5

5:                                                ; preds = %4, %11
  %.011 = phi i32 [ 1, %4 ], [ %12, %11 ]
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %7 = load ptr, ptr %6, align 8
  %8 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(4) @.str) #5
  %.not = icmp ne i32 %8, 0
  br i1 %.not, label %10, label %9

9:                                                ; preds = %5
  br label %14

10:                                               ; preds = %5
  br label %11

11:                                               ; preds = %10
  %12 = add nuw nsw i32 %.011, 1
  %13 = icmp slt i32 %12, %0
  br i1 %13, label %5, label %.loopexit, !llvm.loop !23

.loopexit:                                        ; preds = %11
  br label %14

14:                                               ; preds = %.loopexit, %9
  br label %15

15:                                               ; preds = %14, %2
  %.0 = phi i1 [ %.not, %14 ], [ true, %2 ]
  %16 = call dereferenceable_or_null(16000) ptr @malloc(i64 noundef 16000) #6
  br label %17

17:                                               ; preds = %15, %21
  %.122 = phi i32 [ 0, %15 ], [ %22, %21 ]
  %18 = call dereferenceable_or_null(16008) ptr @malloc(i64 noundef 16008) #6
  %19 = zext nneg i32 %.122 to i64
  %20 = getelementptr inbounds nuw [8 x i8], ptr %16, i64 %19
  store ptr %18, ptr %20, align 8
  br label %21

21:                                               ; preds = %17
  %22 = add nuw nsw i32 %.122, 1
  %23 = icmp samesign ult i32 %.122, 1999
  br i1 %23, label %17, label %24, !llvm.loop !24

24:                                               ; preds = %21
  %25 = call dereferenceable_or_null(16000) ptr @malloc(i64 noundef 16000) #6
  %26 = call dereferenceable_or_null(16000) ptr @malloc(i64 noundef 16000) #6
  %27 = call dereferenceable_or_null(8000) ptr @malloc(i64 noundef 8000) #6
  call void @matgen(ptr noundef %16, ptr noundef %25)
  call void @dgefa(ptr noundef %16, ptr noundef %27)
  call void @dgesl(ptr noundef %16, ptr noundef %27, ptr noundef %25)
  call void @free(ptr noundef %27) #5
  call void @free(ptr noundef %26) #5
  call void @free(ptr noundef %25) #5
  br label %28

28:                                               ; preds = %24, %32
  %.23 = phi i32 [ 0, %24 ], [ %33, %32 ]
  %29 = zext nneg i32 %.23 to i64
  %30 = getelementptr inbounds nuw [8 x i8], ptr %16, i64 %29
  %31 = load ptr, ptr %30, align 8
  call void @free(ptr noundef %31) #5
  br label %32

32:                                               ; preds = %28
  %33 = add nuw nsw i32 %.23, 1
  %34 = icmp samesign ult i32 %.23, 1999
  br i1 %34, label %28, label %35, !llvm.loop !25

35:                                               ; preds = %32
  call void @free(ptr noundef %16) #5
  br i1 %.0, label %39, label %36

36:                                               ; preds = %35
  %37 = call ptr @__acrt_iob_func(i32 noundef 1) #5
  %38 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %37, ptr noundef nonnull @.str.1, double noundef 0.000000e+00) #5
  br label %42

39:                                               ; preds = %35
  %40 = call ptr @__acrt_iob_func(i32 noundef 1) #5
  %41 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %40, ptr noundef nonnull @.str.2, double noundef 0.000000e+00) #5
  br label %42

42:                                               ; preds = %39, %36
  %43 = call ptr @__acrt_iob_func(i32 noundef 1) #5
  %44 = call i32 @fflush(ptr noundef %43) #5
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
  %storemerge = phi i32 [ %9, %8 ], [ %6, %0 ]
  %11 = sitofp i32 %storemerge to double
  %12 = fmul nnan double %11, f0x3E00000000200FE1
  %13 = xor i32 %storemerge, 123459876
  store i32 %13, ptr @seed, align 4
  ret double %12
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
