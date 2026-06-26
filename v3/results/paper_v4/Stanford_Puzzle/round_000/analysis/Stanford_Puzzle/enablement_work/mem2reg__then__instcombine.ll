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
@str = private unnamed_addr constant [17 x i8] c"Error1 in Puzzle\00", align 1
@str.1 = private unnamed_addr constant [18 x i8] c"Error2 in Puzzle.\00", align 1
@str.2 = private unnamed_addr constant [18 x i8] c"Error3 in Puzzle.\00", align 1

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
  br label %3

3:                                                ; preds = %21, %2
  %.01 = phi i32 [ 0, %2 ], [ %22, %21 ]
  %4 = sext i32 %0 to i64
  %5 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %4
  %6 = load i32, ptr %5, align 4
  %.not = icmp sgt i32 %.01, %6
  br i1 %.not, label %23, label %7

7:                                                ; preds = %3
  %8 = sext i32 %0 to i64
  %9 = getelementptr inbounds [2048 x i8], ptr @p, i64 %8
  %10 = zext nneg i32 %.01 to i64
  %11 = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %10
  %12 = load i32, ptr %11, align 4
  %.not2 = icmp eq i32 %12, 0
  br i1 %.not2, label %20, label %13

13:                                               ; preds = %7
  %14 = add nsw i32 %1, %.01
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %15
  %17 = load i32, ptr %16, align 4
  %.not3 = icmp eq i32 %17, 0
  br i1 %.not3, label %19, label %18

18:                                               ; preds = %13
  br label %24

19:                                               ; preds = %13
  br label %20

20:                                               ; preds = %19, %7
  br label %21

21:                                               ; preds = %20
  %22 = add nuw nsw i32 %.01, 1
  br label %3, !llvm.loop !7

23:                                               ; preds = %3
  br label %24

24:                                               ; preds = %23, %18
  %.0 = phi i32 [ 0, %18 ], [ 1, %23 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Place(i32 noundef %0, i32 noundef %1) #0 {
  br label %3

3:                                                ; preds = %18, %2
  %.01 = phi i32 [ 0, %2 ], [ %19, %18 ]
  %4 = sext i32 %0 to i64
  %5 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %4
  %6 = load i32, ptr %5, align 4
  %.not = icmp sgt i32 %.01, %6
  br i1 %.not, label %20, label %7

7:                                                ; preds = %3
  %8 = sext i32 %0 to i64
  %9 = getelementptr inbounds [2048 x i8], ptr @p, i64 %8
  %10 = zext nneg i32 %.01 to i64
  %11 = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %10
  %12 = load i32, ptr %11, align 4
  %.not3 = icmp eq i32 %12, 0
  br i1 %.not3, label %17, label %13

13:                                               ; preds = %7
  %14 = add nsw i32 %1, %.01
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %15
  store i32 1, ptr %16, align 4
  br label %17

17:                                               ; preds = %13, %7
  br label %18

18:                                               ; preds = %17
  %19 = add nuw nsw i32 %.01, 1
  br label %3, !llvm.loop !9

20:                                               ; preds = %3
  %21 = sext i32 %0 to i64
  %22 = getelementptr inbounds [4 x i8], ptr @class, i64 %21
  %23 = load i32, ptr %22, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %24
  %26 = load i32, ptr %25, align 4
  %27 = add nsw i32 %26, -1
  %28 = sext i32 %0 to i64
  %29 = getelementptr inbounds [4 x i8], ptr @class, i64 %28
  %30 = load i32, ptr %29, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %31
  store i32 %27, ptr %32, align 4
  br label %33

33:                                               ; preds = %41, %20
  %.1 = phi i32 [ %1, %20 ], [ %42, %41 ]
  %34 = icmp slt i32 %.1, 512
  br i1 %34, label %35, label %43

35:                                               ; preds = %33
  %36 = sext i32 %.1 to i64
  %37 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %36
  %38 = load i32, ptr %37, align 4
  %.not2 = icmp eq i32 %38, 0
  br i1 %.not2, label %39, label %40

39:                                               ; preds = %35
  br label %44

40:                                               ; preds = %35
  br label %41

41:                                               ; preds = %40
  %42 = add nsw i32 %.1, 1
  br label %33, !llvm.loop !10

43:                                               ; preds = %33
  br label %44

44:                                               ; preds = %43, %39
  %.0 = phi i32 [ %.1, %39 ], [ 0, %43 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Remove(i32 noundef %0, i32 noundef %1) #0 {
  br label %3

3:                                                ; preds = %18, %2
  %.0 = phi i32 [ 0, %2 ], [ %19, %18 ]
  %4 = sext i32 %0 to i64
  %5 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %4
  %6 = load i32, ptr %5, align 4
  %.not = icmp sgt i32 %.0, %6
  br i1 %.not, label %20, label %7

7:                                                ; preds = %3
  %8 = sext i32 %0 to i64
  %9 = getelementptr inbounds [2048 x i8], ptr @p, i64 %8
  %10 = zext nneg i32 %.0 to i64
  %11 = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %10
  %12 = load i32, ptr %11, align 4
  %.not1 = icmp eq i32 %12, 0
  br i1 %.not1, label %17, label %13

13:                                               ; preds = %7
  %14 = add nsw i32 %1, %.0
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %15
  store i32 0, ptr %16, align 4
  br label %17

17:                                               ; preds = %13, %7
  br label %18

18:                                               ; preds = %17
  %19 = add nuw nsw i32 %.0, 1
  br label %3, !llvm.loop !11

20:                                               ; preds = %3
  %21 = sext i32 %0 to i64
  %22 = getelementptr inbounds [4 x i8], ptr @class, i64 %21
  %23 = load i32, ptr %22, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %24
  %26 = load i32, ptr %25, align 4
  %27 = add nsw i32 %26, 1
  %28 = sext i32 %0 to i64
  %29 = getelementptr inbounds [4 x i8], ptr @class, i64 %28
  %30 = load i32, ptr %29, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %31
  store i32 %27, ptr %32, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Trial(i32 noundef %0) #0 {
  %2 = load i32, ptr @kount, align 4
  %3 = add nsw i32 %2, 1
  store i32 %3, ptr @kount, align 4
  br label %4

4:                                                ; preds = %25, %1
  %.01 = phi i32 [ 0, %1 ], [ %26, %25 ]
  %5 = icmp samesign ult i32 %.01, 13
  br i1 %5, label %6, label %27

6:                                                ; preds = %4
  %7 = zext nneg i32 %.01 to i64
  %8 = getelementptr inbounds nuw [4 x i8], ptr @class, i64 %7
  %9 = load i32, ptr %8, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %10
  %12 = load i32, ptr %11, align 4
  %.not = icmp eq i32 %12, 0
  br i1 %.not, label %24, label %13

13:                                               ; preds = %6
  %14 = call i32 @Fit(i32 noundef %.01, i32 noundef %0)
  %.not2 = icmp eq i32 %14, 0
  br i1 %.not2, label %23, label %15

15:                                               ; preds = %13
  %16 = call i32 @Place(i32 noundef %.01, i32 noundef %0)
  %17 = call i32 @Trial(i32 noundef %16)
  %.not3 = icmp eq i32 %17, 0
  br i1 %.not3, label %18, label %20

18:                                               ; preds = %15
  %19 = icmp eq i32 %16, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %18, %15
  br label %28

21:                                               ; preds = %18
  call void @Remove(i32 noundef %.01, i32 noundef %0)
  br label %22

22:                                               ; preds = %21
  br label %23

23:                                               ; preds = %22, %13
  br label %24

24:                                               ; preds = %23, %6
  br label %25

25:                                               ; preds = %24
  %26 = add nuw nsw i32 %.01, 1
  br label %4, !llvm.loop !12

27:                                               ; preds = %4
  br label %28

28:                                               ; preds = %27, %20
  %.0 = phi i32 [ 1, %20 ], [ 0, %27 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Puzzle() #0 {
  br label %1

1:                                                ; preds = %6, %0
  %.032 = phi i32 [ 0, %0 ], [ %7, %6 ]
  %2 = icmp samesign ult i32 %.032, 512
  br i1 %2, label %3, label %8

3:                                                ; preds = %1
  %4 = zext nneg i32 %.032 to i64
  %5 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %4
  store i32 1, ptr %5, align 4
  br label %6

6:                                                ; preds = %3
  %7 = add nuw nsw i32 %.032, 1
  br label %1, !llvm.loop !13

8:                                                ; preds = %1
  br label %9

9:                                                ; preds = %30, %8
  %.0 = phi i32 [ 1, %8 ], [ %31, %30 ]
  %10 = icmp samesign ult i32 %.0, 6
  br i1 %10, label %11, label %32

11:                                               ; preds = %9
  br label %12

12:                                               ; preds = %27, %11
  %.01 = phi i32 [ 1, %11 ], [ %28, %27 ]
  %13 = icmp samesign ult i32 %.01, 6
  br i1 %13, label %14, label %29

14:                                               ; preds = %12
  br label %15

15:                                               ; preds = %24, %14
  %.018 = phi i32 [ 1, %14 ], [ %25, %24 ]
  %16 = icmp samesign ult i32 %.018, 6
  br i1 %16, label %17, label %26

17:                                               ; preds = %15
  %18 = shl nuw nsw i32 %.018, 6
  %19 = shl nuw nsw i32 %.01, 3
  %20 = or disjoint i32 %18, %19
  %21 = or disjoint i32 %.0, %20
  %22 = zext nneg i32 %21 to i64
  %23 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %22
  store i32 0, ptr %23, align 4
  br label %24

24:                                               ; preds = %17
  %25 = add nuw nsw i32 %.018, 1
  br label %15, !llvm.loop !14

26:                                               ; preds = %15
  br label %27

27:                                               ; preds = %26
  %28 = add nuw nsw i32 %.01, 1
  br label %12, !llvm.loop !15

29:                                               ; preds = %12
  br label %30

30:                                               ; preds = %29
  %31 = add nuw nsw i32 %.0, 1
  br label %9, !llvm.loop !16

32:                                               ; preds = %9
  br label %33

33:                                               ; preds = %46, %32
  %.1 = phi i32 [ 0, %32 ], [ %47, %46 ]
  %34 = icmp samesign ult i32 %.1, 13
  br i1 %34, label %35, label %48

35:                                               ; preds = %33
  br label %36

36:                                               ; preds = %43, %35
  %.133 = phi i32 [ 0, %35 ], [ %44, %43 ]
  %37 = icmp samesign ult i32 %.133, 512
  br i1 %37, label %38, label %45

38:                                               ; preds = %36
  %39 = zext nneg i32 %.1 to i64
  %40 = getelementptr inbounds nuw [2048 x i8], ptr @p, i64 %39
  %41 = zext nneg i32 %.133 to i64
  %42 = getelementptr inbounds nuw [4 x i8], ptr %40, i64 %41
  store i32 0, ptr %42, align 4
  br label %43

43:                                               ; preds = %38
  %44 = add nuw nsw i32 %.133, 1
  br label %36, !llvm.loop !17

45:                                               ; preds = %36
  br label %46

46:                                               ; preds = %45
  %47 = add nuw nsw i32 %.1, 1
  br label %33, !llvm.loop !18

48:                                               ; preds = %33
  br label %49

49:                                               ; preds = %66, %48
  %.2 = phi i32 [ 0, %48 ], [ %67, %66 ]
  %50 = icmp samesign ult i32 %.2, 4
  br i1 %50, label %51, label %68

51:                                               ; preds = %49
  br label %52

52:                                               ; preds = %63, %51
  %.15 = phi i32 [ 0, %51 ], [ %64, %63 ]
  %53 = icmp samesign ult i32 %.15, 2
  br i1 %53, label %54, label %65

54:                                               ; preds = %52
  br label %55

55:                                               ; preds = %61, %54
  %.119 = phi i1 [ true, %54 ], [ false, %61 ]
  br i1 %.119, label %56, label %62

56:                                               ; preds = %55
  %57 = shl nuw nsw i32 %.15, 3
  %58 = or disjoint i32 %.2, %57
  %59 = zext nneg i32 %58 to i64
  %60 = getelementptr inbounds nuw [4 x i8], ptr @p, i64 %59
  store i32 1, ptr %60, align 4
  br label %61

61:                                               ; preds = %56
  br label %55, !llvm.loop !19

62:                                               ; preds = %55
  br label %63

63:                                               ; preds = %62
  %64 = add nuw nsw i32 %.15, 1
  br label %52, !llvm.loop !20

65:                                               ; preds = %52
  br label %66

66:                                               ; preds = %65
  %67 = add nuw nsw i32 %.2, 1
  br label %49, !llvm.loop !21

68:                                               ; preds = %49
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %69

69:                                               ; preds = %87, %68
  %.3 = phi i32 [ 0, %68 ], [ %88, %87 ]
  %70 = icmp samesign ult i32 %.3, 2
  br i1 %70, label %71, label %89

71:                                               ; preds = %69
  br label %72

72:                                               ; preds = %85, %71
  %73 = phi i1 [ true, %71 ], [ false, %85 ]
  br i1 %73, label %74, label %86

74:                                               ; preds = %72
  br label %75

75:                                               ; preds = %82, %74
  %.220 = phi i32 [ 0, %74 ], [ %83, %82 ]
  %76 = icmp samesign ult i32 %.220, 4
  br i1 %76, label %77, label %84

77:                                               ; preds = %75
  %78 = shl nuw nsw i32 %.220, 6
  %79 = or disjoint i32 %.3, %78
  %80 = zext nneg i32 %79 to i64
  %81 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %80
  store i32 1, ptr %81, align 4
  br label %82

82:                                               ; preds = %77
  %83 = add nuw nsw i32 %.220, 1
  br label %75, !llvm.loop !22

84:                                               ; preds = %75
  br label %85

85:                                               ; preds = %84
  br label %72, !llvm.loop !23

86:                                               ; preds = %72
  br label %87

87:                                               ; preds = %86
  %88 = add nuw nsw i32 %.3, 1
  br label %69, !llvm.loop !24

89:                                               ; preds = %69
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %90

90:                                               ; preds = %110, %89
  %91 = phi i1 [ true, %89 ], [ false, %110 ]
  br i1 %91, label %92, label %111

92:                                               ; preds = %90
  br label %93

93:                                               ; preds = %107, %92
  %.37 = phi i32 [ 0, %92 ], [ %108, %107 ]
  %94 = icmp samesign ult i32 %.37, 4
  br i1 %94, label %95, label %109

95:                                               ; preds = %93
  br label %96

96:                                               ; preds = %104, %95
  %.321 = phi i32 [ 0, %95 ], [ %105, %104 ]
  %97 = icmp samesign ult i32 %.321, 2
  br i1 %97, label %98, label %106

98:                                               ; preds = %96
  %99 = shl nuw nsw i32 %.321, 6
  %100 = shl nuw nsw i32 %.37, 3
  %101 = or disjoint i32 %99, %100
  %102 = zext nneg i32 %101 to i64
  %103 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %102
  store i32 1, ptr %103, align 4
  br label %104

104:                                              ; preds = %98
  %105 = add nuw nsw i32 %.321, 1
  br label %96, !llvm.loop !25

106:                                              ; preds = %96
  br label %107

107:                                              ; preds = %106
  %108 = add nuw nsw i32 %.37, 1
  br label %93, !llvm.loop !26

109:                                              ; preds = %93
  br label %110

110:                                              ; preds = %109
  br label %90, !llvm.loop !27

111:                                              ; preds = %90
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %112

112:                                              ; preds = %129, %111
  %.5 = phi i32 [ 0, %111 ], [ %130, %129 ]
  %113 = icmp samesign ult i32 %.5, 2
  br i1 %113, label %114, label %131

114:                                              ; preds = %112
  br label %115

115:                                              ; preds = %126, %114
  %.48 = phi i32 [ 0, %114 ], [ %127, %126 ]
  %116 = icmp samesign ult i32 %.48, 4
  br i1 %116, label %117, label %128

117:                                              ; preds = %115
  br label %118

118:                                              ; preds = %124, %117
  %.422 = phi i1 [ true, %117 ], [ false, %124 ]
  br i1 %.422, label %119, label %125

119:                                              ; preds = %118
  %120 = shl nuw nsw i32 %.48, 3
  %121 = or disjoint i32 %.5, %120
  %122 = zext nneg i32 %121 to i64
  %123 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %122
  store i32 1, ptr %123, align 4
  br label %124

124:                                              ; preds = %119
  br label %118, !llvm.loop !28

125:                                              ; preds = %118
  br label %126

126:                                              ; preds = %125
  %127 = add nuw nsw i32 %.48, 1
  br label %115, !llvm.loop !29

128:                                              ; preds = %115
  br label %129

129:                                              ; preds = %128
  %130 = add nuw nsw i32 %.5, 1
  br label %112, !llvm.loop !30

131:                                              ; preds = %112
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %132

132:                                              ; preds = %150, %131
  %.6 = phi i32 [ 0, %131 ], [ %151, %150 ]
  %133 = icmp samesign ult i32 %.6, 4
  br i1 %133, label %134, label %152

134:                                              ; preds = %132
  br label %135

135:                                              ; preds = %148, %134
  %136 = phi i1 [ true, %134 ], [ false, %148 ]
  br i1 %136, label %137, label %149

137:                                              ; preds = %135
  br label %138

138:                                              ; preds = %145, %137
  %.523 = phi i32 [ 0, %137 ], [ %146, %145 ]
  %139 = icmp samesign ult i32 %.523, 2
  br i1 %139, label %140, label %147

140:                                              ; preds = %138
  %141 = shl nuw nsw i32 %.523, 6
  %142 = or disjoint i32 %.6, %141
  %143 = zext nneg i32 %142 to i64
  %144 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %143
  store i32 1, ptr %144, align 4
  br label %145

145:                                              ; preds = %140
  %146 = add nuw nsw i32 %.523, 1
  br label %138, !llvm.loop !31

147:                                              ; preds = %138
  br label %148

148:                                              ; preds = %147
  br label %135, !llvm.loop !32

149:                                              ; preds = %135
  br label %150

150:                                              ; preds = %149
  %151 = add nuw nsw i32 %.6, 1
  br label %132, !llvm.loop !33

152:                                              ; preds = %132
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %153

153:                                              ; preds = %173, %152
  %154 = phi i1 [ true, %152 ], [ false, %173 ]
  br i1 %154, label %155, label %174

155:                                              ; preds = %153
  br label %156

156:                                              ; preds = %170, %155
  %.610 = phi i32 [ 0, %155 ], [ %171, %170 ]
  %157 = icmp samesign ult i32 %.610, 2
  br i1 %157, label %158, label %172

158:                                              ; preds = %156
  br label %159

159:                                              ; preds = %167, %158
  %.624 = phi i32 [ 0, %158 ], [ %168, %167 ]
  %160 = icmp samesign ult i32 %.624, 4
  br i1 %160, label %161, label %169

161:                                              ; preds = %159
  %162 = shl nuw nsw i32 %.624, 6
  %163 = shl nuw nsw i32 %.610, 3
  %164 = or disjoint i32 %162, %163
  %165 = zext nneg i32 %164 to i64
  %166 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %165
  store i32 1, ptr %166, align 4
  br label %167

167:                                              ; preds = %161
  %168 = add nuw nsw i32 %.624, 1
  br label %159, !llvm.loop !34

169:                                              ; preds = %159
  br label %170

170:                                              ; preds = %169
  %171 = add nuw nsw i32 %.610, 1
  br label %156, !llvm.loop !35

172:                                              ; preds = %156
  br label %173

173:                                              ; preds = %172
  br label %153, !llvm.loop !36

174:                                              ; preds = %153
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %175

175:                                              ; preds = %189, %174
  %.8 = phi i32 [ 0, %174 ], [ %190, %189 ]
  %176 = icmp samesign ult i32 %.8, 3
  br i1 %176, label %177, label %191

177:                                              ; preds = %175
  br label %178

178:                                              ; preds = %187, %177
  %179 = phi i1 [ true, %177 ], [ false, %187 ]
  br i1 %179, label %180, label %188

180:                                              ; preds = %178
  br label %181

181:                                              ; preds = %185, %180
  %.725 = phi i1 [ true, %180 ], [ false, %185 ]
  br i1 %.725, label %182, label %186

182:                                              ; preds = %181
  %183 = zext nneg i32 %.8 to i64
  %184 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %183
  store i32 1, ptr %184, align 4
  br label %185

185:                                              ; preds = %182
  br label %181, !llvm.loop !37

186:                                              ; preds = %181
  br label %187

187:                                              ; preds = %186
  br label %178, !llvm.loop !38

188:                                              ; preds = %178
  br label %189

189:                                              ; preds = %188
  %190 = add nuw nsw i32 %.8, 1
  br label %175, !llvm.loop !39

191:                                              ; preds = %175
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %192

192:                                              ; preds = %208, %191
  %193 = phi i1 [ true, %191 ], [ false, %208 ]
  br i1 %193, label %194, label %209

194:                                              ; preds = %192
  br label %195

195:                                              ; preds = %205, %194
  %.812 = phi i32 [ 0, %194 ], [ %206, %205 ]
  %196 = icmp samesign ult i32 %.812, 3
  br i1 %196, label %197, label %207

197:                                              ; preds = %195
  br label %198

198:                                              ; preds = %203, %197
  %.826 = phi i1 [ true, %197 ], [ false, %203 ]
  br i1 %.826, label %199, label %204

199:                                              ; preds = %198
  %200 = shl nuw nsw i32 %.812, 3
  %201 = zext nneg i32 %200 to i64
  %202 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %201
  store i32 1, ptr %202, align 4
  br label %203

203:                                              ; preds = %199
  br label %198, !llvm.loop !40

204:                                              ; preds = %198
  br label %205

205:                                              ; preds = %204
  %206 = add nuw nsw i32 %.812, 1
  br label %195, !llvm.loop !41

207:                                              ; preds = %195
  br label %208

208:                                              ; preds = %207
  br label %192, !llvm.loop !42

209:                                              ; preds = %192
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %210

210:                                              ; preds = %227, %209
  %211 = phi i1 [ true, %209 ], [ false, %227 ]
  br i1 %211, label %212, label %228

212:                                              ; preds = %210
  br label %213

213:                                              ; preds = %225, %212
  %214 = phi i1 [ true, %212 ], [ false, %225 ]
  br i1 %214, label %215, label %226

215:                                              ; preds = %213
  br label %216

216:                                              ; preds = %222, %215
  %.927 = phi i32 [ 0, %215 ], [ %223, %222 ]
  %217 = icmp samesign ult i32 %.927, 3
  br i1 %217, label %218, label %224

218:                                              ; preds = %216
  %219 = shl nuw nsw i32 %.927, 6
  %220 = zext nneg i32 %219 to i64
  %221 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %220
  store i32 1, ptr %221, align 4
  br label %222

222:                                              ; preds = %218
  %223 = add nuw nsw i32 %.927, 1
  br label %216, !llvm.loop !43

224:                                              ; preds = %216
  br label %225

225:                                              ; preds = %224
  br label %213, !llvm.loop !44

226:                                              ; preds = %213
  br label %227

227:                                              ; preds = %226
  br label %210, !llvm.loop !45

228:                                              ; preds = %210
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %229

229:                                              ; preds = %246, %228
  %.11 = phi i32 [ 0, %228 ], [ %247, %246 ]
  %230 = icmp samesign ult i32 %.11, 2
  br i1 %230, label %231, label %248

231:                                              ; preds = %229
  br label %232

232:                                              ; preds = %243, %231
  %.1014 = phi i32 [ 0, %231 ], [ %244, %243 ]
  %233 = icmp samesign ult i32 %.1014, 2
  br i1 %233, label %234, label %245

234:                                              ; preds = %232
  br label %235

235:                                              ; preds = %241, %234
  %.1028 = phi i1 [ true, %234 ], [ false, %241 ]
  br i1 %.1028, label %236, label %242

236:                                              ; preds = %235
  %237 = shl nuw nsw i32 %.1014, 3
  %238 = or disjoint i32 %.11, %237
  %239 = zext nneg i32 %238 to i64
  %240 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %239
  store i32 1, ptr %240, align 4
  br label %241

241:                                              ; preds = %236
  br label %235, !llvm.loop !46

242:                                              ; preds = %235
  br label %243

243:                                              ; preds = %242
  %244 = add nuw nsw i32 %.1014, 1
  br label %232, !llvm.loop !47

245:                                              ; preds = %232
  br label %246

246:                                              ; preds = %245
  %247 = add nuw nsw i32 %.11, 1
  br label %229, !llvm.loop !48

248:                                              ; preds = %229
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %249

249:                                              ; preds = %267, %248
  %.12 = phi i32 [ 0, %248 ], [ %268, %267 ]
  %250 = icmp samesign ult i32 %.12, 2
  br i1 %250, label %251, label %269

251:                                              ; preds = %249
  br label %252

252:                                              ; preds = %265, %251
  %253 = phi i1 [ true, %251 ], [ false, %265 ]
  br i1 %253, label %254, label %266

254:                                              ; preds = %252
  br label %255

255:                                              ; preds = %262, %254
  %.1129 = phi i32 [ 0, %254 ], [ %263, %262 ]
  %256 = icmp samesign ult i32 %.1129, 2
  br i1 %256, label %257, label %264

257:                                              ; preds = %255
  %258 = shl nuw nsw i32 %.1129, 6
  %259 = or disjoint i32 %.12, %258
  %260 = zext nneg i32 %259 to i64
  %261 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %260
  store i32 1, ptr %261, align 4
  br label %262

262:                                              ; preds = %257
  %263 = add nuw nsw i32 %.1129, 1
  br label %255, !llvm.loop !49

264:                                              ; preds = %255
  br label %265

265:                                              ; preds = %264
  br label %252, !llvm.loop !50

266:                                              ; preds = %252
  br label %267

267:                                              ; preds = %266
  %268 = add nuw nsw i32 %.12, 1
  br label %249, !llvm.loop !51

269:                                              ; preds = %249
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %270

270:                                              ; preds = %290, %269
  %271 = phi i1 [ true, %269 ], [ false, %290 ]
  br i1 %271, label %272, label %291

272:                                              ; preds = %270
  br label %273

273:                                              ; preds = %287, %272
  %.1216 = phi i32 [ 0, %272 ], [ %288, %287 ]
  %274 = icmp samesign ult i32 %.1216, 2
  br i1 %274, label %275, label %289

275:                                              ; preds = %273
  br label %276

276:                                              ; preds = %284, %275
  %.1230 = phi i32 [ 0, %275 ], [ %285, %284 ]
  %277 = icmp samesign ult i32 %.1230, 2
  br i1 %277, label %278, label %286

278:                                              ; preds = %276
  %279 = shl nuw nsw i32 %.1230, 6
  %280 = shl nuw nsw i32 %.1216, 3
  %281 = or disjoint i32 %279, %280
  %282 = zext nneg i32 %281 to i64
  %283 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %282
  store i32 1, ptr %283, align 4
  br label %284

284:                                              ; preds = %278
  %285 = add nuw nsw i32 %.1230, 1
  br label %276, !llvm.loop !52

286:                                              ; preds = %276
  br label %287

287:                                              ; preds = %286
  %288 = add nuw nsw i32 %.1216, 1
  br label %273, !llvm.loop !53

289:                                              ; preds = %273
  br label %290

290:                                              ; preds = %289
  br label %270, !llvm.loop !54

291:                                              ; preds = %270
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %292

292:                                              ; preds = %313, %291
  %.14 = phi i32 [ 0, %291 ], [ %314, %313 ]
  %293 = icmp samesign ult i32 %.14, 2
  br i1 %293, label %294, label %315

294:                                              ; preds = %292
  br label %295

295:                                              ; preds = %310, %294
  %.1317 = phi i32 [ 0, %294 ], [ %311, %310 ]
  %296 = icmp samesign ult i32 %.1317, 2
  br i1 %296, label %297, label %312

297:                                              ; preds = %295
  br label %298

298:                                              ; preds = %307, %297
  %.1331 = phi i32 [ 0, %297 ], [ %308, %307 ]
  %299 = icmp samesign ult i32 %.1331, 2
  br i1 %299, label %300, label %309

300:                                              ; preds = %298
  %301 = shl nuw nsw i32 %.1331, 6
  %302 = shl nuw nsw i32 %.1317, 3
  %303 = or disjoint i32 %301, %302
  %304 = or disjoint i32 %.14, %303
  %305 = zext nneg i32 %304 to i64
  %306 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %305
  store i32 1, ptr %306, align 4
  br label %307

307:                                              ; preds = %300
  %308 = add nuw nsw i32 %.1331, 1
  br label %298, !llvm.loop !55

309:                                              ; preds = %298
  br label %310

310:                                              ; preds = %309
  %311 = add nuw nsw i32 %.1317, 1
  br label %295, !llvm.loop !56

312:                                              ; preds = %295
  br label %313

313:                                              ; preds = %312
  %314 = add nuw nsw i32 %.14, 1
  br label %292, !llvm.loop !57

315:                                              ; preds = %292
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 0, ptr @kount, align 4
  %316 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %316, 0
  br i1 %.not, label %319, label %317

317:                                              ; preds = %315
  %318 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %318, ptr @n, align 4
  br label %320

319:                                              ; preds = %315
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %320

320:                                              ; preds = %319, %317
  %321 = load i32, ptr @n, align 4
  %322 = call i32 @Trial(i32 noundef %321)
  %.not34 = icmp eq i32 %322, 0
  br i1 %.not34, label %323, label %324

323:                                              ; preds = %320
  %puts35 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %328

324:                                              ; preds = %320
  %325 = load i32, ptr @kount, align 4
  %.not36 = icmp eq i32 %325, 2005
  br i1 %.not36, label %327, label %326

326:                                              ; preds = %324
  %puts37 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %327

327:                                              ; preds = %326, %324
  br label %328

328:                                              ; preds = %327, %323
  %329 = load i32, ptr @n, align 4
  %330 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %329) #3
  %331 = load i32, ptr @kount, align 4
  %332 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %331) #3
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %4, %0
  %.0 = phi i32 [ 0, %0 ], [ %5, %4 ]
  %2 = icmp samesign ult i32 %.0, 100
  br i1 %2, label %3, label %6

3:                                                ; preds = %1
  call void @Puzzle()
  br label %4

4:                                                ; preds = %3
  %5 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !58

6:                                                ; preds = %1
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) #2

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { nounwind }

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
