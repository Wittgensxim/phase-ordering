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
  br label %.preheader3

.preheader3:                                      ; preds = %2, %12
  %.015 = phi i32 [ 0, %2 ], [ %13, %12 ]
  br label %3

.preheader2:                                      ; preds = %12
  br label %15

3:                                                ; preds = %.preheader3, %3
  %.04 = phi i32 [ 0, %.preheader3 ], [ %10, %3 ]
  %4 = call double @random_double()
  %5 = sext i32 %.04 to i64
  %6 = getelementptr inbounds ptr, ptr %0, i64 %5
  %7 = load ptr, ptr %6, align 8
  %8 = sext i32 %.015 to i64
  %9 = getelementptr inbounds double, ptr %7, i64 %8
  store double %4, ptr %9, align 8
  %10 = add nsw i32 %.04, 1
  %11 = icmp slt i32 %10, 2000
  br i1 %11, label %3, label %12, !llvm.loop !7

12:                                               ; preds = %3
  %13 = add nsw i32 %.015, 1
  %14 = icmp slt i32 %13, 2000
  br i1 %14, label %.preheader3, label %.preheader2, !llvm.loop !9

.preheader1:                                      ; preds = %15
  br label %.preheader

15:                                               ; preds = %.preheader2, %15
  %.126 = phi i32 [ 0, %.preheader2 ], [ %18, %15 ]
  %16 = sext i32 %.126 to i64
  %17 = getelementptr inbounds double, ptr %1, i64 %16
  store double 0.000000e+00, ptr %17, align 8
  %18 = add nsw i32 %.126, 1
  %19 = icmp slt i32 %18, 2000
  br i1 %19, label %15, label %.preheader1, !llvm.loop !10

.preheader:                                       ; preds = %.preheader1, %32
  %.18 = phi i32 [ 0, %.preheader1 ], [ %33, %32 ]
  br label %20

20:                                               ; preds = %.preheader, %20
  %.27 = phi i32 [ 0, %.preheader ], [ %30, %20 ]
  %21 = sext i32 %.18 to i64
  %22 = getelementptr inbounds ptr, ptr %0, i64 %21
  %23 = load ptr, ptr %22, align 8
  %24 = sext i32 %.27 to i64
  %25 = getelementptr inbounds double, ptr %23, i64 %24
  %26 = load double, ptr %25, align 8
  %27 = getelementptr inbounds double, ptr %1, i64 %24
  %28 = load double, ptr %27, align 8
  %29 = fadd double %28, %26
  store double %29, ptr %27, align 8
  %30 = add nsw i32 %.27, 1
  %31 = icmp slt i32 %30, 2000
  br i1 %31, label %20, label %32, !llvm.loop !11

32:                                               ; preds = %20
  %33 = add nsw i32 %.18, 1
  %34 = icmp slt i32 %33, 2000
  br i1 %34, label %.preheader, label %35, !llvm.loop !12

35:                                               ; preds = %32
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @idamax(i32 noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = icmp slt i32 %0, 1
  br i1 %5, label %40, label %6

6:                                                ; preds = %4
  %7 = icmp eq i32 %0, 1
  br i1 %7, label %40, label %8

8:                                                ; preds = %6
  %9 = icmp ne i32 %3, 1
  br i1 %9, label %10, label %26

10:                                               ; preds = %8
  %11 = sext i32 %2 to i64
  %12 = getelementptr inbounds double, ptr %1, i64 %11
  %13 = load double, ptr %12, align 8
  %14 = call double @llvm.fabs.f64(double %13)
  %15 = add nsw i32 1, %3
  br label %.lr.ph9

.lr.ph9:                                          ; preds = %10
  br label %16

16:                                               ; preds = %.lr.ph9, %16
  %.28 = phi i32 [ 0, %.lr.ph9 ], [ %.3, %16 ]
  %.017 = phi i32 [ %15, %.lr.ph9 ], [ %23, %16 ]
  %.026 = phi i32 [ 1, %.lr.ph9 ], [ %24, %16 ]
  %.045 = phi double [ %14, %.lr.ph9 ], [ %.15, %16 ]
  %17 = add nsw i32 %.017, %2
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds double, ptr %1, i64 %18
  %20 = load double, ptr %19, align 8
  %21 = call double @llvm.fabs.f64(double %20)
  %22 = fcmp ogt double %21, %.045
  %.15 = select i1 %22, double %21, double %.045
  %.3 = select i1 %22, i32 %.026, i32 %.28
  %23 = add nsw i32 %.017, %3
  %24 = add nsw i32 %.026, 1
  %25 = icmp slt i32 %24, %0
  br i1 %25, label %16, label %..loopexit_crit_edge, !llvm.loop !13

26:                                               ; preds = %8
  %27 = sext i32 %2 to i64
  %28 = getelementptr inbounds double, ptr %1, i64 %27
  %29 = load double, ptr %28, align 8
  %30 = call double @llvm.fabs.f64(double %29)
  br label %.lr.ph

.lr.ph:                                           ; preds = %26
  br label %31

31:                                               ; preds = %.lr.ph, %31
  %.54 = phi i32 [ 0, %.lr.ph ], [ %.6, %31 ]
  %.133 = phi i32 [ 1, %.lr.ph ], [ %38, %31 ]
  %.262 = phi double [ %30, %.lr.ph ], [ %.37, %31 ]
  %32 = add nsw i32 %.133, %2
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds double, ptr %1, i64 %33
  %35 = load double, ptr %34, align 8
  %36 = call double @llvm.fabs.f64(double %35)
  %37 = fcmp ogt double %36, %.262
  %.37 = select i1 %37, double %36, double %.262
  %.6 = select i1 %37, i32 %.133, i32 %.54
  %38 = add nsw i32 %.133, 1
  %39 = icmp slt i32 %38, %0
  br i1 %39, label %31, label %..loopexit1_crit_edge, !llvm.loop !14

..loopexit_crit_edge:                             ; preds = %16
  %split10 = phi i32 [ %.3, %16 ]
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge
  br label %40

..loopexit1_crit_edge:                            ; preds = %31
  %split = phi i32 [ %.6, %31 ]
  br label %.loopexit1

.loopexit1:                                       ; preds = %..loopexit1_crit_edge
  br label %40

40:                                               ; preds = %.loopexit1, %.loopexit, %6, %4
  %.0 = phi i32 [ -1, %4 ], [ 0, %6 ], [ %split10, %.loopexit ], [ %split, %.loopexit1 ]
  ret i32 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @dscal(i32 noundef %0, double noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = icmp sgt i32 %0, 0
  br i1 %6, label %7, label %28

7:                                                ; preds = %5
  %8 = icmp ne i32 %4, 1
  br i1 %8, label %9, label %.preheader

.preheader:                                       ; preds = %7
  br label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  br label %20

9:                                                ; preds = %7
  %10 = mul nsw i32 %0, %4
  %11 = icmp slt i32 0, %10
  br i1 %11, label %.lr.ph4, label %.loopexit

.lr.ph4:                                          ; preds = %9
  br label %12

12:                                               ; preds = %.lr.ph4, %12
  %.03 = phi i32 [ 0, %.lr.ph4 ], [ %18, %12 ]
  %13 = add nsw i32 %.03, %3
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds double, ptr %2, i64 %14
  %16 = load double, ptr %15, align 8
  %17 = fmul double %16, %1
  store double %17, ptr %15, align 8
  %18 = add nsw i32 %.03, %4
  %19 = icmp slt i32 %18, %10
  br i1 %19, label %12, label %..loopexit_crit_edge, !llvm.loop !15

20:                                               ; preds = %.lr.ph, %20
  %.12 = phi i32 [ 0, %.lr.ph ], [ %26, %20 ]
  %21 = add nsw i32 %.12, %3
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds double, ptr %2, i64 %22
  %24 = load double, ptr %23, align 8
  %25 = fmul double %24, %1
  store double %25, ptr %23, align 8
  %26 = add nsw i32 %.12, 1
  %27 = icmp slt i32 %26, %0
  br i1 %27, label %20, label %..loopexit1_crit_edge, !llvm.loop !16

..loopexit_crit_edge:                             ; preds = %12
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %9
  br label %28

..loopexit1_crit_edge:                            ; preds = %20
  br label %.loopexit1

.loopexit1:                                       ; preds = %..loopexit1_crit_edge
  br label %28

28:                                               ; preds = %.loopexit1, %.loopexit, %5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @daxpy(i32 noundef %0, double noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7) #0 {
  %9 = icmp sgt i32 %0, 0
  %10 = fcmp une double %1, 0.000000e+00
  %or.cond = and i1 %9, %10
  br i1 %or.cond, label %11, label %46

11:                                               ; preds = %8
  %12 = icmp ne i32 %4, 1
  %13 = icmp ne i32 %7, 1
  %or.cond1 = or i1 %12, %13
  br i1 %or.cond1, label %14, label %.preheader

.preheader:                                       ; preds = %11
  br label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  br label %34

14:                                               ; preds = %11
  %15 = icmp slt i32 %4, 0
  %16 = sub nsw i32 1, %0
  %17 = mul nsw i32 %16, %4
  %.01 = select i1 %15, i32 %17, i32 0
  %18 = icmp slt i32 %7, 0
  %19 = mul nsw i32 %16, %7
  %.0 = select i1 %18, i32 %19, i32 0
  br label %.lr.ph6

.lr.ph6:                                          ; preds = %14
  br label %20

20:                                               ; preds = %.lr.ph6, %20
  %.15 = phi i32 [ %.0, %.lr.ph6 ], [ %31, %20 ]
  %.124 = phi i32 [ %.01, %.lr.ph6 ], [ %30, %20 ]
  %.033 = phi i32 [ 0, %.lr.ph6 ], [ %32, %20 ]
  %21 = add nsw i32 %.124, %3
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds double, ptr %2, i64 %22
  %24 = load double, ptr %23, align 8
  %25 = add nsw i32 %.15, %6
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds double, ptr %5, i64 %26
  %28 = load double, ptr %27, align 8
  %29 = call double @llvm.fmuladd.f64(double %1, double %24, double %28)
  store double %29, ptr %27, align 8
  %30 = add nsw i32 %.124, %4
  %31 = add nsw i32 %.15, %7
  %32 = add nsw i32 %.033, 1
  %33 = icmp slt i32 %32, %0
  br i1 %33, label %20, label %..loopexit_crit_edge, !llvm.loop !17

34:                                               ; preds = %.lr.ph, %34
  %.142 = phi i32 [ 0, %.lr.ph ], [ %44, %34 ]
  %35 = add nsw i32 %.142, %3
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds double, ptr %2, i64 %36
  %38 = load double, ptr %37, align 8
  %39 = add nsw i32 %.142, %6
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds double, ptr %5, i64 %40
  %42 = load double, ptr %41, align 8
  %43 = call double @llvm.fmuladd.f64(double %1, double %38, double %42)
  store double %43, ptr %41, align 8
  %44 = add nsw i32 %.142, 1
  %45 = icmp slt i32 %44, %0
  br i1 %45, label %34, label %..loopexit1_crit_edge, !llvm.loop !18

..loopexit_crit_edge:                             ; preds = %20
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge
  br label %46

..loopexit1_crit_edge:                            ; preds = %34
  br label %.loopexit1

.loopexit1:                                       ; preds = %..loopexit1_crit_edge
  br label %46

46:                                               ; preds = %.loopexit1, %.loopexit, %8
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @dgefa(ptr noundef %0, ptr noundef %1) #0 {
  br label %3

3:                                                ; preds = %2, %39
  %.013 = phi i32 [ 0, %2 ], [ %7, %39 ]
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
  br i1 %15, label %16, label %39

16:                                               ; preds = %3
  %17 = icmp ne i32 %10, %.013
  br i1 %17, label %18, label %21

18:                                               ; preds = %16
  %19 = getelementptr inbounds double, ptr %6, i64 %4
  %20 = load double, ptr %19, align 8
  store double %20, ptr %13, align 8
  store double %14, ptr %19, align 8
  br label %21

21:                                               ; preds = %18, %16
  %22 = getelementptr inbounds double, ptr %6, i64 %4
  %23 = load double, ptr %22, align 8
  %24 = fdiv double -1.000000e+00, %23
  %25 = sub nsw i32 2000, %7
  call void @dscal(i32 noundef %25, double noundef %24, ptr noundef %6, i32 noundef %7, i32 noundef 1)
  %26 = icmp slt i32 %7, 2000
  br i1 %26, label %.lr.ph, label %.loopexit

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
  br i1 %38, label %27, label %..loopexit_crit_edge, !llvm.loop !19

..loopexit_crit_edge:                             ; preds = %36
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %21
  br label %39

39:                                               ; preds = %.loopexit, %3
  %40 = icmp slt i32 %7, 1999
  br i1 %40, label %3, label %41, !llvm.loop !20

41:                                               ; preds = %39
  %42 = getelementptr inbounds nuw i32, ptr %1, i64 1999
  store i32 1999, ptr %42, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @dgesl(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  br label %4

.preheader:                                       ; preds = %15
  br label %21

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
  br i1 %20, label %4, label %.preheader, !llvm.loop !21

21:                                               ; preds = %.preheader, %21
  %.02 = phi i32 [ 0, %.preheader ], [ %22, %21 ]
  %22 = add nsw i32 %.02, 1
  %23 = sub nsw i32 2000, %22
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds ptr, ptr %0, i64 %24
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds double, ptr %26, i64 %24
  %28 = load double, ptr %27, align 8
  %29 = getelementptr inbounds double, ptr %2, i64 %24
  %30 = load double, ptr %29, align 8
  %31 = fdiv double %30, %28
  store double %31, ptr %29, align 8
  %32 = fneg double %31
  %33 = load ptr, ptr %25, align 8
  call void @daxpy(i32 noundef %23, double noundef %32, ptr noundef %33, i32 noundef 0, i32 noundef 1, ptr noundef %2, i32 noundef 0, i32 noundef 1)
  %34 = icmp slt i32 %22, 2000
  br i1 %34, label %21, label %35, !llvm.loop !22

35:                                               ; preds = %21
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = icmp sgt i32 %0, 1
  br i1 %3, label %.preheader, label %12

.preheader:                                       ; preds = %2
  %4 = getelementptr inbounds nuw ptr, ptr %1, i64 1
  br label %7

5:                                                ; preds = %7
  %.01 = phi i32 [ %11, %7 ]
  %6 = icmp slt i32 %.01, %0
  br i1 %6, label %7, label %.loopexit, !llvm.loop !23

7:                                                ; preds = %.preheader, %5
  %.011 = phi i32 [ 1, %.preheader ], [ %.01, %5 ]
  %8 = load ptr, ptr %4, align 8
  %9 = call i32 @strcmp(ptr noundef %8, ptr noundef @.str) #5
  %10 = icmp ne i32 %9, 0
  %11 = add nsw i32 %.011, 1
  br i1 %10, label %5, label %.loopexit

.loopexit:                                        ; preds = %5, %7
  %.0.ph = phi i8 [ 1, %7 ], [ 0, %5 ]
  br label %12

12:                                               ; preds = %.loopexit, %2
  %.0 = phi i8 [ 0, %2 ], [ %.0.ph, %.loopexit ]
  %13 = call ptr @malloc(i64 noundef 16000) #6
  br label %14

14:                                               ; preds = %12, %14
  %.122 = phi i32 [ 0, %12 ], [ %18, %14 ]
  %15 = call ptr @malloc(i64 noundef 16008) #6
  %16 = sext i32 %.122 to i64
  %17 = getelementptr inbounds ptr, ptr %13, i64 %16
  store ptr %15, ptr %17, align 8
  %18 = add nsw i32 %.122, 1
  %19 = icmp slt i32 %18, 2000
  br i1 %19, label %14, label %20, !llvm.loop !24

20:                                               ; preds = %14
  %21 = call ptr @malloc(i64 noundef 16000) #6
  %22 = call ptr @malloc(i64 noundef 16000) #6
  %23 = call ptr @malloc(i64 noundef 8000) #6
  call void @matgen(ptr noundef %13, ptr noundef %21)
  call void @dgefa(ptr noundef %13, ptr noundef %23)
  call void @dgesl(ptr noundef %13, ptr noundef %23, ptr noundef %21)
  call void @free(ptr noundef %23)
  call void @free(ptr noundef %22)
  call void @free(ptr noundef %21)
  br label %24

24:                                               ; preds = %20, %24
  %.23 = phi i32 [ 0, %20 ], [ %28, %24 ]
  %25 = sext i32 %.23 to i64
  %26 = getelementptr inbounds ptr, ptr %13, i64 %25
  %27 = load ptr, ptr %26, align 8
  call void @free(ptr noundef %27)
  %28 = add nsw i32 %.23, 1
  %29 = icmp slt i32 %28, 2000
  br i1 %29, label %24, label %30, !llvm.loop !25

30:                                               ; preds = %24
  call void @free(ptr noundef %13)
  %31 = icmp ne i8 %.0, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %30
  %33 = call ptr @__acrt_iob_func(i32 noundef 1)
  %34 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %33, ptr noundef @.str.1, double noundef 0.000000e+00) #5
  br label %38

35:                                               ; preds = %30
  %36 = call ptr @__acrt_iob_func(i32 noundef 1)
  %37 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %36, ptr noundef @.str.2, double noundef 0.000000e+00) #5
  br label %38

38:                                               ; preds = %35, %32
  %39 = call ptr @__acrt_iob_func(i32 noundef 1)
  %40 = call i32 @fflush(ptr noundef %39)
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
  %13 = load i32, ptr @seed, align 4
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
