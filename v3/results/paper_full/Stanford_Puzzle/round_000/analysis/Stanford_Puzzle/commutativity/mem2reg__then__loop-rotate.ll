; ModuleID = 'results\paper_full\Stanford_Puzzle\Stanford_Puzzle.ll'
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
  br i1 %6, label %.lr.ph, label %27

.lr.ph:                                           ; preds = %2
  br label %7

7:                                                ; preds = %.lr.ph, %23
  %.012 = phi i32 [ 0, %.lr.ph ], [ %24, %23 ]
  %8 = sext i32 %0 to i64
  %9 = getelementptr inbounds [13 x [512 x i32]], ptr @p, i64 0, i64 %8
  %10 = sext i32 %.012 to i64
  %11 = getelementptr inbounds [512 x i32], ptr %9, i64 0, i64 %10
  %12 = load i32, ptr %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %7
  %15 = add nsw i32 %1, %.012
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %16
  %18 = load i32, ptr %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %28

21:                                               ; preds = %14
  br label %22

22:                                               ; preds = %21, %7
  br label %23

23:                                               ; preds = %22
  %24 = add nsw i32 %.012, 1
  %25 = load i32, ptr %4, align 4
  %26 = icmp sle i32 %24, %25
  br i1 %26, label %7, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %23
  br label %27

27:                                               ; preds = %._crit_edge, %2
  br label %28

28:                                               ; preds = %27, %20
  %.0 = phi i32 [ 0, %20 ], [ 1, %27 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Place(i32 noundef %0, i32 noundef %1) #0 {
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds [13 x i32], ptr @piecemax, i64 0, i64 %3
  %5 = load i32, ptr %4, align 4
  %6 = icmp sle i32 0, %5
  br i1 %6, label %.lr.ph, label %23

.lr.ph:                                           ; preds = %2
  br label %7

7:                                                ; preds = %.lr.ph, %19
  %.013 = phi i32 [ 0, %.lr.ph ], [ %20, %19 ]
  %8 = sext i32 %0 to i64
  %9 = getelementptr inbounds [13 x [512 x i32]], ptr @p, i64 0, i64 %8
  %10 = sext i32 %.013 to i64
  %11 = getelementptr inbounds [512 x i32], ptr %9, i64 0, i64 %10
  %12 = load i32, ptr %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %7
  %15 = add nsw i32 %1, %.013
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %16
  store i32 1, ptr %17, align 4
  br label %18

18:                                               ; preds = %14, %7
  br label %19

19:                                               ; preds = %18
  %20 = add nsw i32 %.013, 1
  %21 = load i32, ptr %4, align 4
  %22 = icmp sle i32 %20, %21
  br i1 %22, label %7, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %19
  br label %23

23:                                               ; preds = %._crit_edge, %2
  %24 = sext i32 %0 to i64
  %25 = getelementptr inbounds [13 x i32], ptr @class, i64 0, i64 %24
  %26 = load i32, ptr %25, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [4 x i32], ptr @piececount, i64 0, i64 %27
  %29 = load i32, ptr %28, align 4
  %30 = sub nsw i32 %29, 1
  %31 = sext i32 %0 to i64
  %32 = getelementptr inbounds [13 x i32], ptr @class, i64 0, i64 %31
  %33 = load i32, ptr %32, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [4 x i32], ptr @piececount, i64 0, i64 %34
  store i32 %30, ptr %35, align 4
  %36 = icmp sle i32 %1, 511
  br i1 %36, label %.lr.ph6, label %47

.lr.ph6:                                          ; preds = %23
  br label %37

37:                                               ; preds = %.lr.ph6, %44
  %.14 = phi i32 [ %1, %.lr.ph6 ], [ %45, %44 ]
  %38 = sext i32 %.14 to i64
  %39 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %38
  %40 = load i32, ptr %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %37
  %.1.lcssa2 = phi i32 [ %.14, %37 ]
  br label %48

43:                                               ; preds = %37
  br label %44

44:                                               ; preds = %43
  %45 = add nsw i32 %.14, 1
  %46 = icmp sle i32 %45, 511
  br i1 %46, label %37, label %._crit_edge7, !llvm.loop !10

._crit_edge7:                                     ; preds = %44
  br label %47

47:                                               ; preds = %._crit_edge7, %23
  br label %48

48:                                               ; preds = %47, %42
  %.0 = phi i32 [ %.1.lcssa2, %42 ], [ 0, %47 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Remove(i32 noundef %0, i32 noundef %1) #0 {
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds [13 x i32], ptr @piecemax, i64 0, i64 %3
  %5 = load i32, ptr %4, align 4
  %6 = icmp sle i32 0, %5
  br i1 %6, label %.lr.ph, label %23

.lr.ph:                                           ; preds = %2
  br label %7

7:                                                ; preds = %.lr.ph, %19
  %.01 = phi i32 [ 0, %.lr.ph ], [ %20, %19 ]
  %8 = sext i32 %0 to i64
  %9 = getelementptr inbounds [13 x [512 x i32]], ptr @p, i64 0, i64 %8
  %10 = sext i32 %.01 to i64
  %11 = getelementptr inbounds [512 x i32], ptr %9, i64 0, i64 %10
  %12 = load i32, ptr %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %7
  %15 = add nsw i32 %1, %.01
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %16
  store i32 0, ptr %17, align 4
  br label %18

18:                                               ; preds = %14, %7
  br label %19

19:                                               ; preds = %18
  %20 = add nsw i32 %.01, 1
  %21 = load i32, ptr %4, align 4
  %22 = icmp sle i32 %20, %21
  br i1 %22, label %7, label %._crit_edge, !llvm.loop !11

._crit_edge:                                      ; preds = %19
  br label %23

23:                                               ; preds = %._crit_edge, %2
  %24 = sext i32 %0 to i64
  %25 = getelementptr inbounds [13 x i32], ptr @class, i64 0, i64 %24
  %26 = load i32, ptr %25, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [4 x i32], ptr @piececount, i64 0, i64 %27
  %29 = load i32, ptr %28, align 4
  %30 = add nsw i32 %29, 1
  %31 = sext i32 %0 to i64
  %32 = getelementptr inbounds [13 x i32], ptr @class, i64 0, i64 %31
  %33 = load i32, ptr %32, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [4 x i32], ptr @piececount, i64 0, i64 %34
  store i32 %30, ptr %35, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Trial(i32 noundef %0) #0 {
  %2 = load i32, ptr @kount, align 4
  %3 = add nsw i32 %2, 1
  store i32 %3, ptr @kount, align 4
  br label %4

4:                                                ; preds = %1, %26
  %.012 = phi i32 [ 0, %1 ], [ %27, %26 ]
  %5 = sext i32 %.012 to i64
  %6 = getelementptr inbounds [13 x i32], ptr @class, i64 0, i64 %5
  %7 = load i32, ptr %6, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [4 x i32], ptr @piececount, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %25

12:                                               ; preds = %4
  %13 = call i32 @Fit(i32 noundef %.012, i32 noundef %0)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %12
  %16 = call i32 @Place(i32 noundef %.012, i32 noundef %0)
  %17 = call i32 @Trial(i32 noundef %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = icmp eq i32 %16, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %19, %15
  br label %30

22:                                               ; preds = %19
  call void @Remove(i32 noundef %.012, i32 noundef %0)
  br label %23

23:                                               ; preds = %22
  br label %24

24:                                               ; preds = %23, %12
  br label %25

25:                                               ; preds = %24, %4
  br label %26

26:                                               ; preds = %25
  %27 = add nsw i32 %.012, 1
  %28 = icmp sle i32 %27, 12
  br i1 %28, label %4, label %29, !llvm.loop !12

29:                                               ; preds = %26
  br label %30

30:                                               ; preds = %29, %21
  %.0 = phi i32 [ 1, %21 ], [ 0, %29 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Puzzle() #0 {
  br label %1

1:                                                ; preds = %0, %4
  %.03234 = phi i32 [ 0, %0 ], [ %5, %4 ]
  %2 = sext i32 %.03234 to i64
  %3 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %2
  store i32 1, ptr %3, align 4
  br label %4

4:                                                ; preds = %1
  %5 = add nsw i32 %.03234, 1
  %6 = icmp sle i32 %5, 511
  br i1 %6, label %1, label %7, !llvm.loop !13

7:                                                ; preds = %4
  br label %8

8:                                                ; preds = %7, %25
  %.037 = phi i32 [ 1, %7 ], [ %26, %25 ]
  br label %9

9:                                                ; preds = %8, %21
  %.0136 = phi i32 [ 1, %8 ], [ %22, %21 ]
  br label %10

10:                                               ; preds = %9, %17
  %.01835 = phi i32 [ 1, %9 ], [ %18, %17 ]
  %11 = mul nsw i32 8, %.01835
  %12 = add nsw i32 %.0136, %11
  %13 = mul nsw i32 8, %12
  %14 = add nsw i32 %.037, %13
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %15
  store i32 0, ptr %16, align 4
  br label %17

17:                                               ; preds = %10
  %18 = add nsw i32 %.01835, 1
  %19 = icmp sle i32 %18, 5
  br i1 %19, label %10, label %20, !llvm.loop !14

20:                                               ; preds = %17
  br label %21

21:                                               ; preds = %20
  %22 = add nsw i32 %.0136, 1
  %23 = icmp sle i32 %22, 5
  br i1 %23, label %9, label %24, !llvm.loop !15

24:                                               ; preds = %21
  br label %25

25:                                               ; preds = %24
  %26 = add nsw i32 %.037, 1
  %27 = icmp sle i32 %26, 5
  br i1 %27, label %8, label %28, !llvm.loop !16

28:                                               ; preds = %25
  br label %29

29:                                               ; preds = %28, %39
  %.139 = phi i32 [ 0, %28 ], [ %40, %39 ]
  br label %30

30:                                               ; preds = %29, %35
  %.13338 = phi i32 [ 0, %29 ], [ %36, %35 ]
  %31 = sext i32 %.139 to i64
  %32 = getelementptr inbounds [13 x [512 x i32]], ptr @p, i64 0, i64 %31
  %33 = sext i32 %.13338 to i64
  %34 = getelementptr inbounds [512 x i32], ptr %32, i64 0, i64 %33
  store i32 0, ptr %34, align 4
  br label %35

35:                                               ; preds = %30
  %36 = add nsw i32 %.13338, 1
  %37 = icmp sle i32 %36, 511
  br i1 %37, label %30, label %38, !llvm.loop !17

38:                                               ; preds = %35
  br label %39

39:                                               ; preds = %38
  %40 = add nsw i32 %.139, 1
  %41 = icmp sle i32 %40, 12
  br i1 %41, label %29, label %42, !llvm.loop !18

42:                                               ; preds = %39
  br label %43

43:                                               ; preds = %42, %60
  %.242 = phi i32 [ 0, %42 ], [ %61, %60 ]
  br label %44

44:                                               ; preds = %43, %56
  %.1541 = phi i32 [ 0, %43 ], [ %57, %56 ]
  br label %45

45:                                               ; preds = %44, %52
  %.11940 = phi i32 [ 0, %44 ], [ %53, %52 ]
  %46 = mul nsw i32 8, %.11940
  %47 = add nsw i32 %.1541, %46
  %48 = mul nsw i32 8, %47
  %49 = add nsw i32 %.242, %48
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [512 x i32], ptr @p, i64 0, i64 %50
  store i32 1, ptr %51, align 4
  br label %52

52:                                               ; preds = %45
  %53 = add nsw i32 %.11940, 1
  %54 = icmp sle i32 %53, 0
  br i1 %54, label %45, label %55, !llvm.loop !19

55:                                               ; preds = %52
  br label %56

56:                                               ; preds = %55
  %57 = add nsw i32 %.1541, 1
  %58 = icmp sle i32 %57, 1
  br i1 %58, label %44, label %59, !llvm.loop !20

59:                                               ; preds = %56
  br label %60

60:                                               ; preds = %59
  %61 = add nsw i32 %.242, 1
  %62 = icmp sle i32 %61, 3
  br i1 %62, label %43, label %63, !llvm.loop !21

63:                                               ; preds = %60
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %64

64:                                               ; preds = %63, %81
  %.345 = phi i32 [ 0, %63 ], [ %82, %81 ]
  br label %65

65:                                               ; preds = %64, %77
  %.2644 = phi i32 [ 0, %64 ], [ %78, %77 ]
  br label %66

66:                                               ; preds = %65, %73
  %.22043 = phi i32 [ 0, %65 ], [ %74, %73 ]
  %67 = mul nsw i32 8, %.22043
  %68 = add nsw i32 %.2644, %67
  %69 = mul nsw i32 8, %68
  %70 = add nsw i32 %.345, %69
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 0, i64 %71
  store i32 1, ptr %72, align 4
  br label %73

73:                                               ; preds = %66
  %74 = add nsw i32 %.22043, 1
  %75 = icmp sle i32 %74, 3
  br i1 %75, label %66, label %76, !llvm.loop !22

76:                                               ; preds = %73
  br label %77

77:                                               ; preds = %76
  %78 = add nsw i32 %.2644, 1
  %79 = icmp sle i32 %78, 0
  br i1 %79, label %65, label %80, !llvm.loop !23

80:                                               ; preds = %77
  br label %81

81:                                               ; preds = %80
  %82 = add nsw i32 %.345, 1
  %83 = icmp sle i32 %82, 1
  br i1 %83, label %64, label %84, !llvm.loop !24

84:                                               ; preds = %81
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %85

85:                                               ; preds = %84, %102
  %.448 = phi i32 [ 0, %84 ], [ %103, %102 ]
  br label %86

86:                                               ; preds = %85, %98
  %.3747 = phi i32 [ 0, %85 ], [ %99, %98 ]
  br label %87

87:                                               ; preds = %86, %94
  %.32146 = phi i32 [ 0, %86 ], [ %95, %94 ]
  %88 = mul nsw i32 8, %.32146
  %89 = add nsw i32 %.3747, %88
  %90 = mul nsw i32 8, %89
  %91 = add nsw i32 %.448, %90
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 0, i64 %92
  store i32 1, ptr %93, align 4
  br label %94

94:                                               ; preds = %87
  %95 = add nsw i32 %.32146, 1
  %96 = icmp sle i32 %95, 1
  br i1 %96, label %87, label %97, !llvm.loop !25

97:                                               ; preds = %94
  br label %98

98:                                               ; preds = %97
  %99 = add nsw i32 %.3747, 1
  %100 = icmp sle i32 %99, 3
  br i1 %100, label %86, label %101, !llvm.loop !26

101:                                              ; preds = %98
  br label %102

102:                                              ; preds = %101
  %103 = add nsw i32 %.448, 1
  %104 = icmp sle i32 %103, 0
  br i1 %104, label %85, label %105, !llvm.loop !27

105:                                              ; preds = %102
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %106

106:                                              ; preds = %105, %123
  %.551 = phi i32 [ 0, %105 ], [ %124, %123 ]
  br label %107

107:                                              ; preds = %106, %119
  %.4850 = phi i32 [ 0, %106 ], [ %120, %119 ]
  br label %108

108:                                              ; preds = %107, %115
  %.42249 = phi i32 [ 0, %107 ], [ %116, %115 ]
  %109 = mul nsw i32 8, %.42249
  %110 = add nsw i32 %.4850, %109
  %111 = mul nsw i32 8, %110
  %112 = add nsw i32 %.551, %111
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 0, i64 %113
  store i32 1, ptr %114, align 4
  br label %115

115:                                              ; preds = %108
  %116 = add nsw i32 %.42249, 1
  %117 = icmp sle i32 %116, 0
  br i1 %117, label %108, label %118, !llvm.loop !28

118:                                              ; preds = %115
  br label %119

119:                                              ; preds = %118
  %120 = add nsw i32 %.4850, 1
  %121 = icmp sle i32 %120, 3
  br i1 %121, label %107, label %122, !llvm.loop !29

122:                                              ; preds = %119
  br label %123

123:                                              ; preds = %122
  %124 = add nsw i32 %.551, 1
  %125 = icmp sle i32 %124, 1
  br i1 %125, label %106, label %126, !llvm.loop !30

126:                                              ; preds = %123
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %127

127:                                              ; preds = %126, %144
  %.654 = phi i32 [ 0, %126 ], [ %145, %144 ]
  br label %128

128:                                              ; preds = %127, %140
  %.5953 = phi i32 [ 0, %127 ], [ %141, %140 ]
  br label %129

129:                                              ; preds = %128, %136
  %.52352 = phi i32 [ 0, %128 ], [ %137, %136 ]
  %130 = mul nsw i32 8, %.52352
  %131 = add nsw i32 %.5953, %130
  %132 = mul nsw i32 8, %131
  %133 = add nsw i32 %.654, %132
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 0, i64 %134
  store i32 1, ptr %135, align 4
  br label %136

136:                                              ; preds = %129
  %137 = add nsw i32 %.52352, 1
  %138 = icmp sle i32 %137, 1
  br i1 %138, label %129, label %139, !llvm.loop !31

139:                                              ; preds = %136
  br label %140

140:                                              ; preds = %139
  %141 = add nsw i32 %.5953, 1
  %142 = icmp sle i32 %141, 0
  br i1 %142, label %128, label %143, !llvm.loop !32

143:                                              ; preds = %140
  br label %144

144:                                              ; preds = %143
  %145 = add nsw i32 %.654, 1
  %146 = icmp sle i32 %145, 3
  br i1 %146, label %127, label %147, !llvm.loop !33

147:                                              ; preds = %144
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %148

148:                                              ; preds = %147, %165
  %.757 = phi i32 [ 0, %147 ], [ %166, %165 ]
  br label %149

149:                                              ; preds = %148, %161
  %.61056 = phi i32 [ 0, %148 ], [ %162, %161 ]
  br label %150

150:                                              ; preds = %149, %157
  %.62455 = phi i32 [ 0, %149 ], [ %158, %157 ]
  %151 = mul nsw i32 8, %.62455
  %152 = add nsw i32 %.61056, %151
  %153 = mul nsw i32 8, %152
  %154 = add nsw i32 %.757, %153
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 0, i64 %155
  store i32 1, ptr %156, align 4
  br label %157

157:                                              ; preds = %150
  %158 = add nsw i32 %.62455, 1
  %159 = icmp sle i32 %158, 3
  br i1 %159, label %150, label %160, !llvm.loop !34

160:                                              ; preds = %157
  br label %161

161:                                              ; preds = %160
  %162 = add nsw i32 %.61056, 1
  %163 = icmp sle i32 %162, 1
  br i1 %163, label %149, label %164, !llvm.loop !35

164:                                              ; preds = %161
  br label %165

165:                                              ; preds = %164
  %166 = add nsw i32 %.757, 1
  %167 = icmp sle i32 %166, 0
  br i1 %167, label %148, label %168, !llvm.loop !36

168:                                              ; preds = %165
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %169

169:                                              ; preds = %168, %186
  %.860 = phi i32 [ 0, %168 ], [ %187, %186 ]
  br label %170

170:                                              ; preds = %169, %182
  %.71159 = phi i32 [ 0, %169 ], [ %183, %182 ]
  br label %171

171:                                              ; preds = %170, %178
  %.72558 = phi i32 [ 0, %170 ], [ %179, %178 ]
  %172 = mul nsw i32 8, %.72558
  %173 = add nsw i32 %.71159, %172
  %174 = mul nsw i32 8, %173
  %175 = add nsw i32 %.860, %174
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 0, i64 %176
  store i32 1, ptr %177, align 4
  br label %178

178:                                              ; preds = %171
  %179 = add nsw i32 %.72558, 1
  %180 = icmp sle i32 %179, 0
  br i1 %180, label %171, label %181, !llvm.loop !37

181:                                              ; preds = %178
  br label %182

182:                                              ; preds = %181
  %183 = add nsw i32 %.71159, 1
  %184 = icmp sle i32 %183, 0
  br i1 %184, label %170, label %185, !llvm.loop !38

185:                                              ; preds = %182
  br label %186

186:                                              ; preds = %185
  %187 = add nsw i32 %.860, 1
  %188 = icmp sle i32 %187, 2
  br i1 %188, label %169, label %189, !llvm.loop !39

189:                                              ; preds = %186
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %190

190:                                              ; preds = %189, %207
  %.963 = phi i32 [ 0, %189 ], [ %208, %207 ]
  br label %191

191:                                              ; preds = %190, %203
  %.81262 = phi i32 [ 0, %190 ], [ %204, %203 ]
  br label %192

192:                                              ; preds = %191, %199
  %.82661 = phi i32 [ 0, %191 ], [ %200, %199 ]
  %193 = mul nsw i32 8, %.82661
  %194 = add nsw i32 %.81262, %193
  %195 = mul nsw i32 8, %194
  %196 = add nsw i32 %.963, %195
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 0, i64 %197
  store i32 1, ptr %198, align 4
  br label %199

199:                                              ; preds = %192
  %200 = add nsw i32 %.82661, 1
  %201 = icmp sle i32 %200, 0
  br i1 %201, label %192, label %202, !llvm.loop !40

202:                                              ; preds = %199
  br label %203

203:                                              ; preds = %202
  %204 = add nsw i32 %.81262, 1
  %205 = icmp sle i32 %204, 2
  br i1 %205, label %191, label %206, !llvm.loop !41

206:                                              ; preds = %203
  br label %207

207:                                              ; preds = %206
  %208 = add nsw i32 %.963, 1
  %209 = icmp sle i32 %208, 0
  br i1 %209, label %190, label %210, !llvm.loop !42

210:                                              ; preds = %207
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %211

211:                                              ; preds = %210, %228
  %.1066 = phi i32 [ 0, %210 ], [ %229, %228 ]
  br label %212

212:                                              ; preds = %211, %224
  %.91365 = phi i32 [ 0, %211 ], [ %225, %224 ]
  br label %213

213:                                              ; preds = %212, %220
  %.92764 = phi i32 [ 0, %212 ], [ %221, %220 ]
  %214 = mul nsw i32 8, %.92764
  %215 = add nsw i32 %.91365, %214
  %216 = mul nsw i32 8, %215
  %217 = add nsw i32 %.1066, %216
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 0, i64 %218
  store i32 1, ptr %219, align 4
  br label %220

220:                                              ; preds = %213
  %221 = add nsw i32 %.92764, 1
  %222 = icmp sle i32 %221, 2
  br i1 %222, label %213, label %223, !llvm.loop !43

223:                                              ; preds = %220
  br label %224

224:                                              ; preds = %223
  %225 = add nsw i32 %.91365, 1
  %226 = icmp sle i32 %225, 0
  br i1 %226, label %212, label %227, !llvm.loop !44

227:                                              ; preds = %224
  br label %228

228:                                              ; preds = %227
  %229 = add nsw i32 %.1066, 1
  %230 = icmp sle i32 %229, 0
  br i1 %230, label %211, label %231, !llvm.loop !45

231:                                              ; preds = %228
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %232

232:                                              ; preds = %231, %249
  %.1169 = phi i32 [ 0, %231 ], [ %250, %249 ]
  br label %233

233:                                              ; preds = %232, %245
  %.101468 = phi i32 [ 0, %232 ], [ %246, %245 ]
  br label %234

234:                                              ; preds = %233, %241
  %.102867 = phi i32 [ 0, %233 ], [ %242, %241 ]
  %235 = mul nsw i32 8, %.102867
  %236 = add nsw i32 %.101468, %235
  %237 = mul nsw i32 8, %236
  %238 = add nsw i32 %.1169, %237
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 0, i64 %239
  store i32 1, ptr %240, align 4
  br label %241

241:                                              ; preds = %234
  %242 = add nsw i32 %.102867, 1
  %243 = icmp sle i32 %242, 0
  br i1 %243, label %234, label %244, !llvm.loop !46

244:                                              ; preds = %241
  br label %245

245:                                              ; preds = %244
  %246 = add nsw i32 %.101468, 1
  %247 = icmp sle i32 %246, 1
  br i1 %247, label %233, label %248, !llvm.loop !47

248:                                              ; preds = %245
  br label %249

249:                                              ; preds = %248
  %250 = add nsw i32 %.1169, 1
  %251 = icmp sle i32 %250, 1
  br i1 %251, label %232, label %252, !llvm.loop !48

252:                                              ; preds = %249
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %253

253:                                              ; preds = %252, %270
  %.1272 = phi i32 [ 0, %252 ], [ %271, %270 ]
  br label %254

254:                                              ; preds = %253, %266
  %.111571 = phi i32 [ 0, %253 ], [ %267, %266 ]
  br label %255

255:                                              ; preds = %254, %262
  %.112970 = phi i32 [ 0, %254 ], [ %263, %262 ]
  %256 = mul nsw i32 8, %.112970
  %257 = add nsw i32 %.111571, %256
  %258 = mul nsw i32 8, %257
  %259 = add nsw i32 %.1272, %258
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 0, i64 %260
  store i32 1, ptr %261, align 4
  br label %262

262:                                              ; preds = %255
  %263 = add nsw i32 %.112970, 1
  %264 = icmp sle i32 %263, 1
  br i1 %264, label %255, label %265, !llvm.loop !49

265:                                              ; preds = %262
  br label %266

266:                                              ; preds = %265
  %267 = add nsw i32 %.111571, 1
  %268 = icmp sle i32 %267, 0
  br i1 %268, label %254, label %269, !llvm.loop !50

269:                                              ; preds = %266
  br label %270

270:                                              ; preds = %269
  %271 = add nsw i32 %.1272, 1
  %272 = icmp sle i32 %271, 1
  br i1 %272, label %253, label %273, !llvm.loop !51

273:                                              ; preds = %270
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %274

274:                                              ; preds = %273, %291
  %.1375 = phi i32 [ 0, %273 ], [ %292, %291 ]
  br label %275

275:                                              ; preds = %274, %287
  %.121674 = phi i32 [ 0, %274 ], [ %288, %287 ]
  br label %276

276:                                              ; preds = %275, %283
  %.123073 = phi i32 [ 0, %275 ], [ %284, %283 ]
  %277 = mul nsw i32 8, %.123073
  %278 = add nsw i32 %.121674, %277
  %279 = mul nsw i32 8, %278
  %280 = add nsw i32 %.1375, %279
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 0, i64 %281
  store i32 1, ptr %282, align 4
  br label %283

283:                                              ; preds = %276
  %284 = add nsw i32 %.123073, 1
  %285 = icmp sle i32 %284, 1
  br i1 %285, label %276, label %286, !llvm.loop !52

286:                                              ; preds = %283
  br label %287

287:                                              ; preds = %286
  %288 = add nsw i32 %.121674, 1
  %289 = icmp sle i32 %288, 1
  br i1 %289, label %275, label %290, !llvm.loop !53

290:                                              ; preds = %287
  br label %291

291:                                              ; preds = %290
  %292 = add nsw i32 %.1375, 1
  %293 = icmp sle i32 %292, 0
  br i1 %293, label %274, label %294, !llvm.loop !54

294:                                              ; preds = %291
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %295

295:                                              ; preds = %294, %312
  %.1478 = phi i32 [ 0, %294 ], [ %313, %312 ]
  br label %296

296:                                              ; preds = %295, %308
  %.131777 = phi i32 [ 0, %295 ], [ %309, %308 ]
  br label %297

297:                                              ; preds = %296, %304
  %.133176 = phi i32 [ 0, %296 ], [ %305, %304 ]
  %298 = mul nsw i32 8, %.133176
  %299 = add nsw i32 %.131777, %298
  %300 = mul nsw i32 8, %299
  %301 = add nsw i32 %.1478, %300
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 0, i64 %302
  store i32 1, ptr %303, align 4
  br label %304

304:                                              ; preds = %297
  %305 = add nsw i32 %.133176, 1
  %306 = icmp sle i32 %305, 1
  br i1 %306, label %297, label %307, !llvm.loop !55

307:                                              ; preds = %304
  br label %308

308:                                              ; preds = %307
  %309 = add nsw i32 %.131777, 1
  %310 = icmp sle i32 %309, 1
  br i1 %310, label %296, label %311, !llvm.loop !56

311:                                              ; preds = %308
  br label %312

312:                                              ; preds = %311
  %313 = add nsw i32 %.1478, 1
  %314 = icmp sle i32 %313, 1
  br i1 %314, label %295, label %315, !llvm.loop !57

315:                                              ; preds = %312
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 0, ptr @kount, align 4
  %316 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %320

318:                                              ; preds = %315
  %319 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %319, ptr @n, align 4
  br label %322

320:                                              ; preds = %315
  %321 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  br label %322

322:                                              ; preds = %320, %318
  %323 = load i32, ptr @n, align 4
  %324 = call i32 @Trial(i32 noundef %323)
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %328, label %326

326:                                              ; preds = %322
  %327 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  br label %334

328:                                              ; preds = %322
  %329 = load i32, ptr @kount, align 4
  %330 = icmp ne i32 %329, 2005
  br i1 %330, label %331, label %333

331:                                              ; preds = %328
  %332 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %333

333:                                              ; preds = %331, %328
  br label %334

334:                                              ; preds = %333, %326
  %335 = load i32, ptr @n, align 4
  %336 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %335)
  %337 = load i32, ptr @kount, align 4
  %338 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %337)
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %0, %2
  %.01 = phi i32 [ 0, %0 ], [ %3, %2 ]
  call void @Puzzle()
  br label %2

2:                                                ; preds = %1
  %3 = add nsw i32 %.01, 1
  %4 = icmp slt i32 %3, 100
  br i1 %4, label %1, label %5, !llvm.loop !58

5:                                                ; preds = %2
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
