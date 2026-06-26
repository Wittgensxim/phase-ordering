; ModuleID = 'results\paper_round2\Stanford_Puzzle\Stanford_Puzzle.ll'
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
  %7 = load i32, ptr %6, align 4
  %8 = load i32, ptr %4, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [13 x i32], ptr @piecemax, i64 0, i64 %9
  %11 = load i32, ptr %10, align 4
  %12 = icmp sle i32 %7, %11
  br i1 %12, label %.lr.ph, label %39

.lr.ph:                                           ; preds = %2
  %13 = load i32, ptr %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [13 x [512 x i32]], ptr @p, i64 0, i64 %14
  %16 = load i32, ptr %5, align 4
  %17 = load i32, ptr %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [13 x i32], ptr @piecemax, i64 0, i64 %18
  %.promoted = load i32, ptr %6, align 4
  br label %20

20:                                               ; preds = %.lr.ph, %35
  %21 = phi i32 [ %.promoted, %.lr.ph ], [ %36, %35 ]
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [512 x i32], ptr %15, i64 0, i64 %22
  %24 = load i32, ptr %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %20
  %27 = add nsw i32 %16, %21
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %28
  %30 = load i32, ptr %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  %.lcssa = phi i32 [ %21, %26 ]
  store i32 %.lcssa, ptr %6, align 4
  store i32 0, ptr %3, align 4
  br label %40

33:                                               ; preds = %26
  br label %34

34:                                               ; preds = %33, %20
  br label %35

35:                                               ; preds = %34
  %36 = add nsw i32 %21, 1
  %37 = load i32, ptr %19, align 4
  %38 = icmp sle i32 %36, %37
  br i1 %38, label %20, label %._crit_edge, !llvm.loop !7

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
  %13 = load i32, ptr %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [13 x [512 x i32]], ptr @p, i64 0, i64 %14
  %16 = load i32, ptr %5, align 4
  %17 = load i32, ptr %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [13 x i32], ptr @piecemax, i64 0, i64 %18
  %20 = load i32, ptr %19, align 4
  %.promoted = load i32, ptr %6, align 4
  br label %21

21:                                               ; preds = %.lr.ph, %32
  %22 = phi i32 [ %.promoted, %.lr.ph ], [ %33, %32 ]
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [512 x i32], ptr %15, i64 0, i64 %23
  %25 = load i32, ptr %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = add nsw i32 %16, %22
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %29
  store i32 1, ptr %30, align 4
  br label %31

31:                                               ; preds = %27, %21
  br label %32

32:                                               ; preds = %31
  %33 = add nsw i32 %22, 1
  %34 = icmp sle i32 %33, %20
  br i1 %34, label %21, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %32
  %.lcssa = phi i32 [ %33, %32 ]
  store i32 %.lcssa, ptr %6, align 4
  br label %35

35:                                               ; preds = %._crit_edge, %2
  %36 = load i32, ptr %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [13 x i32], ptr @class, i64 0, i64 %37
  %39 = load i32, ptr %38, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [4 x i32], ptr @piececount, i64 0, i64 %40
  %42 = load i32, ptr %41, align 4
  %43 = sub nsw i32 %42, 1
  %44 = load i32, ptr %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [13 x i32], ptr @class, i64 0, i64 %45
  %47 = load i32, ptr %46, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [4 x i32], ptr @piececount, i64 0, i64 %48
  store i32 %43, ptr %49, align 4
  %50 = load i32, ptr %5, align 4
  store i32 %50, ptr %6, align 4
  %51 = load i32, ptr %6, align 4
  %52 = icmp sle i32 %51, 511
  br i1 %52, label %.lr.ph2, label %65

.lr.ph2:                                          ; preds = %35
  %.promoted4 = load i32, ptr %6, align 4
  br label %53

53:                                               ; preds = %.lr.ph2, %62
  %54 = phi i32 [ %.promoted4, %.lr.ph2 ], [ %63, %62 ]
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %55
  %57 = load i32, ptr %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %53
  %.lcssa5 = phi i32 [ %54, %53 ]
  store i32 %.lcssa5, ptr %6, align 4
  %60 = load i32, ptr %6, align 4
  store i32 %60, ptr %3, align 4
  br label %66

61:                                               ; preds = %53
  br label %62

62:                                               ; preds = %61
  %63 = add nsw i32 %54, 1
  %64 = icmp sle i32 %63, 511
  br i1 %64, label %53, label %._crit_edge3, !llvm.loop !10

._crit_edge3:                                     ; preds = %62
  %.lcssa6 = phi i32 [ %63, %62 ]
  store i32 %.lcssa6, ptr %6, align 4
  br label %65

65:                                               ; preds = %._crit_edge3, %35
  store i32 0, ptr %3, align 4
  br label %66

66:                                               ; preds = %65, %59
  %67 = load i32, ptr %3, align 4
  ret i32 %67
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
  %12 = load i32, ptr %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [13 x [512 x i32]], ptr @p, i64 0, i64 %13
  %15 = load i32, ptr %4, align 4
  %16 = load i32, ptr %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [13 x i32], ptr @piecemax, i64 0, i64 %17
  %19 = load i32, ptr %18, align 4
  %.promoted = load i32, ptr %5, align 4
  br label %20

20:                                               ; preds = %.lr.ph, %31
  %21 = phi i32 [ %.promoted, %.lr.ph ], [ %32, %31 ]
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [512 x i32], ptr %14, i64 0, i64 %22
  %24 = load i32, ptr %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = add nsw i32 %15, %21
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %28
  store i32 0, ptr %29, align 4
  br label %30

30:                                               ; preds = %26, %20
  br label %31

31:                                               ; preds = %30
  %32 = add nsw i32 %21, 1
  %33 = icmp sle i32 %32, %19
  br i1 %33, label %20, label %._crit_edge, !llvm.loop !11

._crit_edge:                                      ; preds = %31
  %.lcssa = phi i32 [ %32, %31 ]
  store i32 %.lcssa, ptr %5, align 4
  br label %34

34:                                               ; preds = %._crit_edge, %2
  %35 = load i32, ptr %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [13 x i32], ptr @class, i64 0, i64 %36
  %38 = load i32, ptr %37, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [4 x i32], ptr @piececount, i64 0, i64 %39
  %41 = load i32, ptr %40, align 4
  %42 = add nsw i32 %41, 1
  %43 = load i32, ptr %3, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [13 x i32], ptr @class, i64 0, i64 %44
  %46 = load i32, ptr %45, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [4 x i32], ptr @piececount, i64 0, i64 %47
  store i32 %42, ptr %48, align 4
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
  br i1 %9, label %.lr.ph, label %42

.lr.ph:                                           ; preds = %1
  %10 = load i32, ptr %3, align 4
  %11 = load i32, ptr %3, align 4
  %12 = load i32, ptr %3, align 4
  %.promoted = load i32, ptr %4, align 4
  %.promoted2 = load i32, ptr %5, align 4
  br label %13

13:                                               ; preds = %.lr.ph, %39
  %14 = phi i32 [ %.promoted2, %.lr.ph ], [ %38, %39 ]
  %15 = phi i32 [ %.promoted, %.lr.ph ], [ %40, %39 ]
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [13 x i32], ptr @class, i64 0, i64 %16
  %18 = load i32, ptr %17, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [4 x i32], ptr @piececount, i64 0, i64 %19
  %21 = load i32, ptr %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %13
  %24 = call i32 @Fit(i32 noundef %15, i32 noundef %10)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %23
  %27 = call i32 @Place(i32 noundef %15, i32 noundef %11)
  %28 = call i32 @Trial(i32 noundef %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = icmp eq i32 %27, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %30, %26
  %.lcssa3 = phi i32 [ %27, %30 ], [ %27, %26 ]
  %.lcssa = phi i32 [ %15, %30 ], [ %15, %26 ]
  store i32 %.lcssa, ptr %4, align 4
  store i32 %.lcssa3, ptr %5, align 4
  store i32 1, ptr %2, align 4
  br label %43

33:                                               ; preds = %30
  call void @Remove(i32 noundef %15, i32 noundef %12)
  br label %34

34:                                               ; preds = %33
  br label %35

35:                                               ; preds = %34, %23
  %36 = phi i32 [ %27, %34 ], [ %14, %23 ]
  br label %37

37:                                               ; preds = %35, %13
  %38 = phi i32 [ %36, %35 ], [ %14, %13 ]
  br label %39

39:                                               ; preds = %37
  %40 = add nsw i32 %15, 1
  %41 = icmp sle i32 %40, 12
  br i1 %41, label %13, label %._crit_edge, !llvm.loop !12

._crit_edge:                                      ; preds = %39
  %.lcssa4 = phi i32 [ %38, %39 ]
  %.lcssa1 = phi i32 [ %40, %39 ]
  store i32 %.lcssa1, ptr %4, align 4
  store i32 %.lcssa4, ptr %5, align 4
  br label %42

42:                                               ; preds = %._crit_edge, %1
  store i32 0, ptr %2, align 4
  br label %43

43:                                               ; preds = %42, %32
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
  %5 = load i32, ptr %4, align 4
  %6 = icmp sle i32 %5, 511
  br i1 %6, label %.lr.ph, label %14

.lr.ph:                                           ; preds = %0
  %.promoted = load i32, ptr %4, align 4
  br label %7

7:                                                ; preds = %.lr.ph, %11
  %8 = phi i32 [ %.promoted, %.lr.ph ], [ %12, %11 ]
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %9
  store i32 1, ptr %10, align 4
  br label %11

11:                                               ; preds = %7
  %12 = add nsw i32 %8, 1
  %13 = icmp sle i32 %12, 511
  br i1 %13, label %7, label %._crit_edge, !llvm.loop !13

._crit_edge:                                      ; preds = %11
  %.lcssa = phi i32 [ %12, %11 ]
  store i32 %.lcssa, ptr %4, align 4
  br label %14

14:                                               ; preds = %._crit_edge, %0
  store i32 1, ptr %1, align 4
  %15 = load i32, ptr %1, align 4
  %16 = icmp sle i32 %15, 5
  br i1 %16, label %.lr.ph8, label %42

.lr.ph8:                                          ; preds = %14
  %.promoted141 = load i32, ptr %1, align 4
  %.promoted143 = load i32, ptr %3, align 1
  br label %17

17:                                               ; preds = %.lr.ph8, %39
  %.lcssa134136.lcssa144 = phi i32 [ %.promoted143, %.lr.ph8 ], [ %.lcssa134136.lcssa145, %39 ]
  %18 = phi i32 [ %.promoted141, %.lr.ph8 ], [ %40, %39 ]
  %19 = icmp sle i32 1, 5
  br i1 %19, label %.lr.ph5, label %38

.lr.ph5:                                          ; preds = %17
  br label %20

20:                                               ; preds = %.lr.ph5, %35
  %21 = phi i32 [ 1, %.lr.ph5 ], [ %36, %35 ]
  %22 = icmp sle i32 1, 5
  br i1 %22, label %.lr.ph2, label %34

.lr.ph2:                                          ; preds = %20
  br label %23

23:                                               ; preds = %.lr.ph2, %31
  %24 = phi i32 [ 1, %.lr.ph2 ], [ %32, %31 ]
  %25 = mul nsw i32 8, %24
  %26 = add nsw i32 %21, %25
  %27 = mul nsw i32 8, %26
  %28 = add nsw i32 %18, %27
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %29
  store i32 0, ptr %30, align 4
  br label %31

31:                                               ; preds = %23
  %32 = add nsw i32 %24, 1
  %33 = icmp sle i32 %32, 5
  br i1 %33, label %23, label %._crit_edge3, !llvm.loop !14

._crit_edge3:                                     ; preds = %31
  %.lcssa134 = phi i32 [ %32, %31 ]
  br label %34

34:                                               ; preds = %._crit_edge3, %20
  %.lcssa134136 = phi i32 [ %.lcssa134, %._crit_edge3 ], [ 1, %20 ]
  br label %35

35:                                               ; preds = %34
  %36 = add nsw i32 %21, 1
  %37 = icmp sle i32 %36, 5
  br i1 %37, label %20, label %._crit_edge6, !llvm.loop !15

._crit_edge6:                                     ; preds = %35
  %.lcssa138 = phi i32 [ %36, %35 ]
  %.lcssa134136.lcssa = phi i32 [ %.lcssa134136, %35 ]
  br label %38

38:                                               ; preds = %._crit_edge6, %17
  %.lcssa134136.lcssa145 = phi i32 [ %.lcssa134136.lcssa, %._crit_edge6 ], [ %.lcssa134136.lcssa144, %17 ]
  %.lcssa138140 = phi i32 [ %.lcssa138, %._crit_edge6 ], [ 1, %17 ]
  br label %39

39:                                               ; preds = %38
  %40 = add nsw i32 %18, 1
  %41 = icmp sle i32 %40, 5
  br i1 %41, label %17, label %._crit_edge9, !llvm.loop !16

._crit_edge9:                                     ; preds = %39
  %.lcssa134136.lcssa145.lcssa = phi i32 [ %.lcssa134136.lcssa145, %39 ]
  %.lcssa142 = phi i32 [ %40, %39 ]
  %.lcssa138140.lcssa = phi i32 [ %.lcssa138140, %39 ]
  store i32 %.lcssa138140.lcssa, ptr %2, align 4
  store i32 %.lcssa142, ptr %1, align 4
  store i32 %.lcssa134136.lcssa145.lcssa, ptr %3, align 1
  br label %42

42:                                               ; preds = %._crit_edge9, %14
  store i32 0, ptr %1, align 4
  %43 = load i32, ptr %1, align 4
  %44 = icmp sle i32 %43, 12
  br i1 %44, label %.lr.ph14, label %61

.lr.ph14:                                         ; preds = %42
  %.promoted150 = load i32, ptr %1, align 4
  br label %45

45:                                               ; preds = %.lr.ph14, %58
  %46 = phi i32 [ %.promoted150, %.lr.ph14 ], [ %59, %58 ]
  %47 = icmp sle i32 0, 511
  br i1 %47, label %.lr.ph11, label %57

.lr.ph11:                                         ; preds = %45
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds [13 x [512 x i32]], ptr @p, i64 0, i64 %48
  br label %50

50:                                               ; preds = %.lr.ph11, %54
  %51 = phi i32 [ 0, %.lr.ph11 ], [ %55, %54 ]
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [512 x i32], ptr %49, i64 0, i64 %52
  store i32 0, ptr %53, align 4
  br label %54

54:                                               ; preds = %50
  %55 = add nsw i32 %51, 1
  %56 = icmp sle i32 %55, 511
  br i1 %56, label %50, label %._crit_edge12, !llvm.loop !17

._crit_edge12:                                    ; preds = %54
  %.lcssa147 = phi i32 [ %55, %54 ]
  br label %57

57:                                               ; preds = %._crit_edge12, %45
  %.lcssa147149 = phi i32 [ %.lcssa147, %._crit_edge12 ], [ 0, %45 ]
  br label %58

58:                                               ; preds = %57
  %59 = add nsw i32 %46, 1
  %60 = icmp sle i32 %59, 12
  br i1 %60, label %45, label %._crit_edge15, !llvm.loop !18

._crit_edge15:                                    ; preds = %58
  %.lcssa151 = phi i32 [ %59, %58 ]
  %.lcssa147149.lcssa = phi i32 [ %.lcssa147149, %58 ]
  store i32 %.lcssa147149.lcssa, ptr %4, align 4
  store i32 %.lcssa151, ptr %1, align 4
  br label %61

61:                                               ; preds = %._crit_edge15, %42
  store i32 0, ptr %1, align 4
  %62 = load i32, ptr %1, align 4
  %63 = icmp sle i32 %62, 3
  br i1 %63, label %.lr.ph23, label %89

.lr.ph23:                                         ; preds = %61
  %.promoted160 = load i32, ptr %1, align 4
  %.promoted162 = load i32, ptr %3, align 1
  br label %64

64:                                               ; preds = %.lr.ph23, %86
  %.lcssa153155.lcssa163 = phi i32 [ %.promoted162, %.lr.ph23 ], [ %.lcssa153155.lcssa164, %86 ]
  %65 = phi i32 [ %.promoted160, %.lr.ph23 ], [ %87, %86 ]
  %66 = icmp sle i32 0, 1
  br i1 %66, label %.lr.ph20, label %85

.lr.ph20:                                         ; preds = %64
  br label %67

67:                                               ; preds = %.lr.ph20, %82
  %68 = phi i32 [ 0, %.lr.ph20 ], [ %83, %82 ]
  %69 = icmp sle i32 0, 0
  br i1 %69, label %.lr.ph17, label %81

.lr.ph17:                                         ; preds = %67
  br label %70

70:                                               ; preds = %.lr.ph17, %78
  %71 = phi i32 [ 0, %.lr.ph17 ], [ %79, %78 ]
  %72 = mul nsw i32 8, %71
  %73 = add nsw i32 %68, %72
  %74 = mul nsw i32 8, %73
  %75 = add nsw i32 %65, %74
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [512 x i32], ptr @p, i64 0, i64 %76
  store i32 1, ptr %77, align 4
  br label %78

78:                                               ; preds = %70
  %79 = add nsw i32 %71, 1
  %80 = icmp sle i32 %79, 0
  br i1 %80, label %70, label %._crit_edge18, !llvm.loop !19

._crit_edge18:                                    ; preds = %78
  %.lcssa153 = phi i32 [ %79, %78 ]
  br label %81

81:                                               ; preds = %._crit_edge18, %67
  %.lcssa153155 = phi i32 [ %.lcssa153, %._crit_edge18 ], [ 0, %67 ]
  br label %82

82:                                               ; preds = %81
  %83 = add nsw i32 %68, 1
  %84 = icmp sle i32 %83, 1
  br i1 %84, label %67, label %._crit_edge21, !llvm.loop !20

._crit_edge21:                                    ; preds = %82
  %.lcssa157 = phi i32 [ %83, %82 ]
  %.lcssa153155.lcssa = phi i32 [ %.lcssa153155, %82 ]
  br label %85

85:                                               ; preds = %._crit_edge21, %64
  %.lcssa153155.lcssa164 = phi i32 [ %.lcssa153155.lcssa, %._crit_edge21 ], [ %.lcssa153155.lcssa163, %64 ]
  %.lcssa157159 = phi i32 [ %.lcssa157, %._crit_edge21 ], [ 0, %64 ]
  br label %86

86:                                               ; preds = %85
  %87 = add nsw i32 %65, 1
  %88 = icmp sle i32 %87, 3
  br i1 %88, label %64, label %._crit_edge24, !llvm.loop !21

._crit_edge24:                                    ; preds = %86
  %.lcssa153155.lcssa164.lcssa = phi i32 [ %.lcssa153155.lcssa164, %86 ]
  %.lcssa161 = phi i32 [ %87, %86 ]
  %.lcssa157159.lcssa = phi i32 [ %.lcssa157159, %86 ]
  store i32 %.lcssa157159.lcssa, ptr %2, align 4
  store i32 %.lcssa161, ptr %1, align 4
  store i32 %.lcssa153155.lcssa164.lcssa, ptr %3, align 1
  br label %89

89:                                               ; preds = %._crit_edge24, %61
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  store i32 0, ptr %1, align 4
  %90 = load i32, ptr %1, align 4
  %91 = icmp sle i32 %90, 1
  br i1 %91, label %.lr.ph32, label %117

.lr.ph32:                                         ; preds = %89
  %.promoted173 = load i32, ptr %1, align 4
  %.promoted175 = load i32, ptr %3, align 1
  br label %92

92:                                               ; preds = %.lr.ph32, %114
  %.lcssa166168.lcssa176 = phi i32 [ %.promoted175, %.lr.ph32 ], [ %.lcssa166168.lcssa177, %114 ]
  %93 = phi i32 [ %.promoted173, %.lr.ph32 ], [ %115, %114 ]
  %94 = icmp sle i32 0, 0
  br i1 %94, label %.lr.ph29, label %113

.lr.ph29:                                         ; preds = %92
  br label %95

95:                                               ; preds = %.lr.ph29, %110
  %96 = phi i32 [ 0, %.lr.ph29 ], [ %111, %110 ]
  %97 = icmp sle i32 0, 3
  br i1 %97, label %.lr.ph26, label %109

.lr.ph26:                                         ; preds = %95
  br label %98

98:                                               ; preds = %.lr.ph26, %106
  %99 = phi i32 [ 0, %.lr.ph26 ], [ %107, %106 ]
  %100 = mul nsw i32 8, %99
  %101 = add nsw i32 %96, %100
  %102 = mul nsw i32 8, %101
  %103 = add nsw i32 %93, %102
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 0, i64 %104
  store i32 1, ptr %105, align 4
  br label %106

106:                                              ; preds = %98
  %107 = add nsw i32 %99, 1
  %108 = icmp sle i32 %107, 3
  br i1 %108, label %98, label %._crit_edge27, !llvm.loop !22

._crit_edge27:                                    ; preds = %106
  %.lcssa166 = phi i32 [ %107, %106 ]
  br label %109

109:                                              ; preds = %._crit_edge27, %95
  %.lcssa166168 = phi i32 [ %.lcssa166, %._crit_edge27 ], [ 0, %95 ]
  br label %110

110:                                              ; preds = %109
  %111 = add nsw i32 %96, 1
  %112 = icmp sle i32 %111, 0
  br i1 %112, label %95, label %._crit_edge30, !llvm.loop !23

._crit_edge30:                                    ; preds = %110
  %.lcssa170 = phi i32 [ %111, %110 ]
  %.lcssa166168.lcssa = phi i32 [ %.lcssa166168, %110 ]
  br label %113

113:                                              ; preds = %._crit_edge30, %92
  %.lcssa166168.lcssa177 = phi i32 [ %.lcssa166168.lcssa, %._crit_edge30 ], [ %.lcssa166168.lcssa176, %92 ]
  %.lcssa170172 = phi i32 [ %.lcssa170, %._crit_edge30 ], [ 0, %92 ]
  br label %114

114:                                              ; preds = %113
  %115 = add nsw i32 %93, 1
  %116 = icmp sle i32 %115, 1
  br i1 %116, label %92, label %._crit_edge33, !llvm.loop !24

._crit_edge33:                                    ; preds = %114
  %.lcssa166168.lcssa177.lcssa = phi i32 [ %.lcssa166168.lcssa177, %114 ]
  %.lcssa174 = phi i32 [ %115, %114 ]
  %.lcssa170172.lcssa = phi i32 [ %.lcssa170172, %114 ]
  store i32 %.lcssa170172.lcssa, ptr %2, align 4
  store i32 %.lcssa174, ptr %1, align 4
  store i32 %.lcssa166168.lcssa177.lcssa, ptr %3, align 1
  br label %117

117:                                              ; preds = %._crit_edge33, %89
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  store i32 0, ptr %1, align 4
  %118 = load i32, ptr %1, align 4
  %119 = icmp sle i32 %118, 0
  br i1 %119, label %.lr.ph41, label %145

.lr.ph41:                                         ; preds = %117
  %.promoted186 = load i32, ptr %1, align 4
  %.promoted188 = load i32, ptr %3, align 1
  br label %120

120:                                              ; preds = %.lr.ph41, %142
  %.lcssa179181.lcssa189 = phi i32 [ %.promoted188, %.lr.ph41 ], [ %.lcssa179181.lcssa190, %142 ]
  %121 = phi i32 [ %.promoted186, %.lr.ph41 ], [ %143, %142 ]
  %122 = icmp sle i32 0, 3
  br i1 %122, label %.lr.ph38, label %141

.lr.ph38:                                         ; preds = %120
  br label %123

123:                                              ; preds = %.lr.ph38, %138
  %124 = phi i32 [ 0, %.lr.ph38 ], [ %139, %138 ]
  %125 = icmp sle i32 0, 1
  br i1 %125, label %.lr.ph35, label %137

.lr.ph35:                                         ; preds = %123
  br label %126

126:                                              ; preds = %.lr.ph35, %134
  %127 = phi i32 [ 0, %.lr.ph35 ], [ %135, %134 ]
  %128 = mul nsw i32 8, %127
  %129 = add nsw i32 %124, %128
  %130 = mul nsw i32 8, %129
  %131 = add nsw i32 %121, %130
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 0, i64 %132
  store i32 1, ptr %133, align 4
  br label %134

134:                                              ; preds = %126
  %135 = add nsw i32 %127, 1
  %136 = icmp sle i32 %135, 1
  br i1 %136, label %126, label %._crit_edge36, !llvm.loop !25

._crit_edge36:                                    ; preds = %134
  %.lcssa179 = phi i32 [ %135, %134 ]
  br label %137

137:                                              ; preds = %._crit_edge36, %123
  %.lcssa179181 = phi i32 [ %.lcssa179, %._crit_edge36 ], [ 0, %123 ]
  br label %138

138:                                              ; preds = %137
  %139 = add nsw i32 %124, 1
  %140 = icmp sle i32 %139, 3
  br i1 %140, label %123, label %._crit_edge39, !llvm.loop !26

._crit_edge39:                                    ; preds = %138
  %.lcssa183 = phi i32 [ %139, %138 ]
  %.lcssa179181.lcssa = phi i32 [ %.lcssa179181, %138 ]
  br label %141

141:                                              ; preds = %._crit_edge39, %120
  %.lcssa179181.lcssa190 = phi i32 [ %.lcssa179181.lcssa, %._crit_edge39 ], [ %.lcssa179181.lcssa189, %120 ]
  %.lcssa183185 = phi i32 [ %.lcssa183, %._crit_edge39 ], [ 0, %120 ]
  br label %142

142:                                              ; preds = %141
  %143 = add nsw i32 %121, 1
  %144 = icmp sle i32 %143, 0
  br i1 %144, label %120, label %._crit_edge42, !llvm.loop !27

._crit_edge42:                                    ; preds = %142
  %.lcssa179181.lcssa190.lcssa = phi i32 [ %.lcssa179181.lcssa190, %142 ]
  %.lcssa187 = phi i32 [ %143, %142 ]
  %.lcssa183185.lcssa = phi i32 [ %.lcssa183185, %142 ]
  store i32 %.lcssa183185.lcssa, ptr %2, align 4
  store i32 %.lcssa187, ptr %1, align 4
  store i32 %.lcssa179181.lcssa190.lcssa, ptr %3, align 1
  br label %145

145:                                              ; preds = %._crit_edge42, %117
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  store i32 0, ptr %1, align 4
  %146 = load i32, ptr %1, align 4
  %147 = icmp sle i32 %146, 1
  br i1 %147, label %.lr.ph50, label %173

.lr.ph50:                                         ; preds = %145
  %.promoted199 = load i32, ptr %1, align 4
  %.promoted201 = load i32, ptr %3, align 1
  br label %148

148:                                              ; preds = %.lr.ph50, %170
  %.lcssa192194.lcssa202 = phi i32 [ %.promoted201, %.lr.ph50 ], [ %.lcssa192194.lcssa203, %170 ]
  %149 = phi i32 [ %.promoted199, %.lr.ph50 ], [ %171, %170 ]
  %150 = icmp sle i32 0, 3
  br i1 %150, label %.lr.ph47, label %169

.lr.ph47:                                         ; preds = %148
  br label %151

151:                                              ; preds = %.lr.ph47, %166
  %152 = phi i32 [ 0, %.lr.ph47 ], [ %167, %166 ]
  %153 = icmp sle i32 0, 0
  br i1 %153, label %.lr.ph44, label %165

.lr.ph44:                                         ; preds = %151
  br label %154

154:                                              ; preds = %.lr.ph44, %162
  %155 = phi i32 [ 0, %.lr.ph44 ], [ %163, %162 ]
  %156 = mul nsw i32 8, %155
  %157 = add nsw i32 %152, %156
  %158 = mul nsw i32 8, %157
  %159 = add nsw i32 %149, %158
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 0, i64 %160
  store i32 1, ptr %161, align 4
  br label %162

162:                                              ; preds = %154
  %163 = add nsw i32 %155, 1
  %164 = icmp sle i32 %163, 0
  br i1 %164, label %154, label %._crit_edge45, !llvm.loop !28

._crit_edge45:                                    ; preds = %162
  %.lcssa192 = phi i32 [ %163, %162 ]
  br label %165

165:                                              ; preds = %._crit_edge45, %151
  %.lcssa192194 = phi i32 [ %.lcssa192, %._crit_edge45 ], [ 0, %151 ]
  br label %166

166:                                              ; preds = %165
  %167 = add nsw i32 %152, 1
  %168 = icmp sle i32 %167, 3
  br i1 %168, label %151, label %._crit_edge48, !llvm.loop !29

._crit_edge48:                                    ; preds = %166
  %.lcssa196 = phi i32 [ %167, %166 ]
  %.lcssa192194.lcssa = phi i32 [ %.lcssa192194, %166 ]
  br label %169

169:                                              ; preds = %._crit_edge48, %148
  %.lcssa192194.lcssa203 = phi i32 [ %.lcssa192194.lcssa, %._crit_edge48 ], [ %.lcssa192194.lcssa202, %148 ]
  %.lcssa196198 = phi i32 [ %.lcssa196, %._crit_edge48 ], [ 0, %148 ]
  br label %170

170:                                              ; preds = %169
  %171 = add nsw i32 %149, 1
  %172 = icmp sle i32 %171, 1
  br i1 %172, label %148, label %._crit_edge51, !llvm.loop !30

._crit_edge51:                                    ; preds = %170
  %.lcssa192194.lcssa203.lcssa = phi i32 [ %.lcssa192194.lcssa203, %170 ]
  %.lcssa200 = phi i32 [ %171, %170 ]
  %.lcssa196198.lcssa = phi i32 [ %.lcssa196198, %170 ]
  store i32 %.lcssa196198.lcssa, ptr %2, align 4
  store i32 %.lcssa200, ptr %1, align 4
  store i32 %.lcssa192194.lcssa203.lcssa, ptr %3, align 1
  br label %173

173:                                              ; preds = %._crit_edge51, %145
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  store i32 0, ptr %1, align 4
  %174 = load i32, ptr %1, align 4
  %175 = icmp sle i32 %174, 3
  br i1 %175, label %.lr.ph59, label %201

.lr.ph59:                                         ; preds = %173
  %.promoted212 = load i32, ptr %1, align 4
  %.promoted214 = load i32, ptr %3, align 1
  br label %176

176:                                              ; preds = %.lr.ph59, %198
  %.lcssa205207.lcssa215 = phi i32 [ %.promoted214, %.lr.ph59 ], [ %.lcssa205207.lcssa216, %198 ]
  %177 = phi i32 [ %.promoted212, %.lr.ph59 ], [ %199, %198 ]
  %178 = icmp sle i32 0, 0
  br i1 %178, label %.lr.ph56, label %197

.lr.ph56:                                         ; preds = %176
  br label %179

179:                                              ; preds = %.lr.ph56, %194
  %180 = phi i32 [ 0, %.lr.ph56 ], [ %195, %194 ]
  %181 = icmp sle i32 0, 1
  br i1 %181, label %.lr.ph53, label %193

.lr.ph53:                                         ; preds = %179
  br label %182

182:                                              ; preds = %.lr.ph53, %190
  %183 = phi i32 [ 0, %.lr.ph53 ], [ %191, %190 ]
  %184 = mul nsw i32 8, %183
  %185 = add nsw i32 %180, %184
  %186 = mul nsw i32 8, %185
  %187 = add nsw i32 %177, %186
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 0, i64 %188
  store i32 1, ptr %189, align 4
  br label %190

190:                                              ; preds = %182
  %191 = add nsw i32 %183, 1
  %192 = icmp sle i32 %191, 1
  br i1 %192, label %182, label %._crit_edge54, !llvm.loop !31

._crit_edge54:                                    ; preds = %190
  %.lcssa205 = phi i32 [ %191, %190 ]
  br label %193

193:                                              ; preds = %._crit_edge54, %179
  %.lcssa205207 = phi i32 [ %.lcssa205, %._crit_edge54 ], [ 0, %179 ]
  br label %194

194:                                              ; preds = %193
  %195 = add nsw i32 %180, 1
  %196 = icmp sle i32 %195, 0
  br i1 %196, label %179, label %._crit_edge57, !llvm.loop !32

._crit_edge57:                                    ; preds = %194
  %.lcssa209 = phi i32 [ %195, %194 ]
  %.lcssa205207.lcssa = phi i32 [ %.lcssa205207, %194 ]
  br label %197

197:                                              ; preds = %._crit_edge57, %176
  %.lcssa205207.lcssa216 = phi i32 [ %.lcssa205207.lcssa, %._crit_edge57 ], [ %.lcssa205207.lcssa215, %176 ]
  %.lcssa209211 = phi i32 [ %.lcssa209, %._crit_edge57 ], [ 0, %176 ]
  br label %198

198:                                              ; preds = %197
  %199 = add nsw i32 %177, 1
  %200 = icmp sle i32 %199, 3
  br i1 %200, label %176, label %._crit_edge60, !llvm.loop !33

._crit_edge60:                                    ; preds = %198
  %.lcssa205207.lcssa216.lcssa = phi i32 [ %.lcssa205207.lcssa216, %198 ]
  %.lcssa213 = phi i32 [ %199, %198 ]
  %.lcssa209211.lcssa = phi i32 [ %.lcssa209211, %198 ]
  store i32 %.lcssa209211.lcssa, ptr %2, align 4
  store i32 %.lcssa213, ptr %1, align 4
  store i32 %.lcssa205207.lcssa216.lcssa, ptr %3, align 1
  br label %201

201:                                              ; preds = %._crit_edge60, %173
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  store i32 0, ptr %1, align 4
  %202 = load i32, ptr %1, align 4
  %203 = icmp sle i32 %202, 0
  br i1 %203, label %.lr.ph68, label %229

.lr.ph68:                                         ; preds = %201
  %.promoted225 = load i32, ptr %1, align 4
  %.promoted227 = load i32, ptr %3, align 1
  br label %204

204:                                              ; preds = %.lr.ph68, %226
  %.lcssa218220.lcssa228 = phi i32 [ %.promoted227, %.lr.ph68 ], [ %.lcssa218220.lcssa229, %226 ]
  %205 = phi i32 [ %.promoted225, %.lr.ph68 ], [ %227, %226 ]
  %206 = icmp sle i32 0, 1
  br i1 %206, label %.lr.ph65, label %225

.lr.ph65:                                         ; preds = %204
  br label %207

207:                                              ; preds = %.lr.ph65, %222
  %208 = phi i32 [ 0, %.lr.ph65 ], [ %223, %222 ]
  %209 = icmp sle i32 0, 3
  br i1 %209, label %.lr.ph62, label %221

.lr.ph62:                                         ; preds = %207
  br label %210

210:                                              ; preds = %.lr.ph62, %218
  %211 = phi i32 [ 0, %.lr.ph62 ], [ %219, %218 ]
  %212 = mul nsw i32 8, %211
  %213 = add nsw i32 %208, %212
  %214 = mul nsw i32 8, %213
  %215 = add nsw i32 %205, %214
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 0, i64 %216
  store i32 1, ptr %217, align 4
  br label %218

218:                                              ; preds = %210
  %219 = add nsw i32 %211, 1
  %220 = icmp sle i32 %219, 3
  br i1 %220, label %210, label %._crit_edge63, !llvm.loop !34

._crit_edge63:                                    ; preds = %218
  %.lcssa218 = phi i32 [ %219, %218 ]
  br label %221

221:                                              ; preds = %._crit_edge63, %207
  %.lcssa218220 = phi i32 [ %.lcssa218, %._crit_edge63 ], [ 0, %207 ]
  br label %222

222:                                              ; preds = %221
  %223 = add nsw i32 %208, 1
  %224 = icmp sle i32 %223, 1
  br i1 %224, label %207, label %._crit_edge66, !llvm.loop !35

._crit_edge66:                                    ; preds = %222
  %.lcssa222 = phi i32 [ %223, %222 ]
  %.lcssa218220.lcssa = phi i32 [ %.lcssa218220, %222 ]
  br label %225

225:                                              ; preds = %._crit_edge66, %204
  %.lcssa218220.lcssa229 = phi i32 [ %.lcssa218220.lcssa, %._crit_edge66 ], [ %.lcssa218220.lcssa228, %204 ]
  %.lcssa222224 = phi i32 [ %.lcssa222, %._crit_edge66 ], [ 0, %204 ]
  br label %226

226:                                              ; preds = %225
  %227 = add nsw i32 %205, 1
  %228 = icmp sle i32 %227, 0
  br i1 %228, label %204, label %._crit_edge69, !llvm.loop !36

._crit_edge69:                                    ; preds = %226
  %.lcssa218220.lcssa229.lcssa = phi i32 [ %.lcssa218220.lcssa229, %226 ]
  %.lcssa226 = phi i32 [ %227, %226 ]
  %.lcssa222224.lcssa = phi i32 [ %.lcssa222224, %226 ]
  store i32 %.lcssa222224.lcssa, ptr %2, align 4
  store i32 %.lcssa226, ptr %1, align 4
  store i32 %.lcssa218220.lcssa229.lcssa, ptr %3, align 1
  br label %229

229:                                              ; preds = %._crit_edge69, %201
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  store i32 0, ptr %1, align 4
  %230 = load i32, ptr %1, align 4
  %231 = icmp sle i32 %230, 2
  br i1 %231, label %.lr.ph77, label %257

.lr.ph77:                                         ; preds = %229
  %.promoted238 = load i32, ptr %1, align 4
  %.promoted240 = load i32, ptr %3, align 1
  br label %232

232:                                              ; preds = %.lr.ph77, %254
  %.lcssa231233.lcssa241 = phi i32 [ %.promoted240, %.lr.ph77 ], [ %.lcssa231233.lcssa242, %254 ]
  %233 = phi i32 [ %.promoted238, %.lr.ph77 ], [ %255, %254 ]
  %234 = icmp sle i32 0, 0
  br i1 %234, label %.lr.ph74, label %253

.lr.ph74:                                         ; preds = %232
  br label %235

235:                                              ; preds = %.lr.ph74, %250
  %236 = phi i32 [ 0, %.lr.ph74 ], [ %251, %250 ]
  %237 = icmp sle i32 0, 0
  br i1 %237, label %.lr.ph71, label %249

.lr.ph71:                                         ; preds = %235
  br label %238

238:                                              ; preds = %.lr.ph71, %246
  %239 = phi i32 [ 0, %.lr.ph71 ], [ %247, %246 ]
  %240 = mul nsw i32 8, %239
  %241 = add nsw i32 %236, %240
  %242 = mul nsw i32 8, %241
  %243 = add nsw i32 %233, %242
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 0, i64 %244
  store i32 1, ptr %245, align 4
  br label %246

246:                                              ; preds = %238
  %247 = add nsw i32 %239, 1
  %248 = icmp sle i32 %247, 0
  br i1 %248, label %238, label %._crit_edge72, !llvm.loop !37

._crit_edge72:                                    ; preds = %246
  %.lcssa231 = phi i32 [ %247, %246 ]
  br label %249

249:                                              ; preds = %._crit_edge72, %235
  %.lcssa231233 = phi i32 [ %.lcssa231, %._crit_edge72 ], [ 0, %235 ]
  br label %250

250:                                              ; preds = %249
  %251 = add nsw i32 %236, 1
  %252 = icmp sle i32 %251, 0
  br i1 %252, label %235, label %._crit_edge75, !llvm.loop !38

._crit_edge75:                                    ; preds = %250
  %.lcssa235 = phi i32 [ %251, %250 ]
  %.lcssa231233.lcssa = phi i32 [ %.lcssa231233, %250 ]
  br label %253

253:                                              ; preds = %._crit_edge75, %232
  %.lcssa231233.lcssa242 = phi i32 [ %.lcssa231233.lcssa, %._crit_edge75 ], [ %.lcssa231233.lcssa241, %232 ]
  %.lcssa235237 = phi i32 [ %.lcssa235, %._crit_edge75 ], [ 0, %232 ]
  br label %254

254:                                              ; preds = %253
  %255 = add nsw i32 %233, 1
  %256 = icmp sle i32 %255, 2
  br i1 %256, label %232, label %._crit_edge78, !llvm.loop !39

._crit_edge78:                                    ; preds = %254
  %.lcssa231233.lcssa242.lcssa = phi i32 [ %.lcssa231233.lcssa242, %254 ]
  %.lcssa239 = phi i32 [ %255, %254 ]
  %.lcssa235237.lcssa = phi i32 [ %.lcssa235237, %254 ]
  store i32 %.lcssa235237.lcssa, ptr %2, align 4
  store i32 %.lcssa239, ptr %1, align 4
  store i32 %.lcssa231233.lcssa242.lcssa, ptr %3, align 1
  br label %257

257:                                              ; preds = %._crit_edge78, %229
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  store i32 0, ptr %1, align 4
  %258 = load i32, ptr %1, align 4
  %259 = icmp sle i32 %258, 0
  br i1 %259, label %.lr.ph86, label %285

.lr.ph86:                                         ; preds = %257
  %.promoted251 = load i32, ptr %1, align 4
  %.promoted253 = load i32, ptr %3, align 1
  br label %260

260:                                              ; preds = %.lr.ph86, %282
  %.lcssa244246.lcssa254 = phi i32 [ %.promoted253, %.lr.ph86 ], [ %.lcssa244246.lcssa255, %282 ]
  %261 = phi i32 [ %.promoted251, %.lr.ph86 ], [ %283, %282 ]
  %262 = icmp sle i32 0, 2
  br i1 %262, label %.lr.ph83, label %281

.lr.ph83:                                         ; preds = %260
  br label %263

263:                                              ; preds = %.lr.ph83, %278
  %264 = phi i32 [ 0, %.lr.ph83 ], [ %279, %278 ]
  %265 = icmp sle i32 0, 0
  br i1 %265, label %.lr.ph80, label %277

.lr.ph80:                                         ; preds = %263
  br label %266

266:                                              ; preds = %.lr.ph80, %274
  %267 = phi i32 [ 0, %.lr.ph80 ], [ %275, %274 ]
  %268 = mul nsw i32 8, %267
  %269 = add nsw i32 %264, %268
  %270 = mul nsw i32 8, %269
  %271 = add nsw i32 %261, %270
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 0, i64 %272
  store i32 1, ptr %273, align 4
  br label %274

274:                                              ; preds = %266
  %275 = add nsw i32 %267, 1
  %276 = icmp sle i32 %275, 0
  br i1 %276, label %266, label %._crit_edge81, !llvm.loop !40

._crit_edge81:                                    ; preds = %274
  %.lcssa244 = phi i32 [ %275, %274 ]
  br label %277

277:                                              ; preds = %._crit_edge81, %263
  %.lcssa244246 = phi i32 [ %.lcssa244, %._crit_edge81 ], [ 0, %263 ]
  br label %278

278:                                              ; preds = %277
  %279 = add nsw i32 %264, 1
  %280 = icmp sle i32 %279, 2
  br i1 %280, label %263, label %._crit_edge84, !llvm.loop !41

._crit_edge84:                                    ; preds = %278
  %.lcssa248 = phi i32 [ %279, %278 ]
  %.lcssa244246.lcssa = phi i32 [ %.lcssa244246, %278 ]
  br label %281

281:                                              ; preds = %._crit_edge84, %260
  %.lcssa244246.lcssa255 = phi i32 [ %.lcssa244246.lcssa, %._crit_edge84 ], [ %.lcssa244246.lcssa254, %260 ]
  %.lcssa248250 = phi i32 [ %.lcssa248, %._crit_edge84 ], [ 0, %260 ]
  br label %282

282:                                              ; preds = %281
  %283 = add nsw i32 %261, 1
  %284 = icmp sle i32 %283, 0
  br i1 %284, label %260, label %._crit_edge87, !llvm.loop !42

._crit_edge87:                                    ; preds = %282
  %.lcssa244246.lcssa255.lcssa = phi i32 [ %.lcssa244246.lcssa255, %282 ]
  %.lcssa252 = phi i32 [ %283, %282 ]
  %.lcssa248250.lcssa = phi i32 [ %.lcssa248250, %282 ]
  store i32 %.lcssa248250.lcssa, ptr %2, align 4
  store i32 %.lcssa252, ptr %1, align 4
  store i32 %.lcssa244246.lcssa255.lcssa, ptr %3, align 1
  br label %285

285:                                              ; preds = %._crit_edge87, %257
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  store i32 0, ptr %1, align 4
  %286 = load i32, ptr %1, align 4
  %287 = icmp sle i32 %286, 0
  br i1 %287, label %.lr.ph95, label %313

.lr.ph95:                                         ; preds = %285
  %.promoted264 = load i32, ptr %1, align 4
  %.promoted266 = load i32, ptr %3, align 1
  br label %288

288:                                              ; preds = %.lr.ph95, %310
  %.lcssa257259.lcssa267 = phi i32 [ %.promoted266, %.lr.ph95 ], [ %.lcssa257259.lcssa268, %310 ]
  %289 = phi i32 [ %.promoted264, %.lr.ph95 ], [ %311, %310 ]
  %290 = icmp sle i32 0, 0
  br i1 %290, label %.lr.ph92, label %309

.lr.ph92:                                         ; preds = %288
  br label %291

291:                                              ; preds = %.lr.ph92, %306
  %292 = phi i32 [ 0, %.lr.ph92 ], [ %307, %306 ]
  %293 = icmp sle i32 0, 2
  br i1 %293, label %.lr.ph89, label %305

.lr.ph89:                                         ; preds = %291
  br label %294

294:                                              ; preds = %.lr.ph89, %302
  %295 = phi i32 [ 0, %.lr.ph89 ], [ %303, %302 ]
  %296 = mul nsw i32 8, %295
  %297 = add nsw i32 %292, %296
  %298 = mul nsw i32 8, %297
  %299 = add nsw i32 %289, %298
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 0, i64 %300
  store i32 1, ptr %301, align 4
  br label %302

302:                                              ; preds = %294
  %303 = add nsw i32 %295, 1
  %304 = icmp sle i32 %303, 2
  br i1 %304, label %294, label %._crit_edge90, !llvm.loop !43

._crit_edge90:                                    ; preds = %302
  %.lcssa257 = phi i32 [ %303, %302 ]
  br label %305

305:                                              ; preds = %._crit_edge90, %291
  %.lcssa257259 = phi i32 [ %.lcssa257, %._crit_edge90 ], [ 0, %291 ]
  br label %306

306:                                              ; preds = %305
  %307 = add nsw i32 %292, 1
  %308 = icmp sle i32 %307, 0
  br i1 %308, label %291, label %._crit_edge93, !llvm.loop !44

._crit_edge93:                                    ; preds = %306
  %.lcssa261 = phi i32 [ %307, %306 ]
  %.lcssa257259.lcssa = phi i32 [ %.lcssa257259, %306 ]
  br label %309

309:                                              ; preds = %._crit_edge93, %288
  %.lcssa257259.lcssa268 = phi i32 [ %.lcssa257259.lcssa, %._crit_edge93 ], [ %.lcssa257259.lcssa267, %288 ]
  %.lcssa261263 = phi i32 [ %.lcssa261, %._crit_edge93 ], [ 0, %288 ]
  br label %310

310:                                              ; preds = %309
  %311 = add nsw i32 %289, 1
  %312 = icmp sle i32 %311, 0
  br i1 %312, label %288, label %._crit_edge96, !llvm.loop !45

._crit_edge96:                                    ; preds = %310
  %.lcssa257259.lcssa268.lcssa = phi i32 [ %.lcssa257259.lcssa268, %310 ]
  %.lcssa265 = phi i32 [ %311, %310 ]
  %.lcssa261263.lcssa = phi i32 [ %.lcssa261263, %310 ]
  store i32 %.lcssa261263.lcssa, ptr %2, align 4
  store i32 %.lcssa265, ptr %1, align 4
  store i32 %.lcssa257259.lcssa268.lcssa, ptr %3, align 1
  br label %313

313:                                              ; preds = %._crit_edge96, %285
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  store i32 0, ptr %1, align 4
  %314 = load i32, ptr %1, align 4
  %315 = icmp sle i32 %314, 1
  br i1 %315, label %.lr.ph104, label %341

.lr.ph104:                                        ; preds = %313
  %.promoted277 = load i32, ptr %1, align 4
  %.promoted279 = load i32, ptr %3, align 1
  br label %316

316:                                              ; preds = %.lr.ph104, %338
  %.lcssa270272.lcssa280 = phi i32 [ %.promoted279, %.lr.ph104 ], [ %.lcssa270272.lcssa281, %338 ]
  %317 = phi i32 [ %.promoted277, %.lr.ph104 ], [ %339, %338 ]
  %318 = icmp sle i32 0, 1
  br i1 %318, label %.lr.ph101, label %337

.lr.ph101:                                        ; preds = %316
  br label %319

319:                                              ; preds = %.lr.ph101, %334
  %320 = phi i32 [ 0, %.lr.ph101 ], [ %335, %334 ]
  %321 = icmp sle i32 0, 0
  br i1 %321, label %.lr.ph98, label %333

.lr.ph98:                                         ; preds = %319
  br label %322

322:                                              ; preds = %.lr.ph98, %330
  %323 = phi i32 [ 0, %.lr.ph98 ], [ %331, %330 ]
  %324 = mul nsw i32 8, %323
  %325 = add nsw i32 %320, %324
  %326 = mul nsw i32 8, %325
  %327 = add nsw i32 %317, %326
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 0, i64 %328
  store i32 1, ptr %329, align 4
  br label %330

330:                                              ; preds = %322
  %331 = add nsw i32 %323, 1
  %332 = icmp sle i32 %331, 0
  br i1 %332, label %322, label %._crit_edge99, !llvm.loop !46

._crit_edge99:                                    ; preds = %330
  %.lcssa270 = phi i32 [ %331, %330 ]
  br label %333

333:                                              ; preds = %._crit_edge99, %319
  %.lcssa270272 = phi i32 [ %.lcssa270, %._crit_edge99 ], [ 0, %319 ]
  br label %334

334:                                              ; preds = %333
  %335 = add nsw i32 %320, 1
  %336 = icmp sle i32 %335, 1
  br i1 %336, label %319, label %._crit_edge102, !llvm.loop !47

._crit_edge102:                                   ; preds = %334
  %.lcssa274 = phi i32 [ %335, %334 ]
  %.lcssa270272.lcssa = phi i32 [ %.lcssa270272, %334 ]
  br label %337

337:                                              ; preds = %._crit_edge102, %316
  %.lcssa270272.lcssa281 = phi i32 [ %.lcssa270272.lcssa, %._crit_edge102 ], [ %.lcssa270272.lcssa280, %316 ]
  %.lcssa274276 = phi i32 [ %.lcssa274, %._crit_edge102 ], [ 0, %316 ]
  br label %338

338:                                              ; preds = %337
  %339 = add nsw i32 %317, 1
  %340 = icmp sle i32 %339, 1
  br i1 %340, label %316, label %._crit_edge105, !llvm.loop !48

._crit_edge105:                                   ; preds = %338
  %.lcssa270272.lcssa281.lcssa = phi i32 [ %.lcssa270272.lcssa281, %338 ]
  %.lcssa278 = phi i32 [ %339, %338 ]
  %.lcssa274276.lcssa = phi i32 [ %.lcssa274276, %338 ]
  store i32 %.lcssa274276.lcssa, ptr %2, align 4
  store i32 %.lcssa278, ptr %1, align 4
  store i32 %.lcssa270272.lcssa281.lcssa, ptr %3, align 1
  br label %341

341:                                              ; preds = %._crit_edge105, %313
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  store i32 0, ptr %1, align 4
  %342 = load i32, ptr %1, align 4
  %343 = icmp sle i32 %342, 1
  br i1 %343, label %.lr.ph113, label %369

.lr.ph113:                                        ; preds = %341
  %.promoted290 = load i32, ptr %1, align 4
  %.promoted292 = load i32, ptr %3, align 1
  br label %344

344:                                              ; preds = %.lr.ph113, %366
  %.lcssa283285.lcssa293 = phi i32 [ %.promoted292, %.lr.ph113 ], [ %.lcssa283285.lcssa294, %366 ]
  %345 = phi i32 [ %.promoted290, %.lr.ph113 ], [ %367, %366 ]
  %346 = icmp sle i32 0, 0
  br i1 %346, label %.lr.ph110, label %365

.lr.ph110:                                        ; preds = %344
  br label %347

347:                                              ; preds = %.lr.ph110, %362
  %348 = phi i32 [ 0, %.lr.ph110 ], [ %363, %362 ]
  %349 = icmp sle i32 0, 1
  br i1 %349, label %.lr.ph107, label %361

.lr.ph107:                                        ; preds = %347
  br label %350

350:                                              ; preds = %.lr.ph107, %358
  %351 = phi i32 [ 0, %.lr.ph107 ], [ %359, %358 ]
  %352 = mul nsw i32 8, %351
  %353 = add nsw i32 %348, %352
  %354 = mul nsw i32 8, %353
  %355 = add nsw i32 %345, %354
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 0, i64 %356
  store i32 1, ptr %357, align 4
  br label %358

358:                                              ; preds = %350
  %359 = add nsw i32 %351, 1
  %360 = icmp sle i32 %359, 1
  br i1 %360, label %350, label %._crit_edge108, !llvm.loop !49

._crit_edge108:                                   ; preds = %358
  %.lcssa283 = phi i32 [ %359, %358 ]
  br label %361

361:                                              ; preds = %._crit_edge108, %347
  %.lcssa283285 = phi i32 [ %.lcssa283, %._crit_edge108 ], [ 0, %347 ]
  br label %362

362:                                              ; preds = %361
  %363 = add nsw i32 %348, 1
  %364 = icmp sle i32 %363, 0
  br i1 %364, label %347, label %._crit_edge111, !llvm.loop !50

._crit_edge111:                                   ; preds = %362
  %.lcssa287 = phi i32 [ %363, %362 ]
  %.lcssa283285.lcssa = phi i32 [ %.lcssa283285, %362 ]
  br label %365

365:                                              ; preds = %._crit_edge111, %344
  %.lcssa283285.lcssa294 = phi i32 [ %.lcssa283285.lcssa, %._crit_edge111 ], [ %.lcssa283285.lcssa293, %344 ]
  %.lcssa287289 = phi i32 [ %.lcssa287, %._crit_edge111 ], [ 0, %344 ]
  br label %366

366:                                              ; preds = %365
  %367 = add nsw i32 %345, 1
  %368 = icmp sle i32 %367, 1
  br i1 %368, label %344, label %._crit_edge114, !llvm.loop !51

._crit_edge114:                                   ; preds = %366
  %.lcssa283285.lcssa294.lcssa = phi i32 [ %.lcssa283285.lcssa294, %366 ]
  %.lcssa291 = phi i32 [ %367, %366 ]
  %.lcssa287289.lcssa = phi i32 [ %.lcssa287289, %366 ]
  store i32 %.lcssa287289.lcssa, ptr %2, align 4
  store i32 %.lcssa291, ptr %1, align 4
  store i32 %.lcssa283285.lcssa294.lcssa, ptr %3, align 1
  br label %369

369:                                              ; preds = %._crit_edge114, %341
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  store i32 0, ptr %1, align 4
  %370 = load i32, ptr %1, align 4
  %371 = icmp sle i32 %370, 0
  br i1 %371, label %.lr.ph122, label %397

.lr.ph122:                                        ; preds = %369
  %.promoted303 = load i32, ptr %1, align 4
  %.promoted305 = load i32, ptr %3, align 1
  br label %372

372:                                              ; preds = %.lr.ph122, %394
  %.lcssa296298.lcssa306 = phi i32 [ %.promoted305, %.lr.ph122 ], [ %.lcssa296298.lcssa307, %394 ]
  %373 = phi i32 [ %.promoted303, %.lr.ph122 ], [ %395, %394 ]
  %374 = icmp sle i32 0, 1
  br i1 %374, label %.lr.ph119, label %393

.lr.ph119:                                        ; preds = %372
  br label %375

375:                                              ; preds = %.lr.ph119, %390
  %376 = phi i32 [ 0, %.lr.ph119 ], [ %391, %390 ]
  %377 = icmp sle i32 0, 1
  br i1 %377, label %.lr.ph116, label %389

.lr.ph116:                                        ; preds = %375
  br label %378

378:                                              ; preds = %.lr.ph116, %386
  %379 = phi i32 [ 0, %.lr.ph116 ], [ %387, %386 ]
  %380 = mul nsw i32 8, %379
  %381 = add nsw i32 %376, %380
  %382 = mul nsw i32 8, %381
  %383 = add nsw i32 %373, %382
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 0, i64 %384
  store i32 1, ptr %385, align 4
  br label %386

386:                                              ; preds = %378
  %387 = add nsw i32 %379, 1
  %388 = icmp sle i32 %387, 1
  br i1 %388, label %378, label %._crit_edge117, !llvm.loop !52

._crit_edge117:                                   ; preds = %386
  %.lcssa296 = phi i32 [ %387, %386 ]
  br label %389

389:                                              ; preds = %._crit_edge117, %375
  %.lcssa296298 = phi i32 [ %.lcssa296, %._crit_edge117 ], [ 0, %375 ]
  br label %390

390:                                              ; preds = %389
  %391 = add nsw i32 %376, 1
  %392 = icmp sle i32 %391, 1
  br i1 %392, label %375, label %._crit_edge120, !llvm.loop !53

._crit_edge120:                                   ; preds = %390
  %.lcssa300 = phi i32 [ %391, %390 ]
  %.lcssa296298.lcssa = phi i32 [ %.lcssa296298, %390 ]
  br label %393

393:                                              ; preds = %._crit_edge120, %372
  %.lcssa296298.lcssa307 = phi i32 [ %.lcssa296298.lcssa, %._crit_edge120 ], [ %.lcssa296298.lcssa306, %372 ]
  %.lcssa300302 = phi i32 [ %.lcssa300, %._crit_edge120 ], [ 0, %372 ]
  br label %394

394:                                              ; preds = %393
  %395 = add nsw i32 %373, 1
  %396 = icmp sle i32 %395, 0
  br i1 %396, label %372, label %._crit_edge123, !llvm.loop !54

._crit_edge123:                                   ; preds = %394
  %.lcssa296298.lcssa307.lcssa = phi i32 [ %.lcssa296298.lcssa307, %394 ]
  %.lcssa304 = phi i32 [ %395, %394 ]
  %.lcssa300302.lcssa = phi i32 [ %.lcssa300302, %394 ]
  store i32 %.lcssa300302.lcssa, ptr %2, align 4
  store i32 %.lcssa304, ptr %1, align 4
  store i32 %.lcssa296298.lcssa307.lcssa, ptr %3, align 1
  br label %397

397:                                              ; preds = %._crit_edge123, %369
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  store i32 0, ptr %1, align 4
  %398 = load i32, ptr %1, align 4
  %399 = icmp sle i32 %398, 1
  br i1 %399, label %.lr.ph131, label %425

.lr.ph131:                                        ; preds = %397
  %.promoted316 = load i32, ptr %1, align 4
  %.promoted318 = load i32, ptr %3, align 1
  br label %400

400:                                              ; preds = %.lr.ph131, %422
  %.lcssa309311.lcssa319 = phi i32 [ %.promoted318, %.lr.ph131 ], [ %.lcssa309311.lcssa320, %422 ]
  %401 = phi i32 [ %.promoted316, %.lr.ph131 ], [ %423, %422 ]
  %402 = icmp sle i32 0, 1
  br i1 %402, label %.lr.ph128, label %421

.lr.ph128:                                        ; preds = %400
  br label %403

403:                                              ; preds = %.lr.ph128, %418
  %404 = phi i32 [ 0, %.lr.ph128 ], [ %419, %418 ]
  %405 = icmp sle i32 0, 1
  br i1 %405, label %.lr.ph125, label %417

.lr.ph125:                                        ; preds = %403
  br label %406

406:                                              ; preds = %.lr.ph125, %414
  %407 = phi i32 [ 0, %.lr.ph125 ], [ %415, %414 ]
  %408 = mul nsw i32 8, %407
  %409 = add nsw i32 %404, %408
  %410 = mul nsw i32 8, %409
  %411 = add nsw i32 %401, %410
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 0, i64 %412
  store i32 1, ptr %413, align 4
  br label %414

414:                                              ; preds = %406
  %415 = add nsw i32 %407, 1
  %416 = icmp sle i32 %415, 1
  br i1 %416, label %406, label %._crit_edge126, !llvm.loop !55

._crit_edge126:                                   ; preds = %414
  %.lcssa309 = phi i32 [ %415, %414 ]
  br label %417

417:                                              ; preds = %._crit_edge126, %403
  %.lcssa309311 = phi i32 [ %.lcssa309, %._crit_edge126 ], [ 0, %403 ]
  br label %418

418:                                              ; preds = %417
  %419 = add nsw i32 %404, 1
  %420 = icmp sle i32 %419, 1
  br i1 %420, label %403, label %._crit_edge129, !llvm.loop !56

._crit_edge129:                                   ; preds = %418
  %.lcssa313 = phi i32 [ %419, %418 ]
  %.lcssa309311.lcssa = phi i32 [ %.lcssa309311, %418 ]
  br label %421

421:                                              ; preds = %._crit_edge129, %400
  %.lcssa309311.lcssa320 = phi i32 [ %.lcssa309311.lcssa, %._crit_edge129 ], [ %.lcssa309311.lcssa319, %400 ]
  %.lcssa313315 = phi i32 [ %.lcssa313, %._crit_edge129 ], [ 0, %400 ]
  br label %422

422:                                              ; preds = %421
  %423 = add nsw i32 %401, 1
  %424 = icmp sle i32 %423, 1
  br i1 %424, label %400, label %._crit_edge132, !llvm.loop !57

._crit_edge132:                                   ; preds = %422
  %.lcssa309311.lcssa320.lcssa = phi i32 [ %.lcssa309311.lcssa320, %422 ]
  %.lcssa317 = phi i32 [ %423, %422 ]
  %.lcssa313315.lcssa = phi i32 [ %.lcssa313315, %422 ]
  store i32 %.lcssa313315.lcssa, ptr %2, align 4
  store i32 %.lcssa317, ptr %1, align 4
  store i32 %.lcssa309311.lcssa320.lcssa, ptr %3, align 1
  br label %425

425:                                              ; preds = %._crit_edge132, %397
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 73, ptr %4, align 4
  store i32 0, ptr @kount, align 4
  %426 = load i32, ptr %4, align 4
  %427 = call i32 @Fit(i32 noundef 0, i32 noundef %426)
  %428 = icmp ne i32 %427, 0
  br i1 %428, label %429, label %432

429:                                              ; preds = %425
  %430 = load i32, ptr %4, align 4
  %431 = call i32 @Place(i32 noundef 0, i32 noundef %430)
  store i32 %431, ptr @n, align 4
  br label %434

432:                                              ; preds = %425
  %433 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  br label %434

434:                                              ; preds = %432, %429
  %435 = load i32, ptr @n, align 4
  %436 = call i32 @Trial(i32 noundef %435)
  %437 = icmp ne i32 %436, 0
  br i1 %437, label %440, label %438

438:                                              ; preds = %434
  %439 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  br label %446

440:                                              ; preds = %434
  %441 = load i32, ptr @kount, align 4
  %442 = icmp ne i32 %441, 2005
  br i1 %442, label %443, label %445

443:                                              ; preds = %440
  %444 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %445

445:                                              ; preds = %443, %440
  br label %446

446:                                              ; preds = %445, %438
  %447 = load i32, ptr @n, align 4
  %448 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %447)
  %449 = load i32, ptr @kount, align 4
  %450 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %449)
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
