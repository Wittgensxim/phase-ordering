; ModuleID = 'results\test_rule2\Stanford_Puzzle\round_002\output.ll'
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

3:                                                ; preds = %20, %2
  %storemerge = phi i32 [ 0, %2 ], [ %21, %20 ]
  %4 = sext i32 %0 to i64
  %5 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %4
  %6 = load i32, ptr %5, align 4
  %.not = icmp sgt i32 %storemerge, %6
  br i1 %.not, label %22, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds [2048 x i8], ptr @p, i64 %4
  %9 = sext i32 %storemerge to i64
  %10 = getelementptr inbounds [4 x i8], ptr %8, i64 %9
  %11 = load i32, ptr %10, align 4
  %.not2 = icmp eq i32 %11, 0
  br i1 %.not2, label %19, label %12

12:                                               ; preds = %7
  %13 = add nsw i32 %1, %storemerge
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %14
  %16 = load i32, ptr %15, align 4
  %.not3 = icmp eq i32 %16, 0
  br i1 %.not3, label %18, label %17

17:                                               ; preds = %12
  br label %23

18:                                               ; preds = %12
  br label %19

19:                                               ; preds = %18, %7
  br label %20

20:                                               ; preds = %19
  %21 = add nsw i32 %storemerge, 1
  br label %3, !llvm.loop !7

22:                                               ; preds = %3
  br label %23

23:                                               ; preds = %22, %17
  %storemerge1 = phi i32 [ 1, %22 ], [ 0, %17 ]
  ret i32 %storemerge1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Place(i32 noundef %0, i32 noundef %1) #0 {
  br label %3

3:                                                ; preds = %17, %2
  %storemerge = phi i32 [ 0, %2 ], [ %18, %17 ]
  %4 = sext i32 %0 to i64
  %5 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %4
  %6 = load i32, ptr %5, align 4
  %.not = icmp sgt i32 %storemerge, %6
  br i1 %.not, label %19, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds [2048 x i8], ptr @p, i64 %4
  %9 = sext i32 %storemerge to i64
  %10 = getelementptr inbounds [4 x i8], ptr %8, i64 %9
  %11 = load i32, ptr %10, align 4
  %.not4 = icmp eq i32 %11, 0
  br i1 %.not4, label %16, label %12

12:                                               ; preds = %7
  %13 = add nsw i32 %1, %storemerge
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %14
  store i32 1, ptr %15, align 4
  br label %16

16:                                               ; preds = %12, %7
  br label %17

17:                                               ; preds = %16
  %18 = add nsw i32 %storemerge, 1
  br label %3, !llvm.loop !9

19:                                               ; preds = %3
  %.lcssa = phi i64 [ %4, %3 ]
  %20 = getelementptr inbounds [4 x i8], ptr @class, i64 %.lcssa
  %21 = load i32, ptr %20, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %22
  %24 = load i32, ptr %23, align 4
  %25 = add nsw i32 %24, -1
  store i32 %25, ptr %23, align 4
  %26 = sext i32 %1 to i64
  %smax = call i32 @llvm.smax.i32(i32 %1, i32 512)
  %wide.trip.count = sext i32 %smax to i64
  br label %27

27:                                               ; preds = %34, %19
  %indvars.iv = phi i64 [ %indvars.iv.next, %34 ], [ %26, %19 ]
  %exitcond = icmp ne i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %28, label %35

28:                                               ; preds = %27
  %29 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %indvars.iv
  %30 = load i32, ptr %29, align 4
  %.not3 = icmp eq i32 %30, 0
  br i1 %.not3, label %31, label %33

31:                                               ; preds = %28
  %storemerge1.lcssa5.wide = phi i64 [ %indvars.iv, %28 ]
  %32 = trunc nsw i64 %storemerge1.lcssa5.wide to i32
  br label %36

33:                                               ; preds = %28
  br label %34

34:                                               ; preds = %33
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %27, !llvm.loop !10

35:                                               ; preds = %27
  br label %36

36:                                               ; preds = %35, %31
  %storemerge2 = phi i32 [ 0, %35 ], [ %32, %31 ]
  ret i32 %storemerge2
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Remove(i32 noundef %0, i32 noundef %1) #0 {
  br label %3

3:                                                ; preds = %17, %2
  %storemerge = phi i32 [ 0, %2 ], [ %18, %17 ]
  %4 = sext i32 %0 to i64
  %5 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %4
  %6 = load i32, ptr %5, align 4
  %.not = icmp sgt i32 %storemerge, %6
  br i1 %.not, label %19, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds [2048 x i8], ptr @p, i64 %4
  %9 = sext i32 %storemerge to i64
  %10 = getelementptr inbounds [4 x i8], ptr %8, i64 %9
  %11 = load i32, ptr %10, align 4
  %.not1 = icmp eq i32 %11, 0
  br i1 %.not1, label %16, label %12

12:                                               ; preds = %7
  %13 = add nsw i32 %1, %storemerge
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %14
  store i32 0, ptr %15, align 4
  br label %16

16:                                               ; preds = %12, %7
  br label %17

17:                                               ; preds = %16
  %18 = add nsw i32 %storemerge, 1
  br label %3, !llvm.loop !11

19:                                               ; preds = %3
  %.lcssa = phi i64 [ %4, %3 ]
  %20 = getelementptr inbounds [4 x i8], ptr @class, i64 %.lcssa
  %21 = load i32, ptr %20, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %22
  %24 = load i32, ptr %23, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, ptr %23, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Trial(i32 noundef %0) #0 {
  %2 = load i32, ptr @kount, align 4
  %3 = add nsw i32 %2, 1
  store i32 %3, ptr @kount, align 4
  br label %4

4:                                                ; preds = %25, %1
  %storemerge = phi i32 [ 0, %1 ], [ %26, %25 ]
  %5 = icmp slt i32 %storemerge, 13
  br i1 %5, label %6, label %27

6:                                                ; preds = %4
  %7 = sext i32 %storemerge to i64
  %8 = getelementptr inbounds [4 x i8], ptr @class, i64 %7
  %9 = load i32, ptr %8, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %10
  %12 = load i32, ptr %11, align 4
  %.not = icmp eq i32 %12, 0
  br i1 %.not, label %24, label %13

13:                                               ; preds = %6
  %14 = call i32 @Fit(i32 noundef %storemerge, i32 noundef %0)
  %.not2 = icmp eq i32 %14, 0
  br i1 %.not2, label %23, label %15

15:                                               ; preds = %13
  %16 = call i32 @Place(i32 noundef %storemerge, i32 noundef %0)
  %17 = call i32 @Trial(i32 noundef %16)
  %.not3 = icmp eq i32 %17, 0
  br i1 %.not3, label %18, label %20

18:                                               ; preds = %15
  %19 = icmp eq i32 %16, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %18, %15
  br label %28

21:                                               ; preds = %18
  call void @Remove(i32 noundef %storemerge, i32 noundef %0)
  br label %22

22:                                               ; preds = %21
  br label %23

23:                                               ; preds = %22, %13
  br label %24

24:                                               ; preds = %23, %6
  br label %25

25:                                               ; preds = %24
  %26 = add nsw i32 %storemerge, 1
  br label %4, !llvm.loop !12

27:                                               ; preds = %4
  br label %28

28:                                               ; preds = %27, %20
  %storemerge1 = phi i32 [ 0, %27 ], [ 1, %20 ]
  ret i32 %storemerge1
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Puzzle() #0 {
  br label %1

1:                                                ; preds = %6, %0
  %storemerge = phi i32 [ 0, %0 ], [ %7, %6 ]
  %2 = icmp slt i32 %storemerge, 512
  br i1 %2, label %3, label %8

3:                                                ; preds = %1
  %4 = sext i32 %storemerge to i64
  %5 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %4
  store i32 1, ptr %5, align 4
  br label %6

6:                                                ; preds = %3
  %7 = add nsw i32 %storemerge, 1
  br label %1, !llvm.loop !13

8:                                                ; preds = %1
  br label %9

9:                                                ; preds = %30, %8
  %storemerge1 = phi i32 [ 1, %8 ], [ %31, %30 ]
  %10 = icmp slt i32 %storemerge1, 6
  br i1 %10, label %11, label %32

11:                                               ; preds = %9
  br label %12

12:                                               ; preds = %27, %11
  %storemerge47 = phi i32 [ 1, %11 ], [ %28, %27 ]
  %13 = icmp slt i32 %storemerge47, 6
  br i1 %13, label %14, label %29

14:                                               ; preds = %12
  br label %15

15:                                               ; preds = %24, %14
  %storemerge48 = phi i32 [ 1, %14 ], [ %25, %24 ]
  %16 = icmp slt i32 %storemerge48, 6
  br i1 %16, label %17, label %26

17:                                               ; preds = %15
  %18 = shl i32 %storemerge48, 6
  %19 = shl i32 %storemerge47, 3
  %20 = add i32 %18, %19
  %21 = add nsw i32 %storemerge1, %20
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %22
  store i32 0, ptr %23, align 4
  br label %24

24:                                               ; preds = %17
  %25 = add nsw i32 %storemerge48, 1
  br label %15, !llvm.loop !14

26:                                               ; preds = %15
  br label %27

27:                                               ; preds = %26
  %28 = add nsw i32 %storemerge47, 1
  br label %12, !llvm.loop !15

29:                                               ; preds = %12
  br label %30

30:                                               ; preds = %29
  %31 = add nsw i32 %storemerge1, 1
  br label %9, !llvm.loop !16

32:                                               ; preds = %9
  br label %33

33:                                               ; preds = %46, %32
  %storemerge2 = phi i32 [ 0, %32 ], [ %47, %46 ]
  %34 = icmp slt i32 %storemerge2, 13
  br i1 %34, label %35, label %48

35:                                               ; preds = %33
  br label %36

36:                                               ; preds = %43, %35
  %storemerge46 = phi i32 [ 0, %35 ], [ %44, %43 ]
  %37 = icmp slt i32 %storemerge46, 512
  br i1 %37, label %38, label %45

38:                                               ; preds = %36
  %39 = sext i32 %storemerge2 to i64
  %40 = getelementptr inbounds [2048 x i8], ptr @p, i64 %39
  %41 = sext i32 %storemerge46 to i64
  %42 = getelementptr inbounds [4 x i8], ptr %40, i64 %41
  store i32 0, ptr %42, align 4
  br label %43

43:                                               ; preds = %38
  %44 = add nsw i32 %storemerge46, 1
  br label %36, !llvm.loop !17

45:                                               ; preds = %36
  br label %46

46:                                               ; preds = %45
  %47 = add nsw i32 %storemerge2, 1
  br label %33, !llvm.loop !18

48:                                               ; preds = %33
  br label %49

49:                                               ; preds = %70, %48
  %storemerge3 = phi i32 [ 0, %48 ], [ %71, %70 ]
  %50 = icmp slt i32 %storemerge3, 4
  br i1 %50, label %51, label %72

51:                                               ; preds = %49
  br label %52

52:                                               ; preds = %67, %51
  %storemerge44 = phi i32 [ 0, %51 ], [ %68, %67 ]
  %53 = icmp slt i32 %storemerge44, 2
  br i1 %53, label %54, label %69

54:                                               ; preds = %52
  br label %55

55:                                               ; preds = %64, %54
  %storemerge45 = phi i32 [ 0, %54 ], [ %65, %64 ]
  %56 = icmp slt i32 %storemerge45, 1
  br i1 %56, label %57, label %66

57:                                               ; preds = %55
  %58 = shl i32 %storemerge45, 6
  %59 = shl i32 %storemerge44, 3
  %60 = add i32 %58, %59
  %61 = add nsw i32 %storemerge3, %60
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [4 x i8], ptr @p, i64 %62
  store i32 1, ptr %63, align 4
  br label %64

64:                                               ; preds = %57
  %65 = add nsw i32 %storemerge45, 1
  br label %55, !llvm.loop !19

66:                                               ; preds = %55
  br label %67

67:                                               ; preds = %66
  %68 = add nsw i32 %storemerge44, 1
  br label %52, !llvm.loop !20

69:                                               ; preds = %52
  br label %70

70:                                               ; preds = %69
  %71 = add nsw i32 %storemerge3, 1
  br label %49, !llvm.loop !21

72:                                               ; preds = %49
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %73

73:                                               ; preds = %94, %72
  %storemerge4 = phi i32 [ 0, %72 ], [ %95, %94 ]
  %74 = icmp slt i32 %storemerge4, 2
  br i1 %74, label %75, label %96

75:                                               ; preds = %73
  br label %76

76:                                               ; preds = %91, %75
  %storemerge42 = phi i32 [ 0, %75 ], [ %92, %91 ]
  %77 = icmp slt i32 %storemerge42, 1
  br i1 %77, label %78, label %93

78:                                               ; preds = %76
  br label %79

79:                                               ; preds = %88, %78
  %storemerge43 = phi i32 [ 0, %78 ], [ %89, %88 ]
  %80 = icmp slt i32 %storemerge43, 4
  br i1 %80, label %81, label %90

81:                                               ; preds = %79
  %82 = shl i32 %storemerge43, 6
  %83 = shl i32 %storemerge42, 3
  %84 = add i32 %82, %83
  %85 = add nsw i32 %storemerge4, %84
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %86
  store i32 1, ptr %87, align 4
  br label %88

88:                                               ; preds = %81
  %89 = add nsw i32 %storemerge43, 1
  br label %79, !llvm.loop !22

90:                                               ; preds = %79
  br label %91

91:                                               ; preds = %90
  %92 = add nsw i32 %storemerge42, 1
  br label %76, !llvm.loop !23

93:                                               ; preds = %76
  br label %94

94:                                               ; preds = %93
  %95 = add nsw i32 %storemerge4, 1
  br label %73, !llvm.loop !24

96:                                               ; preds = %73
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %97

97:                                               ; preds = %118, %96
  %storemerge5 = phi i32 [ 0, %96 ], [ %119, %118 ]
  %98 = icmp slt i32 %storemerge5, 1
  br i1 %98, label %99, label %120

99:                                               ; preds = %97
  br label %100

100:                                              ; preds = %115, %99
  %storemerge40 = phi i32 [ 0, %99 ], [ %116, %115 ]
  %101 = icmp slt i32 %storemerge40, 4
  br i1 %101, label %102, label %117

102:                                              ; preds = %100
  br label %103

103:                                              ; preds = %112, %102
  %storemerge41 = phi i32 [ 0, %102 ], [ %113, %112 ]
  %104 = icmp slt i32 %storemerge41, 2
  br i1 %104, label %105, label %114

105:                                              ; preds = %103
  %106 = shl i32 %storemerge41, 6
  %107 = shl i32 %storemerge40, 3
  %108 = add i32 %106, %107
  %109 = add nsw i32 %storemerge5, %108
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %110
  store i32 1, ptr %111, align 4
  br label %112

112:                                              ; preds = %105
  %113 = add nsw i32 %storemerge41, 1
  br label %103, !llvm.loop !25

114:                                              ; preds = %103
  br label %115

115:                                              ; preds = %114
  %116 = add nsw i32 %storemerge40, 1
  br label %100, !llvm.loop !26

117:                                              ; preds = %100
  br label %118

118:                                              ; preds = %117
  %119 = add nsw i32 %storemerge5, 1
  br label %97, !llvm.loop !27

120:                                              ; preds = %97
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %121

121:                                              ; preds = %142, %120
  %storemerge6 = phi i32 [ 0, %120 ], [ %143, %142 ]
  %122 = icmp slt i32 %storemerge6, 2
  br i1 %122, label %123, label %144

123:                                              ; preds = %121
  br label %124

124:                                              ; preds = %139, %123
  %storemerge38 = phi i32 [ 0, %123 ], [ %140, %139 ]
  %125 = icmp slt i32 %storemerge38, 4
  br i1 %125, label %126, label %141

126:                                              ; preds = %124
  br label %127

127:                                              ; preds = %136, %126
  %storemerge39 = phi i32 [ 0, %126 ], [ %137, %136 ]
  %128 = icmp slt i32 %storemerge39, 1
  br i1 %128, label %129, label %138

129:                                              ; preds = %127
  %130 = shl i32 %storemerge39, 6
  %131 = shl i32 %storemerge38, 3
  %132 = add i32 %130, %131
  %133 = add nsw i32 %storemerge6, %132
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %134
  store i32 1, ptr %135, align 4
  br label %136

136:                                              ; preds = %129
  %137 = add nsw i32 %storemerge39, 1
  br label %127, !llvm.loop !28

138:                                              ; preds = %127
  br label %139

139:                                              ; preds = %138
  %140 = add nsw i32 %storemerge38, 1
  br label %124, !llvm.loop !29

141:                                              ; preds = %124
  br label %142

142:                                              ; preds = %141
  %143 = add nsw i32 %storemerge6, 1
  br label %121, !llvm.loop !30

144:                                              ; preds = %121
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %145

145:                                              ; preds = %166, %144
  %storemerge7 = phi i32 [ 0, %144 ], [ %167, %166 ]
  %146 = icmp slt i32 %storemerge7, 4
  br i1 %146, label %147, label %168

147:                                              ; preds = %145
  br label %148

148:                                              ; preds = %163, %147
  %storemerge36 = phi i32 [ 0, %147 ], [ %164, %163 ]
  %149 = icmp slt i32 %storemerge36, 1
  br i1 %149, label %150, label %165

150:                                              ; preds = %148
  br label %151

151:                                              ; preds = %160, %150
  %storemerge37 = phi i32 [ 0, %150 ], [ %161, %160 ]
  %152 = icmp slt i32 %storemerge37, 2
  br i1 %152, label %153, label %162

153:                                              ; preds = %151
  %154 = shl i32 %storemerge37, 6
  %155 = shl i32 %storemerge36, 3
  %156 = add i32 %154, %155
  %157 = add nsw i32 %storemerge7, %156
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %158
  store i32 1, ptr %159, align 4
  br label %160

160:                                              ; preds = %153
  %161 = add nsw i32 %storemerge37, 1
  br label %151, !llvm.loop !31

162:                                              ; preds = %151
  br label %163

163:                                              ; preds = %162
  %164 = add nsw i32 %storemerge36, 1
  br label %148, !llvm.loop !32

165:                                              ; preds = %148
  br label %166

166:                                              ; preds = %165
  %167 = add nsw i32 %storemerge7, 1
  br label %145, !llvm.loop !33

168:                                              ; preds = %145
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %169

169:                                              ; preds = %190, %168
  %storemerge8 = phi i32 [ 0, %168 ], [ %191, %190 ]
  %170 = icmp slt i32 %storemerge8, 1
  br i1 %170, label %171, label %192

171:                                              ; preds = %169
  br label %172

172:                                              ; preds = %187, %171
  %storemerge34 = phi i32 [ 0, %171 ], [ %188, %187 ]
  %173 = icmp slt i32 %storemerge34, 2
  br i1 %173, label %174, label %189

174:                                              ; preds = %172
  br label %175

175:                                              ; preds = %184, %174
  %storemerge35 = phi i32 [ 0, %174 ], [ %185, %184 ]
  %176 = icmp slt i32 %storemerge35, 4
  br i1 %176, label %177, label %186

177:                                              ; preds = %175
  %178 = shl i32 %storemerge35, 6
  %179 = shl i32 %storemerge34, 3
  %180 = add i32 %178, %179
  %181 = add nsw i32 %storemerge8, %180
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %182
  store i32 1, ptr %183, align 4
  br label %184

184:                                              ; preds = %177
  %185 = add nsw i32 %storemerge35, 1
  br label %175, !llvm.loop !34

186:                                              ; preds = %175
  br label %187

187:                                              ; preds = %186
  %188 = add nsw i32 %storemerge34, 1
  br label %172, !llvm.loop !35

189:                                              ; preds = %172
  br label %190

190:                                              ; preds = %189
  %191 = add nsw i32 %storemerge8, 1
  br label %169, !llvm.loop !36

192:                                              ; preds = %169
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %193

193:                                              ; preds = %214, %192
  %storemerge9 = phi i32 [ 0, %192 ], [ %215, %214 ]
  %194 = icmp slt i32 %storemerge9, 3
  br i1 %194, label %195, label %216

195:                                              ; preds = %193
  br label %196

196:                                              ; preds = %211, %195
  %storemerge32 = phi i32 [ 0, %195 ], [ %212, %211 ]
  %197 = icmp slt i32 %storemerge32, 1
  br i1 %197, label %198, label %213

198:                                              ; preds = %196
  br label %199

199:                                              ; preds = %208, %198
  %storemerge33 = phi i32 [ 0, %198 ], [ %209, %208 ]
  %200 = icmp slt i32 %storemerge33, 1
  br i1 %200, label %201, label %210

201:                                              ; preds = %199
  %202 = shl i32 %storemerge33, 6
  %203 = shl i32 %storemerge32, 3
  %204 = add i32 %202, %203
  %205 = add nsw i32 %storemerge9, %204
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %206
  store i32 1, ptr %207, align 4
  br label %208

208:                                              ; preds = %201
  %209 = add nsw i32 %storemerge33, 1
  br label %199, !llvm.loop !37

210:                                              ; preds = %199
  br label %211

211:                                              ; preds = %210
  %212 = add nsw i32 %storemerge32, 1
  br label %196, !llvm.loop !38

213:                                              ; preds = %196
  br label %214

214:                                              ; preds = %213
  %215 = add nsw i32 %storemerge9, 1
  br label %193, !llvm.loop !39

216:                                              ; preds = %193
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %217

217:                                              ; preds = %238, %216
  %storemerge10 = phi i32 [ 0, %216 ], [ %239, %238 ]
  %218 = icmp slt i32 %storemerge10, 1
  br i1 %218, label %219, label %240

219:                                              ; preds = %217
  br label %220

220:                                              ; preds = %235, %219
  %storemerge30 = phi i32 [ 0, %219 ], [ %236, %235 ]
  %221 = icmp slt i32 %storemerge30, 3
  br i1 %221, label %222, label %237

222:                                              ; preds = %220
  br label %223

223:                                              ; preds = %232, %222
  %storemerge31 = phi i32 [ 0, %222 ], [ %233, %232 ]
  %224 = icmp slt i32 %storemerge31, 1
  br i1 %224, label %225, label %234

225:                                              ; preds = %223
  %226 = shl i32 %storemerge31, 6
  %227 = shl i32 %storemerge30, 3
  %228 = add i32 %226, %227
  %229 = add nsw i32 %storemerge10, %228
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %230
  store i32 1, ptr %231, align 4
  br label %232

232:                                              ; preds = %225
  %233 = add nsw i32 %storemerge31, 1
  br label %223, !llvm.loop !40

234:                                              ; preds = %223
  br label %235

235:                                              ; preds = %234
  %236 = add nsw i32 %storemerge30, 1
  br label %220, !llvm.loop !41

237:                                              ; preds = %220
  br label %238

238:                                              ; preds = %237
  %239 = add nsw i32 %storemerge10, 1
  br label %217, !llvm.loop !42

240:                                              ; preds = %217
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %241

241:                                              ; preds = %262, %240
  %storemerge11 = phi i32 [ 0, %240 ], [ %263, %262 ]
  %242 = icmp slt i32 %storemerge11, 1
  br i1 %242, label %243, label %264

243:                                              ; preds = %241
  br label %244

244:                                              ; preds = %259, %243
  %storemerge28 = phi i32 [ 0, %243 ], [ %260, %259 ]
  %245 = icmp slt i32 %storemerge28, 1
  br i1 %245, label %246, label %261

246:                                              ; preds = %244
  br label %247

247:                                              ; preds = %256, %246
  %storemerge29 = phi i32 [ 0, %246 ], [ %257, %256 ]
  %248 = icmp slt i32 %storemerge29, 3
  br i1 %248, label %249, label %258

249:                                              ; preds = %247
  %250 = shl i32 %storemerge29, 6
  %251 = shl i32 %storemerge28, 3
  %252 = add i32 %250, %251
  %253 = add nsw i32 %storemerge11, %252
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %254
  store i32 1, ptr %255, align 4
  br label %256

256:                                              ; preds = %249
  %257 = add nsw i32 %storemerge29, 1
  br label %247, !llvm.loop !43

258:                                              ; preds = %247
  br label %259

259:                                              ; preds = %258
  %260 = add nsw i32 %storemerge28, 1
  br label %244, !llvm.loop !44

261:                                              ; preds = %244
  br label %262

262:                                              ; preds = %261
  %263 = add nsw i32 %storemerge11, 1
  br label %241, !llvm.loop !45

264:                                              ; preds = %241
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %265

265:                                              ; preds = %286, %264
  %storemerge12 = phi i32 [ 0, %264 ], [ %287, %286 ]
  %266 = icmp slt i32 %storemerge12, 2
  br i1 %266, label %267, label %288

267:                                              ; preds = %265
  br label %268

268:                                              ; preds = %283, %267
  %storemerge26 = phi i32 [ 0, %267 ], [ %284, %283 ]
  %269 = icmp slt i32 %storemerge26, 2
  br i1 %269, label %270, label %285

270:                                              ; preds = %268
  br label %271

271:                                              ; preds = %280, %270
  %storemerge27 = phi i32 [ 0, %270 ], [ %281, %280 ]
  %272 = icmp slt i32 %storemerge27, 1
  br i1 %272, label %273, label %282

273:                                              ; preds = %271
  %274 = shl i32 %storemerge27, 6
  %275 = shl i32 %storemerge26, 3
  %276 = add i32 %274, %275
  %277 = add nsw i32 %storemerge12, %276
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %278
  store i32 1, ptr %279, align 4
  br label %280

280:                                              ; preds = %273
  %281 = add nsw i32 %storemerge27, 1
  br label %271, !llvm.loop !46

282:                                              ; preds = %271
  br label %283

283:                                              ; preds = %282
  %284 = add nsw i32 %storemerge26, 1
  br label %268, !llvm.loop !47

285:                                              ; preds = %268
  br label %286

286:                                              ; preds = %285
  %287 = add nsw i32 %storemerge12, 1
  br label %265, !llvm.loop !48

288:                                              ; preds = %265
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %289

289:                                              ; preds = %310, %288
  %storemerge13 = phi i32 [ 0, %288 ], [ %311, %310 ]
  %290 = icmp slt i32 %storemerge13, 2
  br i1 %290, label %291, label %312

291:                                              ; preds = %289
  br label %292

292:                                              ; preds = %307, %291
  %storemerge24 = phi i32 [ 0, %291 ], [ %308, %307 ]
  %293 = icmp slt i32 %storemerge24, 1
  br i1 %293, label %294, label %309

294:                                              ; preds = %292
  br label %295

295:                                              ; preds = %304, %294
  %storemerge25 = phi i32 [ 0, %294 ], [ %305, %304 ]
  %296 = icmp slt i32 %storemerge25, 2
  br i1 %296, label %297, label %306

297:                                              ; preds = %295
  %298 = shl i32 %storemerge25, 6
  %299 = shl i32 %storemerge24, 3
  %300 = add i32 %298, %299
  %301 = add nsw i32 %storemerge13, %300
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %302
  store i32 1, ptr %303, align 4
  br label %304

304:                                              ; preds = %297
  %305 = add nsw i32 %storemerge25, 1
  br label %295, !llvm.loop !49

306:                                              ; preds = %295
  br label %307

307:                                              ; preds = %306
  %308 = add nsw i32 %storemerge24, 1
  br label %292, !llvm.loop !50

309:                                              ; preds = %292
  br label %310

310:                                              ; preds = %309
  %311 = add nsw i32 %storemerge13, 1
  br label %289, !llvm.loop !51

312:                                              ; preds = %289
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %313

313:                                              ; preds = %334, %312
  %storemerge14 = phi i32 [ 0, %312 ], [ %335, %334 ]
  %314 = icmp slt i32 %storemerge14, 1
  br i1 %314, label %315, label %336

315:                                              ; preds = %313
  br label %316

316:                                              ; preds = %331, %315
  %storemerge22 = phi i32 [ 0, %315 ], [ %332, %331 ]
  %317 = icmp slt i32 %storemerge22, 2
  br i1 %317, label %318, label %333

318:                                              ; preds = %316
  br label %319

319:                                              ; preds = %328, %318
  %storemerge23 = phi i32 [ 0, %318 ], [ %329, %328 ]
  %320 = icmp slt i32 %storemerge23, 2
  br i1 %320, label %321, label %330

321:                                              ; preds = %319
  %322 = shl i32 %storemerge23, 6
  %323 = shl i32 %storemerge22, 3
  %324 = add i32 %322, %323
  %325 = add nsw i32 %storemerge14, %324
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %326
  store i32 1, ptr %327, align 4
  br label %328

328:                                              ; preds = %321
  %329 = add nsw i32 %storemerge23, 1
  br label %319, !llvm.loop !52

330:                                              ; preds = %319
  br label %331

331:                                              ; preds = %330
  %332 = add nsw i32 %storemerge22, 1
  br label %316, !llvm.loop !53

333:                                              ; preds = %316
  br label %334

334:                                              ; preds = %333
  %335 = add nsw i32 %storemerge14, 1
  br label %313, !llvm.loop !54

336:                                              ; preds = %313
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %337

337:                                              ; preds = %358, %336
  %storemerge15 = phi i32 [ 0, %336 ], [ %359, %358 ]
  %338 = icmp slt i32 %storemerge15, 2
  br i1 %338, label %339, label %360

339:                                              ; preds = %337
  br label %340

340:                                              ; preds = %355, %339
  %storemerge20 = phi i32 [ 0, %339 ], [ %356, %355 ]
  %341 = icmp slt i32 %storemerge20, 2
  br i1 %341, label %342, label %357

342:                                              ; preds = %340
  br label %343

343:                                              ; preds = %352, %342
  %storemerge21 = phi i32 [ 0, %342 ], [ %353, %352 ]
  %344 = icmp slt i32 %storemerge21, 2
  br i1 %344, label %345, label %354

345:                                              ; preds = %343
  %346 = shl i32 %storemerge21, 6
  %347 = shl i32 %storemerge20, 3
  %348 = add i32 %346, %347
  %349 = add nsw i32 %storemerge15, %348
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %350
  store i32 1, ptr %351, align 4
  br label %352

352:                                              ; preds = %345
  %353 = add nsw i32 %storemerge21, 1
  br label %343, !llvm.loop !55

354:                                              ; preds = %343
  br label %355

355:                                              ; preds = %354
  %356 = add nsw i32 %storemerge20, 1
  br label %340, !llvm.loop !56

357:                                              ; preds = %340
  br label %358

358:                                              ; preds = %357
  %359 = add nsw i32 %storemerge15, 1
  br label %337, !llvm.loop !57

360:                                              ; preds = %337
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 0, ptr @kount, align 4
  %361 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %361, 0
  br i1 %.not, label %364, label %362

362:                                              ; preds = %360
  %363 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %363, ptr @n, align 4
  br label %365

364:                                              ; preds = %360
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %365

365:                                              ; preds = %364, %362
  %366 = load i32, ptr @n, align 4
  %367 = call i32 @Trial(i32 noundef %366)
  %.not16 = icmp eq i32 %367, 0
  br i1 %.not16, label %368, label %369

368:                                              ; preds = %365
  %puts17 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %373

369:                                              ; preds = %365
  %370 = load i32, ptr @kount, align 4
  %.not18 = icmp eq i32 %370, 2005
  br i1 %.not18, label %372, label %371

371:                                              ; preds = %369
  %puts19 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %372

372:                                              ; preds = %371, %369
  br label %373

373:                                              ; preds = %372, %368
  %374 = load i32, ptr @n, align 4
  %375 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %374) #4
  %376 = load i32, ptr @kount, align 4
  %377 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %376) #4
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %4, %0
  %storemerge = phi i32 [ 0, %0 ], [ %5, %4 ]
  %2 = icmp slt i32 %storemerge, 100
  br i1 %2, label %3, label %6

3:                                                ; preds = %1
  call void @Puzzle()
  br label %4

4:                                                ; preds = %3
  %5 = add nsw i32 %storemerge, 1
  br label %1, !llvm.loop !58

6:                                                ; preds = %1
  ret i32 0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) #3

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nofree nounwind }
attributes #4 = { nounwind }

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
