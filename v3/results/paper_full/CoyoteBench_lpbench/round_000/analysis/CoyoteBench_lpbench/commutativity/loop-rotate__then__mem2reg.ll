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
  %3 = icmp slt i32 0, 2000
  br i1 %3, label %.lr.ph2, label %20

.lr.ph2:                                          ; preds = %2
  br label %4

4:                                                ; preds = %.lr.ph2, %17
  %.013 = phi i32 [ 0, %.lr.ph2 ], [ %18, %17 ]
  %5 = icmp slt i32 0, 2000
  br i1 %5, label %.lr.ph, label %16

.lr.ph:                                           ; preds = %4
  br label %6

6:                                                ; preds = %.lr.ph, %13
  %.0 = phi i32 [ 0, %.lr.ph ], [ %14, %13 ]
  %7 = call double @random_double()
  %8 = sext i32 %.0 to i64
  %9 = getelementptr inbounds ptr, ptr %0, i64 %8
  %10 = load ptr, ptr %9, align 8
  %11 = sext i32 %.013 to i64
  %12 = getelementptr inbounds double, ptr %10, i64 %11
  store double %7, ptr %12, align 8
  br label %13

13:                                               ; preds = %6
  %14 = add nsw i32 %.0, 1
  %15 = icmp slt i32 %14, 2000
  br i1 %15, label %6, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %13
  br label %16

16:                                               ; preds = %._crit_edge, %4
  br label %17

17:                                               ; preds = %16
  %18 = add nsw i32 %.013, 1
  %19 = icmp slt i32 %18, 2000
  br i1 %19, label %4, label %._crit_edge3, !llvm.loop !9

._crit_edge3:                                     ; preds = %17
  br label %20

20:                                               ; preds = %._crit_edge3, %2
  %21 = icmp slt i32 0, 2000
  br i1 %21, label %.lr.ph5, label %28

.lr.ph5:                                          ; preds = %20
  br label %22

22:                                               ; preds = %.lr.ph5, %25
  %.114 = phi i32 [ 0, %.lr.ph5 ], [ %26, %25 ]
  %23 = sext i32 %.114 to i64
  %24 = getelementptr inbounds double, ptr %1, i64 %23
  store double 0.000000e+00, ptr %24, align 8
  br label %25

25:                                               ; preds = %22
  %26 = add nsw i32 %.114, 1
  %27 = icmp slt i32 %26, 2000
  br i1 %27, label %22, label %._crit_edge6, !llvm.loop !10

._crit_edge6:                                     ; preds = %25
  br label %28

28:                                               ; preds = %._crit_edge6, %20
  %29 = icmp slt i32 0, 2000
  br i1 %29, label %.lr.ph11, label %50

.lr.ph11:                                         ; preds = %28
  br label %30

30:                                               ; preds = %.lr.ph11, %47
  %.1 = phi i32 [ 0, %.lr.ph11 ], [ %48, %47 ]
  %31 = icmp slt i32 0, 2000
  br i1 %31, label %.lr.ph8, label %46

.lr.ph8:                                          ; preds = %30
  br label %32

32:                                               ; preds = %.lr.ph8, %43
  %.2 = phi i32 [ 0, %.lr.ph8 ], [ %44, %43 ]
  %33 = sext i32 %.1 to i64
  %34 = getelementptr inbounds ptr, ptr %0, i64 %33
  %35 = load ptr, ptr %34, align 8
  %36 = sext i32 %.2 to i64
  %37 = getelementptr inbounds double, ptr %35, i64 %36
  %38 = load double, ptr %37, align 8
  %39 = sext i32 %.2 to i64
  %40 = getelementptr inbounds double, ptr %1, i64 %39
  %41 = load double, ptr %40, align 8
  %42 = fadd double %41, %38
  store double %42, ptr %40, align 8
  br label %43

43:                                               ; preds = %32
  %44 = add nsw i32 %.2, 1
  %45 = icmp slt i32 %44, 2000
  br i1 %45, label %32, label %._crit_edge9, !llvm.loop !11

._crit_edge9:                                     ; preds = %43
  br label %46

46:                                               ; preds = %._crit_edge9, %30
  br label %47

47:                                               ; preds = %46
  %48 = add nsw i32 %.1, 1
  %49 = icmp slt i32 %48, 2000
  br i1 %49, label %30, label %._crit_edge12, !llvm.loop !12

._crit_edge12:                                    ; preds = %47
  br label %50

50:                                               ; preds = %._crit_edge12, %28
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @idamax(i32 noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = icmp slt i32 %0, 1
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  br label %54

7:                                                ; preds = %4
  %8 = icmp eq i32 %0, 1
  br i1 %8, label %9, label %10

9:                                                ; preds = %7
  br label %53

10:                                               ; preds = %7
  %11 = icmp ne i32 %3, 1
  br i1 %11, label %12, label %33

12:                                               ; preds = %10
  %13 = sext i32 %2 to i64
  %14 = getelementptr inbounds double, ptr %1, i64 %13
  %15 = load double, ptr %14, align 8
  %16 = call double @llvm.fabs.f64(double %15)
  %17 = add nsw i32 1, %3
  %18 = icmp slt i32 1, %0
  br i1 %18, label %.lr.ph2, label %32

.lr.ph2:                                          ; preds = %12
  br label %19

19:                                               ; preds = %.lr.ph2, %29
  %.07 = phi double [ %16, %.lr.ph2 ], [ %.18, %29 ]
  %.05 = phi i32 [ 1, %.lr.ph2 ], [ %30, %29 ]
  %.04 = phi i32 [ %17, %.lr.ph2 ], [ %28, %29 ]
  %.2 = phi i32 [ 0, %.lr.ph2 ], [ %.4, %29 ]
  %20 = add nsw i32 %.04, %2
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds double, ptr %1, i64 %21
  %23 = load double, ptr %22, align 8
  %24 = call double @llvm.fabs.f64(double %23)
  %25 = fcmp ogt double %24, %.07
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  br label %27

27:                                               ; preds = %26, %19
  %.18 = phi double [ %24, %26 ], [ %.07, %19 ]
  %.4 = phi i32 [ %.05, %26 ], [ %.2, %19 ]
  %28 = add nsw i32 %.04, %3
  br label %29

29:                                               ; preds = %27
  %30 = add nsw i32 %.05, 1
  %31 = icmp slt i32 %30, %0
  br i1 %31, label %19, label %._crit_edge3, !llvm.loop !13

._crit_edge3:                                     ; preds = %29
  br label %32

32:                                               ; preds = %._crit_edge3, %12
  %.3 = phi i32 [ %.4, %._crit_edge3 ], [ 0, %12 ]
  br label %52

33:                                               ; preds = %10
  %34 = sext i32 %2 to i64
  %35 = getelementptr inbounds double, ptr %1, i64 %34
  %36 = load double, ptr %35, align 8
  %37 = call double @llvm.fabs.f64(double %36)
  %38 = icmp slt i32 1, %0
  br i1 %38, label %.lr.ph, label %51

.lr.ph:                                           ; preds = %33
  br label %39

39:                                               ; preds = %.lr.ph, %48
  %.29 = phi double [ %37, %.lr.ph ], [ %.310, %48 ]
  %.16 = phi i32 [ 1, %.lr.ph ], [ %49, %48 ]
  %.6 = phi i32 [ 0, %.lr.ph ], [ %.8, %48 ]
  %40 = add nsw i32 %.16, %2
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds double, ptr %1, i64 %41
  %43 = load double, ptr %42, align 8
  %44 = call double @llvm.fabs.f64(double %43)
  %45 = fcmp ogt double %44, %.29
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  br label %47

47:                                               ; preds = %46, %39
  %.310 = phi double [ %44, %46 ], [ %.29, %39 ]
  %.8 = phi i32 [ %.16, %46 ], [ %.6, %39 ]
  br label %48

48:                                               ; preds = %47
  %49 = add nsw i32 %.16, 1
  %50 = icmp slt i32 %49, %0
  br i1 %50, label %39, label %._crit_edge, !llvm.loop !14

._crit_edge:                                      ; preds = %48
  br label %51

51:                                               ; preds = %._crit_edge, %33
  %.7 = phi i32 [ %.8, %._crit_edge ], [ 0, %33 ]
  br label %52

52:                                               ; preds = %51, %32
  %.5 = phi i32 [ %.3, %32 ], [ %.7, %51 ]
  br label %53

53:                                               ; preds = %52, %9
  %.1 = phi i32 [ 0, %9 ], [ %.5, %52 ]
  br label %54

54:                                               ; preds = %53, %6
  %.0 = phi i32 [ -1, %6 ], [ %.1, %53 ]
  ret i32 %.0
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
  %11 = icmp slt i32 0, %10
  br i1 %11, label %.lr.ph2, label %21

.lr.ph2:                                          ; preds = %9
  br label %12

12:                                               ; preds = %.lr.ph2, %18
  %.0 = phi i32 [ 0, %.lr.ph2 ], [ %19, %18 ]
  %13 = add nsw i32 %.0, %3
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds double, ptr %2, i64 %14
  %16 = load double, ptr %15, align 8
  %17 = fmul double %16, %1
  store double %17, ptr %15, align 8
  br label %18

18:                                               ; preds = %12
  %19 = add nsw i32 %.0, %4
  %20 = icmp slt i32 %19, %10
  br i1 %20, label %12, label %._crit_edge3, !llvm.loop !15

._crit_edge3:                                     ; preds = %18
  br label %21

21:                                               ; preds = %._crit_edge3, %9
  br label %34

22:                                               ; preds = %7
  %23 = icmp slt i32 0, %0
  br i1 %23, label %.lr.ph, label %33

.lr.ph:                                           ; preds = %22
  br label %24

24:                                               ; preds = %.lr.ph, %30
  %.1 = phi i32 [ 0, %.lr.ph ], [ %31, %30 ]
  %25 = add nsw i32 %.1, %3
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds double, ptr %2, i64 %26
  %28 = load double, ptr %27, align 8
  %29 = fmul double %28, %1
  store double %29, ptr %27, align 8
  br label %30

30:                                               ; preds = %24
  %31 = add nsw i32 %.1, 1
  %32 = icmp slt i32 %31, %0
  br i1 %32, label %24, label %._crit_edge, !llvm.loop !16

._crit_edge:                                      ; preds = %30
  br label %33

33:                                               ; preds = %._crit_edge, %22
  br label %34

34:                                               ; preds = %33, %21
  br label %35

35:                                               ; preds = %34, %5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @daxpy(i32 noundef %0, double noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7) #0 {
  %9 = icmp sgt i32 %0, 0
  br i1 %9, label %10, label %61

10:                                               ; preds = %8
  %11 = fcmp une double %1, 0.000000e+00
  br i1 %11, label %12, label %61

12:                                               ; preds = %10
  %13 = icmp ne i32 %4, 1
  br i1 %13, label %16, label %14

14:                                               ; preds = %12
  %15 = icmp ne i32 %7, 1
  br i1 %15, label %16, label %44

16:                                               ; preds = %14, %12
  %17 = icmp slt i32 %4, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %16
  %19 = sub nsw i32 1, %0
  %20 = mul nsw i32 %19, %4
  br label %21

21:                                               ; preds = %18, %16
  %.04 = phi i32 [ %20, %18 ], [ 0, %16 ]
  %22 = icmp slt i32 %7, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %21
  %24 = sub nsw i32 1, %0
  %25 = mul nsw i32 %24, %7
  br label %26

26:                                               ; preds = %23, %21
  %.0 = phi i32 [ %25, %23 ], [ 0, %21 ]
  %27 = icmp slt i32 0, %0
  br i1 %27, label %.lr.ph2, label %43

.lr.ph2:                                          ; preds = %26
  br label %28

28:                                               ; preds = %.lr.ph2, %40
  %.06 = phi i32 [ 0, %.lr.ph2 ], [ %41, %40 ]
  %.15 = phi i32 [ %.04, %.lr.ph2 ], [ %38, %40 ]
  %.1 = phi i32 [ %.0, %.lr.ph2 ], [ %39, %40 ]
  %29 = add nsw i32 %.15, %3
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds double, ptr %2, i64 %30
  %32 = load double, ptr %31, align 8
  %33 = add nsw i32 %.1, %6
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds double, ptr %5, i64 %34
  %36 = load double, ptr %35, align 8
  %37 = call double @llvm.fmuladd.f64(double %1, double %32, double %36)
  store double %37, ptr %35, align 8
  %38 = add nsw i32 %.15, %4
  %39 = add nsw i32 %.1, %7
  br label %40

40:                                               ; preds = %28
  %41 = add nsw i32 %.06, 1
  %42 = icmp slt i32 %41, %0
  br i1 %42, label %28, label %._crit_edge3, !llvm.loop !17

._crit_edge3:                                     ; preds = %40
  br label %43

43:                                               ; preds = %._crit_edge3, %26
  br label %61

44:                                               ; preds = %14
  %45 = icmp slt i32 0, %0
  br i1 %45, label %.lr.ph, label %59

.lr.ph:                                           ; preds = %44
  br label %46

46:                                               ; preds = %.lr.ph, %56
  %.17 = phi i32 [ 0, %.lr.ph ], [ %57, %56 ]
  %47 = add nsw i32 %.17, %3
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds double, ptr %2, i64 %48
  %50 = load double, ptr %49, align 8
  %51 = add nsw i32 %.17, %6
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds double, ptr %5, i64 %52
  %54 = load double, ptr %53, align 8
  %55 = call double @llvm.fmuladd.f64(double %1, double %50, double %54)
  store double %55, ptr %53, align 8
  br label %56

56:                                               ; preds = %46
  %57 = add nsw i32 %.17, 1
  %58 = icmp slt i32 %57, %0
  br i1 %58, label %46, label %._crit_edge, !llvm.loop !18

._crit_edge:                                      ; preds = %56
  br label %59

59:                                               ; preds = %._crit_edge, %44
  br label %60

60:                                               ; preds = %59
  br label %61

61:                                               ; preds = %60, %43, %10, %8
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @dgefa(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp slt i32 0, 1999
  br i1 %3, label %.lr.ph2, label %64

.lr.ph2:                                          ; preds = %2
  br label %4

4:                                                ; preds = %.lr.ph2, %61
  %.04 = phi i32 [ 0, %.lr.ph2 ], [ %62, %61 ]
  %5 = sext i32 %.04 to i64
  %6 = getelementptr inbounds ptr, ptr %0, i64 %5
  %7 = load ptr, ptr %6, align 8
  %8 = add nsw i32 %.04, 1
  %9 = sub nsw i32 2000, %.04
  %10 = call i32 @idamax(i32 noundef %9, ptr noundef %7, i32 noundef %.04, i32 noundef 1)
  %11 = add nsw i32 %10, %.04
  %12 = sext i32 %.04 to i64
  %13 = getelementptr inbounds i32, ptr %1, i64 %12
  store i32 %11, ptr %13, align 4
  %14 = sext i32 %11 to i64
  %15 = getelementptr inbounds double, ptr %7, i64 %14
  %16 = load double, ptr %15, align 8
  %17 = fcmp une double %16, 0.000000e+00
  br i1 %17, label %18, label %60

18:                                               ; preds = %4
  %19 = icmp ne i32 %11, %.04
  br i1 %19, label %20, label %31

20:                                               ; preds = %18
  %21 = sext i32 %11 to i64
  %22 = getelementptr inbounds double, ptr %7, i64 %21
  %23 = load double, ptr %22, align 8
  %24 = sext i32 %.04 to i64
  %25 = getelementptr inbounds double, ptr %7, i64 %24
  %26 = load double, ptr %25, align 8
  %27 = sext i32 %11 to i64
  %28 = getelementptr inbounds double, ptr %7, i64 %27
  store double %26, ptr %28, align 8
  %29 = sext i32 %.04 to i64
  %30 = getelementptr inbounds double, ptr %7, i64 %29
  store double %23, ptr %30, align 8
  br label %31

31:                                               ; preds = %20, %18
  %32 = sext i32 %.04 to i64
  %33 = getelementptr inbounds double, ptr %7, i64 %32
  %34 = load double, ptr %33, align 8
  %35 = fdiv double -1.000000e+00, %34
  %36 = sub nsw i32 2000, %8
  call void @dscal(i32 noundef %36, double noundef %35, ptr noundef %7, i32 noundef %8, i32 noundef 1)
  %37 = icmp slt i32 %8, 2000
  br i1 %37, label %.lr.ph, label %59

.lr.ph:                                           ; preds = %31
  br label %38

38:                                               ; preds = %.lr.ph, %56
  %.0 = phi i32 [ %8, %.lr.ph ], [ %57, %56 ]
  %39 = sext i32 %.0 to i64
  %40 = getelementptr inbounds ptr, ptr %0, i64 %39
  %41 = load ptr, ptr %40, align 8
  %42 = sext i32 %11 to i64
  %43 = getelementptr inbounds double, ptr %41, i64 %42
  %44 = load double, ptr %43, align 8
  %45 = icmp ne i32 %11, %.04
  br i1 %45, label %46, label %54

46:                                               ; preds = %38
  %47 = sext i32 %.04 to i64
  %48 = getelementptr inbounds double, ptr %41, i64 %47
  %49 = load double, ptr %48, align 8
  %50 = sext i32 %11 to i64
  %51 = getelementptr inbounds double, ptr %41, i64 %50
  store double %49, ptr %51, align 8
  %52 = sext i32 %.04 to i64
  %53 = getelementptr inbounds double, ptr %41, i64 %52
  store double %44, ptr %53, align 8
  br label %54

54:                                               ; preds = %46, %38
  %55 = sub nsw i32 2000, %8
  call void @daxpy(i32 noundef %55, double noundef %44, ptr noundef %7, i32 noundef %8, i32 noundef 1, ptr noundef %41, i32 noundef %8, i32 noundef 1)
  br label %56

56:                                               ; preds = %54
  %57 = add nsw i32 %.0, 1
  %58 = icmp slt i32 %57, 2000
  br i1 %58, label %38, label %._crit_edge, !llvm.loop !19

._crit_edge:                                      ; preds = %56
  br label %59

59:                                               ; preds = %._crit_edge, %31
  br label %60

60:                                               ; preds = %59, %4
  br label %61

61:                                               ; preds = %60
  %62 = add nsw i32 %.04, 1
  %63 = icmp slt i32 %62, 1999
  br i1 %63, label %4, label %._crit_edge3, !llvm.loop !20

._crit_edge3:                                     ; preds = %61
  br label %64

64:                                               ; preds = %._crit_edge3, %2
  %65 = getelementptr inbounds i32, ptr %1, i64 1999
  store i32 1999, ptr %65, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @dgesl(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = icmp slt i32 0, 1999
  br i1 %4, label %.lr.ph, label %30

.lr.ph:                                           ; preds = %3
  br label %5

5:                                                ; preds = %.lr.ph, %27
  %.04 = phi i32 [ 0, %.lr.ph ], [ %28, %27 ]
  %6 = sext i32 %.04 to i64
  %7 = getelementptr inbounds i32, ptr %1, i64 %6
  %8 = load i32, ptr %7, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds double, ptr %2, i64 %9
  %11 = load double, ptr %10, align 8
  %12 = icmp ne i32 %8, %.04
  br i1 %12, label %13, label %21

13:                                               ; preds = %5
  %14 = sext i32 %.04 to i64
  %15 = getelementptr inbounds double, ptr %2, i64 %14
  %16 = load double, ptr %15, align 8
  %17 = sext i32 %8 to i64
  %18 = getelementptr inbounds double, ptr %2, i64 %17
  store double %16, ptr %18, align 8
  %19 = sext i32 %.04 to i64
  %20 = getelementptr inbounds double, ptr %2, i64 %19
  store double %11, ptr %20, align 8
  br label %21

21:                                               ; preds = %13, %5
  %22 = add nsw i32 %.04, 1
  %23 = sub nsw i32 2000, %22
  %24 = sext i32 %.04 to i64
  %25 = getelementptr inbounds ptr, ptr %0, i64 %24
  %26 = load ptr, ptr %25, align 8
  call void @daxpy(i32 noundef %23, double noundef %11, ptr noundef %26, i32 noundef %22, i32 noundef 1, ptr noundef %2, i32 noundef %22, i32 noundef 1)
  br label %27

27:                                               ; preds = %21
  %28 = add nsw i32 %.04, 1
  %29 = icmp slt i32 %28, 1999
  br i1 %29, label %5, label %._crit_edge, !llvm.loop !21

._crit_edge:                                      ; preds = %27
  br label %30

30:                                               ; preds = %._crit_edge, %3
  %31 = icmp slt i32 0, 2000
  br i1 %31, label %.lr.ph2, label %55

.lr.ph2:                                          ; preds = %30
  br label %32

32:                                               ; preds = %.lr.ph2, %52
  %.0 = phi i32 [ 0, %.lr.ph2 ], [ %53, %52 ]
  %33 = add nsw i32 %.0, 1
  %34 = sub nsw i32 2000, %33
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds ptr, ptr %0, i64 %35
  %37 = load ptr, ptr %36, align 8
  %38 = sext i32 %34 to i64
  %39 = getelementptr inbounds double, ptr %37, i64 %38
  %40 = load double, ptr %39, align 8
  %41 = sext i32 %34 to i64
  %42 = getelementptr inbounds double, ptr %2, i64 %41
  %43 = load double, ptr %42, align 8
  %44 = fdiv double %43, %40
  store double %44, ptr %42, align 8
  %45 = sext i32 %34 to i64
  %46 = getelementptr inbounds double, ptr %2, i64 %45
  %47 = load double, ptr %46, align 8
  %48 = fneg double %47
  %49 = sext i32 %34 to i64
  %50 = getelementptr inbounds ptr, ptr %0, i64 %49
  %51 = load ptr, ptr %50, align 8
  call void @daxpy(i32 noundef %34, double noundef %48, ptr noundef %51, i32 noundef 0, i32 noundef 1, ptr noundef %2, i32 noundef 0, i32 noundef 1)
  br label %52

52:                                               ; preds = %32
  %53 = add nsw i32 %.0, 1
  %54 = icmp slt i32 %53, 2000
  br i1 %54, label %32, label %._crit_edge3, !llvm.loop !22

._crit_edge3:                                     ; preds = %52
  br label %55

55:                                               ; preds = %._crit_edge3, %30
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = icmp sgt i32 %0, 1
  br i1 %3, label %4, label %17

4:                                                ; preds = %2
  %5 = icmp slt i32 1, %0
  br i1 %5, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %4
  br label %6

6:                                                ; preds = %.lr.ph, %13
  %.05 = phi i32 [ 1, %.lr.ph ], [ %14, %13 ]
  %7 = getelementptr inbounds ptr, ptr %1, i64 1
  %8 = load ptr, ptr %7, align 8
  %9 = call i32 @strcmp(ptr noundef %8, ptr noundef @.str) #5
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %6
  br label %16

12:                                               ; preds = %6
  br label %13

13:                                               ; preds = %12
  %14 = add nsw i32 %.05, 1
  %15 = icmp slt i32 %14, %0
  br i1 %15, label %6, label %..loopexit_crit_edge, !llvm.loop !23

..loopexit_crit_edge:                             ; preds = %13
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %4
  br label %16

16:                                               ; preds = %.loopexit, %11
  %.1 = phi i8 [ 0, %.loopexit ], [ 1, %11 ]
  br label %17

17:                                               ; preds = %16, %2
  %.0 = phi i8 [ %.1, %16 ], [ 0, %2 ]
  %18 = call ptr @malloc(i64 noundef 16000) #6
  %19 = icmp slt i32 0, 2000
  br i1 %19, label %.lr.ph1, label %27

.lr.ph1:                                          ; preds = %17
  br label %20

20:                                               ; preds = %.lr.ph1, %24
  %.16 = phi i32 [ 0, %.lr.ph1 ], [ %25, %24 ]
  %21 = call ptr @malloc(i64 noundef 16008) #6
  %22 = sext i32 %.16 to i64
  %23 = getelementptr inbounds ptr, ptr %18, i64 %22
  store ptr %21, ptr %23, align 8
  br label %24

24:                                               ; preds = %20
  %25 = add nsw i32 %.16, 1
  %26 = icmp slt i32 %25, 2000
  br i1 %26, label %20, label %._crit_edge, !llvm.loop !24

._crit_edge:                                      ; preds = %24
  br label %27

27:                                               ; preds = %._crit_edge, %17
  %28 = call ptr @malloc(i64 noundef 16000) #6
  %29 = call ptr @malloc(i64 noundef 16000) #6
  %30 = call ptr @malloc(i64 noundef 8000) #6
  call void @matgen(ptr noundef %18, ptr noundef %28)
  call void @dgefa(ptr noundef %18, ptr noundef %30)
  call void @dgesl(ptr noundef %18, ptr noundef %30, ptr noundef %28)
  call void @free(ptr noundef %30)
  call void @free(ptr noundef %29)
  call void @free(ptr noundef %28)
  %31 = icmp slt i32 0, 2000
  br i1 %31, label %.lr.ph3, label %39

.lr.ph3:                                          ; preds = %27
  br label %32

32:                                               ; preds = %.lr.ph3, %36
  %.2 = phi i32 [ 0, %.lr.ph3 ], [ %37, %36 ]
  %33 = sext i32 %.2 to i64
  %34 = getelementptr inbounds ptr, ptr %18, i64 %33
  %35 = load ptr, ptr %34, align 8
  call void @free(ptr noundef %35)
  br label %36

36:                                               ; preds = %32
  %37 = add nsw i32 %.2, 1
  %38 = icmp slt i32 %37, 2000
  br i1 %38, label %32, label %._crit_edge4, !llvm.loop !25

._crit_edge4:                                     ; preds = %36
  br label %39

39:                                               ; preds = %._crit_edge4, %27
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
  %3 = load i32, ptr @seed, align 4
  %4 = sdiv i32 %3, 127773
  %5 = load i32, ptr @seed, align 4
  %6 = mul nsw i32 %4, 127773
  %7 = sub nsw i32 %5, %6
  %8 = mul nsw i32 16807, %7
  %9 = mul nsw i32 2836, %4
  %10 = sub nsw i32 %8, %9
  store i32 %10, ptr @seed, align 4
  %11 = load i32, ptr @seed, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %0
  %14 = load i32, ptr @seed, align 4
  %15 = add nsw i32 %14, 2147483647
  store i32 %15, ptr @seed, align 4
  br label %16

16:                                               ; preds = %13, %0
  %17 = load i32, ptr @seed, align 4
  %18 = sitofp i32 %17 to double
  %19 = fmul double f0x3E00000000200FE1, %18
  %20 = load i32, ptr @seed, align 4
  %21 = xor i32 %20, 123459876
  store i32 %21, ptr @seed, align 4
  ret double %19
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
