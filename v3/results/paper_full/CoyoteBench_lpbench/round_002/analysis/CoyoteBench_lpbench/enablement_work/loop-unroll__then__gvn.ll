; ModuleID = 'results\paper_full\CoyoteBench_lpbench\round_001\output.ll'
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

3:                                                ; preds = %15, %2
  %.01 = phi i32 [ 0, %2 ], [ %16, %15 ]
  %4 = icmp slt i32 %.01, 2000
  br i1 %4, label %.preheader3, label %.preheader2

.preheader3:                                      ; preds = %3
  br label %5

.preheader2:                                      ; preds = %3
  br label %17

5:                                                ; preds = %.preheader3, %7
  %.0 = phi i32 [ %14, %7 ], [ 0, %.preheader3 ]
  %6 = icmp slt i32 %.0, 2000
  br i1 %6, label %7, label %15

7:                                                ; preds = %5
  %8 = call double @random_double()
  %9 = sext i32 %.0 to i64
  %10 = getelementptr inbounds ptr, ptr %0, i64 %9
  %11 = load ptr, ptr %10, align 8
  %12 = sext i32 %.01 to i64
  %13 = getelementptr inbounds double, ptr %11, i64 %12
  store double %8, ptr %13, align 8
  %14 = add nsw i32 %.0, 1
  br label %5, !llvm.loop !7

15:                                               ; preds = %5
  %16 = add nsw i32 %.01, 1
  br label %3, !llvm.loop !9

17:                                               ; preds = %25, %.preheader2
  %.12 = phi i32 [ 0, %.preheader2 ], [ %28, %25 ]
  %18 = sext i32 %.12 to i64
  %19 = getelementptr inbounds double, ptr %1, i64 %18
  store double 0.000000e+00, ptr %19, align 8
  %20 = add nuw nsw i32 %.12, 1
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds double, ptr %1, i64 %21
  store double 0.000000e+00, ptr %22, align 8
  %23 = add nuw nsw i32 %.12, 2
  %24 = icmp samesign ult i32 %23, 2000
  br i1 %24, label %25, label %.preheader1

.preheader1:                                      ; preds = %17
  br label %29

25:                                               ; preds = %17
  %26 = sext i32 %23 to i64
  %27 = getelementptr inbounds double, ptr %1, i64 %26
  store double 0.000000e+00, ptr %27, align 8
  %28 = add nuw nsw i32 %.12, 3
  br label %17, !llvm.loop !10

29:                                               ; preds = %.preheader1, %52
  %.1 = phi i32 [ %53, %52 ], [ 0, %.preheader1 ]
  %30 = icmp slt i32 %.1, 2000
  br i1 %30, label %.preheader, label %54

.preheader:                                       ; preds = %29
  br label %31

31:                                               ; preds = %33, %.preheader
  %.2 = phi i32 [ 0, %.preheader ], [ %51, %33 ]
  %32 = icmp samesign ult i32 %.2, 2000
  br i1 %32, label %33, label %52

33:                                               ; preds = %31
  %34 = sext i32 %.1 to i64
  %35 = getelementptr inbounds ptr, ptr %0, i64 %34
  %36 = load ptr, ptr %35, align 8
  %37 = sext i32 %.2 to i64
  %38 = getelementptr inbounds double, ptr %36, i64 %37
  %39 = load double, ptr %38, align 8
  %40 = getelementptr inbounds double, ptr %1, i64 %37
  %41 = load double, ptr %40, align 8
  %42 = fadd double %41, %39
  store double %42, ptr %40, align 8
  %43 = add nuw nsw i32 %.2, 1
  %44 = load ptr, ptr %35, align 8
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds double, ptr %44, i64 %45
  %47 = load double, ptr %46, align 8
  %48 = getelementptr inbounds double, ptr %1, i64 %45
  %49 = load double, ptr %48, align 8
  %50 = fadd double %49, %47
  store double %50, ptr %48, align 8
  %51 = add nuw nsw i32 %.2, 2
  br label %31, !llvm.loop !11

52:                                               ; preds = %31
  %53 = add nsw i32 %.1, 1
  br label %29, !llvm.loop !12

54:                                               ; preds = %29
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @idamax(i32 noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = icmp slt i32 %0, 1
  br i1 %5, label %42, label %6

6:                                                ; preds = %4
  %7 = icmp eq i32 %0, 1
  br i1 %7, label %42, label %8

8:                                                ; preds = %6
  %9 = icmp ne i32 %3, 1
  br i1 %9, label %10, label %27

10:                                               ; preds = %8
  %11 = sext i32 %2 to i64
  %12 = getelementptr inbounds double, ptr %1, i64 %11
  %13 = load double, ptr %12, align 8
  %14 = call double @llvm.fabs.f64(double %13)
  %15 = add nsw i32 1, %3
  br label %16

16:                                               ; preds = %18, %10
  %.04 = phi double [ %14, %10 ], [ %.15, %18 ]
  %.02 = phi i32 [ 1, %10 ], [ %26, %18 ]
  %.01 = phi i32 [ %15, %10 ], [ %25, %18 ]
  %.2 = phi i32 [ 0, %10 ], [ %.3, %18 ]
  %17 = icmp slt i32 %.02, %0
  br i1 %17, label %18, label %.loopexit

18:                                               ; preds = %16
  %19 = add nsw i32 %.01, %2
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds double, ptr %1, i64 %20
  %22 = load double, ptr %21, align 8
  %23 = call double @llvm.fabs.f64(double %22)
  %24 = fcmp ogt double %23, %.04
  %.15 = select i1 %24, double %23, double %.04
  %.3 = select i1 %24, i32 %.02, i32 %.2
  %25 = add nsw i32 %.01, %3
  %26 = add nsw i32 %.02, 1
  br label %16, !llvm.loop !13

27:                                               ; preds = %8
  %28 = sext i32 %2 to i64
  %29 = getelementptr inbounds double, ptr %1, i64 %28
  %30 = load double, ptr %29, align 8
  %31 = call double @llvm.fabs.f64(double %30)
  br label %32

32:                                               ; preds = %34, %27
  %.26 = phi double [ %31, %27 ], [ %.37, %34 ]
  %.13 = phi i32 [ 1, %27 ], [ %41, %34 ]
  %.5 = phi i32 [ 0, %27 ], [ %.6, %34 ]
  %33 = icmp slt i32 %.13, %0
  br i1 %33, label %34, label %.loopexit1

34:                                               ; preds = %32
  %35 = add nsw i32 %.13, %2
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds double, ptr %1, i64 %36
  %38 = load double, ptr %37, align 8
  %39 = call double @llvm.fabs.f64(double %38)
  %40 = fcmp ogt double %39, %.26
  %.37 = select i1 %40, double %39, double %.26
  %.6 = select i1 %40, i32 %.13, i32 %.5
  %41 = add nsw i32 %.13, 1
  br label %32, !llvm.loop !14

.loopexit:                                        ; preds = %16
  br label %42

.loopexit1:                                       ; preds = %32
  br label %42

42:                                               ; preds = %.loopexit1, %.loopexit, %6, %4
  %.0 = phi i32 [ -1, %4 ], [ 0, %6 ], [ %.2, %.loopexit ], [ %.5, %.loopexit1 ]
  ret i32 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @dscal(i32 noundef %0, double noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = icmp sgt i32 %0, 0
  br i1 %6, label %7, label %29

7:                                                ; preds = %5
  %8 = icmp ne i32 %4, 1
  br i1 %8, label %9, label %.preheader

.preheader:                                       ; preds = %7
  br label %20

9:                                                ; preds = %7
  %10 = mul nsw i32 %0, %4
  br label %11

11:                                               ; preds = %13, %9
  %.0 = phi i32 [ 0, %9 ], [ %19, %13 ]
  %12 = icmp slt i32 %.0, %10
  br i1 %12, label %13, label %.loopexit

13:                                               ; preds = %11
  %14 = add nsw i32 %.0, %3
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds double, ptr %2, i64 %15
  %17 = load double, ptr %16, align 8
  %18 = fmul double %17, %1
  store double %18, ptr %16, align 8
  %19 = add nsw i32 %.0, %4
  br label %11, !llvm.loop !15

20:                                               ; preds = %.preheader, %22
  %.1 = phi i32 [ %28, %22 ], [ 0, %.preheader ]
  %21 = icmp slt i32 %.1, %0
  br i1 %21, label %22, label %.loopexit1

22:                                               ; preds = %20
  %23 = add nsw i32 %.1, %3
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds double, ptr %2, i64 %24
  %26 = load double, ptr %25, align 8
  %27 = fmul double %26, %1
  store double %27, ptr %25, align 8
  %28 = add nsw i32 %.1, 1
  br label %20, !llvm.loop !16

.loopexit:                                        ; preds = %11
  br label %29

.loopexit1:                                       ; preds = %20
  br label %29

29:                                               ; preds = %.loopexit1, %.loopexit, %5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @daxpy(i32 noundef %0, double noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7) #0 {
  %9 = icmp sgt i32 %0, 0
  %10 = fcmp une double %1, 0.000000e+00
  %or.cond = and i1 %9, %10
  br i1 %or.cond, label %11, label %48

11:                                               ; preds = %8
  %12 = icmp ne i32 %4, 1
  %13 = icmp ne i32 %7, 1
  %or.cond1 = or i1 %12, %13
  br i1 %or.cond1, label %14, label %.preheader

.preheader:                                       ; preds = %11
  br label %35

14:                                               ; preds = %11
  %15 = icmp slt i32 %4, 0
  %16 = sub nsw i32 1, %0
  %17 = mul nsw i32 %16, %4
  %.01 = select i1 %15, i32 %17, i32 0
  %18 = icmp slt i32 %7, 0
  %19 = mul nsw i32 %16, %7
  %.0 = select i1 %18, i32 %19, i32 0
  br label %20

20:                                               ; preds = %22, %14
  %.03 = phi i32 [ 0, %14 ], [ %34, %22 ]
  %.12 = phi i32 [ %.01, %14 ], [ %32, %22 ]
  %.1 = phi i32 [ %.0, %14 ], [ %33, %22 ]
  %21 = icmp slt i32 %.03, %0
  br i1 %21, label %22, label %.loopexit

22:                                               ; preds = %20
  %23 = add nsw i32 %.12, %3
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds double, ptr %2, i64 %24
  %26 = load double, ptr %25, align 8
  %27 = add nsw i32 %.1, %6
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds double, ptr %5, i64 %28
  %30 = load double, ptr %29, align 8
  %31 = call double @llvm.fmuladd.f64(double %1, double %26, double %30)
  store double %31, ptr %29, align 8
  %32 = add nsw i32 %.12, %4
  %33 = add nsw i32 %.1, %7
  %34 = add nsw i32 %.03, 1
  br label %20, !llvm.loop !17

35:                                               ; preds = %.preheader, %37
  %.14 = phi i32 [ %47, %37 ], [ 0, %.preheader ]
  %36 = icmp slt i32 %.14, %0
  br i1 %36, label %37, label %.loopexit1

37:                                               ; preds = %35
  %38 = add nsw i32 %.14, %3
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds double, ptr %2, i64 %39
  %41 = load double, ptr %40, align 8
  %42 = add nsw i32 %.14, %6
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds double, ptr %5, i64 %43
  %45 = load double, ptr %44, align 8
  %46 = call double @llvm.fmuladd.f64(double %1, double %41, double %45)
  store double %46, ptr %44, align 8
  %47 = add nsw i32 %.14, 1
  br label %35, !llvm.loop !18

.loopexit:                                        ; preds = %20
  br label %48

.loopexit1:                                       ; preds = %35
  br label %48

48:                                               ; preds = %.loopexit1, %.loopexit, %8
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @dgefa(ptr noundef %0, ptr noundef %1) #0 {
  br label %3

3:                                                ; preds = %41, %2
  %.01 = phi i32 [ 0, %2 ], [ %9, %41 ]
  %4 = icmp slt i32 %.01, 1999
  br i1 %4, label %5, label %42

5:                                                ; preds = %3
  %6 = sext i32 %.01 to i64
  %7 = getelementptr inbounds ptr, ptr %0, i64 %6
  %8 = load ptr, ptr %7, align 8
  %9 = add nsw i32 %.01, 1
  %10 = sub nsw i32 2000, %.01
  %11 = call i32 @idamax(i32 noundef %10, ptr noundef %8, i32 noundef %.01, i32 noundef 1)
  %12 = add nsw i32 %11, %.01
  %13 = getelementptr inbounds i32, ptr %1, i64 %6
  store i32 %12, ptr %13, align 4
  %14 = sext i32 %12 to i64
  %15 = getelementptr inbounds double, ptr %8, i64 %14
  %16 = load double, ptr %15, align 8
  %17 = fcmp une double %16, 0.000000e+00
  br i1 %17, label %18, label %41

18:                                               ; preds = %5
  %19 = icmp ne i32 %12, %.01
  br i1 %19, label %20, label %._crit_edge

._crit_edge:                                      ; preds = %18
  %.phi.trans.insert = getelementptr inbounds double, ptr %8, i64 %6
  %.pre = load double, ptr %.phi.trans.insert, align 8
  br label %23

20:                                               ; preds = %18
  %21 = getelementptr inbounds double, ptr %8, i64 %6
  %22 = load double, ptr %21, align 8
  store double %22, ptr %15, align 8
  store double %16, ptr %21, align 8
  br label %23

23:                                               ; preds = %._crit_edge, %20
  %24 = phi double [ %.pre, %._crit_edge ], [ %16, %20 ]
  %25 = getelementptr inbounds double, ptr %8, i64 %6
  %26 = fdiv double -1.000000e+00, %24
  %27 = sub nsw i32 2000, %9
  call void @dscal(i32 noundef %27, double noundef %26, ptr noundef %8, i32 noundef %9, i32 noundef 1)
  br label %28

28:                                               ; preds = %39, %23
  %.0 = phi i32 [ %9, %23 ], [ %40, %39 ]
  %29 = icmp slt i32 %.0, 2000
  br i1 %29, label %30, label %.loopexit

30:                                               ; preds = %28
  %31 = sext i32 %.0 to i64
  %32 = getelementptr inbounds ptr, ptr %0, i64 %31
  %33 = load ptr, ptr %32, align 8
  %34 = getelementptr inbounds double, ptr %33, i64 %14
  %35 = load double, ptr %34, align 8
  br i1 %19, label %36, label %39

36:                                               ; preds = %30
  %37 = getelementptr inbounds double, ptr %33, i64 %6
  %38 = load double, ptr %37, align 8
  store double %38, ptr %34, align 8
  store double %35, ptr %37, align 8
  br label %39

39:                                               ; preds = %36, %30
  call void @daxpy(i32 noundef %27, double noundef %35, ptr noundef %8, i32 noundef %9, i32 noundef 1, ptr noundef %33, i32 noundef %9, i32 noundef 1)
  %40 = add nsw i32 %.0, 1
  br label %28, !llvm.loop !19

.loopexit:                                        ; preds = %28
  br label %41

41:                                               ; preds = %.loopexit, %5
  br label %3, !llvm.loop !20

42:                                               ; preds = %3
  %43 = getelementptr inbounds i32, ptr %1, i64 1999
  store i32 1999, ptr %43, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @dgesl(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  br label %4

4:                                                ; preds = %17, %3
  %.01 = phi i32 [ 0, %3 ], [ %18, %17 ]
  %5 = icmp slt i32 %.01, 1999
  br i1 %5, label %6, label %.preheader

.preheader:                                       ; preds = %4
  br label %22

6:                                                ; preds = %4
  %7 = sext i32 %.01 to i64
  %8 = getelementptr inbounds i32, ptr %1, i64 %7
  %9 = load i32, ptr %8, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds double, ptr %2, i64 %10
  %12 = load double, ptr %11, align 8
  %13 = icmp ne i32 %9, %.01
  br i1 %13, label %14, label %17

14:                                               ; preds = %6
  %15 = getelementptr inbounds double, ptr %2, i64 %7
  %16 = load double, ptr %15, align 8
  store double %16, ptr %11, align 8
  store double %12, ptr %15, align 8
  br label %17

17:                                               ; preds = %14, %6
  %18 = add nsw i32 %.01, 1
  %19 = sub nsw i32 2000, %18
  %20 = getelementptr inbounds ptr, ptr %0, i64 %7
  %21 = load ptr, ptr %20, align 8
  call void @daxpy(i32 noundef %19, double noundef %12, ptr noundef %21, i32 noundef %18, i32 noundef 1, ptr noundef %2, i32 noundef %18, i32 noundef 1)
  br label %4, !llvm.loop !21

22:                                               ; preds = %.preheader, %24
  %.0 = phi i32 [ %25, %24 ], [ 0, %.preheader ]
  %23 = icmp slt i32 %.0, 2000
  br i1 %23, label %24, label %37

24:                                               ; preds = %22
  %25 = add nsw i32 %.0, 1
  %26 = sub nsw i32 2000, %25
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds ptr, ptr %0, i64 %27
  %29 = load ptr, ptr %28, align 8
  %30 = getelementptr inbounds double, ptr %29, i64 %27
  %31 = load double, ptr %30, align 8
  %32 = getelementptr inbounds double, ptr %2, i64 %27
  %33 = load double, ptr %32, align 8
  %34 = fdiv double %33, %31
  store double %34, ptr %32, align 8
  %35 = fneg double %34
  %36 = load ptr, ptr %28, align 8
  call void @daxpy(i32 noundef %26, double noundef %35, ptr noundef %36, i32 noundef 0, i32 noundef 1, ptr noundef %2, i32 noundef 0, i32 noundef 1)
  br label %22, !llvm.loop !22

37:                                               ; preds = %22
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = icmp sgt i32 %0, 1
  br i1 %3, label %.preheader, label %13

.preheader:                                       ; preds = %2
  %4 = getelementptr inbounds ptr, ptr %1, i64 1
  br label %5

5:                                                ; preds = %.preheader, %11
  %.01 = phi i32 [ %12, %11 ], [ 1, %.preheader ]
  %6 = icmp slt i32 %.01, %0
  br i1 %6, label %7, label %.loopexit

7:                                                ; preds = %5
  %8 = load ptr, ptr %4, align 8
  %9 = call i32 @strcmp(ptr noundef %8, ptr noundef @.str) #5
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %.loopexit

11:                                               ; preds = %7
  %12 = add nsw i32 %.01, 1
  br label %5, !llvm.loop !23

.loopexit:                                        ; preds = %5, %7
  %.0.ph = phi i8 [ 1, %7 ], [ 0, %5 ]
  br label %13

13:                                               ; preds = %.loopexit, %2
  %.0 = phi i8 [ 0, %2 ], [ %.0.ph, %.loopexit ]
  %14 = call ptr @malloc(i64 noundef 16000) #6
  br label %15

15:                                               ; preds = %17, %13
  %.12 = phi i32 [ 0, %13 ], [ %21, %17 ]
  %16 = icmp slt i32 %.12, 2000
  br i1 %16, label %17, label %22

17:                                               ; preds = %15
  %18 = call ptr @malloc(i64 noundef 16008) #6
  %19 = sext i32 %.12 to i64
  %20 = getelementptr inbounds ptr, ptr %14, i64 %19
  store ptr %18, ptr %20, align 8
  %21 = add nsw i32 %.12, 1
  br label %15, !llvm.loop !24

22:                                               ; preds = %15
  %23 = call ptr @malloc(i64 noundef 16000) #6
  %24 = call ptr @malloc(i64 noundef 16000) #6
  %25 = call ptr @malloc(i64 noundef 8000) #6
  call void @matgen(ptr noundef %14, ptr noundef %23)
  call void @dgefa(ptr noundef %14, ptr noundef %25)
  call void @dgesl(ptr noundef %14, ptr noundef %25, ptr noundef %23)
  call void @free(ptr noundef %25)
  call void @free(ptr noundef %24)
  call void @free(ptr noundef %23)
  br label %26

26:                                               ; preds = %28, %22
  %.2 = phi i32 [ 0, %22 ], [ %32, %28 ]
  %27 = icmp slt i32 %.2, 2000
  br i1 %27, label %28, label %33

28:                                               ; preds = %26
  %29 = sext i32 %.2 to i64
  %30 = getelementptr inbounds ptr, ptr %14, i64 %29
  %31 = load ptr, ptr %30, align 8
  call void @free(ptr noundef %31)
  %32 = add nsw i32 %.2, 1
  br label %26, !llvm.loop !25

33:                                               ; preds = %26
  call void @free(ptr noundef %14)
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
