; ModuleID = 'results\test_rule2\Stanford_Puzzle\round_001\output.ll'
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
  ret i32 %4
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
  %7 = load i32, ptr %6, align 4
  %8 = load i32, ptr %4, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [13 x i32], ptr @piecemax, i64 0, i64 %9
  %11 = load i32, ptr %10, align 4
  %12 = icmp sle i32 %7, %11
  br i1 %12, label %.lr.ph, label %39

.lr.ph:                                           ; preds = %2
  %13 = load i32, ptr %5, align 4
  %14 = load i32, ptr %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [13 x i32], ptr @piecemax, i64 0, i64 %15
  %.promoted = load i32, ptr %6, align 4
  br label %17

17:                                               ; preds = %.lr.ph, %35
  %18 = phi i32 [ %.promoted, %.lr.ph ], [ %36, %35 ]
  %19 = phi i64 [ %9, %.lr.ph ], [ %15, %35 ]
  %20 = phi i32 [ %7, %.lr.ph ], [ %36, %35 ]
  %21 = getelementptr inbounds [13 x [512 x i32]], ptr @p, i64 0, i64 %19
  %22 = sext i32 %20 to i64
  %23 = getelementptr inbounds [512 x i32], ptr %21, i64 0, i64 %22
  %24 = load i32, ptr %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %17
  %27 = add nsw i32 %13, %20
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %28
  %30 = load i32, ptr %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  %.lcssa = phi i32 [ %18, %26 ]
  store i32 %.lcssa, ptr %6, align 4
  store i32 0, ptr %3, align 4
  br label %40

33:                                               ; preds = %26
  br label %34

34:                                               ; preds = %33, %17
  br label %35

35:                                               ; preds = %34
  %36 = add nsw i32 %18, 1
  %37 = load i32, ptr %16, align 4
  %38 = icmp sle i32 %36, %37
  br i1 %38, label %17, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %35
  %.lcssa1 = phi i32 [ %36, %35 ]
  store i32 %.lcssa1, ptr %6, align 4
  br label %39

39:                                               ; preds = %._crit_edge, %2
  store i32 1, ptr %3, align 4
  br label %40

40:                                               ; preds = %39, %32
  %41 = load i32, ptr %3, align 4
  ret i32 %41
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
  %7 = load i32, ptr %6, align 4
  %8 = load i32, ptr %4, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [13 x i32], ptr @piecemax, i64 0, i64 %9
  %11 = load i32, ptr %10, align 4
  %12 = icmp sle i32 %7, %11
  br i1 %12, label %.lr.ph, label %35

.lr.ph:                                           ; preds = %2
  %13 = load i32, ptr %5, align 4
  %14 = load i32, ptr %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [13 x i32], ptr @piecemax, i64 0, i64 %15
  %17 = load i32, ptr %16, align 4
  %.promoted = load i32, ptr %6, align 4
  br label %18

18:                                               ; preds = %.lr.ph, %32
  %19 = phi i32 [ %.promoted, %.lr.ph ], [ %33, %32 ]
  %20 = phi i64 [ %9, %.lr.ph ], [ %15, %32 ]
  %21 = phi i32 [ %7, %.lr.ph ], [ %33, %32 ]
  %22 = getelementptr inbounds [13 x [512 x i32]], ptr @p, i64 0, i64 %20
  %23 = sext i32 %21 to i64
  %24 = getelementptr inbounds [512 x i32], ptr %22, i64 0, i64 %23
  %25 = load i32, ptr %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %18
  %28 = add nsw i32 %13, %21
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %29
  store i32 1, ptr %30, align 4
  br label %31

31:                                               ; preds = %27, %18
  br label %32

32:                                               ; preds = %31
  %33 = add nsw i32 %19, 1
  %34 = icmp sle i32 %33, %17
  br i1 %34, label %18, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %32
  %.lcssa4 = phi i32 [ %33, %32 ]
  %split = phi i64 [ %15, %32 ]
  store i32 %.lcssa4, ptr %6, align 4
  br label %35

35:                                               ; preds = %._crit_edge, %2
  %.lcssa = phi i64 [ %split, %._crit_edge ], [ %9, %2 ]
  %36 = getelementptr inbounds [13 x i32], ptr @class, i64 0, i64 %.lcssa
  %37 = load i32, ptr %36, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [4 x i32], ptr @piececount, i64 0, i64 %38
  %40 = load i32, ptr %39, align 4
  %41 = sub nsw i32 %40, 1
  store i32 %41, ptr %39, align 4
  %42 = load i32, ptr %5, align 4
  store i32 %42, ptr %6, align 4
  %43 = load i32, ptr %6, align 4
  %44 = icmp sle i32 %43, 511
  br i1 %44, label %.lr.ph2, label %57

.lr.ph2:                                          ; preds = %35
  %.promoted5 = load i32, ptr %6, align 4
  br label %45

45:                                               ; preds = %.lr.ph2, %54
  %46 = phi i32 [ %.promoted5, %.lr.ph2 ], [ %55, %54 ]
  %47 = phi i32 [ %43, %.lr.ph2 ], [ %55, %54 ]
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %48
  %50 = load i32, ptr %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %45
  %.lcssa6 = phi i32 [ %46, %45 ]
  %.lcssa1 = phi i32 [ %47, %45 ]
  store i32 %.lcssa6, ptr %6, align 4
  store i32 %.lcssa1, ptr %3, align 4
  br label %58

53:                                               ; preds = %45
  br label %54

54:                                               ; preds = %53
  %55 = add nsw i32 %47, 1
  %56 = icmp sle i32 %55, 511
  br i1 %56, label %45, label %._crit_edge3, !llvm.loop !10

._crit_edge3:                                     ; preds = %54
  %.lcssa7 = phi i32 [ %55, %54 ]
  store i32 %.lcssa7, ptr %6, align 4
  br label %57

57:                                               ; preds = %._crit_edge3, %35
  store i32 0, ptr %3, align 4
  br label %58

58:                                               ; preds = %57, %52
  %59 = load i32, ptr %3, align 4
  ret i32 %59
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Remove(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  store i32 0, ptr %5, align 4
  %6 = load i32, ptr %5, align 4
  %7 = load i32, ptr %3, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [13 x i32], ptr @piecemax, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4
  %11 = icmp sle i32 %6, %10
  br i1 %11, label %.lr.ph, label %34

.lr.ph:                                           ; preds = %2
  %12 = load i32, ptr %4, align 4
  %13 = load i32, ptr %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [13 x i32], ptr @piecemax, i64 0, i64 %14
  %16 = load i32, ptr %15, align 4
  %.promoted = load i32, ptr %5, align 4
  br label %17

17:                                               ; preds = %.lr.ph, %31
  %18 = phi i32 [ %.promoted, %.lr.ph ], [ %32, %31 ]
  %19 = phi i64 [ %8, %.lr.ph ], [ %14, %31 ]
  %20 = phi i32 [ %6, %.lr.ph ], [ %32, %31 ]
  %21 = getelementptr inbounds [13 x [512 x i32]], ptr @p, i64 0, i64 %19
  %22 = sext i32 %20 to i64
  %23 = getelementptr inbounds [512 x i32], ptr %21, i64 0, i64 %22
  %24 = load i32, ptr %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %17
  %27 = add nsw i32 %12, %20
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %28
  store i32 0, ptr %29, align 4
  br label %30

30:                                               ; preds = %26, %17
  br label %31

31:                                               ; preds = %30
  %32 = add nsw i32 %18, 1
  %33 = icmp sle i32 %32, %16
  br i1 %33, label %17, label %._crit_edge, !llvm.loop !11

._crit_edge:                                      ; preds = %31
  %.lcssa1 = phi i32 [ %32, %31 ]
  %split = phi i64 [ %14, %31 ]
  store i32 %.lcssa1, ptr %5, align 4
  br label %34

34:                                               ; preds = %._crit_edge, %2
  %.lcssa = phi i64 [ %split, %._crit_edge ], [ %8, %2 ]
  %35 = getelementptr inbounds [13 x i32], ptr @class, i64 0, i64 %.lcssa
  %36 = load i32, ptr %35, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [4 x i32], ptr @piececount, i64 0, i64 %37
  %39 = load i32, ptr %38, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, ptr %38, align 4
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
  %8 = load i32, ptr %4, align 4
  %9 = icmp sle i32 %8, 12
  br i1 %9, label %.lr.ph, label %43

.lr.ph:                                           ; preds = %1
  %10 = load i32, ptr %3, align 4
  %11 = load i32, ptr %3, align 4
  %12 = load i32, ptr %3, align 4
  %.promoted = load i32, ptr %4, align 4
  %.promoted2 = load i32, ptr %5, align 4
  br label %13

13:                                               ; preds = %.lr.ph, %40
  %14 = phi i32 [ %.promoted2, %.lr.ph ], [ %39, %40 ]
  %15 = phi i32 [ %.promoted, %.lr.ph ], [ %41, %40 ]
  %16 = phi i32 [ %8, %.lr.ph ], [ %41, %40 ]
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [13 x i32], ptr @class, i64 0, i64 %17
  %19 = load i32, ptr %18, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [4 x i32], ptr @piececount, i64 0, i64 %20
  %22 = load i32, ptr %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %13
  %25 = call i32 @Fit(i32 noundef %16, i32 noundef %10)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %24
  %28 = call i32 @Place(i32 noundef %15, i32 noundef %11)
  %29 = call i32 @Trial(i32 noundef %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = icmp eq i32 %28, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %31, %27
  %.lcssa3 = phi i32 [ %28, %31 ], [ %28, %27 ]
  %.lcssa = phi i32 [ %15, %31 ], [ %15, %27 ]
  store i32 %.lcssa, ptr %4, align 4
  store i32 %.lcssa3, ptr %5, align 4
  store i32 1, ptr %2, align 4
  br label %44

34:                                               ; preds = %31
  call void @Remove(i32 noundef %15, i32 noundef %12)
  br label %35

35:                                               ; preds = %34
  br label %36

36:                                               ; preds = %35, %24
  %37 = phi i32 [ %28, %35 ], [ %14, %24 ]
  br label %38

38:                                               ; preds = %36, %13
  %39 = phi i32 [ %37, %36 ], [ %14, %13 ]
  br label %40

40:                                               ; preds = %38
  %41 = add nsw i32 %15, 1
  %42 = icmp sle i32 %41, 12
  br i1 %42, label %13, label %._crit_edge, !llvm.loop !12

._crit_edge:                                      ; preds = %40
  %.lcssa4 = phi i32 [ %39, %40 ]
  %.lcssa1 = phi i32 [ %41, %40 ]
  store i32 %.lcssa1, ptr %4, align 4
  store i32 %.lcssa4, ptr %5, align 4
  br label %43

43:                                               ; preds = %._crit_edge, %1
  store i32 0, ptr %2, align 4
  br label %44

44:                                               ; preds = %43, %33
  %45 = load i32, ptr %2, align 4
  ret i32 %45
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Puzzle() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, ptr %4, align 4
  %5 = load i32, ptr %4, align 4
  %6 = icmp sle i32 %5, 511
  br i1 %6, label %.lr.ph, label %15

.lr.ph:                                           ; preds = %0
  %.promoted = load i32, ptr %4, align 4
  br label %7

7:                                                ; preds = %.lr.ph, %12
  %8 = phi i32 [ %.promoted, %.lr.ph ], [ %13, %12 ]
  %9 = phi i32 [ %5, %.lr.ph ], [ %13, %12 ]
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %10
  store i32 1, ptr %11, align 4
  br label %12

12:                                               ; preds = %7
  %13 = add nsw i32 %8, 1
  %14 = icmp sle i32 %13, 511
  br i1 %14, label %7, label %._crit_edge, !llvm.loop !13

._crit_edge:                                      ; preds = %12
  %.lcssa = phi i32 [ %13, %12 ]
  store i32 %.lcssa, ptr %4, align 4
  br label %15

15:                                               ; preds = %._crit_edge, %0
  store i32 1, ptr %1, align 4
  %16 = load i32, ptr %1, align 4
  %17 = icmp sle i32 %16, 5
  br i1 %17, label %.lr.ph8, label %44

.lr.ph8:                                          ; preds = %15
  %.promoted141 = load i32, ptr %1, align 4
  %.promoted143 = load i32, ptr %3, align 1
  br label %18

18:                                               ; preds = %.lr.ph8, %41
  %.lcssa134136.lcssa144 = phi i32 [ %.promoted143, %.lr.ph8 ], [ %.lcssa134136.lcssa145, %41 ]
  %19 = phi i32 [ %.promoted141, %.lr.ph8 ], [ %42, %41 ]
  %20 = icmp sle i32 1, 5
  br i1 %20, label %.lr.ph5, label %40

.lr.ph5:                                          ; preds = %18
  br label %21

21:                                               ; preds = %.lr.ph5, %37
  %22 = phi i32 [ 1, %.lr.ph5 ], [ %38, %37 ]
  %23 = icmp sle i32 1, 5
  br i1 %23, label %.lr.ph2, label %36

.lr.ph2:                                          ; preds = %21
  br label %24

24:                                               ; preds = %.lr.ph2, %33
  %25 = phi i32 [ 1, %.lr.ph2 ], [ %34, %33 ]
  %26 = phi i32 [ 1, %.lr.ph2 ], [ %34, %33 ]
  %27 = mul nsw i32 8, %26
  %28 = add nsw i32 %22, %27
  %29 = mul nsw i32 8, %28
  %30 = add nsw i32 %19, %29
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %31
  store i32 0, ptr %32, align 4
  br label %33

33:                                               ; preds = %24
  %34 = add nsw i32 %25, 1
  %35 = icmp sle i32 %34, 5
  br i1 %35, label %24, label %._crit_edge3, !llvm.loop !14

._crit_edge3:                                     ; preds = %33
  %.lcssa134 = phi i32 [ %34, %33 ]
  br label %36

36:                                               ; preds = %._crit_edge3, %21
  %.lcssa134136 = phi i32 [ %.lcssa134, %._crit_edge3 ], [ 1, %21 ]
  br label %37

37:                                               ; preds = %36
  %38 = add nsw i32 %22, 1
  %39 = icmp sle i32 %38, 5
  br i1 %39, label %21, label %._crit_edge6, !llvm.loop !15

._crit_edge6:                                     ; preds = %37
  %.lcssa138 = phi i32 [ %38, %37 ]
  %.lcssa134136.lcssa = phi i32 [ %.lcssa134136, %37 ]
  br label %40

40:                                               ; preds = %._crit_edge6, %18
  %.lcssa134136.lcssa145 = phi i32 [ %.lcssa134136.lcssa, %._crit_edge6 ], [ %.lcssa134136.lcssa144, %18 ]
  %.lcssa138140 = phi i32 [ %.lcssa138, %._crit_edge6 ], [ 1, %18 ]
  br label %41

41:                                               ; preds = %40
  %42 = add nsw i32 %19, 1
  %43 = icmp sle i32 %42, 5
  br i1 %43, label %18, label %._crit_edge9, !llvm.loop !16

._crit_edge9:                                     ; preds = %41
  %.lcssa134136.lcssa145.lcssa = phi i32 [ %.lcssa134136.lcssa145, %41 ]
  %.lcssa142 = phi i32 [ %42, %41 ]
  %.lcssa138140.lcssa = phi i32 [ %.lcssa138140, %41 ]
  store i32 %.lcssa138140.lcssa, ptr %2, align 4
  store i32 %.lcssa142, ptr %1, align 4
  store i32 %.lcssa134136.lcssa145.lcssa, ptr %3, align 1
  br label %44

44:                                               ; preds = %._crit_edge9, %15
  store i32 0, ptr %1, align 4
  %45 = load i32, ptr %1, align 4
  %46 = icmp sle i32 %45, 12
  br i1 %46, label %.lr.ph14, label %64

.lr.ph14:                                         ; preds = %44
  %.promoted150 = load i32, ptr %1, align 4
  br label %47

47:                                               ; preds = %.lr.ph14, %61
  %48 = phi i32 [ %.promoted150, %.lr.ph14 ], [ %62, %61 ]
  %49 = icmp sle i32 0, 511
  br i1 %49, label %.lr.ph11, label %60

.lr.ph11:                                         ; preds = %47
  %50 = sext i32 %48 to i64
  %51 = getelementptr inbounds [13 x [512 x i32]], ptr @p, i64 0, i64 %50
  br label %52

52:                                               ; preds = %.lr.ph11, %57
  %53 = phi i32 [ 0, %.lr.ph11 ], [ %58, %57 ]
  %54 = phi i32 [ 0, %.lr.ph11 ], [ %58, %57 ]
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [512 x i32], ptr %51, i64 0, i64 %55
  store i32 0, ptr %56, align 4
  br label %57

57:                                               ; preds = %52
  %58 = add nsw i32 %53, 1
  %59 = icmp sle i32 %58, 511
  br i1 %59, label %52, label %._crit_edge12, !llvm.loop !17

._crit_edge12:                                    ; preds = %57
  %.lcssa147 = phi i32 [ %58, %57 ]
  br label %60

60:                                               ; preds = %._crit_edge12, %47
  %.lcssa147149 = phi i32 [ %.lcssa147, %._crit_edge12 ], [ 0, %47 ]
  br label %61

61:                                               ; preds = %60
  %62 = add nsw i32 %48, 1
  %63 = icmp sle i32 %62, 12
  br i1 %63, label %47, label %._crit_edge15, !llvm.loop !18

._crit_edge15:                                    ; preds = %61
  %.lcssa151 = phi i32 [ %62, %61 ]
  %.lcssa147149.lcssa = phi i32 [ %.lcssa147149, %61 ]
  store i32 %.lcssa147149.lcssa, ptr %4, align 4
  store i32 %.lcssa151, ptr %1, align 4
  br label %64

64:                                               ; preds = %._crit_edge15, %44
  store i32 0, ptr %1, align 4
  %65 = load i32, ptr %1, align 4
  %66 = icmp sle i32 %65, 3
  br i1 %66, label %.lr.ph23, label %93

.lr.ph23:                                         ; preds = %64
  %.promoted160 = load i32, ptr %1, align 4
  %.promoted162 = load i32, ptr %3, align 1
  br label %67

67:                                               ; preds = %.lr.ph23, %90
  %.lcssa153155.lcssa163 = phi i32 [ %.promoted162, %.lr.ph23 ], [ %.lcssa153155.lcssa164, %90 ]
  %68 = phi i32 [ %.promoted160, %.lr.ph23 ], [ %91, %90 ]
  %69 = icmp sle i32 0, 1
  br i1 %69, label %.lr.ph20, label %89

.lr.ph20:                                         ; preds = %67
  br label %70

70:                                               ; preds = %.lr.ph20, %86
  %71 = phi i32 [ 0, %.lr.ph20 ], [ %87, %86 ]
  %72 = icmp sle i32 0, 0
  br i1 %72, label %.lr.ph17, label %85

.lr.ph17:                                         ; preds = %70
  br label %73

73:                                               ; preds = %.lr.ph17, %82
  %74 = phi i32 [ 0, %.lr.ph17 ], [ %83, %82 ]
  %75 = phi i32 [ 0, %.lr.ph17 ], [ %83, %82 ]
  %76 = mul nsw i32 8, %75
  %77 = add nsw i32 %71, %76
  %78 = mul nsw i32 8, %77
  %79 = add nsw i32 %68, %78
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [512 x i32], ptr @p, i64 0, i64 %80
  store i32 1, ptr %81, align 4
  br label %82

82:                                               ; preds = %73
  %83 = add nsw i32 %74, 1
  %84 = icmp sle i32 %83, 0
  br i1 %84, label %73, label %._crit_edge18, !llvm.loop !19

._crit_edge18:                                    ; preds = %82
  %.lcssa153 = phi i32 [ %83, %82 ]
  br label %85

85:                                               ; preds = %._crit_edge18, %70
  %.lcssa153155 = phi i32 [ %.lcssa153, %._crit_edge18 ], [ 0, %70 ]
  br label %86

86:                                               ; preds = %85
  %87 = add nsw i32 %71, 1
  %88 = icmp sle i32 %87, 1
  br i1 %88, label %70, label %._crit_edge21, !llvm.loop !20

._crit_edge21:                                    ; preds = %86
  %.lcssa157 = phi i32 [ %87, %86 ]
  %.lcssa153155.lcssa = phi i32 [ %.lcssa153155, %86 ]
  br label %89

89:                                               ; preds = %._crit_edge21, %67
  %.lcssa153155.lcssa164 = phi i32 [ %.lcssa153155.lcssa, %._crit_edge21 ], [ %.lcssa153155.lcssa163, %67 ]
  %.lcssa157159 = phi i32 [ %.lcssa157, %._crit_edge21 ], [ 0, %67 ]
  br label %90

90:                                               ; preds = %89
  %91 = add nsw i32 %68, 1
  %92 = icmp sle i32 %91, 3
  br i1 %92, label %67, label %._crit_edge24, !llvm.loop !21

._crit_edge24:                                    ; preds = %90
  %.lcssa153155.lcssa164.lcssa = phi i32 [ %.lcssa153155.lcssa164, %90 ]
  %.lcssa161 = phi i32 [ %91, %90 ]
  %.lcssa157159.lcssa = phi i32 [ %.lcssa157159, %90 ]
  store i32 %.lcssa157159.lcssa, ptr %2, align 4
  store i32 %.lcssa161, ptr %1, align 4
  store i32 %.lcssa153155.lcssa164.lcssa, ptr %3, align 1
  br label %93

93:                                               ; preds = %._crit_edge24, %64
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  store i32 0, ptr %1, align 4
  %94 = load i32, ptr %1, align 4
  %95 = icmp sle i32 %94, 1
  br i1 %95, label %.lr.ph32, label %122

.lr.ph32:                                         ; preds = %93
  %.promoted173 = load i32, ptr %1, align 4
  %.promoted175 = load i32, ptr %3, align 1
  br label %96

96:                                               ; preds = %.lr.ph32, %119
  %.lcssa166168.lcssa176 = phi i32 [ %.promoted175, %.lr.ph32 ], [ %.lcssa166168.lcssa177, %119 ]
  %97 = phi i32 [ %.promoted173, %.lr.ph32 ], [ %120, %119 ]
  %98 = icmp sle i32 0, 0
  br i1 %98, label %.lr.ph29, label %118

.lr.ph29:                                         ; preds = %96
  br label %99

99:                                               ; preds = %.lr.ph29, %115
  %100 = phi i32 [ 0, %.lr.ph29 ], [ %116, %115 ]
  %101 = icmp sle i32 0, 3
  br i1 %101, label %.lr.ph26, label %114

.lr.ph26:                                         ; preds = %99
  br label %102

102:                                              ; preds = %.lr.ph26, %111
  %103 = phi i32 [ 0, %.lr.ph26 ], [ %112, %111 ]
  %104 = phi i32 [ 0, %.lr.ph26 ], [ %112, %111 ]
  %105 = mul nsw i32 8, %104
  %106 = add nsw i32 %100, %105
  %107 = mul nsw i32 8, %106
  %108 = add nsw i32 %97, %107
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 0, i64 %109
  store i32 1, ptr %110, align 4
  br label %111

111:                                              ; preds = %102
  %112 = add nsw i32 %103, 1
  %113 = icmp sle i32 %112, 3
  br i1 %113, label %102, label %._crit_edge27, !llvm.loop !22

._crit_edge27:                                    ; preds = %111
  %.lcssa166 = phi i32 [ %112, %111 ]
  br label %114

114:                                              ; preds = %._crit_edge27, %99
  %.lcssa166168 = phi i32 [ %.lcssa166, %._crit_edge27 ], [ 0, %99 ]
  br label %115

115:                                              ; preds = %114
  %116 = add nsw i32 %100, 1
  %117 = icmp sle i32 %116, 0
  br i1 %117, label %99, label %._crit_edge30, !llvm.loop !23

._crit_edge30:                                    ; preds = %115
  %.lcssa170 = phi i32 [ %116, %115 ]
  %.lcssa166168.lcssa = phi i32 [ %.lcssa166168, %115 ]
  br label %118

118:                                              ; preds = %._crit_edge30, %96
  %.lcssa166168.lcssa177 = phi i32 [ %.lcssa166168.lcssa, %._crit_edge30 ], [ %.lcssa166168.lcssa176, %96 ]
  %.lcssa170172 = phi i32 [ %.lcssa170, %._crit_edge30 ], [ 0, %96 ]
  br label %119

119:                                              ; preds = %118
  %120 = add nsw i32 %97, 1
  %121 = icmp sle i32 %120, 1
  br i1 %121, label %96, label %._crit_edge33, !llvm.loop !24

._crit_edge33:                                    ; preds = %119
  %.lcssa166168.lcssa177.lcssa = phi i32 [ %.lcssa166168.lcssa177, %119 ]
  %.lcssa174 = phi i32 [ %120, %119 ]
  %.lcssa170172.lcssa = phi i32 [ %.lcssa170172, %119 ]
  store i32 %.lcssa170172.lcssa, ptr %2, align 4
  store i32 %.lcssa174, ptr %1, align 4
  store i32 %.lcssa166168.lcssa177.lcssa, ptr %3, align 1
  br label %122

122:                                              ; preds = %._crit_edge33, %93
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  store i32 0, ptr %1, align 4
  %123 = load i32, ptr %1, align 4
  %124 = icmp sle i32 %123, 0
  br i1 %124, label %.lr.ph41, label %151

.lr.ph41:                                         ; preds = %122
  %.promoted186 = load i32, ptr %1, align 4
  %.promoted188 = load i32, ptr %3, align 1
  br label %125

125:                                              ; preds = %.lr.ph41, %148
  %.lcssa179181.lcssa189 = phi i32 [ %.promoted188, %.lr.ph41 ], [ %.lcssa179181.lcssa190, %148 ]
  %126 = phi i32 [ %.promoted186, %.lr.ph41 ], [ %149, %148 ]
  %127 = icmp sle i32 0, 3
  br i1 %127, label %.lr.ph38, label %147

.lr.ph38:                                         ; preds = %125
  br label %128

128:                                              ; preds = %.lr.ph38, %144
  %129 = phi i32 [ 0, %.lr.ph38 ], [ %145, %144 ]
  %130 = icmp sle i32 0, 1
  br i1 %130, label %.lr.ph35, label %143

.lr.ph35:                                         ; preds = %128
  br label %131

131:                                              ; preds = %.lr.ph35, %140
  %132 = phi i32 [ 0, %.lr.ph35 ], [ %141, %140 ]
  %133 = phi i32 [ 0, %.lr.ph35 ], [ %141, %140 ]
  %134 = mul nsw i32 8, %133
  %135 = add nsw i32 %129, %134
  %136 = mul nsw i32 8, %135
  %137 = add nsw i32 %126, %136
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 0, i64 %138
  store i32 1, ptr %139, align 4
  br label %140

140:                                              ; preds = %131
  %141 = add nsw i32 %132, 1
  %142 = icmp sle i32 %141, 1
  br i1 %142, label %131, label %._crit_edge36, !llvm.loop !25

._crit_edge36:                                    ; preds = %140
  %.lcssa179 = phi i32 [ %141, %140 ]
  br label %143

143:                                              ; preds = %._crit_edge36, %128
  %.lcssa179181 = phi i32 [ %.lcssa179, %._crit_edge36 ], [ 0, %128 ]
  br label %144

144:                                              ; preds = %143
  %145 = add nsw i32 %129, 1
  %146 = icmp sle i32 %145, 3
  br i1 %146, label %128, label %._crit_edge39, !llvm.loop !26

._crit_edge39:                                    ; preds = %144
  %.lcssa183 = phi i32 [ %145, %144 ]
  %.lcssa179181.lcssa = phi i32 [ %.lcssa179181, %144 ]
  br label %147

147:                                              ; preds = %._crit_edge39, %125
  %.lcssa179181.lcssa190 = phi i32 [ %.lcssa179181.lcssa, %._crit_edge39 ], [ %.lcssa179181.lcssa189, %125 ]
  %.lcssa183185 = phi i32 [ %.lcssa183, %._crit_edge39 ], [ 0, %125 ]
  br label %148

148:                                              ; preds = %147
  %149 = add nsw i32 %126, 1
  %150 = icmp sle i32 %149, 0
  br i1 %150, label %125, label %._crit_edge42, !llvm.loop !27

._crit_edge42:                                    ; preds = %148
  %.lcssa179181.lcssa190.lcssa = phi i32 [ %.lcssa179181.lcssa190, %148 ]
  %.lcssa187 = phi i32 [ %149, %148 ]
  %.lcssa183185.lcssa = phi i32 [ %.lcssa183185, %148 ]
  store i32 %.lcssa183185.lcssa, ptr %2, align 4
  store i32 %.lcssa187, ptr %1, align 4
  store i32 %.lcssa179181.lcssa190.lcssa, ptr %3, align 1
  br label %151

151:                                              ; preds = %._crit_edge42, %122
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  store i32 0, ptr %1, align 4
  %152 = load i32, ptr %1, align 4
  %153 = icmp sle i32 %152, 1
  br i1 %153, label %.lr.ph50, label %180

.lr.ph50:                                         ; preds = %151
  %.promoted199 = load i32, ptr %1, align 4
  %.promoted201 = load i32, ptr %3, align 1
  br label %154

154:                                              ; preds = %.lr.ph50, %177
  %.lcssa192194.lcssa202 = phi i32 [ %.promoted201, %.lr.ph50 ], [ %.lcssa192194.lcssa203, %177 ]
  %155 = phi i32 [ %.promoted199, %.lr.ph50 ], [ %178, %177 ]
  %156 = icmp sle i32 0, 3
  br i1 %156, label %.lr.ph47, label %176

.lr.ph47:                                         ; preds = %154
  br label %157

157:                                              ; preds = %.lr.ph47, %173
  %158 = phi i32 [ 0, %.lr.ph47 ], [ %174, %173 ]
  %159 = icmp sle i32 0, 0
  br i1 %159, label %.lr.ph44, label %172

.lr.ph44:                                         ; preds = %157
  br label %160

160:                                              ; preds = %.lr.ph44, %169
  %161 = phi i32 [ 0, %.lr.ph44 ], [ %170, %169 ]
  %162 = phi i32 [ 0, %.lr.ph44 ], [ %170, %169 ]
  %163 = mul nsw i32 8, %162
  %164 = add nsw i32 %158, %163
  %165 = mul nsw i32 8, %164
  %166 = add nsw i32 %155, %165
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 0, i64 %167
  store i32 1, ptr %168, align 4
  br label %169

169:                                              ; preds = %160
  %170 = add nsw i32 %161, 1
  %171 = icmp sle i32 %170, 0
  br i1 %171, label %160, label %._crit_edge45, !llvm.loop !28

._crit_edge45:                                    ; preds = %169
  %.lcssa192 = phi i32 [ %170, %169 ]
  br label %172

172:                                              ; preds = %._crit_edge45, %157
  %.lcssa192194 = phi i32 [ %.lcssa192, %._crit_edge45 ], [ 0, %157 ]
  br label %173

173:                                              ; preds = %172
  %174 = add nsw i32 %158, 1
  %175 = icmp sle i32 %174, 3
  br i1 %175, label %157, label %._crit_edge48, !llvm.loop !29

._crit_edge48:                                    ; preds = %173
  %.lcssa196 = phi i32 [ %174, %173 ]
  %.lcssa192194.lcssa = phi i32 [ %.lcssa192194, %173 ]
  br label %176

176:                                              ; preds = %._crit_edge48, %154
  %.lcssa192194.lcssa203 = phi i32 [ %.lcssa192194.lcssa, %._crit_edge48 ], [ %.lcssa192194.lcssa202, %154 ]
  %.lcssa196198 = phi i32 [ %.lcssa196, %._crit_edge48 ], [ 0, %154 ]
  br label %177

177:                                              ; preds = %176
  %178 = add nsw i32 %155, 1
  %179 = icmp sle i32 %178, 1
  br i1 %179, label %154, label %._crit_edge51, !llvm.loop !30

._crit_edge51:                                    ; preds = %177
  %.lcssa192194.lcssa203.lcssa = phi i32 [ %.lcssa192194.lcssa203, %177 ]
  %.lcssa200 = phi i32 [ %178, %177 ]
  %.lcssa196198.lcssa = phi i32 [ %.lcssa196198, %177 ]
  store i32 %.lcssa196198.lcssa, ptr %2, align 4
  store i32 %.lcssa200, ptr %1, align 4
  store i32 %.lcssa192194.lcssa203.lcssa, ptr %3, align 1
  br label %180

180:                                              ; preds = %._crit_edge51, %151
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  store i32 0, ptr %1, align 4
  %181 = load i32, ptr %1, align 4
  %182 = icmp sle i32 %181, 3
  br i1 %182, label %.lr.ph59, label %209

.lr.ph59:                                         ; preds = %180
  %.promoted212 = load i32, ptr %1, align 4
  %.promoted214 = load i32, ptr %3, align 1
  br label %183

183:                                              ; preds = %.lr.ph59, %206
  %.lcssa205207.lcssa215 = phi i32 [ %.promoted214, %.lr.ph59 ], [ %.lcssa205207.lcssa216, %206 ]
  %184 = phi i32 [ %.promoted212, %.lr.ph59 ], [ %207, %206 ]
  %185 = icmp sle i32 0, 0
  br i1 %185, label %.lr.ph56, label %205

.lr.ph56:                                         ; preds = %183
  br label %186

186:                                              ; preds = %.lr.ph56, %202
  %187 = phi i32 [ 0, %.lr.ph56 ], [ %203, %202 ]
  %188 = icmp sle i32 0, 1
  br i1 %188, label %.lr.ph53, label %201

.lr.ph53:                                         ; preds = %186
  br label %189

189:                                              ; preds = %.lr.ph53, %198
  %190 = phi i32 [ 0, %.lr.ph53 ], [ %199, %198 ]
  %191 = phi i32 [ 0, %.lr.ph53 ], [ %199, %198 ]
  %192 = mul nsw i32 8, %191
  %193 = add nsw i32 %187, %192
  %194 = mul nsw i32 8, %193
  %195 = add nsw i32 %184, %194
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 0, i64 %196
  store i32 1, ptr %197, align 4
  br label %198

198:                                              ; preds = %189
  %199 = add nsw i32 %190, 1
  %200 = icmp sle i32 %199, 1
  br i1 %200, label %189, label %._crit_edge54, !llvm.loop !31

._crit_edge54:                                    ; preds = %198
  %.lcssa205 = phi i32 [ %199, %198 ]
  br label %201

201:                                              ; preds = %._crit_edge54, %186
  %.lcssa205207 = phi i32 [ %.lcssa205, %._crit_edge54 ], [ 0, %186 ]
  br label %202

202:                                              ; preds = %201
  %203 = add nsw i32 %187, 1
  %204 = icmp sle i32 %203, 0
  br i1 %204, label %186, label %._crit_edge57, !llvm.loop !32

._crit_edge57:                                    ; preds = %202
  %.lcssa209 = phi i32 [ %203, %202 ]
  %.lcssa205207.lcssa = phi i32 [ %.lcssa205207, %202 ]
  br label %205

205:                                              ; preds = %._crit_edge57, %183
  %.lcssa205207.lcssa216 = phi i32 [ %.lcssa205207.lcssa, %._crit_edge57 ], [ %.lcssa205207.lcssa215, %183 ]
  %.lcssa209211 = phi i32 [ %.lcssa209, %._crit_edge57 ], [ 0, %183 ]
  br label %206

206:                                              ; preds = %205
  %207 = add nsw i32 %184, 1
  %208 = icmp sle i32 %207, 3
  br i1 %208, label %183, label %._crit_edge60, !llvm.loop !33

._crit_edge60:                                    ; preds = %206
  %.lcssa205207.lcssa216.lcssa = phi i32 [ %.lcssa205207.lcssa216, %206 ]
  %.lcssa213 = phi i32 [ %207, %206 ]
  %.lcssa209211.lcssa = phi i32 [ %.lcssa209211, %206 ]
  store i32 %.lcssa209211.lcssa, ptr %2, align 4
  store i32 %.lcssa213, ptr %1, align 4
  store i32 %.lcssa205207.lcssa216.lcssa, ptr %3, align 1
  br label %209

209:                                              ; preds = %._crit_edge60, %180
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  store i32 0, ptr %1, align 4
  %210 = load i32, ptr %1, align 4
  %211 = icmp sle i32 %210, 0
  br i1 %211, label %.lr.ph68, label %238

.lr.ph68:                                         ; preds = %209
  %.promoted225 = load i32, ptr %1, align 4
  %.promoted227 = load i32, ptr %3, align 1
  br label %212

212:                                              ; preds = %.lr.ph68, %235
  %.lcssa218220.lcssa228 = phi i32 [ %.promoted227, %.lr.ph68 ], [ %.lcssa218220.lcssa229, %235 ]
  %213 = phi i32 [ %.promoted225, %.lr.ph68 ], [ %236, %235 ]
  %214 = icmp sle i32 0, 1
  br i1 %214, label %.lr.ph65, label %234

.lr.ph65:                                         ; preds = %212
  br label %215

215:                                              ; preds = %.lr.ph65, %231
  %216 = phi i32 [ 0, %.lr.ph65 ], [ %232, %231 ]
  %217 = icmp sle i32 0, 3
  br i1 %217, label %.lr.ph62, label %230

.lr.ph62:                                         ; preds = %215
  br label %218

218:                                              ; preds = %.lr.ph62, %227
  %219 = phi i32 [ 0, %.lr.ph62 ], [ %228, %227 ]
  %220 = phi i32 [ 0, %.lr.ph62 ], [ %228, %227 ]
  %221 = mul nsw i32 8, %220
  %222 = add nsw i32 %216, %221
  %223 = mul nsw i32 8, %222
  %224 = add nsw i32 %213, %223
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 0, i64 %225
  store i32 1, ptr %226, align 4
  br label %227

227:                                              ; preds = %218
  %228 = add nsw i32 %219, 1
  %229 = icmp sle i32 %228, 3
  br i1 %229, label %218, label %._crit_edge63, !llvm.loop !34

._crit_edge63:                                    ; preds = %227
  %.lcssa218 = phi i32 [ %228, %227 ]
  br label %230

230:                                              ; preds = %._crit_edge63, %215
  %.lcssa218220 = phi i32 [ %.lcssa218, %._crit_edge63 ], [ 0, %215 ]
  br label %231

231:                                              ; preds = %230
  %232 = add nsw i32 %216, 1
  %233 = icmp sle i32 %232, 1
  br i1 %233, label %215, label %._crit_edge66, !llvm.loop !35

._crit_edge66:                                    ; preds = %231
  %.lcssa222 = phi i32 [ %232, %231 ]
  %.lcssa218220.lcssa = phi i32 [ %.lcssa218220, %231 ]
  br label %234

234:                                              ; preds = %._crit_edge66, %212
  %.lcssa218220.lcssa229 = phi i32 [ %.lcssa218220.lcssa, %._crit_edge66 ], [ %.lcssa218220.lcssa228, %212 ]
  %.lcssa222224 = phi i32 [ %.lcssa222, %._crit_edge66 ], [ 0, %212 ]
  br label %235

235:                                              ; preds = %234
  %236 = add nsw i32 %213, 1
  %237 = icmp sle i32 %236, 0
  br i1 %237, label %212, label %._crit_edge69, !llvm.loop !36

._crit_edge69:                                    ; preds = %235
  %.lcssa218220.lcssa229.lcssa = phi i32 [ %.lcssa218220.lcssa229, %235 ]
  %.lcssa226 = phi i32 [ %236, %235 ]
  %.lcssa222224.lcssa = phi i32 [ %.lcssa222224, %235 ]
  store i32 %.lcssa222224.lcssa, ptr %2, align 4
  store i32 %.lcssa226, ptr %1, align 4
  store i32 %.lcssa218220.lcssa229.lcssa, ptr %3, align 1
  br label %238

238:                                              ; preds = %._crit_edge69, %209
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  store i32 0, ptr %1, align 4
  %239 = load i32, ptr %1, align 4
  %240 = icmp sle i32 %239, 2
  br i1 %240, label %.lr.ph77, label %267

.lr.ph77:                                         ; preds = %238
  %.promoted238 = load i32, ptr %1, align 4
  %.promoted240 = load i32, ptr %3, align 1
  br label %241

241:                                              ; preds = %.lr.ph77, %264
  %.lcssa231233.lcssa241 = phi i32 [ %.promoted240, %.lr.ph77 ], [ %.lcssa231233.lcssa242, %264 ]
  %242 = phi i32 [ %.promoted238, %.lr.ph77 ], [ %265, %264 ]
  %243 = icmp sle i32 0, 0
  br i1 %243, label %.lr.ph74, label %263

.lr.ph74:                                         ; preds = %241
  br label %244

244:                                              ; preds = %.lr.ph74, %260
  %245 = phi i32 [ 0, %.lr.ph74 ], [ %261, %260 ]
  %246 = icmp sle i32 0, 0
  br i1 %246, label %.lr.ph71, label %259

.lr.ph71:                                         ; preds = %244
  br label %247

247:                                              ; preds = %.lr.ph71, %256
  %248 = phi i32 [ 0, %.lr.ph71 ], [ %257, %256 ]
  %249 = phi i32 [ 0, %.lr.ph71 ], [ %257, %256 ]
  %250 = mul nsw i32 8, %249
  %251 = add nsw i32 %245, %250
  %252 = mul nsw i32 8, %251
  %253 = add nsw i32 %242, %252
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 0, i64 %254
  store i32 1, ptr %255, align 4
  br label %256

256:                                              ; preds = %247
  %257 = add nsw i32 %248, 1
  %258 = icmp sle i32 %257, 0
  br i1 %258, label %247, label %._crit_edge72, !llvm.loop !37

._crit_edge72:                                    ; preds = %256
  %.lcssa231 = phi i32 [ %257, %256 ]
  br label %259

259:                                              ; preds = %._crit_edge72, %244
  %.lcssa231233 = phi i32 [ %.lcssa231, %._crit_edge72 ], [ 0, %244 ]
  br label %260

260:                                              ; preds = %259
  %261 = add nsw i32 %245, 1
  %262 = icmp sle i32 %261, 0
  br i1 %262, label %244, label %._crit_edge75, !llvm.loop !38

._crit_edge75:                                    ; preds = %260
  %.lcssa235 = phi i32 [ %261, %260 ]
  %.lcssa231233.lcssa = phi i32 [ %.lcssa231233, %260 ]
  br label %263

263:                                              ; preds = %._crit_edge75, %241
  %.lcssa231233.lcssa242 = phi i32 [ %.lcssa231233.lcssa, %._crit_edge75 ], [ %.lcssa231233.lcssa241, %241 ]
  %.lcssa235237 = phi i32 [ %.lcssa235, %._crit_edge75 ], [ 0, %241 ]
  br label %264

264:                                              ; preds = %263
  %265 = add nsw i32 %242, 1
  %266 = icmp sle i32 %265, 2
  br i1 %266, label %241, label %._crit_edge78, !llvm.loop !39

._crit_edge78:                                    ; preds = %264
  %.lcssa231233.lcssa242.lcssa = phi i32 [ %.lcssa231233.lcssa242, %264 ]
  %.lcssa239 = phi i32 [ %265, %264 ]
  %.lcssa235237.lcssa = phi i32 [ %.lcssa235237, %264 ]
  store i32 %.lcssa235237.lcssa, ptr %2, align 4
  store i32 %.lcssa239, ptr %1, align 4
  store i32 %.lcssa231233.lcssa242.lcssa, ptr %3, align 1
  br label %267

267:                                              ; preds = %._crit_edge78, %238
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  store i32 0, ptr %1, align 4
  %268 = load i32, ptr %1, align 4
  %269 = icmp sle i32 %268, 0
  br i1 %269, label %.lr.ph86, label %296

.lr.ph86:                                         ; preds = %267
  %.promoted251 = load i32, ptr %1, align 4
  %.promoted253 = load i32, ptr %3, align 1
  br label %270

270:                                              ; preds = %.lr.ph86, %293
  %.lcssa244246.lcssa254 = phi i32 [ %.promoted253, %.lr.ph86 ], [ %.lcssa244246.lcssa255, %293 ]
  %271 = phi i32 [ %.promoted251, %.lr.ph86 ], [ %294, %293 ]
  %272 = icmp sle i32 0, 2
  br i1 %272, label %.lr.ph83, label %292

.lr.ph83:                                         ; preds = %270
  br label %273

273:                                              ; preds = %.lr.ph83, %289
  %274 = phi i32 [ 0, %.lr.ph83 ], [ %290, %289 ]
  %275 = icmp sle i32 0, 0
  br i1 %275, label %.lr.ph80, label %288

.lr.ph80:                                         ; preds = %273
  br label %276

276:                                              ; preds = %.lr.ph80, %285
  %277 = phi i32 [ 0, %.lr.ph80 ], [ %286, %285 ]
  %278 = phi i32 [ 0, %.lr.ph80 ], [ %286, %285 ]
  %279 = mul nsw i32 8, %278
  %280 = add nsw i32 %274, %279
  %281 = mul nsw i32 8, %280
  %282 = add nsw i32 %271, %281
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 0, i64 %283
  store i32 1, ptr %284, align 4
  br label %285

285:                                              ; preds = %276
  %286 = add nsw i32 %277, 1
  %287 = icmp sle i32 %286, 0
  br i1 %287, label %276, label %._crit_edge81, !llvm.loop !40

._crit_edge81:                                    ; preds = %285
  %.lcssa244 = phi i32 [ %286, %285 ]
  br label %288

288:                                              ; preds = %._crit_edge81, %273
  %.lcssa244246 = phi i32 [ %.lcssa244, %._crit_edge81 ], [ 0, %273 ]
  br label %289

289:                                              ; preds = %288
  %290 = add nsw i32 %274, 1
  %291 = icmp sle i32 %290, 2
  br i1 %291, label %273, label %._crit_edge84, !llvm.loop !41

._crit_edge84:                                    ; preds = %289
  %.lcssa248 = phi i32 [ %290, %289 ]
  %.lcssa244246.lcssa = phi i32 [ %.lcssa244246, %289 ]
  br label %292

292:                                              ; preds = %._crit_edge84, %270
  %.lcssa244246.lcssa255 = phi i32 [ %.lcssa244246.lcssa, %._crit_edge84 ], [ %.lcssa244246.lcssa254, %270 ]
  %.lcssa248250 = phi i32 [ %.lcssa248, %._crit_edge84 ], [ 0, %270 ]
  br label %293

293:                                              ; preds = %292
  %294 = add nsw i32 %271, 1
  %295 = icmp sle i32 %294, 0
  br i1 %295, label %270, label %._crit_edge87, !llvm.loop !42

._crit_edge87:                                    ; preds = %293
  %.lcssa244246.lcssa255.lcssa = phi i32 [ %.lcssa244246.lcssa255, %293 ]
  %.lcssa252 = phi i32 [ %294, %293 ]
  %.lcssa248250.lcssa = phi i32 [ %.lcssa248250, %293 ]
  store i32 %.lcssa248250.lcssa, ptr %2, align 4
  store i32 %.lcssa252, ptr %1, align 4
  store i32 %.lcssa244246.lcssa255.lcssa, ptr %3, align 1
  br label %296

296:                                              ; preds = %._crit_edge87, %267
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  store i32 0, ptr %1, align 4
  %297 = load i32, ptr %1, align 4
  %298 = icmp sle i32 %297, 0
  br i1 %298, label %.lr.ph95, label %325

.lr.ph95:                                         ; preds = %296
  %.promoted264 = load i32, ptr %1, align 4
  %.promoted266 = load i32, ptr %3, align 1
  br label %299

299:                                              ; preds = %.lr.ph95, %322
  %.lcssa257259.lcssa267 = phi i32 [ %.promoted266, %.lr.ph95 ], [ %.lcssa257259.lcssa268, %322 ]
  %300 = phi i32 [ %.promoted264, %.lr.ph95 ], [ %323, %322 ]
  %301 = icmp sle i32 0, 0
  br i1 %301, label %.lr.ph92, label %321

.lr.ph92:                                         ; preds = %299
  br label %302

302:                                              ; preds = %.lr.ph92, %318
  %303 = phi i32 [ 0, %.lr.ph92 ], [ %319, %318 ]
  %304 = icmp sle i32 0, 2
  br i1 %304, label %.lr.ph89, label %317

.lr.ph89:                                         ; preds = %302
  br label %305

305:                                              ; preds = %.lr.ph89, %314
  %306 = phi i32 [ 0, %.lr.ph89 ], [ %315, %314 ]
  %307 = phi i32 [ 0, %.lr.ph89 ], [ %315, %314 ]
  %308 = mul nsw i32 8, %307
  %309 = add nsw i32 %303, %308
  %310 = mul nsw i32 8, %309
  %311 = add nsw i32 %300, %310
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 0, i64 %312
  store i32 1, ptr %313, align 4
  br label %314

314:                                              ; preds = %305
  %315 = add nsw i32 %306, 1
  %316 = icmp sle i32 %315, 2
  br i1 %316, label %305, label %._crit_edge90, !llvm.loop !43

._crit_edge90:                                    ; preds = %314
  %.lcssa257 = phi i32 [ %315, %314 ]
  br label %317

317:                                              ; preds = %._crit_edge90, %302
  %.lcssa257259 = phi i32 [ %.lcssa257, %._crit_edge90 ], [ 0, %302 ]
  br label %318

318:                                              ; preds = %317
  %319 = add nsw i32 %303, 1
  %320 = icmp sle i32 %319, 0
  br i1 %320, label %302, label %._crit_edge93, !llvm.loop !44

._crit_edge93:                                    ; preds = %318
  %.lcssa261 = phi i32 [ %319, %318 ]
  %.lcssa257259.lcssa = phi i32 [ %.lcssa257259, %318 ]
  br label %321

321:                                              ; preds = %._crit_edge93, %299
  %.lcssa257259.lcssa268 = phi i32 [ %.lcssa257259.lcssa, %._crit_edge93 ], [ %.lcssa257259.lcssa267, %299 ]
  %.lcssa261263 = phi i32 [ %.lcssa261, %._crit_edge93 ], [ 0, %299 ]
  br label %322

322:                                              ; preds = %321
  %323 = add nsw i32 %300, 1
  %324 = icmp sle i32 %323, 0
  br i1 %324, label %299, label %._crit_edge96, !llvm.loop !45

._crit_edge96:                                    ; preds = %322
  %.lcssa257259.lcssa268.lcssa = phi i32 [ %.lcssa257259.lcssa268, %322 ]
  %.lcssa265 = phi i32 [ %323, %322 ]
  %.lcssa261263.lcssa = phi i32 [ %.lcssa261263, %322 ]
  store i32 %.lcssa261263.lcssa, ptr %2, align 4
  store i32 %.lcssa265, ptr %1, align 4
  store i32 %.lcssa257259.lcssa268.lcssa, ptr %3, align 1
  br label %325

325:                                              ; preds = %._crit_edge96, %296
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  store i32 0, ptr %1, align 4
  %326 = load i32, ptr %1, align 4
  %327 = icmp sle i32 %326, 1
  br i1 %327, label %.lr.ph104, label %354

.lr.ph104:                                        ; preds = %325
  %.promoted277 = load i32, ptr %1, align 4
  %.promoted279 = load i32, ptr %3, align 1
  br label %328

328:                                              ; preds = %.lr.ph104, %351
  %.lcssa270272.lcssa280 = phi i32 [ %.promoted279, %.lr.ph104 ], [ %.lcssa270272.lcssa281, %351 ]
  %329 = phi i32 [ %.promoted277, %.lr.ph104 ], [ %352, %351 ]
  %330 = icmp sle i32 0, 1
  br i1 %330, label %.lr.ph101, label %350

.lr.ph101:                                        ; preds = %328
  br label %331

331:                                              ; preds = %.lr.ph101, %347
  %332 = phi i32 [ 0, %.lr.ph101 ], [ %348, %347 ]
  %333 = icmp sle i32 0, 0
  br i1 %333, label %.lr.ph98, label %346

.lr.ph98:                                         ; preds = %331
  br label %334

334:                                              ; preds = %.lr.ph98, %343
  %335 = phi i32 [ 0, %.lr.ph98 ], [ %344, %343 ]
  %336 = phi i32 [ 0, %.lr.ph98 ], [ %344, %343 ]
  %337 = mul nsw i32 8, %336
  %338 = add nsw i32 %332, %337
  %339 = mul nsw i32 8, %338
  %340 = add nsw i32 %329, %339
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 0, i64 %341
  store i32 1, ptr %342, align 4
  br label %343

343:                                              ; preds = %334
  %344 = add nsw i32 %335, 1
  %345 = icmp sle i32 %344, 0
  br i1 %345, label %334, label %._crit_edge99, !llvm.loop !46

._crit_edge99:                                    ; preds = %343
  %.lcssa270 = phi i32 [ %344, %343 ]
  br label %346

346:                                              ; preds = %._crit_edge99, %331
  %.lcssa270272 = phi i32 [ %.lcssa270, %._crit_edge99 ], [ 0, %331 ]
  br label %347

347:                                              ; preds = %346
  %348 = add nsw i32 %332, 1
  %349 = icmp sle i32 %348, 1
  br i1 %349, label %331, label %._crit_edge102, !llvm.loop !47

._crit_edge102:                                   ; preds = %347
  %.lcssa274 = phi i32 [ %348, %347 ]
  %.lcssa270272.lcssa = phi i32 [ %.lcssa270272, %347 ]
  br label %350

350:                                              ; preds = %._crit_edge102, %328
  %.lcssa270272.lcssa281 = phi i32 [ %.lcssa270272.lcssa, %._crit_edge102 ], [ %.lcssa270272.lcssa280, %328 ]
  %.lcssa274276 = phi i32 [ %.lcssa274, %._crit_edge102 ], [ 0, %328 ]
  br label %351

351:                                              ; preds = %350
  %352 = add nsw i32 %329, 1
  %353 = icmp sle i32 %352, 1
  br i1 %353, label %328, label %._crit_edge105, !llvm.loop !48

._crit_edge105:                                   ; preds = %351
  %.lcssa270272.lcssa281.lcssa = phi i32 [ %.lcssa270272.lcssa281, %351 ]
  %.lcssa278 = phi i32 [ %352, %351 ]
  %.lcssa274276.lcssa = phi i32 [ %.lcssa274276, %351 ]
  store i32 %.lcssa274276.lcssa, ptr %2, align 4
  store i32 %.lcssa278, ptr %1, align 4
  store i32 %.lcssa270272.lcssa281.lcssa, ptr %3, align 1
  br label %354

354:                                              ; preds = %._crit_edge105, %325
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  store i32 0, ptr %1, align 4
  %355 = load i32, ptr %1, align 4
  %356 = icmp sle i32 %355, 1
  br i1 %356, label %.lr.ph113, label %383

.lr.ph113:                                        ; preds = %354
  %.promoted290 = load i32, ptr %1, align 4
  %.promoted292 = load i32, ptr %3, align 1
  br label %357

357:                                              ; preds = %.lr.ph113, %380
  %.lcssa283285.lcssa293 = phi i32 [ %.promoted292, %.lr.ph113 ], [ %.lcssa283285.lcssa294, %380 ]
  %358 = phi i32 [ %.promoted290, %.lr.ph113 ], [ %381, %380 ]
  %359 = icmp sle i32 0, 0
  br i1 %359, label %.lr.ph110, label %379

.lr.ph110:                                        ; preds = %357
  br label %360

360:                                              ; preds = %.lr.ph110, %376
  %361 = phi i32 [ 0, %.lr.ph110 ], [ %377, %376 ]
  %362 = icmp sle i32 0, 1
  br i1 %362, label %.lr.ph107, label %375

.lr.ph107:                                        ; preds = %360
  br label %363

363:                                              ; preds = %.lr.ph107, %372
  %364 = phi i32 [ 0, %.lr.ph107 ], [ %373, %372 ]
  %365 = phi i32 [ 0, %.lr.ph107 ], [ %373, %372 ]
  %366 = mul nsw i32 8, %365
  %367 = add nsw i32 %361, %366
  %368 = mul nsw i32 8, %367
  %369 = add nsw i32 %358, %368
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 0, i64 %370
  store i32 1, ptr %371, align 4
  br label %372

372:                                              ; preds = %363
  %373 = add nsw i32 %364, 1
  %374 = icmp sle i32 %373, 1
  br i1 %374, label %363, label %._crit_edge108, !llvm.loop !49

._crit_edge108:                                   ; preds = %372
  %.lcssa283 = phi i32 [ %373, %372 ]
  br label %375

375:                                              ; preds = %._crit_edge108, %360
  %.lcssa283285 = phi i32 [ %.lcssa283, %._crit_edge108 ], [ 0, %360 ]
  br label %376

376:                                              ; preds = %375
  %377 = add nsw i32 %361, 1
  %378 = icmp sle i32 %377, 0
  br i1 %378, label %360, label %._crit_edge111, !llvm.loop !50

._crit_edge111:                                   ; preds = %376
  %.lcssa287 = phi i32 [ %377, %376 ]
  %.lcssa283285.lcssa = phi i32 [ %.lcssa283285, %376 ]
  br label %379

379:                                              ; preds = %._crit_edge111, %357
  %.lcssa283285.lcssa294 = phi i32 [ %.lcssa283285.lcssa, %._crit_edge111 ], [ %.lcssa283285.lcssa293, %357 ]
  %.lcssa287289 = phi i32 [ %.lcssa287, %._crit_edge111 ], [ 0, %357 ]
  br label %380

380:                                              ; preds = %379
  %381 = add nsw i32 %358, 1
  %382 = icmp sle i32 %381, 1
  br i1 %382, label %357, label %._crit_edge114, !llvm.loop !51

._crit_edge114:                                   ; preds = %380
  %.lcssa283285.lcssa294.lcssa = phi i32 [ %.lcssa283285.lcssa294, %380 ]
  %.lcssa291 = phi i32 [ %381, %380 ]
  %.lcssa287289.lcssa = phi i32 [ %.lcssa287289, %380 ]
  store i32 %.lcssa287289.lcssa, ptr %2, align 4
  store i32 %.lcssa291, ptr %1, align 4
  store i32 %.lcssa283285.lcssa294.lcssa, ptr %3, align 1
  br label %383

383:                                              ; preds = %._crit_edge114, %354
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  store i32 0, ptr %1, align 4
  %384 = load i32, ptr %1, align 4
  %385 = icmp sle i32 %384, 0
  br i1 %385, label %.lr.ph122, label %412

.lr.ph122:                                        ; preds = %383
  %.promoted303 = load i32, ptr %1, align 4
  %.promoted305 = load i32, ptr %3, align 1
  br label %386

386:                                              ; preds = %.lr.ph122, %409
  %.lcssa296298.lcssa306 = phi i32 [ %.promoted305, %.lr.ph122 ], [ %.lcssa296298.lcssa307, %409 ]
  %387 = phi i32 [ %.promoted303, %.lr.ph122 ], [ %410, %409 ]
  %388 = icmp sle i32 0, 1
  br i1 %388, label %.lr.ph119, label %408

.lr.ph119:                                        ; preds = %386
  br label %389

389:                                              ; preds = %.lr.ph119, %405
  %390 = phi i32 [ 0, %.lr.ph119 ], [ %406, %405 ]
  %391 = icmp sle i32 0, 1
  br i1 %391, label %.lr.ph116, label %404

.lr.ph116:                                        ; preds = %389
  br label %392

392:                                              ; preds = %.lr.ph116, %401
  %393 = phi i32 [ 0, %.lr.ph116 ], [ %402, %401 ]
  %394 = phi i32 [ 0, %.lr.ph116 ], [ %402, %401 ]
  %395 = mul nsw i32 8, %394
  %396 = add nsw i32 %390, %395
  %397 = mul nsw i32 8, %396
  %398 = add nsw i32 %387, %397
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 0, i64 %399
  store i32 1, ptr %400, align 4
  br label %401

401:                                              ; preds = %392
  %402 = add nsw i32 %393, 1
  %403 = icmp sle i32 %402, 1
  br i1 %403, label %392, label %._crit_edge117, !llvm.loop !52

._crit_edge117:                                   ; preds = %401
  %.lcssa296 = phi i32 [ %402, %401 ]
  br label %404

404:                                              ; preds = %._crit_edge117, %389
  %.lcssa296298 = phi i32 [ %.lcssa296, %._crit_edge117 ], [ 0, %389 ]
  br label %405

405:                                              ; preds = %404
  %406 = add nsw i32 %390, 1
  %407 = icmp sle i32 %406, 1
  br i1 %407, label %389, label %._crit_edge120, !llvm.loop !53

._crit_edge120:                                   ; preds = %405
  %.lcssa300 = phi i32 [ %406, %405 ]
  %.lcssa296298.lcssa = phi i32 [ %.lcssa296298, %405 ]
  br label %408

408:                                              ; preds = %._crit_edge120, %386
  %.lcssa296298.lcssa307 = phi i32 [ %.lcssa296298.lcssa, %._crit_edge120 ], [ %.lcssa296298.lcssa306, %386 ]
  %.lcssa300302 = phi i32 [ %.lcssa300, %._crit_edge120 ], [ 0, %386 ]
  br label %409

409:                                              ; preds = %408
  %410 = add nsw i32 %387, 1
  %411 = icmp sle i32 %410, 0
  br i1 %411, label %386, label %._crit_edge123, !llvm.loop !54

._crit_edge123:                                   ; preds = %409
  %.lcssa296298.lcssa307.lcssa = phi i32 [ %.lcssa296298.lcssa307, %409 ]
  %.lcssa304 = phi i32 [ %410, %409 ]
  %.lcssa300302.lcssa = phi i32 [ %.lcssa300302, %409 ]
  store i32 %.lcssa300302.lcssa, ptr %2, align 4
  store i32 %.lcssa304, ptr %1, align 4
  store i32 %.lcssa296298.lcssa307.lcssa, ptr %3, align 1
  br label %412

412:                                              ; preds = %._crit_edge123, %383
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  store i32 0, ptr %1, align 4
  %413 = load i32, ptr %1, align 4
  %414 = icmp sle i32 %413, 1
  br i1 %414, label %.lr.ph131, label %441

.lr.ph131:                                        ; preds = %412
  %.promoted316 = load i32, ptr %1, align 4
  %.promoted318 = load i32, ptr %3, align 1
  br label %415

415:                                              ; preds = %.lr.ph131, %438
  %.lcssa309311.lcssa319 = phi i32 [ %.promoted318, %.lr.ph131 ], [ %.lcssa309311.lcssa320, %438 ]
  %416 = phi i32 [ %.promoted316, %.lr.ph131 ], [ %439, %438 ]
  %417 = icmp sle i32 0, 1
  br i1 %417, label %.lr.ph128, label %437

.lr.ph128:                                        ; preds = %415
  br label %418

418:                                              ; preds = %.lr.ph128, %434
  %419 = phi i32 [ 0, %.lr.ph128 ], [ %435, %434 ]
  %420 = icmp sle i32 0, 1
  br i1 %420, label %.lr.ph125, label %433

.lr.ph125:                                        ; preds = %418
  br label %421

421:                                              ; preds = %.lr.ph125, %430
  %422 = phi i32 [ 0, %.lr.ph125 ], [ %431, %430 ]
  %423 = phi i32 [ 0, %.lr.ph125 ], [ %431, %430 ]
  %424 = mul nsw i32 8, %423
  %425 = add nsw i32 %419, %424
  %426 = mul nsw i32 8, %425
  %427 = add nsw i32 %416, %426
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 0, i64 %428
  store i32 1, ptr %429, align 4
  br label %430

430:                                              ; preds = %421
  %431 = add nsw i32 %422, 1
  %432 = icmp sle i32 %431, 1
  br i1 %432, label %421, label %._crit_edge126, !llvm.loop !55

._crit_edge126:                                   ; preds = %430
  %.lcssa309 = phi i32 [ %431, %430 ]
  br label %433

433:                                              ; preds = %._crit_edge126, %418
  %.lcssa309311 = phi i32 [ %.lcssa309, %._crit_edge126 ], [ 0, %418 ]
  br label %434

434:                                              ; preds = %433
  %435 = add nsw i32 %419, 1
  %436 = icmp sle i32 %435, 1
  br i1 %436, label %418, label %._crit_edge129, !llvm.loop !56

._crit_edge129:                                   ; preds = %434
  %.lcssa313 = phi i32 [ %435, %434 ]
  %.lcssa309311.lcssa = phi i32 [ %.lcssa309311, %434 ]
  br label %437

437:                                              ; preds = %._crit_edge129, %415
  %.lcssa309311.lcssa320 = phi i32 [ %.lcssa309311.lcssa, %._crit_edge129 ], [ %.lcssa309311.lcssa319, %415 ]
  %.lcssa313315 = phi i32 [ %.lcssa313, %._crit_edge129 ], [ 0, %415 ]
  br label %438

438:                                              ; preds = %437
  %439 = add nsw i32 %416, 1
  %440 = icmp sle i32 %439, 1
  br i1 %440, label %415, label %._crit_edge132, !llvm.loop !57

._crit_edge132:                                   ; preds = %438
  %.lcssa309311.lcssa320.lcssa = phi i32 [ %.lcssa309311.lcssa320, %438 ]
  %.lcssa317 = phi i32 [ %439, %438 ]
  %.lcssa313315.lcssa = phi i32 [ %.lcssa313315, %438 ]
  store i32 %.lcssa313315.lcssa, ptr %2, align 4
  store i32 %.lcssa317, ptr %1, align 4
  store i32 %.lcssa309311.lcssa320.lcssa, ptr %3, align 1
  br label %441

441:                                              ; preds = %._crit_edge132, %412
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 73, ptr %4, align 4
  store i32 0, ptr @kount, align 4
  %442 = load i32, ptr %4, align 4
  %443 = call i32 @Fit(i32 noundef 0, i32 noundef %442)
  %444 = icmp ne i32 %443, 0
  br i1 %444, label %445, label %448

445:                                              ; preds = %441
  %446 = load i32, ptr %4, align 4
  %447 = call i32 @Place(i32 noundef 0, i32 noundef %446)
  store i32 %447, ptr @n, align 4
  br label %450

448:                                              ; preds = %441
  %449 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  br label %450

450:                                              ; preds = %448, %445
  %451 = load i32, ptr @n, align 4
  %452 = call i32 @Trial(i32 noundef %451)
  %453 = icmp ne i32 %452, 0
  br i1 %453, label %456, label %454

454:                                              ; preds = %450
  %455 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  br label %462

456:                                              ; preds = %450
  %457 = load i32, ptr @kount, align 4
  %458 = icmp ne i32 %457, 2005
  br i1 %458, label %459, label %461

459:                                              ; preds = %456
  %460 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %461

461:                                              ; preds = %459, %456
  br label %462

462:                                              ; preds = %461, %454
  %463 = load i32, ptr @n, align 4
  %464 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %463)
  %465 = load i32, ptr @kount, align 4
  %466 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %465)
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  store i32 0, ptr %2, align 4
  %3 = load i32, ptr %2, align 4
  %4 = icmp slt i32 %3, 100
  br i1 %4, label %.lr.ph, label %10

.lr.ph:                                           ; preds = %0
  %.promoted = load i32, ptr %2, align 4
  br label %5

5:                                                ; preds = %.lr.ph, %7
  %6 = phi i32 [ %.promoted, %.lr.ph ], [ %8, %7 ]
  call void @Puzzle()
  br label %7

7:                                                ; preds = %5
  %8 = add nsw i32 %6, 1
  %9 = icmp slt i32 %8, 100
  br i1 %9, label %5, label %._crit_edge, !llvm.loop !58

._crit_edge:                                      ; preds = %7
  %.lcssa = phi i32 [ %8, %7 ]
  store i32 %.lcssa, ptr %2, align 4
  br label %10

10:                                               ; preds = %._crit_edge, %0
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
