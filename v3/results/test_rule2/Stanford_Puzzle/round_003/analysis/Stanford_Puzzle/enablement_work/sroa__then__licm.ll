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
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %3
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds [2048 x i8], ptr @p, i64 %3
  br label %7

7:                                                ; preds = %20, %2
  %storemerge = phi i32 [ 0, %2 ], [ %21, %20 ]
  %.not = icmp sgt i32 %storemerge, %5
  br i1 %.not, label %22, label %8

8:                                                ; preds = %7
  %9 = sext i32 %storemerge to i64
  %10 = getelementptr inbounds [4 x i8], ptr %6, i64 %9
  %11 = load i32, ptr %10, align 4
  %.not2 = icmp eq i32 %11, 0
  br i1 %.not2, label %19, label %12

12:                                               ; preds = %8
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

19:                                               ; preds = %18, %8
  br label %20

20:                                               ; preds = %19
  %21 = add nsw i32 %storemerge, 1
  br label %7, !llvm.loop !7

22:                                               ; preds = %7
  br label %23

23:                                               ; preds = %22, %17
  %storemerge1 = phi i32 [ 1, %22 ], [ 0, %17 ]
  ret i32 %storemerge1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Place(i32 noundef %0, i32 noundef %1) #0 {
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %3
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds [2048 x i8], ptr @p, i64 %3
  br label %7

7:                                                ; preds = %17, %2
  %storemerge = phi i32 [ 0, %2 ], [ %18, %17 ]
  %.not = icmp sgt i32 %storemerge, %5
  br i1 %.not, label %19, label %8

8:                                                ; preds = %7
  %9 = sext i32 %storemerge to i64
  %10 = getelementptr inbounds [4 x i8], ptr %6, i64 %9
  %11 = load i32, ptr %10, align 4
  %.not4 = icmp eq i32 %11, 0
  br i1 %.not4, label %16, label %12

12:                                               ; preds = %8
  %13 = add nsw i32 %1, %storemerge
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %14
  store i32 1, ptr %15, align 4
  br label %16

16:                                               ; preds = %12, %8
  br label %17

17:                                               ; preds = %16
  %18 = add nsw i32 %storemerge, 1
  br label %7, !llvm.loop !9

19:                                               ; preds = %7
  %.lcssa = phi i64 [ %3, %7 ]
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
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %3
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds [2048 x i8], ptr @p, i64 %3
  br label %7

7:                                                ; preds = %17, %2
  %storemerge = phi i32 [ 0, %2 ], [ %18, %17 ]
  %.not = icmp sgt i32 %storemerge, %5
  br i1 %.not, label %19, label %8

8:                                                ; preds = %7
  %9 = sext i32 %storemerge to i64
  %10 = getelementptr inbounds [4 x i8], ptr %6, i64 %9
  %11 = load i32, ptr %10, align 4
  %.not1 = icmp eq i32 %11, 0
  br i1 %.not1, label %16, label %12

12:                                               ; preds = %8
  %13 = add nsw i32 %1, %storemerge
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %14
  store i32 0, ptr %15, align 4
  br label %16

16:                                               ; preds = %12, %8
  br label %17

17:                                               ; preds = %16
  %18 = add nsw i32 %storemerge, 1
  br label %7, !llvm.loop !11

19:                                               ; preds = %7
  %.lcssa = phi i64 [ %3, %7 ]
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

9:                                                ; preds = %28, %8
  %storemerge1 = phi i32 [ 1, %8 ], [ %29, %28 ]
  %10 = icmp slt i32 %storemerge1, 6
  br i1 %10, label %11, label %30

11:                                               ; preds = %9
  br label %12

12:                                               ; preds = %25, %11
  %storemerge47 = phi i32 [ 1, %11 ], [ %26, %25 ]
  %13 = icmp slt i32 %storemerge47, 6
  br i1 %13, label %14, label %27

14:                                               ; preds = %12
  %15 = shl i32 %storemerge47, 3
  %invariant.op = add i32 %15, %storemerge1
  br label %16

16:                                               ; preds = %22, %14
  %storemerge48 = phi i32 [ 1, %14 ], [ %23, %22 ]
  %17 = icmp slt i32 %storemerge48, 6
  br i1 %17, label %18, label %24

18:                                               ; preds = %16
  %19 = shl i32 %storemerge48, 6
  %.reass = add i32 %19, %invariant.op
  %20 = sext i32 %.reass to i64
  %21 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %20
  store i32 0, ptr %21, align 4
  br label %22

22:                                               ; preds = %18
  %23 = add nsw i32 %storemerge48, 1
  br label %16, !llvm.loop !14

24:                                               ; preds = %16
  br label %25

25:                                               ; preds = %24
  %26 = add nsw i32 %storemerge47, 1
  br label %12, !llvm.loop !15

27:                                               ; preds = %12
  br label %28

28:                                               ; preds = %27
  %29 = add nsw i32 %storemerge1, 1
  br label %9, !llvm.loop !16

30:                                               ; preds = %9
  br label %31

31:                                               ; preds = %44, %30
  %storemerge2 = phi i32 [ 0, %30 ], [ %45, %44 ]
  %32 = icmp slt i32 %storemerge2, 13
  br i1 %32, label %33, label %46

33:                                               ; preds = %31
  %34 = sext i32 %storemerge2 to i64
  %35 = getelementptr inbounds [2048 x i8], ptr @p, i64 %34
  br label %36

36:                                               ; preds = %41, %33
  %storemerge46 = phi i32 [ 0, %33 ], [ %42, %41 ]
  %37 = icmp slt i32 %storemerge46, 512
  br i1 %37, label %38, label %43

38:                                               ; preds = %36
  %39 = sext i32 %storemerge46 to i64
  %40 = getelementptr inbounds [4 x i8], ptr %35, i64 %39
  store i32 0, ptr %40, align 4
  br label %41

41:                                               ; preds = %38
  %42 = add nsw i32 %storemerge46, 1
  br label %36, !llvm.loop !17

43:                                               ; preds = %36
  br label %44

44:                                               ; preds = %43
  %45 = add nsw i32 %storemerge2, 1
  br label %31, !llvm.loop !18

46:                                               ; preds = %31
  br label %47

47:                                               ; preds = %66, %46
  %storemerge3 = phi i32 [ 0, %46 ], [ %67, %66 ]
  %48 = icmp slt i32 %storemerge3, 4
  br i1 %48, label %49, label %68

49:                                               ; preds = %47
  br label %50

50:                                               ; preds = %63, %49
  %storemerge44 = phi i32 [ 0, %49 ], [ %64, %63 ]
  %51 = icmp slt i32 %storemerge44, 2
  br i1 %51, label %52, label %65

52:                                               ; preds = %50
  %53 = shl i32 %storemerge44, 3
  %invariant.op75 = add i32 %53, %storemerge3
  br label %54

54:                                               ; preds = %60, %52
  %storemerge45 = phi i32 [ 0, %52 ], [ %61, %60 ]
  %55 = icmp slt i32 %storemerge45, 1
  br i1 %55, label %56, label %62

56:                                               ; preds = %54
  %57 = shl i32 %storemerge45, 6
  %.reass76 = add i32 %57, %invariant.op75
  %58 = sext i32 %.reass76 to i64
  %59 = getelementptr inbounds [4 x i8], ptr @p, i64 %58
  store i32 1, ptr %59, align 4
  br label %60

60:                                               ; preds = %56
  %61 = add nsw i32 %storemerge45, 1
  br label %54, !llvm.loop !19

62:                                               ; preds = %54
  br label %63

63:                                               ; preds = %62
  %64 = add nsw i32 %storemerge44, 1
  br label %50, !llvm.loop !20

65:                                               ; preds = %50
  br label %66

66:                                               ; preds = %65
  %67 = add nsw i32 %storemerge3, 1
  br label %47, !llvm.loop !21

68:                                               ; preds = %47
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %69

69:                                               ; preds = %88, %68
  %storemerge4 = phi i32 [ 0, %68 ], [ %89, %88 ]
  %70 = icmp slt i32 %storemerge4, 2
  br i1 %70, label %71, label %90

71:                                               ; preds = %69
  br label %72

72:                                               ; preds = %85, %71
  %storemerge42 = phi i32 [ 0, %71 ], [ %86, %85 ]
  %73 = icmp slt i32 %storemerge42, 1
  br i1 %73, label %74, label %87

74:                                               ; preds = %72
  %75 = shl i32 %storemerge42, 3
  %invariant.op77 = add i32 %75, %storemerge4
  br label %76

76:                                               ; preds = %82, %74
  %storemerge43 = phi i32 [ 0, %74 ], [ %83, %82 ]
  %77 = icmp slt i32 %storemerge43, 4
  br i1 %77, label %78, label %84

78:                                               ; preds = %76
  %79 = shl i32 %storemerge43, 6
  %.reass78 = add i32 %79, %invariant.op77
  %80 = sext i32 %.reass78 to i64
  %81 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %80
  store i32 1, ptr %81, align 4
  br label %82

82:                                               ; preds = %78
  %83 = add nsw i32 %storemerge43, 1
  br label %76, !llvm.loop !22

84:                                               ; preds = %76
  br label %85

85:                                               ; preds = %84
  %86 = add nsw i32 %storemerge42, 1
  br label %72, !llvm.loop !23

87:                                               ; preds = %72
  br label %88

88:                                               ; preds = %87
  %89 = add nsw i32 %storemerge4, 1
  br label %69, !llvm.loop !24

90:                                               ; preds = %69
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %91

91:                                               ; preds = %110, %90
  %storemerge5 = phi i32 [ 0, %90 ], [ %111, %110 ]
  %92 = icmp slt i32 %storemerge5, 1
  br i1 %92, label %93, label %112

93:                                               ; preds = %91
  br label %94

94:                                               ; preds = %107, %93
  %storemerge40 = phi i32 [ 0, %93 ], [ %108, %107 ]
  %95 = icmp slt i32 %storemerge40, 4
  br i1 %95, label %96, label %109

96:                                               ; preds = %94
  %97 = shl i32 %storemerge40, 3
  %invariant.op79 = add i32 %97, %storemerge5
  br label %98

98:                                               ; preds = %104, %96
  %storemerge41 = phi i32 [ 0, %96 ], [ %105, %104 ]
  %99 = icmp slt i32 %storemerge41, 2
  br i1 %99, label %100, label %106

100:                                              ; preds = %98
  %101 = shl i32 %storemerge41, 6
  %.reass80 = add i32 %101, %invariant.op79
  %102 = sext i32 %.reass80 to i64
  %103 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %102
  store i32 1, ptr %103, align 4
  br label %104

104:                                              ; preds = %100
  %105 = add nsw i32 %storemerge41, 1
  br label %98, !llvm.loop !25

106:                                              ; preds = %98
  br label %107

107:                                              ; preds = %106
  %108 = add nsw i32 %storemerge40, 1
  br label %94, !llvm.loop !26

109:                                              ; preds = %94
  br label %110

110:                                              ; preds = %109
  %111 = add nsw i32 %storemerge5, 1
  br label %91, !llvm.loop !27

112:                                              ; preds = %91
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %113

113:                                              ; preds = %132, %112
  %storemerge6 = phi i32 [ 0, %112 ], [ %133, %132 ]
  %114 = icmp slt i32 %storemerge6, 2
  br i1 %114, label %115, label %134

115:                                              ; preds = %113
  br label %116

116:                                              ; preds = %129, %115
  %storemerge38 = phi i32 [ 0, %115 ], [ %130, %129 ]
  %117 = icmp slt i32 %storemerge38, 4
  br i1 %117, label %118, label %131

118:                                              ; preds = %116
  %119 = shl i32 %storemerge38, 3
  %invariant.op81 = add i32 %119, %storemerge6
  br label %120

120:                                              ; preds = %126, %118
  %storemerge39 = phi i32 [ 0, %118 ], [ %127, %126 ]
  %121 = icmp slt i32 %storemerge39, 1
  br i1 %121, label %122, label %128

122:                                              ; preds = %120
  %123 = shl i32 %storemerge39, 6
  %.reass82 = add i32 %123, %invariant.op81
  %124 = sext i32 %.reass82 to i64
  %125 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %124
  store i32 1, ptr %125, align 4
  br label %126

126:                                              ; preds = %122
  %127 = add nsw i32 %storemerge39, 1
  br label %120, !llvm.loop !28

128:                                              ; preds = %120
  br label %129

129:                                              ; preds = %128
  %130 = add nsw i32 %storemerge38, 1
  br label %116, !llvm.loop !29

131:                                              ; preds = %116
  br label %132

132:                                              ; preds = %131
  %133 = add nsw i32 %storemerge6, 1
  br label %113, !llvm.loop !30

134:                                              ; preds = %113
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %135

135:                                              ; preds = %154, %134
  %storemerge7 = phi i32 [ 0, %134 ], [ %155, %154 ]
  %136 = icmp slt i32 %storemerge7, 4
  br i1 %136, label %137, label %156

137:                                              ; preds = %135
  br label %138

138:                                              ; preds = %151, %137
  %storemerge36 = phi i32 [ 0, %137 ], [ %152, %151 ]
  %139 = icmp slt i32 %storemerge36, 1
  br i1 %139, label %140, label %153

140:                                              ; preds = %138
  %141 = shl i32 %storemerge36, 3
  %invariant.op83 = add i32 %141, %storemerge7
  br label %142

142:                                              ; preds = %148, %140
  %storemerge37 = phi i32 [ 0, %140 ], [ %149, %148 ]
  %143 = icmp slt i32 %storemerge37, 2
  br i1 %143, label %144, label %150

144:                                              ; preds = %142
  %145 = shl i32 %storemerge37, 6
  %.reass84 = add i32 %145, %invariant.op83
  %146 = sext i32 %.reass84 to i64
  %147 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %146
  store i32 1, ptr %147, align 4
  br label %148

148:                                              ; preds = %144
  %149 = add nsw i32 %storemerge37, 1
  br label %142, !llvm.loop !31

150:                                              ; preds = %142
  br label %151

151:                                              ; preds = %150
  %152 = add nsw i32 %storemerge36, 1
  br label %138, !llvm.loop !32

153:                                              ; preds = %138
  br label %154

154:                                              ; preds = %153
  %155 = add nsw i32 %storemerge7, 1
  br label %135, !llvm.loop !33

156:                                              ; preds = %135
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %157

157:                                              ; preds = %176, %156
  %storemerge8 = phi i32 [ 0, %156 ], [ %177, %176 ]
  %158 = icmp slt i32 %storemerge8, 1
  br i1 %158, label %159, label %178

159:                                              ; preds = %157
  br label %160

160:                                              ; preds = %173, %159
  %storemerge34 = phi i32 [ 0, %159 ], [ %174, %173 ]
  %161 = icmp slt i32 %storemerge34, 2
  br i1 %161, label %162, label %175

162:                                              ; preds = %160
  %163 = shl i32 %storemerge34, 3
  %invariant.op85 = add i32 %163, %storemerge8
  br label %164

164:                                              ; preds = %170, %162
  %storemerge35 = phi i32 [ 0, %162 ], [ %171, %170 ]
  %165 = icmp slt i32 %storemerge35, 4
  br i1 %165, label %166, label %172

166:                                              ; preds = %164
  %167 = shl i32 %storemerge35, 6
  %.reass86 = add i32 %167, %invariant.op85
  %168 = sext i32 %.reass86 to i64
  %169 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %168
  store i32 1, ptr %169, align 4
  br label %170

170:                                              ; preds = %166
  %171 = add nsw i32 %storemerge35, 1
  br label %164, !llvm.loop !34

172:                                              ; preds = %164
  br label %173

173:                                              ; preds = %172
  %174 = add nsw i32 %storemerge34, 1
  br label %160, !llvm.loop !35

175:                                              ; preds = %160
  br label %176

176:                                              ; preds = %175
  %177 = add nsw i32 %storemerge8, 1
  br label %157, !llvm.loop !36

178:                                              ; preds = %157
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %179

179:                                              ; preds = %198, %178
  %storemerge9 = phi i32 [ 0, %178 ], [ %199, %198 ]
  %180 = icmp slt i32 %storemerge9, 3
  br i1 %180, label %181, label %200

181:                                              ; preds = %179
  br label %182

182:                                              ; preds = %195, %181
  %storemerge32 = phi i32 [ 0, %181 ], [ %196, %195 ]
  %183 = icmp slt i32 %storemerge32, 1
  br i1 %183, label %184, label %197

184:                                              ; preds = %182
  %185 = shl i32 %storemerge32, 3
  %invariant.op87 = add i32 %185, %storemerge9
  br label %186

186:                                              ; preds = %192, %184
  %storemerge33 = phi i32 [ 0, %184 ], [ %193, %192 ]
  %187 = icmp slt i32 %storemerge33, 1
  br i1 %187, label %188, label %194

188:                                              ; preds = %186
  %189 = shl i32 %storemerge33, 6
  %.reass88 = add i32 %189, %invariant.op87
  %190 = sext i32 %.reass88 to i64
  %191 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %190
  store i32 1, ptr %191, align 4
  br label %192

192:                                              ; preds = %188
  %193 = add nsw i32 %storemerge33, 1
  br label %186, !llvm.loop !37

194:                                              ; preds = %186
  br label %195

195:                                              ; preds = %194
  %196 = add nsw i32 %storemerge32, 1
  br label %182, !llvm.loop !38

197:                                              ; preds = %182
  br label %198

198:                                              ; preds = %197
  %199 = add nsw i32 %storemerge9, 1
  br label %179, !llvm.loop !39

200:                                              ; preds = %179
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %201

201:                                              ; preds = %220, %200
  %storemerge10 = phi i32 [ 0, %200 ], [ %221, %220 ]
  %202 = icmp slt i32 %storemerge10, 1
  br i1 %202, label %203, label %222

203:                                              ; preds = %201
  br label %204

204:                                              ; preds = %217, %203
  %storemerge30 = phi i32 [ 0, %203 ], [ %218, %217 ]
  %205 = icmp slt i32 %storemerge30, 3
  br i1 %205, label %206, label %219

206:                                              ; preds = %204
  %207 = shl i32 %storemerge30, 3
  %invariant.op89 = add i32 %207, %storemerge10
  br label %208

208:                                              ; preds = %214, %206
  %storemerge31 = phi i32 [ 0, %206 ], [ %215, %214 ]
  %209 = icmp slt i32 %storemerge31, 1
  br i1 %209, label %210, label %216

210:                                              ; preds = %208
  %211 = shl i32 %storemerge31, 6
  %.reass90 = add i32 %211, %invariant.op89
  %212 = sext i32 %.reass90 to i64
  %213 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %212
  store i32 1, ptr %213, align 4
  br label %214

214:                                              ; preds = %210
  %215 = add nsw i32 %storemerge31, 1
  br label %208, !llvm.loop !40

216:                                              ; preds = %208
  br label %217

217:                                              ; preds = %216
  %218 = add nsw i32 %storemerge30, 1
  br label %204, !llvm.loop !41

219:                                              ; preds = %204
  br label %220

220:                                              ; preds = %219
  %221 = add nsw i32 %storemerge10, 1
  br label %201, !llvm.loop !42

222:                                              ; preds = %201
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %223

223:                                              ; preds = %242, %222
  %storemerge11 = phi i32 [ 0, %222 ], [ %243, %242 ]
  %224 = icmp slt i32 %storemerge11, 1
  br i1 %224, label %225, label %244

225:                                              ; preds = %223
  br label %226

226:                                              ; preds = %239, %225
  %storemerge28 = phi i32 [ 0, %225 ], [ %240, %239 ]
  %227 = icmp slt i32 %storemerge28, 1
  br i1 %227, label %228, label %241

228:                                              ; preds = %226
  %229 = shl i32 %storemerge28, 3
  %invariant.op91 = add i32 %229, %storemerge11
  br label %230

230:                                              ; preds = %236, %228
  %storemerge29 = phi i32 [ 0, %228 ], [ %237, %236 ]
  %231 = icmp slt i32 %storemerge29, 3
  br i1 %231, label %232, label %238

232:                                              ; preds = %230
  %233 = shl i32 %storemerge29, 6
  %.reass92 = add i32 %233, %invariant.op91
  %234 = sext i32 %.reass92 to i64
  %235 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %234
  store i32 1, ptr %235, align 4
  br label %236

236:                                              ; preds = %232
  %237 = add nsw i32 %storemerge29, 1
  br label %230, !llvm.loop !43

238:                                              ; preds = %230
  br label %239

239:                                              ; preds = %238
  %240 = add nsw i32 %storemerge28, 1
  br label %226, !llvm.loop !44

241:                                              ; preds = %226
  br label %242

242:                                              ; preds = %241
  %243 = add nsw i32 %storemerge11, 1
  br label %223, !llvm.loop !45

244:                                              ; preds = %223
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %245

245:                                              ; preds = %264, %244
  %storemerge12 = phi i32 [ 0, %244 ], [ %265, %264 ]
  %246 = icmp slt i32 %storemerge12, 2
  br i1 %246, label %247, label %266

247:                                              ; preds = %245
  br label %248

248:                                              ; preds = %261, %247
  %storemerge26 = phi i32 [ 0, %247 ], [ %262, %261 ]
  %249 = icmp slt i32 %storemerge26, 2
  br i1 %249, label %250, label %263

250:                                              ; preds = %248
  %251 = shl i32 %storemerge26, 3
  %invariant.op93 = add i32 %251, %storemerge12
  br label %252

252:                                              ; preds = %258, %250
  %storemerge27 = phi i32 [ 0, %250 ], [ %259, %258 ]
  %253 = icmp slt i32 %storemerge27, 1
  br i1 %253, label %254, label %260

254:                                              ; preds = %252
  %255 = shl i32 %storemerge27, 6
  %.reass94 = add i32 %255, %invariant.op93
  %256 = sext i32 %.reass94 to i64
  %257 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %256
  store i32 1, ptr %257, align 4
  br label %258

258:                                              ; preds = %254
  %259 = add nsw i32 %storemerge27, 1
  br label %252, !llvm.loop !46

260:                                              ; preds = %252
  br label %261

261:                                              ; preds = %260
  %262 = add nsw i32 %storemerge26, 1
  br label %248, !llvm.loop !47

263:                                              ; preds = %248
  br label %264

264:                                              ; preds = %263
  %265 = add nsw i32 %storemerge12, 1
  br label %245, !llvm.loop !48

266:                                              ; preds = %245
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %267

267:                                              ; preds = %286, %266
  %storemerge13 = phi i32 [ 0, %266 ], [ %287, %286 ]
  %268 = icmp slt i32 %storemerge13, 2
  br i1 %268, label %269, label %288

269:                                              ; preds = %267
  br label %270

270:                                              ; preds = %283, %269
  %storemerge24 = phi i32 [ 0, %269 ], [ %284, %283 ]
  %271 = icmp slt i32 %storemerge24, 1
  br i1 %271, label %272, label %285

272:                                              ; preds = %270
  %273 = shl i32 %storemerge24, 3
  %invariant.op95 = add i32 %273, %storemerge13
  br label %274

274:                                              ; preds = %280, %272
  %storemerge25 = phi i32 [ 0, %272 ], [ %281, %280 ]
  %275 = icmp slt i32 %storemerge25, 2
  br i1 %275, label %276, label %282

276:                                              ; preds = %274
  %277 = shl i32 %storemerge25, 6
  %.reass96 = add i32 %277, %invariant.op95
  %278 = sext i32 %.reass96 to i64
  %279 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %278
  store i32 1, ptr %279, align 4
  br label %280

280:                                              ; preds = %276
  %281 = add nsw i32 %storemerge25, 1
  br label %274, !llvm.loop !49

282:                                              ; preds = %274
  br label %283

283:                                              ; preds = %282
  %284 = add nsw i32 %storemerge24, 1
  br label %270, !llvm.loop !50

285:                                              ; preds = %270
  br label %286

286:                                              ; preds = %285
  %287 = add nsw i32 %storemerge13, 1
  br label %267, !llvm.loop !51

288:                                              ; preds = %267
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %289

289:                                              ; preds = %308, %288
  %storemerge14 = phi i32 [ 0, %288 ], [ %309, %308 ]
  %290 = icmp slt i32 %storemerge14, 1
  br i1 %290, label %291, label %310

291:                                              ; preds = %289
  br label %292

292:                                              ; preds = %305, %291
  %storemerge22 = phi i32 [ 0, %291 ], [ %306, %305 ]
  %293 = icmp slt i32 %storemerge22, 2
  br i1 %293, label %294, label %307

294:                                              ; preds = %292
  %295 = shl i32 %storemerge22, 3
  %invariant.op97 = add i32 %295, %storemerge14
  br label %296

296:                                              ; preds = %302, %294
  %storemerge23 = phi i32 [ 0, %294 ], [ %303, %302 ]
  %297 = icmp slt i32 %storemerge23, 2
  br i1 %297, label %298, label %304

298:                                              ; preds = %296
  %299 = shl i32 %storemerge23, 6
  %.reass98 = add i32 %299, %invariant.op97
  %300 = sext i32 %.reass98 to i64
  %301 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %300
  store i32 1, ptr %301, align 4
  br label %302

302:                                              ; preds = %298
  %303 = add nsw i32 %storemerge23, 1
  br label %296, !llvm.loop !52

304:                                              ; preds = %296
  br label %305

305:                                              ; preds = %304
  %306 = add nsw i32 %storemerge22, 1
  br label %292, !llvm.loop !53

307:                                              ; preds = %292
  br label %308

308:                                              ; preds = %307
  %309 = add nsw i32 %storemerge14, 1
  br label %289, !llvm.loop !54

310:                                              ; preds = %289
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %311

311:                                              ; preds = %330, %310
  %storemerge15 = phi i32 [ 0, %310 ], [ %331, %330 ]
  %312 = icmp slt i32 %storemerge15, 2
  br i1 %312, label %313, label %332

313:                                              ; preds = %311
  br label %314

314:                                              ; preds = %327, %313
  %storemerge20 = phi i32 [ 0, %313 ], [ %328, %327 ]
  %315 = icmp slt i32 %storemerge20, 2
  br i1 %315, label %316, label %329

316:                                              ; preds = %314
  %317 = shl i32 %storemerge20, 3
  %invariant.op99 = add i32 %317, %storemerge15
  br label %318

318:                                              ; preds = %324, %316
  %storemerge21 = phi i32 [ 0, %316 ], [ %325, %324 ]
  %319 = icmp slt i32 %storemerge21, 2
  br i1 %319, label %320, label %326

320:                                              ; preds = %318
  %321 = shl i32 %storemerge21, 6
  %.reass100 = add i32 %321, %invariant.op99
  %322 = sext i32 %.reass100 to i64
  %323 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %322
  store i32 1, ptr %323, align 4
  br label %324

324:                                              ; preds = %320
  %325 = add nsw i32 %storemerge21, 1
  br label %318, !llvm.loop !55

326:                                              ; preds = %318
  br label %327

327:                                              ; preds = %326
  %328 = add nsw i32 %storemerge20, 1
  br label %314, !llvm.loop !56

329:                                              ; preds = %314
  br label %330

330:                                              ; preds = %329
  %331 = add nsw i32 %storemerge15, 1
  br label %311, !llvm.loop !57

332:                                              ; preds = %311
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 0, ptr @kount, align 4
  %333 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %333, 0
  br i1 %.not, label %336, label %334

334:                                              ; preds = %332
  %335 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %335, ptr @n, align 4
  br label %337

336:                                              ; preds = %332
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %337

337:                                              ; preds = %336, %334
  %338 = load i32, ptr @n, align 4
  %339 = call i32 @Trial(i32 noundef %338)
  %.not16 = icmp eq i32 %339, 0
  br i1 %.not16, label %340, label %341

340:                                              ; preds = %337
  %puts17 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %345

341:                                              ; preds = %337
  %342 = load i32, ptr @kount, align 4
  %.not18 = icmp eq i32 %342, 2005
  br i1 %.not18, label %344, label %343

343:                                              ; preds = %341
  %puts19 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %344

344:                                              ; preds = %343, %341
  br label %345

345:                                              ; preds = %344, %340
  %346 = load i32, ptr @n, align 4
  %347 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %346) #4
  %348 = load i32, ptr @kount, align 4
  %349 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %348) #4
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
