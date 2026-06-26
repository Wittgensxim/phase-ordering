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
define dso_local range(i32 0, 65536) i32 @Rand() #0 {
  %1 = load i32, ptr @seed, align 4
  %2 = mul nsw i32 %1, 1309
  %3 = add nsw i32 %2, 13849
  %4 = and i32 %3, 65535
  store i32 %4, ptr @seed, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local range(i32 0, 2) i32 @Fit(i32 noundef %0, i32 noundef %1) #0 {
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
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %27

27:                                               ; preds = %35, %19
  %indvars.iv = phi i64 [ %indvars.iv.next, %35 ], [ %26, %19 ]
  %28 = trunc nsw i64 %indvars.iv to i32
  %exitcond = icmp ne i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %29, label %36

29:                                               ; preds = %27
  %30 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %indvars.iv
  %31 = load i32, ptr %30, align 4
  %.not3 = icmp eq i32 %31, 0
  br i1 %.not3, label %32, label %34

32:                                               ; preds = %29
  %storemerge1.lcssa5.wide = phi i64 [ %indvars.iv, %29 ]
  %33 = trunc nsw i64 %storemerge1.lcssa5.wide to i32
  br label %37

34:                                               ; preds = %29
  br label %35

35:                                               ; preds = %34
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %27, !llvm.loop !10

36:                                               ; preds = %27
  br label %37

37:                                               ; preds = %36, %32
  %storemerge2 = phi i32 [ 0, %36 ], [ %33, %32 ]
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
define dso_local range(i32 0, 2) i32 @Trial(i32 noundef %0) #0 {
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

49:                                               ; preds = %68, %48
  %storemerge3 = phi i32 [ 0, %48 ], [ %69, %68 ]
  %50 = icmp slt i32 %storemerge3, 4
  br i1 %50, label %51, label %70

51:                                               ; preds = %49
  br label %52

52:                                               ; preds = %65, %51
  %storemerge44 = phi i32 [ 0, %51 ], [ %66, %65 ]
  %53 = icmp slt i32 %storemerge44, 2
  br i1 %53, label %54, label %67

54:                                               ; preds = %52
  br label %55

55:                                               ; preds = %63, %54
  %storemerge45 = phi i32 [ 0, %54 ], [ 1, %63 ]
  %56 = icmp slt i32 %storemerge45, 1
  br i1 %56, label %57, label %64

57:                                               ; preds = %55
  %58 = shl nuw nsw i32 %storemerge44, 3
  %59 = add nuw nsw i32 0, %58
  %60 = add nsw i32 %storemerge3, %59
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [4 x i8], ptr @p, i64 %61
  store i32 1, ptr %62, align 4
  br label %63

63:                                               ; preds = %57
  br label %55, !llvm.loop !19

64:                                               ; preds = %55
  br label %65

65:                                               ; preds = %64
  %66 = add nuw nsw i32 %storemerge44, 1
  br label %52, !llvm.loop !20

67:                                               ; preds = %52
  br label %68

68:                                               ; preds = %67
  %69 = add nsw i32 %storemerge3, 1
  br label %49, !llvm.loop !21

70:                                               ; preds = %49
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %71

71:                                               ; preds = %90, %70
  %storemerge4 = phi i32 [ 0, %70 ], [ %91, %90 ]
  %72 = icmp slt i32 %storemerge4, 2
  br i1 %72, label %73, label %92

73:                                               ; preds = %71
  br label %74

74:                                               ; preds = %88, %73
  %storemerge42 = phi i32 [ 0, %73 ], [ 1, %88 ]
  %75 = icmp slt i32 %storemerge42, 1
  br i1 %75, label %76, label %89

76:                                               ; preds = %74
  br label %77

77:                                               ; preds = %85, %76
  %storemerge43 = phi i32 [ 0, %76 ], [ %86, %85 ]
  %78 = icmp slt i32 %storemerge43, 4
  br i1 %78, label %79, label %87

79:                                               ; preds = %77
  %80 = shl i32 %storemerge43, 6
  %81 = add nuw nsw i32 %80, 0
  %82 = add nuw nsw i32 %storemerge4, %81
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %83
  store i32 1, ptr %84, align 4
  br label %85

85:                                               ; preds = %79
  %86 = add nsw i32 %storemerge43, 1
  br label %77, !llvm.loop !22

87:                                               ; preds = %77
  br label %88

88:                                               ; preds = %87
  br label %74, !llvm.loop !23

89:                                               ; preds = %74
  br label %90

90:                                               ; preds = %89
  %91 = add nuw nsw i32 %storemerge4, 1
  br label %71, !llvm.loop !24

92:                                               ; preds = %71
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %93

93:                                               ; preds = %114, %92
  %storemerge5 = phi i32 [ 0, %92 ], [ 1, %114 ]
  %94 = icmp slt i32 %storemerge5, 1
  br i1 %94, label %95, label %115

95:                                               ; preds = %93
  br label %96

96:                                               ; preds = %111, %95
  %storemerge40 = phi i32 [ 0, %95 ], [ %112, %111 ]
  %97 = icmp slt i32 %storemerge40, 4
  br i1 %97, label %98, label %113

98:                                               ; preds = %96
  br label %99

99:                                               ; preds = %108, %98
  %storemerge41 = phi i32 [ 0, %98 ], [ %109, %108 ]
  %100 = icmp slt i32 %storemerge41, 2
  br i1 %100, label %101, label %110

101:                                              ; preds = %99
  %102 = shl nuw nsw i32 %storemerge41, 6
  %103 = shl i32 %storemerge40, 3
  %104 = add i32 %102, %103
  %105 = add nuw nsw i32 0, %104
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %106
  store i32 1, ptr %107, align 4
  br label %108

108:                                              ; preds = %101
  %109 = add nuw nsw i32 %storemerge41, 1
  br label %99, !llvm.loop !25

110:                                              ; preds = %99
  br label %111

111:                                              ; preds = %110
  %112 = add nsw i32 %storemerge40, 1
  br label %96, !llvm.loop !26

113:                                              ; preds = %96
  br label %114

114:                                              ; preds = %113
  br label %93, !llvm.loop !27

115:                                              ; preds = %93
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %116

116:                                              ; preds = %135, %115
  %storemerge6 = phi i32 [ 0, %115 ], [ %136, %135 ]
  %117 = icmp slt i32 %storemerge6, 2
  br i1 %117, label %118, label %137

118:                                              ; preds = %116
  br label %119

119:                                              ; preds = %132, %118
  %storemerge38 = phi i32 [ 0, %118 ], [ %133, %132 ]
  %120 = icmp slt i32 %storemerge38, 4
  br i1 %120, label %121, label %134

121:                                              ; preds = %119
  br label %122

122:                                              ; preds = %130, %121
  %storemerge39 = phi i32 [ 0, %121 ], [ 1, %130 ]
  %123 = icmp slt i32 %storemerge39, 1
  br i1 %123, label %124, label %131

124:                                              ; preds = %122
  %125 = shl i32 %storemerge38, 3
  %126 = add nuw nsw i32 0, %125
  %127 = add nuw nsw i32 %storemerge6, %126
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %128
  store i32 1, ptr %129, align 4
  br label %130

130:                                              ; preds = %124
  br label %122, !llvm.loop !28

131:                                              ; preds = %122
  br label %132

132:                                              ; preds = %131
  %133 = add nsw i32 %storemerge38, 1
  br label %119, !llvm.loop !29

134:                                              ; preds = %119
  br label %135

135:                                              ; preds = %134
  %136 = add nuw nsw i32 %storemerge6, 1
  br label %116, !llvm.loop !30

137:                                              ; preds = %116
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %138

138:                                              ; preds = %157, %137
  %storemerge7 = phi i32 [ 0, %137 ], [ %158, %157 ]
  %139 = icmp slt i32 %storemerge7, 4
  br i1 %139, label %140, label %159

140:                                              ; preds = %138
  br label %141

141:                                              ; preds = %155, %140
  %storemerge36 = phi i32 [ 0, %140 ], [ 1, %155 ]
  %142 = icmp slt i32 %storemerge36, 1
  br i1 %142, label %143, label %156

143:                                              ; preds = %141
  br label %144

144:                                              ; preds = %152, %143
  %storemerge37 = phi i32 [ 0, %143 ], [ %153, %152 ]
  %145 = icmp slt i32 %storemerge37, 2
  br i1 %145, label %146, label %154

146:                                              ; preds = %144
  %147 = shl nuw nsw i32 %storemerge37, 6
  %148 = add nuw nsw i32 %147, 0
  %149 = add nsw i32 %storemerge7, %148
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %150
  store i32 1, ptr %151, align 4
  br label %152

152:                                              ; preds = %146
  %153 = add nuw nsw i32 %storemerge37, 1
  br label %144, !llvm.loop !31

154:                                              ; preds = %144
  br label %155

155:                                              ; preds = %154
  br label %141, !llvm.loop !32

156:                                              ; preds = %141
  br label %157

157:                                              ; preds = %156
  %158 = add nsw i32 %storemerge7, 1
  br label %138, !llvm.loop !33

159:                                              ; preds = %138
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %160

160:                                              ; preds = %181, %159
  %storemerge8 = phi i32 [ 0, %159 ], [ 1, %181 ]
  %161 = icmp slt i32 %storemerge8, 1
  br i1 %161, label %162, label %182

162:                                              ; preds = %160
  br label %163

163:                                              ; preds = %178, %162
  %storemerge34 = phi i32 [ 0, %162 ], [ %179, %178 ]
  %164 = icmp slt i32 %storemerge34, 2
  br i1 %164, label %165, label %180

165:                                              ; preds = %163
  br label %166

166:                                              ; preds = %175, %165
  %storemerge35 = phi i32 [ 0, %165 ], [ %176, %175 ]
  %167 = icmp slt i32 %storemerge35, 4
  br i1 %167, label %168, label %177

168:                                              ; preds = %166
  %169 = shl i32 %storemerge35, 6
  %170 = shl nuw nsw i32 %storemerge34, 3
  %171 = add nuw i32 %169, %170
  %172 = add nuw nsw i32 0, %171
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %173
  store i32 1, ptr %174, align 4
  br label %175

175:                                              ; preds = %168
  %176 = add nsw i32 %storemerge35, 1
  br label %166, !llvm.loop !34

177:                                              ; preds = %166
  br label %178

178:                                              ; preds = %177
  %179 = add nuw nsw i32 %storemerge34, 1
  br label %163, !llvm.loop !35

180:                                              ; preds = %163
  br label %181

181:                                              ; preds = %180
  br label %160, !llvm.loop !36

182:                                              ; preds = %160
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %183

183:                                              ; preds = %199, %182
  %storemerge9 = phi i32 [ 0, %182 ], [ %200, %199 ]
  %184 = icmp slt i32 %storemerge9, 3
  br i1 %184, label %185, label %201

185:                                              ; preds = %183
  br label %186

186:                                              ; preds = %197, %185
  %storemerge32 = phi i32 [ 0, %185 ], [ 1, %197 ]
  %187 = icmp slt i32 %storemerge32, 1
  br i1 %187, label %188, label %198

188:                                              ; preds = %186
  br label %189

189:                                              ; preds = %195, %188
  %storemerge33 = phi i32 [ 0, %188 ], [ 1, %195 ]
  %190 = icmp slt i32 %storemerge33, 1
  br i1 %190, label %191, label %196

191:                                              ; preds = %189
  %192 = add nuw nsw i32 %storemerge9, 0
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %193
  store i32 1, ptr %194, align 4
  br label %195

195:                                              ; preds = %191
  br label %189, !llvm.loop !37

196:                                              ; preds = %189
  br label %197

197:                                              ; preds = %196
  br label %186, !llvm.loop !38

198:                                              ; preds = %186
  br label %199

199:                                              ; preds = %198
  %200 = add nsw i32 %storemerge9, 1
  br label %183, !llvm.loop !39

201:                                              ; preds = %183
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %202

202:                                              ; preds = %221, %201
  %storemerge10 = phi i32 [ 0, %201 ], [ 1, %221 ]
  %203 = icmp slt i32 %storemerge10, 1
  br i1 %203, label %204, label %222

204:                                              ; preds = %202
  br label %205

205:                                              ; preds = %218, %204
  %storemerge30 = phi i32 [ 0, %204 ], [ %219, %218 ]
  %206 = icmp slt i32 %storemerge30, 3
  br i1 %206, label %207, label %220

207:                                              ; preds = %205
  br label %208

208:                                              ; preds = %216, %207
  %storemerge31 = phi i32 [ 0, %207 ], [ 1, %216 ]
  %209 = icmp slt i32 %storemerge31, 1
  br i1 %209, label %210, label %217

210:                                              ; preds = %208
  %211 = shl i32 %storemerge30, 3
  %212 = add nuw nsw i32 0, %211
  %213 = add nuw nsw i32 0, %212
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %214
  store i32 1, ptr %215, align 4
  br label %216

216:                                              ; preds = %210
  br label %208, !llvm.loop !40

217:                                              ; preds = %208
  br label %218

218:                                              ; preds = %217
  %219 = add nsw i32 %storemerge30, 1
  br label %205, !llvm.loop !41

220:                                              ; preds = %205
  br label %221

221:                                              ; preds = %220
  br label %202, !llvm.loop !42

222:                                              ; preds = %202
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %223

223:                                              ; preds = %242, %222
  %storemerge11 = phi i32 [ 0, %222 ], [ 1, %242 ]
  %224 = icmp slt i32 %storemerge11, 1
  br i1 %224, label %225, label %243

225:                                              ; preds = %223
  br label %226

226:                                              ; preds = %240, %225
  %storemerge28 = phi i32 [ 0, %225 ], [ 1, %240 ]
  %227 = icmp slt i32 %storemerge28, 1
  br i1 %227, label %228, label %241

228:                                              ; preds = %226
  br label %229

229:                                              ; preds = %237, %228
  %storemerge29 = phi i32 [ 0, %228 ], [ %238, %237 ]
  %230 = icmp slt i32 %storemerge29, 3
  br i1 %230, label %231, label %239

231:                                              ; preds = %229
  %232 = shl i32 %storemerge29, 6
  %233 = add nuw nsw i32 %232, 0
  %234 = add nuw nsw i32 0, %233
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %235
  store i32 1, ptr %236, align 4
  br label %237

237:                                              ; preds = %231
  %238 = add nsw i32 %storemerge29, 1
  br label %229, !llvm.loop !43

239:                                              ; preds = %229
  br label %240

240:                                              ; preds = %239
  br label %226, !llvm.loop !44

241:                                              ; preds = %226
  br label %242

242:                                              ; preds = %241
  br label %223, !llvm.loop !45

243:                                              ; preds = %223
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %244

244:                                              ; preds = %263, %243
  %storemerge12 = phi i32 [ 0, %243 ], [ %264, %263 ]
  %245 = icmp slt i32 %storemerge12, 2
  br i1 %245, label %246, label %265

246:                                              ; preds = %244
  br label %247

247:                                              ; preds = %260, %246
  %storemerge26 = phi i32 [ 0, %246 ], [ %261, %260 ]
  %248 = icmp slt i32 %storemerge26, 2
  br i1 %248, label %249, label %262

249:                                              ; preds = %247
  br label %250

250:                                              ; preds = %258, %249
  %storemerge27 = phi i32 [ 0, %249 ], [ 1, %258 ]
  %251 = icmp slt i32 %storemerge27, 1
  br i1 %251, label %252, label %259

252:                                              ; preds = %250
  %253 = shl nuw nsw i32 %storemerge26, 3
  %254 = add nuw nsw i32 0, %253
  %255 = add nuw nsw i32 %storemerge12, %254
  %256 = zext nneg i32 %255 to i64
  %257 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %256
  store i32 1, ptr %257, align 4
  br label %258

258:                                              ; preds = %252
  br label %250, !llvm.loop !46

259:                                              ; preds = %250
  br label %260

260:                                              ; preds = %259
  %261 = add nuw nsw i32 %storemerge26, 1
  br label %247, !llvm.loop !47

262:                                              ; preds = %247
  br label %263

263:                                              ; preds = %262
  %264 = add nuw nsw i32 %storemerge12, 1
  br label %244, !llvm.loop !48

265:                                              ; preds = %244
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %266

266:                                              ; preds = %285, %265
  %storemerge13 = phi i32 [ 0, %265 ], [ %286, %285 ]
  %267 = icmp slt i32 %storemerge13, 2
  br i1 %267, label %268, label %287

268:                                              ; preds = %266
  br label %269

269:                                              ; preds = %283, %268
  %storemerge24 = phi i32 [ 0, %268 ], [ 1, %283 ]
  %270 = icmp slt i32 %storemerge24, 1
  br i1 %270, label %271, label %284

271:                                              ; preds = %269
  br label %272

272:                                              ; preds = %280, %271
  %storemerge25 = phi i32 [ 0, %271 ], [ %281, %280 ]
  %273 = icmp slt i32 %storemerge25, 2
  br i1 %273, label %274, label %282

274:                                              ; preds = %272
  %275 = shl nuw nsw i32 %storemerge25, 6
  %276 = add nuw nsw i32 %275, 0
  %277 = add nuw nsw i32 %storemerge13, %276
  %278 = zext nneg i32 %277 to i64
  %279 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %278
  store i32 1, ptr %279, align 4
  br label %280

280:                                              ; preds = %274
  %281 = add nuw nsw i32 %storemerge25, 1
  br label %272, !llvm.loop !49

282:                                              ; preds = %272
  br label %283

283:                                              ; preds = %282
  br label %269, !llvm.loop !50

284:                                              ; preds = %269
  br label %285

285:                                              ; preds = %284
  %286 = add nuw nsw i32 %storemerge13, 1
  br label %266, !llvm.loop !51

287:                                              ; preds = %266
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %288

288:                                              ; preds = %309, %287
  %storemerge14 = phi i32 [ 0, %287 ], [ 1, %309 ]
  %289 = icmp slt i32 %storemerge14, 1
  br i1 %289, label %290, label %310

290:                                              ; preds = %288
  br label %291

291:                                              ; preds = %306, %290
  %storemerge22 = phi i32 [ 0, %290 ], [ %307, %306 ]
  %292 = icmp slt i32 %storemerge22, 2
  br i1 %292, label %293, label %308

293:                                              ; preds = %291
  br label %294

294:                                              ; preds = %303, %293
  %storemerge23 = phi i32 [ 0, %293 ], [ %304, %303 ]
  %295 = icmp slt i32 %storemerge23, 2
  br i1 %295, label %296, label %305

296:                                              ; preds = %294
  %297 = shl nuw nsw i32 %storemerge23, 6
  %298 = shl nuw nsw i32 %storemerge22, 3
  %299 = add nuw nsw i32 %297, %298
  %300 = add nuw nsw i32 0, %299
  %301 = zext nneg i32 %300 to i64
  %302 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %301
  store i32 1, ptr %302, align 4
  br label %303

303:                                              ; preds = %296
  %304 = add nuw nsw i32 %storemerge23, 1
  br label %294, !llvm.loop !52

305:                                              ; preds = %294
  br label %306

306:                                              ; preds = %305
  %307 = add nuw nsw i32 %storemerge22, 1
  br label %291, !llvm.loop !53

308:                                              ; preds = %291
  br label %309

309:                                              ; preds = %308
  br label %288, !llvm.loop !54

310:                                              ; preds = %288
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %311

311:                                              ; preds = %332, %310
  %storemerge15 = phi i32 [ 0, %310 ], [ %333, %332 ]
  %312 = icmp slt i32 %storemerge15, 2
  br i1 %312, label %313, label %334

313:                                              ; preds = %311
  br label %314

314:                                              ; preds = %329, %313
  %storemerge20 = phi i32 [ 0, %313 ], [ %330, %329 ]
  %315 = icmp slt i32 %storemerge20, 2
  br i1 %315, label %316, label %331

316:                                              ; preds = %314
  br label %317

317:                                              ; preds = %326, %316
  %storemerge21 = phi i32 [ 0, %316 ], [ %327, %326 ]
  %318 = icmp slt i32 %storemerge21, 2
  br i1 %318, label %319, label %328

319:                                              ; preds = %317
  %320 = shl nuw nsw i32 %storemerge21, 6
  %321 = shl nuw nsw i32 %storemerge20, 3
  %322 = add nuw nsw i32 %320, %321
  %323 = add nuw nsw i32 %storemerge15, %322
  %324 = zext nneg i32 %323 to i64
  %325 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %324
  store i32 1, ptr %325, align 4
  br label %326

326:                                              ; preds = %319
  %327 = add nuw nsw i32 %storemerge21, 1
  br label %317, !llvm.loop !55

328:                                              ; preds = %317
  br label %329

329:                                              ; preds = %328
  %330 = add nuw nsw i32 %storemerge20, 1
  br label %314, !llvm.loop !56

331:                                              ; preds = %314
  br label %332

332:                                              ; preds = %331
  %333 = add nuw nsw i32 %storemerge15, 1
  br label %311, !llvm.loop !57

334:                                              ; preds = %311
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 0, ptr @kount, align 4
  %335 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %335, 0
  br i1 %.not, label %338, label %336

336:                                              ; preds = %334
  %337 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %337, ptr @n, align 4
  br label %339

338:                                              ; preds = %334
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %339

339:                                              ; preds = %338, %336
  %340 = load i32, ptr @n, align 4
  %341 = call i32 @Trial(i32 noundef %340)
  %.not16 = icmp eq i32 %341, 0
  br i1 %.not16, label %342, label %343

342:                                              ; preds = %339
  %puts17 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %347

343:                                              ; preds = %339
  %344 = load i32, ptr @kount, align 4
  %.not18 = icmp eq i32 %344, 2005
  br i1 %.not18, label %346, label %345

345:                                              ; preds = %343
  %puts19 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %346

346:                                              ; preds = %345, %343
  br label %347

347:                                              ; preds = %346, %342
  %348 = load i32, ptr @n, align 4
  %349 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %348) #4
  %350 = load i32, ptr @kount, align 4
  %351 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %350) #4
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
