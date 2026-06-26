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

3:                                                ; preds = %2, %13
  %.013 = phi i32 [ 0, %2 ], [ %14, %13 ]
  br label %4

4:                                                ; preds = %3, %4
  %.02 = phi i32 [ 0, %3 ], [ %11, %4 ]
  %5 = call double @random_double()
  %6 = sext i32 %.02 to i64
  %7 = getelementptr inbounds ptr, ptr %0, i64 %6
  %8 = load ptr, ptr %7, align 8
  %9 = sext i32 %.013 to i64
  %10 = getelementptr inbounds double, ptr %8, i64 %9
  store double %5, ptr %10, align 8
  %11 = add nsw i32 %.02, 1
  %12 = icmp slt i32 %11, 2000
  br i1 %12, label %4, label %13, !llvm.loop !7

13:                                               ; preds = %4
  %14 = add nsw i32 %.013, 1
  %15 = icmp slt i32 %14, 2000
  br i1 %15, label %3, label %16, !llvm.loop !9

16:                                               ; preds = %13
  br label %17

17:                                               ; preds = %16, %17
  %.124 = phi i32 [ 0, %16 ], [ %20, %17 ]
  %18 = sext i32 %.124 to i64
  %19 = getelementptr inbounds double, ptr %1, i64 %18
  store double 0.000000e+00, ptr %19, align 8
  %20 = add nsw i32 %.124, 1
  %21 = icmp slt i32 %20, 2000
  br i1 %21, label %17, label %22, !llvm.loop !10

22:                                               ; preds = %17
  br label %23

23:                                               ; preds = %22, %36
  %.16 = phi i32 [ 0, %22 ], [ %37, %36 ]
  br label %24

24:                                               ; preds = %23, %24
  %.25 = phi i32 [ 0, %23 ], [ %34, %24 ]
  %25 = sext i32 %.16 to i64
  %26 = getelementptr inbounds ptr, ptr %0, i64 %25
  %27 = load ptr, ptr %26, align 8
  %28 = sext i32 %.25 to i64
  %29 = getelementptr inbounds double, ptr %27, i64 %28
  %30 = load double, ptr %29, align 8
  %31 = getelementptr inbounds double, ptr %1, i64 %28
  %32 = load double, ptr %31, align 8
  %33 = fadd double %32, %30
  store double %33, ptr %31, align 8
  %34 = add nsw i32 %.25, 1
  %35 = icmp slt i32 %34, 2000
  br i1 %35, label %24, label %36, !llvm.loop !11

36:                                               ; preds = %24
  %37 = add nsw i32 %.16, 1
  %38 = icmp slt i32 %37, 2000
  br i1 %38, label %23, label %39, !llvm.loop !12

39:                                               ; preds = %36
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @idamax(i32 noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = icmp slt i32 %0, 1
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  br label %52

7:                                                ; preds = %4
  %8 = icmp eq i32 %0, 1
  br i1 %8, label %9, label %10

9:                                                ; preds = %7
  br label %51

10:                                               ; preds = %7
  %11 = icmp ne i32 %3, 1
  br i1 %11, label %12, label %32

12:                                               ; preds = %10
  %13 = sext i32 %2 to i64
  %14 = getelementptr inbounds double, ptr %1, i64 %13
  %15 = load double, ptr %14, align 8
  %16 = call double @llvm.fabs.f64(double %15)
  %17 = add nsw i32 1, %3
  %18 = icmp slt i32 1, %0
  br i1 %18, label %.lr.ph9, label %31

.lr.ph9:                                          ; preds = %12
  br label %19

19:                                               ; preds = %.lr.ph9, %27
  %.27 = phi i32 [ 0, %.lr.ph9 ], [ %.3, %27 ]
  %.016 = phi i32 [ %17, %.lr.ph9 ], [ %28, %27 ]
  %.025 = phi i32 [ 1, %.lr.ph9 ], [ %29, %27 ]
  %.044 = phi double [ %16, %.lr.ph9 ], [ %.15, %27 ]
  %20 = add nsw i32 %.016, %2
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds double, ptr %1, i64 %21
  %23 = load double, ptr %22, align 8
  %24 = call double @llvm.fabs.f64(double %23)
  %25 = fcmp ogt double %24, %.044
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  br label %27

27:                                               ; preds = %26, %19
  %.15 = phi double [ %24, %26 ], [ %.044, %19 ]
  %.3 = phi i32 [ %.025, %26 ], [ %.27, %19 ]
  %28 = add nsw i32 %.016, %3
  %29 = add nsw i32 %.025, 1
  %30 = icmp slt i32 %29, %0
  br i1 %30, label %19, label %._crit_edge10, !llvm.loop !13

._crit_edge10:                                    ; preds = %27
  br label %31

31:                                               ; preds = %._crit_edge10, %12
  %.2.lcssa = phi i32 [ %.3, %._crit_edge10 ], [ 0, %12 ]
  br label %50

32:                                               ; preds = %10
  %33 = sext i32 %2 to i64
  %34 = getelementptr inbounds double, ptr %1, i64 %33
  %35 = load double, ptr %34, align 8
  %36 = call double @llvm.fabs.f64(double %35)
  %37 = icmp slt i32 1, %0
  br i1 %37, label %.lr.ph, label %49

.lr.ph:                                           ; preds = %32
  br label %38

38:                                               ; preds = %.lr.ph, %46
  %.53 = phi i32 [ 0, %.lr.ph ], [ %.6, %46 ]
  %.132 = phi i32 [ 1, %.lr.ph ], [ %47, %46 ]
  %.261 = phi double [ %36, %.lr.ph ], [ %.37, %46 ]
  %39 = add nsw i32 %.132, %2
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds double, ptr %1, i64 %40
  %42 = load double, ptr %41, align 8
  %43 = call double @llvm.fabs.f64(double %42)
  %44 = fcmp ogt double %43, %.261
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  br label %46

46:                                               ; preds = %45, %38
  %.37 = phi double [ %43, %45 ], [ %.261, %38 ]
  %.6 = phi i32 [ %.132, %45 ], [ %.53, %38 ]
  %47 = add nsw i32 %.132, 1
  %48 = icmp slt i32 %47, %0
  br i1 %48, label %38, label %._crit_edge, !llvm.loop !14

._crit_edge:                                      ; preds = %46
  br label %49

49:                                               ; preds = %._crit_edge, %32
  %.5.lcssa = phi i32 [ %.6, %._crit_edge ], [ 0, %32 ]
  br label %50

50:                                               ; preds = %49, %31
  %.4 = phi i32 [ %.2.lcssa, %31 ], [ %.5.lcssa, %49 ]
  br label %51

51:                                               ; preds = %50, %9
  %.1 = phi i32 [ 0, %9 ], [ %.4, %50 ]
  br label %52

52:                                               ; preds = %51, %6
  %.0 = phi i32 [ -1, %6 ], [ %.1, %51 ]
  ret i32 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @dscal(i32 noundef %0, double noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = icmp sgt i32 %0, 0
  br i1 %6, label %7, label %32

7:                                                ; preds = %5
  %8 = icmp ne i32 %4, 1
  br i1 %8, label %9, label %21

9:                                                ; preds = %7
  %10 = mul nsw i32 %0, %4
  %11 = icmp slt i32 0, %10
  br i1 %11, label %.lr.ph4, label %20

.lr.ph4:                                          ; preds = %9
  br label %12

12:                                               ; preds = %.lr.ph4, %12
  %.02 = phi i32 [ 0, %.lr.ph4 ], [ %18, %12 ]
  %13 = add nsw i32 %.02, %3
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds double, ptr %2, i64 %14
  %16 = load double, ptr %15, align 8
  %17 = fmul double %16, %1
  store double %17, ptr %15, align 8
  %18 = add nsw i32 %.02, %4
  %19 = icmp slt i32 %18, %10
  br i1 %19, label %12, label %._crit_edge5, !llvm.loop !15

._crit_edge5:                                     ; preds = %12
  br label %20

20:                                               ; preds = %._crit_edge5, %9
  br label %31

21:                                               ; preds = %7
  br i1 true, label %.lr.ph, label %._crit_edge6

._crit_edge6:                                     ; preds = %21
  br label %30

.lr.ph:                                           ; preds = %21
  br label %22

22:                                               ; preds = %.lr.ph, %22
  %.11 = phi i32 [ 0, %.lr.ph ], [ %28, %22 ]
  %23 = add nsw i32 %.11, %3
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds double, ptr %2, i64 %24
  %26 = load double, ptr %25, align 8
  %27 = fmul double %26, %1
  store double %27, ptr %25, align 8
  %28 = add nsw i32 %.11, 1
  %29 = icmp slt i32 %28, %0
  br i1 %29, label %22, label %._crit_edge, !llvm.loop !16

._crit_edge:                                      ; preds = %22
  br label %30

30:                                               ; preds = %._crit_edge6, %._crit_edge
  br label %31

31:                                               ; preds = %30, %20
  br label %32

32:                                               ; preds = %31, %5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @daxpy(i32 noundef %0, double noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7) #0 {
  %9 = icmp sgt i32 %0, 0
  br i1 %9, label %10, label %56

10:                                               ; preds = %8
  %11 = fcmp une double %1, 0.000000e+00
  br i1 %11, label %12, label %56

12:                                               ; preds = %10
  %13 = icmp ne i32 %4, 1
  br i1 %13, label %16, label %14

14:                                               ; preds = %12
  %15 = icmp ne i32 %7, 1
  br i1 %15, label %16, label %42

16:                                               ; preds = %14, %12
  %17 = icmp slt i32 %4, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %16
  %19 = sub nsw i32 1, %0
  %20 = mul nsw i32 %19, %4
  br label %21

21:                                               ; preds = %18, %16
  %.01 = phi i32 [ %20, %18 ], [ 0, %16 ]
  %22 = icmp slt i32 %7, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %21
  %24 = sub nsw i32 1, %0
  %25 = mul nsw i32 %24, %7
  br label %26

26:                                               ; preds = %23, %21
  %.0 = phi i32 [ %25, %23 ], [ 0, %21 ]
  br i1 true, label %.lr.ph6, label %._crit_edge9

._crit_edge9:                                     ; preds = %26
  br label %41

.lr.ph6:                                          ; preds = %26
  br label %27

27:                                               ; preds = %.lr.ph6, %27
  %.14 = phi i32 [ %.0, %.lr.ph6 ], [ %38, %27 ]
  %.123 = phi i32 [ %.01, %.lr.ph6 ], [ %37, %27 ]
  %.032 = phi i32 [ 0, %.lr.ph6 ], [ %39, %27 ]
  %28 = add nsw i32 %.123, %3
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds double, ptr %2, i64 %29
  %31 = load double, ptr %30, align 8
  %32 = add nsw i32 %.14, %6
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds double, ptr %5, i64 %33
  %35 = load double, ptr %34, align 8
  %36 = call double @llvm.fmuladd.f64(double %1, double %31, double %35)
  store double %36, ptr %34, align 8
  %37 = add nsw i32 %.123, %4
  %38 = add nsw i32 %.14, %7
  %39 = add nsw i32 %.032, 1
  %40 = icmp slt i32 %39, %0
  br i1 %40, label %27, label %._crit_edge7, !llvm.loop !17

._crit_edge7:                                     ; preds = %27
  br label %41

41:                                               ; preds = %._crit_edge9, %._crit_edge7
  br label %56

42:                                               ; preds = %14
  br i1 true, label %.lr.ph, label %._crit_edge8

._crit_edge8:                                     ; preds = %42
  br label %55

.lr.ph:                                           ; preds = %42
  br label %43

43:                                               ; preds = %.lr.ph, %43
  %.141 = phi i32 [ 0, %.lr.ph ], [ %53, %43 ]
  %44 = add nsw i32 %.141, %3
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds double, ptr %2, i64 %45
  %47 = load double, ptr %46, align 8
  %48 = add nsw i32 %.141, %6
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds double, ptr %5, i64 %49
  %51 = load double, ptr %50, align 8
  %52 = call double @llvm.fmuladd.f64(double %1, double %47, double %51)
  store double %52, ptr %50, align 8
  %53 = add nsw i32 %.141, 1
  %54 = icmp slt i32 %53, %0
  br i1 %54, label %43, label %._crit_edge, !llvm.loop !18

._crit_edge:                                      ; preds = %43
  br label %55

55:                                               ; preds = %._crit_edge8, %._crit_edge
  br label %56

56:                                               ; preds = %55, %41, %10, %8
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @dgefa(ptr noundef %0, ptr noundef %1) #0 {
  br label %3

3:                                                ; preds = %2, %40
  %.013 = phi i32 [ 0, %2 ], [ %7, %40 ]
  %4 = sext i32 %.013 to i64
  %5 = getelementptr inbounds ptr, ptr %0, i64 %4
  %6 = load ptr, ptr %5, align 8
  %7 = add nsw i32 %.013, 1
  %8 = sub nsw i32 2000, %.013
  %9 = call i32 @idamax(i32 noundef %8, ptr noundef %6, i32 noundef %.013, i32 noundef 1)
  %10 = add nsw i32 %9, %.013
  %11 = getelementptr inbounds i32, ptr %1, i64 %4
  store i32 %10, ptr %11, align 4
  %12 = sext i32 %10 to i64
  %13 = getelementptr inbounds double, ptr %6, i64 %12
  %14 = load double, ptr %13, align 8
  %15 = fcmp une double %14, 0.000000e+00
  br i1 %15, label %16, label %40

16:                                               ; preds = %3
  %17 = icmp ne i32 %10, %.013
  br i1 %17, label %18, label %._crit_edge4

._crit_edge4:                                     ; preds = %16
  %.phi.trans.insert = getelementptr inbounds double, ptr %6, i64 %4
  %.pre = load double, ptr %.phi.trans.insert, align 8
  br label %21

18:                                               ; preds = %16
  %19 = getelementptr inbounds double, ptr %6, i64 %4
  %20 = load double, ptr %19, align 8
  store double %20, ptr %13, align 8
  store double %14, ptr %19, align 8
  br label %21

21:                                               ; preds = %._crit_edge4, %18
  %22 = phi double [ %.pre, %._crit_edge4 ], [ %14, %18 ]
  %23 = getelementptr inbounds double, ptr %6, i64 %4
  %24 = fdiv double -1.000000e+00, %22
  %25 = sub nsw i32 2000, %7
  call void @dscal(i32 noundef %25, double noundef %24, ptr noundef %6, i32 noundef %7, i32 noundef 1)
  %26 = icmp slt i32 %7, 2000
  br i1 %26, label %.lr.ph, label %39

.lr.ph:                                           ; preds = %21
  br label %27

27:                                               ; preds = %.lr.ph, %36
  %.02 = phi i32 [ %7, %.lr.ph ], [ %37, %36 ]
  %28 = sext i32 %.02 to i64
  %29 = getelementptr inbounds ptr, ptr %0, i64 %28
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr inbounds double, ptr %30, i64 %12
  %32 = load double, ptr %31, align 8
  br i1 %17, label %33, label %36

33:                                               ; preds = %27
  %34 = getelementptr inbounds double, ptr %30, i64 %4
  %35 = load double, ptr %34, align 8
  store double %35, ptr %31, align 8
  store double %32, ptr %34, align 8
  br label %36

36:                                               ; preds = %33, %27
  call void @daxpy(i32 noundef %25, double noundef %32, ptr noundef %6, i32 noundef %7, i32 noundef 1, ptr noundef %30, i32 noundef %7, i32 noundef 1)
  %37 = add nsw i32 %.02, 1
  %38 = icmp slt i32 %37, 2000
  br i1 %38, label %27, label %._crit_edge, !llvm.loop !19

._crit_edge:                                      ; preds = %36
  br label %39

39:                                               ; preds = %._crit_edge, %21
  br label %40

40:                                               ; preds = %39, %3
  %41 = icmp slt i32 %7, 1999
  br i1 %41, label %3, label %42, !llvm.loop !20

42:                                               ; preds = %40
  %43 = getelementptr inbounds i32, ptr %1, i64 1999
  store i32 1999, ptr %43, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @dgesl(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  br label %4

4:                                                ; preds = %3, %15
  %.011 = phi i32 [ 0, %3 ], [ %16, %15 ]
  %5 = sext i32 %.011 to i64
  %6 = getelementptr inbounds i32, ptr %1, i64 %5
  %7 = load i32, ptr %6, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds double, ptr %2, i64 %8
  %10 = load double, ptr %9, align 8
  %11 = icmp ne i32 %7, %.011
  br i1 %11, label %12, label %15

12:                                               ; preds = %4
  %13 = getelementptr inbounds double, ptr %2, i64 %5
  %14 = load double, ptr %13, align 8
  store double %14, ptr %9, align 8
  store double %10, ptr %13, align 8
  br label %15

15:                                               ; preds = %12, %4
  %16 = add nsw i32 %.011, 1
  %17 = sub nsw i32 2000, %16
  %18 = getelementptr inbounds ptr, ptr %0, i64 %5
  %19 = load ptr, ptr %18, align 8
  call void @daxpy(i32 noundef %17, double noundef %10, ptr noundef %19, i32 noundef %16, i32 noundef 1, ptr noundef %2, i32 noundef %16, i32 noundef 1)
  %20 = icmp slt i32 %16, 1999
  br i1 %20, label %4, label %21, !llvm.loop !21

21:                                               ; preds = %15
  br label %22

22:                                               ; preds = %21, %22
  %.02 = phi i32 [ 0, %21 ], [ %23, %22 ]
  %23 = add nsw i32 %.02, 1
  %24 = sub nsw i32 2000, %23
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds ptr, ptr %0, i64 %25
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr inbounds double, ptr %27, i64 %25
  %29 = load double, ptr %28, align 8
  %30 = getelementptr inbounds double, ptr %2, i64 %25
  %31 = load double, ptr %30, align 8
  %32 = fdiv double %31, %29
  store double %32, ptr %30, align 8
  %33 = fneg double %32
  %34 = load ptr, ptr %26, align 8
  call void @daxpy(i32 noundef %24, double noundef %33, ptr noundef %34, i32 noundef 0, i32 noundef 1, ptr noundef %2, i32 noundef 0, i32 noundef 1)
  %35 = icmp slt i32 %23, 2000
  br i1 %35, label %22, label %36, !llvm.loop !22

36:                                               ; preds = %22
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
  %6 = getelementptr inbounds ptr, ptr %1, i64 1
  %7 = load ptr, ptr %6, align 8
  %8 = call i32 @strcmp(ptr noundef %7, ptr noundef @.str) #5
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %5
  br label %14

11:                                               ; preds = %5
  %12 = add nsw i32 %.011, 1
  %13 = icmp slt i32 %12, %0
  br i1 %13, label %5, label %.loopexit, !llvm.loop !23

.loopexit:                                        ; preds = %11
  br label %14

14:                                               ; preds = %.loopexit, %10
  %.1 = phi i8 [ 1, %10 ], [ 0, %.loopexit ]
  br label %15

15:                                               ; preds = %14, %2
  %.0 = phi i8 [ %.1, %14 ], [ 0, %2 ]
  %16 = call ptr @malloc(i64 noundef 16000) #6
  br label %17

17:                                               ; preds = %15, %17
  %.122 = phi i32 [ 0, %15 ], [ %21, %17 ]
  %18 = call ptr @malloc(i64 noundef 16008) #6
  %19 = sext i32 %.122 to i64
  %20 = getelementptr inbounds ptr, ptr %16, i64 %19
  store ptr %18, ptr %20, align 8
  %21 = add nsw i32 %.122, 1
  %22 = icmp slt i32 %21, 2000
  br i1 %22, label %17, label %23, !llvm.loop !24

23:                                               ; preds = %17
  %24 = call ptr @malloc(i64 noundef 16000) #6
  %25 = call ptr @malloc(i64 noundef 16000) #6
  %26 = call ptr @malloc(i64 noundef 8000) #6
  call void @matgen(ptr noundef %16, ptr noundef %24)
  call void @dgefa(ptr noundef %16, ptr noundef %26)
  call void @dgesl(ptr noundef %16, ptr noundef %26, ptr noundef %24)
  call void @free(ptr noundef %26)
  call void @free(ptr noundef %25)
  call void @free(ptr noundef %24)
  br label %27

27:                                               ; preds = %23, %27
  %.23 = phi i32 [ 0, %23 ], [ %31, %27 ]
  %28 = sext i32 %.23 to i64
  %29 = getelementptr inbounds ptr, ptr %16, i64 %28
  %30 = load ptr, ptr %29, align 8
  call void @free(ptr noundef %30)
  %31 = add nsw i32 %.23, 1
  %32 = icmp slt i32 %31, 2000
  br i1 %32, label %27, label %33, !llvm.loop !25

33:                                               ; preds = %27
  call void @free(ptr noundef %16)
  %34 = icmp ne i8 %.0, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %33
  %36 = call ptr @__acrt_iob_func(i32 noundef 1)
  %37 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %36, ptr noundef @.str.1, double noundef 0.000000e+00) #5
  br label %41

38:                                               ; preds = %33
  %39 = call ptr @__acrt_iob_func(i32 noundef 1)
  %40 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %39, ptr noundef @.str.2, double noundef 0.000000e+00) #5
  br label %41

41:                                               ; preds = %38, %35
  %42 = call ptr @__acrt_iob_func(i32 noundef 1)
  %43 = call i32 @fflush(ptr noundef %42)
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
