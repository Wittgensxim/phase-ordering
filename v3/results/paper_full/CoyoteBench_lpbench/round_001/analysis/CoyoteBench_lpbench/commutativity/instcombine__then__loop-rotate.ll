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
  %13 = icmp samesign ult i32 %12, 2000
  br i1 %13, label %4, label %14, !llvm.loop !7

14:                                               ; preds = %11
  br label %15

15:                                               ; preds = %14
  %16 = add nuw nsw i32 %.013, 1
  %17 = icmp samesign ult i32 %16, 2000
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
  %24 = icmp samesign ult i32 %23, 2000
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
  %39 = icmp samesign ult i32 %38, 2000
  br i1 %39, label %27, label %40, !llvm.loop !11

40:                                               ; preds = %37
  br label %41

41:                                               ; preds = %40
  %42 = add nuw nsw i32 %.16, 1
  %43 = icmp samesign ult i32 %42, 2000
  br i1 %43, label %26, label %44, !llvm.loop !12

44:                                               ; preds = %41
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
  %17 = icmp slt i32 1, %0
  br i1 %17, label %.lr.ph, label %31

.lr.ph:                                           ; preds = %11
  br label %18

18:                                               ; preds = %.lr.ph, %27
  %.24 = phi i32 [ 0, %.lr.ph ], [ %.3, %27 ]
  %.013 = phi i32 [ %16, %.lr.ph ], [ %28, %27 ]
  %.022 = phi i32 [ 1, %.lr.ph ], [ %29, %27 ]
  %.041 = phi double [ %15, %.lr.ph ], [ %.15, %27 ]
  %19 = add nsw i32 %.013, %2
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [8 x i8], ptr %1, i64 %20
  %22 = load double, ptr %21, align 8
  %23 = call double @llvm.fabs.f64(double %22)
  %24 = fcmp ogt double %23, %.041
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  br label %26

26:                                               ; preds = %25, %18
  %.15 = phi double [ %23, %25 ], [ %.041, %18 ]
  %.3 = phi i32 [ %.022, %25 ], [ %.24, %18 ]
  br label %27

27:                                               ; preds = %26
  %28 = add nsw i32 %.013, %3
  %29 = add nuw nsw i32 %.022, 1
  %30 = icmp slt i32 %29, %0
  br i1 %30, label %18, label %._crit_edge, !llvm.loop !13

._crit_edge:                                      ; preds = %27
  %split = phi i32 [ %.3, %27 ]
  br label %31

31:                                               ; preds = %._crit_edge, %11
  %.2.lcssa = phi i32 [ %split, %._crit_edge ], [ 0, %11 ]
  br label %51

32:                                               ; preds = %10
  %33 = sext i32 %2 to i64
  %34 = getelementptr inbounds [8 x i8], ptr %1, i64 %33
  %35 = load double, ptr %34, align 8
  %36 = call double @llvm.fabs.f64(double %35)
  %37 = icmp slt i32 1, %0
  br i1 %37, label %.lr.ph9, label %50

.lr.ph9:                                          ; preds = %32
  br label %38

38:                                               ; preds = %.lr.ph9, %47
  %.57 = phi i32 [ 0, %.lr.ph9 ], [ %.6, %47 ]
  %.136 = phi i32 [ 1, %.lr.ph9 ], [ %48, %47 ]
  %.265 = phi double [ %36, %.lr.ph9 ], [ %.37, %47 ]
  %39 = add nsw i32 %.136, %2
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [8 x i8], ptr %1, i64 %40
  %42 = load double, ptr %41, align 8
  %43 = call double @llvm.fabs.f64(double %42)
  %44 = fcmp ogt double %43, %.265
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  br label %46

46:                                               ; preds = %45, %38
  %.37 = phi double [ %43, %45 ], [ %.265, %38 ]
  %.6 = phi i32 [ %.136, %45 ], [ %.57, %38 ]
  br label %47

47:                                               ; preds = %46
  %48 = add nuw nsw i32 %.136, 1
  %49 = icmp slt i32 %48, %0
  br i1 %49, label %38, label %._crit_edge10, !llvm.loop !14

._crit_edge10:                                    ; preds = %47
  %split11 = phi i32 [ %.6, %47 ]
  br label %50

50:                                               ; preds = %._crit_edge10, %32
  %.5.lcssa = phi i32 [ %split11, %._crit_edge10 ], [ 0, %32 ]
  br label %51

51:                                               ; preds = %50, %31
  %.4 = phi i32 [ %.2.lcssa, %31 ], [ %.5.lcssa, %50 ]
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
  %10 = icmp slt i32 0, %9
  br i1 %10, label %.lr.ph, label %20

.lr.ph:                                           ; preds = %8
  br label %11

11:                                               ; preds = %.lr.ph, %17
  %.01 = phi i32 [ 0, %.lr.ph ], [ %18, %17 ]
  %12 = add nsw i32 %.01, %3
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [8 x i8], ptr %2, i64 %13
  %15 = load double, ptr %14, align 8
  %16 = fmul double %15, %1
  store double %16, ptr %14, align 8
  br label %17

17:                                               ; preds = %11
  %18 = add nsw i32 %.01, %4
  %19 = icmp slt i32 %18, %9
  br i1 %19, label %11, label %._crit_edge, !llvm.loop !15

._crit_edge:                                      ; preds = %17
  br label %20

20:                                               ; preds = %._crit_edge, %8
  br label %33

21:                                               ; preds = %7
  %22 = icmp slt i32 0, %0
  br i1 %22, label %.lr.ph4, label %32

.lr.ph4:                                          ; preds = %21
  br label %23

23:                                               ; preds = %.lr.ph4, %29
  %.12 = phi i32 [ 0, %.lr.ph4 ], [ %30, %29 ]
  %24 = add nsw i32 %.12, %3
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [8 x i8], ptr %2, i64 %25
  %27 = load double, ptr %26, align 8
  %28 = fmul double %27, %1
  store double %28, ptr %26, align 8
  br label %29

29:                                               ; preds = %23
  %30 = add nuw nsw i32 %.12, 1
  %31 = icmp slt i32 %30, %0
  br i1 %31, label %23, label %._crit_edge5, !llvm.loop !16

._crit_edge5:                                     ; preds = %29
  br label %32

32:                                               ; preds = %._crit_edge5, %21
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
  %.01 = phi i32 [ %18, %16 ], [ 0, %14 ]
  %20 = icmp slt i32 %7, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %19
  %22 = sub nsw i32 1, %0
  %23 = mul nsw i32 %22, %7
  br label %24

24:                                               ; preds = %21, %19
  %.0 = phi i32 [ %23, %21 ], [ 0, %19 ]
  %25 = icmp slt i32 0, %0
  br i1 %25, label %.lr.ph, label %41

.lr.ph:                                           ; preds = %24
  br label %26

26:                                               ; preds = %.lr.ph, %36
  %.15 = phi i32 [ %.0, %.lr.ph ], [ %37, %36 ]
  %.123 = phi i32 [ %.01, %.lr.ph ], [ %38, %36 ]
  %.032 = phi i32 [ 0, %.lr.ph ], [ %39, %36 ]
  %27 = add nsw i32 %.123, %3
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [8 x i8], ptr %2, i64 %28
  %30 = load double, ptr %29, align 8
  %31 = add nsw i32 %.15, %6
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [8 x i8], ptr %5, i64 %32
  %34 = load double, ptr %33, align 8
  %35 = call double @llvm.fmuladd.f64(double %1, double %30, double %34)
  store double %35, ptr %33, align 8
  br label %36

36:                                               ; preds = %26
  %37 = add nsw i32 %.15, %7
  %38 = add nsw i32 %.123, %4
  %39 = add nuw nsw i32 %.032, 1
  %40 = icmp slt i32 %39, %0
  br i1 %40, label %26, label %._crit_edge, !llvm.loop !17

._crit_edge:                                      ; preds = %36
  br label %41

41:                                               ; preds = %._crit_edge, %24
  br label %59

42:                                               ; preds = %13
  %43 = icmp slt i32 0, %0
  br i1 %43, label %.lr.ph8, label %57

.lr.ph8:                                          ; preds = %42
  br label %44

44:                                               ; preds = %.lr.ph8, %54
  %.146 = phi i32 [ 0, %.lr.ph8 ], [ %55, %54 ]
  %45 = add nsw i32 %.146, %3
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [8 x i8], ptr %2, i64 %46
  %48 = load double, ptr %47, align 8
  %49 = add nsw i32 %.146, %6
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [8 x i8], ptr %5, i64 %50
  %52 = load double, ptr %51, align 8
  %53 = call double @llvm.fmuladd.f64(double %1, double %48, double %52)
  store double %53, ptr %51, align 8
  br label %54

54:                                               ; preds = %44
  %55 = add nuw nsw i32 %.146, 1
  %56 = icmp slt i32 %55, %0
  br i1 %56, label %44, label %._crit_edge9, !llvm.loop !18

._crit_edge9:                                     ; preds = %54
  br label %57

57:                                               ; preds = %._crit_edge9, %42
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

3:                                                ; preds = %2, %41
  %.013 = phi i32 [ 0, %2 ], [ %7, %41 ]
  %4 = zext nneg i32 %.013 to i64
  %5 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %4
  %6 = load ptr, ptr %5, align 8
  %7 = add nuw nsw i32 %.013, 1
  %8 = sub nuw nsw i32 2000, %.013
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
  %25 = icmp samesign ult i32 %7, 2000
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
  %38 = icmp samesign ult i32 %37, 2000
  br i1 %38, label %26, label %._crit_edge, !llvm.loop !19

._crit_edge:                                      ; preds = %36
  br label %39

39:                                               ; preds = %._crit_edge, %20
  br label %40

40:                                               ; preds = %39, %3
  br label %41

41:                                               ; preds = %40
  %42 = icmp samesign ult i32 %7, 1999
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
  %20 = icmp samesign ult i32 %15, 1999
  br i1 %20, label %4, label %21, !llvm.loop !21

21:                                               ; preds = %19
  br label %22

22:                                               ; preds = %21, %34
  %.02 = phi i32 [ 0, %21 ], [ %35, %34 ]
  %23 = sub nuw nsw i32 1999, %.02
  %24 = zext nneg i32 %23 to i64
  %25 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %24
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds nuw [8 x i8], ptr %26, i64 %24
  %28 = load double, ptr %27, align 8
  %29 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %24
  %30 = load double, ptr %29, align 8
  %31 = fdiv double %30, %28
  store double %31, ptr %29, align 8
  %32 = fneg double %31
  %33 = load ptr, ptr %25, align 8
  call void @daxpy(i32 noundef %23, double noundef %32, ptr noundef %33, i32 noundef 0, i32 noundef 1, ptr noundef %2, i32 noundef 0, i32 noundef 1)
  br label %34

34:                                               ; preds = %22
  %35 = add nuw nsw i32 %.02, 1
  %36 = icmp samesign ult i32 %35, 2000
  br i1 %36, label %22, label %37, !llvm.loop !22

37:                                               ; preds = %34
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = icmp sgt i32 %0, 1
  br i1 %3, label %4, label %17

4:                                                ; preds = %2
  br label %5

5:                                                ; preds = %4, %12
  %6 = phi i1 [ false, %4 ], [ %14, %12 ]
  %.013 = phi i32 [ 1, %4 ], [ %13, %12 ]
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %8 = load ptr, ptr %7, align 8
  %9 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(4) @.str) #5
  %.not = icmp eq i32 %9, 0
  br i1 %.not, label %10, label %11

10:                                               ; preds = %5
  %.lcssa2 = phi i1 [ %6, %5 ]
  br label %15

11:                                               ; preds = %5
  br label %12

12:                                               ; preds = %11
  %13 = add nuw nsw i32 %.013, 1
  %14 = icmp sge i32 %13, %0
  br i1 %14, label %.loopexit, label %5, !llvm.loop !23

.loopexit:                                        ; preds = %12
  %.lcssa = phi i1 [ %14, %12 ]
  br label %15

15:                                               ; preds = %.loopexit, %10
  %16 = phi i1 [ %.lcssa, %.loopexit ], [ %.lcssa2, %10 ]
  br label %17

17:                                               ; preds = %15, %2
  %.0 = phi i1 [ %16, %15 ], [ true, %2 ]
  %18 = call dereferenceable_or_null(16000) ptr @malloc(i64 noundef 16000) #6
  br label %19

19:                                               ; preds = %17, %23
  %.124 = phi i32 [ 0, %17 ], [ %24, %23 ]
  %20 = call dereferenceable_or_null(16008) ptr @malloc(i64 noundef 16008) #6
  %21 = zext nneg i32 %.124 to i64
  %22 = getelementptr inbounds nuw [8 x i8], ptr %18, i64 %21
  store ptr %20, ptr %22, align 8
  br label %23

23:                                               ; preds = %19
  %24 = add nuw nsw i32 %.124, 1
  %25 = icmp samesign ult i32 %24, 2000
  br i1 %25, label %19, label %26, !llvm.loop !24

26:                                               ; preds = %23
  %27 = call dereferenceable_or_null(16000) ptr @malloc(i64 noundef 16000) #6
  %28 = call dereferenceable_or_null(16000) ptr @malloc(i64 noundef 16000) #6
  %29 = call dereferenceable_or_null(8000) ptr @malloc(i64 noundef 8000) #6
  call void @matgen(ptr noundef %18, ptr noundef %27)
  call void @dgefa(ptr noundef %18, ptr noundef %29)
  call void @dgesl(ptr noundef %18, ptr noundef %29, ptr noundef %27)
  call void @free(ptr noundef %29) #5
  call void @free(ptr noundef %28) #5
  call void @free(ptr noundef %27) #5
  br label %30

30:                                               ; preds = %26, %34
  %.25 = phi i32 [ 0, %26 ], [ %35, %34 ]
  %31 = zext nneg i32 %.25 to i64
  %32 = getelementptr inbounds nuw [8 x i8], ptr %18, i64 %31
  %33 = load ptr, ptr %32, align 8
  call void @free(ptr noundef %33) #5
  br label %34

34:                                               ; preds = %30
  %35 = add nuw nsw i32 %.25, 1
  %36 = icmp samesign ult i32 %35, 2000
  br i1 %36, label %30, label %37, !llvm.loop !25

37:                                               ; preds = %34
  call void @free(ptr noundef %18) #5
  br i1 %.0, label %41, label %38

38:                                               ; preds = %37
  %39 = call ptr @__acrt_iob_func(i32 noundef 1) #5
  %40 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %39, ptr noundef nonnull @.str.1, double noundef 0.000000e+00) #5
  br label %44

41:                                               ; preds = %37
  %42 = call ptr @__acrt_iob_func(i32 noundef 1) #5
  %43 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %42, ptr noundef nonnull @.str.2, double noundef 0.000000e+00) #5
  br label %44

44:                                               ; preds = %41, %38
  %45 = call ptr @__acrt_iob_func(i32 noundef 1) #5
  %46 = call i32 @fflush(ptr noundef %45) #5
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
