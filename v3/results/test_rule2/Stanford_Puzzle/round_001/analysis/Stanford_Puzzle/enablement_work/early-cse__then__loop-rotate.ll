; ModuleID = 'results\test_rule2\Stanford_Puzzle\round_000\output.ll'
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
  br i1 %12, label %.lr.ph, label %40

.lr.ph:                                           ; preds = %2
  br label %13

13:                                               ; preds = %.lr.ph, %31
  %14 = phi i64 [ %9, %.lr.ph ], [ %36, %31 ]
  %15 = phi i32 [ %7, %.lr.ph ], [ %34, %31 ]
  %16 = getelementptr inbounds [13 x [512 x i32]], ptr @p, i64 0, i64 %14
  %17 = sext i32 %15 to i64
  %18 = getelementptr inbounds [512 x i32], ptr %16, i64 0, i64 %17
  %19 = load i32, ptr %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %13
  %22 = load i32, ptr %5, align 4
  %23 = add nsw i32 %22, %15
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %24
  %26 = load i32, ptr %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  store i32 0, ptr %3, align 4
  br label %41

29:                                               ; preds = %21
  br label %30

30:                                               ; preds = %29, %13
  br label %31

31:                                               ; preds = %30
  %32 = load i32, ptr %6, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, ptr %6, align 4
  %34 = load i32, ptr %6, align 4
  %35 = load i32, ptr %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [13 x i32], ptr @piecemax, i64 0, i64 %36
  %38 = load i32, ptr %37, align 4
  %39 = icmp sle i32 %34, %38
  br i1 %39, label %13, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %31
  br label %40

40:                                               ; preds = %._crit_edge, %2
  store i32 1, ptr %3, align 4
  br label %41

41:                                               ; preds = %40, %28
  %42 = load i32, ptr %3, align 4
  ret i32 %42
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
  br i1 %12, label %.lr.ph, label %36

.lr.ph:                                           ; preds = %2
  br label %13

13:                                               ; preds = %.lr.ph, %27
  %14 = phi i64 [ %9, %.lr.ph ], [ %32, %27 ]
  %15 = phi i32 [ %7, %.lr.ph ], [ %30, %27 ]
  %16 = getelementptr inbounds [13 x [512 x i32]], ptr @p, i64 0, i64 %14
  %17 = sext i32 %15 to i64
  %18 = getelementptr inbounds [512 x i32], ptr %16, i64 0, i64 %17
  %19 = load i32, ptr %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %13
  %22 = load i32, ptr %5, align 4
  %23 = add nsw i32 %22, %15
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %24
  store i32 1, ptr %25, align 4
  br label %26

26:                                               ; preds = %21, %13
  br label %27

27:                                               ; preds = %26
  %28 = load i32, ptr %6, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, ptr %6, align 4
  %30 = load i32, ptr %6, align 4
  %31 = load i32, ptr %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [13 x i32], ptr @piecemax, i64 0, i64 %32
  %34 = load i32, ptr %33, align 4
  %35 = icmp sle i32 %30, %34
  br i1 %35, label %13, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %27
  %split = phi i64 [ %32, %27 ]
  br label %36

36:                                               ; preds = %._crit_edge, %2
  %.lcssa = phi i64 [ %split, %._crit_edge ], [ %9, %2 ]
  %37 = getelementptr inbounds [13 x i32], ptr @class, i64 0, i64 %.lcssa
  %38 = load i32, ptr %37, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [4 x i32], ptr @piececount, i64 0, i64 %39
  %41 = load i32, ptr %40, align 4
  %42 = sub nsw i32 %41, 1
  store i32 %42, ptr %40, align 4
  %43 = load i32, ptr %5, align 4
  store i32 %43, ptr %6, align 4
  %44 = load i32, ptr %6, align 4
  %45 = icmp sle i32 %44, 511
  br i1 %45, label %.lr.ph3, label %58

.lr.ph3:                                          ; preds = %36
  br label %46

46:                                               ; preds = %.lr.ph3, %54
  %47 = phi i32 [ %44, %.lr.ph3 ], [ %56, %54 ]
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %48
  %50 = load i32, ptr %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %46
  %.lcssa1 = phi i32 [ %47, %46 ]
  store i32 %.lcssa1, ptr %3, align 4
  br label %59

53:                                               ; preds = %46
  br label %54

54:                                               ; preds = %53
  %55 = add nsw i32 %47, 1
  store i32 %55, ptr %6, align 4
  %56 = load i32, ptr %6, align 4
  %57 = icmp sle i32 %56, 511
  br i1 %57, label %46, label %._crit_edge4, !llvm.loop !10

._crit_edge4:                                     ; preds = %54
  br label %58

58:                                               ; preds = %._crit_edge4, %36
  store i32 0, ptr %3, align 4
  br label %59

59:                                               ; preds = %58, %52
  %60 = load i32, ptr %3, align 4
  ret i32 %60
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
  br i1 %11, label %.lr.ph, label %35

.lr.ph:                                           ; preds = %2
  br label %12

12:                                               ; preds = %.lr.ph, %26
  %13 = phi i64 [ %8, %.lr.ph ], [ %31, %26 ]
  %14 = phi i32 [ %6, %.lr.ph ], [ %29, %26 ]
  %15 = getelementptr inbounds [13 x [512 x i32]], ptr @p, i64 0, i64 %13
  %16 = sext i32 %14 to i64
  %17 = getelementptr inbounds [512 x i32], ptr %15, i64 0, i64 %16
  %18 = load i32, ptr %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %12
  %21 = load i32, ptr %4, align 4
  %22 = add nsw i32 %21, %14
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %23
  store i32 0, ptr %24, align 4
  br label %25

25:                                               ; preds = %20, %12
  br label %26

26:                                               ; preds = %25
  %27 = load i32, ptr %5, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, ptr %5, align 4
  %29 = load i32, ptr %5, align 4
  %30 = load i32, ptr %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [13 x i32], ptr @piecemax, i64 0, i64 %31
  %33 = load i32, ptr %32, align 4
  %34 = icmp sle i32 %29, %33
  br i1 %34, label %12, label %._crit_edge, !llvm.loop !11

._crit_edge:                                      ; preds = %26
  %split = phi i64 [ %31, %26 ]
  br label %35

35:                                               ; preds = %._crit_edge, %2
  %.lcssa = phi i64 [ %split, %._crit_edge ], [ %8, %2 ]
  %36 = getelementptr inbounds [13 x i32], ptr @class, i64 0, i64 %.lcssa
  %37 = load i32, ptr %36, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [4 x i32], ptr @piececount, i64 0, i64 %38
  %40 = load i32, ptr %39, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, ptr %39, align 4
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
  br i1 %9, label %.lr.ph, label %44

.lr.ph:                                           ; preds = %1
  br label %10

10:                                               ; preds = %.lr.ph, %39
  %11 = phi i32 [ %8, %.lr.ph ], [ %42, %39 ]
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [13 x i32], ptr @class, i64 0, i64 %12
  %14 = load i32, ptr %13, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [4 x i32], ptr @piececount, i64 0, i64 %15
  %17 = load i32, ptr %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %38

19:                                               ; preds = %10
  %20 = load i32, ptr %3, align 4
  %21 = call i32 @Fit(i32 noundef %11, i32 noundef %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %19
  %24 = load i32, ptr %4, align 4
  %25 = load i32, ptr %3, align 4
  %26 = call i32 @Place(i32 noundef %24, i32 noundef %25)
  store i32 %26, ptr %5, align 4
  %27 = call i32 @Trial(i32 noundef %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %23
  %30 = load i32, ptr %5, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29, %23
  store i32 1, ptr %2, align 4
  br label %45

33:                                               ; preds = %29
  %34 = load i32, ptr %4, align 4
  %35 = load i32, ptr %3, align 4
  call void @Remove(i32 noundef %34, i32 noundef %35)
  br label %36

36:                                               ; preds = %33
  br label %37

37:                                               ; preds = %36, %19
  br label %38

38:                                               ; preds = %37, %10
  br label %39

39:                                               ; preds = %38
  %40 = load i32, ptr %4, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, ptr %4, align 4
  %42 = load i32, ptr %4, align 4
  %43 = icmp sle i32 %42, 12
  br i1 %43, label %10, label %._crit_edge, !llvm.loop !12

._crit_edge:                                      ; preds = %39
  br label %44

44:                                               ; preds = %._crit_edge, %1
  store i32 0, ptr %2, align 4
  br label %45

45:                                               ; preds = %44, %32
  %46 = load i32, ptr %2, align 4
  ret i32 %46
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
  br i1 %6, label %.lr.ph, label %16

.lr.ph:                                           ; preds = %0
  br label %7

7:                                                ; preds = %.lr.ph, %11
  %8 = phi i32 [ %5, %.lr.ph ], [ %14, %11 ]
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %9
  store i32 1, ptr %10, align 4
  br label %11

11:                                               ; preds = %7
  %12 = load i32, ptr %4, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, ptr %4, align 4
  %14 = load i32, ptr %4, align 4
  %15 = icmp sle i32 %14, 511
  br i1 %15, label %7, label %._crit_edge, !llvm.loop !13

._crit_edge:                                      ; preds = %11
  br label %16

16:                                               ; preds = %._crit_edge, %0
  store i32 1, ptr %1, align 4
  %17 = load i32, ptr %1, align 4
  %18 = icmp sle i32 %17, 5
  br i1 %18, label %.lr.ph8, label %52

.lr.ph8:                                          ; preds = %16
  br label %19

19:                                               ; preds = %.lr.ph8, %47
  store i32 1, ptr %2, align 4
  %20 = load i32, ptr %2, align 4
  %21 = icmp sle i32 %20, 5
  br i1 %21, label %.lr.ph5, label %46

.lr.ph5:                                          ; preds = %19
  br label %22

22:                                               ; preds = %.lr.ph5, %41
  store i32 1, ptr %3, align 4
  %23 = load i32, ptr %3, align 4
  %24 = icmp sle i32 %23, 5
  br i1 %24, label %.lr.ph2, label %40

.lr.ph2:                                          ; preds = %22
  br label %25

25:                                               ; preds = %.lr.ph2, %35
  %26 = phi i32 [ %23, %.lr.ph2 ], [ %38, %35 ]
  %27 = load i32, ptr %1, align 4
  %28 = load i32, ptr %2, align 4
  %29 = mul nsw i32 8, %26
  %30 = add nsw i32 %28, %29
  %31 = mul nsw i32 8, %30
  %32 = add nsw i32 %27, %31
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %33
  store i32 0, ptr %34, align 4
  br label %35

35:                                               ; preds = %25
  %36 = load i32, ptr %3, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, ptr %3, align 4
  %38 = load i32, ptr %3, align 4
  %39 = icmp sle i32 %38, 5
  br i1 %39, label %25, label %._crit_edge3, !llvm.loop !14

._crit_edge3:                                     ; preds = %35
  br label %40

40:                                               ; preds = %._crit_edge3, %22
  br label %41

41:                                               ; preds = %40
  %42 = load i32, ptr %2, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, ptr %2, align 4
  %44 = load i32, ptr %2, align 4
  %45 = icmp sle i32 %44, 5
  br i1 %45, label %22, label %._crit_edge6, !llvm.loop !15

._crit_edge6:                                     ; preds = %41
  br label %46

46:                                               ; preds = %._crit_edge6, %19
  br label %47

47:                                               ; preds = %46
  %48 = load i32, ptr %1, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, ptr %1, align 4
  %50 = load i32, ptr %1, align 4
  %51 = icmp sle i32 %50, 5
  br i1 %51, label %19, label %._crit_edge9, !llvm.loop !16

._crit_edge9:                                     ; preds = %47
  br label %52

52:                                               ; preds = %._crit_edge9, %16
  store i32 0, ptr %1, align 4
  %53 = load i32, ptr %1, align 4
  %54 = icmp sle i32 %53, 12
  br i1 %54, label %.lr.ph14, label %76

.lr.ph14:                                         ; preds = %52
  br label %55

55:                                               ; preds = %.lr.ph14, %71
  store i32 0, ptr %4, align 4
  %56 = load i32, ptr %4, align 4
  %57 = icmp sle i32 %56, 511
  br i1 %57, label %.lr.ph11, label %70

.lr.ph11:                                         ; preds = %55
  br label %58

58:                                               ; preds = %.lr.ph11, %65
  %59 = phi i32 [ %56, %.lr.ph11 ], [ %68, %65 ]
  %60 = load i32, ptr %1, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [13 x [512 x i32]], ptr @p, i64 0, i64 %61
  %63 = sext i32 %59 to i64
  %64 = getelementptr inbounds [512 x i32], ptr %62, i64 0, i64 %63
  store i32 0, ptr %64, align 4
  br label %65

65:                                               ; preds = %58
  %66 = load i32, ptr %4, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, ptr %4, align 4
  %68 = load i32, ptr %4, align 4
  %69 = icmp sle i32 %68, 511
  br i1 %69, label %58, label %._crit_edge12, !llvm.loop !17

._crit_edge12:                                    ; preds = %65
  br label %70

70:                                               ; preds = %._crit_edge12, %55
  br label %71

71:                                               ; preds = %70
  %72 = load i32, ptr %1, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, ptr %1, align 4
  %74 = load i32, ptr %1, align 4
  %75 = icmp sle i32 %74, 12
  br i1 %75, label %55, label %._crit_edge15, !llvm.loop !18

._crit_edge15:                                    ; preds = %71
  br label %76

76:                                               ; preds = %._crit_edge15, %52
  store i32 0, ptr %1, align 4
  %77 = load i32, ptr %1, align 4
  %78 = icmp sle i32 %77, 3
  br i1 %78, label %.lr.ph23, label %112

.lr.ph23:                                         ; preds = %76
  br label %79

79:                                               ; preds = %.lr.ph23, %107
  store i32 0, ptr %2, align 4
  %80 = load i32, ptr %2, align 4
  %81 = icmp sle i32 %80, 1
  br i1 %81, label %.lr.ph20, label %106

.lr.ph20:                                         ; preds = %79
  br label %82

82:                                               ; preds = %.lr.ph20, %101
  store i32 0, ptr %3, align 4
  %83 = load i32, ptr %3, align 4
  %84 = icmp sle i32 %83, 0
  br i1 %84, label %.lr.ph17, label %100

.lr.ph17:                                         ; preds = %82
  br label %85

85:                                               ; preds = %.lr.ph17, %95
  %86 = phi i32 [ %83, %.lr.ph17 ], [ %98, %95 ]
  %87 = load i32, ptr %1, align 4
  %88 = load i32, ptr %2, align 4
  %89 = mul nsw i32 8, %86
  %90 = add nsw i32 %88, %89
  %91 = mul nsw i32 8, %90
  %92 = add nsw i32 %87, %91
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [512 x i32], ptr @p, i64 0, i64 %93
  store i32 1, ptr %94, align 4
  br label %95

95:                                               ; preds = %85
  %96 = load i32, ptr %3, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, ptr %3, align 4
  %98 = load i32, ptr %3, align 4
  %99 = icmp sle i32 %98, 0
  br i1 %99, label %85, label %._crit_edge18, !llvm.loop !19

._crit_edge18:                                    ; preds = %95
  br label %100

100:                                              ; preds = %._crit_edge18, %82
  br label %101

101:                                              ; preds = %100
  %102 = load i32, ptr %2, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, ptr %2, align 4
  %104 = load i32, ptr %2, align 4
  %105 = icmp sle i32 %104, 1
  br i1 %105, label %82, label %._crit_edge21, !llvm.loop !20

._crit_edge21:                                    ; preds = %101
  br label %106

106:                                              ; preds = %._crit_edge21, %79
  br label %107

107:                                              ; preds = %106
  %108 = load i32, ptr %1, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, ptr %1, align 4
  %110 = load i32, ptr %1, align 4
  %111 = icmp sle i32 %110, 3
  br i1 %111, label %79, label %._crit_edge24, !llvm.loop !21

._crit_edge24:                                    ; preds = %107
  br label %112

112:                                              ; preds = %._crit_edge24, %76
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  store i32 0, ptr %1, align 4
  %113 = load i32, ptr %1, align 4
  %114 = icmp sle i32 %113, 1
  br i1 %114, label %.lr.ph32, label %148

.lr.ph32:                                         ; preds = %112
  br label %115

115:                                              ; preds = %.lr.ph32, %143
  store i32 0, ptr %2, align 4
  %116 = load i32, ptr %2, align 4
  %117 = icmp sle i32 %116, 0
  br i1 %117, label %.lr.ph29, label %142

.lr.ph29:                                         ; preds = %115
  br label %118

118:                                              ; preds = %.lr.ph29, %137
  store i32 0, ptr %3, align 4
  %119 = load i32, ptr %3, align 4
  %120 = icmp sle i32 %119, 3
  br i1 %120, label %.lr.ph26, label %136

.lr.ph26:                                         ; preds = %118
  br label %121

121:                                              ; preds = %.lr.ph26, %131
  %122 = phi i32 [ %119, %.lr.ph26 ], [ %134, %131 ]
  %123 = load i32, ptr %1, align 4
  %124 = load i32, ptr %2, align 4
  %125 = mul nsw i32 8, %122
  %126 = add nsw i32 %124, %125
  %127 = mul nsw i32 8, %126
  %128 = add nsw i32 %123, %127
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 0, i64 %129
  store i32 1, ptr %130, align 4
  br label %131

131:                                              ; preds = %121
  %132 = load i32, ptr %3, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, ptr %3, align 4
  %134 = load i32, ptr %3, align 4
  %135 = icmp sle i32 %134, 3
  br i1 %135, label %121, label %._crit_edge27, !llvm.loop !22

._crit_edge27:                                    ; preds = %131
  br label %136

136:                                              ; preds = %._crit_edge27, %118
  br label %137

137:                                              ; preds = %136
  %138 = load i32, ptr %2, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, ptr %2, align 4
  %140 = load i32, ptr %2, align 4
  %141 = icmp sle i32 %140, 0
  br i1 %141, label %118, label %._crit_edge30, !llvm.loop !23

._crit_edge30:                                    ; preds = %137
  br label %142

142:                                              ; preds = %._crit_edge30, %115
  br label %143

143:                                              ; preds = %142
  %144 = load i32, ptr %1, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, ptr %1, align 4
  %146 = load i32, ptr %1, align 4
  %147 = icmp sle i32 %146, 1
  br i1 %147, label %115, label %._crit_edge33, !llvm.loop !24

._crit_edge33:                                    ; preds = %143
  br label %148

148:                                              ; preds = %._crit_edge33, %112
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  store i32 0, ptr %1, align 4
  %149 = load i32, ptr %1, align 4
  %150 = icmp sle i32 %149, 0
  br i1 %150, label %.lr.ph41, label %184

.lr.ph41:                                         ; preds = %148
  br label %151

151:                                              ; preds = %.lr.ph41, %179
  store i32 0, ptr %2, align 4
  %152 = load i32, ptr %2, align 4
  %153 = icmp sle i32 %152, 3
  br i1 %153, label %.lr.ph38, label %178

.lr.ph38:                                         ; preds = %151
  br label %154

154:                                              ; preds = %.lr.ph38, %173
  store i32 0, ptr %3, align 4
  %155 = load i32, ptr %3, align 4
  %156 = icmp sle i32 %155, 1
  br i1 %156, label %.lr.ph35, label %172

.lr.ph35:                                         ; preds = %154
  br label %157

157:                                              ; preds = %.lr.ph35, %167
  %158 = phi i32 [ %155, %.lr.ph35 ], [ %170, %167 ]
  %159 = load i32, ptr %1, align 4
  %160 = load i32, ptr %2, align 4
  %161 = mul nsw i32 8, %158
  %162 = add nsw i32 %160, %161
  %163 = mul nsw i32 8, %162
  %164 = add nsw i32 %159, %163
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 0, i64 %165
  store i32 1, ptr %166, align 4
  br label %167

167:                                              ; preds = %157
  %168 = load i32, ptr %3, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, ptr %3, align 4
  %170 = load i32, ptr %3, align 4
  %171 = icmp sle i32 %170, 1
  br i1 %171, label %157, label %._crit_edge36, !llvm.loop !25

._crit_edge36:                                    ; preds = %167
  br label %172

172:                                              ; preds = %._crit_edge36, %154
  br label %173

173:                                              ; preds = %172
  %174 = load i32, ptr %2, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, ptr %2, align 4
  %176 = load i32, ptr %2, align 4
  %177 = icmp sle i32 %176, 3
  br i1 %177, label %154, label %._crit_edge39, !llvm.loop !26

._crit_edge39:                                    ; preds = %173
  br label %178

178:                                              ; preds = %._crit_edge39, %151
  br label %179

179:                                              ; preds = %178
  %180 = load i32, ptr %1, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, ptr %1, align 4
  %182 = load i32, ptr %1, align 4
  %183 = icmp sle i32 %182, 0
  br i1 %183, label %151, label %._crit_edge42, !llvm.loop !27

._crit_edge42:                                    ; preds = %179
  br label %184

184:                                              ; preds = %._crit_edge42, %148
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  store i32 0, ptr %1, align 4
  %185 = load i32, ptr %1, align 4
  %186 = icmp sle i32 %185, 1
  br i1 %186, label %.lr.ph50, label %220

.lr.ph50:                                         ; preds = %184
  br label %187

187:                                              ; preds = %.lr.ph50, %215
  store i32 0, ptr %2, align 4
  %188 = load i32, ptr %2, align 4
  %189 = icmp sle i32 %188, 3
  br i1 %189, label %.lr.ph47, label %214

.lr.ph47:                                         ; preds = %187
  br label %190

190:                                              ; preds = %.lr.ph47, %209
  store i32 0, ptr %3, align 4
  %191 = load i32, ptr %3, align 4
  %192 = icmp sle i32 %191, 0
  br i1 %192, label %.lr.ph44, label %208

.lr.ph44:                                         ; preds = %190
  br label %193

193:                                              ; preds = %.lr.ph44, %203
  %194 = phi i32 [ %191, %.lr.ph44 ], [ %206, %203 ]
  %195 = load i32, ptr %1, align 4
  %196 = load i32, ptr %2, align 4
  %197 = mul nsw i32 8, %194
  %198 = add nsw i32 %196, %197
  %199 = mul nsw i32 8, %198
  %200 = add nsw i32 %195, %199
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 0, i64 %201
  store i32 1, ptr %202, align 4
  br label %203

203:                                              ; preds = %193
  %204 = load i32, ptr %3, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, ptr %3, align 4
  %206 = load i32, ptr %3, align 4
  %207 = icmp sle i32 %206, 0
  br i1 %207, label %193, label %._crit_edge45, !llvm.loop !28

._crit_edge45:                                    ; preds = %203
  br label %208

208:                                              ; preds = %._crit_edge45, %190
  br label %209

209:                                              ; preds = %208
  %210 = load i32, ptr %2, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, ptr %2, align 4
  %212 = load i32, ptr %2, align 4
  %213 = icmp sle i32 %212, 3
  br i1 %213, label %190, label %._crit_edge48, !llvm.loop !29

._crit_edge48:                                    ; preds = %209
  br label %214

214:                                              ; preds = %._crit_edge48, %187
  br label %215

215:                                              ; preds = %214
  %216 = load i32, ptr %1, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, ptr %1, align 4
  %218 = load i32, ptr %1, align 4
  %219 = icmp sle i32 %218, 1
  br i1 %219, label %187, label %._crit_edge51, !llvm.loop !30

._crit_edge51:                                    ; preds = %215
  br label %220

220:                                              ; preds = %._crit_edge51, %184
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  store i32 0, ptr %1, align 4
  %221 = load i32, ptr %1, align 4
  %222 = icmp sle i32 %221, 3
  br i1 %222, label %.lr.ph59, label %256

.lr.ph59:                                         ; preds = %220
  br label %223

223:                                              ; preds = %.lr.ph59, %251
  store i32 0, ptr %2, align 4
  %224 = load i32, ptr %2, align 4
  %225 = icmp sle i32 %224, 0
  br i1 %225, label %.lr.ph56, label %250

.lr.ph56:                                         ; preds = %223
  br label %226

226:                                              ; preds = %.lr.ph56, %245
  store i32 0, ptr %3, align 4
  %227 = load i32, ptr %3, align 4
  %228 = icmp sle i32 %227, 1
  br i1 %228, label %.lr.ph53, label %244

.lr.ph53:                                         ; preds = %226
  br label %229

229:                                              ; preds = %.lr.ph53, %239
  %230 = phi i32 [ %227, %.lr.ph53 ], [ %242, %239 ]
  %231 = load i32, ptr %1, align 4
  %232 = load i32, ptr %2, align 4
  %233 = mul nsw i32 8, %230
  %234 = add nsw i32 %232, %233
  %235 = mul nsw i32 8, %234
  %236 = add nsw i32 %231, %235
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 0, i64 %237
  store i32 1, ptr %238, align 4
  br label %239

239:                                              ; preds = %229
  %240 = load i32, ptr %3, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, ptr %3, align 4
  %242 = load i32, ptr %3, align 4
  %243 = icmp sle i32 %242, 1
  br i1 %243, label %229, label %._crit_edge54, !llvm.loop !31

._crit_edge54:                                    ; preds = %239
  br label %244

244:                                              ; preds = %._crit_edge54, %226
  br label %245

245:                                              ; preds = %244
  %246 = load i32, ptr %2, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, ptr %2, align 4
  %248 = load i32, ptr %2, align 4
  %249 = icmp sle i32 %248, 0
  br i1 %249, label %226, label %._crit_edge57, !llvm.loop !32

._crit_edge57:                                    ; preds = %245
  br label %250

250:                                              ; preds = %._crit_edge57, %223
  br label %251

251:                                              ; preds = %250
  %252 = load i32, ptr %1, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, ptr %1, align 4
  %254 = load i32, ptr %1, align 4
  %255 = icmp sle i32 %254, 3
  br i1 %255, label %223, label %._crit_edge60, !llvm.loop !33

._crit_edge60:                                    ; preds = %251
  br label %256

256:                                              ; preds = %._crit_edge60, %220
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  store i32 0, ptr %1, align 4
  %257 = load i32, ptr %1, align 4
  %258 = icmp sle i32 %257, 0
  br i1 %258, label %.lr.ph68, label %292

.lr.ph68:                                         ; preds = %256
  br label %259

259:                                              ; preds = %.lr.ph68, %287
  store i32 0, ptr %2, align 4
  %260 = load i32, ptr %2, align 4
  %261 = icmp sle i32 %260, 1
  br i1 %261, label %.lr.ph65, label %286

.lr.ph65:                                         ; preds = %259
  br label %262

262:                                              ; preds = %.lr.ph65, %281
  store i32 0, ptr %3, align 4
  %263 = load i32, ptr %3, align 4
  %264 = icmp sle i32 %263, 3
  br i1 %264, label %.lr.ph62, label %280

.lr.ph62:                                         ; preds = %262
  br label %265

265:                                              ; preds = %.lr.ph62, %275
  %266 = phi i32 [ %263, %.lr.ph62 ], [ %278, %275 ]
  %267 = load i32, ptr %1, align 4
  %268 = load i32, ptr %2, align 4
  %269 = mul nsw i32 8, %266
  %270 = add nsw i32 %268, %269
  %271 = mul nsw i32 8, %270
  %272 = add nsw i32 %267, %271
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 0, i64 %273
  store i32 1, ptr %274, align 4
  br label %275

275:                                              ; preds = %265
  %276 = load i32, ptr %3, align 4
  %277 = add nsw i32 %276, 1
  store i32 %277, ptr %3, align 4
  %278 = load i32, ptr %3, align 4
  %279 = icmp sle i32 %278, 3
  br i1 %279, label %265, label %._crit_edge63, !llvm.loop !34

._crit_edge63:                                    ; preds = %275
  br label %280

280:                                              ; preds = %._crit_edge63, %262
  br label %281

281:                                              ; preds = %280
  %282 = load i32, ptr %2, align 4
  %283 = add nsw i32 %282, 1
  store i32 %283, ptr %2, align 4
  %284 = load i32, ptr %2, align 4
  %285 = icmp sle i32 %284, 1
  br i1 %285, label %262, label %._crit_edge66, !llvm.loop !35

._crit_edge66:                                    ; preds = %281
  br label %286

286:                                              ; preds = %._crit_edge66, %259
  br label %287

287:                                              ; preds = %286
  %288 = load i32, ptr %1, align 4
  %289 = add nsw i32 %288, 1
  store i32 %289, ptr %1, align 4
  %290 = load i32, ptr %1, align 4
  %291 = icmp sle i32 %290, 0
  br i1 %291, label %259, label %._crit_edge69, !llvm.loop !36

._crit_edge69:                                    ; preds = %287
  br label %292

292:                                              ; preds = %._crit_edge69, %256
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  store i32 0, ptr %1, align 4
  %293 = load i32, ptr %1, align 4
  %294 = icmp sle i32 %293, 2
  br i1 %294, label %.lr.ph77, label %328

.lr.ph77:                                         ; preds = %292
  br label %295

295:                                              ; preds = %.lr.ph77, %323
  store i32 0, ptr %2, align 4
  %296 = load i32, ptr %2, align 4
  %297 = icmp sle i32 %296, 0
  br i1 %297, label %.lr.ph74, label %322

.lr.ph74:                                         ; preds = %295
  br label %298

298:                                              ; preds = %.lr.ph74, %317
  store i32 0, ptr %3, align 4
  %299 = load i32, ptr %3, align 4
  %300 = icmp sle i32 %299, 0
  br i1 %300, label %.lr.ph71, label %316

.lr.ph71:                                         ; preds = %298
  br label %301

301:                                              ; preds = %.lr.ph71, %311
  %302 = phi i32 [ %299, %.lr.ph71 ], [ %314, %311 ]
  %303 = load i32, ptr %1, align 4
  %304 = load i32, ptr %2, align 4
  %305 = mul nsw i32 8, %302
  %306 = add nsw i32 %304, %305
  %307 = mul nsw i32 8, %306
  %308 = add nsw i32 %303, %307
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 0, i64 %309
  store i32 1, ptr %310, align 4
  br label %311

311:                                              ; preds = %301
  %312 = load i32, ptr %3, align 4
  %313 = add nsw i32 %312, 1
  store i32 %313, ptr %3, align 4
  %314 = load i32, ptr %3, align 4
  %315 = icmp sle i32 %314, 0
  br i1 %315, label %301, label %._crit_edge72, !llvm.loop !37

._crit_edge72:                                    ; preds = %311
  br label %316

316:                                              ; preds = %._crit_edge72, %298
  br label %317

317:                                              ; preds = %316
  %318 = load i32, ptr %2, align 4
  %319 = add nsw i32 %318, 1
  store i32 %319, ptr %2, align 4
  %320 = load i32, ptr %2, align 4
  %321 = icmp sle i32 %320, 0
  br i1 %321, label %298, label %._crit_edge75, !llvm.loop !38

._crit_edge75:                                    ; preds = %317
  br label %322

322:                                              ; preds = %._crit_edge75, %295
  br label %323

323:                                              ; preds = %322
  %324 = load i32, ptr %1, align 4
  %325 = add nsw i32 %324, 1
  store i32 %325, ptr %1, align 4
  %326 = load i32, ptr %1, align 4
  %327 = icmp sle i32 %326, 2
  br i1 %327, label %295, label %._crit_edge78, !llvm.loop !39

._crit_edge78:                                    ; preds = %323
  br label %328

328:                                              ; preds = %._crit_edge78, %292
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  store i32 0, ptr %1, align 4
  %329 = load i32, ptr %1, align 4
  %330 = icmp sle i32 %329, 0
  br i1 %330, label %.lr.ph86, label %364

.lr.ph86:                                         ; preds = %328
  br label %331

331:                                              ; preds = %.lr.ph86, %359
  store i32 0, ptr %2, align 4
  %332 = load i32, ptr %2, align 4
  %333 = icmp sle i32 %332, 2
  br i1 %333, label %.lr.ph83, label %358

.lr.ph83:                                         ; preds = %331
  br label %334

334:                                              ; preds = %.lr.ph83, %353
  store i32 0, ptr %3, align 4
  %335 = load i32, ptr %3, align 4
  %336 = icmp sle i32 %335, 0
  br i1 %336, label %.lr.ph80, label %352

.lr.ph80:                                         ; preds = %334
  br label %337

337:                                              ; preds = %.lr.ph80, %347
  %338 = phi i32 [ %335, %.lr.ph80 ], [ %350, %347 ]
  %339 = load i32, ptr %1, align 4
  %340 = load i32, ptr %2, align 4
  %341 = mul nsw i32 8, %338
  %342 = add nsw i32 %340, %341
  %343 = mul nsw i32 8, %342
  %344 = add nsw i32 %339, %343
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 0, i64 %345
  store i32 1, ptr %346, align 4
  br label %347

347:                                              ; preds = %337
  %348 = load i32, ptr %3, align 4
  %349 = add nsw i32 %348, 1
  store i32 %349, ptr %3, align 4
  %350 = load i32, ptr %3, align 4
  %351 = icmp sle i32 %350, 0
  br i1 %351, label %337, label %._crit_edge81, !llvm.loop !40

._crit_edge81:                                    ; preds = %347
  br label %352

352:                                              ; preds = %._crit_edge81, %334
  br label %353

353:                                              ; preds = %352
  %354 = load i32, ptr %2, align 4
  %355 = add nsw i32 %354, 1
  store i32 %355, ptr %2, align 4
  %356 = load i32, ptr %2, align 4
  %357 = icmp sle i32 %356, 2
  br i1 %357, label %334, label %._crit_edge84, !llvm.loop !41

._crit_edge84:                                    ; preds = %353
  br label %358

358:                                              ; preds = %._crit_edge84, %331
  br label %359

359:                                              ; preds = %358
  %360 = load i32, ptr %1, align 4
  %361 = add nsw i32 %360, 1
  store i32 %361, ptr %1, align 4
  %362 = load i32, ptr %1, align 4
  %363 = icmp sle i32 %362, 0
  br i1 %363, label %331, label %._crit_edge87, !llvm.loop !42

._crit_edge87:                                    ; preds = %359
  br label %364

364:                                              ; preds = %._crit_edge87, %328
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  store i32 0, ptr %1, align 4
  %365 = load i32, ptr %1, align 4
  %366 = icmp sle i32 %365, 0
  br i1 %366, label %.lr.ph95, label %400

.lr.ph95:                                         ; preds = %364
  br label %367

367:                                              ; preds = %.lr.ph95, %395
  store i32 0, ptr %2, align 4
  %368 = load i32, ptr %2, align 4
  %369 = icmp sle i32 %368, 0
  br i1 %369, label %.lr.ph92, label %394

.lr.ph92:                                         ; preds = %367
  br label %370

370:                                              ; preds = %.lr.ph92, %389
  store i32 0, ptr %3, align 4
  %371 = load i32, ptr %3, align 4
  %372 = icmp sle i32 %371, 2
  br i1 %372, label %.lr.ph89, label %388

.lr.ph89:                                         ; preds = %370
  br label %373

373:                                              ; preds = %.lr.ph89, %383
  %374 = phi i32 [ %371, %.lr.ph89 ], [ %386, %383 ]
  %375 = load i32, ptr %1, align 4
  %376 = load i32, ptr %2, align 4
  %377 = mul nsw i32 8, %374
  %378 = add nsw i32 %376, %377
  %379 = mul nsw i32 8, %378
  %380 = add nsw i32 %375, %379
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 0, i64 %381
  store i32 1, ptr %382, align 4
  br label %383

383:                                              ; preds = %373
  %384 = load i32, ptr %3, align 4
  %385 = add nsw i32 %384, 1
  store i32 %385, ptr %3, align 4
  %386 = load i32, ptr %3, align 4
  %387 = icmp sle i32 %386, 2
  br i1 %387, label %373, label %._crit_edge90, !llvm.loop !43

._crit_edge90:                                    ; preds = %383
  br label %388

388:                                              ; preds = %._crit_edge90, %370
  br label %389

389:                                              ; preds = %388
  %390 = load i32, ptr %2, align 4
  %391 = add nsw i32 %390, 1
  store i32 %391, ptr %2, align 4
  %392 = load i32, ptr %2, align 4
  %393 = icmp sle i32 %392, 0
  br i1 %393, label %370, label %._crit_edge93, !llvm.loop !44

._crit_edge93:                                    ; preds = %389
  br label %394

394:                                              ; preds = %._crit_edge93, %367
  br label %395

395:                                              ; preds = %394
  %396 = load i32, ptr %1, align 4
  %397 = add nsw i32 %396, 1
  store i32 %397, ptr %1, align 4
  %398 = load i32, ptr %1, align 4
  %399 = icmp sle i32 %398, 0
  br i1 %399, label %367, label %._crit_edge96, !llvm.loop !45

._crit_edge96:                                    ; preds = %395
  br label %400

400:                                              ; preds = %._crit_edge96, %364
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  store i32 0, ptr %1, align 4
  %401 = load i32, ptr %1, align 4
  %402 = icmp sle i32 %401, 1
  br i1 %402, label %.lr.ph104, label %436

.lr.ph104:                                        ; preds = %400
  br label %403

403:                                              ; preds = %.lr.ph104, %431
  store i32 0, ptr %2, align 4
  %404 = load i32, ptr %2, align 4
  %405 = icmp sle i32 %404, 1
  br i1 %405, label %.lr.ph101, label %430

.lr.ph101:                                        ; preds = %403
  br label %406

406:                                              ; preds = %.lr.ph101, %425
  store i32 0, ptr %3, align 4
  %407 = load i32, ptr %3, align 4
  %408 = icmp sle i32 %407, 0
  br i1 %408, label %.lr.ph98, label %424

.lr.ph98:                                         ; preds = %406
  br label %409

409:                                              ; preds = %.lr.ph98, %419
  %410 = phi i32 [ %407, %.lr.ph98 ], [ %422, %419 ]
  %411 = load i32, ptr %1, align 4
  %412 = load i32, ptr %2, align 4
  %413 = mul nsw i32 8, %410
  %414 = add nsw i32 %412, %413
  %415 = mul nsw i32 8, %414
  %416 = add nsw i32 %411, %415
  %417 = sext i32 %416 to i64
  %418 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 0, i64 %417
  store i32 1, ptr %418, align 4
  br label %419

419:                                              ; preds = %409
  %420 = load i32, ptr %3, align 4
  %421 = add nsw i32 %420, 1
  store i32 %421, ptr %3, align 4
  %422 = load i32, ptr %3, align 4
  %423 = icmp sle i32 %422, 0
  br i1 %423, label %409, label %._crit_edge99, !llvm.loop !46

._crit_edge99:                                    ; preds = %419
  br label %424

424:                                              ; preds = %._crit_edge99, %406
  br label %425

425:                                              ; preds = %424
  %426 = load i32, ptr %2, align 4
  %427 = add nsw i32 %426, 1
  store i32 %427, ptr %2, align 4
  %428 = load i32, ptr %2, align 4
  %429 = icmp sle i32 %428, 1
  br i1 %429, label %406, label %._crit_edge102, !llvm.loop !47

._crit_edge102:                                   ; preds = %425
  br label %430

430:                                              ; preds = %._crit_edge102, %403
  br label %431

431:                                              ; preds = %430
  %432 = load i32, ptr %1, align 4
  %433 = add nsw i32 %432, 1
  store i32 %433, ptr %1, align 4
  %434 = load i32, ptr %1, align 4
  %435 = icmp sle i32 %434, 1
  br i1 %435, label %403, label %._crit_edge105, !llvm.loop !48

._crit_edge105:                                   ; preds = %431
  br label %436

436:                                              ; preds = %._crit_edge105, %400
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  store i32 0, ptr %1, align 4
  %437 = load i32, ptr %1, align 4
  %438 = icmp sle i32 %437, 1
  br i1 %438, label %.lr.ph113, label %472

.lr.ph113:                                        ; preds = %436
  br label %439

439:                                              ; preds = %.lr.ph113, %467
  store i32 0, ptr %2, align 4
  %440 = load i32, ptr %2, align 4
  %441 = icmp sle i32 %440, 0
  br i1 %441, label %.lr.ph110, label %466

.lr.ph110:                                        ; preds = %439
  br label %442

442:                                              ; preds = %.lr.ph110, %461
  store i32 0, ptr %3, align 4
  %443 = load i32, ptr %3, align 4
  %444 = icmp sle i32 %443, 1
  br i1 %444, label %.lr.ph107, label %460

.lr.ph107:                                        ; preds = %442
  br label %445

445:                                              ; preds = %.lr.ph107, %455
  %446 = phi i32 [ %443, %.lr.ph107 ], [ %458, %455 ]
  %447 = load i32, ptr %1, align 4
  %448 = load i32, ptr %2, align 4
  %449 = mul nsw i32 8, %446
  %450 = add nsw i32 %448, %449
  %451 = mul nsw i32 8, %450
  %452 = add nsw i32 %447, %451
  %453 = sext i32 %452 to i64
  %454 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 0, i64 %453
  store i32 1, ptr %454, align 4
  br label %455

455:                                              ; preds = %445
  %456 = load i32, ptr %3, align 4
  %457 = add nsw i32 %456, 1
  store i32 %457, ptr %3, align 4
  %458 = load i32, ptr %3, align 4
  %459 = icmp sle i32 %458, 1
  br i1 %459, label %445, label %._crit_edge108, !llvm.loop !49

._crit_edge108:                                   ; preds = %455
  br label %460

460:                                              ; preds = %._crit_edge108, %442
  br label %461

461:                                              ; preds = %460
  %462 = load i32, ptr %2, align 4
  %463 = add nsw i32 %462, 1
  store i32 %463, ptr %2, align 4
  %464 = load i32, ptr %2, align 4
  %465 = icmp sle i32 %464, 0
  br i1 %465, label %442, label %._crit_edge111, !llvm.loop !50

._crit_edge111:                                   ; preds = %461
  br label %466

466:                                              ; preds = %._crit_edge111, %439
  br label %467

467:                                              ; preds = %466
  %468 = load i32, ptr %1, align 4
  %469 = add nsw i32 %468, 1
  store i32 %469, ptr %1, align 4
  %470 = load i32, ptr %1, align 4
  %471 = icmp sle i32 %470, 1
  br i1 %471, label %439, label %._crit_edge114, !llvm.loop !51

._crit_edge114:                                   ; preds = %467
  br label %472

472:                                              ; preds = %._crit_edge114, %436
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  store i32 0, ptr %1, align 4
  %473 = load i32, ptr %1, align 4
  %474 = icmp sle i32 %473, 0
  br i1 %474, label %.lr.ph122, label %508

.lr.ph122:                                        ; preds = %472
  br label %475

475:                                              ; preds = %.lr.ph122, %503
  store i32 0, ptr %2, align 4
  %476 = load i32, ptr %2, align 4
  %477 = icmp sle i32 %476, 1
  br i1 %477, label %.lr.ph119, label %502

.lr.ph119:                                        ; preds = %475
  br label %478

478:                                              ; preds = %.lr.ph119, %497
  store i32 0, ptr %3, align 4
  %479 = load i32, ptr %3, align 4
  %480 = icmp sle i32 %479, 1
  br i1 %480, label %.lr.ph116, label %496

.lr.ph116:                                        ; preds = %478
  br label %481

481:                                              ; preds = %.lr.ph116, %491
  %482 = phi i32 [ %479, %.lr.ph116 ], [ %494, %491 ]
  %483 = load i32, ptr %1, align 4
  %484 = load i32, ptr %2, align 4
  %485 = mul nsw i32 8, %482
  %486 = add nsw i32 %484, %485
  %487 = mul nsw i32 8, %486
  %488 = add nsw i32 %483, %487
  %489 = sext i32 %488 to i64
  %490 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 0, i64 %489
  store i32 1, ptr %490, align 4
  br label %491

491:                                              ; preds = %481
  %492 = load i32, ptr %3, align 4
  %493 = add nsw i32 %492, 1
  store i32 %493, ptr %3, align 4
  %494 = load i32, ptr %3, align 4
  %495 = icmp sle i32 %494, 1
  br i1 %495, label %481, label %._crit_edge117, !llvm.loop !52

._crit_edge117:                                   ; preds = %491
  br label %496

496:                                              ; preds = %._crit_edge117, %478
  br label %497

497:                                              ; preds = %496
  %498 = load i32, ptr %2, align 4
  %499 = add nsw i32 %498, 1
  store i32 %499, ptr %2, align 4
  %500 = load i32, ptr %2, align 4
  %501 = icmp sle i32 %500, 1
  br i1 %501, label %478, label %._crit_edge120, !llvm.loop !53

._crit_edge120:                                   ; preds = %497
  br label %502

502:                                              ; preds = %._crit_edge120, %475
  br label %503

503:                                              ; preds = %502
  %504 = load i32, ptr %1, align 4
  %505 = add nsw i32 %504, 1
  store i32 %505, ptr %1, align 4
  %506 = load i32, ptr %1, align 4
  %507 = icmp sle i32 %506, 0
  br i1 %507, label %475, label %._crit_edge123, !llvm.loop !54

._crit_edge123:                                   ; preds = %503
  br label %508

508:                                              ; preds = %._crit_edge123, %472
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  store i32 0, ptr %1, align 4
  %509 = load i32, ptr %1, align 4
  %510 = icmp sle i32 %509, 1
  br i1 %510, label %.lr.ph131, label %544

.lr.ph131:                                        ; preds = %508
  br label %511

511:                                              ; preds = %.lr.ph131, %539
  store i32 0, ptr %2, align 4
  %512 = load i32, ptr %2, align 4
  %513 = icmp sle i32 %512, 1
  br i1 %513, label %.lr.ph128, label %538

.lr.ph128:                                        ; preds = %511
  br label %514

514:                                              ; preds = %.lr.ph128, %533
  store i32 0, ptr %3, align 4
  %515 = load i32, ptr %3, align 4
  %516 = icmp sle i32 %515, 1
  br i1 %516, label %.lr.ph125, label %532

.lr.ph125:                                        ; preds = %514
  br label %517

517:                                              ; preds = %.lr.ph125, %527
  %518 = phi i32 [ %515, %.lr.ph125 ], [ %530, %527 ]
  %519 = load i32, ptr %1, align 4
  %520 = load i32, ptr %2, align 4
  %521 = mul nsw i32 8, %518
  %522 = add nsw i32 %520, %521
  %523 = mul nsw i32 8, %522
  %524 = add nsw i32 %519, %523
  %525 = sext i32 %524 to i64
  %526 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 0, i64 %525
  store i32 1, ptr %526, align 4
  br label %527

527:                                              ; preds = %517
  %528 = load i32, ptr %3, align 4
  %529 = add nsw i32 %528, 1
  store i32 %529, ptr %3, align 4
  %530 = load i32, ptr %3, align 4
  %531 = icmp sle i32 %530, 1
  br i1 %531, label %517, label %._crit_edge126, !llvm.loop !55

._crit_edge126:                                   ; preds = %527
  br label %532

532:                                              ; preds = %._crit_edge126, %514
  br label %533

533:                                              ; preds = %532
  %534 = load i32, ptr %2, align 4
  %535 = add nsw i32 %534, 1
  store i32 %535, ptr %2, align 4
  %536 = load i32, ptr %2, align 4
  %537 = icmp sle i32 %536, 1
  br i1 %537, label %514, label %._crit_edge129, !llvm.loop !56

._crit_edge129:                                   ; preds = %533
  br label %538

538:                                              ; preds = %._crit_edge129, %511
  br label %539

539:                                              ; preds = %538
  %540 = load i32, ptr %1, align 4
  %541 = add nsw i32 %540, 1
  store i32 %541, ptr %1, align 4
  %542 = load i32, ptr %1, align 4
  %543 = icmp sle i32 %542, 1
  br i1 %543, label %511, label %._crit_edge132, !llvm.loop !57

._crit_edge132:                                   ; preds = %539
  br label %544

544:                                              ; preds = %._crit_edge132, %508
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 73, ptr %4, align 4
  store i32 0, ptr @kount, align 4
  %545 = load i32, ptr %4, align 4
  %546 = call i32 @Fit(i32 noundef 0, i32 noundef %545)
  %547 = icmp ne i32 %546, 0
  br i1 %547, label %548, label %551

548:                                              ; preds = %544
  %549 = load i32, ptr %4, align 4
  %550 = call i32 @Place(i32 noundef 0, i32 noundef %549)
  store i32 %550, ptr @n, align 4
  br label %553

551:                                              ; preds = %544
  %552 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  br label %553

553:                                              ; preds = %551, %548
  %554 = load i32, ptr @n, align 4
  %555 = call i32 @Trial(i32 noundef %554)
  %556 = icmp ne i32 %555, 0
  br i1 %556, label %559, label %557

557:                                              ; preds = %553
  %558 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  br label %565

559:                                              ; preds = %553
  %560 = load i32, ptr @kount, align 4
  %561 = icmp ne i32 %560, 2005
  br i1 %561, label %562, label %564

562:                                              ; preds = %559
  %563 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %564

564:                                              ; preds = %562, %559
  br label %565

565:                                              ; preds = %564, %557
  %566 = load i32, ptr @n, align 4
  %567 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %566)
  %568 = load i32, ptr @kount, align 4
  %569 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %568)
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
  br i1 %4, label %.lr.ph, label %11

.lr.ph:                                           ; preds = %0
  br label %5

5:                                                ; preds = %.lr.ph, %6
  call void @Puzzle()
  br label %6

6:                                                ; preds = %5
  %7 = load i32, ptr %2, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, ptr %2, align 4
  %9 = load i32, ptr %2, align 4
  %10 = icmp slt i32 %9, 100
  br i1 %10, label %5, label %._crit_edge, !llvm.loop !58

._crit_edge:                                      ; preds = %6
  br label %11

11:                                               ; preds = %._crit_edge, %0
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
