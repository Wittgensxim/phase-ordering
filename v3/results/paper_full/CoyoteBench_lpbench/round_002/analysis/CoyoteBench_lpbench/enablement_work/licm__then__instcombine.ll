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
  %4 = icmp samesign ult i32 %.01, 2000
  br i1 %4, label %.preheader3, label %.preheader2

.preheader3:                                      ; preds = %3
  %5 = zext nneg i32 %.01 to i64
  br label %6

.preheader2:                                      ; preds = %3
  br label %17

6:                                                ; preds = %.preheader3, %8
  %.0 = phi i32 [ %14, %8 ], [ 0, %.preheader3 ]
  %7 = icmp samesign ult i32 %.0, 2000
  br i1 %7, label %8, label %15

8:                                                ; preds = %6
  %9 = call double @random_double()
  %10 = zext nneg i32 %.0 to i64
  %11 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %10
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds nuw [8 x i8], ptr %12, i64 %5
  store double %9, ptr %13, align 8
  %14 = add nuw nsw i32 %.0, 1
  br label %6, !llvm.loop !7

15:                                               ; preds = %6
  %16 = add nuw nsw i32 %.01, 1
  br label %3, !llvm.loop !9

17:                                               ; preds = %.preheader2, %19
  %.12 = phi i32 [ %22, %19 ], [ 0, %.preheader2 ]
  %18 = icmp samesign ult i32 %.12, 2000
  br i1 %18, label %19, label %.preheader1

.preheader1:                                      ; preds = %17
  br label %23

19:                                               ; preds = %17
  %20 = zext nneg i32 %.12 to i64
  %21 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %20
  store double 0.000000e+00, ptr %21, align 8
  %22 = add nuw nsw i32 %.12, 1
  br label %17, !llvm.loop !10

23:                                               ; preds = %.preheader1, %38
  %.1 = phi i32 [ %39, %38 ], [ 0, %.preheader1 ]
  %24 = icmp samesign ult i32 %.1, 2000
  br i1 %24, label %.preheader, label %40

.preheader:                                       ; preds = %23
  %25 = zext nneg i32 %.1 to i64
  %26 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %25
  br label %27

27:                                               ; preds = %.preheader, %29
  %.2 = phi i32 [ %37, %29 ], [ 0, %.preheader ]
  %28 = icmp samesign ult i32 %.2, 2000
  br i1 %28, label %29, label %38

29:                                               ; preds = %27
  %30 = load ptr, ptr %26, align 8
  %31 = zext nneg i32 %.2 to i64
  %32 = getelementptr inbounds nuw [8 x i8], ptr %30, i64 %31
  %33 = load double, ptr %32, align 8
  %34 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %31
  %35 = load double, ptr %34, align 8
  %36 = fadd double %35, %33
  store double %36, ptr %34, align 8
  %37 = add nuw nsw i32 %.2, 1
  br label %27, !llvm.loop !11

38:                                               ; preds = %27
  %39 = add nuw nsw i32 %.1, 1
  br label %23, !llvm.loop !12

40:                                               ; preds = %23
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
  br i1 %32, label %33, label %.loopexit1

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

.loopexit:                                        ; preds = %15
  br label %41

.loopexit1:                                       ; preds = %31
  br label %41

41:                                               ; preds = %.loopexit1, %.loopexit, %6, %4
  %.0 = phi i32 [ -1, %4 ], [ 0, %6 ], [ %.2, %.loopexit ], [ %.5, %.loopexit1 ]
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
  br i1 %.not, label %.preheader, label %8

.preheader:                                       ; preds = %7
  br label %19

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

19:                                               ; preds = %.preheader, %21
  %.1 = phi i32 [ %27, %21 ], [ 0, %.preheader ]
  %20 = icmp slt i32 %.1, %0
  br i1 %20, label %21, label %.loopexit1

21:                                               ; preds = %19
  %22 = add nsw i32 %.1, %3
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [8 x i8], ptr %2, i64 %23
  %25 = load double, ptr %24, align 8
  %26 = fmul double %25, %1
  store double %26, ptr %24, align 8
  %27 = add nuw nsw i32 %.1, 1
  br label %19, !llvm.loop !16

.loopexit:                                        ; preds = %10
  br label %28

.loopexit1:                                       ; preds = %19
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

35:                                               ; preds = %.preheader, %37
  %.14 = phi i32 [ %47, %37 ], [ 0, %.preheader ]
  %36 = icmp slt i32 %.14, %0
  br i1 %36, label %37, label %.loopexit1

37:                                               ; preds = %35
  %38 = add nsw i32 %.14, %3
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [8 x i8], ptr %2, i64 %39
  %41 = load double, ptr %40, align 8
  %42 = add nsw i32 %.14, %6
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [8 x i8], ptr %5, i64 %43
  %45 = load double, ptr %44, align 8
  %46 = call double @llvm.fmuladd.f64(double %1, double %41, double %45)
  store double %46, ptr %44, align 8
  %47 = add nuw nsw i32 %.14, 1
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

3:                                                ; preds = %40, %2
  %.01 = phi i32 [ 0, %2 ], [ %9, %40 ]
  %4 = icmp samesign ult i32 %.01, 1999
  br i1 %4, label %5, label %41

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
  br i1 %17, label %18, label %40

18:                                               ; preds = %5
  %.not = icmp eq i32 %11, 0
  br i1 %.not, label %22, label %19

19:                                               ; preds = %18
  %20 = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %6
  %21 = load double, ptr %20, align 8
  store double %21, ptr %15, align 8
  store double %16, ptr %20, align 8
  br label %22

22:                                               ; preds = %19, %18
  %23 = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %6
  %24 = load double, ptr %23, align 8
  %25 = fdiv double -1.000000e+00, %24
  %26 = sub nsw i32 1999, %.01
  call void @dscal(i32 noundef %26, double noundef %25, ptr noundef %8, i32 noundef %9, i32 noundef 1)
  br label %27

27:                                               ; preds = %38, %22
  %.0 = phi i32 [ %9, %22 ], [ %39, %38 ]
  %28 = icmp samesign ult i32 %.0, 2000
  br i1 %28, label %29, label %.loopexit

29:                                               ; preds = %27
  %30 = zext nneg i32 %.0 to i64
  %31 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %30
  %32 = load ptr, ptr %31, align 8
  %33 = getelementptr inbounds [8 x i8], ptr %32, i64 %14
  %34 = load double, ptr %33, align 8
  br i1 %.not, label %38, label %35

35:                                               ; preds = %29
  %36 = getelementptr inbounds nuw [8 x i8], ptr %32, i64 %6
  %37 = load double, ptr %36, align 8
  store double %37, ptr %33, align 8
  store double %34, ptr %36, align 8
  br label %38

38:                                               ; preds = %35, %29
  call void @daxpy(i32 noundef %26, double noundef %34, ptr noundef %8, i32 noundef %9, i32 noundef 1, ptr noundef %32, i32 noundef %9, i32 noundef 1)
  %39 = add nuw nsw i32 %.0, 1
  br label %27, !llvm.loop !19

.loopexit:                                        ; preds = %27
  br label %40

40:                                               ; preds = %.loopexit, %5
  br label %3, !llvm.loop !20

41:                                               ; preds = %3
  %42 = getelementptr inbounds nuw i8, ptr %1, i64 7996
  store i32 1999, ptr %42, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @dgesl(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  br label %4

4:                                                ; preds = %16, %3
  %.01 = phi i32 [ 0, %3 ], [ %17, %16 ]
  %5 = icmp samesign ult i32 %.01, 1999
  br i1 %5, label %6, label %.preheader

.preheader:                                       ; preds = %4
  br label %21

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

21:                                               ; preds = %.preheader, %23
  %.0 = phi i32 [ %24, %23 ], [ 0, %.preheader ]
  %22 = icmp samesign ult i32 %.0, 2000
  br i1 %22, label %23, label %36

23:                                               ; preds = %21
  %24 = add nuw nsw i32 %.0, 1
  %25 = sub nuw nsw i32 1999, %.0
  %26 = zext nneg i32 %25 to i64
  %27 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %26
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds nuw [8 x i8], ptr %28, i64 %26
  %30 = load double, ptr %29, align 8
  %31 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %26
  %32 = load double, ptr %31, align 8
  %33 = fdiv double %32, %30
  store double %33, ptr %31, align 8
  %34 = fneg double %33
  %35 = load ptr, ptr %27, align 8
  call void @daxpy(i32 noundef %25, double noundef %34, ptr noundef %35, i32 noundef 0, i32 noundef 1, ptr noundef %2, i32 noundef 0, i32 noundef 1)
  br label %21, !llvm.loop !22

36:                                               ; preds = %21
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = icmp sgt i32 %0, 1
  br i1 %3, label %.preheader, label %12

.preheader:                                       ; preds = %2
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %5

5:                                                ; preds = %.preheader, %10
  %.01 = phi i32 [ %11, %10 ], [ 1, %.preheader ]
  %6 = icmp sge i32 %.01, %0
  br i1 %6, label %.loopexit, label %7

7:                                                ; preds = %5
  %8 = load ptr, ptr %4, align 8
  %9 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(4) @.str) #5
  %.not = icmp eq i32 %9, 0
  br i1 %.not, label %.loopexit, label %10

10:                                               ; preds = %7
  %11 = add nuw nsw i32 %.01, 1
  br label %5, !llvm.loop !23

.loopexit:                                        ; preds = %5, %7
  br label %12

12:                                               ; preds = %.loopexit, %2
  %.0 = phi i1 [ true, %2 ], [ %6, %.loopexit ]
  %13 = call dereferenceable_or_null(16000) ptr @malloc(i64 noundef 16000) #6
  br label %14

14:                                               ; preds = %16, %12
  %.12 = phi i32 [ 0, %12 ], [ %20, %16 ]
  %15 = icmp samesign ult i32 %.12, 2000
  br i1 %15, label %16, label %21

16:                                               ; preds = %14
  %17 = call dereferenceable_or_null(16008) ptr @malloc(i64 noundef 16008) #6
  %18 = zext nneg i32 %.12 to i64
  %19 = getelementptr inbounds nuw [8 x i8], ptr %13, i64 %18
  store ptr %17, ptr %19, align 8
  %20 = add nuw nsw i32 %.12, 1
  br label %14, !llvm.loop !24

21:                                               ; preds = %14
  %22 = call dereferenceable_or_null(16000) ptr @malloc(i64 noundef 16000) #6
  %23 = call dereferenceable_or_null(16000) ptr @malloc(i64 noundef 16000) #6
  %24 = call dereferenceable_or_null(8000) ptr @malloc(i64 noundef 8000) #6
  call void @matgen(ptr noundef %13, ptr noundef %22)
  call void @dgefa(ptr noundef %13, ptr noundef %24)
  call void @dgesl(ptr noundef %13, ptr noundef %24, ptr noundef %22)
  call void @free(ptr noundef %24) #5
  call void @free(ptr noundef %23) #5
  call void @free(ptr noundef %22) #5
  br label %25

25:                                               ; preds = %27, %21
  %.2 = phi i32 [ 0, %21 ], [ %31, %27 ]
  %26 = icmp samesign ult i32 %.2, 2000
  br i1 %26, label %27, label %32

27:                                               ; preds = %25
  %28 = zext nneg i32 %.2 to i64
  %29 = getelementptr inbounds nuw [8 x i8], ptr %13, i64 %28
  %30 = load ptr, ptr %29, align 8
  call void @free(ptr noundef %30) #5
  %31 = add nuw nsw i32 %.2, 1
  br label %25, !llvm.loop !25

32:                                               ; preds = %25
  call void @free(ptr noundef %13) #5
  br i1 %.0, label %36, label %33

33:                                               ; preds = %32
  %34 = call ptr @__acrt_iob_func(i32 noundef 1) #5
  %35 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %34, ptr noundef nonnull @.str.1, double noundef 0.000000e+00) #5
  br label %39

36:                                               ; preds = %32
  %37 = call ptr @__acrt_iob_func(i32 noundef 1) #5
  %38 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %37, ptr noundef nonnull @.str.2, double noundef 0.000000e+00) #5
  br label %39

39:                                               ; preds = %36, %33
  %40 = call ptr @__acrt_iob_func(i32 noundef 1) #5
  %41 = call i32 @fflush(ptr noundef %40) #5
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
  %storemerge = phi i32 [ %9, %8 ], [ %6, %0 ]
  %11 = sitofp i32 %storemerge to double
  %12 = fmul nnan double %11, f0x3E00000000200FE1
  %13 = xor i32 %storemerge, 123459876
  store i32 %13, ptr @seed, align 4
  ret double %12
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
