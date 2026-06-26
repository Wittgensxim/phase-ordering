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

.preheader2:                                      ; preds = %12, %.preheader2
  %.126 = phi i32 [ %17, %.preheader2 ], [ 0, %12 ]
  %15 = zext nneg i32 %.126 to i64
  %16 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %15
  store double 0.000000e+00, ptr %16, align 8
  %17 = add nuw nsw i32 %.126, 1
  %18 = icmp samesign ult i32 %17, 2000
  br i1 %18, label %.preheader2, label %.preheader, !llvm.loop !10

.preheader:                                       ; preds = %.preheader2, %31
  %.18 = phi i32 [ %32, %31 ], [ 0, %.preheader2 ]
  br label %19

19:                                               ; preds = %.preheader, %19
  %.27 = phi i32 [ 0, %.preheader ], [ %29, %19 ]
  %20 = zext nneg i32 %.18 to i64
  %21 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %20
  %22 = load ptr, ptr %21, align 8
  %23 = zext nneg i32 %.27 to i64
  %24 = getelementptr inbounds nuw [8 x i8], ptr %22, i64 %23
  %25 = load double, ptr %24, align 8
  %26 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %23
  %27 = load double, ptr %26, align 8
  %28 = fadd double %27, %25
  store double %28, ptr %26, align 8
  %29 = add nuw nsw i32 %.27, 1
  %30 = icmp samesign ult i32 %29, 2000
  br i1 %30, label %19, label %31, !llvm.loop !11

31:                                               ; preds = %19
  %32 = add nuw nsw i32 %.18, 1
  %33 = icmp samesign ult i32 %32, 2000
  br i1 %33, label %.preheader, label %34, !llvm.loop !12

34:                                               ; preds = %31
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
  br i1 %.not, label %25, label %9

9:                                                ; preds = %8
  %10 = sext i32 %2 to i64
  %11 = getelementptr inbounds [8 x i8], ptr %1, i64 %10
  %12 = load double, ptr %11, align 8
  %13 = call double @llvm.fabs.f64(double %12)
  %14 = add nsw i32 %3, 1
  %15 = icmp slt i32 1, %0
  br i1 %15, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %9, %.lr.ph
  %.25 = phi i32 [ %.3, %.lr.ph ], [ 0, %9 ]
  %.014 = phi i32 [ %22, %.lr.ph ], [ %14, %9 ]
  %.023 = phi i32 [ %23, %.lr.ph ], [ 1, %9 ]
  %.042 = phi double [ %.15, %.lr.ph ], [ %13, %9 ]
  %16 = add nsw i32 %.014, %2
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [8 x i8], ptr %1, i64 %17
  %19 = load double, ptr %18, align 8
  %20 = call double @llvm.fabs.f64(double %19)
  %21 = fcmp ogt double %20, %.042
  %.15 = select i1 %21, double %20, double %.042
  %.3 = select i1 %21, i32 %.023, i32 %.25
  %22 = add nsw i32 %.014, %3
  %23 = add nuw nsw i32 %.023, 1
  %24 = icmp slt i32 %23, %0
  br i1 %24, label %.lr.ph, label %.loopexit, !llvm.loop !13

25:                                               ; preds = %8
  %26 = sext i32 %2 to i64
  %27 = getelementptr inbounds [8 x i8], ptr %1, i64 %26
  %28 = load double, ptr %27, align 8
  %29 = call double @llvm.fabs.f64(double %28)
  %30 = icmp slt i32 1, %0
  br i1 %30, label %.lr.ph9, label %.loopexit

.lr.ph9:                                          ; preds = %25, %.lr.ph9
  %.58 = phi i32 [ %.6, %.lr.ph9 ], [ 0, %25 ]
  %.137 = phi i32 [ %37, %.lr.ph9 ], [ 1, %25 ]
  %.266 = phi double [ %.37, %.lr.ph9 ], [ %29, %25 ]
  %31 = add nsw i32 %.137, %2
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [8 x i8], ptr %1, i64 %32
  %34 = load double, ptr %33, align 8
  %35 = call double @llvm.fabs.f64(double %34)
  %36 = fcmp ogt double %35, %.266
  %.37 = select i1 %36, double %35, double %.266
  %.6 = select i1 %36, i32 %.137, i32 %.58
  %37 = add nuw nsw i32 %.137, 1
  %38 = icmp slt i32 %37, %0
  br i1 %38, label %.lr.ph9, label %.loopexit, !llvm.loop !14

.loopexit:                                        ; preds = %9, %.lr.ph, %25, %.lr.ph9, %6, %4
  %.0 = phi i32 [ -1, %4 ], [ 0, %6 ], [ %.6, %.lr.ph9 ], [ 0, %25 ], [ 0, %9 ], [ %.3, %.lr.ph ]
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
  br i1 %.not, label %.preheader, label %9

.preheader:                                       ; preds = %7
  %8 = icmp slt i32 0, %0
  br i1 %8, label %.lr.ph4, label %.loopexit

9:                                                ; preds = %7
  %10 = mul nsw i32 %0, %4
  %11 = icmp slt i32 0, %10
  br i1 %11, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %9, %.lr.ph
  %.02 = phi i32 [ %17, %.lr.ph ], [ 0, %9 ]
  %12 = add nsw i32 %.02, %3
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [8 x i8], ptr %2, i64 %13
  %15 = load double, ptr %14, align 8
  %16 = fmul double %15, %1
  store double %16, ptr %14, align 8
  %17 = add nsw i32 %.02, %4
  %18 = icmp slt i32 %17, %10
  br i1 %18, label %.lr.ph, label %.loopexit, !llvm.loop !15

.lr.ph4:                                          ; preds = %.preheader, %.lr.ph4
  %.13 = phi i32 [ %24, %.lr.ph4 ], [ 0, %.preheader ]
  %19 = add nsw i32 %.13, %3
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [8 x i8], ptr %2, i64 %20
  %22 = load double, ptr %21, align 8
  %23 = fmul double %22, %1
  store double %23, ptr %21, align 8
  %24 = add nuw nsw i32 %.13, 1
  %25 = icmp slt i32 %24, %0
  br i1 %25, label %.lr.ph4, label %.loopexit, !llvm.loop !16

.loopexit:                                        ; preds = %9, %.lr.ph, %.preheader, %.lr.ph4, %5
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
  br i1 %or.cond1, label %15, label %.preheader

.preheader:                                       ; preds = %11
  %14 = icmp slt i32 0, %0
  br i1 %14, label %.lr.ph, label %.loopexit

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

.lr.ph6:                                          ; preds = %15, %.lr.ph6
  %.15 = phi i32 [ %32, %.lr.ph6 ], [ %.0, %15 ]
  %.124 = phi i32 [ %31, %.lr.ph6 ], [ %.01, %15 ]
  %.033 = phi i32 [ %33, %.lr.ph6 ], [ 0, %15 ]
  %22 = add nsw i32 %.124, %3
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [8 x i8], ptr %2, i64 %23
  %25 = load double, ptr %24, align 8
  %26 = add nsw i32 %.15, %6
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [8 x i8], ptr %5, i64 %27
  %29 = load double, ptr %28, align 8
  %30 = call double @llvm.fmuladd.f64(double %1, double %25, double %29)
  store double %30, ptr %28, align 8
  %31 = add nsw i32 %.124, %4
  %32 = add nsw i32 %.15, %7
  %33 = add nuw nsw i32 %.033, 1
  %34 = icmp slt i32 %33, %0
  br i1 %34, label %.lr.ph6, label %.loopexit, !llvm.loop !17

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.142 = phi i32 [ %44, %.lr.ph ], [ 0, %.preheader ]
  %35 = add nsw i32 %.142, %3
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [8 x i8], ptr %2, i64 %36
  %38 = load double, ptr %37, align 8
  %39 = add nsw i32 %.142, %6
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [8 x i8], ptr %5, i64 %40
  %42 = load double, ptr %41, align 8
  %43 = call double @llvm.fmuladd.f64(double %1, double %38, double %42)
  store double %43, ptr %41, align 8
  %44 = add nuw nsw i32 %.142, 1
  %45 = icmp slt i32 %44, %0
  br i1 %45, label %.lr.ph, label %.loopexit, !llvm.loop !18

.loopexit:                                        ; preds = %.preheader, %.lr.ph, %15, %.lr.ph6, %8
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @dgefa(ptr noundef %0, ptr noundef %1) #0 {
  br label %3

3:                                                ; preds = %2, %.loopexit
  %.014 = phi i32 [ 0, %2 ], [ %7, %.loopexit ]
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
  br i1 %15, label %16, label %.loopexit

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

.lr.ph:                                           ; preds = %20, %33
  %.02 = phi i32 [ %34, %33 ], [ %7, %20 ]
  %25 = zext nneg i32 %.02 to i64
  %26 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %25
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr inbounds [8 x i8], ptr %27, i64 %12
  %29 = load double, ptr %28, align 8
  br i1 %.not, label %33, label %30

30:                                               ; preds = %.lr.ph
  %31 = getelementptr inbounds nuw [8 x i8], ptr %27, i64 %4
  %32 = load double, ptr %31, align 8
  store double %32, ptr %28, align 8
  store double %29, ptr %31, align 8
  br label %33

33:                                               ; preds = %30, %.lr.ph
  call void @daxpy(i32 noundef %23, double noundef %29, ptr noundef %6, i32 noundef %7, i32 noundef 1, ptr noundef %27, i32 noundef %7, i32 noundef 1)
  %34 = add nuw nsw i32 %.02, 1
  %35 = icmp samesign ult i32 %34, 2000
  br i1 %35, label %.lr.ph, label %.loopexit, !llvm.loop !19

.loopexit:                                        ; preds = %20, %33, %3
  %36 = icmp samesign ult i32 %7, 1999
  br i1 %36, label %3, label %37, !llvm.loop !20

37:                                               ; preds = %.loopexit
  %38 = getelementptr inbounds nuw i8, ptr %1, i64 7996
  store i32 1999, ptr %38, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @dgesl(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  br label %4

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

.preheader:                                       ; preds = %14, %.preheader
  %.02 = phi i32 [ %20, %.preheader ], [ 0, %14 ]
  %20 = add nuw nsw i32 %.02, 1
  %21 = sub nuw nsw i32 1999, %.02
  %22 = zext nneg i32 %21 to i64
  %23 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %22
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds nuw [8 x i8], ptr %24, i64 %22
  %26 = load double, ptr %25, align 8
  %27 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %22
  %28 = load double, ptr %27, align 8
  %29 = fdiv double %28, %26
  store double %29, ptr %27, align 8
  %30 = fneg double %29
  %31 = load ptr, ptr %23, align 8
  call void @daxpy(i32 noundef %21, double noundef %30, ptr noundef %31, i32 noundef 0, i32 noundef 1, ptr noundef %2, i32 noundef 0, i32 noundef 1)
  %32 = icmp samesign ult i32 %20, 2000
  br i1 %32, label %.preheader, label %33, !llvm.loop !22

33:                                               ; preds = %.preheader
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = icmp sgt i32 %0, 1
  br i1 %3, label %.preheader, label %.loopexit

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

.loopexit:                                        ; preds = %7, %5, %2
  %.not1 = phi i1 [ true, %2 ], [ false, %7 ], [ true, %5 ]
  %11 = call dereferenceable_or_null(16000) ptr @malloc(i64 noundef 16000) #6
  br label %12

12:                                               ; preds = %.loopexit, %12
  %.122 = phi i32 [ 0, %.loopexit ], [ %16, %12 ]
  %13 = call dereferenceable_or_null(16008) ptr @malloc(i64 noundef 16008) #6
  %14 = zext nneg i32 %.122 to i64
  %15 = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %14
  store ptr %13, ptr %15, align 8
  %16 = add nuw nsw i32 %.122, 1
  %17 = icmp samesign ult i32 %16, 2000
  br i1 %17, label %12, label %18, !llvm.loop !24

18:                                               ; preds = %12
  %19 = call dereferenceable_or_null(16000) ptr @malloc(i64 noundef 16000) #6
  %20 = call dereferenceable_or_null(16000) ptr @malloc(i64 noundef 16000) #6
  %21 = call dereferenceable_or_null(8000) ptr @malloc(i64 noundef 8000) #6
  call void @matgen(ptr noundef %11, ptr noundef %19)
  call void @dgefa(ptr noundef %11, ptr noundef %21)
  call void @dgesl(ptr noundef %11, ptr noundef %21, ptr noundef %19)
  call void @free(ptr noundef %21) #5
  call void @free(ptr noundef %20) #5
  call void @free(ptr noundef %19) #5
  br label %22

22:                                               ; preds = %18, %22
  %.23 = phi i32 [ 0, %18 ], [ %26, %22 ]
  %23 = zext nneg i32 %.23 to i64
  %24 = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %23
  %25 = load ptr, ptr %24, align 8
  call void @free(ptr noundef %25) #5
  %26 = add nuw nsw i32 %.23, 1
  %27 = icmp samesign ult i32 %26, 2000
  br i1 %27, label %22, label %28, !llvm.loop !25

28:                                               ; preds = %22
  call void @free(ptr noundef %11) #5
  br i1 %.not1, label %32, label %29

29:                                               ; preds = %28
  %30 = call ptr @__acrt_iob_func(i32 noundef 1) #5
  %31 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %30, ptr noundef nonnull @.str.1, double noundef 0.000000e+00) #5
  br label %35

32:                                               ; preds = %28
  %33 = call ptr @__acrt_iob_func(i32 noundef 1) #5
  %34 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %33, ptr noundef nonnull @.str.2, double noundef 0.000000e+00) #5
  br label %35

35:                                               ; preds = %32, %29
  %36 = call ptr @__acrt_iob_func(i32 noundef 1) #5
  %37 = call i32 @fflush(ptr noundef %36) #5
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
