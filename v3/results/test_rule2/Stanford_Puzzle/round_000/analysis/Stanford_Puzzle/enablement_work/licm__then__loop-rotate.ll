; ModuleID = 'results\test_rule2\Stanford_Puzzle\Stanford_Puzzle.ll'
source_filename = "E:/llvm-test-suite/SingleSource/Benchmarks/Stanford/Puzzle.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-w64-windows-gnu"

%struct.element = type { i32, i32 }
%struct.complex = type { float, float }

@seed = dso_local global i32 0, align 4
@piecemax = dso_local global [13 x i32] zeroinitializer, align 16
@p = dso_local global [13 x [512 x i32]] zeroinitializer, align 16
@puzzl = dso_local global [512 x i32] zeroinitializer, align 16
@piececount = dso_local global [4 x i32] zeroinitializer, align 16
@class = dso_local global [13 x i32] zeroinitializer, align 16
@kount = dso_local global i32 0, align 4
@n = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Error1 in Puzzle\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Error2 in Puzzle.\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Error3 in Puzzle.\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@value = dso_local global float 0.000000e+00, align 4
@fixed = dso_local global float 0.000000e+00, align 4
@floated = dso_local global float 0.000000e+00, align 4
@permarray = dso_local global [11 x i32] zeroinitializer, align 16
@pctr = dso_local global i32 0, align 4
@tree = dso_local global ptr null, align 8
@stack = dso_local global [4 x i32] zeroinitializer, align 16
@cellspace = dso_local global [19 x %struct.element] zeroinitializer, align 16
@freelist = dso_local global i32 0, align 4
@movesdone = dso_local global i32 0, align 4
@ima = dso_local global [41 x [41 x i32]] zeroinitializer, align 16
@imb = dso_local global [41 x [41 x i32]] zeroinitializer, align 16
@imr = dso_local global [41 x [41 x i32]] zeroinitializer, align 16
@rma = dso_local global [41 x [41 x float]] zeroinitializer, align 16
@rmb = dso_local global [41 x [41 x float]] zeroinitializer, align 16
@rmr = dso_local global [41 x [41 x float]] zeroinitializer, align 16
@sortlist = dso_local global [5001 x i32] zeroinitializer, align 16
@biggest = dso_local global i32 0, align 4
@littlest = dso_local global i32 0, align 4
@top = dso_local global i32 0, align 4
@z = dso_local global [257 x %struct.complex] zeroinitializer, align 16
@w = dso_local global [257 x %struct.complex] zeroinitializer, align 16
@e = dso_local global [130 x %struct.complex] zeroinitializer, align 16
@zr = dso_local global float 0.000000e+00, align 4
@zi = dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @Initrand() #0 {
  store i32 74755, ptr @seed, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Rand() #0 {
  %1 = load i32, ptr @seed, align 4
  %2 = mul nsw i32 %1, 1309
  %3 = add nsw i32 %2, 13849
  %4 = and i32 %3, 65535
  store i32 %4, ptr @seed, align 4
  %5 = load i32, ptr @seed, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Fit(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, ptr %4, align 4
  store i32 %1, ptr %5, align 4
  store i32 0, ptr %6, align 4
  %7 = load i32, ptr %4, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [13 x i32], ptr @piecemax, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4
  %11 = load i32, ptr %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [13 x [512 x i32]], ptr @p, i64 0, i64 %12
  %14 = load i32, ptr %5, align 4
  %.promoted = load i32, ptr %6, align 4
  %15 = icmp sle i32 %.promoted, %10
  br i1 %15, label %.lr.ph, label %34

.lr.ph:                                           ; preds = %2
  br label %16

16:                                               ; preds = %.lr.ph, %31
  %17 = phi i32 [ %.promoted, %.lr.ph ], [ %32, %31 ]
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [512 x i32], ptr %13, i64 0, i64 %18
  %20 = load i32, ptr %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %16
  %23 = add nsw i32 %14, %17
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %24
  %26 = load i32, ptr %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  %.lcssa1 = phi i32 [ %17, %22 ]
  store i32 %.lcssa1, ptr %6, align 4
  store i32 0, ptr %3, align 4
  br label %35

29:                                               ; preds = %22
  br label %30

30:                                               ; preds = %29, %16
  br label %31

31:                                               ; preds = %30
  %32 = add nsw i32 %17, 1
  %33 = icmp sle i32 %32, %10
  br i1 %33, label %16, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %31
  %split = phi i32 [ %32, %31 ]
  br label %34

34:                                               ; preds = %._crit_edge, %2
  %.lcssa = phi i32 [ %split, %._crit_edge ], [ %.promoted, %2 ]
  store i32 %.lcssa, ptr %6, align 4
  store i32 1, ptr %3, align 4
  br label %35

35:                                               ; preds = %34, %28
  %36 = load i32, ptr %3, align 4
  ret i32 %36
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Place(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, ptr %4, align 4
  store i32 %1, ptr %5, align 4
  store i32 0, ptr %6, align 4
  %7 = load i32, ptr %4, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [13 x i32], ptr @piecemax, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4
  %11 = load i32, ptr %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [13 x [512 x i32]], ptr @p, i64 0, i64 %12
  %14 = load i32, ptr %5, align 4
  %.promoted = load i32, ptr %6, align 4
  %15 = icmp sle i32 %.promoted, %10
  br i1 %15, label %.lr.ph, label %30

.lr.ph:                                           ; preds = %2
  br label %16

16:                                               ; preds = %.lr.ph, %27
  %17 = phi i32 [ %.promoted, %.lr.ph ], [ %28, %27 ]
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [512 x i32], ptr %13, i64 0, i64 %18
  %20 = load i32, ptr %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = add nsw i32 %14, %17
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %24
  store i32 1, ptr %25, align 4
  br label %26

26:                                               ; preds = %22, %16
  br label %27

27:                                               ; preds = %26
  %28 = add nsw i32 %17, 1
  %29 = icmp sle i32 %28, %10
  br i1 %29, label %16, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %27
  %split = phi i32 [ %28, %27 ]
  br label %30

30:                                               ; preds = %._crit_edge, %2
  %.lcssa = phi i32 [ %split, %._crit_edge ], [ %.promoted, %2 ]
  store i32 %.lcssa, ptr %6, align 4
  %31 = load i32, ptr %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [13 x i32], ptr @class, i64 0, i64 %32
  %34 = load i32, ptr %33, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [4 x i32], ptr @piececount, i64 0, i64 %35
  %37 = load i32, ptr %36, align 4
  %38 = sub nsw i32 %37, 1
  %39 = load i32, ptr %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [13 x i32], ptr @class, i64 0, i64 %40
  %42 = load i32, ptr %41, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [4 x i32], ptr @piececount, i64 0, i64 %43
  store i32 %38, ptr %44, align 4
  %45 = load i32, ptr %5, align 4
  store i32 %45, ptr %6, align 4
  %.promoted1 = load i32, ptr %6, align 4
  %46 = icmp sle i32 %.promoted1, 511
  br i1 %46, label %.lr.ph5, label %59

.lr.ph5:                                          ; preds = %30
  br label %47

47:                                               ; preds = %.lr.ph5, %56
  %48 = phi i32 [ %.promoted1, %.lr.ph5 ], [ %57, %56 ]
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %49
  %51 = load i32, ptr %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %47
  %.lcssa3 = phi i32 [ %48, %47 ]
  store i32 %.lcssa3, ptr %6, align 4
  %54 = load i32, ptr %6, align 4
  store i32 %54, ptr %3, align 4
  br label %60

55:                                               ; preds = %47
  br label %56

56:                                               ; preds = %55
  %57 = add nsw i32 %48, 1
  %58 = icmp sle i32 %57, 511
  br i1 %58, label %47, label %._crit_edge6, !llvm.loop !10

._crit_edge6:                                     ; preds = %56
  %split7 = phi i32 [ %57, %56 ]
  br label %59

59:                                               ; preds = %._crit_edge6, %30
  %.lcssa2 = phi i32 [ %split7, %._crit_edge6 ], [ %.promoted1, %30 ]
  store i32 %.lcssa2, ptr %6, align 4
  store i32 0, ptr %3, align 4
  br label %60

60:                                               ; preds = %59, %53
  %61 = load i32, ptr %3, align 4
  ret i32 %61
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Remove(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  store i32 0, ptr %5, align 4
  %6 = load i32, ptr %3, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [13 x i32], ptr @piecemax, i64 0, i64 %7
  %9 = load i32, ptr %8, align 4
  %10 = load i32, ptr %3, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [13 x [512 x i32]], ptr @p, i64 0, i64 %11
  %13 = load i32, ptr %4, align 4
  %.promoted = load i32, ptr %5, align 4
  %14 = icmp sle i32 %.promoted, %9
  br i1 %14, label %.lr.ph, label %29

.lr.ph:                                           ; preds = %2
  br label %15

15:                                               ; preds = %.lr.ph, %26
  %16 = phi i32 [ %.promoted, %.lr.ph ], [ %27, %26 ]
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [512 x i32], ptr %12, i64 0, i64 %17
  %19 = load i32, ptr %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = add nsw i32 %13, %16
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %23
  store i32 0, ptr %24, align 4
  br label %25

25:                                               ; preds = %21, %15
  br label %26

26:                                               ; preds = %25
  %27 = add nsw i32 %16, 1
  %28 = icmp sle i32 %27, %9
  br i1 %28, label %15, label %._crit_edge, !llvm.loop !11

._crit_edge:                                      ; preds = %26
  %split = phi i32 [ %27, %26 ]
  br label %29

29:                                               ; preds = %._crit_edge, %2
  %.lcssa = phi i32 [ %split, %._crit_edge ], [ %.promoted, %2 ]
  store i32 %.lcssa, ptr %5, align 4
  %30 = load i32, ptr %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [13 x i32], ptr @class, i64 0, i64 %31
  %33 = load i32, ptr %32, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [4 x i32], ptr @piececount, i64 0, i64 %34
  %36 = load i32, ptr %35, align 4
  %37 = add nsw i32 %36, 1
  %38 = load i32, ptr %3, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [13 x i32], ptr @class, i64 0, i64 %39
  %41 = load i32, ptr %40, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [4 x i32], ptr @piececount, i64 0, i64 %42
  store i32 %37, ptr %43, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Trial(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  %6 = load i32, ptr @kount, align 4
  %7 = add nsw i32 %6, 1
  store i32 %7, ptr @kount, align 4
  store i32 0, ptr %4, align 4
  %8 = load i32, ptr %3, align 4
  %9 = load i32, ptr %3, align 4
  %10 = load i32, ptr %3, align 4
  %.promoted = load i32, ptr %4, align 4
  %.promoted2 = load i32, ptr %5, align 4
  %11 = icmp sle i32 %.promoted, 12
  br i1 %11, label %.lr.ph, label %42

.lr.ph:                                           ; preds = %1
  br label %12

12:                                               ; preds = %.lr.ph, %39
  %13 = phi i32 [ %.promoted, %.lr.ph ], [ %40, %39 ]
  %14 = phi i32 [ %.promoted2, %.lr.ph ], [ %38, %39 ]
  %15 = sext i32 %13 to i64
  %16 = getelementptr inbounds [13 x i32], ptr @class, i64 0, i64 %15
  %17 = load i32, ptr %16, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [4 x i32], ptr @piececount, i64 0, i64 %18
  %20 = load i32, ptr %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %36

22:                                               ; preds = %12
  %23 = call i32 @Fit(i32 noundef %13, i32 noundef %8)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %22
  %26 = call i32 @Place(i32 noundef %13, i32 noundef %9)
  %27 = call i32 @Trial(i32 noundef %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  %30 = icmp eq i32 %26, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %29, %25
  %.lcssa4 = phi i32 [ %26, %29 ], [ %26, %25 ]
  %.lcssa1 = phi i32 [ %13, %29 ], [ %13, %25 ]
  store i32 %.lcssa1, ptr %4, align 4
  store i32 %.lcssa4, ptr %5, align 4
  store i32 1, ptr %2, align 4
  br label %43

32:                                               ; preds = %29
  call void @Remove(i32 noundef %13, i32 noundef %10)
  br label %33

33:                                               ; preds = %32
  br label %34

34:                                               ; preds = %33, %22
  %35 = phi i32 [ %26, %33 ], [ %14, %22 ]
  br label %36

36:                                               ; preds = %34, %12
  %37 = phi i32 [ %13, %34 ], [ %13, %12 ]
  %38 = phi i32 [ %35, %34 ], [ %14, %12 ]
  br label %39

39:                                               ; preds = %36
  %40 = add nsw i32 %37, 1
  %41 = icmp sle i32 %40, 12
  br i1 %41, label %12, label %._crit_edge, !llvm.loop !12

._crit_edge:                                      ; preds = %39
  %split = phi i32 [ %38, %39 ]
  %split5 = phi i32 [ %40, %39 ]
  br label %42

42:                                               ; preds = %._crit_edge, %1
  %.lcssa3 = phi i32 [ %split, %._crit_edge ], [ %.promoted2, %1 ]
  %.lcssa = phi i32 [ %split5, %._crit_edge ], [ %.promoted, %1 ]
  store i32 %.lcssa, ptr %4, align 4
  store i32 %.lcssa3, ptr %5, align 4
  store i32 0, ptr %2, align 4
  br label %43

43:                                               ; preds = %42, %31
  %44 = load i32, ptr %2, align 4
  ret i32 %44
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Puzzle() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, ptr %4, align 4
  %.promoted = load i32, ptr %4, align 4
  %5 = icmp sle i32 %.promoted, 511
  br i1 %5, label %.lr.ph, label %13

.lr.ph:                                           ; preds = %0
  br label %6

6:                                                ; preds = %.lr.ph, %10
  %7 = phi i32 [ %.promoted, %.lr.ph ], [ %11, %10 ]
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %8
  store i32 1, ptr %9, align 4
  br label %10

10:                                               ; preds = %6
  %11 = add nsw i32 %7, 1
  %12 = icmp sle i32 %11, 511
  br i1 %12, label %6, label %._crit_edge, !llvm.loop !13

._crit_edge:                                      ; preds = %10
  %split = phi i32 [ %11, %10 ]
  br label %13

13:                                               ; preds = %._crit_edge, %0
  %.lcssa = phi i32 [ %split, %._crit_edge ], [ %.promoted, %0 ]
  store i32 %.lcssa, ptr %4, align 4
  store i32 1, ptr %1, align 4
  %.promoted7 = load i32, ptr %1, align 4
  %.promoted9 = load i32, ptr %2, align 4
  %.promoted11 = load i32, ptr %3, align 4
  %14 = icmp sle i32 %.promoted7, 5
  br i1 %14, label %.lr.ph177, label %38

.lr.ph177:                                        ; preds = %13
  br label %15

15:                                               ; preds = %.lr.ph177, %35
  %16 = phi i32 [ %.promoted7, %.lr.ph177 ], [ %36, %35 ]
  br label %17

17:                                               ; preds = %15, %31
  %18 = phi i32 [ 1, %15 ], [ %32, %31 ]
  br label %19

19:                                               ; preds = %17, %27
  %20 = phi i32 [ 1, %17 ], [ %28, %27 ]
  %21 = mul nsw i32 8, %20
  %22 = add nsw i32 %18, %21
  %23 = mul nsw i32 8, %22
  %24 = add nsw i32 %16, %23
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %25
  store i32 0, ptr %26, align 4
  br label %27

27:                                               ; preds = %19
  %28 = add nsw i32 %20, 1
  %29 = icmp sle i32 %28, 5
  br i1 %29, label %19, label %30, !llvm.loop !14

30:                                               ; preds = %27
  %.lcssa2 = phi i32 [ %28, %27 ]
  br label %31

31:                                               ; preds = %30
  %32 = add nsw i32 %18, 1
  %33 = icmp sle i32 %32, 5
  br i1 %33, label %17, label %34, !llvm.loop !15

34:                                               ; preds = %31
  %.lcssa26.lcssa = phi i32 [ %.lcssa2, %31 ]
  %.lcssa4 = phi i32 [ %32, %31 ]
  br label %35

35:                                               ; preds = %34
  %36 = add nsw i32 %16, 1
  %37 = icmp sle i32 %36, 5
  br i1 %37, label %15, label %._crit_edge178, !llvm.loop !16

._crit_edge178:                                   ; preds = %35
  %split179 = phi i32 [ %.lcssa26.lcssa, %35 ]
  %split180 = phi i32 [ %.lcssa4, %35 ]
  %split181 = phi i32 [ %36, %35 ]
  br label %38

38:                                               ; preds = %._crit_edge178, %13
  %.lcssa26.lcssa12.lcssa = phi i32 [ %split179, %._crit_edge178 ], [ %.promoted11, %13 ]
  %.lcssa410.lcssa = phi i32 [ %split180, %._crit_edge178 ], [ %.promoted9, %13 ]
  %.lcssa8 = phi i32 [ %split181, %._crit_edge178 ], [ %.promoted7, %13 ]
  store i32 %.lcssa8, ptr %1, align 4
  store i32 %.lcssa410.lcssa, ptr %2, align 4
  store i32 %.lcssa26.lcssa12.lcssa, ptr %3, align 4
  store i32 0, ptr %1, align 4
  %.promoted15 = load i32, ptr %1, align 4
  %.promoted17 = load i32, ptr %4, align 4
  %39 = icmp sle i32 %.promoted15, 12
  br i1 %39, label %.lr.ph183, label %55

.lr.ph183:                                        ; preds = %38
  br label %40

40:                                               ; preds = %.lr.ph183, %52
  %41 = phi i32 [ %.promoted15, %.lr.ph183 ], [ %53, %52 ]
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [13 x [512 x i32]], ptr @p, i64 0, i64 %42
  br label %44

44:                                               ; preds = %40, %48
  %45 = phi i32 [ 0, %40 ], [ %49, %48 ]
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [512 x i32], ptr %43, i64 0, i64 %46
  store i32 0, ptr %47, align 4
  br label %48

48:                                               ; preds = %44
  %49 = add nsw i32 %45, 1
  %50 = icmp sle i32 %49, 511
  br i1 %50, label %44, label %51, !llvm.loop !17

51:                                               ; preds = %48
  %.lcssa14 = phi i32 [ %49, %48 ]
  br label %52

52:                                               ; preds = %51
  %53 = add nsw i32 %41, 1
  %54 = icmp sle i32 %53, 12
  br i1 %54, label %40, label %._crit_edge184, !llvm.loop !18

._crit_edge184:                                   ; preds = %52
  %split185 = phi i32 [ %.lcssa14, %52 ]
  %split186 = phi i32 [ %53, %52 ]
  br label %55

55:                                               ; preds = %._crit_edge184, %38
  %.lcssa1418.lcssa = phi i32 [ %split185, %._crit_edge184 ], [ %.promoted17, %38 ]
  %.lcssa16 = phi i32 [ %split186, %._crit_edge184 ], [ %.promoted15, %38 ]
  store i32 %.lcssa16, ptr %1, align 4
  store i32 %.lcssa1418.lcssa, ptr %4, align 4
  store i32 0, ptr %1, align 4
  %.promoted25 = load i32, ptr %1, align 4
  %.promoted28 = load i32, ptr %2, align 4
  %.promoted30 = load i32, ptr %3, align 4
  %56 = icmp sle i32 %.promoted25, 3
  br i1 %56, label %.lr.ph188, label %80

.lr.ph188:                                        ; preds = %55
  br label %57

57:                                               ; preds = %.lr.ph188, %77
  %58 = phi i32 [ %.promoted25, %.lr.ph188 ], [ %78, %77 ]
  br label %59

59:                                               ; preds = %57, %73
  %60 = phi i32 [ 0, %57 ], [ %74, %73 ]
  br label %61

61:                                               ; preds = %59, %69
  %62 = phi i32 [ 0, %59 ], [ %70, %69 ]
  %63 = mul nsw i32 8, %62
  %64 = add nsw i32 %60, %63
  %65 = mul nsw i32 8, %64
  %66 = add nsw i32 %58, %65
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [512 x i32], ptr @p, i64 0, i64 %67
  store i32 1, ptr %68, align 4
  br label %69

69:                                               ; preds = %61
  %70 = add nsw i32 %62, 1
  %71 = icmp sle i32 %70, 0
  br i1 %71, label %61, label %72, !llvm.loop !19

72:                                               ; preds = %69
  %.lcssa20 = phi i32 [ %70, %69 ]
  br label %73

73:                                               ; preds = %72
  %74 = add nsw i32 %60, 1
  %75 = icmp sle i32 %74, 1
  br i1 %75, label %59, label %76, !llvm.loop !20

76:                                               ; preds = %73
  %.lcssa2024.lcssa = phi i32 [ %.lcssa20, %73 ]
  %.lcssa22 = phi i32 [ %74, %73 ]
  br label %77

77:                                               ; preds = %76
  %78 = add nsw i32 %58, 1
  %79 = icmp sle i32 %78, 3
  br i1 %79, label %57, label %._crit_edge189, !llvm.loop !21

._crit_edge189:                                   ; preds = %77
  %split190 = phi i32 [ %.lcssa2024.lcssa, %77 ]
  %split191 = phi i32 [ %.lcssa22, %77 ]
  %split192 = phi i32 [ %78, %77 ]
  br label %80

80:                                               ; preds = %._crit_edge189, %55
  %.lcssa2024.lcssa31.lcssa = phi i32 [ %split190, %._crit_edge189 ], [ %.promoted30, %55 ]
  %.lcssa2229.lcssa = phi i32 [ %split191, %._crit_edge189 ], [ %.promoted28, %55 ]
  %.lcssa27 = phi i32 [ %split192, %._crit_edge189 ], [ %.promoted25, %55 ]
  store i32 %.lcssa27, ptr %1, align 4
  store i32 %.lcssa2229.lcssa, ptr %2, align 4
  store i32 %.lcssa2024.lcssa31.lcssa, ptr %3, align 4
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  store i32 0, ptr %1, align 4
  %.promoted38 = load i32, ptr %1, align 4
  %.promoted40 = load i32, ptr %2, align 4
  %.promoted42 = load i32, ptr %3, align 4
  %81 = icmp sle i32 %.promoted38, 1
  br i1 %81, label %.lr.ph194, label %105

.lr.ph194:                                        ; preds = %80
  br label %82

82:                                               ; preds = %.lr.ph194, %102
  %83 = phi i32 [ %.promoted38, %.lr.ph194 ], [ %103, %102 ]
  br label %84

84:                                               ; preds = %82, %98
  %85 = phi i32 [ 0, %82 ], [ %99, %98 ]
  br label %86

86:                                               ; preds = %84, %94
  %87 = phi i32 [ 0, %84 ], [ %95, %94 ]
  %88 = mul nsw i32 8, %87
  %89 = add nsw i32 %85, %88
  %90 = mul nsw i32 8, %89
  %91 = add nsw i32 %83, %90
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 0, i64 %92
  store i32 1, ptr %93, align 4
  br label %94

94:                                               ; preds = %86
  %95 = add nsw i32 %87, 1
  %96 = icmp sle i32 %95, 3
  br i1 %96, label %86, label %97, !llvm.loop !22

97:                                               ; preds = %94
  %.lcssa33 = phi i32 [ %95, %94 ]
  br label %98

98:                                               ; preds = %97
  %99 = add nsw i32 %85, 1
  %100 = icmp sle i32 %99, 0
  br i1 %100, label %84, label %101, !llvm.loop !23

101:                                              ; preds = %98
  %.lcssa3337.lcssa = phi i32 [ %.lcssa33, %98 ]
  %.lcssa35 = phi i32 [ %99, %98 ]
  br label %102

102:                                              ; preds = %101
  %103 = add nsw i32 %83, 1
  %104 = icmp sle i32 %103, 1
  br i1 %104, label %82, label %._crit_edge195, !llvm.loop !24

._crit_edge195:                                   ; preds = %102
  %split196 = phi i32 [ %.lcssa3337.lcssa, %102 ]
  %split197 = phi i32 [ %.lcssa35, %102 ]
  %split198 = phi i32 [ %103, %102 ]
  br label %105

105:                                              ; preds = %._crit_edge195, %80
  %.lcssa3337.lcssa43.lcssa = phi i32 [ %split196, %._crit_edge195 ], [ %.promoted42, %80 ]
  %.lcssa3541.lcssa = phi i32 [ %split197, %._crit_edge195 ], [ %.promoted40, %80 ]
  %.lcssa39 = phi i32 [ %split198, %._crit_edge195 ], [ %.promoted38, %80 ]
  store i32 %.lcssa39, ptr %1, align 4
  store i32 %.lcssa3541.lcssa, ptr %2, align 4
  store i32 %.lcssa3337.lcssa43.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  store i32 0, ptr %1, align 4
  %.promoted50 = load i32, ptr %1, align 4
  %.promoted52 = load i32, ptr %2, align 4
  %.promoted54 = load i32, ptr %3, align 4
  %106 = icmp sle i32 %.promoted50, 0
  br i1 %106, label %.lr.ph200, label %130

.lr.ph200:                                        ; preds = %105
  br label %107

107:                                              ; preds = %.lr.ph200, %127
  %108 = phi i32 [ %.promoted50, %.lr.ph200 ], [ %128, %127 ]
  br label %109

109:                                              ; preds = %107, %123
  %110 = phi i32 [ 0, %107 ], [ %124, %123 ]
  br label %111

111:                                              ; preds = %109, %119
  %112 = phi i32 [ 0, %109 ], [ %120, %119 ]
  %113 = mul nsw i32 8, %112
  %114 = add nsw i32 %110, %113
  %115 = mul nsw i32 8, %114
  %116 = add nsw i32 %108, %115
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 0, i64 %117
  store i32 1, ptr %118, align 4
  br label %119

119:                                              ; preds = %111
  %120 = add nsw i32 %112, 1
  %121 = icmp sle i32 %120, 1
  br i1 %121, label %111, label %122, !llvm.loop !25

122:                                              ; preds = %119
  %.lcssa45 = phi i32 [ %120, %119 ]
  br label %123

123:                                              ; preds = %122
  %124 = add nsw i32 %110, 1
  %125 = icmp sle i32 %124, 3
  br i1 %125, label %109, label %126, !llvm.loop !26

126:                                              ; preds = %123
  %.lcssa4549.lcssa = phi i32 [ %.lcssa45, %123 ]
  %.lcssa47 = phi i32 [ %124, %123 ]
  br label %127

127:                                              ; preds = %126
  %128 = add nsw i32 %108, 1
  %129 = icmp sle i32 %128, 0
  br i1 %129, label %107, label %._crit_edge201, !llvm.loop !27

._crit_edge201:                                   ; preds = %127
  %split202 = phi i32 [ %.lcssa4549.lcssa, %127 ]
  %split203 = phi i32 [ %.lcssa47, %127 ]
  %split204 = phi i32 [ %128, %127 ]
  br label %130

130:                                              ; preds = %._crit_edge201, %105
  %.lcssa4549.lcssa55.lcssa = phi i32 [ %split202, %._crit_edge201 ], [ %.promoted54, %105 ]
  %.lcssa4753.lcssa = phi i32 [ %split203, %._crit_edge201 ], [ %.promoted52, %105 ]
  %.lcssa51 = phi i32 [ %split204, %._crit_edge201 ], [ %.promoted50, %105 ]
  store i32 %.lcssa51, ptr %1, align 4
  store i32 %.lcssa4753.lcssa, ptr %2, align 4
  store i32 %.lcssa4549.lcssa55.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  store i32 0, ptr %1, align 4
  %.promoted62 = load i32, ptr %1, align 4
  %.promoted64 = load i32, ptr %2, align 4
  %.promoted66 = load i32, ptr %3, align 4
  %131 = icmp sle i32 %.promoted62, 1
  br i1 %131, label %.lr.ph206, label %155

.lr.ph206:                                        ; preds = %130
  br label %132

132:                                              ; preds = %.lr.ph206, %152
  %133 = phi i32 [ %.promoted62, %.lr.ph206 ], [ %153, %152 ]
  br label %134

134:                                              ; preds = %132, %148
  %135 = phi i32 [ 0, %132 ], [ %149, %148 ]
  br label %136

136:                                              ; preds = %134, %144
  %137 = phi i32 [ 0, %134 ], [ %145, %144 ]
  %138 = mul nsw i32 8, %137
  %139 = add nsw i32 %135, %138
  %140 = mul nsw i32 8, %139
  %141 = add nsw i32 %133, %140
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 0, i64 %142
  store i32 1, ptr %143, align 4
  br label %144

144:                                              ; preds = %136
  %145 = add nsw i32 %137, 1
  %146 = icmp sle i32 %145, 0
  br i1 %146, label %136, label %147, !llvm.loop !28

147:                                              ; preds = %144
  %.lcssa57 = phi i32 [ %145, %144 ]
  br label %148

148:                                              ; preds = %147
  %149 = add nsw i32 %135, 1
  %150 = icmp sle i32 %149, 3
  br i1 %150, label %134, label %151, !llvm.loop !29

151:                                              ; preds = %148
  %.lcssa5761.lcssa = phi i32 [ %.lcssa57, %148 ]
  %.lcssa59 = phi i32 [ %149, %148 ]
  br label %152

152:                                              ; preds = %151
  %153 = add nsw i32 %133, 1
  %154 = icmp sle i32 %153, 1
  br i1 %154, label %132, label %._crit_edge207, !llvm.loop !30

._crit_edge207:                                   ; preds = %152
  %split208 = phi i32 [ %.lcssa5761.lcssa, %152 ]
  %split209 = phi i32 [ %.lcssa59, %152 ]
  %split210 = phi i32 [ %153, %152 ]
  br label %155

155:                                              ; preds = %._crit_edge207, %130
  %.lcssa5761.lcssa67.lcssa = phi i32 [ %split208, %._crit_edge207 ], [ %.promoted66, %130 ]
  %.lcssa5965.lcssa = phi i32 [ %split209, %._crit_edge207 ], [ %.promoted64, %130 ]
  %.lcssa63 = phi i32 [ %split210, %._crit_edge207 ], [ %.promoted62, %130 ]
  store i32 %.lcssa63, ptr %1, align 4
  store i32 %.lcssa5965.lcssa, ptr %2, align 4
  store i32 %.lcssa5761.lcssa67.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  store i32 0, ptr %1, align 4
  %.promoted74 = load i32, ptr %1, align 4
  %.promoted76 = load i32, ptr %2, align 4
  %.promoted78 = load i32, ptr %3, align 4
  %156 = icmp sle i32 %.promoted74, 3
  br i1 %156, label %.lr.ph212, label %180

.lr.ph212:                                        ; preds = %155
  br label %157

157:                                              ; preds = %.lr.ph212, %177
  %158 = phi i32 [ %.promoted74, %.lr.ph212 ], [ %178, %177 ]
  br label %159

159:                                              ; preds = %157, %173
  %160 = phi i32 [ 0, %157 ], [ %174, %173 ]
  br label %161

161:                                              ; preds = %159, %169
  %162 = phi i32 [ 0, %159 ], [ %170, %169 ]
  %163 = mul nsw i32 8, %162
  %164 = add nsw i32 %160, %163
  %165 = mul nsw i32 8, %164
  %166 = add nsw i32 %158, %165
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 0, i64 %167
  store i32 1, ptr %168, align 4
  br label %169

169:                                              ; preds = %161
  %170 = add nsw i32 %162, 1
  %171 = icmp sle i32 %170, 1
  br i1 %171, label %161, label %172, !llvm.loop !31

172:                                              ; preds = %169
  %.lcssa69 = phi i32 [ %170, %169 ]
  br label %173

173:                                              ; preds = %172
  %174 = add nsw i32 %160, 1
  %175 = icmp sle i32 %174, 0
  br i1 %175, label %159, label %176, !llvm.loop !32

176:                                              ; preds = %173
  %.lcssa6973.lcssa = phi i32 [ %.lcssa69, %173 ]
  %.lcssa71 = phi i32 [ %174, %173 ]
  br label %177

177:                                              ; preds = %176
  %178 = add nsw i32 %158, 1
  %179 = icmp sle i32 %178, 3
  br i1 %179, label %157, label %._crit_edge213, !llvm.loop !33

._crit_edge213:                                   ; preds = %177
  %split214 = phi i32 [ %.lcssa6973.lcssa, %177 ]
  %split215 = phi i32 [ %.lcssa71, %177 ]
  %split216 = phi i32 [ %178, %177 ]
  br label %180

180:                                              ; preds = %._crit_edge213, %155
  %.lcssa6973.lcssa79.lcssa = phi i32 [ %split214, %._crit_edge213 ], [ %.promoted78, %155 ]
  %.lcssa7177.lcssa = phi i32 [ %split215, %._crit_edge213 ], [ %.promoted76, %155 ]
  %.lcssa75 = phi i32 [ %split216, %._crit_edge213 ], [ %.promoted74, %155 ]
  store i32 %.lcssa75, ptr %1, align 4
  store i32 %.lcssa7177.lcssa, ptr %2, align 4
  store i32 %.lcssa6973.lcssa79.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  store i32 0, ptr %1, align 4
  %.promoted86 = load i32, ptr %1, align 4
  %.promoted88 = load i32, ptr %2, align 4
  %.promoted90 = load i32, ptr %3, align 4
  %181 = icmp sle i32 %.promoted86, 0
  br i1 %181, label %.lr.ph218, label %205

.lr.ph218:                                        ; preds = %180
  br label %182

182:                                              ; preds = %.lr.ph218, %202
  %183 = phi i32 [ %.promoted86, %.lr.ph218 ], [ %203, %202 ]
  br label %184

184:                                              ; preds = %182, %198
  %185 = phi i32 [ 0, %182 ], [ %199, %198 ]
  br label %186

186:                                              ; preds = %184, %194
  %187 = phi i32 [ 0, %184 ], [ %195, %194 ]
  %188 = mul nsw i32 8, %187
  %189 = add nsw i32 %185, %188
  %190 = mul nsw i32 8, %189
  %191 = add nsw i32 %183, %190
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 0, i64 %192
  store i32 1, ptr %193, align 4
  br label %194

194:                                              ; preds = %186
  %195 = add nsw i32 %187, 1
  %196 = icmp sle i32 %195, 3
  br i1 %196, label %186, label %197, !llvm.loop !34

197:                                              ; preds = %194
  %.lcssa81 = phi i32 [ %195, %194 ]
  br label %198

198:                                              ; preds = %197
  %199 = add nsw i32 %185, 1
  %200 = icmp sle i32 %199, 1
  br i1 %200, label %184, label %201, !llvm.loop !35

201:                                              ; preds = %198
  %.lcssa8185.lcssa = phi i32 [ %.lcssa81, %198 ]
  %.lcssa83 = phi i32 [ %199, %198 ]
  br label %202

202:                                              ; preds = %201
  %203 = add nsw i32 %183, 1
  %204 = icmp sle i32 %203, 0
  br i1 %204, label %182, label %._crit_edge219, !llvm.loop !36

._crit_edge219:                                   ; preds = %202
  %split220 = phi i32 [ %.lcssa8185.lcssa, %202 ]
  %split221 = phi i32 [ %.lcssa83, %202 ]
  %split222 = phi i32 [ %203, %202 ]
  br label %205

205:                                              ; preds = %._crit_edge219, %180
  %.lcssa8185.lcssa91.lcssa = phi i32 [ %split220, %._crit_edge219 ], [ %.promoted90, %180 ]
  %.lcssa8389.lcssa = phi i32 [ %split221, %._crit_edge219 ], [ %.promoted88, %180 ]
  %.lcssa87 = phi i32 [ %split222, %._crit_edge219 ], [ %.promoted86, %180 ]
  store i32 %.lcssa87, ptr %1, align 4
  store i32 %.lcssa8389.lcssa, ptr %2, align 4
  store i32 %.lcssa8185.lcssa91.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  store i32 0, ptr %1, align 4
  %.promoted98 = load i32, ptr %1, align 4
  %.promoted100 = load i32, ptr %2, align 4
  %.promoted102 = load i32, ptr %3, align 4
  %206 = icmp sle i32 %.promoted98, 2
  br i1 %206, label %.lr.ph224, label %230

.lr.ph224:                                        ; preds = %205
  br label %207

207:                                              ; preds = %.lr.ph224, %227
  %208 = phi i32 [ %.promoted98, %.lr.ph224 ], [ %228, %227 ]
  br label %209

209:                                              ; preds = %207, %223
  %210 = phi i32 [ 0, %207 ], [ %224, %223 ]
  br label %211

211:                                              ; preds = %209, %219
  %212 = phi i32 [ 0, %209 ], [ %220, %219 ]
  %213 = mul nsw i32 8, %212
  %214 = add nsw i32 %210, %213
  %215 = mul nsw i32 8, %214
  %216 = add nsw i32 %208, %215
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 0, i64 %217
  store i32 1, ptr %218, align 4
  br label %219

219:                                              ; preds = %211
  %220 = add nsw i32 %212, 1
  %221 = icmp sle i32 %220, 0
  br i1 %221, label %211, label %222, !llvm.loop !37

222:                                              ; preds = %219
  %.lcssa93 = phi i32 [ %220, %219 ]
  br label %223

223:                                              ; preds = %222
  %224 = add nsw i32 %210, 1
  %225 = icmp sle i32 %224, 0
  br i1 %225, label %209, label %226, !llvm.loop !38

226:                                              ; preds = %223
  %.lcssa9397.lcssa = phi i32 [ %.lcssa93, %223 ]
  %.lcssa95 = phi i32 [ %224, %223 ]
  br label %227

227:                                              ; preds = %226
  %228 = add nsw i32 %208, 1
  %229 = icmp sle i32 %228, 2
  br i1 %229, label %207, label %._crit_edge225, !llvm.loop !39

._crit_edge225:                                   ; preds = %227
  %split226 = phi i32 [ %.lcssa9397.lcssa, %227 ]
  %split227 = phi i32 [ %.lcssa95, %227 ]
  %split228 = phi i32 [ %228, %227 ]
  br label %230

230:                                              ; preds = %._crit_edge225, %205
  %.lcssa9397.lcssa103.lcssa = phi i32 [ %split226, %._crit_edge225 ], [ %.promoted102, %205 ]
  %.lcssa95101.lcssa = phi i32 [ %split227, %._crit_edge225 ], [ %.promoted100, %205 ]
  %.lcssa99 = phi i32 [ %split228, %._crit_edge225 ], [ %.promoted98, %205 ]
  store i32 %.lcssa99, ptr %1, align 4
  store i32 %.lcssa95101.lcssa, ptr %2, align 4
  store i32 %.lcssa9397.lcssa103.lcssa, ptr %3, align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  store i32 0, ptr %1, align 4
  %.promoted110 = load i32, ptr %1, align 4
  %.promoted112 = load i32, ptr %2, align 4
  %.promoted114 = load i32, ptr %3, align 4
  %231 = icmp sle i32 %.promoted110, 0
  br i1 %231, label %.lr.ph230, label %255

.lr.ph230:                                        ; preds = %230
  br label %232

232:                                              ; preds = %.lr.ph230, %252
  %233 = phi i32 [ %.promoted110, %.lr.ph230 ], [ %253, %252 ]
  br label %234

234:                                              ; preds = %232, %248
  %235 = phi i32 [ 0, %232 ], [ %249, %248 ]
  br label %236

236:                                              ; preds = %234, %244
  %237 = phi i32 [ 0, %234 ], [ %245, %244 ]
  %238 = mul nsw i32 8, %237
  %239 = add nsw i32 %235, %238
  %240 = mul nsw i32 8, %239
  %241 = add nsw i32 %233, %240
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 0, i64 %242
  store i32 1, ptr %243, align 4
  br label %244

244:                                              ; preds = %236
  %245 = add nsw i32 %237, 1
  %246 = icmp sle i32 %245, 0
  br i1 %246, label %236, label %247, !llvm.loop !40

247:                                              ; preds = %244
  %.lcssa105 = phi i32 [ %245, %244 ]
  br label %248

248:                                              ; preds = %247
  %249 = add nsw i32 %235, 1
  %250 = icmp sle i32 %249, 2
  br i1 %250, label %234, label %251, !llvm.loop !41

251:                                              ; preds = %248
  %.lcssa105109.lcssa = phi i32 [ %.lcssa105, %248 ]
  %.lcssa107 = phi i32 [ %249, %248 ]
  br label %252

252:                                              ; preds = %251
  %253 = add nsw i32 %233, 1
  %254 = icmp sle i32 %253, 0
  br i1 %254, label %232, label %._crit_edge231, !llvm.loop !42

._crit_edge231:                                   ; preds = %252
  %split232 = phi i32 [ %.lcssa105109.lcssa, %252 ]
  %split233 = phi i32 [ %.lcssa107, %252 ]
  %split234 = phi i32 [ %253, %252 ]
  br label %255

255:                                              ; preds = %._crit_edge231, %230
  %.lcssa105109.lcssa115.lcssa = phi i32 [ %split232, %._crit_edge231 ], [ %.promoted114, %230 ]
  %.lcssa107113.lcssa = phi i32 [ %split233, %._crit_edge231 ], [ %.promoted112, %230 ]
  %.lcssa111 = phi i32 [ %split234, %._crit_edge231 ], [ %.promoted110, %230 ]
  store i32 %.lcssa111, ptr %1, align 4
  store i32 %.lcssa107113.lcssa, ptr %2, align 4
  store i32 %.lcssa105109.lcssa115.lcssa, ptr %3, align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  store i32 0, ptr %1, align 4
  %.promoted122 = load i32, ptr %1, align 4
  %.promoted124 = load i32, ptr %2, align 4
  %.promoted126 = load i32, ptr %3, align 4
  %256 = icmp sle i32 %.promoted122, 0
  br i1 %256, label %.lr.ph236, label %280

.lr.ph236:                                        ; preds = %255
  br label %257

257:                                              ; preds = %.lr.ph236, %277
  %258 = phi i32 [ %.promoted122, %.lr.ph236 ], [ %278, %277 ]
  br label %259

259:                                              ; preds = %257, %273
  %260 = phi i32 [ 0, %257 ], [ %274, %273 ]
  br label %261

261:                                              ; preds = %259, %269
  %262 = phi i32 [ 0, %259 ], [ %270, %269 ]
  %263 = mul nsw i32 8, %262
  %264 = add nsw i32 %260, %263
  %265 = mul nsw i32 8, %264
  %266 = add nsw i32 %258, %265
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 0, i64 %267
  store i32 1, ptr %268, align 4
  br label %269

269:                                              ; preds = %261
  %270 = add nsw i32 %262, 1
  %271 = icmp sle i32 %270, 2
  br i1 %271, label %261, label %272, !llvm.loop !43

272:                                              ; preds = %269
  %.lcssa117 = phi i32 [ %270, %269 ]
  br label %273

273:                                              ; preds = %272
  %274 = add nsw i32 %260, 1
  %275 = icmp sle i32 %274, 0
  br i1 %275, label %259, label %276, !llvm.loop !44

276:                                              ; preds = %273
  %.lcssa117121.lcssa = phi i32 [ %.lcssa117, %273 ]
  %.lcssa119 = phi i32 [ %274, %273 ]
  br label %277

277:                                              ; preds = %276
  %278 = add nsw i32 %258, 1
  %279 = icmp sle i32 %278, 0
  br i1 %279, label %257, label %._crit_edge237, !llvm.loop !45

._crit_edge237:                                   ; preds = %277
  %split238 = phi i32 [ %.lcssa117121.lcssa, %277 ]
  %split239 = phi i32 [ %.lcssa119, %277 ]
  %split240 = phi i32 [ %278, %277 ]
  br label %280

280:                                              ; preds = %._crit_edge237, %255
  %.lcssa117121.lcssa127.lcssa = phi i32 [ %split238, %._crit_edge237 ], [ %.promoted126, %255 ]
  %.lcssa119125.lcssa = phi i32 [ %split239, %._crit_edge237 ], [ %.promoted124, %255 ]
  %.lcssa123 = phi i32 [ %split240, %._crit_edge237 ], [ %.promoted122, %255 ]
  store i32 %.lcssa123, ptr %1, align 4
  store i32 %.lcssa119125.lcssa, ptr %2, align 4
  store i32 %.lcssa117121.lcssa127.lcssa, ptr %3, align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  store i32 0, ptr %1, align 4
  %.promoted134 = load i32, ptr %1, align 4
  %.promoted136 = load i32, ptr %2, align 4
  %.promoted138 = load i32, ptr %3, align 4
  %281 = icmp sle i32 %.promoted134, 1
  br i1 %281, label %.lr.ph242, label %305

.lr.ph242:                                        ; preds = %280
  br label %282

282:                                              ; preds = %.lr.ph242, %302
  %283 = phi i32 [ %.promoted134, %.lr.ph242 ], [ %303, %302 ]
  br label %284

284:                                              ; preds = %282, %298
  %285 = phi i32 [ 0, %282 ], [ %299, %298 ]
  br label %286

286:                                              ; preds = %284, %294
  %287 = phi i32 [ 0, %284 ], [ %295, %294 ]
  %288 = mul nsw i32 8, %287
  %289 = add nsw i32 %285, %288
  %290 = mul nsw i32 8, %289
  %291 = add nsw i32 %283, %290
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 0, i64 %292
  store i32 1, ptr %293, align 4
  br label %294

294:                                              ; preds = %286
  %295 = add nsw i32 %287, 1
  %296 = icmp sle i32 %295, 0
  br i1 %296, label %286, label %297, !llvm.loop !46

297:                                              ; preds = %294
  %.lcssa129 = phi i32 [ %295, %294 ]
  br label %298

298:                                              ; preds = %297
  %299 = add nsw i32 %285, 1
  %300 = icmp sle i32 %299, 1
  br i1 %300, label %284, label %301, !llvm.loop !47

301:                                              ; preds = %298
  %.lcssa129133.lcssa = phi i32 [ %.lcssa129, %298 ]
  %.lcssa131 = phi i32 [ %299, %298 ]
  br label %302

302:                                              ; preds = %301
  %303 = add nsw i32 %283, 1
  %304 = icmp sle i32 %303, 1
  br i1 %304, label %282, label %._crit_edge243, !llvm.loop !48

._crit_edge243:                                   ; preds = %302
  %split244 = phi i32 [ %.lcssa129133.lcssa, %302 ]
  %split245 = phi i32 [ %.lcssa131, %302 ]
  %split246 = phi i32 [ %303, %302 ]
  br label %305

305:                                              ; preds = %._crit_edge243, %280
  %.lcssa129133.lcssa139.lcssa = phi i32 [ %split244, %._crit_edge243 ], [ %.promoted138, %280 ]
  %.lcssa131137.lcssa = phi i32 [ %split245, %._crit_edge243 ], [ %.promoted136, %280 ]
  %.lcssa135 = phi i32 [ %split246, %._crit_edge243 ], [ %.promoted134, %280 ]
  store i32 %.lcssa135, ptr %1, align 4
  store i32 %.lcssa131137.lcssa, ptr %2, align 4
  store i32 %.lcssa129133.lcssa139.lcssa, ptr %3, align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  store i32 0, ptr %1, align 4
  %.promoted146 = load i32, ptr %1, align 4
  %.promoted148 = load i32, ptr %2, align 4
  %.promoted150 = load i32, ptr %3, align 4
  %306 = icmp sle i32 %.promoted146, 1
  br i1 %306, label %.lr.ph248, label %330

.lr.ph248:                                        ; preds = %305
  br label %307

307:                                              ; preds = %.lr.ph248, %327
  %308 = phi i32 [ %.promoted146, %.lr.ph248 ], [ %328, %327 ]
  br label %309

309:                                              ; preds = %307, %323
  %310 = phi i32 [ 0, %307 ], [ %324, %323 ]
  br label %311

311:                                              ; preds = %309, %319
  %312 = phi i32 [ 0, %309 ], [ %320, %319 ]
  %313 = mul nsw i32 8, %312
  %314 = add nsw i32 %310, %313
  %315 = mul nsw i32 8, %314
  %316 = add nsw i32 %308, %315
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 0, i64 %317
  store i32 1, ptr %318, align 4
  br label %319

319:                                              ; preds = %311
  %320 = add nsw i32 %312, 1
  %321 = icmp sle i32 %320, 1
  br i1 %321, label %311, label %322, !llvm.loop !49

322:                                              ; preds = %319
  %.lcssa141 = phi i32 [ %320, %319 ]
  br label %323

323:                                              ; preds = %322
  %324 = add nsw i32 %310, 1
  %325 = icmp sle i32 %324, 0
  br i1 %325, label %309, label %326, !llvm.loop !50

326:                                              ; preds = %323
  %.lcssa141145.lcssa = phi i32 [ %.lcssa141, %323 ]
  %.lcssa143 = phi i32 [ %324, %323 ]
  br label %327

327:                                              ; preds = %326
  %328 = add nsw i32 %308, 1
  %329 = icmp sle i32 %328, 1
  br i1 %329, label %307, label %._crit_edge249, !llvm.loop !51

._crit_edge249:                                   ; preds = %327
  %split250 = phi i32 [ %.lcssa141145.lcssa, %327 ]
  %split251 = phi i32 [ %.lcssa143, %327 ]
  %split252 = phi i32 [ %328, %327 ]
  br label %330

330:                                              ; preds = %._crit_edge249, %305
  %.lcssa141145.lcssa151.lcssa = phi i32 [ %split250, %._crit_edge249 ], [ %.promoted150, %305 ]
  %.lcssa143149.lcssa = phi i32 [ %split251, %._crit_edge249 ], [ %.promoted148, %305 ]
  %.lcssa147 = phi i32 [ %split252, %._crit_edge249 ], [ %.promoted146, %305 ]
  store i32 %.lcssa147, ptr %1, align 4
  store i32 %.lcssa143149.lcssa, ptr %2, align 4
  store i32 %.lcssa141145.lcssa151.lcssa, ptr %3, align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  store i32 0, ptr %1, align 4
  %.promoted158 = load i32, ptr %1, align 4
  %.promoted160 = load i32, ptr %2, align 4
  %.promoted162 = load i32, ptr %3, align 4
  %331 = icmp sle i32 %.promoted158, 0
  br i1 %331, label %.lr.ph254, label %355

.lr.ph254:                                        ; preds = %330
  br label %332

332:                                              ; preds = %.lr.ph254, %352
  %333 = phi i32 [ %.promoted158, %.lr.ph254 ], [ %353, %352 ]
  br label %334

334:                                              ; preds = %332, %348
  %335 = phi i32 [ 0, %332 ], [ %349, %348 ]
  br label %336

336:                                              ; preds = %334, %344
  %337 = phi i32 [ 0, %334 ], [ %345, %344 ]
  %338 = mul nsw i32 8, %337
  %339 = add nsw i32 %335, %338
  %340 = mul nsw i32 8, %339
  %341 = add nsw i32 %333, %340
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 0, i64 %342
  store i32 1, ptr %343, align 4
  br label %344

344:                                              ; preds = %336
  %345 = add nsw i32 %337, 1
  %346 = icmp sle i32 %345, 1
  br i1 %346, label %336, label %347, !llvm.loop !52

347:                                              ; preds = %344
  %.lcssa153 = phi i32 [ %345, %344 ]
  br label %348

348:                                              ; preds = %347
  %349 = add nsw i32 %335, 1
  %350 = icmp sle i32 %349, 1
  br i1 %350, label %334, label %351, !llvm.loop !53

351:                                              ; preds = %348
  %.lcssa153157.lcssa = phi i32 [ %.lcssa153, %348 ]
  %.lcssa155 = phi i32 [ %349, %348 ]
  br label %352

352:                                              ; preds = %351
  %353 = add nsw i32 %333, 1
  %354 = icmp sle i32 %353, 0
  br i1 %354, label %332, label %._crit_edge255, !llvm.loop !54

._crit_edge255:                                   ; preds = %352
  %split256 = phi i32 [ %.lcssa153157.lcssa, %352 ]
  %split257 = phi i32 [ %.lcssa155, %352 ]
  %split258 = phi i32 [ %353, %352 ]
  br label %355

355:                                              ; preds = %._crit_edge255, %330
  %.lcssa153157.lcssa163.lcssa = phi i32 [ %split256, %._crit_edge255 ], [ %.promoted162, %330 ]
  %.lcssa155161.lcssa = phi i32 [ %split257, %._crit_edge255 ], [ %.promoted160, %330 ]
  %.lcssa159 = phi i32 [ %split258, %._crit_edge255 ], [ %.promoted158, %330 ]
  store i32 %.lcssa159, ptr %1, align 4
  store i32 %.lcssa155161.lcssa, ptr %2, align 4
  store i32 %.lcssa153157.lcssa163.lcssa, ptr %3, align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  store i32 0, ptr %1, align 4
  %.promoted170 = load i32, ptr %1, align 4
  %.promoted172 = load i32, ptr %2, align 4
  %.promoted174 = load i32, ptr %3, align 4
  %356 = icmp sle i32 %.promoted170, 1
  br i1 %356, label %.lr.ph260, label %380

.lr.ph260:                                        ; preds = %355
  br label %357

357:                                              ; preds = %.lr.ph260, %377
  %358 = phi i32 [ %.promoted170, %.lr.ph260 ], [ %378, %377 ]
  br label %359

359:                                              ; preds = %357, %373
  %360 = phi i32 [ 0, %357 ], [ %374, %373 ]
  br label %361

361:                                              ; preds = %359, %369
  %362 = phi i32 [ 0, %359 ], [ %370, %369 ]
  %363 = mul nsw i32 8, %362
  %364 = add nsw i32 %360, %363
  %365 = mul nsw i32 8, %364
  %366 = add nsw i32 %358, %365
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 0, i64 %367
  store i32 1, ptr %368, align 4
  br label %369

369:                                              ; preds = %361
  %370 = add nsw i32 %362, 1
  %371 = icmp sle i32 %370, 1
  br i1 %371, label %361, label %372, !llvm.loop !55

372:                                              ; preds = %369
  %.lcssa165 = phi i32 [ %370, %369 ]
  br label %373

373:                                              ; preds = %372
  %374 = add nsw i32 %360, 1
  %375 = icmp sle i32 %374, 1
  br i1 %375, label %359, label %376, !llvm.loop !56

376:                                              ; preds = %373
  %.lcssa165169.lcssa = phi i32 [ %.lcssa165, %373 ]
  %.lcssa167 = phi i32 [ %374, %373 ]
  br label %377

377:                                              ; preds = %376
  %378 = add nsw i32 %358, 1
  %379 = icmp sle i32 %378, 1
  br i1 %379, label %357, label %._crit_edge261, !llvm.loop !57

._crit_edge261:                                   ; preds = %377
  %split262 = phi i32 [ %.lcssa165169.lcssa, %377 ]
  %split263 = phi i32 [ %.lcssa167, %377 ]
  %split264 = phi i32 [ %378, %377 ]
  br label %380

380:                                              ; preds = %._crit_edge261, %355
  %.lcssa165169.lcssa175.lcssa = phi i32 [ %split262, %._crit_edge261 ], [ %.promoted174, %355 ]
  %.lcssa167173.lcssa = phi i32 [ %split263, %._crit_edge261 ], [ %.promoted172, %355 ]
  %.lcssa171 = phi i32 [ %split264, %._crit_edge261 ], [ %.promoted170, %355 ]
  store i32 %.lcssa171, ptr %1, align 4
  store i32 %.lcssa167173.lcssa, ptr %2, align 4
  store i32 %.lcssa165169.lcssa175.lcssa, ptr %3, align 4
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 73, ptr %4, align 4
  store i32 0, ptr @kount, align 4
  %381 = load i32, ptr %4, align 4
  %382 = call i32 @Fit(i32 noundef 0, i32 noundef %381)
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %384, label %387

384:                                              ; preds = %380
  %385 = load i32, ptr %4, align 4
  %386 = call i32 @Place(i32 noundef 0, i32 noundef %385)
  store i32 %386, ptr @n, align 4
  br label %389

387:                                              ; preds = %380
  %388 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  br label %389

389:                                              ; preds = %387, %384
  %390 = load i32, ptr @n, align 4
  %391 = call i32 @Trial(i32 noundef %390)
  %392 = icmp ne i32 %391, 0
  br i1 %392, label %395, label %393

393:                                              ; preds = %389
  %394 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  br label %401

395:                                              ; preds = %389
  %396 = load i32, ptr @kount, align 4
  %397 = icmp ne i32 %396, 2005
  br i1 %397, label %398, label %400

398:                                              ; preds = %395
  %399 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %400

400:                                              ; preds = %398, %395
  br label %401

401:                                              ; preds = %400, %393
  %402 = load i32, ptr @n, align 4
  %403 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %402)
  %404 = load i32, ptr @kount, align 4
  %405 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %404)
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  store i32 0, ptr %2, align 4
  %.promoted = load i32, ptr %2, align 4
  %3 = icmp slt i32 %.promoted, 100
  br i1 %3, label %.lr.ph, label %9

.lr.ph:                                           ; preds = %0
  br label %4

4:                                                ; preds = %.lr.ph, %6
  %5 = phi i32 [ %.promoted, %.lr.ph ], [ %7, %6 ]
  call void @Puzzle()
  br label %6

6:                                                ; preds = %4
  %7 = add nsw i32 %5, 1
  %8 = icmp slt i32 %7, 100
  br i1 %8, label %4, label %._crit_edge, !llvm.loop !58

._crit_edge:                                      ; preds = %6
  %split = phi i32 [ %7, %6 ]
  br label %9

9:                                                ; preds = %._crit_edge, %0
  %.lcssa = phi i32 [ %split, %._crit_edge ], [ %.promoted, %0 ]
  store i32 %.lcssa, ptr %2, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 23.0.0git (https://github.com/llvm/llvm-project.git aac212f0bc9acbc40a8a2e9638f4b7496c25d0b2)", isOptimized: false, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "E:/llvm-test-suite/SingleSource/Benchmarks/Stanford/Puzzle.c", directory: "E:/Phase Ordering/v3")
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
!26 = distinct !{!26, !8}
!27 = distinct !{!27, !8}
!28 = distinct !{!28, !8}
!29 = distinct !{!29, !8}
!30 = distinct !{!30, !8}
!31 = distinct !{!31, !8}
!32 = distinct !{!32, !8}
!33 = distinct !{!33, !8}
!34 = distinct !{!34, !8}
!35 = distinct !{!35, !8}
!36 = distinct !{!36, !8}
!37 = distinct !{!37, !8}
!38 = distinct !{!38, !8}
!39 = distinct !{!39, !8}
!40 = distinct !{!40, !8}
!41 = distinct !{!41, !8}
!42 = distinct !{!42, !8}
!43 = distinct !{!43, !8}
!44 = distinct !{!44, !8}
!45 = distinct !{!45, !8}
!46 = distinct !{!46, !8}
!47 = distinct !{!47, !8}
!48 = distinct !{!48, !8}
!49 = distinct !{!49, !8}
!50 = distinct !{!50, !8}
!51 = distinct !{!51, !8}
!52 = distinct !{!52, !8}
!53 = distinct !{!53, !8}
!54 = distinct !{!54, !8}
!55 = distinct !{!55, !8}
!56 = distinct !{!56, !8}
!57 = distinct !{!57, !8}
!58 = distinct !{!58, !8}
