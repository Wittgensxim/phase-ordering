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

3:                                                ; preds = %2, %15
  %.014 = phi i32 [ 0, %2 ], [ %16, %15 ]
  br label %4

4:                                                ; preds = %3, %11
  %.03 = phi i32 [ 0, %3 ], [ %12, %11 ]
  %5 = call double @random_double()
  %6 = sext i32 %.03 to i64
  %7 = getelementptr inbounds ptr, ptr %0, i64 %6
  %8 = load ptr, ptr %7, align 8
  %9 = sext i32 %.014 to i64
  %10 = getelementptr inbounds double, ptr %8, i64 %9
  store double %5, ptr %10, align 8
  br label %11

11:                                               ; preds = %4
  %12 = add nsw i32 %.03, 1
  %13 = icmp slt i32 %12, 2000
  br i1 %13, label %4, label %14, !llvm.loop !7

14:                                               ; preds = %11
  br label %15

15:                                               ; preds = %14
  %16 = add nsw i32 %.014, 1
  %17 = icmp slt i32 %16, 2000
  br i1 %17, label %3, label %18, !llvm.loop !9

18:                                               ; preds = %15
  br label %19

19:                                               ; preds = %18, %22
  %.125 = phi i32 [ 0, %18 ], [ %23, %22 ]
  %20 = sext i32 %.125 to i64
  %21 = getelementptr inbounds double, ptr %1, i64 %20
  store double 0.000000e+00, ptr %21, align 8
  br label %22

22:                                               ; preds = %19
  %23 = add nsw i32 %.125, 1
  %24 = icmp slt i32 %23, 2000
  br i1 %24, label %19, label %25, !llvm.loop !10

25:                                               ; preds = %22
  br label %26

26:                                               ; preds = %25, %42
  %.17 = phi i32 [ 0, %25 ], [ %43, %42 ]
  br label %27

27:                                               ; preds = %26, %38
  %.26 = phi i32 [ 0, %26 ], [ %39, %38 ]
  %28 = sext i32 %.17 to i64
  %29 = getelementptr inbounds ptr, ptr %0, i64 %28
  %30 = load ptr, ptr %29, align 8
  %31 = sext i32 %.26 to i64
  %32 = getelementptr inbounds double, ptr %30, i64 %31
  %33 = load double, ptr %32, align 8
  %34 = sext i32 %.26 to i64
  %35 = getelementptr inbounds double, ptr %1, i64 %34
  %36 = load double, ptr %35, align 8
  %37 = fadd double %36, %33
  store double %37, ptr %35, align 8
  br label %38

38:                                               ; preds = %27
  %39 = add nsw i32 %.26, 1
  %40 = icmp slt i32 %39, 2000
  br i1 %40, label %27, label %41, !llvm.loop !11

41:                                               ; preds = %38
  br label %42

42:                                               ; preds = %41
  %43 = add nsw i32 %.17, 1
  %44 = icmp slt i32 %43, 2000
  br i1 %44, label %26, label %45, !llvm.loop !12

45:                                               ; preds = %42
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
  br i1 %18, label %.lr.ph16, label %32

.lr.ph16:                                         ; preds = %12
  br label %19

19:                                               ; preds = %.lr.ph16, %29
  %.214 = phi i32 [ 0, %.lr.ph16 ], [ %.3, %29 ]
  %.0113 = phi i32 [ %17, %.lr.ph16 ], [ %28, %29 ]
  %.0212 = phi i32 [ 1, %.lr.ph16 ], [ %30, %29 ]
  %.0411 = phi double [ %16, %.lr.ph16 ], [ %.15, %29 ]
  %20 = add nsw i32 %.0113, %2
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds double, ptr %1, i64 %21
  %23 = load double, ptr %22, align 8
  %24 = call double @llvm.fabs.f64(double %23)
  %25 = fcmp ogt double %24, %.0411
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  br label %27

27:                                               ; preds = %26, %19
  %.15 = phi double [ %24, %26 ], [ %.0411, %19 ]
  %.3 = phi i32 [ %.0212, %26 ], [ %.214, %19 ]
  %28 = add nsw i32 %.0113, %3
  br label %29

29:                                               ; preds = %27
  %30 = add nsw i32 %.0212, 1
  %31 = icmp slt i32 %30, %0
  br i1 %31, label %19, label %._crit_edge17, !llvm.loop !13

._crit_edge17:                                    ; preds = %29
  %split18 = phi i32 [ %.3, %29 ]
  br label %32

32:                                               ; preds = %._crit_edge17, %12
  %.2.lcssa = phi i32 [ %split18, %._crit_edge17 ], [ 0, %12 ]
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
  %.510 = phi i32 [ 0, %.lr.ph ], [ %.6, %48 ]
  %.139 = phi i32 [ 1, %.lr.ph ], [ %49, %48 ]
  %.268 = phi double [ %37, %.lr.ph ], [ %.37, %48 ]
  %40 = add nsw i32 %.139, %2
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds double, ptr %1, i64 %41
  %43 = load double, ptr %42, align 8
  %44 = call double @llvm.fabs.f64(double %43)
  %45 = fcmp ogt double %44, %.268
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  br label %47

47:                                               ; preds = %46, %39
  %.37 = phi double [ %44, %46 ], [ %.268, %39 ]
  %.6 = phi i32 [ %.139, %46 ], [ %.510, %39 ]
  br label %48

48:                                               ; preds = %47
  %49 = add nsw i32 %.139, 1
  %50 = icmp slt i32 %49, %0
  br i1 %50, label %39, label %._crit_edge, !llvm.loop !14

._crit_edge:                                      ; preds = %48
  %split = phi i32 [ %.6, %48 ]
  br label %51

51:                                               ; preds = %._crit_edge, %33
  %.5.lcssa = phi i32 [ %split, %._crit_edge ], [ 0, %33 ]
  br label %52

52:                                               ; preds = %51, %32
  %.4 = phi i32 [ %.2.lcssa, %32 ], [ %.5.lcssa, %51 ]
  br label %53

53:                                               ; preds = %52, %9
  %.1 = phi i32 [ 0, %9 ], [ %.4, %52 ]
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
  br i1 %11, label %.lr.ph4, label %21

.lr.ph4:                                          ; preds = %9
  br label %12

12:                                               ; preds = %.lr.ph4, %18
  %.02 = phi i32 [ 0, %.lr.ph4 ], [ %19, %18 ]
  %13 = add nsw i32 %.02, %3
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds double, ptr %2, i64 %14
  %16 = load double, ptr %15, align 8
  %17 = fmul double %16, %1
  store double %17, ptr %15, align 8
  br label %18

18:                                               ; preds = %12
  %19 = add nsw i32 %.02, %4
  %20 = icmp slt i32 %19, %10
  br i1 %20, label %12, label %._crit_edge5, !llvm.loop !15

._crit_edge5:                                     ; preds = %18
  br label %21

21:                                               ; preds = %._crit_edge5, %9
  br label %34

22:                                               ; preds = %7
  %23 = icmp slt i32 0, %0
  br i1 %23, label %.lr.ph, label %33

.lr.ph:                                           ; preds = %22
  br label %24

24:                                               ; preds = %.lr.ph, %30
  %.11 = phi i32 [ 0, %.lr.ph ], [ %31, %30 ]
  %25 = add nsw i32 %.11, %3
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds double, ptr %2, i64 %26
  %28 = load double, ptr %27, align 8
  %29 = fmul double %28, %1
  store double %29, ptr %27, align 8
  br label %30

30:                                               ; preds = %24
  %31 = add nsw i32 %.11, 1
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
  %.01 = phi i32 [ %20, %18 ], [ 0, %16 ]
  %22 = icmp slt i32 %7, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %21
  %24 = sub nsw i32 1, %0
  %25 = mul nsw i32 %24, %7
  br label %26

26:                                               ; preds = %23, %21
  %.0 = phi i32 [ %25, %23 ], [ 0, %21 ]
  %27 = icmp slt i32 0, %0
  br i1 %27, label %.lr.ph10, label %43

.lr.ph10:                                         ; preds = %26
  br label %28

28:                                               ; preds = %.lr.ph10, %40
  %.18 = phi i32 [ %.0, %.lr.ph10 ], [ %39, %40 ]
  %.127 = phi i32 [ %.01, %.lr.ph10 ], [ %38, %40 ]
  %.036 = phi i32 [ 0, %.lr.ph10 ], [ %41, %40 ]
  %29 = add nsw i32 %.127, %3
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds double, ptr %2, i64 %30
  %32 = load double, ptr %31, align 8
  %33 = add nsw i32 %.18, %6
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds double, ptr %5, i64 %34
  %36 = load double, ptr %35, align 8
  %37 = call double @llvm.fmuladd.f64(double %1, double %32, double %36)
  store double %37, ptr %35, align 8
  %38 = add nsw i32 %.127, %4
  %39 = add nsw i32 %.18, %7
  br label %40

40:                                               ; preds = %28
  %41 = add nsw i32 %.036, 1
  %42 = icmp slt i32 %41, %0
  br i1 %42, label %28, label %._crit_edge11, !llvm.loop !17

._crit_edge11:                                    ; preds = %40
  br label %43

43:                                               ; preds = %._crit_edge11, %26
  br label %61

44:                                               ; preds = %14
  %45 = icmp slt i32 0, %0
  br i1 %45, label %.lr.ph, label %59

.lr.ph:                                           ; preds = %44
  br label %46

46:                                               ; preds = %.lr.ph, %56
  %.145 = phi i32 [ 0, %.lr.ph ], [ %57, %56 ]
  %47 = add nsw i32 %.145, %3
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds double, ptr %2, i64 %48
  %50 = load double, ptr %49, align 8
  %51 = add nsw i32 %.145, %6
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds double, ptr %5, i64 %52
  %54 = load double, ptr %53, align 8
  %55 = call double @llvm.fmuladd.f64(double %1, double %50, double %54)
  store double %55, ptr %53, align 8
  br label %56

56:                                               ; preds = %46
  %57 = add nsw i32 %.145, 1
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
  br label %3

3:                                                ; preds = %2, %60
  %.013 = phi i32 [ 0, %2 ], [ %61, %60 ]
  %4 = sext i32 %.013 to i64
  %5 = getelementptr inbounds ptr, ptr %0, i64 %4
  %6 = load ptr, ptr %5, align 8
  %7 = add nsw i32 %.013, 1
  %8 = sub nsw i32 2000, %.013
  %9 = call i32 @idamax(i32 noundef %8, ptr noundef %6, i32 noundef %.013, i32 noundef 1)
  %10 = add nsw i32 %9, %.013
  %11 = sext i32 %.013 to i64
  %12 = getelementptr inbounds i32, ptr %1, i64 %11
  store i32 %10, ptr %12, align 4
  %13 = sext i32 %10 to i64
  %14 = getelementptr inbounds double, ptr %6, i64 %13
  %15 = load double, ptr %14, align 8
  %16 = fcmp une double %15, 0.000000e+00
  br i1 %16, label %17, label %59

17:                                               ; preds = %3
  %18 = icmp ne i32 %10, %.013
  br i1 %18, label %19, label %30

19:                                               ; preds = %17
  %20 = sext i32 %10 to i64
  %21 = getelementptr inbounds double, ptr %6, i64 %20
  %22 = load double, ptr %21, align 8
  %23 = sext i32 %.013 to i64
  %24 = getelementptr inbounds double, ptr %6, i64 %23
  %25 = load double, ptr %24, align 8
  %26 = sext i32 %10 to i64
  %27 = getelementptr inbounds double, ptr %6, i64 %26
  store double %25, ptr %27, align 8
  %28 = sext i32 %.013 to i64
  %29 = getelementptr inbounds double, ptr %6, i64 %28
  store double %22, ptr %29, align 8
  br label %30

30:                                               ; preds = %19, %17
  %31 = sext i32 %.013 to i64
  %32 = getelementptr inbounds double, ptr %6, i64 %31
  %33 = load double, ptr %32, align 8
  %34 = fdiv double -1.000000e+00, %33
  %35 = sub nsw i32 2000, %7
  call void @dscal(i32 noundef %35, double noundef %34, ptr noundef %6, i32 noundef %7, i32 noundef 1)
  %36 = icmp slt i32 %7, 2000
  br i1 %36, label %.lr.ph, label %58

.lr.ph:                                           ; preds = %30
  br label %37

37:                                               ; preds = %.lr.ph, %55
  %.02 = phi i32 [ %7, %.lr.ph ], [ %56, %55 ]
  %38 = sext i32 %.02 to i64
  %39 = getelementptr inbounds ptr, ptr %0, i64 %38
  %40 = load ptr, ptr %39, align 8
  %41 = sext i32 %10 to i64
  %42 = getelementptr inbounds double, ptr %40, i64 %41
  %43 = load double, ptr %42, align 8
  %44 = icmp ne i32 %10, %.013
  br i1 %44, label %45, label %53

45:                                               ; preds = %37
  %46 = sext i32 %.013 to i64
  %47 = getelementptr inbounds double, ptr %40, i64 %46
  %48 = load double, ptr %47, align 8
  %49 = sext i32 %10 to i64
  %50 = getelementptr inbounds double, ptr %40, i64 %49
  store double %48, ptr %50, align 8
  %51 = sext i32 %.013 to i64
  %52 = getelementptr inbounds double, ptr %40, i64 %51
  store double %43, ptr %52, align 8
  br label %53

53:                                               ; preds = %45, %37
  %54 = sub nsw i32 2000, %7
  call void @daxpy(i32 noundef %54, double noundef %43, ptr noundef %6, i32 noundef %7, i32 noundef 1, ptr noundef %40, i32 noundef %7, i32 noundef 1)
  br label %55

55:                                               ; preds = %53
  %56 = add nsw i32 %.02, 1
  %57 = icmp slt i32 %56, 2000
  br i1 %57, label %37, label %._crit_edge, !llvm.loop !19

._crit_edge:                                      ; preds = %55
  br label %58

58:                                               ; preds = %._crit_edge, %30
  br label %59

59:                                               ; preds = %58, %3
  br label %60

60:                                               ; preds = %59
  %61 = add nsw i32 %.013, 1
  %62 = icmp slt i32 %61, 1999
  br i1 %62, label %3, label %63, !llvm.loop !20

63:                                               ; preds = %60
  %64 = getelementptr inbounds i32, ptr %1, i64 1999
  store i32 1999, ptr %64, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @dgesl(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  br label %4

4:                                                ; preds = %3, %26
  %.012 = phi i32 [ 0, %3 ], [ %27, %26 ]
  %5 = sext i32 %.012 to i64
  %6 = getelementptr inbounds i32, ptr %1, i64 %5
  %7 = load i32, ptr %6, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds double, ptr %2, i64 %8
  %10 = load double, ptr %9, align 8
  %11 = icmp ne i32 %7, %.012
  br i1 %11, label %12, label %20

12:                                               ; preds = %4
  %13 = sext i32 %.012 to i64
  %14 = getelementptr inbounds double, ptr %2, i64 %13
  %15 = load double, ptr %14, align 8
  %16 = sext i32 %7 to i64
  %17 = getelementptr inbounds double, ptr %2, i64 %16
  store double %15, ptr %17, align 8
  %18 = sext i32 %.012 to i64
  %19 = getelementptr inbounds double, ptr %2, i64 %18
  store double %10, ptr %19, align 8
  br label %20

20:                                               ; preds = %12, %4
  %21 = add nsw i32 %.012, 1
  %22 = sub nsw i32 2000, %21
  %23 = sext i32 %.012 to i64
  %24 = getelementptr inbounds ptr, ptr %0, i64 %23
  %25 = load ptr, ptr %24, align 8
  call void @daxpy(i32 noundef %22, double noundef %10, ptr noundef %25, i32 noundef %21, i32 noundef 1, ptr noundef %2, i32 noundef %21, i32 noundef 1)
  br label %26

26:                                               ; preds = %20
  %27 = add nsw i32 %.012, 1
  %28 = icmp slt i32 %27, 1999
  br i1 %28, label %4, label %29, !llvm.loop !21

29:                                               ; preds = %26
  br label %30

30:                                               ; preds = %29, %50
  %.03 = phi i32 [ 0, %29 ], [ %51, %50 ]
  %31 = add nsw i32 %.03, 1
  %32 = sub nsw i32 2000, %31
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds ptr, ptr %0, i64 %33
  %35 = load ptr, ptr %34, align 8
  %36 = sext i32 %32 to i64
  %37 = getelementptr inbounds double, ptr %35, i64 %36
  %38 = load double, ptr %37, align 8
  %39 = sext i32 %32 to i64
  %40 = getelementptr inbounds double, ptr %2, i64 %39
  %41 = load double, ptr %40, align 8
  %42 = fdiv double %41, %38
  store double %42, ptr %40, align 8
  %43 = sext i32 %32 to i64
  %44 = getelementptr inbounds double, ptr %2, i64 %43
  %45 = load double, ptr %44, align 8
  %46 = fneg double %45
  %47 = sext i32 %32 to i64
  %48 = getelementptr inbounds ptr, ptr %0, i64 %47
  %49 = load ptr, ptr %48, align 8
  call void @daxpy(i32 noundef %32, double noundef %46, ptr noundef %49, i32 noundef 0, i32 noundef 1, ptr noundef %2, i32 noundef 0, i32 noundef 1)
  br label %50

50:                                               ; preds = %30
  %51 = add nsw i32 %.03, 1
  %52 = icmp slt i32 %51, 2000
  br i1 %52, label %30, label %53, !llvm.loop !22

53:                                               ; preds = %50
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = icmp sgt i32 %0, 1
  br i1 %3, label %4, label %16

4:                                                ; preds = %2
  br label %5

5:                                                ; preds = %4, %12
  %.013 = phi i32 [ 1, %4 ], [ %13, %12 ]
  %6 = getelementptr inbounds ptr, ptr %1, i64 1
  %7 = load ptr, ptr %6, align 8
  %8 = call i32 @strcmp(ptr noundef %7, ptr noundef @.str) #5
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %5
  br label %15

11:                                               ; preds = %5
  br label %12

12:                                               ; preds = %11
  %13 = add nsw i32 %.013, 1
  %14 = icmp slt i32 %13, %0
  br i1 %14, label %5, label %.loopexit, !llvm.loop !23

.loopexit:                                        ; preds = %12
  br label %15

15:                                               ; preds = %.loopexit, %10
  %.1 = phi i8 [ 1, %10 ], [ 0, %.loopexit ]
  br label %16

16:                                               ; preds = %15, %2
  %.0 = phi i8 [ %.1, %15 ], [ 0, %2 ]
  %17 = call ptr @malloc(i64 noundef 16000) #6
  br label %18

18:                                               ; preds = %16, %22
  %.124 = phi i32 [ 0, %16 ], [ %23, %22 ]
  %19 = call ptr @malloc(i64 noundef 16008) #6
  %20 = sext i32 %.124 to i64
  %21 = getelementptr inbounds ptr, ptr %17, i64 %20
  store ptr %19, ptr %21, align 8
  br label %22

22:                                               ; preds = %18
  %23 = add nsw i32 %.124, 1
  %24 = icmp slt i32 %23, 2000
  br i1 %24, label %18, label %25, !llvm.loop !24

25:                                               ; preds = %22
  %26 = call ptr @malloc(i64 noundef 16000) #6
  %27 = call ptr @malloc(i64 noundef 16000) #6
  %28 = call ptr @malloc(i64 noundef 8000) #6
  call void @matgen(ptr noundef %17, ptr noundef %26)
  call void @dgefa(ptr noundef %17, ptr noundef %28)
  call void @dgesl(ptr noundef %17, ptr noundef %28, ptr noundef %26)
  call void @free(ptr noundef %28)
  call void @free(ptr noundef %27)
  call void @free(ptr noundef %26)
  br label %29

29:                                               ; preds = %25, %33
  %.25 = phi i32 [ 0, %25 ], [ %34, %33 ]
  %30 = sext i32 %.25 to i64
  %31 = getelementptr inbounds ptr, ptr %17, i64 %30
  %32 = load ptr, ptr %31, align 8
  call void @free(ptr noundef %32)
  br label %33

33:                                               ; preds = %29
  %34 = add nsw i32 %.25, 1
  %35 = icmp slt i32 %34, 2000
  br i1 %35, label %29, label %36, !llvm.loop !25

36:                                               ; preds = %33
  call void @free(ptr noundef %17)
  %37 = icmp ne i8 %.0, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %36
  %39 = call ptr @__acrt_iob_func(i32 noundef 1)
  %40 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %39, ptr noundef @.str.1, double noundef 0.000000e+00) #5
  br label %44

41:                                               ; preds = %36
  %42 = call ptr @__acrt_iob_func(i32 noundef 1)
  %43 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %42, ptr noundef @.str.2, double noundef 0.000000e+00) #5
  br label %44

44:                                               ; preds = %41, %38
  %45 = call ptr @__acrt_iob_func(i32 noundef 1)
  %46 = call i32 @fflush(ptr noundef %45)
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
