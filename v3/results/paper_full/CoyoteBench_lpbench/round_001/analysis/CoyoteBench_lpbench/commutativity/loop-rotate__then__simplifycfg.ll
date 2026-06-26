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

3:                                                ; preds = %2, %13
  %.013 = phi i32 [ 0, %2 ], [ %14, %13 ]
  br label %4

4:                                                ; preds = %3, %4
  %.02 = phi i32 [ 0, %3 ], [ %11, %4 ]
  %5 = call double @random_double()
  %6 = sext i32 %.02 to i64
  %7 = getelementptr inbounds ptr, ptr %0, i64 %6
  %8 = load ptr, ptr %7, align 8
  %9 = sext i32 %.013 to i64
  %10 = getelementptr inbounds double, ptr %8, i64 %9
  store double %5, ptr %10, align 8
  %11 = add nsw i32 %.02, 1
  %12 = icmp slt i32 %11, 2000
  br i1 %12, label %4, label %13, !llvm.loop !7

13:                                               ; preds = %4
  %14 = add nsw i32 %.013, 1
  %15 = icmp slt i32 %14, 2000
  br i1 %15, label %3, label %16, !llvm.loop !9

16:                                               ; preds = %13, %16
  %.124 = phi i32 [ %19, %16 ], [ 0, %13 ]
  %17 = sext i32 %.124 to i64
  %18 = getelementptr inbounds double, ptr %1, i64 %17
  store double 0.000000e+00, ptr %18, align 8
  %19 = add nsw i32 %.124, 1
  %20 = icmp slt i32 %19, 2000
  br i1 %20, label %16, label %21, !llvm.loop !10

21:                                               ; preds = %16, %34
  %.16 = phi i32 [ %35, %34 ], [ 0, %16 ]
  br label %22

22:                                               ; preds = %21, %22
  %.25 = phi i32 [ 0, %21 ], [ %32, %22 ]
  %23 = sext i32 %.16 to i64
  %24 = getelementptr inbounds ptr, ptr %0, i64 %23
  %25 = load ptr, ptr %24, align 8
  %26 = sext i32 %.25 to i64
  %27 = getelementptr inbounds double, ptr %25, i64 %26
  %28 = load double, ptr %27, align 8
  %29 = getelementptr inbounds double, ptr %1, i64 %26
  %30 = load double, ptr %29, align 8
  %31 = fadd double %30, %28
  store double %31, ptr %29, align 8
  %32 = add nsw i32 %.25, 1
  %33 = icmp slt i32 %32, 2000
  br i1 %33, label %22, label %34, !llvm.loop !11

34:                                               ; preds = %22
  %35 = add nsw i32 %.16, 1
  %36 = icmp slt i32 %35, 2000
  br i1 %36, label %21, label %37, !llvm.loop !12

37:                                               ; preds = %34
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @idamax(i32 noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = icmp slt i32 %0, 1
  br i1 %5, label %._crit_edge10, label %6

6:                                                ; preds = %4
  %7 = icmp eq i32 %0, 1
  br i1 %7, label %._crit_edge10, label %8

8:                                                ; preds = %6
  %9 = icmp ne i32 %3, 1
  br i1 %9, label %10, label %26

10:                                               ; preds = %8
  %11 = sext i32 %2 to i64
  %12 = getelementptr inbounds double, ptr %1, i64 %11
  %13 = load double, ptr %12, align 8
  %14 = call double @llvm.fabs.f64(double %13)
  %15 = add nsw i32 1, %3
  %16 = icmp slt i32 1, %0
  br i1 %16, label %.lr.ph9, label %._crit_edge10

.lr.ph9:                                          ; preds = %10, %.lr.ph9
  %.27 = phi i32 [ %.3, %.lr.ph9 ], [ 0, %10 ]
  %.016 = phi i32 [ %23, %.lr.ph9 ], [ %15, %10 ]
  %.025 = phi i32 [ %24, %.lr.ph9 ], [ 1, %10 ]
  %.044 = phi double [ %.15, %.lr.ph9 ], [ %14, %10 ]
  %17 = add nsw i32 %.016, %2
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds double, ptr %1, i64 %18
  %20 = load double, ptr %19, align 8
  %21 = call double @llvm.fabs.f64(double %20)
  %22 = fcmp ogt double %21, %.044
  %.15 = select i1 %22, double %21, double %.044
  %.3 = select i1 %22, i32 %.025, i32 %.27
  %23 = add nsw i32 %.016, %3
  %24 = add nsw i32 %.025, 1
  %25 = icmp slt i32 %24, %0
  br i1 %25, label %.lr.ph9, label %._crit_edge10, !llvm.loop !13

26:                                               ; preds = %8
  %27 = sext i32 %2 to i64
  %28 = getelementptr inbounds double, ptr %1, i64 %27
  %29 = load double, ptr %28, align 8
  %30 = call double @llvm.fabs.f64(double %29)
  %31 = icmp slt i32 1, %0
  br i1 %31, label %.lr.ph, label %._crit_edge10

.lr.ph:                                           ; preds = %26, %.lr.ph
  %.53 = phi i32 [ %.6, %.lr.ph ], [ 0, %26 ]
  %.132 = phi i32 [ %38, %.lr.ph ], [ 1, %26 ]
  %.261 = phi double [ %.37, %.lr.ph ], [ %30, %26 ]
  %32 = add nsw i32 %.132, %2
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds double, ptr %1, i64 %33
  %35 = load double, ptr %34, align 8
  %36 = call double @llvm.fabs.f64(double %35)
  %37 = fcmp ogt double %36, %.261
  %.37 = select i1 %37, double %36, double %.261
  %.6 = select i1 %37, i32 %.132, i32 %.53
  %38 = add nsw i32 %.132, 1
  %39 = icmp slt i32 %38, %0
  br i1 %39, label %.lr.ph, label %._crit_edge10, !llvm.loop !14

._crit_edge10:                                    ; preds = %6, %26, %.lr.ph, %10, %.lr.ph9, %4
  %.0 = phi i32 [ -1, %4 ], [ 0, %6 ], [ %.3, %.lr.ph9 ], [ 0, %10 ], [ 0, %26 ], [ %.6, %.lr.ph ]
  ret i32 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @dscal(i32 noundef %0, double noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = icmp sgt i32 %0, 0
  br i1 %6, label %7, label %._crit_edge5

7:                                                ; preds = %5
  %8 = icmp ne i32 %4, 1
  br i1 %8, label %9, label %19

9:                                                ; preds = %7
  %10 = mul nsw i32 %0, %4
  %11 = icmp slt i32 0, %10
  br i1 %11, label %.lr.ph4, label %._crit_edge5

.lr.ph4:                                          ; preds = %9, %.lr.ph4
  %.02 = phi i32 [ %17, %.lr.ph4 ], [ 0, %9 ]
  %12 = add nsw i32 %.02, %3
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds double, ptr %2, i64 %13
  %15 = load double, ptr %14, align 8
  %16 = fmul double %15, %1
  store double %16, ptr %14, align 8
  %17 = add nsw i32 %.02, %4
  %18 = icmp slt i32 %17, %10
  br i1 %18, label %.lr.ph4, label %._crit_edge5, !llvm.loop !15

19:                                               ; preds = %7
  %20 = icmp slt i32 0, %0
  br i1 %20, label %.lr.ph, label %._crit_edge5

.lr.ph:                                           ; preds = %19, %.lr.ph
  %.11 = phi i32 [ %26, %.lr.ph ], [ 0, %19 ]
  %21 = add nsw i32 %.11, %3
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds double, ptr %2, i64 %22
  %24 = load double, ptr %23, align 8
  %25 = fmul double %24, %1
  store double %25, ptr %23, align 8
  %26 = add nsw i32 %.11, 1
  %27 = icmp slt i32 %26, %0
  br i1 %27, label %.lr.ph, label %._crit_edge5, !llvm.loop !16

._crit_edge5:                                     ; preds = %.lr.ph4, %9, %.lr.ph, %19, %5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @daxpy(i32 noundef %0, double noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7) #0 {
  %9 = icmp sgt i32 %0, 0
  %10 = fcmp une double %1, 0.000000e+00
  %or.cond = and i1 %9, %10
  br i1 %or.cond, label %11, label %._crit_edge7

11:                                               ; preds = %8
  %12 = icmp ne i32 %4, 1
  %13 = icmp ne i32 %7, 1
  %or.cond8 = or i1 %12, %13
  br i1 %or.cond8, label %14, label %35

14:                                               ; preds = %11
  %15 = icmp slt i32 %4, 0
  %16 = sub nsw i32 1, %0
  %17 = mul nsw i32 %16, %4
  %.01 = select i1 %15, i32 %17, i32 0
  %18 = icmp slt i32 %7, 0
  %19 = sub nsw i32 1, %0
  %20 = mul nsw i32 %19, %7
  %.0 = select i1 %18, i32 %20, i32 0
  %21 = icmp slt i32 0, %0
  br i1 %21, label %.lr.ph6, label %._crit_edge7

.lr.ph6:                                          ; preds = %14, %.lr.ph6
  %.14 = phi i32 [ %32, %.lr.ph6 ], [ %.0, %14 ]
  %.123 = phi i32 [ %31, %.lr.ph6 ], [ %.01, %14 ]
  %.032 = phi i32 [ %33, %.lr.ph6 ], [ 0, %14 ]
  %22 = add nsw i32 %.123, %3
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds double, ptr %2, i64 %23
  %25 = load double, ptr %24, align 8
  %26 = add nsw i32 %.14, %6
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds double, ptr %5, i64 %27
  %29 = load double, ptr %28, align 8
  %30 = call double @llvm.fmuladd.f64(double %1, double %25, double %29)
  store double %30, ptr %28, align 8
  %31 = add nsw i32 %.123, %4
  %32 = add nsw i32 %.14, %7
  %33 = add nsw i32 %.032, 1
  %34 = icmp slt i32 %33, %0
  br i1 %34, label %.lr.ph6, label %._crit_edge7, !llvm.loop !17

35:                                               ; preds = %11
  %36 = icmp slt i32 0, %0
  br i1 %36, label %.lr.ph, label %._crit_edge7

.lr.ph:                                           ; preds = %35, %.lr.ph
  %.141 = phi i32 [ %46, %.lr.ph ], [ 0, %35 ]
  %37 = add nsw i32 %.141, %3
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds double, ptr %2, i64 %38
  %40 = load double, ptr %39, align 8
  %41 = add nsw i32 %.141, %6
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds double, ptr %5, i64 %42
  %44 = load double, ptr %43, align 8
  %45 = call double @llvm.fmuladd.f64(double %1, double %40, double %44)
  store double %45, ptr %43, align 8
  %46 = add nsw i32 %.141, 1
  %47 = icmp slt i32 %46, %0
  br i1 %47, label %.lr.ph, label %._crit_edge7, !llvm.loop !18

._crit_edge7:                                     ; preds = %.lr.ph, %35, %14, %.lr.ph6, %8
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @dgefa(ptr noundef %0, ptr noundef %1) #0 {
  br label %3

3:                                                ; preds = %2, %._crit_edge
  %.013 = phi i32 [ 0, %2 ], [ %7, %._crit_edge ]
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
  br i1 %15, label %16, label %._crit_edge

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
  br i1 %26, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %21, %35
  %.02 = phi i32 [ %36, %35 ], [ %7, %21 ]
  %27 = sext i32 %.02 to i64
  %28 = getelementptr inbounds ptr, ptr %0, i64 %27
  %29 = load ptr, ptr %28, align 8
  %30 = getelementptr inbounds double, ptr %29, i64 %12
  %31 = load double, ptr %30, align 8
  br i1 %17, label %32, label %35

32:                                               ; preds = %.lr.ph
  %33 = getelementptr inbounds double, ptr %29, i64 %4
  %34 = load double, ptr %33, align 8
  store double %34, ptr %30, align 8
  store double %31, ptr %33, align 8
  br label %35

35:                                               ; preds = %32, %.lr.ph
  call void @daxpy(i32 noundef %25, double noundef %31, ptr noundef %6, i32 noundef %7, i32 noundef 1, ptr noundef %29, i32 noundef %7, i32 noundef 1)
  %36 = add nsw i32 %.02, 1
  %37 = icmp slt i32 %36, 2000
  br i1 %37, label %.lr.ph, label %._crit_edge, !llvm.loop !19

._crit_edge:                                      ; preds = %3, %35, %21
  %38 = icmp slt i32 %7, 1999
  br i1 %38, label %3, label %39, !llvm.loop !20

39:                                               ; preds = %._crit_edge
  %40 = getelementptr inbounds i32, ptr %1, i64 1999
  store i32 1999, ptr %40, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @dgesl(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  br label %4

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
  br i1 %20, label %4, label %21, !llvm.loop !21

21:                                               ; preds = %15, %21
  %.02 = phi i32 [ %22, %21 ], [ 0, %15 ]
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
  br i1 %3, label %4, label %.loopexit

4:                                                ; preds = %2, %9
  %.011 = phi i32 [ %10, %9 ], [ 1, %2 ]
  %5 = getelementptr inbounds ptr, ptr %1, i64 1
  %6 = load ptr, ptr %5, align 8
  %7 = call i32 @strcmp(ptr noundef %6, ptr noundef @.str) #5
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %.loopexit

9:                                                ; preds = %4
  %10 = add nsw i32 %.011, 1
  %11 = icmp slt i32 %10, %0
  br i1 %11, label %4, label %.loopexit, !llvm.loop !23

.loopexit:                                        ; preds = %4, %9, %2
  %.0 = phi i8 [ 0, %2 ], [ 1, %4 ], [ 0, %9 ]
  %12 = call ptr @malloc(i64 noundef 16000) #6
  br label %13

13:                                               ; preds = %.loopexit, %13
  %.122 = phi i32 [ 0, %.loopexit ], [ %17, %13 ]
  %14 = call ptr @malloc(i64 noundef 16008) #6
  %15 = sext i32 %.122 to i64
  %16 = getelementptr inbounds ptr, ptr %12, i64 %15
  store ptr %14, ptr %16, align 8
  %17 = add nsw i32 %.122, 1
  %18 = icmp slt i32 %17, 2000
  br i1 %18, label %13, label %19, !llvm.loop !24

19:                                               ; preds = %13
  %20 = call ptr @malloc(i64 noundef 16000) #6
  %21 = call ptr @malloc(i64 noundef 16000) #6
  %22 = call ptr @malloc(i64 noundef 8000) #6
  call void @matgen(ptr noundef %12, ptr noundef %20)
  call void @dgefa(ptr noundef %12, ptr noundef %22)
  call void @dgesl(ptr noundef %12, ptr noundef %22, ptr noundef %20)
  call void @free(ptr noundef %22)
  call void @free(ptr noundef %21)
  call void @free(ptr noundef %20)
  br label %23

23:                                               ; preds = %19, %23
  %.23 = phi i32 [ 0, %19 ], [ %27, %23 ]
  %24 = sext i32 %.23 to i64
  %25 = getelementptr inbounds ptr, ptr %12, i64 %24
  %26 = load ptr, ptr %25, align 8
  call void @free(ptr noundef %26)
  %27 = add nsw i32 %.23, 1
  %28 = icmp slt i32 %27, 2000
  br i1 %28, label %23, label %29, !llvm.loop !25

29:                                               ; preds = %23
  call void @free(ptr noundef %12)
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
