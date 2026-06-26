; ModuleID = 'results\paper_v4\Stanford_Puzzle\Stanford_Puzzle.ll'
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
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds [13 x i32], ptr @piecemax, i64 0, i64 %3
  %5 = load i32, ptr %4, align 4
  %6 = icmp sle i32 0, %5
  br i1 %6, label %.lr.ph, label %29

.lr.ph:                                           ; preds = %2
  br label %7

7:                                                ; preds = %.lr.ph, %23
  %.0 = phi i32 [ 0, %.lr.ph ], [ %24, %23 ]
  %8 = sext i32 %0 to i64
  %9 = getelementptr inbounds [13 x [512 x i32]], ptr @p, i64 0, i64 %8
  %10 = sext i32 %.0 to i64
  %11 = getelementptr inbounds [512 x i32], ptr %9, i64 0, i64 %10
  %12 = load i32, ptr %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %7
  %15 = add nsw i32 %1, %.0
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %16
  %18 = load i32, ptr %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %30

21:                                               ; preds = %14
  br label %22

22:                                               ; preds = %21, %7
  br label %23

23:                                               ; preds = %22
  %24 = add nsw i32 %.0, 1
  %25 = sext i32 %0 to i64
  %26 = getelementptr inbounds [13 x i32], ptr @piecemax, i64 0, i64 %25
  %27 = load i32, ptr %26, align 4
  %28 = icmp sle i32 %24, %27
  br i1 %28, label %7, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %23
  br label %29

29:                                               ; preds = %._crit_edge, %2
  br label %30

30:                                               ; preds = %29, %20
  %.010 = phi i32 [ 0, %20 ], [ 1, %29 ]
  ret i32 %.010
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Place(i32 noundef %0, i32 noundef %1) #0 {
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds [13 x i32], ptr @piecemax, i64 0, i64 %3
  %5 = load i32, ptr %4, align 4
  %6 = icmp sle i32 0, %5
  br i1 %6, label %.lr.ph, label %25

.lr.ph:                                           ; preds = %2
  br label %7

7:                                                ; preds = %.lr.ph, %19
  %.0 = phi i32 [ 0, %.lr.ph ], [ %20, %19 ]
  %8 = sext i32 %0 to i64
  %9 = getelementptr inbounds [13 x [512 x i32]], ptr @p, i64 0, i64 %8
  %10 = sext i32 %.0 to i64
  %11 = getelementptr inbounds [512 x i32], ptr %9, i64 0, i64 %10
  %12 = load i32, ptr %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %7
  %15 = add nsw i32 %1, %.0
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %16
  store i32 1, ptr %17, align 4
  br label %18

18:                                               ; preds = %14, %7
  br label %19

19:                                               ; preds = %18
  %20 = add nsw i32 %.0, 1
  %21 = sext i32 %0 to i64
  %22 = getelementptr inbounds [13 x i32], ptr @piecemax, i64 0, i64 %21
  %23 = load i32, ptr %22, align 4
  %24 = icmp sle i32 %20, %23
  br i1 %24, label %7, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %19
  br label %25

25:                                               ; preds = %._crit_edge, %2
  %26 = sext i32 %0 to i64
  %27 = getelementptr inbounds [13 x i32], ptr @class, i64 0, i64 %26
  %28 = load i32, ptr %27, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [4 x i32], ptr @piececount, i64 0, i64 %29
  %31 = load i32, ptr %30, align 4
  %32 = sub nsw i32 %31, 1
  %33 = sext i32 %0 to i64
  %34 = getelementptr inbounds [13 x i32], ptr @class, i64 0, i64 %33
  %35 = load i32, ptr %34, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [4 x i32], ptr @piececount, i64 0, i64 %36
  store i32 %32, ptr %37, align 4
  %38 = icmp sle i32 %1, 511
  br i1 %38, label %.lr.ph2, label %49

.lr.ph2:                                          ; preds = %25
  br label %39

39:                                               ; preds = %.lr.ph2, %46
  %.1 = phi i32 [ %1, %.lr.ph2 ], [ %47, %46 ]
  %40 = sext i32 %.1 to i64
  %41 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %40
  %42 = load i32, ptr %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %39
  br label %50

45:                                               ; preds = %39
  br label %46

46:                                               ; preds = %45
  %47 = add nsw i32 %.1, 1
  %48 = icmp sle i32 %47, 511
  br i1 %48, label %39, label %._crit_edge3, !llvm.loop !10

._crit_edge3:                                     ; preds = %46
  br label %49

49:                                               ; preds = %._crit_edge3, %25
  br label %50

50:                                               ; preds = %49, %44
  %.021 = phi i32 [ 0, %49 ], [ %.1, %44 ]
  ret i32 %.021
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Remove(i32 noundef %0, i32 noundef %1) #0 {
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds [13 x i32], ptr @piecemax, i64 0, i64 %3
  %5 = load i32, ptr %4, align 4
  %6 = icmp sle i32 0, %5
  br i1 %6, label %.lr.ph, label %25

.lr.ph:                                           ; preds = %2
  br label %7

7:                                                ; preds = %.lr.ph, %19
  %.0 = phi i32 [ 0, %.lr.ph ], [ %20, %19 ]
  %8 = sext i32 %0 to i64
  %9 = getelementptr inbounds [13 x [512 x i32]], ptr @p, i64 0, i64 %8
  %10 = sext i32 %.0 to i64
  %11 = getelementptr inbounds [512 x i32], ptr %9, i64 0, i64 %10
  %12 = load i32, ptr %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %7
  %15 = add nsw i32 %1, %.0
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %16
  store i32 0, ptr %17, align 4
  br label %18

18:                                               ; preds = %14, %7
  br label %19

19:                                               ; preds = %18
  %20 = add nsw i32 %.0, 1
  %21 = sext i32 %0 to i64
  %22 = getelementptr inbounds [13 x i32], ptr @piecemax, i64 0, i64 %21
  %23 = load i32, ptr %22, align 4
  %24 = icmp sle i32 %20, %23
  br i1 %24, label %7, label %._crit_edge, !llvm.loop !11

._crit_edge:                                      ; preds = %19
  br label %25

25:                                               ; preds = %._crit_edge, %2
  %26 = sext i32 %0 to i64
  %27 = getelementptr inbounds [13 x i32], ptr @class, i64 0, i64 %26
  %28 = load i32, ptr %27, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [4 x i32], ptr @piececount, i64 0, i64 %29
  %31 = load i32, ptr %30, align 4
  %32 = add nsw i32 %31, 1
  %33 = sext i32 %0 to i64
  %34 = getelementptr inbounds [13 x i32], ptr @class, i64 0, i64 %33
  %35 = load i32, ptr %34, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [4 x i32], ptr @piececount, i64 0, i64 %36
  store i32 %32, ptr %37, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Trial(i32 noundef %0) #0 {
  %2 = load i32, ptr @kount, align 4
  %3 = add nsw i32 %2, 1
  store i32 %3, ptr @kount, align 4
  %4 = icmp sle i32 0, 12
  br i1 %4, label %.lr.ph, label %30

.lr.ph:                                           ; preds = %1
  br label %5

5:                                                ; preds = %.lr.ph, %27
  %.013 = phi i32 [ 0, %.lr.ph ], [ %28, %27 ]
  %6 = sext i32 %.013 to i64
  %7 = getelementptr inbounds [13 x i32], ptr @class, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [4 x i32], ptr @piececount, i64 0, i64 %9
  %11 = load i32, ptr %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %5
  %14 = call i32 @Fit(i32 noundef %.013, i32 noundef %0)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %13
  %17 = call i32 @Place(i32 noundef %.013, i32 noundef %0)
  %18 = call i32 @Trial(i32 noundef %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = icmp eq i32 %17, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %20, %16
  br label %31

23:                                               ; preds = %20
  call void @Remove(i32 noundef %.013, i32 noundef %0)
  br label %24

24:                                               ; preds = %23
  br label %25

25:                                               ; preds = %24, %13
  br label %26

26:                                               ; preds = %25, %5
  br label %27

27:                                               ; preds = %26
  %28 = add nsw i32 %.013, 1
  %29 = icmp sle i32 %28, 12
  br i1 %29, label %5, label %._crit_edge, !llvm.loop !12

._crit_edge:                                      ; preds = %27
  br label %30

30:                                               ; preds = %._crit_edge, %1
  br label %31

31:                                               ; preds = %30, %22
  %.0 = phi i32 [ 1, %22 ], [ 0, %30 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Puzzle() #0 {
  %1 = icmp sle i32 0, 511
  br i1 %1, label %.lr.ph, label %8

.lr.ph:                                           ; preds = %0
  br label %2

2:                                                ; preds = %.lr.ph, %5
  %.0 = phi i32 [ 0, %.lr.ph ], [ %6, %5 ]
  %3 = sext i32 %.0 to i64
  %4 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %3
  store i32 1, ptr %4, align 4
  br label %5

5:                                                ; preds = %2
  %6 = add nsw i32 %.0, 1
  %7 = icmp sle i32 %6, 511
  br i1 %7, label %2, label %._crit_edge, !llvm.loop !13

._crit_edge:                                      ; preds = %5
  br label %8

8:                                                ; preds = %._crit_edge, %0
  %9 = icmp sle i32 1, 5
  br i1 %9, label %.lr.ph8, label %32

.lr.ph8:                                          ; preds = %8
  br label %10

10:                                               ; preds = %.lr.ph8, %29
  %.0330 = phi i32 [ 1, %.lr.ph8 ], [ %30, %29 ]
  %11 = icmp sle i32 1, 5
  br i1 %11, label %.lr.ph5, label %28

.lr.ph5:                                          ; preds = %10
  br label %12

12:                                               ; preds = %.lr.ph5, %25
  %.0316 = phi i32 [ 1, %.lr.ph5 ], [ %26, %25 ]
  %13 = icmp sle i32 1, 5
  br i1 %13, label %.lr.ph2, label %24

.lr.ph2:                                          ; preds = %12
  br label %14

14:                                               ; preds = %.lr.ph2, %21
  %.0314 = phi i32 [ 1, %.lr.ph2 ], [ %22, %21 ]
  %15 = mul nsw i32 8, %.0314
  %16 = add nsw i32 %.0316, %15
  %17 = mul nsw i32 8, %16
  %18 = add nsw i32 %.0330, %17
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %19
  store i32 0, ptr %20, align 4
  br label %21

21:                                               ; preds = %14
  %22 = add nsw i32 %.0314, 1
  %23 = icmp sle i32 %22, 5
  br i1 %23, label %14, label %._crit_edge3, !llvm.loop !14

._crit_edge3:                                     ; preds = %21
  br label %24

24:                                               ; preds = %._crit_edge3, %12
  br label %25

25:                                               ; preds = %24
  %26 = add nsw i32 %.0316, 1
  %27 = icmp sle i32 %26, 5
  br i1 %27, label %12, label %._crit_edge6, !llvm.loop !15

._crit_edge6:                                     ; preds = %25
  br label %28

28:                                               ; preds = %._crit_edge6, %10
  br label %29

29:                                               ; preds = %28
  %30 = add nsw i32 %.0330, 1
  %31 = icmp sle i32 %30, 5
  br i1 %31, label %10, label %._crit_edge9, !llvm.loop !16

._crit_edge9:                                     ; preds = %29
  br label %32

32:                                               ; preds = %._crit_edge9, %8
  %33 = icmp sle i32 0, 12
  br i1 %33, label %.lr.ph14, label %48

.lr.ph14:                                         ; preds = %32
  br label %34

34:                                               ; preds = %.lr.ph14, %45
  %.1331 = phi i32 [ 0, %.lr.ph14 ], [ %46, %45 ]
  %35 = icmp sle i32 0, 511
  br i1 %35, label %.lr.ph11, label %44

.lr.ph11:                                         ; preds = %34
  br label %36

36:                                               ; preds = %.lr.ph11, %41
  %.1 = phi i32 [ 0, %.lr.ph11 ], [ %42, %41 ]
  %37 = sext i32 %.1331 to i64
  %38 = getelementptr inbounds [13 x [512 x i32]], ptr @p, i64 0, i64 %37
  %39 = sext i32 %.1 to i64
  %40 = getelementptr inbounds [512 x i32], ptr %38, i64 0, i64 %39
  store i32 0, ptr %40, align 4
  br label %41

41:                                               ; preds = %36
  %42 = add nsw i32 %.1, 1
  %43 = icmp sle i32 %42, 511
  br i1 %43, label %36, label %._crit_edge12, !llvm.loop !17

._crit_edge12:                                    ; preds = %41
  br label %44

44:                                               ; preds = %._crit_edge12, %34
  br label %45

45:                                               ; preds = %44
  %46 = add nsw i32 %.1331, 1
  %47 = icmp sle i32 %46, 12
  br i1 %47, label %34, label %._crit_edge15, !llvm.loop !18

._crit_edge15:                                    ; preds = %45
  br label %48

48:                                               ; preds = %._crit_edge15, %32
  %49 = icmp sle i32 0, 3
  br i1 %49, label %.lr.ph23, label %72

.lr.ph23:                                         ; preds = %48
  br label %50

50:                                               ; preds = %.lr.ph23, %69
  %.2332 = phi i32 [ 0, %.lr.ph23 ], [ %70, %69 ]
  %51 = icmp sle i32 0, 1
  br i1 %51, label %.lr.ph20, label %68

.lr.ph20:                                         ; preds = %50
  br label %52

52:                                               ; preds = %.lr.ph20, %65
  %.1317 = phi i32 [ 0, %.lr.ph20 ], [ %66, %65 ]
  %53 = icmp sle i32 0, 0
  br i1 %53, label %.lr.ph17, label %64

.lr.ph17:                                         ; preds = %52
  br label %54

54:                                               ; preds = %.lr.ph17, %61
  %.1315 = phi i32 [ 0, %.lr.ph17 ], [ %62, %61 ]
  %55 = mul nsw i32 8, %.1315
  %56 = add nsw i32 %.1317, %55
  %57 = mul nsw i32 8, %56
  %58 = add nsw i32 %.2332, %57
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [512 x i32], ptr @p, i64 0, i64 %59
  store i32 1, ptr %60, align 4
  br label %61

61:                                               ; preds = %54
  %62 = add nsw i32 %.1315, 1
  %63 = icmp sle i32 %62, 0
  br i1 %63, label %54, label %._crit_edge18, !llvm.loop !19

._crit_edge18:                                    ; preds = %61
  br label %64

64:                                               ; preds = %._crit_edge18, %52
  br label %65

65:                                               ; preds = %64
  %66 = add nsw i32 %.1317, 1
  %67 = icmp sle i32 %66, 1
  br i1 %67, label %52, label %._crit_edge21, !llvm.loop !20

._crit_edge21:                                    ; preds = %65
  br label %68

68:                                               ; preds = %._crit_edge21, %50
  br label %69

69:                                               ; preds = %68
  %70 = add nsw i32 %.2332, 1
  %71 = icmp sle i32 %70, 3
  br i1 %71, label %50, label %._crit_edge24, !llvm.loop !21

._crit_edge24:                                    ; preds = %69
  br label %72

72:                                               ; preds = %._crit_edge24, %48
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  %73 = icmp sle i32 0, 1
  br i1 %73, label %.lr.ph32, label %96

.lr.ph32:                                         ; preds = %72
  br label %74

74:                                               ; preds = %.lr.ph32, %93
  %.3333 = phi i32 [ 0, %.lr.ph32 ], [ %94, %93 ]
  %75 = icmp sle i32 0, 0
  br i1 %75, label %.lr.ph29, label %92

.lr.ph29:                                         ; preds = %74
  br label %76

76:                                               ; preds = %.lr.ph29, %89
  %.2318 = phi i32 [ 0, %.lr.ph29 ], [ %90, %89 ]
  %77 = icmp sle i32 0, 3
  br i1 %77, label %.lr.ph26, label %88

.lr.ph26:                                         ; preds = %76
  br label %78

78:                                               ; preds = %.lr.ph26, %85
  %.2 = phi i32 [ 0, %.lr.ph26 ], [ %86, %85 ]
  %79 = mul nsw i32 8, %.2
  %80 = add nsw i32 %.2318, %79
  %81 = mul nsw i32 8, %80
  %82 = add nsw i32 %.3333, %81
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 0, i64 %83
  store i32 1, ptr %84, align 4
  br label %85

85:                                               ; preds = %78
  %86 = add nsw i32 %.2, 1
  %87 = icmp sle i32 %86, 3
  br i1 %87, label %78, label %._crit_edge27, !llvm.loop !22

._crit_edge27:                                    ; preds = %85
  br label %88

88:                                               ; preds = %._crit_edge27, %76
  br label %89

89:                                               ; preds = %88
  %90 = add nsw i32 %.2318, 1
  %91 = icmp sle i32 %90, 0
  br i1 %91, label %76, label %._crit_edge30, !llvm.loop !23

._crit_edge30:                                    ; preds = %89
  br label %92

92:                                               ; preds = %._crit_edge30, %74
  br label %93

93:                                               ; preds = %92
  %94 = add nsw i32 %.3333, 1
  %95 = icmp sle i32 %94, 1
  br i1 %95, label %74, label %._crit_edge33, !llvm.loop !24

._crit_edge33:                                    ; preds = %93
  br label %96

96:                                               ; preds = %._crit_edge33, %72
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  %97 = icmp sle i32 0, 0
  br i1 %97, label %.lr.ph41, label %120

.lr.ph41:                                         ; preds = %96
  br label %98

98:                                               ; preds = %.lr.ph41, %117
  %.4334 = phi i32 [ 0, %.lr.ph41 ], [ %118, %117 ]
  %99 = icmp sle i32 0, 3
  br i1 %99, label %.lr.ph38, label %116

.lr.ph38:                                         ; preds = %98
  br label %100

100:                                              ; preds = %.lr.ph38, %113
  %.3319 = phi i32 [ 0, %.lr.ph38 ], [ %114, %113 ]
  %101 = icmp sle i32 0, 1
  br i1 %101, label %.lr.ph35, label %112

.lr.ph35:                                         ; preds = %100
  br label %102

102:                                              ; preds = %.lr.ph35, %109
  %.3 = phi i32 [ 0, %.lr.ph35 ], [ %110, %109 ]
  %103 = mul nsw i32 8, %.3
  %104 = add nsw i32 %.3319, %103
  %105 = mul nsw i32 8, %104
  %106 = add nsw i32 %.4334, %105
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 0, i64 %107
  store i32 1, ptr %108, align 4
  br label %109

109:                                              ; preds = %102
  %110 = add nsw i32 %.3, 1
  %111 = icmp sle i32 %110, 1
  br i1 %111, label %102, label %._crit_edge36, !llvm.loop !25

._crit_edge36:                                    ; preds = %109
  br label %112

112:                                              ; preds = %._crit_edge36, %100
  br label %113

113:                                              ; preds = %112
  %114 = add nsw i32 %.3319, 1
  %115 = icmp sle i32 %114, 3
  br i1 %115, label %100, label %._crit_edge39, !llvm.loop !26

._crit_edge39:                                    ; preds = %113
  br label %116

116:                                              ; preds = %._crit_edge39, %98
  br label %117

117:                                              ; preds = %116
  %118 = add nsw i32 %.4334, 1
  %119 = icmp sle i32 %118, 0
  br i1 %119, label %98, label %._crit_edge42, !llvm.loop !27

._crit_edge42:                                    ; preds = %117
  br label %120

120:                                              ; preds = %._crit_edge42, %96
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  %121 = icmp sle i32 0, 1
  br i1 %121, label %.lr.ph50, label %144

.lr.ph50:                                         ; preds = %120
  br label %122

122:                                              ; preds = %.lr.ph50, %141
  %.5335 = phi i32 [ 0, %.lr.ph50 ], [ %142, %141 ]
  %123 = icmp sle i32 0, 3
  br i1 %123, label %.lr.ph47, label %140

.lr.ph47:                                         ; preds = %122
  br label %124

124:                                              ; preds = %.lr.ph47, %137
  %.4320 = phi i32 [ 0, %.lr.ph47 ], [ %138, %137 ]
  %125 = icmp sle i32 0, 0
  br i1 %125, label %.lr.ph44, label %136

.lr.ph44:                                         ; preds = %124
  br label %126

126:                                              ; preds = %.lr.ph44, %133
  %.4 = phi i32 [ 0, %.lr.ph44 ], [ %134, %133 ]
  %127 = mul nsw i32 8, %.4
  %128 = add nsw i32 %.4320, %127
  %129 = mul nsw i32 8, %128
  %130 = add nsw i32 %.5335, %129
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 0, i64 %131
  store i32 1, ptr %132, align 4
  br label %133

133:                                              ; preds = %126
  %134 = add nsw i32 %.4, 1
  %135 = icmp sle i32 %134, 0
  br i1 %135, label %126, label %._crit_edge45, !llvm.loop !28

._crit_edge45:                                    ; preds = %133
  br label %136

136:                                              ; preds = %._crit_edge45, %124
  br label %137

137:                                              ; preds = %136
  %138 = add nsw i32 %.4320, 1
  %139 = icmp sle i32 %138, 3
  br i1 %139, label %124, label %._crit_edge48, !llvm.loop !29

._crit_edge48:                                    ; preds = %137
  br label %140

140:                                              ; preds = %._crit_edge48, %122
  br label %141

141:                                              ; preds = %140
  %142 = add nsw i32 %.5335, 1
  %143 = icmp sle i32 %142, 1
  br i1 %143, label %122, label %._crit_edge51, !llvm.loop !30

._crit_edge51:                                    ; preds = %141
  br label %144

144:                                              ; preds = %._crit_edge51, %120
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  %145 = icmp sle i32 0, 3
  br i1 %145, label %.lr.ph59, label %168

.lr.ph59:                                         ; preds = %144
  br label %146

146:                                              ; preds = %.lr.ph59, %165
  %.6336 = phi i32 [ 0, %.lr.ph59 ], [ %166, %165 ]
  %147 = icmp sle i32 0, 0
  br i1 %147, label %.lr.ph56, label %164

.lr.ph56:                                         ; preds = %146
  br label %148

148:                                              ; preds = %.lr.ph56, %161
  %.5321 = phi i32 [ 0, %.lr.ph56 ], [ %162, %161 ]
  %149 = icmp sle i32 0, 1
  br i1 %149, label %.lr.ph53, label %160

.lr.ph53:                                         ; preds = %148
  br label %150

150:                                              ; preds = %.lr.ph53, %157
  %.5 = phi i32 [ 0, %.lr.ph53 ], [ %158, %157 ]
  %151 = mul nsw i32 8, %.5
  %152 = add nsw i32 %.5321, %151
  %153 = mul nsw i32 8, %152
  %154 = add nsw i32 %.6336, %153
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 0, i64 %155
  store i32 1, ptr %156, align 4
  br label %157

157:                                              ; preds = %150
  %158 = add nsw i32 %.5, 1
  %159 = icmp sle i32 %158, 1
  br i1 %159, label %150, label %._crit_edge54, !llvm.loop !31

._crit_edge54:                                    ; preds = %157
  br label %160

160:                                              ; preds = %._crit_edge54, %148
  br label %161

161:                                              ; preds = %160
  %162 = add nsw i32 %.5321, 1
  %163 = icmp sle i32 %162, 0
  br i1 %163, label %148, label %._crit_edge57, !llvm.loop !32

._crit_edge57:                                    ; preds = %161
  br label %164

164:                                              ; preds = %._crit_edge57, %146
  br label %165

165:                                              ; preds = %164
  %166 = add nsw i32 %.6336, 1
  %167 = icmp sle i32 %166, 3
  br i1 %167, label %146, label %._crit_edge60, !llvm.loop !33

._crit_edge60:                                    ; preds = %165
  br label %168

168:                                              ; preds = %._crit_edge60, %144
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  %169 = icmp sle i32 0, 0
  br i1 %169, label %.lr.ph68, label %192

.lr.ph68:                                         ; preds = %168
  br label %170

170:                                              ; preds = %.lr.ph68, %189
  %.7337 = phi i32 [ 0, %.lr.ph68 ], [ %190, %189 ]
  %171 = icmp sle i32 0, 1
  br i1 %171, label %.lr.ph65, label %188

.lr.ph65:                                         ; preds = %170
  br label %172

172:                                              ; preds = %.lr.ph65, %185
  %.6322 = phi i32 [ 0, %.lr.ph65 ], [ %186, %185 ]
  %173 = icmp sle i32 0, 3
  br i1 %173, label %.lr.ph62, label %184

.lr.ph62:                                         ; preds = %172
  br label %174

174:                                              ; preds = %.lr.ph62, %181
  %.6 = phi i32 [ 0, %.lr.ph62 ], [ %182, %181 ]
  %175 = mul nsw i32 8, %.6
  %176 = add nsw i32 %.6322, %175
  %177 = mul nsw i32 8, %176
  %178 = add nsw i32 %.7337, %177
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 0, i64 %179
  store i32 1, ptr %180, align 4
  br label %181

181:                                              ; preds = %174
  %182 = add nsw i32 %.6, 1
  %183 = icmp sle i32 %182, 3
  br i1 %183, label %174, label %._crit_edge63, !llvm.loop !34

._crit_edge63:                                    ; preds = %181
  br label %184

184:                                              ; preds = %._crit_edge63, %172
  br label %185

185:                                              ; preds = %184
  %186 = add nsw i32 %.6322, 1
  %187 = icmp sle i32 %186, 1
  br i1 %187, label %172, label %._crit_edge66, !llvm.loop !35

._crit_edge66:                                    ; preds = %185
  br label %188

188:                                              ; preds = %._crit_edge66, %170
  br label %189

189:                                              ; preds = %188
  %190 = add nsw i32 %.7337, 1
  %191 = icmp sle i32 %190, 0
  br i1 %191, label %170, label %._crit_edge69, !llvm.loop !36

._crit_edge69:                                    ; preds = %189
  br label %192

192:                                              ; preds = %._crit_edge69, %168
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  %193 = icmp sle i32 0, 2
  br i1 %193, label %.lr.ph77, label %216

.lr.ph77:                                         ; preds = %192
  br label %194

194:                                              ; preds = %.lr.ph77, %213
  %.8338 = phi i32 [ 0, %.lr.ph77 ], [ %214, %213 ]
  %195 = icmp sle i32 0, 0
  br i1 %195, label %.lr.ph74, label %212

.lr.ph74:                                         ; preds = %194
  br label %196

196:                                              ; preds = %.lr.ph74, %209
  %.7323 = phi i32 [ 0, %.lr.ph74 ], [ %210, %209 ]
  %197 = icmp sle i32 0, 0
  br i1 %197, label %.lr.ph71, label %208

.lr.ph71:                                         ; preds = %196
  br label %198

198:                                              ; preds = %.lr.ph71, %205
  %.7 = phi i32 [ 0, %.lr.ph71 ], [ %206, %205 ]
  %199 = mul nsw i32 8, %.7
  %200 = add nsw i32 %.7323, %199
  %201 = mul nsw i32 8, %200
  %202 = add nsw i32 %.8338, %201
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 0, i64 %203
  store i32 1, ptr %204, align 4
  br label %205

205:                                              ; preds = %198
  %206 = add nsw i32 %.7, 1
  %207 = icmp sle i32 %206, 0
  br i1 %207, label %198, label %._crit_edge72, !llvm.loop !37

._crit_edge72:                                    ; preds = %205
  br label %208

208:                                              ; preds = %._crit_edge72, %196
  br label %209

209:                                              ; preds = %208
  %210 = add nsw i32 %.7323, 1
  %211 = icmp sle i32 %210, 0
  br i1 %211, label %196, label %._crit_edge75, !llvm.loop !38

._crit_edge75:                                    ; preds = %209
  br label %212

212:                                              ; preds = %._crit_edge75, %194
  br label %213

213:                                              ; preds = %212
  %214 = add nsw i32 %.8338, 1
  %215 = icmp sle i32 %214, 2
  br i1 %215, label %194, label %._crit_edge78, !llvm.loop !39

._crit_edge78:                                    ; preds = %213
  br label %216

216:                                              ; preds = %._crit_edge78, %192
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  %217 = icmp sle i32 0, 0
  br i1 %217, label %.lr.ph86, label %240

.lr.ph86:                                         ; preds = %216
  br label %218

218:                                              ; preds = %.lr.ph86, %237
  %.9339 = phi i32 [ 0, %.lr.ph86 ], [ %238, %237 ]
  %219 = icmp sle i32 0, 2
  br i1 %219, label %.lr.ph83, label %236

.lr.ph83:                                         ; preds = %218
  br label %220

220:                                              ; preds = %.lr.ph83, %233
  %.8324 = phi i32 [ 0, %.lr.ph83 ], [ %234, %233 ]
  %221 = icmp sle i32 0, 0
  br i1 %221, label %.lr.ph80, label %232

.lr.ph80:                                         ; preds = %220
  br label %222

222:                                              ; preds = %.lr.ph80, %229
  %.8 = phi i32 [ 0, %.lr.ph80 ], [ %230, %229 ]
  %223 = mul nsw i32 8, %.8
  %224 = add nsw i32 %.8324, %223
  %225 = mul nsw i32 8, %224
  %226 = add nsw i32 %.9339, %225
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 0, i64 %227
  store i32 1, ptr %228, align 4
  br label %229

229:                                              ; preds = %222
  %230 = add nsw i32 %.8, 1
  %231 = icmp sle i32 %230, 0
  br i1 %231, label %222, label %._crit_edge81, !llvm.loop !40

._crit_edge81:                                    ; preds = %229
  br label %232

232:                                              ; preds = %._crit_edge81, %220
  br label %233

233:                                              ; preds = %232
  %234 = add nsw i32 %.8324, 1
  %235 = icmp sle i32 %234, 2
  br i1 %235, label %220, label %._crit_edge84, !llvm.loop !41

._crit_edge84:                                    ; preds = %233
  br label %236

236:                                              ; preds = %._crit_edge84, %218
  br label %237

237:                                              ; preds = %236
  %238 = add nsw i32 %.9339, 1
  %239 = icmp sle i32 %238, 0
  br i1 %239, label %218, label %._crit_edge87, !llvm.loop !42

._crit_edge87:                                    ; preds = %237
  br label %240

240:                                              ; preds = %._crit_edge87, %216
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  %241 = icmp sle i32 0, 0
  br i1 %241, label %.lr.ph95, label %264

.lr.ph95:                                         ; preds = %240
  br label %242

242:                                              ; preds = %.lr.ph95, %261
  %.10340 = phi i32 [ 0, %.lr.ph95 ], [ %262, %261 ]
  %243 = icmp sle i32 0, 0
  br i1 %243, label %.lr.ph92, label %260

.lr.ph92:                                         ; preds = %242
  br label %244

244:                                              ; preds = %.lr.ph92, %257
  %.9325 = phi i32 [ 0, %.lr.ph92 ], [ %258, %257 ]
  %245 = icmp sle i32 0, 2
  br i1 %245, label %.lr.ph89, label %256

.lr.ph89:                                         ; preds = %244
  br label %246

246:                                              ; preds = %.lr.ph89, %253
  %.9 = phi i32 [ 0, %.lr.ph89 ], [ %254, %253 ]
  %247 = mul nsw i32 8, %.9
  %248 = add nsw i32 %.9325, %247
  %249 = mul nsw i32 8, %248
  %250 = add nsw i32 %.10340, %249
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 0, i64 %251
  store i32 1, ptr %252, align 4
  br label %253

253:                                              ; preds = %246
  %254 = add nsw i32 %.9, 1
  %255 = icmp sle i32 %254, 2
  br i1 %255, label %246, label %._crit_edge90, !llvm.loop !43

._crit_edge90:                                    ; preds = %253
  br label %256

256:                                              ; preds = %._crit_edge90, %244
  br label %257

257:                                              ; preds = %256
  %258 = add nsw i32 %.9325, 1
  %259 = icmp sle i32 %258, 0
  br i1 %259, label %244, label %._crit_edge93, !llvm.loop !44

._crit_edge93:                                    ; preds = %257
  br label %260

260:                                              ; preds = %._crit_edge93, %242
  br label %261

261:                                              ; preds = %260
  %262 = add nsw i32 %.10340, 1
  %263 = icmp sle i32 %262, 0
  br i1 %263, label %242, label %._crit_edge96, !llvm.loop !45

._crit_edge96:                                    ; preds = %261
  br label %264

264:                                              ; preds = %._crit_edge96, %240
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  %265 = icmp sle i32 0, 1
  br i1 %265, label %.lr.ph104, label %288

.lr.ph104:                                        ; preds = %264
  br label %266

266:                                              ; preds = %.lr.ph104, %285
  %.11341 = phi i32 [ 0, %.lr.ph104 ], [ %286, %285 ]
  %267 = icmp sle i32 0, 1
  br i1 %267, label %.lr.ph101, label %284

.lr.ph101:                                        ; preds = %266
  br label %268

268:                                              ; preds = %.lr.ph101, %281
  %.10326 = phi i32 [ 0, %.lr.ph101 ], [ %282, %281 ]
  %269 = icmp sle i32 0, 0
  br i1 %269, label %.lr.ph98, label %280

.lr.ph98:                                         ; preds = %268
  br label %270

270:                                              ; preds = %.lr.ph98, %277
  %.10 = phi i32 [ 0, %.lr.ph98 ], [ %278, %277 ]
  %271 = mul nsw i32 8, %.10
  %272 = add nsw i32 %.10326, %271
  %273 = mul nsw i32 8, %272
  %274 = add nsw i32 %.11341, %273
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 0, i64 %275
  store i32 1, ptr %276, align 4
  br label %277

277:                                              ; preds = %270
  %278 = add nsw i32 %.10, 1
  %279 = icmp sle i32 %278, 0
  br i1 %279, label %270, label %._crit_edge99, !llvm.loop !46

._crit_edge99:                                    ; preds = %277
  br label %280

280:                                              ; preds = %._crit_edge99, %268
  br label %281

281:                                              ; preds = %280
  %282 = add nsw i32 %.10326, 1
  %283 = icmp sle i32 %282, 1
  br i1 %283, label %268, label %._crit_edge102, !llvm.loop !47

._crit_edge102:                                   ; preds = %281
  br label %284

284:                                              ; preds = %._crit_edge102, %266
  br label %285

285:                                              ; preds = %284
  %286 = add nsw i32 %.11341, 1
  %287 = icmp sle i32 %286, 1
  br i1 %287, label %266, label %._crit_edge105, !llvm.loop !48

._crit_edge105:                                   ; preds = %285
  br label %288

288:                                              ; preds = %._crit_edge105, %264
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  %289 = icmp sle i32 0, 1
  br i1 %289, label %.lr.ph113, label %312

.lr.ph113:                                        ; preds = %288
  br label %290

290:                                              ; preds = %.lr.ph113, %309
  %.12342 = phi i32 [ 0, %.lr.ph113 ], [ %310, %309 ]
  %291 = icmp sle i32 0, 0
  br i1 %291, label %.lr.ph110, label %308

.lr.ph110:                                        ; preds = %290
  br label %292

292:                                              ; preds = %.lr.ph110, %305
  %.11327 = phi i32 [ 0, %.lr.ph110 ], [ %306, %305 ]
  %293 = icmp sle i32 0, 1
  br i1 %293, label %.lr.ph107, label %304

.lr.ph107:                                        ; preds = %292
  br label %294

294:                                              ; preds = %.lr.ph107, %301
  %.11 = phi i32 [ 0, %.lr.ph107 ], [ %302, %301 ]
  %295 = mul nsw i32 8, %.11
  %296 = add nsw i32 %.11327, %295
  %297 = mul nsw i32 8, %296
  %298 = add nsw i32 %.12342, %297
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 0, i64 %299
  store i32 1, ptr %300, align 4
  br label %301

301:                                              ; preds = %294
  %302 = add nsw i32 %.11, 1
  %303 = icmp sle i32 %302, 1
  br i1 %303, label %294, label %._crit_edge108, !llvm.loop !49

._crit_edge108:                                   ; preds = %301
  br label %304

304:                                              ; preds = %._crit_edge108, %292
  br label %305

305:                                              ; preds = %304
  %306 = add nsw i32 %.11327, 1
  %307 = icmp sle i32 %306, 0
  br i1 %307, label %292, label %._crit_edge111, !llvm.loop !50

._crit_edge111:                                   ; preds = %305
  br label %308

308:                                              ; preds = %._crit_edge111, %290
  br label %309

309:                                              ; preds = %308
  %310 = add nsw i32 %.12342, 1
  %311 = icmp sle i32 %310, 1
  br i1 %311, label %290, label %._crit_edge114, !llvm.loop !51

._crit_edge114:                                   ; preds = %309
  br label %312

312:                                              ; preds = %._crit_edge114, %288
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  %313 = icmp sle i32 0, 0
  br i1 %313, label %.lr.ph122, label %336

.lr.ph122:                                        ; preds = %312
  br label %314

314:                                              ; preds = %.lr.ph122, %333
  %.13343 = phi i32 [ 0, %.lr.ph122 ], [ %334, %333 ]
  %315 = icmp sle i32 0, 1
  br i1 %315, label %.lr.ph119, label %332

.lr.ph119:                                        ; preds = %314
  br label %316

316:                                              ; preds = %.lr.ph119, %329
  %.12328 = phi i32 [ 0, %.lr.ph119 ], [ %330, %329 ]
  %317 = icmp sle i32 0, 1
  br i1 %317, label %.lr.ph116, label %328

.lr.ph116:                                        ; preds = %316
  br label %318

318:                                              ; preds = %.lr.ph116, %325
  %.12 = phi i32 [ 0, %.lr.ph116 ], [ %326, %325 ]
  %319 = mul nsw i32 8, %.12
  %320 = add nsw i32 %.12328, %319
  %321 = mul nsw i32 8, %320
  %322 = add nsw i32 %.13343, %321
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 0, i64 %323
  store i32 1, ptr %324, align 4
  br label %325

325:                                              ; preds = %318
  %326 = add nsw i32 %.12, 1
  %327 = icmp sle i32 %326, 1
  br i1 %327, label %318, label %._crit_edge117, !llvm.loop !52

._crit_edge117:                                   ; preds = %325
  br label %328

328:                                              ; preds = %._crit_edge117, %316
  br label %329

329:                                              ; preds = %328
  %330 = add nsw i32 %.12328, 1
  %331 = icmp sle i32 %330, 1
  br i1 %331, label %316, label %._crit_edge120, !llvm.loop !53

._crit_edge120:                                   ; preds = %329
  br label %332

332:                                              ; preds = %._crit_edge120, %314
  br label %333

333:                                              ; preds = %332
  %334 = add nsw i32 %.13343, 1
  %335 = icmp sle i32 %334, 0
  br i1 %335, label %314, label %._crit_edge123, !llvm.loop !54

._crit_edge123:                                   ; preds = %333
  br label %336

336:                                              ; preds = %._crit_edge123, %312
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  %337 = icmp sle i32 0, 1
  br i1 %337, label %.lr.ph131, label %360

.lr.ph131:                                        ; preds = %336
  br label %338

338:                                              ; preds = %.lr.ph131, %357
  %.14 = phi i32 [ 0, %.lr.ph131 ], [ %358, %357 ]
  %339 = icmp sle i32 0, 1
  br i1 %339, label %.lr.ph128, label %356

.lr.ph128:                                        ; preds = %338
  br label %340

340:                                              ; preds = %.lr.ph128, %353
  %.13329 = phi i32 [ 0, %.lr.ph128 ], [ %354, %353 ]
  %341 = icmp sle i32 0, 1
  br i1 %341, label %.lr.ph125, label %352

.lr.ph125:                                        ; preds = %340
  br label %342

342:                                              ; preds = %.lr.ph125, %349
  %.13 = phi i32 [ 0, %.lr.ph125 ], [ %350, %349 ]
  %343 = mul nsw i32 8, %.13
  %344 = add nsw i32 %.13329, %343
  %345 = mul nsw i32 8, %344
  %346 = add nsw i32 %.14, %345
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 0, i64 %347
  store i32 1, ptr %348, align 4
  br label %349

349:                                              ; preds = %342
  %350 = add nsw i32 %.13, 1
  %351 = icmp sle i32 %350, 1
  br i1 %351, label %342, label %._crit_edge126, !llvm.loop !55

._crit_edge126:                                   ; preds = %349
  br label %352

352:                                              ; preds = %._crit_edge126, %340
  br label %353

353:                                              ; preds = %352
  %354 = add nsw i32 %.13329, 1
  %355 = icmp sle i32 %354, 1
  br i1 %355, label %340, label %._crit_edge129, !llvm.loop !56

._crit_edge129:                                   ; preds = %353
  br label %356

356:                                              ; preds = %._crit_edge129, %338
  br label %357

357:                                              ; preds = %356
  %358 = add nsw i32 %.14, 1
  %359 = icmp sle i32 %358, 1
  br i1 %359, label %338, label %._crit_edge132, !llvm.loop !57

._crit_edge132:                                   ; preds = %357
  br label %360

360:                                              ; preds = %._crit_edge132, %336
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 0, ptr @kount, align 4
  %361 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %363, label %365

363:                                              ; preds = %360
  %364 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %364, ptr @n, align 4
  br label %367

365:                                              ; preds = %360
  %366 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  br label %367

367:                                              ; preds = %365, %363
  %368 = load i32, ptr @n, align 4
  %369 = call i32 @Trial(i32 noundef %368)
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %373, label %371

371:                                              ; preds = %367
  %372 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  br label %379

373:                                              ; preds = %367
  %374 = load i32, ptr @kount, align 4
  %375 = icmp ne i32 %374, 2005
  br i1 %375, label %376, label %378

376:                                              ; preds = %373
  %377 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %378

378:                                              ; preds = %376, %373
  br label %379

379:                                              ; preds = %378, %371
  %380 = load i32, ptr @n, align 4
  %381 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %380)
  %382 = load i32, ptr @kount, align 4
  %383 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %382)
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
