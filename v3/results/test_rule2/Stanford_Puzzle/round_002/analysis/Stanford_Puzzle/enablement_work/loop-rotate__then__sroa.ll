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
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds [13 x i32], ptr @piecemax, i64 0, i64 %3
  %5 = load i32, ptr %4, align 4
  %6 = icmp sle i32 0, %5
  br i1 %6, label %.lr.ph, label %30

.lr.ph:                                           ; preds = %2
  br label %7

7:                                                ; preds = %.lr.ph, %24
  %.0 = phi i32 [ 0, %.lr.ph ], [ %25, %24 ]
  %8 = phi i64 [ %3, %.lr.ph ], [ %26, %24 ]
  %9 = phi i32 [ 0, %.lr.ph ], [ %25, %24 ]
  %10 = getelementptr inbounds [13 x [512 x i32]], ptr @p, i64 0, i64 %8
  %11 = sext i32 %9 to i64
  %12 = getelementptr inbounds [512 x i32], ptr %10, i64 0, i64 %11
  %13 = load i32, ptr %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %7
  %16 = add nsw i32 %1, %9
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %17
  %19 = load i32, ptr %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  br label %31

22:                                               ; preds = %15
  br label %23

23:                                               ; preds = %22, %7
  br label %24

24:                                               ; preds = %23
  %25 = add nsw i32 %.0, 1
  %26 = sext i32 %0 to i64
  %27 = getelementptr inbounds [13 x i32], ptr @piecemax, i64 0, i64 %26
  %28 = load i32, ptr %27, align 4
  %29 = icmp sle i32 %25, %28
  br i1 %29, label %7, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %24
  br label %30

30:                                               ; preds = %._crit_edge, %2
  br label %31

31:                                               ; preds = %30, %21
  %.07 = phi i32 [ 0, %21 ], [ 1, %30 ]
  ret i32 %.07
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Place(i32 noundef %0, i32 noundef %1) #0 {
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds [13 x i32], ptr @piecemax, i64 0, i64 %3
  %5 = load i32, ptr %4, align 4
  %6 = icmp sle i32 0, %5
  br i1 %6, label %.lr.ph, label %26

.lr.ph:                                           ; preds = %2
  br label %7

7:                                                ; preds = %.lr.ph, %20
  %.0 = phi i32 [ 0, %.lr.ph ], [ %21, %20 ]
  %8 = phi i64 [ %3, %.lr.ph ], [ %22, %20 ]
  %9 = phi i32 [ 0, %.lr.ph ], [ %21, %20 ]
  %10 = getelementptr inbounds [13 x [512 x i32]], ptr @p, i64 0, i64 %8
  %11 = sext i32 %9 to i64
  %12 = getelementptr inbounds [512 x i32], ptr %10, i64 0, i64 %11
  %13 = load i32, ptr %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %7
  %16 = add nsw i32 %1, %9
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %17
  store i32 1, ptr %18, align 4
  br label %19

19:                                               ; preds = %15, %7
  br label %20

20:                                               ; preds = %19
  %21 = add nsw i32 %.0, 1
  %22 = sext i32 %0 to i64
  %23 = getelementptr inbounds [13 x i32], ptr @piecemax, i64 0, i64 %22
  %24 = load i32, ptr %23, align 4
  %25 = icmp sle i32 %21, %24
  br i1 %25, label %7, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %20
  %split = phi i64 [ %22, %20 ]
  br label %26

26:                                               ; preds = %._crit_edge, %2
  %.lcssa = phi i64 [ %split, %._crit_edge ], [ %3, %2 ]
  %27 = getelementptr inbounds [13 x i32], ptr @class, i64 0, i64 %.lcssa
  %28 = load i32, ptr %27, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [4 x i32], ptr @piececount, i64 0, i64 %29
  %31 = load i32, ptr %30, align 4
  %32 = sub nsw i32 %31, 1
  store i32 %32, ptr %30, align 4
  %33 = icmp sle i32 %1, 511
  br i1 %33, label %.lr.ph2, label %45

.lr.ph2:                                          ; preds = %26
  br label %34

34:                                               ; preds = %.lr.ph2, %42
  %35 = phi i32 [ %1, %.lr.ph2 ], [ %43, %42 ]
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %36
  %38 = load i32, ptr %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %34
  %.lcssa1 = phi i32 [ %35, %34 ]
  br label %46

41:                                               ; preds = %34
  br label %42

42:                                               ; preds = %41
  %43 = add nsw i32 %35, 1
  %44 = icmp sle i32 %43, 511
  br i1 %44, label %34, label %._crit_edge3, !llvm.loop !10

._crit_edge3:                                     ; preds = %42
  br label %45

45:                                               ; preds = %._crit_edge3, %26
  br label %46

46:                                               ; preds = %45, %40
  %.013 = phi i32 [ 0, %45 ], [ %.lcssa1, %40 ]
  ret i32 %.013
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Remove(i32 noundef %0, i32 noundef %1) #0 {
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds [13 x i32], ptr @piecemax, i64 0, i64 %3
  %5 = load i32, ptr %4, align 4
  %6 = icmp sle i32 0, %5
  br i1 %6, label %.lr.ph, label %26

.lr.ph:                                           ; preds = %2
  br label %7

7:                                                ; preds = %.lr.ph, %20
  %.0 = phi i32 [ 0, %.lr.ph ], [ %21, %20 ]
  %8 = phi i64 [ %3, %.lr.ph ], [ %22, %20 ]
  %9 = phi i32 [ 0, %.lr.ph ], [ %21, %20 ]
  %10 = getelementptr inbounds [13 x [512 x i32]], ptr @p, i64 0, i64 %8
  %11 = sext i32 %9 to i64
  %12 = getelementptr inbounds [512 x i32], ptr %10, i64 0, i64 %11
  %13 = load i32, ptr %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %7
  %16 = add nsw i32 %1, %9
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %17
  store i32 0, ptr %18, align 4
  br label %19

19:                                               ; preds = %15, %7
  br label %20

20:                                               ; preds = %19
  %21 = add nsw i32 %.0, 1
  %22 = sext i32 %0 to i64
  %23 = getelementptr inbounds [13 x i32], ptr @piecemax, i64 0, i64 %22
  %24 = load i32, ptr %23, align 4
  %25 = icmp sle i32 %21, %24
  br i1 %25, label %7, label %._crit_edge, !llvm.loop !11

._crit_edge:                                      ; preds = %20
  %split = phi i64 [ %22, %20 ]
  br label %26

26:                                               ; preds = %._crit_edge, %2
  %.lcssa = phi i64 [ %split, %._crit_edge ], [ %3, %2 ]
  %27 = getelementptr inbounds [13 x i32], ptr @class, i64 0, i64 %.lcssa
  %28 = load i32, ptr %27, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [4 x i32], ptr @piececount, i64 0, i64 %29
  %31 = load i32, ptr %30, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, ptr %30, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Trial(i32 noundef %0) #0 {
  %2 = load i32, ptr @kount, align 4
  %3 = add nsw i32 %2, 1
  store i32 %3, ptr @kount, align 4
  %4 = icmp sle i32 0, 12
  br i1 %4, label %.lr.ph, label %31

.lr.ph:                                           ; preds = %1
  br label %5

5:                                                ; preds = %.lr.ph, %28
  %.010 = phi i32 [ 0, %.lr.ph ], [ %29, %28 ]
  %6 = phi i32 [ 0, %.lr.ph ], [ %29, %28 ]
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [13 x i32], ptr @class, i64 0, i64 %7
  %9 = load i32, ptr %8, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [4 x i32], ptr @piececount, i64 0, i64 %10
  %12 = load i32, ptr %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %5
  %15 = call i32 @Fit(i32 noundef %6, i32 noundef %0)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %14
  %18 = call i32 @Place(i32 noundef %.010, i32 noundef %0)
  %19 = call i32 @Trial(i32 noundef %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = icmp eq i32 %18, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %21, %17
  br label %32

24:                                               ; preds = %21
  call void @Remove(i32 noundef %.010, i32 noundef %0)
  br label %25

25:                                               ; preds = %24
  br label %26

26:                                               ; preds = %25, %14
  br label %27

27:                                               ; preds = %26, %5
  br label %28

28:                                               ; preds = %27
  %29 = add nsw i32 %.010, 1
  %30 = icmp sle i32 %29, 12
  br i1 %30, label %5, label %._crit_edge, !llvm.loop !12

._crit_edge:                                      ; preds = %28
  br label %31

31:                                               ; preds = %._crit_edge, %1
  br label %32

32:                                               ; preds = %31, %23
  %.0 = phi i32 [ 1, %23 ], [ 0, %31 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Puzzle() #0 {
  %1 = icmp sle i32 0, 511
  br i1 %1, label %.lr.ph, label %9

.lr.ph:                                           ; preds = %0
  br label %2

2:                                                ; preds = %.lr.ph, %6
  %.0 = phi i32 [ 0, %.lr.ph ], [ %7, %6 ]
  %3 = phi i32 [ 0, %.lr.ph ], [ %7, %6 ]
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %4
  store i32 1, ptr %5, align 4
  br label %6

6:                                                ; preds = %2
  %7 = add nsw i32 %.0, 1
  %8 = icmp sle i32 %7, 511
  br i1 %8, label %2, label %._crit_edge, !llvm.loop !13

._crit_edge:                                      ; preds = %6
  br label %9

9:                                                ; preds = %._crit_edge, %0
  %10 = icmp sle i32 1, 5
  br i1 %10, label %.lr.ph8, label %34

.lr.ph8:                                          ; preds = %9
  br label %11

11:                                               ; preds = %.lr.ph8, %31
  %.0314 = phi i32 [ 1, %.lr.ph8 ], [ %32, %31 ]
  %12 = icmp sle i32 1, 5
  br i1 %12, label %.lr.ph5, label %30

.lr.ph5:                                          ; preds = %11
  br label %13

13:                                               ; preds = %.lr.ph5, %27
  %.0300 = phi i32 [ 1, %.lr.ph5 ], [ %28, %27 ]
  %14 = icmp sle i32 1, 5
  br i1 %14, label %.lr.ph2, label %26

.lr.ph2:                                          ; preds = %13
  br label %15

15:                                               ; preds = %.lr.ph2, %23
  %.0298 = phi i32 [ 1, %.lr.ph2 ], [ %24, %23 ]
  %16 = phi i32 [ 1, %.lr.ph2 ], [ %24, %23 ]
  %17 = mul nsw i32 8, %16
  %18 = add nsw i32 %.0300, %17
  %19 = mul nsw i32 8, %18
  %20 = add nsw i32 %.0314, %19
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %21
  store i32 0, ptr %22, align 4
  br label %23

23:                                               ; preds = %15
  %24 = add nsw i32 %.0298, 1
  %25 = icmp sle i32 %24, 5
  br i1 %25, label %15, label %._crit_edge3, !llvm.loop !14

._crit_edge3:                                     ; preds = %23
  br label %26

26:                                               ; preds = %._crit_edge3, %13
  br label %27

27:                                               ; preds = %26
  %28 = add nsw i32 %.0300, 1
  %29 = icmp sle i32 %28, 5
  br i1 %29, label %13, label %._crit_edge6, !llvm.loop !15

._crit_edge6:                                     ; preds = %27
  br label %30

30:                                               ; preds = %._crit_edge6, %11
  br label %31

31:                                               ; preds = %30
  %32 = add nsw i32 %.0314, 1
  %33 = icmp sle i32 %32, 5
  br i1 %33, label %11, label %._crit_edge9, !llvm.loop !16

._crit_edge9:                                     ; preds = %31
  br label %34

34:                                               ; preds = %._crit_edge9, %9
  %35 = icmp sle i32 0, 12
  br i1 %35, label %.lr.ph14, label %51

.lr.ph14:                                         ; preds = %34
  br label %36

36:                                               ; preds = %.lr.ph14, %48
  %.1315 = phi i32 [ 0, %.lr.ph14 ], [ %49, %48 ]
  %37 = icmp sle i32 0, 511
  br i1 %37, label %.lr.ph11, label %47

.lr.ph11:                                         ; preds = %36
  br label %38

38:                                               ; preds = %.lr.ph11, %44
  %.1 = phi i32 [ 0, %.lr.ph11 ], [ %45, %44 ]
  %39 = phi i32 [ 0, %.lr.ph11 ], [ %45, %44 ]
  %40 = sext i32 %.1315 to i64
  %41 = getelementptr inbounds [13 x [512 x i32]], ptr @p, i64 0, i64 %40
  %42 = sext i32 %39 to i64
  %43 = getelementptr inbounds [512 x i32], ptr %41, i64 0, i64 %42
  store i32 0, ptr %43, align 4
  br label %44

44:                                               ; preds = %38
  %45 = add nsw i32 %.1, 1
  %46 = icmp sle i32 %45, 511
  br i1 %46, label %38, label %._crit_edge12, !llvm.loop !17

._crit_edge12:                                    ; preds = %44
  br label %47

47:                                               ; preds = %._crit_edge12, %36
  br label %48

48:                                               ; preds = %47
  %49 = add nsw i32 %.1315, 1
  %50 = icmp sle i32 %49, 12
  br i1 %50, label %36, label %._crit_edge15, !llvm.loop !18

._crit_edge15:                                    ; preds = %48
  br label %51

51:                                               ; preds = %._crit_edge15, %34
  %52 = icmp sle i32 0, 3
  br i1 %52, label %.lr.ph23, label %76

.lr.ph23:                                         ; preds = %51
  br label %53

53:                                               ; preds = %.lr.ph23, %73
  %.2316 = phi i32 [ 0, %.lr.ph23 ], [ %74, %73 ]
  %54 = icmp sle i32 0, 1
  br i1 %54, label %.lr.ph20, label %72

.lr.ph20:                                         ; preds = %53
  br label %55

55:                                               ; preds = %.lr.ph20, %69
  %.1301 = phi i32 [ 0, %.lr.ph20 ], [ %70, %69 ]
  %56 = icmp sle i32 0, 0
  br i1 %56, label %.lr.ph17, label %68

.lr.ph17:                                         ; preds = %55
  br label %57

57:                                               ; preds = %.lr.ph17, %65
  %.1299 = phi i32 [ 0, %.lr.ph17 ], [ %66, %65 ]
  %58 = phi i32 [ 0, %.lr.ph17 ], [ %66, %65 ]
  %59 = mul nsw i32 8, %58
  %60 = add nsw i32 %.1301, %59
  %61 = mul nsw i32 8, %60
  %62 = add nsw i32 %.2316, %61
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [512 x i32], ptr @p, i64 0, i64 %63
  store i32 1, ptr %64, align 4
  br label %65

65:                                               ; preds = %57
  %66 = add nsw i32 %.1299, 1
  %67 = icmp sle i32 %66, 0
  br i1 %67, label %57, label %._crit_edge18, !llvm.loop !19

._crit_edge18:                                    ; preds = %65
  br label %68

68:                                               ; preds = %._crit_edge18, %55
  br label %69

69:                                               ; preds = %68
  %70 = add nsw i32 %.1301, 1
  %71 = icmp sle i32 %70, 1
  br i1 %71, label %55, label %._crit_edge21, !llvm.loop !20

._crit_edge21:                                    ; preds = %69
  br label %72

72:                                               ; preds = %._crit_edge21, %53
  br label %73

73:                                               ; preds = %72
  %74 = add nsw i32 %.2316, 1
  %75 = icmp sle i32 %74, 3
  br i1 %75, label %53, label %._crit_edge24, !llvm.loop !21

._crit_edge24:                                    ; preds = %73
  br label %76

76:                                               ; preds = %._crit_edge24, %51
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  %77 = icmp sle i32 0, 1
  br i1 %77, label %.lr.ph32, label %101

.lr.ph32:                                         ; preds = %76
  br label %78

78:                                               ; preds = %.lr.ph32, %98
  %.3317 = phi i32 [ 0, %.lr.ph32 ], [ %99, %98 ]
  %79 = icmp sle i32 0, 0
  br i1 %79, label %.lr.ph29, label %97

.lr.ph29:                                         ; preds = %78
  br label %80

80:                                               ; preds = %.lr.ph29, %94
  %.2302 = phi i32 [ 0, %.lr.ph29 ], [ %95, %94 ]
  %81 = icmp sle i32 0, 3
  br i1 %81, label %.lr.ph26, label %93

.lr.ph26:                                         ; preds = %80
  br label %82

82:                                               ; preds = %.lr.ph26, %90
  %.2 = phi i32 [ 0, %.lr.ph26 ], [ %91, %90 ]
  %83 = phi i32 [ 0, %.lr.ph26 ], [ %91, %90 ]
  %84 = mul nsw i32 8, %83
  %85 = add nsw i32 %.2302, %84
  %86 = mul nsw i32 8, %85
  %87 = add nsw i32 %.3317, %86
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 0, i64 %88
  store i32 1, ptr %89, align 4
  br label %90

90:                                               ; preds = %82
  %91 = add nsw i32 %.2, 1
  %92 = icmp sle i32 %91, 3
  br i1 %92, label %82, label %._crit_edge27, !llvm.loop !22

._crit_edge27:                                    ; preds = %90
  br label %93

93:                                               ; preds = %._crit_edge27, %80
  br label %94

94:                                               ; preds = %93
  %95 = add nsw i32 %.2302, 1
  %96 = icmp sle i32 %95, 0
  br i1 %96, label %80, label %._crit_edge30, !llvm.loop !23

._crit_edge30:                                    ; preds = %94
  br label %97

97:                                               ; preds = %._crit_edge30, %78
  br label %98

98:                                               ; preds = %97
  %99 = add nsw i32 %.3317, 1
  %100 = icmp sle i32 %99, 1
  br i1 %100, label %78, label %._crit_edge33, !llvm.loop !24

._crit_edge33:                                    ; preds = %98
  br label %101

101:                                              ; preds = %._crit_edge33, %76
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  %102 = icmp sle i32 0, 0
  br i1 %102, label %.lr.ph41, label %126

.lr.ph41:                                         ; preds = %101
  br label %103

103:                                              ; preds = %.lr.ph41, %123
  %.4318 = phi i32 [ 0, %.lr.ph41 ], [ %124, %123 ]
  %104 = icmp sle i32 0, 3
  br i1 %104, label %.lr.ph38, label %122

.lr.ph38:                                         ; preds = %103
  br label %105

105:                                              ; preds = %.lr.ph38, %119
  %.3303 = phi i32 [ 0, %.lr.ph38 ], [ %120, %119 ]
  %106 = icmp sle i32 0, 1
  br i1 %106, label %.lr.ph35, label %118

.lr.ph35:                                         ; preds = %105
  br label %107

107:                                              ; preds = %.lr.ph35, %115
  %.3 = phi i32 [ 0, %.lr.ph35 ], [ %116, %115 ]
  %108 = phi i32 [ 0, %.lr.ph35 ], [ %116, %115 ]
  %109 = mul nsw i32 8, %108
  %110 = add nsw i32 %.3303, %109
  %111 = mul nsw i32 8, %110
  %112 = add nsw i32 %.4318, %111
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 0, i64 %113
  store i32 1, ptr %114, align 4
  br label %115

115:                                              ; preds = %107
  %116 = add nsw i32 %.3, 1
  %117 = icmp sle i32 %116, 1
  br i1 %117, label %107, label %._crit_edge36, !llvm.loop !25

._crit_edge36:                                    ; preds = %115
  br label %118

118:                                              ; preds = %._crit_edge36, %105
  br label %119

119:                                              ; preds = %118
  %120 = add nsw i32 %.3303, 1
  %121 = icmp sle i32 %120, 3
  br i1 %121, label %105, label %._crit_edge39, !llvm.loop !26

._crit_edge39:                                    ; preds = %119
  br label %122

122:                                              ; preds = %._crit_edge39, %103
  br label %123

123:                                              ; preds = %122
  %124 = add nsw i32 %.4318, 1
  %125 = icmp sle i32 %124, 0
  br i1 %125, label %103, label %._crit_edge42, !llvm.loop !27

._crit_edge42:                                    ; preds = %123
  br label %126

126:                                              ; preds = %._crit_edge42, %101
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  %127 = icmp sle i32 0, 1
  br i1 %127, label %.lr.ph50, label %151

.lr.ph50:                                         ; preds = %126
  br label %128

128:                                              ; preds = %.lr.ph50, %148
  %.5319 = phi i32 [ 0, %.lr.ph50 ], [ %149, %148 ]
  %129 = icmp sle i32 0, 3
  br i1 %129, label %.lr.ph47, label %147

.lr.ph47:                                         ; preds = %128
  br label %130

130:                                              ; preds = %.lr.ph47, %144
  %.4304 = phi i32 [ 0, %.lr.ph47 ], [ %145, %144 ]
  %131 = icmp sle i32 0, 0
  br i1 %131, label %.lr.ph44, label %143

.lr.ph44:                                         ; preds = %130
  br label %132

132:                                              ; preds = %.lr.ph44, %140
  %.4 = phi i32 [ 0, %.lr.ph44 ], [ %141, %140 ]
  %133 = phi i32 [ 0, %.lr.ph44 ], [ %141, %140 ]
  %134 = mul nsw i32 8, %133
  %135 = add nsw i32 %.4304, %134
  %136 = mul nsw i32 8, %135
  %137 = add nsw i32 %.5319, %136
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 0, i64 %138
  store i32 1, ptr %139, align 4
  br label %140

140:                                              ; preds = %132
  %141 = add nsw i32 %.4, 1
  %142 = icmp sle i32 %141, 0
  br i1 %142, label %132, label %._crit_edge45, !llvm.loop !28

._crit_edge45:                                    ; preds = %140
  br label %143

143:                                              ; preds = %._crit_edge45, %130
  br label %144

144:                                              ; preds = %143
  %145 = add nsw i32 %.4304, 1
  %146 = icmp sle i32 %145, 3
  br i1 %146, label %130, label %._crit_edge48, !llvm.loop !29

._crit_edge48:                                    ; preds = %144
  br label %147

147:                                              ; preds = %._crit_edge48, %128
  br label %148

148:                                              ; preds = %147
  %149 = add nsw i32 %.5319, 1
  %150 = icmp sle i32 %149, 1
  br i1 %150, label %128, label %._crit_edge51, !llvm.loop !30

._crit_edge51:                                    ; preds = %148
  br label %151

151:                                              ; preds = %._crit_edge51, %126
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  %152 = icmp sle i32 0, 3
  br i1 %152, label %.lr.ph59, label %176

.lr.ph59:                                         ; preds = %151
  br label %153

153:                                              ; preds = %.lr.ph59, %173
  %.6320 = phi i32 [ 0, %.lr.ph59 ], [ %174, %173 ]
  %154 = icmp sle i32 0, 0
  br i1 %154, label %.lr.ph56, label %172

.lr.ph56:                                         ; preds = %153
  br label %155

155:                                              ; preds = %.lr.ph56, %169
  %.5305 = phi i32 [ 0, %.lr.ph56 ], [ %170, %169 ]
  %156 = icmp sle i32 0, 1
  br i1 %156, label %.lr.ph53, label %168

.lr.ph53:                                         ; preds = %155
  br label %157

157:                                              ; preds = %.lr.ph53, %165
  %.5 = phi i32 [ 0, %.lr.ph53 ], [ %166, %165 ]
  %158 = phi i32 [ 0, %.lr.ph53 ], [ %166, %165 ]
  %159 = mul nsw i32 8, %158
  %160 = add nsw i32 %.5305, %159
  %161 = mul nsw i32 8, %160
  %162 = add nsw i32 %.6320, %161
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 0, i64 %163
  store i32 1, ptr %164, align 4
  br label %165

165:                                              ; preds = %157
  %166 = add nsw i32 %.5, 1
  %167 = icmp sle i32 %166, 1
  br i1 %167, label %157, label %._crit_edge54, !llvm.loop !31

._crit_edge54:                                    ; preds = %165
  br label %168

168:                                              ; preds = %._crit_edge54, %155
  br label %169

169:                                              ; preds = %168
  %170 = add nsw i32 %.5305, 1
  %171 = icmp sle i32 %170, 0
  br i1 %171, label %155, label %._crit_edge57, !llvm.loop !32

._crit_edge57:                                    ; preds = %169
  br label %172

172:                                              ; preds = %._crit_edge57, %153
  br label %173

173:                                              ; preds = %172
  %174 = add nsw i32 %.6320, 1
  %175 = icmp sle i32 %174, 3
  br i1 %175, label %153, label %._crit_edge60, !llvm.loop !33

._crit_edge60:                                    ; preds = %173
  br label %176

176:                                              ; preds = %._crit_edge60, %151
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  %177 = icmp sle i32 0, 0
  br i1 %177, label %.lr.ph68, label %201

.lr.ph68:                                         ; preds = %176
  br label %178

178:                                              ; preds = %.lr.ph68, %198
  %.7321 = phi i32 [ 0, %.lr.ph68 ], [ %199, %198 ]
  %179 = icmp sle i32 0, 1
  br i1 %179, label %.lr.ph65, label %197

.lr.ph65:                                         ; preds = %178
  br label %180

180:                                              ; preds = %.lr.ph65, %194
  %.6306 = phi i32 [ 0, %.lr.ph65 ], [ %195, %194 ]
  %181 = icmp sle i32 0, 3
  br i1 %181, label %.lr.ph62, label %193

.lr.ph62:                                         ; preds = %180
  br label %182

182:                                              ; preds = %.lr.ph62, %190
  %.6 = phi i32 [ 0, %.lr.ph62 ], [ %191, %190 ]
  %183 = phi i32 [ 0, %.lr.ph62 ], [ %191, %190 ]
  %184 = mul nsw i32 8, %183
  %185 = add nsw i32 %.6306, %184
  %186 = mul nsw i32 8, %185
  %187 = add nsw i32 %.7321, %186
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 0, i64 %188
  store i32 1, ptr %189, align 4
  br label %190

190:                                              ; preds = %182
  %191 = add nsw i32 %.6, 1
  %192 = icmp sle i32 %191, 3
  br i1 %192, label %182, label %._crit_edge63, !llvm.loop !34

._crit_edge63:                                    ; preds = %190
  br label %193

193:                                              ; preds = %._crit_edge63, %180
  br label %194

194:                                              ; preds = %193
  %195 = add nsw i32 %.6306, 1
  %196 = icmp sle i32 %195, 1
  br i1 %196, label %180, label %._crit_edge66, !llvm.loop !35

._crit_edge66:                                    ; preds = %194
  br label %197

197:                                              ; preds = %._crit_edge66, %178
  br label %198

198:                                              ; preds = %197
  %199 = add nsw i32 %.7321, 1
  %200 = icmp sle i32 %199, 0
  br i1 %200, label %178, label %._crit_edge69, !llvm.loop !36

._crit_edge69:                                    ; preds = %198
  br label %201

201:                                              ; preds = %._crit_edge69, %176
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  %202 = icmp sle i32 0, 2
  br i1 %202, label %.lr.ph77, label %226

.lr.ph77:                                         ; preds = %201
  br label %203

203:                                              ; preds = %.lr.ph77, %223
  %.8322 = phi i32 [ 0, %.lr.ph77 ], [ %224, %223 ]
  %204 = icmp sle i32 0, 0
  br i1 %204, label %.lr.ph74, label %222

.lr.ph74:                                         ; preds = %203
  br label %205

205:                                              ; preds = %.lr.ph74, %219
  %.7307 = phi i32 [ 0, %.lr.ph74 ], [ %220, %219 ]
  %206 = icmp sle i32 0, 0
  br i1 %206, label %.lr.ph71, label %218

.lr.ph71:                                         ; preds = %205
  br label %207

207:                                              ; preds = %.lr.ph71, %215
  %.7 = phi i32 [ 0, %.lr.ph71 ], [ %216, %215 ]
  %208 = phi i32 [ 0, %.lr.ph71 ], [ %216, %215 ]
  %209 = mul nsw i32 8, %208
  %210 = add nsw i32 %.7307, %209
  %211 = mul nsw i32 8, %210
  %212 = add nsw i32 %.8322, %211
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 0, i64 %213
  store i32 1, ptr %214, align 4
  br label %215

215:                                              ; preds = %207
  %216 = add nsw i32 %.7, 1
  %217 = icmp sle i32 %216, 0
  br i1 %217, label %207, label %._crit_edge72, !llvm.loop !37

._crit_edge72:                                    ; preds = %215
  br label %218

218:                                              ; preds = %._crit_edge72, %205
  br label %219

219:                                              ; preds = %218
  %220 = add nsw i32 %.7307, 1
  %221 = icmp sle i32 %220, 0
  br i1 %221, label %205, label %._crit_edge75, !llvm.loop !38

._crit_edge75:                                    ; preds = %219
  br label %222

222:                                              ; preds = %._crit_edge75, %203
  br label %223

223:                                              ; preds = %222
  %224 = add nsw i32 %.8322, 1
  %225 = icmp sle i32 %224, 2
  br i1 %225, label %203, label %._crit_edge78, !llvm.loop !39

._crit_edge78:                                    ; preds = %223
  br label %226

226:                                              ; preds = %._crit_edge78, %201
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  %227 = icmp sle i32 0, 0
  br i1 %227, label %.lr.ph86, label %251

.lr.ph86:                                         ; preds = %226
  br label %228

228:                                              ; preds = %.lr.ph86, %248
  %.9323 = phi i32 [ 0, %.lr.ph86 ], [ %249, %248 ]
  %229 = icmp sle i32 0, 2
  br i1 %229, label %.lr.ph83, label %247

.lr.ph83:                                         ; preds = %228
  br label %230

230:                                              ; preds = %.lr.ph83, %244
  %.8308 = phi i32 [ 0, %.lr.ph83 ], [ %245, %244 ]
  %231 = icmp sle i32 0, 0
  br i1 %231, label %.lr.ph80, label %243

.lr.ph80:                                         ; preds = %230
  br label %232

232:                                              ; preds = %.lr.ph80, %240
  %.8 = phi i32 [ 0, %.lr.ph80 ], [ %241, %240 ]
  %233 = phi i32 [ 0, %.lr.ph80 ], [ %241, %240 ]
  %234 = mul nsw i32 8, %233
  %235 = add nsw i32 %.8308, %234
  %236 = mul nsw i32 8, %235
  %237 = add nsw i32 %.9323, %236
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 0, i64 %238
  store i32 1, ptr %239, align 4
  br label %240

240:                                              ; preds = %232
  %241 = add nsw i32 %.8, 1
  %242 = icmp sle i32 %241, 0
  br i1 %242, label %232, label %._crit_edge81, !llvm.loop !40

._crit_edge81:                                    ; preds = %240
  br label %243

243:                                              ; preds = %._crit_edge81, %230
  br label %244

244:                                              ; preds = %243
  %245 = add nsw i32 %.8308, 1
  %246 = icmp sle i32 %245, 2
  br i1 %246, label %230, label %._crit_edge84, !llvm.loop !41

._crit_edge84:                                    ; preds = %244
  br label %247

247:                                              ; preds = %._crit_edge84, %228
  br label %248

248:                                              ; preds = %247
  %249 = add nsw i32 %.9323, 1
  %250 = icmp sle i32 %249, 0
  br i1 %250, label %228, label %._crit_edge87, !llvm.loop !42

._crit_edge87:                                    ; preds = %248
  br label %251

251:                                              ; preds = %._crit_edge87, %226
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  %252 = icmp sle i32 0, 0
  br i1 %252, label %.lr.ph95, label %276

.lr.ph95:                                         ; preds = %251
  br label %253

253:                                              ; preds = %.lr.ph95, %273
  %.10324 = phi i32 [ 0, %.lr.ph95 ], [ %274, %273 ]
  %254 = icmp sle i32 0, 0
  br i1 %254, label %.lr.ph92, label %272

.lr.ph92:                                         ; preds = %253
  br label %255

255:                                              ; preds = %.lr.ph92, %269
  %.9309 = phi i32 [ 0, %.lr.ph92 ], [ %270, %269 ]
  %256 = icmp sle i32 0, 2
  br i1 %256, label %.lr.ph89, label %268

.lr.ph89:                                         ; preds = %255
  br label %257

257:                                              ; preds = %.lr.ph89, %265
  %.9 = phi i32 [ 0, %.lr.ph89 ], [ %266, %265 ]
  %258 = phi i32 [ 0, %.lr.ph89 ], [ %266, %265 ]
  %259 = mul nsw i32 8, %258
  %260 = add nsw i32 %.9309, %259
  %261 = mul nsw i32 8, %260
  %262 = add nsw i32 %.10324, %261
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 0, i64 %263
  store i32 1, ptr %264, align 4
  br label %265

265:                                              ; preds = %257
  %266 = add nsw i32 %.9, 1
  %267 = icmp sle i32 %266, 2
  br i1 %267, label %257, label %._crit_edge90, !llvm.loop !43

._crit_edge90:                                    ; preds = %265
  br label %268

268:                                              ; preds = %._crit_edge90, %255
  br label %269

269:                                              ; preds = %268
  %270 = add nsw i32 %.9309, 1
  %271 = icmp sle i32 %270, 0
  br i1 %271, label %255, label %._crit_edge93, !llvm.loop !44

._crit_edge93:                                    ; preds = %269
  br label %272

272:                                              ; preds = %._crit_edge93, %253
  br label %273

273:                                              ; preds = %272
  %274 = add nsw i32 %.10324, 1
  %275 = icmp sle i32 %274, 0
  br i1 %275, label %253, label %._crit_edge96, !llvm.loop !45

._crit_edge96:                                    ; preds = %273
  br label %276

276:                                              ; preds = %._crit_edge96, %251
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  %277 = icmp sle i32 0, 1
  br i1 %277, label %.lr.ph104, label %301

.lr.ph104:                                        ; preds = %276
  br label %278

278:                                              ; preds = %.lr.ph104, %298
  %.11325 = phi i32 [ 0, %.lr.ph104 ], [ %299, %298 ]
  %279 = icmp sle i32 0, 1
  br i1 %279, label %.lr.ph101, label %297

.lr.ph101:                                        ; preds = %278
  br label %280

280:                                              ; preds = %.lr.ph101, %294
  %.10310 = phi i32 [ 0, %.lr.ph101 ], [ %295, %294 ]
  %281 = icmp sle i32 0, 0
  br i1 %281, label %.lr.ph98, label %293

.lr.ph98:                                         ; preds = %280
  br label %282

282:                                              ; preds = %.lr.ph98, %290
  %.10 = phi i32 [ 0, %.lr.ph98 ], [ %291, %290 ]
  %283 = phi i32 [ 0, %.lr.ph98 ], [ %291, %290 ]
  %284 = mul nsw i32 8, %283
  %285 = add nsw i32 %.10310, %284
  %286 = mul nsw i32 8, %285
  %287 = add nsw i32 %.11325, %286
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 0, i64 %288
  store i32 1, ptr %289, align 4
  br label %290

290:                                              ; preds = %282
  %291 = add nsw i32 %.10, 1
  %292 = icmp sle i32 %291, 0
  br i1 %292, label %282, label %._crit_edge99, !llvm.loop !46

._crit_edge99:                                    ; preds = %290
  br label %293

293:                                              ; preds = %._crit_edge99, %280
  br label %294

294:                                              ; preds = %293
  %295 = add nsw i32 %.10310, 1
  %296 = icmp sle i32 %295, 1
  br i1 %296, label %280, label %._crit_edge102, !llvm.loop !47

._crit_edge102:                                   ; preds = %294
  br label %297

297:                                              ; preds = %._crit_edge102, %278
  br label %298

298:                                              ; preds = %297
  %299 = add nsw i32 %.11325, 1
  %300 = icmp sle i32 %299, 1
  br i1 %300, label %278, label %._crit_edge105, !llvm.loop !48

._crit_edge105:                                   ; preds = %298
  br label %301

301:                                              ; preds = %._crit_edge105, %276
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  %302 = icmp sle i32 0, 1
  br i1 %302, label %.lr.ph113, label %326

.lr.ph113:                                        ; preds = %301
  br label %303

303:                                              ; preds = %.lr.ph113, %323
  %.12326 = phi i32 [ 0, %.lr.ph113 ], [ %324, %323 ]
  %304 = icmp sle i32 0, 0
  br i1 %304, label %.lr.ph110, label %322

.lr.ph110:                                        ; preds = %303
  br label %305

305:                                              ; preds = %.lr.ph110, %319
  %.11311 = phi i32 [ 0, %.lr.ph110 ], [ %320, %319 ]
  %306 = icmp sle i32 0, 1
  br i1 %306, label %.lr.ph107, label %318

.lr.ph107:                                        ; preds = %305
  br label %307

307:                                              ; preds = %.lr.ph107, %315
  %.11 = phi i32 [ 0, %.lr.ph107 ], [ %316, %315 ]
  %308 = phi i32 [ 0, %.lr.ph107 ], [ %316, %315 ]
  %309 = mul nsw i32 8, %308
  %310 = add nsw i32 %.11311, %309
  %311 = mul nsw i32 8, %310
  %312 = add nsw i32 %.12326, %311
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 0, i64 %313
  store i32 1, ptr %314, align 4
  br label %315

315:                                              ; preds = %307
  %316 = add nsw i32 %.11, 1
  %317 = icmp sle i32 %316, 1
  br i1 %317, label %307, label %._crit_edge108, !llvm.loop !49

._crit_edge108:                                   ; preds = %315
  br label %318

318:                                              ; preds = %._crit_edge108, %305
  br label %319

319:                                              ; preds = %318
  %320 = add nsw i32 %.11311, 1
  %321 = icmp sle i32 %320, 0
  br i1 %321, label %305, label %._crit_edge111, !llvm.loop !50

._crit_edge111:                                   ; preds = %319
  br label %322

322:                                              ; preds = %._crit_edge111, %303
  br label %323

323:                                              ; preds = %322
  %324 = add nsw i32 %.12326, 1
  %325 = icmp sle i32 %324, 1
  br i1 %325, label %303, label %._crit_edge114, !llvm.loop !51

._crit_edge114:                                   ; preds = %323
  br label %326

326:                                              ; preds = %._crit_edge114, %301
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  %327 = icmp sle i32 0, 0
  br i1 %327, label %.lr.ph122, label %351

.lr.ph122:                                        ; preds = %326
  br label %328

328:                                              ; preds = %.lr.ph122, %348
  %.13327 = phi i32 [ 0, %.lr.ph122 ], [ %349, %348 ]
  %329 = icmp sle i32 0, 1
  br i1 %329, label %.lr.ph119, label %347

.lr.ph119:                                        ; preds = %328
  br label %330

330:                                              ; preds = %.lr.ph119, %344
  %.12312 = phi i32 [ 0, %.lr.ph119 ], [ %345, %344 ]
  %331 = icmp sle i32 0, 1
  br i1 %331, label %.lr.ph116, label %343

.lr.ph116:                                        ; preds = %330
  br label %332

332:                                              ; preds = %.lr.ph116, %340
  %.12 = phi i32 [ 0, %.lr.ph116 ], [ %341, %340 ]
  %333 = phi i32 [ 0, %.lr.ph116 ], [ %341, %340 ]
  %334 = mul nsw i32 8, %333
  %335 = add nsw i32 %.12312, %334
  %336 = mul nsw i32 8, %335
  %337 = add nsw i32 %.13327, %336
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 0, i64 %338
  store i32 1, ptr %339, align 4
  br label %340

340:                                              ; preds = %332
  %341 = add nsw i32 %.12, 1
  %342 = icmp sle i32 %341, 1
  br i1 %342, label %332, label %._crit_edge117, !llvm.loop !52

._crit_edge117:                                   ; preds = %340
  br label %343

343:                                              ; preds = %._crit_edge117, %330
  br label %344

344:                                              ; preds = %343
  %345 = add nsw i32 %.12312, 1
  %346 = icmp sle i32 %345, 1
  br i1 %346, label %330, label %._crit_edge120, !llvm.loop !53

._crit_edge120:                                   ; preds = %344
  br label %347

347:                                              ; preds = %._crit_edge120, %328
  br label %348

348:                                              ; preds = %347
  %349 = add nsw i32 %.13327, 1
  %350 = icmp sle i32 %349, 0
  br i1 %350, label %328, label %._crit_edge123, !llvm.loop !54

._crit_edge123:                                   ; preds = %348
  br label %351

351:                                              ; preds = %._crit_edge123, %326
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  %352 = icmp sle i32 0, 1
  br i1 %352, label %.lr.ph131, label %376

.lr.ph131:                                        ; preds = %351
  br label %353

353:                                              ; preds = %.lr.ph131, %373
  %.14 = phi i32 [ 0, %.lr.ph131 ], [ %374, %373 ]
  %354 = icmp sle i32 0, 1
  br i1 %354, label %.lr.ph128, label %372

.lr.ph128:                                        ; preds = %353
  br label %355

355:                                              ; preds = %.lr.ph128, %369
  %.13313 = phi i32 [ 0, %.lr.ph128 ], [ %370, %369 ]
  %356 = icmp sle i32 0, 1
  br i1 %356, label %.lr.ph125, label %368

.lr.ph125:                                        ; preds = %355
  br label %357

357:                                              ; preds = %.lr.ph125, %365
  %.13 = phi i32 [ 0, %.lr.ph125 ], [ %366, %365 ]
  %358 = phi i32 [ 0, %.lr.ph125 ], [ %366, %365 ]
  %359 = mul nsw i32 8, %358
  %360 = add nsw i32 %.13313, %359
  %361 = mul nsw i32 8, %360
  %362 = add nsw i32 %.14, %361
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 0, i64 %363
  store i32 1, ptr %364, align 4
  br label %365

365:                                              ; preds = %357
  %366 = add nsw i32 %.13, 1
  %367 = icmp sle i32 %366, 1
  br i1 %367, label %357, label %._crit_edge126, !llvm.loop !55

._crit_edge126:                                   ; preds = %365
  br label %368

368:                                              ; preds = %._crit_edge126, %355
  br label %369

369:                                              ; preds = %368
  %370 = add nsw i32 %.13313, 1
  %371 = icmp sle i32 %370, 1
  br i1 %371, label %355, label %._crit_edge129, !llvm.loop !56

._crit_edge129:                                   ; preds = %369
  br label %372

372:                                              ; preds = %._crit_edge129, %353
  br label %373

373:                                              ; preds = %372
  %374 = add nsw i32 %.14, 1
  %375 = icmp sle i32 %374, 1
  br i1 %375, label %353, label %._crit_edge132, !llvm.loop !57

._crit_edge132:                                   ; preds = %373
  br label %376

376:                                              ; preds = %._crit_edge132, %351
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 0, ptr @kount, align 4
  %377 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %378 = icmp ne i32 %377, 0
  br i1 %378, label %379, label %381

379:                                              ; preds = %376
  %380 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %380, ptr @n, align 4
  br label %383

381:                                              ; preds = %376
  %382 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  br label %383

383:                                              ; preds = %381, %379
  %384 = load i32, ptr @n, align 4
  %385 = call i32 @Trial(i32 noundef %384)
  %386 = icmp ne i32 %385, 0
  br i1 %386, label %389, label %387

387:                                              ; preds = %383
  %388 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  br label %395

389:                                              ; preds = %383
  %390 = load i32, ptr @kount, align 4
  %391 = icmp ne i32 %390, 2005
  br i1 %391, label %392, label %394

392:                                              ; preds = %389
  %393 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %394

394:                                              ; preds = %392, %389
  br label %395

395:                                              ; preds = %394, %387
  %396 = load i32, ptr @n, align 4
  %397 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %396)
  %398 = load i32, ptr @kount, align 4
  %399 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %398)
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = icmp slt i32 0, 100
  br i1 %1, label %.lr.ph, label %6

.lr.ph:                                           ; preds = %0
  br label %2

2:                                                ; preds = %.lr.ph, %3
  %.0 = phi i32 [ 0, %.lr.ph ], [ %4, %3 ]
  call void @Puzzle()
  br label %3

3:                                                ; preds = %2
  %4 = add nsw i32 %.0, 1
  %5 = icmp slt i32 %4, 100
  br i1 %5, label %2, label %._crit_edge, !llvm.loop !58

._crit_edge:                                      ; preds = %3
  br label %6

6:                                                ; preds = %._crit_edge, %0
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
