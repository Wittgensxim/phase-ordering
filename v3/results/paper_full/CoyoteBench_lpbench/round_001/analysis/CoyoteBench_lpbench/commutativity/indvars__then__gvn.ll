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

3:                                                ; preds = %11, %2
  %indvars.iv2 = phi i64 [ %indvars.iv.next3, %11 ], [ 0, %2 ]
  %exitcond5 = icmp ne i64 %indvars.iv2, 2000
  br i1 %exitcond5, label %4, label %12

4:                                                ; preds = %3
  br label %5

5:                                                ; preds = %6, %4
  %indvars.iv = phi i64 [ %indvars.iv.next, %6 ], [ 0, %4 ]
  %exitcond = icmp ne i64 %indvars.iv, 2000
  br i1 %exitcond, label %6, label %11

6:                                                ; preds = %5
  %7 = call double @random_double()
  %8 = getelementptr inbounds ptr, ptr %0, i64 %indvars.iv
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds double, ptr %9, i64 %indvars.iv2
  store double %7, ptr %10, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %5, !llvm.loop !7

11:                                               ; preds = %5
  %indvars.iv.next3 = add nuw nsw i64 %indvars.iv2, 1
  br label %3, !llvm.loop !9

12:                                               ; preds = %3
  br label %13

13:                                               ; preds = %14, %12
  %indvars.iv6 = phi i64 [ %indvars.iv.next7, %14 ], [ 0, %12 ]
  %exitcond9 = icmp ne i64 %indvars.iv6, 2000
  br i1 %exitcond9, label %14, label %16

14:                                               ; preds = %13
  %15 = getelementptr inbounds double, ptr %1, i64 %indvars.iv6
  store double 0.000000e+00, ptr %15, align 8
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1
  br label %13, !llvm.loop !10

16:                                               ; preds = %13
  br label %17

17:                                               ; preds = %28, %16
  %indvars.iv14 = phi i64 [ %indvars.iv.next15, %28 ], [ 0, %16 ]
  %exitcond17 = icmp ne i64 %indvars.iv14, 2000
  br i1 %exitcond17, label %18, label %29

18:                                               ; preds = %17
  br label %19

19:                                               ; preds = %20, %18
  %indvars.iv10 = phi i64 [ %indvars.iv.next11, %20 ], [ 0, %18 ]
  %exitcond13 = icmp ne i64 %indvars.iv10, 2000
  br i1 %exitcond13, label %20, label %28

20:                                               ; preds = %19
  %21 = getelementptr inbounds ptr, ptr %0, i64 %indvars.iv14
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds double, ptr %22, i64 %indvars.iv10
  %24 = load double, ptr %23, align 8
  %25 = getelementptr inbounds double, ptr %1, i64 %indvars.iv10
  %26 = load double, ptr %25, align 8
  %27 = fadd double %26, %24
  store double %27, ptr %25, align 8
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1
  br label %19, !llvm.loop !11

28:                                               ; preds = %19
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14, 1
  br label %17, !llvm.loop !12

29:                                               ; preds = %17
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @idamax(i32 noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = icmp slt i32 %0, 1
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  br label %49

7:                                                ; preds = %4
  %8 = icmp eq i32 %0, 1
  br i1 %8, label %9, label %10

9:                                                ; preds = %7
  br label %48

10:                                               ; preds = %7
  %11 = icmp ne i32 %3, 1
  br i1 %11, label %12, label %31

12:                                               ; preds = %10
  %13 = sext i32 %2 to i64
  %14 = getelementptr inbounds double, ptr %1, i64 %13
  %15 = load double, ptr %14, align 8
  %16 = call double @llvm.fabs.f64(double %15)
  %17 = add i32 1, %3
  %18 = sext i32 %17 to i64
  %19 = sext i32 %3 to i64
  br label %20

20:                                               ; preds = %28, %12
  %indvars.iv2 = phi i64 [ %indvars.iv.next3, %28 ], [ %18, %12 ]
  %.04 = phi double [ %16, %12 ], [ %.15, %28 ]
  %.02 = phi i32 [ 1, %12 ], [ %29, %28 ]
  %.2 = phi i32 [ 0, %12 ], [ %.3, %28 ]
  %exitcond5 = icmp ne i32 %.02, %0
  br i1 %exitcond5, label %21, label %30

21:                                               ; preds = %20
  %22 = add nsw i64 %indvars.iv2, %13
  %23 = getelementptr inbounds double, ptr %1, i64 %22
  %24 = load double, ptr %23, align 8
  %25 = call double @llvm.fabs.f64(double %24)
  %26 = fcmp ogt double %25, %.04
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %28

28:                                               ; preds = %27, %21
  %.15 = phi double [ %25, %27 ], [ %.04, %21 ]
  %.3 = phi i32 [ %.02, %27 ], [ %.2, %21 ]
  %indvars.iv.next3 = add nsw i64 %indvars.iv2, %19
  %29 = add nuw i32 %.02, 1
  br label %20, !llvm.loop !13

30:                                               ; preds = %20
  br label %47

31:                                               ; preds = %10
  %32 = sext i32 %2 to i64
  %33 = getelementptr inbounds double, ptr %1, i64 %32
  %34 = load double, ptr %33, align 8
  %35 = call double @llvm.fabs.f64(double %34)
  %wide.trip.count = zext i32 %0 to i64
  br label %36

36:                                               ; preds = %45, %31
  %indvars.iv = phi i64 [ %indvars.iv.next, %45 ], [ 1, %31 ]
  %.26 = phi double [ %35, %31 ], [ %.37, %45 ]
  %.5 = phi i32 [ 0, %31 ], [ %.6, %45 ]
  %exitcond = icmp ne i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %37, label %46

37:                                               ; preds = %36
  %38 = add nsw i64 %indvars.iv, %32
  %39 = getelementptr inbounds double, ptr %1, i64 %38
  %40 = load double, ptr %39, align 8
  %41 = call double @llvm.fabs.f64(double %40)
  %42 = fcmp ogt double %41, %.26
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = trunc nuw nsw i64 %indvars.iv to i32
  br label %45

45:                                               ; preds = %43, %37
  %.37 = phi double [ %41, %43 ], [ %.26, %37 ]
  %.6 = phi i32 [ %44, %43 ], [ %.5, %37 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %36, !llvm.loop !14

46:                                               ; preds = %36
  br label %47

47:                                               ; preds = %46, %30
  %.4 = phi i32 [ %.2, %30 ], [ %.5, %46 ]
  br label %48

48:                                               ; preds = %47, %9
  %.1 = phi i32 [ 0, %9 ], [ %.4, %47 ]
  br label %49

49:                                               ; preds = %48, %6
  %.0 = phi i32 [ -1, %6 ], [ %.1, %48 ]
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
  br i1 %8, label %9, label %22

9:                                                ; preds = %7
  %10 = mul nsw i32 %0, %4
  %11 = sext i32 %4 to i64
  %12 = sext i32 %10 to i64
  %13 = sext i32 %3 to i64
  br label %14

14:                                               ; preds = %16, %9
  %indvars.iv2 = phi i64 [ %indvars.iv.next3, %16 ], [ 0, %9 ]
  %15 = icmp slt i64 %indvars.iv2, %12
  br i1 %15, label %16, label %21

16:                                               ; preds = %14
  %17 = add nsw i64 %indvars.iv2, %13
  %18 = getelementptr inbounds double, ptr %2, i64 %17
  %19 = load double, ptr %18, align 8
  %20 = fmul double %19, %1
  store double %20, ptr %18, align 8
  %indvars.iv.next3 = add nsw i64 %indvars.iv2, %11
  br label %14, !llvm.loop !15

21:                                               ; preds = %14
  br label %31

22:                                               ; preds = %7
  %23 = sext i32 %3 to i64
  %wide.trip.count = zext i32 %0 to i64
  br label %24

24:                                               ; preds = %25, %22
  %indvars.iv = phi i64 [ %indvars.iv.next, %25 ], [ 0, %22 ]
  %exitcond = icmp ne i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %25, label %30

25:                                               ; preds = %24
  %26 = add nsw i64 %indvars.iv, %23
  %27 = getelementptr inbounds double, ptr %2, i64 %26
  %28 = load double, ptr %27, align 8
  %29 = fmul double %28, %1
  store double %29, ptr %27, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %24, !llvm.loop !16

30:                                               ; preds = %24
  br label %31

31:                                               ; preds = %30, %21
  br label %32

32:                                               ; preds = %31, %5
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
  %27 = sext i32 %.01 to i64
  %28 = sext i32 %4 to i64
  %29 = sext i32 %3 to i64
  %30 = sext i32 %.0 to i64
  %31 = sext i32 %7 to i64
  %32 = sext i32 %6 to i64
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 0)
  br label %33

33:                                               ; preds = %34, %26
  %indvars.iv4 = phi i64 [ %indvars.iv.next5, %34 ], [ %30, %26 ]
  %indvars.iv2 = phi i64 [ %indvars.iv.next3, %34 ], [ %27, %26 ]
  %.03 = phi i32 [ 0, %26 ], [ %42, %34 ]
  %exitcond9 = icmp ne i32 %.03, %smax
  br i1 %exitcond9, label %34, label %43

34:                                               ; preds = %33
  %35 = add nsw i64 %indvars.iv2, %29
  %36 = getelementptr inbounds double, ptr %2, i64 %35
  %37 = load double, ptr %36, align 8
  %38 = add nsw i64 %indvars.iv4, %32
  %39 = getelementptr inbounds double, ptr %5, i64 %38
  %40 = load double, ptr %39, align 8
  %41 = call double @llvm.fmuladd.f64(double %1, double %37, double %40)
  store double %41, ptr %39, align 8
  %indvars.iv.next3 = add nsw i64 %indvars.iv2, %28
  %indvars.iv.next5 = add nsw i64 %indvars.iv4, %31
  %42 = add nuw i32 %.03, 1
  br label %33, !llvm.loop !17

43:                                               ; preds = %33
  br label %57

44:                                               ; preds = %14
  %45 = sext i32 %3 to i64
  %46 = sext i32 %6 to i64
  %wide.trip.count = zext i32 %0 to i64
  br label %47

47:                                               ; preds = %48, %44
  %indvars.iv = phi i64 [ %indvars.iv.next, %48 ], [ 0, %44 ]
  %exitcond = icmp ne i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %48, label %56

48:                                               ; preds = %47
  %49 = add nsw i64 %indvars.iv, %45
  %50 = getelementptr inbounds double, ptr %2, i64 %49
  %51 = load double, ptr %50, align 8
  %52 = add nsw i64 %indvars.iv, %46
  %53 = getelementptr inbounds double, ptr %5, i64 %52
  %54 = load double, ptr %53, align 8
  %55 = call double @llvm.fmuladd.f64(double %1, double %51, double %54)
  store double %55, ptr %53, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %47, !llvm.loop !18

56:                                               ; preds = %47
  br label %57

57:                                               ; preds = %56, %43, %10, %8
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @dgefa(ptr noundef %0, ptr noundef %1) #0 {
  br label %3

3:                                                ; preds = %37, %2
  %indvars.iv4 = phi i64 [ %indvars.iv.next5, %37 ], [ 0, %2 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %37 ], [ 1, %2 ]
  %indvars6 = trunc i64 %indvars.iv4 to i32
  %exitcond7 = icmp ne i64 %indvars.iv4, 1999
  br i1 %exitcond7, label %4, label %38

4:                                                ; preds = %3
  %5 = getelementptr inbounds ptr, ptr %0, i64 %indvars.iv4
  %6 = load ptr, ptr %5, align 8
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv4, 1
  %indvars = trunc i64 %indvars.iv.next5 to i32
  %7 = sub nuw nsw i32 2000, %indvars6
  %8 = call i32 @idamax(i32 noundef %7, ptr noundef %6, i32 noundef %indvars6, i32 noundef 1)
  %9 = add nsw i32 %8, %indvars6
  %10 = getelementptr inbounds i32, ptr %1, i64 %indvars.iv4
  store i32 %9, ptr %10, align 4
  %11 = sext i32 %9 to i64
  %12 = getelementptr inbounds double, ptr %6, i64 %11
  %13 = load double, ptr %12, align 8
  %14 = fcmp une double %13, 0.000000e+00
  br i1 %14, label %15, label %37

15:                                               ; preds = %4
  %16 = zext i32 %9 to i64
  %17 = icmp ne i64 %16, %indvars.iv4
  br i1 %17, label %18, label %._crit_edge

._crit_edge:                                      ; preds = %15
  %.phi.trans.insert = getelementptr inbounds double, ptr %6, i64 %indvars.iv4
  %.pre = load double, ptr %.phi.trans.insert, align 8
  br label %21

18:                                               ; preds = %15
  %19 = getelementptr inbounds double, ptr %6, i64 %indvars.iv4
  %20 = load double, ptr %19, align 8
  store double %20, ptr %12, align 8
  store double %13, ptr %19, align 8
  br label %21

21:                                               ; preds = %._crit_edge, %18
  %22 = phi double [ %.pre, %._crit_edge ], [ %13, %18 ]
  %23 = getelementptr inbounds double, ptr %6, i64 %indvars.iv4
  %24 = fdiv double -1.000000e+00, %22
  %25 = sub nuw nsw i32 2000, %indvars
  call void @dscal(i32 noundef %25, double noundef %24, ptr noundef %6, i32 noundef %indvars, i32 noundef 1)
  br label %26

26:                                               ; preds = %35, %21
  %indvars.iv1 = phi i64 [ %indvars.iv.next2, %35 ], [ %indvars.iv, %21 ]
  %exitcond = icmp ne i64 %indvars.iv1, 2000
  br i1 %exitcond, label %27, label %36

27:                                               ; preds = %26
  %28 = getelementptr inbounds ptr, ptr %0, i64 %indvars.iv1
  %29 = load ptr, ptr %28, align 8
  %30 = getelementptr inbounds double, ptr %29, i64 %11
  %31 = load double, ptr %30, align 8
  br i1 %17, label %32, label %35

32:                                               ; preds = %27
  %33 = getelementptr inbounds double, ptr %29, i64 %indvars.iv4
  %34 = load double, ptr %33, align 8
  store double %34, ptr %30, align 8
  store double %31, ptr %33, align 8
  br label %35

35:                                               ; preds = %32, %27
  call void @daxpy(i32 noundef %25, double noundef %31, ptr noundef %6, i32 noundef %indvars, i32 noundef 1, ptr noundef %29, i32 noundef %indvars, i32 noundef 1)
  %indvars.iv.next2 = add nuw nsw i64 %indvars.iv1, 1
  br label %26, !llvm.loop !19

36:                                               ; preds = %26
  br label %37

37:                                               ; preds = %36, %4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %3, !llvm.loop !20

38:                                               ; preds = %3
  %39 = getelementptr inbounds i32, ptr %1, i64 1999
  store i32 1999, ptr %39, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @dgesl(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  br label %4

4:                                                ; preds = %16, %3
  %indvars.iv = phi i64 [ %indvars.iv.next, %16 ], [ 0, %3 ]
  %exitcond = icmp ne i64 %indvars.iv, 1999
  br i1 %exitcond, label %5, label %20

5:                                                ; preds = %4
  %6 = getelementptr inbounds i32, ptr %1, i64 %indvars.iv
  %7 = load i32, ptr %6, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds double, ptr %2, i64 %8
  %10 = load double, ptr %9, align 8
  %11 = zext i32 %7 to i64
  %12 = icmp ne i64 %11, %indvars.iv
  br i1 %12, label %13, label %16

13:                                               ; preds = %5
  %14 = getelementptr inbounds double, ptr %2, i64 %indvars.iv
  %15 = load double, ptr %14, align 8
  store double %15, ptr %9, align 8
  store double %10, ptr %14, align 8
  br label %16

16:                                               ; preds = %13, %5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %indvars = trunc i64 %indvars.iv.next to i32
  %17 = sub nuw nsw i32 2000, %indvars
  %18 = getelementptr inbounds ptr, ptr %0, i64 %indvars.iv
  %19 = load ptr, ptr %18, align 8
  call void @daxpy(i32 noundef %17, double noundef %10, ptr noundef %19, i32 noundef %indvars, i32 noundef 1, ptr noundef %2, i32 noundef %indvars, i32 noundef 1)
  br label %4, !llvm.loop !21

20:                                               ; preds = %4
  br label %21

21:                                               ; preds = %22, %20
  %indvars.iv2 = phi i64 [ %indvars.iv.next3, %22 ], [ 0, %20 ]
  %exitcond6 = icmp ne i64 %indvars.iv2, 2000
  br i1 %exitcond6, label %22, label %34

22:                                               ; preds = %21
  %indvars.iv.next3 = add nuw nsw i64 %indvars.iv2, 1
  %23 = sub nsw i64 2000, %indvars.iv.next3
  %24 = getelementptr inbounds ptr, ptr %0, i64 %23
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds double, ptr %25, i64 %23
  %27 = load double, ptr %26, align 8
  %28 = getelementptr inbounds double, ptr %2, i64 %23
  %29 = load double, ptr %28, align 8
  %30 = fdiv double %29, %27
  store double %30, ptr %28, align 8
  %31 = fneg double %30
  %32 = load ptr, ptr %24, align 8
  %33 = trunc nsw i64 %23 to i32
  call void @daxpy(i32 noundef %33, double noundef %31, ptr noundef %32, i32 noundef 0, i32 noundef 1, ptr noundef %2, i32 noundef 0, i32 noundef 1)
  br label %21, !llvm.loop !22

34:                                               ; preds = %21
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = icmp sgt i32 %0, 1
  br i1 %3, label %4, label %15

4:                                                ; preds = %2
  br label %5

5:                                                ; preds = %12, %4
  %.01 = phi i32 [ 1, %4 ], [ %13, %12 ]
  %exitcond = icmp ne i32 %.01, %0
  br i1 %exitcond, label %6, label %.loopexit

6:                                                ; preds = %5
  %7 = getelementptr inbounds ptr, ptr %1, i64 1
  %8 = load ptr, ptr %7, align 8
  %9 = call i32 @strcmp(ptr noundef %8, ptr noundef @.str) #5
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %6
  br label %14

12:                                               ; preds = %6
  %13 = add nuw i32 %.01, 1
  br label %5, !llvm.loop !23

.loopexit:                                        ; preds = %5
  br label %14

14:                                               ; preds = %.loopexit, %11
  %.1 = phi i8 [ 1, %11 ], [ 0, %.loopexit ]
  br label %15

15:                                               ; preds = %14, %2
  %.0 = phi i8 [ %.1, %14 ], [ 0, %2 ]
  %16 = call ptr @malloc(i64 noundef 16000) #6
  br label %17

17:                                               ; preds = %18, %15
  %indvars.iv = phi i64 [ %indvars.iv.next, %18 ], [ 0, %15 ]
  %exitcond2 = icmp ne i64 %indvars.iv, 2000
  br i1 %exitcond2, label %18, label %21

18:                                               ; preds = %17
  %19 = call ptr @malloc(i64 noundef 16008) #6
  %20 = getelementptr inbounds ptr, ptr %16, i64 %indvars.iv
  store ptr %19, ptr %20, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %17, !llvm.loop !24

21:                                               ; preds = %17
  %22 = call ptr @malloc(i64 noundef 16000) #6
  %23 = call ptr @malloc(i64 noundef 16000) #6
  %24 = call ptr @malloc(i64 noundef 8000) #6
  call void @matgen(ptr noundef %16, ptr noundef %22)
  call void @dgefa(ptr noundef %16, ptr noundef %24)
  call void @dgesl(ptr noundef %16, ptr noundef %24, ptr noundef %22)
  call void @free(ptr noundef %24)
  call void @free(ptr noundef %23)
  call void @free(ptr noundef %22)
  br label %25

25:                                               ; preds = %26, %21
  %indvars.iv3 = phi i64 [ %indvars.iv.next4, %26 ], [ 0, %21 ]
  %exitcond6 = icmp ne i64 %indvars.iv3, 2000
  br i1 %exitcond6, label %26, label %29

26:                                               ; preds = %25
  %27 = getelementptr inbounds ptr, ptr %16, i64 %indvars.iv3
  %28 = load ptr, ptr %27, align 8
  call void @free(ptr noundef %28)
  %indvars.iv.next4 = add nuw nsw i64 %indvars.iv3, 1
  br label %25, !llvm.loop !25

29:                                               ; preds = %25
  call void @free(ptr noundef %16)
  %30 = icmp ne i8 %.0, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %29
  %32 = call ptr @__acrt_iob_func(i32 noundef 1)
  %33 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef @.str.1, double noundef 0.000000e+00) #5
  br label %37

34:                                               ; preds = %29
  %35 = call ptr @__acrt_iob_func(i32 noundef 1)
  %36 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %35, ptr noundef @.str.2, double noundef 0.000000e+00) #5
  br label %37

37:                                               ; preds = %34, %31
  %38 = call ptr @__acrt_iob_func(i32 noundef 1)
  %39 = call i32 @fflush(ptr noundef %38)
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
