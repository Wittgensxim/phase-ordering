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
define dso_local range(i32 0, 2) i32 @Fit(i32 noundef %0, i32 noundef %1) #0 {
  br label %3

3:                                                ; preds = %24, %2
  %.0 = phi i32 [ 0, %2 ], [ %25, %24 ]
  %4 = sext i32 %0 to i64
  %5 = getelementptr inbounds [13 x i32], ptr @piecemax, i64 0, i64 %4
  %6 = load i32, ptr %5, align 4
  %7 = icmp sle i32 %.0, %6
  br i1 %7, label %8, label %26

8:                                                ; preds = %3
  %9 = sext i32 %0 to i64
  %10 = getelementptr inbounds [13 x [512 x i32]], ptr @p, i64 0, i64 %9
  %11 = sext i32 %.0 to i64
  %12 = getelementptr inbounds [512 x i32], ptr %10, i64 0, i64 %11
  %13 = load i32, ptr %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %8
  %16 = add nsw i32 %1, %.0
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %17
  %19 = load i32, ptr %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  br label %27

22:                                               ; preds = %15
  br label %23

23:                                               ; preds = %22, %8
  br label %24

24:                                               ; preds = %23
  %25 = add nsw i32 %.0, 1
  br label %3, !llvm.loop !7

26:                                               ; preds = %3
  br label %27

27:                                               ; preds = %26, %21
  %.08 = phi i32 [ 0, %21 ], [ 1, %26 ]
  ret i32 %.08
}

; Function Attrs: noinline nounwind uwtable
define dso_local range(i32 -2147483648, 512) i32 @Place(i32 noundef %0, i32 noundef %1) #0 {
  br label %3

3:                                                ; preds = %20, %2
  %.0 = phi i32 [ 0, %2 ], [ %21, %20 ]
  %4 = sext i32 %0 to i64
  %5 = getelementptr inbounds [13 x i32], ptr @piecemax, i64 0, i64 %4
  %6 = load i32, ptr %5, align 4
  %7 = icmp sle i32 %.0, %6
  br i1 %7, label %8, label %22

8:                                                ; preds = %3
  %9 = sext i32 %0 to i64
  %10 = getelementptr inbounds [13 x [512 x i32]], ptr @p, i64 0, i64 %9
  %11 = sext i32 %.0 to i64
  %12 = getelementptr inbounds [512 x i32], ptr %10, i64 0, i64 %11
  %13 = load i32, ptr %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %8
  %16 = add nsw i32 %1, %.0
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %17
  store i32 1, ptr %18, align 4
  br label %19

19:                                               ; preds = %15, %8
  br label %20

20:                                               ; preds = %19
  %21 = add nsw i32 %.0, 1
  br label %3, !llvm.loop !9

22:                                               ; preds = %3
  %23 = sext i32 %0 to i64
  %24 = getelementptr inbounds [13 x i32], ptr @class, i64 0, i64 %23
  %25 = load i32, ptr %24, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [4 x i32], ptr @piececount, i64 0, i64 %26
  %28 = load i32, ptr %27, align 4
  %29 = sub nsw i32 %28, 1
  %30 = sext i32 %0 to i64
  %31 = getelementptr inbounds [13 x i32], ptr @class, i64 0, i64 %30
  %32 = load i32, ptr %31, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [4 x i32], ptr @piececount, i64 0, i64 %33
  store i32 %29, ptr %34, align 4
  br label %35

35:                                               ; preds = %44, %22
  %.1 = phi i32 [ %1, %22 ], [ %45, %44 ]
  %36 = icmp sle i32 %.1, 511
  br i1 %36, label %37, label %46

37:                                               ; preds = %35
  %38 = sext i32 %.1 to i64
  %39 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %38
  %40 = load i32, ptr %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %37
  br label %47

43:                                               ; preds = %37
  br label %44

44:                                               ; preds = %43
  %45 = add nsw i32 %.1, 1
  br label %35, !llvm.loop !10

46:                                               ; preds = %35
  br label %47

47:                                               ; preds = %46, %42
  %.015 = phi i32 [ %.1, %42 ], [ 0, %46 ]
  ret i32 %.015
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Remove(i32 noundef %0, i32 noundef %1) #0 {
  br label %3

3:                                                ; preds = %20, %2
  %.0 = phi i32 [ 0, %2 ], [ %21, %20 ]
  %4 = sext i32 %0 to i64
  %5 = getelementptr inbounds [13 x i32], ptr @piecemax, i64 0, i64 %4
  %6 = load i32, ptr %5, align 4
  %7 = icmp sle i32 %.0, %6
  br i1 %7, label %8, label %22

8:                                                ; preds = %3
  %9 = sext i32 %0 to i64
  %10 = getelementptr inbounds [13 x [512 x i32]], ptr @p, i64 0, i64 %9
  %11 = sext i32 %.0 to i64
  %12 = getelementptr inbounds [512 x i32], ptr %10, i64 0, i64 %11
  %13 = load i32, ptr %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %8
  %16 = add nsw i32 %1, %.0
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %17
  store i32 0, ptr %18, align 4
  br label %19

19:                                               ; preds = %15, %8
  br label %20

20:                                               ; preds = %19
  %21 = add nsw i32 %.0, 1
  br label %3, !llvm.loop !11

22:                                               ; preds = %3
  %23 = sext i32 %0 to i64
  %24 = getelementptr inbounds [13 x i32], ptr @class, i64 0, i64 %23
  %25 = load i32, ptr %24, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [4 x i32], ptr @piececount, i64 0, i64 %26
  %28 = load i32, ptr %27, align 4
  %29 = add nsw i32 %28, 1
  %30 = sext i32 %0 to i64
  %31 = getelementptr inbounds [13 x i32], ptr @class, i64 0, i64 %30
  %32 = load i32, ptr %31, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [4 x i32], ptr @piececount, i64 0, i64 %33
  store i32 %29, ptr %34, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local range(i32 0, 2) i32 @Trial(i32 noundef %0) #0 {
  %2 = load i32, ptr @kount, align 4
  %3 = add nsw i32 %2, 1
  store i32 %3, ptr @kount, align 4
  br label %4

4:                                                ; preds = %28, %1
  %.012 = phi i32 [ 0, %1 ], [ %29, %28 ]
  %5 = icmp sle i32 %.012, 12
  br i1 %5, label %6, label %30

6:                                                ; preds = %4
  %7 = sext i32 %.012 to i64
  %8 = getelementptr inbounds [13 x i32], ptr @class, i64 0, i64 %7
  %9 = load i32, ptr %8, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [4 x i32], ptr @piececount, i64 0, i64 %10
  %12 = load i32, ptr %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %6
  %15 = call i32 @Fit(i32 noundef %.012, i32 noundef %0)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %14
  %18 = call i32 @Place(i32 noundef %.012, i32 noundef %0)
  %19 = call i32 @Trial(i32 noundef %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = icmp eq i32 %18, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %21, %17
  br label %31

24:                                               ; preds = %21
  call void @Remove(i32 noundef %.012, i32 noundef %0)
  br label %25

25:                                               ; preds = %24
  br label %26

26:                                               ; preds = %25, %14
  br label %27

27:                                               ; preds = %26, %6
  br label %28

28:                                               ; preds = %27
  %29 = add nsw i32 %.012, 1
  br label %4, !llvm.loop !12

30:                                               ; preds = %4
  br label %31

31:                                               ; preds = %30, %23
  %.0 = phi i32 [ 1, %23 ], [ 0, %30 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Puzzle() #0 {
  br label %1

1:                                                ; preds = %6, %0
  %.0 = phi i32 [ 0, %0 ], [ %7, %6 ]
  %2 = icmp sle i32 %.0, 511
  br i1 %2, label %3, label %8

3:                                                ; preds = %1
  %4 = sext i32 %.0 to i64
  %5 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %4
  store i32 1, ptr %5, align 4
  br label %6

6:                                                ; preds = %3
  %7 = add nsw i32 %.0, 1
  br label %1, !llvm.loop !13

8:                                                ; preds = %1
  br label %9

9:                                                ; preds = %30, %8
  %.0153 = phi i32 [ 1, %8 ], [ %31, %30 ]
  %10 = icmp sle i32 %.0153, 5
  br i1 %10, label %11, label %32

11:                                               ; preds = %9
  br label %12

12:                                               ; preds = %27, %11
  %.0139 = phi i32 [ 1, %11 ], [ %28, %27 ]
  %13 = icmp sle i32 %.0139, 5
  br i1 %13, label %14, label %29

14:                                               ; preds = %12
  br label %15

15:                                               ; preds = %24, %14
  %.0137 = phi i32 [ 1, %14 ], [ %25, %24 ]
  %16 = icmp sle i32 %.0137, 5
  br i1 %16, label %17, label %26

17:                                               ; preds = %15
  %18 = mul nsw i32 8, %.0137
  %19 = add nsw i32 %.0139, %18
  %20 = mul nsw i32 8, %19
  %21 = add nsw i32 %.0153, %20
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %22
  store i32 0, ptr %23, align 4
  br label %24

24:                                               ; preds = %17
  %25 = add nsw i32 %.0137, 1
  br label %15, !llvm.loop !14

26:                                               ; preds = %15
  br label %27

27:                                               ; preds = %26
  %28 = add nsw i32 %.0139, 1
  br label %12, !llvm.loop !15

29:                                               ; preds = %12
  br label %30

30:                                               ; preds = %29
  %31 = add nsw i32 %.0153, 1
  br label %9, !llvm.loop !16

32:                                               ; preds = %9
  br label %33

33:                                               ; preds = %46, %32
  %.1154 = phi i32 [ 0, %32 ], [ %47, %46 ]
  %34 = icmp sle i32 %.1154, 12
  br i1 %34, label %35, label %48

35:                                               ; preds = %33
  br label %36

36:                                               ; preds = %43, %35
  %.1 = phi i32 [ 0, %35 ], [ %44, %43 ]
  %37 = icmp sle i32 %.1, 511
  br i1 %37, label %38, label %45

38:                                               ; preds = %36
  %39 = sext i32 %.1154 to i64
  %40 = getelementptr inbounds [13 x [512 x i32]], ptr @p, i64 0, i64 %39
  %41 = sext i32 %.1 to i64
  %42 = getelementptr inbounds [512 x i32], ptr %40, i64 0, i64 %41
  store i32 0, ptr %42, align 4
  br label %43

43:                                               ; preds = %38
  %44 = add nsw i32 %.1, 1
  br label %36, !llvm.loop !17

45:                                               ; preds = %36
  br label %46

46:                                               ; preds = %45
  %47 = add nsw i32 %.1154, 1
  br label %33, !llvm.loop !18

48:                                               ; preds = %33
  br label %49

49:                                               ; preds = %68, %48
  %.2155 = phi i32 [ 0, %48 ], [ %69, %68 ]
  %50 = icmp sle i32 %.2155, 3
  br i1 %50, label %51, label %70

51:                                               ; preds = %49
  br label %52

52:                                               ; preds = %65, %51
  %.1140 = phi i32 [ 0, %51 ], [ %66, %65 ]
  %53 = icmp sle i32 %.1140, 1
  br i1 %53, label %54, label %67

54:                                               ; preds = %52
  br label %55

55:                                               ; preds = %63, %54
  %.1138 = phi i32 [ 0, %54 ], [ 1, %63 ]
  %56 = icmp sle i32 %.1138, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %55
  %58 = add nuw nsw i32 %.1140, 0
  %59 = mul nuw nsw i32 8, %58
  %60 = add nsw i32 %.2155, %59
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [512 x i32], ptr @p, i64 0, i64 %61
  store i32 1, ptr %62, align 4
  br label %63

63:                                               ; preds = %57
  br label %55, !llvm.loop !19

64:                                               ; preds = %55
  br label %65

65:                                               ; preds = %64
  %66 = add nuw nsw i32 %.1140, 1
  br label %52, !llvm.loop !20

67:                                               ; preds = %52
  br label %68

68:                                               ; preds = %67
  %69 = add nsw i32 %.2155, 1
  br label %49, !llvm.loop !21

70:                                               ; preds = %49
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %71

71:                                               ; preds = %91, %70
  %.3156 = phi i32 [ 0, %70 ], [ %92, %91 ]
  %72 = icmp sle i32 %.3156, 1
  br i1 %72, label %73, label %93

73:                                               ; preds = %71
  br label %74

74:                                               ; preds = %89, %73
  %.2141 = phi i32 [ 0, %73 ], [ 1, %89 ]
  %75 = icmp sle i32 %.2141, 0
  br i1 %75, label %76, label %90

76:                                               ; preds = %74
  br label %77

77:                                               ; preds = %86, %76
  %.2 = phi i32 [ 0, %76 ], [ %87, %86 ]
  %78 = icmp sle i32 %.2, 3
  br i1 %78, label %79, label %88

79:                                               ; preds = %77
  %80 = mul nsw i32 8, %.2
  %81 = add nuw nsw i32 0, %80
  %82 = mul nsw i32 8, %81
  %83 = add nsw i32 %.3156, %82
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 0, i64 %84
  store i32 1, ptr %85, align 4
  br label %86

86:                                               ; preds = %79
  %87 = add nsw i32 %.2, 1
  br label %77, !llvm.loop !22

88:                                               ; preds = %77
  br label %89

89:                                               ; preds = %88
  br label %74, !llvm.loop !23

90:                                               ; preds = %74
  br label %91

91:                                               ; preds = %90
  %92 = add nuw nsw i32 %.3156, 1
  br label %71, !llvm.loop !24

93:                                               ; preds = %71
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %94

94:                                               ; preds = %115, %93
  %.4157 = phi i32 [ 0, %93 ], [ 1, %115 ]
  %95 = icmp sle i32 %.4157, 0
  br i1 %95, label %96, label %116

96:                                               ; preds = %94
  br label %97

97:                                               ; preds = %112, %96
  %.3142 = phi i32 [ 0, %96 ], [ %113, %112 ]
  %98 = icmp sle i32 %.3142, 3
  br i1 %98, label %99, label %114

99:                                               ; preds = %97
  br label %100

100:                                              ; preds = %109, %99
  %.3 = phi i32 [ 0, %99 ], [ %110, %109 ]
  %101 = icmp sle i32 %.3, 1
  br i1 %101, label %102, label %111

102:                                              ; preds = %100
  %103 = mul nuw nsw i32 8, %.3
  %104 = add nsw i32 %.3142, %103
  %105 = mul nsw i32 8, %104
  %106 = add nuw nsw i32 0, %105
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 0, i64 %107
  store i32 1, ptr %108, align 4
  br label %109

109:                                              ; preds = %102
  %110 = add nuw nsw i32 %.3, 1
  br label %100, !llvm.loop !25

111:                                              ; preds = %100
  br label %112

112:                                              ; preds = %111
  %113 = add nsw i32 %.3142, 1
  br label %97, !llvm.loop !26

114:                                              ; preds = %97
  br label %115

115:                                              ; preds = %114
  br label %94, !llvm.loop !27

116:                                              ; preds = %94
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %117

117:                                              ; preds = %136, %116
  %.5158 = phi i32 [ 0, %116 ], [ %137, %136 ]
  %118 = icmp sle i32 %.5158, 1
  br i1 %118, label %119, label %138

119:                                              ; preds = %117
  br label %120

120:                                              ; preds = %133, %119
  %.4143 = phi i32 [ 0, %119 ], [ %134, %133 ]
  %121 = icmp sle i32 %.4143, 3
  br i1 %121, label %122, label %135

122:                                              ; preds = %120
  br label %123

123:                                              ; preds = %131, %122
  %.4 = phi i32 [ 0, %122 ], [ 1, %131 ]
  %124 = icmp sle i32 %.4, 0
  br i1 %124, label %125, label %132

125:                                              ; preds = %123
  %126 = add nuw nsw i32 %.4143, 0
  %127 = mul nsw i32 8, %126
  %128 = add nsw i32 %.5158, %127
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 0, i64 %129
  store i32 1, ptr %130, align 4
  br label %131

131:                                              ; preds = %125
  br label %123, !llvm.loop !28

132:                                              ; preds = %123
  br label %133

133:                                              ; preds = %132
  %134 = add nsw i32 %.4143, 1
  br label %120, !llvm.loop !29

135:                                              ; preds = %120
  br label %136

136:                                              ; preds = %135
  %137 = add nuw nsw i32 %.5158, 1
  br label %117, !llvm.loop !30

138:                                              ; preds = %117
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %139

139:                                              ; preds = %159, %138
  %.6159 = phi i32 [ 0, %138 ], [ %160, %159 ]
  %140 = icmp sle i32 %.6159, 3
  br i1 %140, label %141, label %161

141:                                              ; preds = %139
  br label %142

142:                                              ; preds = %157, %141
  %.5144 = phi i32 [ 0, %141 ], [ 1, %157 ]
  %143 = icmp sle i32 %.5144, 0
  br i1 %143, label %144, label %158

144:                                              ; preds = %142
  br label %145

145:                                              ; preds = %154, %144
  %.5 = phi i32 [ 0, %144 ], [ %155, %154 ]
  %146 = icmp sle i32 %.5, 1
  br i1 %146, label %147, label %156

147:                                              ; preds = %145
  %148 = mul nuw nsw i32 8, %.5
  %149 = add nuw nsw i32 0, %148
  %150 = mul nuw nsw i32 8, %149
  %151 = add nsw i32 %.6159, %150
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 0, i64 %152
  store i32 1, ptr %153, align 4
  br label %154

154:                                              ; preds = %147
  %155 = add nuw nsw i32 %.5, 1
  br label %145, !llvm.loop !31

156:                                              ; preds = %145
  br label %157

157:                                              ; preds = %156
  br label %142, !llvm.loop !32

158:                                              ; preds = %142
  br label %159

159:                                              ; preds = %158
  %160 = add nsw i32 %.6159, 1
  br label %139, !llvm.loop !33

161:                                              ; preds = %139
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %162

162:                                              ; preds = %183, %161
  %.7160 = phi i32 [ 0, %161 ], [ 1, %183 ]
  %163 = icmp sle i32 %.7160, 0
  br i1 %163, label %164, label %184

164:                                              ; preds = %162
  br label %165

165:                                              ; preds = %180, %164
  %.6145 = phi i32 [ 0, %164 ], [ %181, %180 ]
  %166 = icmp sle i32 %.6145, 1
  br i1 %166, label %167, label %182

167:                                              ; preds = %165
  br label %168

168:                                              ; preds = %177, %167
  %.6 = phi i32 [ 0, %167 ], [ %178, %177 ]
  %169 = icmp sle i32 %.6, 3
  br i1 %169, label %170, label %179

170:                                              ; preds = %168
  %171 = mul nsw i32 8, %.6
  %172 = add nsw i32 %.6145, %171
  %173 = mul nsw i32 8, %172
  %174 = add nuw nsw i32 0, %173
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 0, i64 %175
  store i32 1, ptr %176, align 4
  br label %177

177:                                              ; preds = %170
  %178 = add nsw i32 %.6, 1
  br label %168, !llvm.loop !34

179:                                              ; preds = %168
  br label %180

180:                                              ; preds = %179
  %181 = add nuw nsw i32 %.6145, 1
  br label %165, !llvm.loop !35

182:                                              ; preds = %165
  br label %183

183:                                              ; preds = %182
  br label %162, !llvm.loop !36

184:                                              ; preds = %162
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %185

185:                                              ; preds = %201, %184
  %.8161 = phi i32 [ 0, %184 ], [ %202, %201 ]
  %186 = icmp sle i32 %.8161, 2
  br i1 %186, label %187, label %203

187:                                              ; preds = %185
  br label %188

188:                                              ; preds = %199, %187
  %.7146 = phi i32 [ 0, %187 ], [ 1, %199 ]
  %189 = icmp sle i32 %.7146, 0
  br i1 %189, label %190, label %200

190:                                              ; preds = %188
  br label %191

191:                                              ; preds = %197, %190
  %.7 = phi i32 [ 0, %190 ], [ 1, %197 ]
  %192 = icmp sle i32 %.7, 0
  br i1 %192, label %193, label %198

193:                                              ; preds = %191
  %194 = add nuw nsw i32 %.8161, 0
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 0, i64 %195
  store i32 1, ptr %196, align 4
  br label %197

197:                                              ; preds = %193
  br label %191, !llvm.loop !37

198:                                              ; preds = %191
  br label %199

199:                                              ; preds = %198
  br label %188, !llvm.loop !38

200:                                              ; preds = %188
  br label %201

201:                                              ; preds = %200
  %202 = add nsw i32 %.8161, 1
  br label %185, !llvm.loop !39

203:                                              ; preds = %185
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %204

204:                                              ; preds = %223, %203
  %.9162 = phi i32 [ 0, %203 ], [ 1, %223 ]
  %205 = icmp sle i32 %.9162, 0
  br i1 %205, label %206, label %224

206:                                              ; preds = %204
  br label %207

207:                                              ; preds = %220, %206
  %.8147 = phi i32 [ 0, %206 ], [ %221, %220 ]
  %208 = icmp sle i32 %.8147, 2
  br i1 %208, label %209, label %222

209:                                              ; preds = %207
  br label %210

210:                                              ; preds = %218, %209
  %.8 = phi i32 [ 0, %209 ], [ 1, %218 ]
  %211 = icmp sle i32 %.8, 0
  br i1 %211, label %212, label %219

212:                                              ; preds = %210
  %213 = add nuw nsw i32 %.8147, 0
  %214 = mul nsw i32 8, %213
  %215 = add nuw nsw i32 0, %214
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 0, i64 %216
  store i32 1, ptr %217, align 4
  br label %218

218:                                              ; preds = %212
  br label %210, !llvm.loop !40

219:                                              ; preds = %210
  br label %220

220:                                              ; preds = %219
  %221 = add nsw i32 %.8147, 1
  br label %207, !llvm.loop !41

222:                                              ; preds = %207
  br label %223

223:                                              ; preds = %222
  br label %204, !llvm.loop !42

224:                                              ; preds = %204
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %225

225:                                              ; preds = %245, %224
  %.10163 = phi i32 [ 0, %224 ], [ 1, %245 ]
  %226 = icmp sle i32 %.10163, 0
  br i1 %226, label %227, label %246

227:                                              ; preds = %225
  br label %228

228:                                              ; preds = %243, %227
  %.9148 = phi i32 [ 0, %227 ], [ 1, %243 ]
  %229 = icmp sle i32 %.9148, 0
  br i1 %229, label %230, label %244

230:                                              ; preds = %228
  br label %231

231:                                              ; preds = %240, %230
  %.9 = phi i32 [ 0, %230 ], [ %241, %240 ]
  %232 = icmp sle i32 %.9, 2
  br i1 %232, label %233, label %242

233:                                              ; preds = %231
  %234 = mul nsw i32 8, %.9
  %235 = add nuw nsw i32 0, %234
  %236 = mul nsw i32 8, %235
  %237 = add nuw nsw i32 0, %236
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 0, i64 %238
  store i32 1, ptr %239, align 4
  br label %240

240:                                              ; preds = %233
  %241 = add nsw i32 %.9, 1
  br label %231, !llvm.loop !43

242:                                              ; preds = %231
  br label %243

243:                                              ; preds = %242
  br label %228, !llvm.loop !44

244:                                              ; preds = %228
  br label %245

245:                                              ; preds = %244
  br label %225, !llvm.loop !45

246:                                              ; preds = %225
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %247

247:                                              ; preds = %266, %246
  %.11164 = phi i32 [ 0, %246 ], [ %267, %266 ]
  %248 = icmp sle i32 %.11164, 1
  br i1 %248, label %249, label %268

249:                                              ; preds = %247
  br label %250

250:                                              ; preds = %263, %249
  %.10149 = phi i32 [ 0, %249 ], [ %264, %263 ]
  %251 = icmp sle i32 %.10149, 1
  br i1 %251, label %252, label %265

252:                                              ; preds = %250
  br label %253

253:                                              ; preds = %261, %252
  %.10 = phi i32 [ 0, %252 ], [ 1, %261 ]
  %254 = icmp sle i32 %.10, 0
  br i1 %254, label %255, label %262

255:                                              ; preds = %253
  %256 = add nuw nsw i32 %.10149, 0
  %257 = mul nuw nsw i32 8, %256
  %258 = add nuw nsw i32 %.11164, %257
  %259 = zext nneg i32 %258 to i64
  %260 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 0, i64 %259
  store i32 1, ptr %260, align 4
  br label %261

261:                                              ; preds = %255
  br label %253, !llvm.loop !46

262:                                              ; preds = %253
  br label %263

263:                                              ; preds = %262
  %264 = add nuw nsw i32 %.10149, 1
  br label %250, !llvm.loop !47

265:                                              ; preds = %250
  br label %266

266:                                              ; preds = %265
  %267 = add nuw nsw i32 %.11164, 1
  br label %247, !llvm.loop !48

268:                                              ; preds = %247
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %269

269:                                              ; preds = %289, %268
  %.12165 = phi i32 [ 0, %268 ], [ %290, %289 ]
  %270 = icmp sle i32 %.12165, 1
  br i1 %270, label %271, label %291

271:                                              ; preds = %269
  br label %272

272:                                              ; preds = %287, %271
  %.11150 = phi i32 [ 0, %271 ], [ 1, %287 ]
  %273 = icmp sle i32 %.11150, 0
  br i1 %273, label %274, label %288

274:                                              ; preds = %272
  br label %275

275:                                              ; preds = %284, %274
  %.11 = phi i32 [ 0, %274 ], [ %285, %284 ]
  %276 = icmp sle i32 %.11, 1
  br i1 %276, label %277, label %286

277:                                              ; preds = %275
  %278 = mul nuw nsw i32 8, %.11
  %279 = add nuw nsw i32 0, %278
  %280 = mul nuw nsw i32 8, %279
  %281 = add nuw nsw i32 %.12165, %280
  %282 = zext nneg i32 %281 to i64
  %283 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 0, i64 %282
  store i32 1, ptr %283, align 4
  br label %284

284:                                              ; preds = %277
  %285 = add nuw nsw i32 %.11, 1
  br label %275, !llvm.loop !49

286:                                              ; preds = %275
  br label %287

287:                                              ; preds = %286
  br label %272, !llvm.loop !50

288:                                              ; preds = %272
  br label %289

289:                                              ; preds = %288
  %290 = add nuw nsw i32 %.12165, 1
  br label %269, !llvm.loop !51

291:                                              ; preds = %269
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %292

292:                                              ; preds = %313, %291
  %.13166 = phi i32 [ 0, %291 ], [ 1, %313 ]
  %293 = icmp sle i32 %.13166, 0
  br i1 %293, label %294, label %314

294:                                              ; preds = %292
  br label %295

295:                                              ; preds = %310, %294
  %.12151 = phi i32 [ 0, %294 ], [ %311, %310 ]
  %296 = icmp sle i32 %.12151, 1
  br i1 %296, label %297, label %312

297:                                              ; preds = %295
  br label %298

298:                                              ; preds = %307, %297
  %.12 = phi i32 [ 0, %297 ], [ %308, %307 ]
  %299 = icmp sle i32 %.12, 1
  br i1 %299, label %300, label %309

300:                                              ; preds = %298
  %301 = mul nuw nsw i32 8, %.12
  %302 = add nuw nsw i32 %.12151, %301
  %303 = mul nuw nsw i32 8, %302
  %304 = add nuw nsw i32 0, %303
  %305 = zext nneg i32 %304 to i64
  %306 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 0, i64 %305
  store i32 1, ptr %306, align 4
  br label %307

307:                                              ; preds = %300
  %308 = add nuw nsw i32 %.12, 1
  br label %298, !llvm.loop !52

309:                                              ; preds = %298
  br label %310

310:                                              ; preds = %309
  %311 = add nuw nsw i32 %.12151, 1
  br label %295, !llvm.loop !53

312:                                              ; preds = %295
  br label %313

313:                                              ; preds = %312
  br label %292, !llvm.loop !54

314:                                              ; preds = %292
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %315

315:                                              ; preds = %336, %314
  %.14 = phi i32 [ 0, %314 ], [ %337, %336 ]
  %316 = icmp sle i32 %.14, 1
  br i1 %316, label %317, label %338

317:                                              ; preds = %315
  br label %318

318:                                              ; preds = %333, %317
  %.13152 = phi i32 [ 0, %317 ], [ %334, %333 ]
  %319 = icmp sle i32 %.13152, 1
  br i1 %319, label %320, label %335

320:                                              ; preds = %318
  br label %321

321:                                              ; preds = %330, %320
  %.13 = phi i32 [ 0, %320 ], [ %331, %330 ]
  %322 = icmp sle i32 %.13, 1
  br i1 %322, label %323, label %332

323:                                              ; preds = %321
  %324 = mul nuw nsw i32 8, %.13
  %325 = add nuw nsw i32 %.13152, %324
  %326 = mul nuw nsw i32 8, %325
  %327 = add nuw nsw i32 %.14, %326
  %328 = zext nneg i32 %327 to i64
  %329 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 0, i64 %328
  store i32 1, ptr %329, align 4
  br label %330

330:                                              ; preds = %323
  %331 = add nuw nsw i32 %.13, 1
  br label %321, !llvm.loop !55

332:                                              ; preds = %321
  br label %333

333:                                              ; preds = %332
  %334 = add nuw nsw i32 %.13152, 1
  br label %318, !llvm.loop !56

335:                                              ; preds = %318
  br label %336

336:                                              ; preds = %335
  %337 = add nuw nsw i32 %.14, 1
  br label %315, !llvm.loop !57

338:                                              ; preds = %315
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 0, ptr @kount, align 4
  %339 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %341, label %343

341:                                              ; preds = %338
  %342 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %342, ptr @n, align 4
  br label %345

343:                                              ; preds = %338
  %344 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  br label %345

345:                                              ; preds = %343, %341
  %346 = load i32, ptr @n, align 4
  %347 = call i32 @Trial(i32 noundef %346)
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %351, label %349

349:                                              ; preds = %345
  %350 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  br label %357

351:                                              ; preds = %345
  %352 = load i32, ptr @kount, align 4
  %353 = icmp ne i32 %352, 2005
  br i1 %353, label %354, label %356

354:                                              ; preds = %351
  %355 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %356

356:                                              ; preds = %354, %351
  br label %357

357:                                              ; preds = %356, %349
  %358 = load i32, ptr @n, align 4
  %359 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %358)
  %360 = load i32, ptr @kount, align 4
  %361 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %360)
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %4, %0
  %.0 = phi i32 [ 0, %0 ], [ %5, %4 ]
  %2 = icmp slt i32 %.0, 100
  br i1 %2, label %3, label %6

3:                                                ; preds = %1
  call void @Puzzle()
  br label %4

4:                                                ; preds = %3
  %5 = add nsw i32 %.0, 1
  br label %1, !llvm.loop !58

6:                                                ; preds = %1
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
