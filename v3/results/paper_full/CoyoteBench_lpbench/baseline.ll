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
  br label %.preheader5

.preheader5:                                      ; preds = %2, %12
  %.017 = phi i32 [ 0, %2 ], [ %13, %12 ]
  br label %3

.preheader4:                                      ; preds = %12
  br label %15

3:                                                ; preds = %.preheader5, %3
  %.06 = phi i32 [ 0, %.preheader5 ], [ %10, %3 ]
  %4 = call double @random_double()
  %5 = zext nneg i32 %.06 to i64
  %6 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %5
  %7 = load ptr, ptr %6, align 8
  %8 = zext nneg i32 %.017 to i64
  %9 = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %8
  store double %4, ptr %9, align 8
  %10 = add nuw nsw i32 %.06, 1
  %11 = icmp samesign ult i32 %10, 2000
  br i1 %11, label %3, label %12, !llvm.loop !7

12:                                               ; preds = %3
  %13 = add nuw nsw i32 %.017, 1
  %14 = icmp samesign ult i32 %13, 2000
  br i1 %14, label %.preheader5, label %.preheader4, !llvm.loop !9

.preheader3:                                      ; preds = %15
  br label %.preheader

15:                                               ; preds = %.preheader4, %15
  %.128 = phi i32 [ 0, %.preheader4 ], [ %18, %15 ]
  %16 = zext nneg i32 %.128 to i64
  %17 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %16
  store double 0.000000e+00, ptr %17, align 8
  %18 = add nuw nsw i32 %.128, 1
  %19 = icmp samesign ult i32 %18, 2000
  br i1 %19, label %15, label %.preheader3, !llvm.loop !10

.preheader:                                       ; preds = %.preheader3, %32
  %.110 = phi i32 [ 0, %.preheader3 ], [ %33, %32 ]
  br label %20

20:                                               ; preds = %.preheader, %20
  %.29 = phi i32 [ 0, %.preheader ], [ %30, %20 ]
  %21 = zext nneg i32 %.110 to i64
  %22 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %21
  %23 = load ptr, ptr %22, align 8
  %24 = zext nneg i32 %.29 to i64
  %25 = getelementptr inbounds nuw [8 x i8], ptr %23, i64 %24
  %26 = load double, ptr %25, align 8
  %27 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %24
  %28 = load double, ptr %27, align 8
  %29 = fadd double %28, %26
  store double %29, ptr %27, align 8
  %30 = add nuw nsw i32 %.29, 1
  %31 = icmp samesign ult i32 %30, 2000
  br i1 %31, label %20, label %32, !llvm.loop !11

32:                                               ; preds = %20
  %33 = add nuw nsw i32 %.110, 1
  %34 = icmp samesign ult i32 %33, 2000
  br i1 %34, label %.preheader, label %35, !llvm.loop !12

35:                                               ; preds = %32
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local range(i32 -2147483648, 2147483647) i32 @idamax(i32 noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
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
  br i1 %15, label %.lr.ph, label %.loopexit10

.lr.ph:                                           ; preds = %9
  br label %16

16:                                               ; preds = %.lr.ph, %16
  %.214 = phi i32 [ 0, %.lr.ph ], [ %.3, %16 ]
  %.0113 = phi i32 [ %14, %.lr.ph ], [ %23, %16 ]
  %.0212 = phi i32 [ 1, %.lr.ph ], [ %24, %16 ]
  %.0411 = phi double [ %13, %.lr.ph ], [ %.15, %16 ]
  %17 = add nsw i32 %.0113, %2
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [8 x i8], ptr %1, i64 %18
  %20 = load double, ptr %19, align 8
  %21 = call double @llvm.fabs.f64(double %20)
  %22 = fcmp ogt double %21, %.0411
  %.15 = select i1 %22, double %21, double %.0411
  %.3 = select i1 %22, i32 %.0212, i32 %.214
  %23 = add nsw i32 %.0113, %3
  %24 = add nuw nsw i32 %.0212, 1
  %25 = icmp slt i32 %24, %0
  br i1 %25, label %16, label %..loopexit10_crit_edge, !llvm.loop !13

26:                                               ; preds = %8
  %27 = sext i32 %2 to i64
  %28 = getelementptr inbounds [8 x i8], ptr %1, i64 %27
  %29 = load double, ptr %28, align 8
  %30 = call double @llvm.fabs.f64(double %29)
  %31 = icmp slt i32 1, %0
  br i1 %31, label %.lr.ph18, label %.loopexit

.lr.ph18:                                         ; preds = %26
  br label %32

32:                                               ; preds = %.lr.ph18, %32
  %.517 = phi i32 [ 0, %.lr.ph18 ], [ %.6, %32 ]
  %.1316 = phi i32 [ 1, %.lr.ph18 ], [ %39, %32 ]
  %.2615 = phi double [ %30, %.lr.ph18 ], [ %.37, %32 ]
  %33 = add nsw i32 %.1316, %2
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [8 x i8], ptr %1, i64 %34
  %36 = load double, ptr %35, align 8
  %37 = call double @llvm.fabs.f64(double %36)
  %38 = fcmp ogt double %37, %.2615
  %.37 = select i1 %38, double %37, double %.2615
  %.6 = select i1 %38, i32 %.1316, i32 %.517
  %39 = add nuw nsw i32 %.1316, 1
  %40 = icmp slt i32 %39, %0
  br i1 %40, label %32, label %..loopexit_crit_edge, !llvm.loop !14

..loopexit_crit_edge:                             ; preds = %32
  %split19 = phi i32 [ %.6, %32 ]
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %26
  %.5.lcssa = phi i32 [ %split19, %..loopexit_crit_edge ], [ 0, %26 ]
  br label %41

..loopexit10_crit_edge:                           ; preds = %16
  %split = phi i32 [ %.3, %16 ]
  br label %.loopexit10

.loopexit10:                                      ; preds = %..loopexit10_crit_edge, %9
  %.2.lcssa = phi i32 [ %split, %..loopexit10_crit_edge ], [ 0, %9 ]
  br label %41

41:                                               ; preds = %.loopexit10, %.loopexit, %6, %4
  %.0 = phi i32 [ -1, %4 ], [ 0, %6 ], [ %.5.lcssa, %.loopexit ], [ %.2.lcssa, %.loopexit10 ]
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
  br i1 %8, label %.lr.ph6, label %.loopexit

.lr.ph6:                                          ; preds = %.preheader
  br label %20

9:                                                ; preds = %7
  %10 = mul nsw i32 %0, %4
  %11 = icmp slt i32 0, %10
  br i1 %11, label %.lr.ph, label %.loopexit3

.lr.ph:                                           ; preds = %9
  br label %12

12:                                               ; preds = %.lr.ph, %12
  %.04 = phi i32 [ 0, %.lr.ph ], [ %18, %12 ]
  %13 = add nsw i32 %.04, %3
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [8 x i8], ptr %2, i64 %14
  %16 = load double, ptr %15, align 8
  %17 = fmul double %16, %1
  store double %17, ptr %15, align 8
  %18 = add nsw i32 %.04, %4
  %19 = icmp slt i32 %18, %10
  br i1 %19, label %12, label %..loopexit3_crit_edge, !llvm.loop !15

20:                                               ; preds = %.lr.ph6, %20
  %.15 = phi i32 [ 0, %.lr.ph6 ], [ %26, %20 ]
  %21 = add nsw i32 %.15, %3
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [8 x i8], ptr %2, i64 %22
  %24 = load double, ptr %23, align 8
  %25 = fmul double %24, %1
  store double %25, ptr %23, align 8
  %26 = add nuw nsw i32 %.15, 1
  %27 = icmp slt i32 %26, %0
  br i1 %27, label %20, label %..loopexit_crit_edge, !llvm.loop !16

..loopexit_crit_edge:                             ; preds = %20
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %.preheader
  br label %28

..loopexit3_crit_edge:                            ; preds = %12
  br label %.loopexit3

.loopexit3:                                       ; preds = %..loopexit3_crit_edge, %9
  br label %28

28:                                               ; preds = %.loopexit3, %.loopexit, %5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @daxpy(i32 noundef %0, double noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7) #0 {
  %9 = icmp sgt i32 %0, 0
  %10 = fcmp une double %1, 0.000000e+00
  %or.cond = and i1 %9, %10
  br i1 %or.cond, label %11, label %46

11:                                               ; preds = %8
  %.not = icmp eq i32 %4, 1
  %.not5 = icmp eq i32 %7, 1
  %or.cond6 = and i1 %.not, %.not5
  br i1 %or.cond6, label %.preheader, label %13

.preheader:                                       ; preds = %11
  %12 = icmp slt i32 0, %0
  br i1 %12, label %.lr.ph14, label %.loopexit

.lr.ph14:                                         ; preds = %.preheader
  br label %34

13:                                               ; preds = %11
  %14 = icmp slt i32 %4, 0
  %15 = sub nsw i32 1, %0
  %16 = mul nsw i32 %15, %4
  %.01 = select i1 %14, i32 %16, i32 0
  %17 = icmp slt i32 %7, 0
  %18 = mul nsw i32 %15, %7
  %.0 = select i1 %17, i32 %18, i32 0
  %19 = icmp slt i32 0, %0
  br i1 %19, label %.lr.ph, label %.loopexit9

.lr.ph:                                           ; preds = %13
  br label %20

20:                                               ; preds = %.lr.ph, %20
  %.112 = phi i32 [ %.0, %.lr.ph ], [ %30, %20 ]
  %.1211 = phi i32 [ %.01, %.lr.ph ], [ %31, %20 ]
  %.0310 = phi i32 [ 0, %.lr.ph ], [ %32, %20 ]
  %21 = add nsw i32 %.1211, %3
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [8 x i8], ptr %2, i64 %22
  %24 = load double, ptr %23, align 8
  %25 = add nsw i32 %.112, %6
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [8 x i8], ptr %5, i64 %26
  %28 = load double, ptr %27, align 8
  %29 = call double @llvm.fmuladd.f64(double %1, double %24, double %28)
  store double %29, ptr %27, align 8
  %30 = add nsw i32 %.112, %7
  %31 = add nsw i32 %.1211, %4
  %32 = add nuw nsw i32 %.0310, 1
  %33 = icmp slt i32 %32, %0
  br i1 %33, label %20, label %..loopexit9_crit_edge, !llvm.loop !17

34:                                               ; preds = %.lr.ph14, %34
  %.1413 = phi i32 [ 0, %.lr.ph14 ], [ %44, %34 ]
  %35 = add nsw i32 %.1413, %3
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [8 x i8], ptr %2, i64 %36
  %38 = load double, ptr %37, align 8
  %39 = add nsw i32 %.1413, %6
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [8 x i8], ptr %5, i64 %40
  %42 = load double, ptr %41, align 8
  %43 = call double @llvm.fmuladd.f64(double %1, double %38, double %42)
  store double %43, ptr %41, align 8
  %44 = add nuw nsw i32 %.1413, 1
  %45 = icmp slt i32 %44, %0
  br i1 %45, label %34, label %..loopexit_crit_edge, !llvm.loop !18

..loopexit_crit_edge:                             ; preds = %34
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %.preheader
  br label %46

..loopexit9_crit_edge:                            ; preds = %20
  br label %.loopexit9

.loopexit9:                                       ; preds = %..loopexit9_crit_edge, %13
  br label %46

46:                                               ; preds = %.loopexit9, %.loopexit, %8
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @dgefa(ptr noundef %0, ptr noundef %1) #0 {
  br label %3

3:                                                ; preds = %2, %37
  %.016 = phi i32 [ 0, %2 ], [ %7, %37 ]
  %4 = zext nneg i32 %.016 to i64
  %5 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %4
  %6 = load ptr, ptr %5, align 8
  %7 = add nuw nsw i32 %.016, 1
  %8 = sub nuw nsw i32 2000, %.016
  %9 = call i32 @idamax(i32 noundef %8, ptr noundef %6, i32 noundef %.016, i32 noundef 1)
  %10 = add nsw i32 %9, %.016
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

20:                                               ; preds = %._crit_edge, %17
  %21 = phi double [ %.pre, %._crit_edge ], [ %14, %17 ]
  %22 = fdiv double -1.000000e+00, %21
  %23 = sub nuw nsw i32 1999, %.016
  call void @dscal(i32 noundef %23, double noundef %22, ptr noundef %6, i32 noundef %7, i32 noundef 1)
  %24 = icmp samesign ult i32 %7, 2000
  br i1 %24, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %20
  br label %25

25:                                               ; preds = %.lr.ph, %34
  %.04 = phi i32 [ %7, %.lr.ph ], [ %35, %34 ]
  %26 = zext nneg i32 %.04 to i64
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
  %35 = add nuw nsw i32 %.04, 1
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
  %.012 = phi i32 [ 0, %3 ], [ %15, %14 ]
  %5 = zext nneg i32 %.012 to i64
  %6 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %5
  %7 = load i32, ptr %6, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [8 x i8], ptr %2, i64 %8
  %10 = load double, ptr %9, align 8
  %.not = icmp eq i32 %7, %.012
  br i1 %.not, label %14, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %5
  %13 = load double, ptr %12, align 8
  store double %13, ptr %9, align 8
  store double %10, ptr %12, align 8
  br label %14

14:                                               ; preds = %11, %4
  %15 = add nuw nsw i32 %.012, 1
  %16 = sub nuw nsw i32 1999, %.012
  %17 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %5
  %18 = load ptr, ptr %17, align 8
  call void @daxpy(i32 noundef %16, double noundef %10, ptr noundef %18, i32 noundef %15, i32 noundef 1, ptr noundef %2, i32 noundef %15, i32 noundef 1)
  %19 = icmp samesign ult i32 %15, 1999
  br i1 %19, label %4, label %.preheader, !llvm.loop !21

20:                                               ; preds = %.preheader, %20
  %.03 = phi i32 [ 0, %.preheader ], [ %32, %20 ]
  %21 = sub nuw nsw i32 1999, %.03
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
  %32 = add nuw nsw i32 %.03, 1
  %33 = icmp samesign ult i32 %32, 2000
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
  %6 = icmp sge i32 %.01, %0
  br i1 %6, label %.loopexit, label %7, !llvm.loop !23

7:                                                ; preds = %.preheader, %5
  %.014 = phi i32 [ 1, %.preheader ], [ %.01, %5 ]
  %8 = load ptr, ptr %4, align 8
  %9 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(4) @.str) #5
  %.not = icmp eq i32 %9, 0
  %10 = add nuw nsw i32 %.014, 1
  br i1 %.not, label %.loopexit, label %5

.loopexit:                                        ; preds = %7, %5
  %.0.ph = phi i1 [ true, %5 ], [ false, %7 ]
  br label %11

11:                                               ; preds = %.loopexit, %2
  %.0 = phi i1 [ true, %2 ], [ %.0.ph, %.loopexit ]
  %12 = call dereferenceable_or_null(16000) ptr @malloc(i64 noundef 16000) #6
  br label %13

13:                                               ; preds = %11, %13
  %.125 = phi i32 [ 0, %11 ], [ %17, %13 ]
  %14 = call dereferenceable_or_null(16008) ptr @malloc(i64 noundef 16008) #6
  %15 = zext nneg i32 %.125 to i64
  %16 = getelementptr inbounds nuw [8 x i8], ptr %12, i64 %15
  store ptr %14, ptr %16, align 8
  %17 = add nuw nsw i32 %.125, 1
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
  %.26 = phi i32 [ 0, %19 ], [ %27, %23 ]
  %24 = zext nneg i32 %.26 to i64
  %25 = getelementptr inbounds nuw [8 x i8], ptr %12, i64 %24
  %26 = load ptr, ptr %25, align 8
  call void @free(ptr noundef %26) #5
  %27 = add nuw nsw i32 %.26, 1
  %28 = icmp samesign ult i32 %27, 2000
  br i1 %28, label %23, label %29, !llvm.loop !25

29:                                               ; preds = %23
  call void @free(ptr noundef %12) #5
  br i1 %.0, label %33, label %30

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
  %.neg = mul nsw i32 %3, -127773
  %4 = add i32 %.neg, %2
  %5 = mul nsw i32 %4, 16807
  %.neg1 = mul nsw i32 %3, -2836
  %6 = add i32 %.neg1, %5
  store i32 %6, ptr @seed, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = add nsw i32 %6, 2147483647
  store i32 %9, ptr @seed, align 4
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
