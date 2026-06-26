; ModuleID = 'results\paper_full\CoyoteBench_lpbench\round_003\input.ll'
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

3:                                                ; preds = %14, %2
  %.01 = phi i32 [ 0, %2 ], [ %15, %14 ]
  %4 = icmp samesign ult i32 %.01, 2000
  br i1 %4, label %.preheader3, label %.preheader2

.preheader3:                                      ; preds = %3, %6
  %.0 = phi i32 [ %13, %6 ], [ 0, %3 ]
  %5 = icmp samesign ult i32 %.0, 2000
  br i1 %5, label %6, label %14

6:                                                ; preds = %.preheader3
  %7 = call double @random_double()
  %8 = zext nneg i32 %.0 to i64
  %9 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %8
  %10 = load ptr, ptr %9, align 8
  %11 = zext nneg i32 %.01 to i64
  %12 = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %11
  store double %7, ptr %12, align 8
  %13 = add nuw nsw i32 %.0, 1
  br label %.preheader3, !llvm.loop !7

14:                                               ; preds = %.preheader3
  %15 = add nuw nsw i32 %.01, 1
  br label %3, !llvm.loop !9

.preheader2:                                      ; preds = %3, %23
  %.12 = phi i32 [ %26, %23 ], [ 0, %3 ]
  %16 = zext nneg i32 %.12 to i64
  %17 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %16
  store double 0.000000e+00, ptr %17, align 8
  %18 = add nuw nsw i32 %.12, 1
  %19 = zext nneg i32 %18 to i64
  %20 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %19
  store double 0.000000e+00, ptr %20, align 8
  %21 = add nuw nsw i32 %.12, 2
  %22 = icmp samesign ult i32 %21, 2000
  br i1 %22, label %23, label %.preheader1

23:                                               ; preds = %.preheader2
  %24 = zext nneg i32 %21 to i64
  %25 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %24
  store double 0.000000e+00, ptr %25, align 8
  %26 = add nuw nsw i32 %.12, 3
  br label %.preheader2, !llvm.loop !10

.preheader1:                                      ; preds = %.preheader2, %61
  %.1 = phi i32 [ %62, %61 ], [ 0, %.preheader2 ]
  %27 = icmp samesign ult i32 %.1, 2000
  br i1 %27, label %.preheader, label %63

.preheader:                                       ; preds = %.preheader1
  %28 = zext nneg i32 %.1 to i64
  %29 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %28
  br label %30

30:                                               ; preds = %50, %.preheader
  %.2 = phi i32 [ 0, %.preheader ], [ %60, %50 ]
  %31 = zext nneg i32 %.1 to i64
  %32 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %31
  %33 = load ptr, ptr %32, align 8
  %34 = zext nneg i32 %.2 to i64
  %35 = getelementptr inbounds nuw [8 x i8], ptr %33, i64 %34
  %36 = load double, ptr %35, align 8
  %37 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %34
  %38 = load double, ptr %37, align 8
  %39 = fadd double %38, %36
  store double %39, ptr %37, align 8
  %40 = add nuw nsw i32 %.2, 1
  %41 = load ptr, ptr %29, align 8
  %42 = zext nneg i32 %40 to i64
  %43 = getelementptr inbounds nuw [8 x i8], ptr %41, i64 %42
  %44 = load double, ptr %43, align 8
  %45 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %42
  %46 = load double, ptr %45, align 8
  %47 = fadd double %46, %44
  store double %47, ptr %45, align 8
  %48 = add nuw nsw i32 %.2, 2
  %49 = icmp samesign ult i32 %48, 2000
  br i1 %49, label %50, label %61

50:                                               ; preds = %30
  %51 = zext nneg i32 %.1 to i64
  %52 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %51
  %53 = load ptr, ptr %52, align 8
  %54 = zext nneg i32 %48 to i64
  %55 = getelementptr inbounds nuw [8 x i8], ptr %53, i64 %54
  %56 = load double, ptr %55, align 8
  %57 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %54
  %58 = load double, ptr %57, align 8
  %59 = fadd double %58, %56
  store double %59, ptr %57, align 8
  %60 = add nuw nsw i32 %.2, 3
  br label %30, !llvm.loop !11

61:                                               ; preds = %30
  %62 = add nuw nsw i32 %.1, 1
  br label %.preheader1, !llvm.loop !12

63:                                               ; preds = %.preheader1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @idamax(i32 noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = icmp slt i32 %0, 1
  br i1 %5, label %.loopexit, label %6

6:                                                ; preds = %4
  %7 = icmp eq i32 %0, 1
  br i1 %7, label %.loopexit, label %8

8:                                                ; preds = %6
  %.not = icmp eq i32 %3, 1
  br i1 %.not, label %26, label %9

9:                                                ; preds = %8
  %10 = sext i32 %2 to i64
  %11 = getelementptr inbounds [8 x i8], ptr %1, i64 %10
  %12 = load double, ptr %11, align 8
  %13 = call double @llvm.fabs.f64(double %12)
  %14 = add nsw i32 %3, 1
  br label %15

15:                                               ; preds = %17, %9
  %.04 = phi double [ %13, %9 ], [ %.15, %17 ]
  %.02 = phi i32 [ 1, %9 ], [ %25, %17 ]
  %.01 = phi i32 [ %14, %9 ], [ %24, %17 ]
  %.2 = phi i32 [ 0, %9 ], [ %.3, %17 ]
  %16 = icmp slt i32 %.02, %0
  br i1 %16, label %17, label %.loopexit

17:                                               ; preds = %15
  %18 = add nsw i32 %.01, %2
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [8 x i8], ptr %1, i64 %19
  %21 = load double, ptr %20, align 8
  %22 = call double @llvm.fabs.f64(double %21)
  %23 = fcmp ogt double %22, %.04
  %.15 = select i1 %23, double %22, double %.04
  %.3 = select i1 %23, i32 %.02, i32 %.2
  %24 = add nsw i32 %.01, %3
  %25 = add nuw nsw i32 %.02, 1
  br label %15, !llvm.loop !13

26:                                               ; preds = %8
  %27 = sext i32 %2 to i64
  %28 = getelementptr inbounds [8 x i8], ptr %1, i64 %27
  %29 = load double, ptr %28, align 8
  %30 = call double @llvm.fabs.f64(double %29)
  br label %31

31:                                               ; preds = %33, %26
  %.26 = phi double [ %30, %26 ], [ %.37, %33 ]
  %.13 = phi i32 [ 1, %26 ], [ %40, %33 ]
  %.5 = phi i32 [ 0, %26 ], [ %.6, %33 ]
  %32 = icmp slt i32 %.13, %0
  br i1 %32, label %33, label %.loopexit

33:                                               ; preds = %31
  %34 = add nsw i32 %.13, %2
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [8 x i8], ptr %1, i64 %35
  %37 = load double, ptr %36, align 8
  %38 = call double @llvm.fabs.f64(double %37)
  %39 = fcmp ogt double %38, %.26
  %.37 = select i1 %39, double %38, double %.26
  %.6 = select i1 %39, i32 %.13, i32 %.5
  %40 = add nuw nsw i32 %.13, 1
  br label %31, !llvm.loop !14

.loopexit:                                        ; preds = %15, %31, %6, %4
  %.0 = phi i32 [ -1, %4 ], [ 0, %6 ], [ %.5, %31 ], [ %.2, %15 ]
  ret i32 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @dscal(i32 noundef %0, double noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = icmp sgt i32 %0, 0
  br i1 %6, label %7, label %.loopexit

7:                                                ; preds = %5
  %.not = icmp eq i32 %4, 1
  br i1 %.not, label %.preheader, label %8

8:                                                ; preds = %7
  %9 = mul nsw i32 %0, %4
  br label %10

10:                                               ; preds = %12, %8
  %.0 = phi i32 [ 0, %8 ], [ %18, %12 ]
  %11 = icmp slt i32 %.0, %9
  br i1 %11, label %12, label %.loopexit

12:                                               ; preds = %10
  %13 = add nsw i32 %.0, %3
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [8 x i8], ptr %2, i64 %14
  %16 = load double, ptr %15, align 8
  %17 = fmul double %16, %1
  store double %17, ptr %15, align 8
  %18 = add nsw i32 %.0, %4
  br label %10, !llvm.loop !15

.preheader:                                       ; preds = %7, %20
  %.1 = phi i32 [ %26, %20 ], [ 0, %7 ]
  %19 = icmp slt i32 %.1, %0
  br i1 %19, label %20, label %.loopexit

20:                                               ; preds = %.preheader
  %21 = add nsw i32 %.1, %3
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [8 x i8], ptr %2, i64 %22
  %24 = load double, ptr %23, align 8
  %25 = fmul double %24, %1
  store double %25, ptr %23, align 8
  %26 = add nuw nsw i32 %.1, 1
  br label %.preheader, !llvm.loop !16

.loopexit:                                        ; preds = %10, %.preheader, %5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @daxpy(i32 noundef %0, double noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7) #0 {
  %9 = icmp sgt i32 %0, 0
  %10 = fcmp une double %1, 0.000000e+00
  %or.cond = and i1 %9, %10
  br i1 %or.cond, label %11, label %.loopexit

11:                                               ; preds = %8
  %12 = icmp ne i32 %4, 1
  %13 = icmp ne i32 %7, 1
  %or.cond1 = or i1 %12, %13
  br i1 %or.cond1, label %14, label %.preheader

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
  %25 = getelementptr inbounds [8 x i8], ptr %2, i64 %24
  %26 = load double, ptr %25, align 8
  %27 = add nsw i32 %.1, %6
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [8 x i8], ptr %5, i64 %28
  %30 = load double, ptr %29, align 8
  %31 = call double @llvm.fmuladd.f64(double %1, double %26, double %30)
  store double %31, ptr %29, align 8
  %32 = add nsw i32 %.12, %4
  %33 = add nsw i32 %.1, %7
  %34 = add nuw nsw i32 %.03, 1
  br label %20, !llvm.loop !17

.preheader:                                       ; preds = %11, %36
  %.14 = phi i32 [ %46, %36 ], [ 0, %11 ]
  %35 = icmp slt i32 %.14, %0
  br i1 %35, label %36, label %.loopexit

36:                                               ; preds = %.preheader
  %37 = add nsw i32 %.14, %3
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [8 x i8], ptr %2, i64 %38
  %40 = load double, ptr %39, align 8
  %41 = add nsw i32 %.14, %6
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [8 x i8], ptr %5, i64 %42
  %44 = load double, ptr %43, align 8
  %45 = call double @llvm.fmuladd.f64(double %1, double %40, double %44)
  store double %45, ptr %43, align 8
  %46 = add nuw nsw i32 %.14, 1
  br label %.preheader, !llvm.loop !18

.loopexit:                                        ; preds = %.preheader, %20, %8
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @dgefa(ptr noundef %0, ptr noundef %1) #0 {
  br label %3

3:                                                ; preds = %.loopexit, %2
  %.01 = phi i32 [ 0, %2 ], [ %9, %.loopexit ]
  %4 = icmp samesign ult i32 %.01, 1999
  br i1 %4, label %5, label %39

5:                                                ; preds = %3
  %6 = zext nneg i32 %.01 to i64
  %7 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %6
  %8 = load ptr, ptr %7, align 8
  %9 = add nuw nsw i32 %.01, 1
  %10 = sub nuw nsw i32 2000, %.01
  %11 = call i32 @idamax(i32 noundef %10, ptr noundef %8, i32 noundef %.01, i32 noundef 1)
  %12 = add nsw i32 %11, %.01
  %13 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %6
  store i32 %12, ptr %13, align 4
  %14 = sext i32 %12 to i64
  %15 = getelementptr inbounds [8 x i8], ptr %8, i64 %14
  %16 = load double, ptr %15, align 8
  %17 = fcmp une double %16, 0.000000e+00
  br i1 %17, label %18, label %.loopexit

18:                                               ; preds = %5
  %.not = icmp eq i32 %11, 0
  br i1 %.not, label %._crit_edge, label %19

._crit_edge:                                      ; preds = %18
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %6
  %.pre = load double, ptr %.phi.trans.insert, align 8
  br label %22

19:                                               ; preds = %18
  %20 = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %6
  %21 = load double, ptr %20, align 8
  store double %21, ptr %15, align 8
  store double %16, ptr %20, align 8
  br label %22

22:                                               ; preds = %19, %._crit_edge
  %23 = phi double [ %.pre, %._crit_edge ], [ %16, %19 ]
  %24 = fdiv double -1.000000e+00, %23
  %25 = sub nsw i32 1999, %.01
  call void @dscal(i32 noundef %25, double noundef %24, ptr noundef %8, i32 noundef %9, i32 noundef 1)
  br label %26

26:                                               ; preds = %37, %22
  %.0 = phi i32 [ %9, %22 ], [ %38, %37 ]
  %27 = icmp samesign ult i32 %.0, 2000
  br i1 %27, label %28, label %.loopexit

28:                                               ; preds = %26
  %29 = zext nneg i32 %.0 to i64
  %30 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %29
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds [8 x i8], ptr %31, i64 %14
  %33 = load double, ptr %32, align 8
  br i1 %.not, label %37, label %34

34:                                               ; preds = %28
  %35 = getelementptr inbounds nuw [8 x i8], ptr %31, i64 %6
  %36 = load double, ptr %35, align 8
  store double %36, ptr %32, align 8
  store double %33, ptr %35, align 8
  br label %37

37:                                               ; preds = %34, %28
  call void @daxpy(i32 noundef %25, double noundef %33, ptr noundef %8, i32 noundef %9, i32 noundef 1, ptr noundef %31, i32 noundef %9, i32 noundef 1)
  %38 = add nuw nsw i32 %.0, 1
  br label %26, !llvm.loop !19

.loopexit:                                        ; preds = %26, %5
  br label %3, !llvm.loop !20

39:                                               ; preds = %3
  %40 = getelementptr inbounds nuw i8, ptr %1, i64 7996
  store i32 1999, ptr %40, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @dgesl(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  br label %4

4:                                                ; preds = %16, %3
  %.01 = phi i32 [ 0, %3 ], [ %17, %16 ]
  %5 = icmp samesign ult i32 %.01, 1999
  br i1 %5, label %6, label %.preheader

6:                                                ; preds = %4
  %7 = zext nneg i32 %.01 to i64
  %8 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %7
  %9 = load i32, ptr %8, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [8 x i8], ptr %2, i64 %10
  %12 = load double, ptr %11, align 8
  %.not = icmp eq i32 %9, %.01
  br i1 %.not, label %16, label %13

13:                                               ; preds = %6
  %14 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %7
  %15 = load double, ptr %14, align 8
  store double %15, ptr %11, align 8
  store double %12, ptr %14, align 8
  br label %16

16:                                               ; preds = %13, %6
  %17 = add nuw nsw i32 %.01, 1
  %18 = sub nsw i32 1999, %.01
  %19 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %7
  %20 = load ptr, ptr %19, align 8
  call void @daxpy(i32 noundef %18, double noundef %12, ptr noundef %20, i32 noundef %17, i32 noundef 1, ptr noundef %2, i32 noundef %17, i32 noundef 1)
  br label %4, !llvm.loop !21

.preheader:                                       ; preds = %4, %22
  %.0 = phi i32 [ %23, %22 ], [ 0, %4 ]
  %21 = icmp samesign ult i32 %.0, 2000
  br i1 %21, label %22, label %35

22:                                               ; preds = %.preheader
  %23 = add nuw nsw i32 %.0, 1
  %24 = sub nuw nsw i32 1999, %.0
  %25 = zext nneg i32 %24 to i64
  %26 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %25
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr inbounds nuw [8 x i8], ptr %27, i64 %25
  %29 = load double, ptr %28, align 8
  %30 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %25
  %31 = load double, ptr %30, align 8
  %32 = fdiv double %31, %29
  store double %32, ptr %30, align 8
  %33 = fneg double %32
  %34 = load ptr, ptr %26, align 8
  call void @daxpy(i32 noundef %24, double noundef %33, ptr noundef %34, i32 noundef 0, i32 noundef 1, ptr noundef %2, i32 noundef 0, i32 noundef 1)
  br label %.preheader, !llvm.loop !22

35:                                               ; preds = %.preheader
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = icmp sgt i32 %0, 1
  br i1 %3, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %2
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %5

5:                                                ; preds = %.preheader, %10
  %.01 = phi i32 [ %11, %10 ], [ 1, %.preheader ]
  %6 = icmp slt i32 %.01, %0
  br i1 %6, label %7, label %.loopexit

7:                                                ; preds = %5
  %8 = load ptr, ptr %4, align 8
  %9 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(4) @.str) #5
  %.not = icmp eq i32 %9, 0
  br i1 %.not, label %.loopexit, label %10

10:                                               ; preds = %7
  %11 = add nuw nsw i32 %.01, 1
  br label %5, !llvm.loop !23

.loopexit:                                        ; preds = %7, %5, %2
  %.not1 = phi i1 [ true, %2 ], [ false, %7 ], [ true, %5 ]
  %12 = call dereferenceable_or_null(16000) ptr @malloc(i64 noundef 16000) #6
  br label %13

13:                                               ; preds = %15, %.loopexit
  %.12 = phi i32 [ 0, %.loopexit ], [ %19, %15 ]
  %14 = icmp samesign ult i32 %.12, 2000
  br i1 %14, label %15, label %20

15:                                               ; preds = %13
  %16 = call dereferenceable_or_null(16008) ptr @malloc(i64 noundef 16008) #6
  %17 = zext nneg i32 %.12 to i64
  %18 = getelementptr inbounds nuw [8 x i8], ptr %12, i64 %17
  store ptr %16, ptr %18, align 8
  %19 = add nuw nsw i32 %.12, 1
  br label %13, !llvm.loop !24

20:                                               ; preds = %13
  %21 = call dereferenceable_or_null(16000) ptr @malloc(i64 noundef 16000) #6
  %22 = call dereferenceable_or_null(16000) ptr @malloc(i64 noundef 16000) #6
  %23 = call dereferenceable_or_null(8000) ptr @malloc(i64 noundef 8000) #6
  call void @matgen(ptr noundef %12, ptr noundef %21)
  call void @dgefa(ptr noundef %12, ptr noundef %23)
  call void @dgesl(ptr noundef %12, ptr noundef %23, ptr noundef %21)
  call void @free(ptr noundef %23) #5
  call void @free(ptr noundef %22) #5
  call void @free(ptr noundef %21) #5
  br label %24

24:                                               ; preds = %26, %20
  %.2 = phi i32 [ 0, %20 ], [ %30, %26 ]
  %25 = icmp samesign ult i32 %.2, 2000
  br i1 %25, label %26, label %31

26:                                               ; preds = %24
  %27 = zext nneg i32 %.2 to i64
  %28 = getelementptr inbounds nuw [8 x i8], ptr %12, i64 %27
  %29 = load ptr, ptr %28, align 8
  call void @free(ptr noundef %29) #5
  %30 = add nuw nsw i32 %.2, 1
  br label %24, !llvm.loop !25

31:                                               ; preds = %24
  call void @free(ptr noundef %12) #5
  br i1 %.not1, label %35, label %32

32:                                               ; preds = %31
  %33 = call ptr @__acrt_iob_func(i32 noundef 1) #5
  %34 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %33, ptr noundef nonnull @.str.1, double noundef 0.000000e+00) #5
  br label %38

35:                                               ; preds = %31
  %36 = call ptr @__acrt_iob_func(i32 noundef 1) #5
  %37 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %36, ptr noundef nonnull @.str.2, double noundef 0.000000e+00) #5
  br label %38

38:                                               ; preds = %35, %32
  %39 = call ptr @__acrt_iob_func(i32 noundef 1) #5
  %40 = call i32 @fflush(ptr noundef %39) #5
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
  %8 = add nsw i32 %6, 2147483647
  %spec.select = select i1 %7, i32 %8, i32 %6
  %9 = sitofp i32 %spec.select to double
  %10 = fmul nnan double %9, f0x3E00000000200FE1
  %11 = xor i32 %spec.select, 123459876
  store i32 %11, ptr @seed, align 4
  ret double %10
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
