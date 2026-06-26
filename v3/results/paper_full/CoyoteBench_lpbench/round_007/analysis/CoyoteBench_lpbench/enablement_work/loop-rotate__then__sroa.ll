; ModuleID = 'results\paper_full\CoyoteBench_lpbench\round_006\input.ll'
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
  %5 = zext nneg i32 %.04 to i64
  %6 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %5
  %7 = load ptr, ptr %6, align 8
  %8 = zext nneg i32 %.015 to i64
  %9 = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %8
  store double %4, ptr %9, align 8
  %10 = add nuw nsw i32 %.04, 1
  %11 = icmp samesign ult i32 %10, 2000
  br i1 %11, label %3, label %12, !llvm.loop !7

12:                                               ; preds = %3
  %13 = add nuw nsw i32 %.015, 1
  %14 = icmp samesign ult i32 %13, 2000
  br i1 %14, label %.preheader3, label %.preheader2, !llvm.loop !9

.preheader1:                                      ; preds = %15
  br label %.preheader

15:                                               ; preds = %.preheader2, %15
  %.126 = phi i32 [ 0, %.preheader2 ], [ %18, %15 ]
  %16 = zext nneg i32 %.126 to i64
  %17 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %16
  store double 0.000000e+00, ptr %17, align 8
  %18 = add nuw nsw i32 %.126, 1
  %19 = icmp samesign ult i32 %18, 2000
  br i1 %19, label %15, label %.preheader1, !llvm.loop !10

.preheader:                                       ; preds = %.preheader1, %32
  %.18 = phi i32 [ 0, %.preheader1 ], [ %33, %32 ]
  br label %20

20:                                               ; preds = %.preheader, %20
  %.27 = phi i32 [ 0, %.preheader ], [ %30, %20 ]
  %21 = zext nneg i32 %.18 to i64
  %22 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %21
  %23 = load ptr, ptr %22, align 8
  %24 = zext nneg i32 %.27 to i64
  %25 = getelementptr inbounds nuw [8 x i8], ptr %23, i64 %24
  %26 = load double, ptr %25, align 8
  %27 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %24
  %28 = load double, ptr %27, align 8
  %29 = fadd double %28, %26
  store double %29, ptr %27, align 8
  %30 = add nuw nsw i32 %.27, 1
  %31 = icmp samesign ult i32 %30, 2000
  br i1 %31, label %20, label %32, !llvm.loop !11

32:                                               ; preds = %20
  %33 = add nuw nsw i32 %.18, 1
  %34 = icmp samesign ult i32 %33, 2000
  br i1 %34, label %.preheader, label %35, !llvm.loop !12

35:                                               ; preds = %32
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @idamax(i32 noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = icmp slt i32 %0, 1
  br i1 %5, label %41, label %6

6:                                                ; preds = %4
  %7 = icmp eq i32 %0, 1
  br i1 %7, label %41, label %8

8:                                                ; preds = %6
  %.not = icmp eq i32 %3, 1
  br i1 %.not, label %26, label %9

9:                                                ; preds = %8
  %10 = sext i32 %2 to i64
  %11 = getelementptr inbounds [8 x i8], ptr %1, i64 %10
  %12 = load double, ptr %11, align 8
  %13 = call double @llvm.fabs.f64(double %12)
  %14 = add nsw i32 %3, 1
  %15 = icmp slt i32 1, %0
  br i1 %15, label %.lr.ph, label %.loopexit1

.lr.ph:                                           ; preds = %9
  br label %16

16:                                               ; preds = %.lr.ph, %16
  %.25 = phi i32 [ 0, %.lr.ph ], [ %.3, %16 ]
  %.014 = phi i32 [ %14, %.lr.ph ], [ %23, %16 ]
  %.023 = phi i32 [ 1, %.lr.ph ], [ %24, %16 ]
  %.042 = phi double [ %13, %.lr.ph ], [ %.15, %16 ]
  %17 = add nsw i32 %.014, %2
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [8 x i8], ptr %1, i64 %18
  %20 = load double, ptr %19, align 8
  %21 = call double @llvm.fabs.f64(double %20)
  %22 = fcmp ogt double %21, %.042
  %.15 = select i1 %22, double %21, double %.042
  %.3 = select i1 %22, i32 %.023, i32 %.25
  %23 = add nsw i32 %.014, %3
  %24 = add nuw nsw i32 %.023, 1
  %25 = icmp slt i32 %24, %0
  br i1 %25, label %16, label %..loopexit1_crit_edge, !llvm.loop !13

26:                                               ; preds = %8
  %27 = sext i32 %2 to i64
  %28 = getelementptr inbounds [8 x i8], ptr %1, i64 %27
  %29 = load double, ptr %28, align 8
  %30 = call double @llvm.fabs.f64(double %29)
  %31 = icmp slt i32 1, %0
  br i1 %31, label %.lr.ph9, label %.loopexit

.lr.ph9:                                          ; preds = %26
  br label %32

32:                                               ; preds = %.lr.ph9, %32
  %.58 = phi i32 [ 0, %.lr.ph9 ], [ %.6, %32 ]
  %.137 = phi i32 [ 1, %.lr.ph9 ], [ %39, %32 ]
  %.266 = phi double [ %30, %.lr.ph9 ], [ %.37, %32 ]
  %33 = add nsw i32 %.137, %2
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [8 x i8], ptr %1, i64 %34
  %36 = load double, ptr %35, align 8
  %37 = call double @llvm.fabs.f64(double %36)
  %38 = fcmp ogt double %37, %.266
  %.37 = select i1 %38, double %37, double %.266
  %.6 = select i1 %38, i32 %.137, i32 %.58
  %39 = add nuw nsw i32 %.137, 1
  %40 = icmp slt i32 %39, %0
  br i1 %40, label %32, label %..loopexit_crit_edge, !llvm.loop !14

..loopexit_crit_edge:                             ; preds = %32
  %split10 = phi i32 [ %.6, %32 ]
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %26
  %.5.lcssa = phi i32 [ %split10, %..loopexit_crit_edge ], [ 0, %26 ]
  br label %41

..loopexit1_crit_edge:                            ; preds = %16
  %split = phi i32 [ %.3, %16 ]
  br label %.loopexit1

.loopexit1:                                       ; preds = %..loopexit1_crit_edge, %9
  %.2.lcssa = phi i32 [ %split, %..loopexit1_crit_edge ], [ 0, %9 ]
  br label %41

41:                                               ; preds = %.loopexit1, %.loopexit, %6, %4
  %.0 = phi i32 [ -1, %4 ], [ 0, %6 ], [ %.5.lcssa, %.loopexit ], [ %.2.lcssa, %.loopexit1 ]
  ret i32 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @dscal(i32 noundef %0, double noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = icmp sgt i32 %0, 0
  br i1 %6, label %7, label %28

7:                                                ; preds = %5
  %.not = icmp eq i32 %4, 1
  br i1 %.not, label %.preheader, label %9

.preheader:                                       ; preds = %7
  %8 = icmp slt i32 0, %0
  br i1 %8, label %.lr.ph4, label %.loopexit

.lr.ph4:                                          ; preds = %.preheader
  br label %20

9:                                                ; preds = %7
  %10 = mul nsw i32 %0, %4
  %11 = icmp slt i32 0, %10
  br i1 %11, label %.lr.ph, label %.loopexit1

.lr.ph:                                           ; preds = %9
  br label %12

12:                                               ; preds = %.lr.ph, %12
  %.02 = phi i32 [ 0, %.lr.ph ], [ %18, %12 ]
  %13 = add nsw i32 %.02, %3
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [8 x i8], ptr %2, i64 %14
  %16 = load double, ptr %15, align 8
  %17 = fmul double %16, %1
  store double %17, ptr %15, align 8
  %18 = add nsw i32 %.02, %4
  %19 = icmp slt i32 %18, %10
  br i1 %19, label %12, label %..loopexit1_crit_edge, !llvm.loop !15

20:                                               ; preds = %.lr.ph4, %20
  %.13 = phi i32 [ 0, %.lr.ph4 ], [ %26, %20 ]
  %21 = add nsw i32 %.13, %3
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [8 x i8], ptr %2, i64 %22
  %24 = load double, ptr %23, align 8
  %25 = fmul double %24, %1
  store double %25, ptr %23, align 8
  %26 = add nuw nsw i32 %.13, 1
  %27 = icmp slt i32 %26, %0
  br i1 %27, label %20, label %..loopexit_crit_edge, !llvm.loop !16

..loopexit_crit_edge:                             ; preds = %20
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %.preheader
  br label %28

..loopexit1_crit_edge:                            ; preds = %12
  br label %.loopexit1

.loopexit1:                                       ; preds = %..loopexit1_crit_edge, %9
  br label %28

28:                                               ; preds = %.loopexit1, %.loopexit, %5
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
  br i1 %or.cond1, label %15, label %.preheader

.preheader:                                       ; preds = %11
  %14 = icmp slt i32 0, %0
  br i1 %14, label %.lr.ph, label %.loopexit1

.lr.ph:                                           ; preds = %.preheader
  br label %36

15:                                               ; preds = %11
  %16 = icmp slt i32 %4, 0
  %17 = sub nsw i32 1, %0
  %18 = mul nsw i32 %17, %4
  %.01 = select i1 %16, i32 %18, i32 0
  %19 = icmp slt i32 %7, 0
  %20 = mul nsw i32 %17, %7
  %.0 = select i1 %19, i32 %20, i32 0
  %21 = icmp slt i32 0, %0
  br i1 %21, label %.lr.ph6, label %.loopexit

.lr.ph6:                                          ; preds = %15
  br label %22

22:                                               ; preds = %.lr.ph6, %22
  %.15 = phi i32 [ %.0, %.lr.ph6 ], [ %33, %22 ]
  %.124 = phi i32 [ %.01, %.lr.ph6 ], [ %32, %22 ]
  %.033 = phi i32 [ 0, %.lr.ph6 ], [ %34, %22 ]
  %23 = add nsw i32 %.124, %3
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [8 x i8], ptr %2, i64 %24
  %26 = load double, ptr %25, align 8
  %27 = add nsw i32 %.15, %6
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [8 x i8], ptr %5, i64 %28
  %30 = load double, ptr %29, align 8
  %31 = call double @llvm.fmuladd.f64(double %1, double %26, double %30)
  store double %31, ptr %29, align 8
  %32 = add nsw i32 %.124, %4
  %33 = add nsw i32 %.15, %7
  %34 = add nuw nsw i32 %.033, 1
  %35 = icmp slt i32 %34, %0
  br i1 %35, label %22, label %..loopexit_crit_edge, !llvm.loop !17

36:                                               ; preds = %.lr.ph, %36
  %.142 = phi i32 [ 0, %.lr.ph ], [ %46, %36 ]
  %37 = add nsw i32 %.142, %3
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [8 x i8], ptr %2, i64 %38
  %40 = load double, ptr %39, align 8
  %41 = add nsw i32 %.142, %6
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [8 x i8], ptr %5, i64 %42
  %44 = load double, ptr %43, align 8
  %45 = call double @llvm.fmuladd.f64(double %1, double %40, double %44)
  store double %45, ptr %43, align 8
  %46 = add nuw nsw i32 %.142, 1
  %47 = icmp slt i32 %46, %0
  br i1 %47, label %36, label %..loopexit1_crit_edge, !llvm.loop !18

..loopexit_crit_edge:                             ; preds = %22
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %15
  br label %48

..loopexit1_crit_edge:                            ; preds = %36
  br label %.loopexit1

.loopexit1:                                       ; preds = %..loopexit1_crit_edge, %.preheader
  br label %48

48:                                               ; preds = %.loopexit1, %.loopexit, %8
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @dgefa(ptr noundef %0, ptr noundef %1) #0 {
  br label %3

3:                                                ; preds = %2, %37
  %.014 = phi i32 [ 0, %2 ], [ %7, %37 ]
  %4 = zext nneg i32 %.014 to i64
  %5 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %4
  %6 = load ptr, ptr %5, align 8
  %7 = add nuw nsw i32 %.014, 1
  %8 = sub nuw nsw i32 2000, %.014
  %9 = call i32 @idamax(i32 noundef %8, ptr noundef %6, i32 noundef %.014, i32 noundef 1)
  %10 = add nsw i32 %9, %.014
  %11 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %4
  store i32 %10, ptr %11, align 4
  %12 = sext i32 %10 to i64
  %13 = getelementptr inbounds [8 x i8], ptr %6, i64 %12
  %14 = load double, ptr %13, align 8
  %15 = fcmp une double %14, 0.000000e+00
  br i1 %15, label %16, label %37

16:                                               ; preds = %3
  %.not = icmp eq i32 %9, 0
  br i1 %.not, label %._crit_edge, label %17

._crit_edge:                                      ; preds = %16
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %4
  %.pre = load double, ptr %.phi.trans.insert, align 8
  br label %20

17:                                               ; preds = %16
  %18 = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %4
  %19 = load double, ptr %18, align 8
  store double %19, ptr %13, align 8
  store double %14, ptr %18, align 8
  br label %20

20:                                               ; preds = %17, %._crit_edge
  %21 = phi double [ %.pre, %._crit_edge ], [ %14, %17 ]
  %22 = fdiv double -1.000000e+00, %21
  %23 = sub nsw i32 1999, %.014
  call void @dscal(i32 noundef %23, double noundef %22, ptr noundef %6, i32 noundef %7, i32 noundef 1)
  %24 = icmp samesign ult i32 %7, 2000
  br i1 %24, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %20
  br label %25

25:                                               ; preds = %.lr.ph, %34
  %.02 = phi i32 [ %7, %.lr.ph ], [ %35, %34 ]
  %26 = zext nneg i32 %.02 to i64
  %27 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %26
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds [8 x i8], ptr %28, i64 %12
  %30 = load double, ptr %29, align 8
  br i1 %.not, label %34, label %31

31:                                               ; preds = %25
  %32 = getelementptr inbounds nuw [8 x i8], ptr %28, i64 %4
  %33 = load double, ptr %32, align 8
  store double %33, ptr %29, align 8
  store double %30, ptr %32, align 8
  br label %34

34:                                               ; preds = %31, %25
  call void @daxpy(i32 noundef %23, double noundef %30, ptr noundef %6, i32 noundef %7, i32 noundef 1, ptr noundef %28, i32 noundef %7, i32 noundef 1)
  %35 = add nuw nsw i32 %.02, 1
  %36 = icmp samesign ult i32 %35, 2000
  br i1 %36, label %25, label %..loopexit_crit_edge, !llvm.loop !19

..loopexit_crit_edge:                             ; preds = %34
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %20
  br label %37

37:                                               ; preds = %.loopexit, %3
  %38 = icmp samesign ult i32 %7, 1999
  br i1 %38, label %3, label %39, !llvm.loop !20

39:                                               ; preds = %37
  %40 = getelementptr inbounds nuw i8, ptr %1, i64 7996
  store i32 1999, ptr %40, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @dgesl(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  br label %4

.preheader:                                       ; preds = %14
  br label %20

4:                                                ; preds = %3, %14
  %.011 = phi i32 [ 0, %3 ], [ %15, %14 ]
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
  %19 = icmp samesign ult i32 %15, 1999
  br i1 %19, label %4, label %.preheader, !llvm.loop !21

20:                                               ; preds = %.preheader, %20
  %.02 = phi i32 [ 0, %.preheader ], [ %21, %20 ]
  %21 = add nuw nsw i32 %.02, 1
  %22 = sub nuw nsw i32 1999, %.02
  %23 = zext nneg i32 %22 to i64
  %24 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %23
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds nuw [8 x i8], ptr %25, i64 %23
  %27 = load double, ptr %26, align 8
  %28 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %23
  %29 = load double, ptr %28, align 8
  %30 = fdiv double %29, %27
  store double %30, ptr %28, align 8
  %31 = fneg double %30
  %32 = load ptr, ptr %24, align 8
  call void @daxpy(i32 noundef %22, double noundef %31, ptr noundef %32, i32 noundef 0, i32 noundef 1, ptr noundef %2, i32 noundef 0, i32 noundef 1)
  %33 = icmp samesign ult i32 %21, 2000
  br i1 %33, label %20, label %34, !llvm.loop !22

34:                                               ; preds = %20
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = icmp sgt i32 %0, 1
  br i1 %3, label %.preheader, label %11

.preheader:                                       ; preds = %2
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %7

5:                                                ; preds = %7
  %.01 = phi i32 [ %10, %7 ]
  %6 = icmp slt i32 %.01, %0
  br i1 %6, label %7, label %.loopexit, !llvm.loop !23

7:                                                ; preds = %.preheader, %5
  %.011 = phi i32 [ 1, %.preheader ], [ %.01, %5 ]
  %8 = load ptr, ptr %4, align 8
  %9 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(4) @.str) #5
  %.not = icmp eq i32 %9, 0
  %10 = add nuw nsw i32 %.011, 1
  br i1 %.not, label %.loopexit, label %5

.loopexit:                                        ; preds = %5, %7
  %.not1.ph = phi i1 [ false, %7 ], [ true, %5 ]
  br label %11

11:                                               ; preds = %.loopexit, %2
  %.not1 = phi i1 [ true, %2 ], [ %.not1.ph, %.loopexit ]
  %12 = call dereferenceable_or_null(16000) ptr @malloc(i64 noundef 16000) #6
  br label %13

13:                                               ; preds = %11, %13
  %.122 = phi i32 [ 0, %11 ], [ %17, %13 ]
  %14 = call dereferenceable_or_null(16008) ptr @malloc(i64 noundef 16008) #6
  %15 = zext nneg i32 %.122 to i64
  %16 = getelementptr inbounds nuw [8 x i8], ptr %12, i64 %15
  store ptr %14, ptr %16, align 8
  %17 = add nuw nsw i32 %.122, 1
  %18 = icmp samesign ult i32 %17, 2000
  br i1 %18, label %13, label %19, !llvm.loop !24

19:                                               ; preds = %13
  %20 = call dereferenceable_or_null(16000) ptr @malloc(i64 noundef 16000) #6
  %21 = call dereferenceable_or_null(16000) ptr @malloc(i64 noundef 16000) #6
  %22 = call dereferenceable_or_null(8000) ptr @malloc(i64 noundef 8000) #6
  call void @matgen(ptr noundef %12, ptr noundef %20)
  call void @dgefa(ptr noundef %12, ptr noundef %22)
  call void @dgesl(ptr noundef %12, ptr noundef %22, ptr noundef %20)
  call void @free(ptr noundef %22) #5
  call void @free(ptr noundef %21) #5
  call void @free(ptr noundef %20) #5
  br label %23

23:                                               ; preds = %19, %23
  %.23 = phi i32 [ 0, %19 ], [ %27, %23 ]
  %24 = zext nneg i32 %.23 to i64
  %25 = getelementptr inbounds nuw [8 x i8], ptr %12, i64 %24
  %26 = load ptr, ptr %25, align 8
  call void @free(ptr noundef %26) #5
  %27 = add nuw nsw i32 %.23, 1
  %28 = icmp samesign ult i32 %27, 2000
  br i1 %28, label %23, label %29, !llvm.loop !25

29:                                               ; preds = %23
  call void @free(ptr noundef %12) #5
  br i1 %.not1, label %33, label %30

30:                                               ; preds = %29
  %31 = call ptr @__acrt_iob_func(i32 noundef 1) #5
  %32 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %31, ptr noundef nonnull @.str.1, double noundef 0.000000e+00) #5
  br label %36

33:                                               ; preds = %29
  %34 = call ptr @__acrt_iob_func(i32 noundef 1) #5
  %35 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %34, ptr noundef nonnull @.str.2, double noundef 0.000000e+00) #5
  br label %36

36:                                               ; preds = %33, %30
  %37 = call ptr @__acrt_iob_func(i32 noundef 1) #5
  %38 = call i32 @fflush(ptr noundef %37) #5
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
