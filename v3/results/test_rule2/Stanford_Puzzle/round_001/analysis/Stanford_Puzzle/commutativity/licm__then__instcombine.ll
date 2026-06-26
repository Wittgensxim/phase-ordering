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

7:                                                ; preds = %21, %2
  %8 = phi i32 [ %22, %21 ], [ 0, %2 ]
  %.not = icmp sgt i32 %8, %5
  br i1 %.not, label %23, label %9

9:                                                ; preds = %7
  %10 = zext nneg i32 %8 to i64
  %11 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %10
  %12 = load i32, ptr %11, align 4
  %.not2 = icmp eq i32 %12, 0
  br i1 %.not2, label %20, label %13

13:                                               ; preds = %9
  %14 = add nsw i32 %1, %8
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %15
  %17 = load i32, ptr %16, align 4
  %.not3 = icmp eq i32 %17, 0
  br i1 %.not3, label %19, label %18

18:                                               ; preds = %13
  br label %24

19:                                               ; preds = %13
  br label %20

20:                                               ; preds = %19, %9
  br label %21

21:                                               ; preds = %20
  %22 = add nuw nsw i32 %8, 1
  br label %7, !llvm.loop !7

23:                                               ; preds = %7
  br label %24

24:                                               ; preds = %23, %18
  %storemerge = phi i32 [ 1, %23 ], [ 0, %18 ]
  ret i32 %storemerge
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Place(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  store i32 %1, ptr %3, align 4
  %4 = sext i32 %0 to i64
  %5 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %4
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds [2048 x i8], ptr @p, i64 %4
  br label %8

8:                                                ; preds = %19, %2
  %9 = phi i32 [ %20, %19 ], [ 0, %2 ]
  %.not = icmp sgt i32 %9, %6
  br i1 %.not, label %21, label %10

10:                                               ; preds = %8
  %11 = zext nneg i32 %9 to i64
  %12 = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %11
  %13 = load i32, ptr %12, align 4
  %.not7 = icmp eq i32 %13, 0
  br i1 %.not7, label %18, label %14

14:                                               ; preds = %10
  %15 = add nsw i32 %1, %9
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %16
  store i32 1, ptr %17, align 4
  br label %18

18:                                               ; preds = %14, %10
  br label %19

19:                                               ; preds = %18
  %20 = add nuw nsw i32 %9, 1
  br label %8, !llvm.loop !9

21:                                               ; preds = %8
  %22 = getelementptr inbounds [4 x i8], ptr @class, i64 %4
  %23 = load i32, ptr %22, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %24
  %26 = load i32, ptr %25, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, ptr %25, align 4
  %28 = load i32, ptr %3, align 4
  br label %29

29:                                               ; preds = %38, %21
  %30 = phi i32 [ %39, %38 ], [ %28, %21 ]
  %31 = icmp slt i32 %30, 512
  br i1 %31, label %32, label %40

32:                                               ; preds = %29
  %33 = sext i32 %30 to i64
  %34 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %33
  %35 = load i32, ptr %34, align 4
  %.not6 = icmp eq i32 %35, 0
  br i1 %.not6, label %36, label %37

36:                                               ; preds = %32
  br label %41

37:                                               ; preds = %32
  br label %38

38:                                               ; preds = %37
  %39 = add nsw i32 %30, 1
  br label %29, !llvm.loop !10

40:                                               ; preds = %29
  br label %41

41:                                               ; preds = %40, %36
  %storemerge = phi i32 [ 0, %40 ], [ %30, %36 ]
  ret i32 %storemerge
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Remove(i32 noundef %0, i32 noundef %1) #0 {
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %3
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds [2048 x i8], ptr @p, i64 %3
  br label %7

7:                                                ; preds = %18, %2
  %8 = phi i32 [ %19, %18 ], [ 0, %2 ]
  %.not = icmp sgt i32 %8, %5
  br i1 %.not, label %20, label %9

9:                                                ; preds = %7
  %10 = zext nneg i32 %8 to i64
  %11 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %10
  %12 = load i32, ptr %11, align 4
  %.not2 = icmp eq i32 %12, 0
  br i1 %.not2, label %17, label %13

13:                                               ; preds = %9
  %14 = add nsw i32 %1, %8
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %15
  store i32 0, ptr %16, align 4
  br label %17

17:                                               ; preds = %13, %9
  br label %18

18:                                               ; preds = %17
  %19 = add nuw nsw i32 %8, 1
  br label %7, !llvm.loop !11

20:                                               ; preds = %7
  %21 = getelementptr inbounds [4 x i8], ptr @class, i64 %3
  %22 = load i32, ptr %21, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %23
  %25 = load i32, ptr %24, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, ptr %24, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Trial(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = load i32, ptr @kount, align 4
  %4 = add nsw i32 %3, 1
  store i32 %4, ptr @kount, align 4
  %.promoted2 = load i32, ptr %2, align 4
  br label %5

5:                                                ; preds = %30, %1
  %6 = phi i32 [ %29, %30 ], [ %.promoted2, %1 ]
  %7 = phi i32 [ %31, %30 ], [ 0, %1 ]
  %8 = icmp samesign ult i32 %7, 13
  br i1 %8, label %9, label %32

9:                                                ; preds = %5
  %10 = zext nneg i32 %7 to i64
  %11 = getelementptr inbounds nuw [4 x i8], ptr @class, i64 %10
  %12 = load i32, ptr %11, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %13
  %15 = load i32, ptr %14, align 4
  %.not = icmp eq i32 %15, 0
  br i1 %.not, label %28, label %16

16:                                               ; preds = %9
  %17 = call i32 @Fit(i32 noundef %7, i32 noundef %0)
  %.not6 = icmp eq i32 %17, 0
  br i1 %.not6, label %26, label %18

18:                                               ; preds = %16
  %19 = call i32 @Place(i32 noundef %7, i32 noundef %0)
  %20 = call i32 @Trial(i32 noundef %19)
  %.not7 = icmp eq i32 %20, 0
  br i1 %.not7, label %21, label %23

21:                                               ; preds = %18
  %22 = icmp eq i32 %19, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %21, %18
  br label %33

24:                                               ; preds = %21
  call void @Remove(i32 noundef %7, i32 noundef %0)
  br label %25

25:                                               ; preds = %24
  br label %26

26:                                               ; preds = %25, %16
  %27 = phi i32 [ %19, %25 ], [ %6, %16 ]
  br label %28

28:                                               ; preds = %26, %9
  %29 = phi i32 [ %27, %26 ], [ %6, %9 ]
  br label %30

30:                                               ; preds = %28
  %31 = add nuw nsw i32 %7, 1
  br label %5, !llvm.loop !12

32:                                               ; preds = %5
  br label %33

33:                                               ; preds = %32, %23
  %storemerge5 = phi i32 [ %6, %32 ], [ %19, %23 ]
  %storemerge = phi i32 [ 0, %32 ], [ 1, %23 ]
  store i32 %storemerge5, ptr %2, align 4
  ret i32 %storemerge
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Puzzle() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, ptr %3, align 4
  br label %4

4:                                                ; preds = %10, %0
  %5 = phi i32 [ %11, %10 ], [ 0, %0 ]
  %6 = icmp samesign ult i32 %5, 512
  br i1 %6, label %7, label %12

7:                                                ; preds = %4
  %8 = zext nneg i32 %5 to i64
  %9 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %8
  store i32 1, ptr %9, align 4
  br label %10

10:                                               ; preds = %7
  %11 = add nuw nsw i32 %5, 1
  br label %4, !llvm.loop !13

12:                                               ; preds = %4
  store i32 %5, ptr %3, align 4
  %.promoted9 = load i32, ptr %1, align 4
  %.promoted11 = load i32, ptr %2, align 4
  br label %13

13:                                               ; preds = %37, %12
  %.lcssa26.lcssa12 = phi i32 [ %.lcssa26, %37 ], [ %.promoted11, %12 ]
  %.lcssa410 = phi i32 [ %18, %37 ], [ %.promoted9, %12 ]
  %14 = phi i32 [ %38, %37 ], [ 1, %12 ]
  %15 = icmp samesign ult i32 %14, 6
  br i1 %15, label %16, label %39

16:                                               ; preds = %13
  br label %17

17:                                               ; preds = %34, %16
  %.lcssa26 = phi i32 [ %22, %34 ], [ %.lcssa26.lcssa12, %16 ]
  %18 = phi i32 [ %35, %34 ], [ 1, %16 ]
  %19 = icmp samesign ult i32 %18, 6
  br i1 %19, label %20, label %36

20:                                               ; preds = %17
  br label %21

21:                                               ; preds = %31, %20
  %22 = phi i32 [ %32, %31 ], [ 1, %20 ]
  %23 = icmp samesign ult i32 %22, 6
  br i1 %23, label %24, label %33

24:                                               ; preds = %21
  %25 = shl nuw nsw i32 %22, 6
  %26 = shl nuw nsw i32 %18, 3
  %27 = or disjoint i32 %25, %26
  %28 = or disjoint i32 %14, %27
  %29 = zext nneg i32 %28 to i64
  %30 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %29
  store i32 0, ptr %30, align 4
  br label %31

31:                                               ; preds = %24
  %32 = add nuw nsw i32 %22, 1
  br label %21, !llvm.loop !14

33:                                               ; preds = %21
  br label %34

34:                                               ; preds = %33
  %35 = add nuw nsw i32 %18, 1
  br label %17, !llvm.loop !15

36:                                               ; preds = %17
  br label %37

37:                                               ; preds = %36
  %38 = add nuw nsw i32 %14, 1
  br label %13, !llvm.loop !16

39:                                               ; preds = %13
  store i32 %.lcssa410, ptr %1, align 4
  store i32 %.lcssa26.lcssa12, ptr %2, align 4
  %.promoted17 = load i32, ptr %3, align 4
  br label %40

40:                                               ; preds = %55, %39
  %.lcssa1418 = phi i32 [ %47, %55 ], [ %.promoted17, %39 ]
  %41 = phi i32 [ %56, %55 ], [ 0, %39 ]
  %42 = icmp samesign ult i32 %41, 13
  br i1 %42, label %43, label %57

43:                                               ; preds = %40
  %44 = zext nneg i32 %41 to i64
  %45 = getelementptr inbounds nuw [2048 x i8], ptr @p, i64 %44
  br label %46

46:                                               ; preds = %52, %43
  %47 = phi i32 [ %53, %52 ], [ 0, %43 ]
  %48 = icmp samesign ult i32 %47, 512
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = zext nneg i32 %47 to i64
  %51 = getelementptr inbounds nuw [4 x i8], ptr %45, i64 %50
  store i32 0, ptr %51, align 4
  br label %52

52:                                               ; preds = %49
  %53 = add nuw nsw i32 %47, 1
  br label %46, !llvm.loop !17

54:                                               ; preds = %46
  br label %55

55:                                               ; preds = %54
  %56 = add nuw nsw i32 %41, 1
  br label %40, !llvm.loop !18

57:                                               ; preds = %40
  store i32 %.lcssa1418, ptr %3, align 4
  %.promoted28 = load i32, ptr %1, align 4
  %.promoted30 = load i32, ptr %2, align 4
  br label %58

58:                                               ; preds = %79, %57
  %.lcssa2024.lcssa31 = phi i32 [ %.lcssa2024, %79 ], [ %.promoted30, %57 ]
  %.lcssa2229 = phi i32 [ %63, %79 ], [ %.promoted28, %57 ]
  %59 = phi i32 [ %80, %79 ], [ 0, %57 ]
  %60 = icmp samesign ult i32 %59, 4
  br i1 %60, label %61, label %81

61:                                               ; preds = %58
  br label %62

62:                                               ; preds = %76, %61
  %.lcssa2024 = phi i32 [ %67, %76 ], [ %.lcssa2024.lcssa31, %61 ]
  %63 = phi i32 [ %77, %76 ], [ 0, %61 ]
  %64 = icmp samesign ult i32 %63, 2
  br i1 %64, label %65, label %78

65:                                               ; preds = %62
  br label %66

66:                                               ; preds = %74, %65
  %67 = phi i32 [ 1, %74 ], [ 0, %65 ]
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %66
  %70 = shl nuw nsw i32 %63, 3
  %71 = or disjoint i32 %59, %70
  %72 = zext nneg i32 %71 to i64
  %73 = getelementptr inbounds nuw [4 x i8], ptr @p, i64 %72
  store i32 1, ptr %73, align 4
  br label %74

74:                                               ; preds = %69
  br label %66, !llvm.loop !19

75:                                               ; preds = %66
  br label %76

76:                                               ; preds = %75
  %77 = add nuw nsw i32 %63, 1
  br label %62, !llvm.loop !20

78:                                               ; preds = %62
  br label %79

79:                                               ; preds = %78
  %80 = add nuw nsw i32 %59, 1
  br label %58, !llvm.loop !21

81:                                               ; preds = %58
  store i32 %.lcssa2229, ptr %1, align 4
  store i32 %.lcssa2024.lcssa31, ptr %2, align 4
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %82

82:                                               ; preds = %103, %81
  %.lcssa3337.lcssa43 = phi i32 [ %.lcssa3337, %103 ], [ %.lcssa2024.lcssa31, %81 ]
  %.lcssa3541 = phi i32 [ %87, %103 ], [ %.lcssa2229, %81 ]
  %83 = phi i32 [ %104, %103 ], [ 0, %81 ]
  %84 = icmp samesign ult i32 %83, 2
  br i1 %84, label %85, label %105

85:                                               ; preds = %82
  br label %86

86:                                               ; preds = %101, %85
  %.lcssa3337 = phi i32 [ %91, %101 ], [ %.lcssa3337.lcssa43, %85 ]
  %87 = phi i32 [ 1, %101 ], [ 0, %85 ]
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %102

89:                                               ; preds = %86
  br label %90

90:                                               ; preds = %98, %89
  %91 = phi i32 [ %99, %98 ], [ 0, %89 ]
  %92 = icmp samesign ult i32 %91, 4
  br i1 %92, label %93, label %100

93:                                               ; preds = %90
  %94 = shl nuw nsw i32 %91, 6
  %95 = or disjoint i32 %83, %94
  %96 = zext nneg i32 %95 to i64
  %97 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %96
  store i32 1, ptr %97, align 4
  br label %98

98:                                               ; preds = %93
  %99 = add nuw nsw i32 %91, 1
  br label %90, !llvm.loop !22

100:                                              ; preds = %90
  br label %101

101:                                              ; preds = %100
  br label %86, !llvm.loop !23

102:                                              ; preds = %86
  br label %103

103:                                              ; preds = %102
  %104 = add nuw nsw i32 %83, 1
  br label %82, !llvm.loop !24

105:                                              ; preds = %82
  store i32 %.lcssa3541, ptr %1, align 4
  store i32 %.lcssa3337.lcssa43, ptr %2, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %106

106:                                              ; preds = %128, %105
  %.lcssa4549.lcssa55 = phi i32 [ %.lcssa4549, %128 ], [ %.lcssa3337.lcssa43, %105 ]
  %.lcssa4753 = phi i32 [ %110, %128 ], [ %.lcssa3541, %105 ]
  %107 = phi i1 [ false, %128 ], [ true, %105 ]
  br i1 %107, label %108, label %129

108:                                              ; preds = %106
  br label %109

109:                                              ; preds = %125, %108
  %.lcssa4549 = phi i32 [ %114, %125 ], [ %.lcssa4549.lcssa55, %108 ]
  %110 = phi i32 [ %126, %125 ], [ 0, %108 ]
  %111 = icmp samesign ult i32 %110, 4
  br i1 %111, label %112, label %127

112:                                              ; preds = %109
  br label %113

113:                                              ; preds = %122, %112
  %114 = phi i32 [ %123, %122 ], [ 0, %112 ]
  %115 = icmp samesign ult i32 %114, 2
  br i1 %115, label %116, label %124

116:                                              ; preds = %113
  %117 = shl nuw nsw i32 %114, 6
  %118 = shl nuw nsw i32 %110, 3
  %119 = or disjoint i32 %117, %118
  %120 = zext nneg i32 %119 to i64
  %121 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %120
  store i32 1, ptr %121, align 4
  br label %122

122:                                              ; preds = %116
  %123 = add nuw nsw i32 %114, 1
  br label %113, !llvm.loop !25

124:                                              ; preds = %113
  br label %125

125:                                              ; preds = %124
  %126 = add nuw nsw i32 %110, 1
  br label %109, !llvm.loop !26

127:                                              ; preds = %109
  br label %128

128:                                              ; preds = %127
  br label %106, !llvm.loop !27

129:                                              ; preds = %106
  store i32 %.lcssa4753, ptr %1, align 4
  store i32 %.lcssa4549.lcssa55, ptr %2, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %130

130:                                              ; preds = %151, %129
  %.lcssa5761.lcssa67 = phi i32 [ %.lcssa5761, %151 ], [ %.lcssa4549.lcssa55, %129 ]
  %.lcssa5965 = phi i32 [ %135, %151 ], [ %.lcssa4753, %129 ]
  %131 = phi i32 [ %152, %151 ], [ 0, %129 ]
  %132 = icmp samesign ult i32 %131, 2
  br i1 %132, label %133, label %153

133:                                              ; preds = %130
  br label %134

134:                                              ; preds = %148, %133
  %.lcssa5761 = phi i32 [ %139, %148 ], [ %.lcssa5761.lcssa67, %133 ]
  %135 = phi i32 [ %149, %148 ], [ 0, %133 ]
  %136 = icmp samesign ult i32 %135, 4
  br i1 %136, label %137, label %150

137:                                              ; preds = %134
  br label %138

138:                                              ; preds = %146, %137
  %139 = phi i32 [ 1, %146 ], [ 0, %137 ]
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %147

141:                                              ; preds = %138
  %142 = shl nuw nsw i32 %135, 3
  %143 = or disjoint i32 %131, %142
  %144 = zext nneg i32 %143 to i64
  %145 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %144
  store i32 1, ptr %145, align 4
  br label %146

146:                                              ; preds = %141
  br label %138, !llvm.loop !28

147:                                              ; preds = %138
  br label %148

148:                                              ; preds = %147
  %149 = add nuw nsw i32 %135, 1
  br label %134, !llvm.loop !29

150:                                              ; preds = %134
  br label %151

151:                                              ; preds = %150
  %152 = add nuw nsw i32 %131, 1
  br label %130, !llvm.loop !30

153:                                              ; preds = %130
  store i32 %.lcssa5965, ptr %1, align 4
  store i32 %.lcssa5761.lcssa67, ptr %2, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %154

154:                                              ; preds = %175, %153
  %.lcssa6973.lcssa79 = phi i32 [ %.lcssa6973, %175 ], [ %.lcssa5761.lcssa67, %153 ]
  %.lcssa7177 = phi i32 [ %159, %175 ], [ %.lcssa5965, %153 ]
  %155 = phi i32 [ %176, %175 ], [ 0, %153 ]
  %156 = icmp samesign ult i32 %155, 4
  br i1 %156, label %157, label %177

157:                                              ; preds = %154
  br label %158

158:                                              ; preds = %173, %157
  %.lcssa6973 = phi i32 [ %163, %173 ], [ %.lcssa6973.lcssa79, %157 ]
  %159 = phi i32 [ 1, %173 ], [ 0, %157 ]
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %174

161:                                              ; preds = %158
  br label %162

162:                                              ; preds = %170, %161
  %163 = phi i32 [ %171, %170 ], [ 0, %161 ]
  %164 = icmp samesign ult i32 %163, 2
  br i1 %164, label %165, label %172

165:                                              ; preds = %162
  %166 = shl nuw nsw i32 %163, 6
  %167 = or disjoint i32 %155, %166
  %168 = zext nneg i32 %167 to i64
  %169 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %168
  store i32 1, ptr %169, align 4
  br label %170

170:                                              ; preds = %165
  %171 = add nuw nsw i32 %163, 1
  br label %162, !llvm.loop !31

172:                                              ; preds = %162
  br label %173

173:                                              ; preds = %172
  br label %158, !llvm.loop !32

174:                                              ; preds = %158
  br label %175

175:                                              ; preds = %174
  %176 = add nuw nsw i32 %155, 1
  br label %154, !llvm.loop !33

177:                                              ; preds = %154
  store i32 %.lcssa7177, ptr %1, align 4
  store i32 %.lcssa6973.lcssa79, ptr %2, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %178

178:                                              ; preds = %200, %177
  %.lcssa8185.lcssa91 = phi i32 [ %.lcssa8185, %200 ], [ %.lcssa6973.lcssa79, %177 ]
  %.lcssa8389 = phi i32 [ %182, %200 ], [ %.lcssa7177, %177 ]
  %179 = phi i1 [ false, %200 ], [ true, %177 ]
  br i1 %179, label %180, label %201

180:                                              ; preds = %178
  br label %181

181:                                              ; preds = %197, %180
  %.lcssa8185 = phi i32 [ %186, %197 ], [ %.lcssa8185.lcssa91, %180 ]
  %182 = phi i32 [ %198, %197 ], [ 0, %180 ]
  %183 = icmp samesign ult i32 %182, 2
  br i1 %183, label %184, label %199

184:                                              ; preds = %181
  br label %185

185:                                              ; preds = %194, %184
  %186 = phi i32 [ %195, %194 ], [ 0, %184 ]
  %187 = icmp samesign ult i32 %186, 4
  br i1 %187, label %188, label %196

188:                                              ; preds = %185
  %189 = shl nuw nsw i32 %186, 6
  %190 = shl nuw nsw i32 %182, 3
  %191 = or disjoint i32 %189, %190
  %192 = zext nneg i32 %191 to i64
  %193 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %192
  store i32 1, ptr %193, align 4
  br label %194

194:                                              ; preds = %188
  %195 = add nuw nsw i32 %186, 1
  br label %185, !llvm.loop !34

196:                                              ; preds = %185
  br label %197

197:                                              ; preds = %196
  %198 = add nuw nsw i32 %182, 1
  br label %181, !llvm.loop !35

199:                                              ; preds = %181
  br label %200

200:                                              ; preds = %199
  br label %178, !llvm.loop !36

201:                                              ; preds = %178
  store i32 %.lcssa8389, ptr %1, align 4
  store i32 %.lcssa8185.lcssa91, ptr %2, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %202

202:                                              ; preds = %220, %201
  %.lcssa9397.lcssa103 = phi i32 [ %.lcssa9397, %220 ], [ %.lcssa8185.lcssa91, %201 ]
  %.lcssa95101 = phi i32 [ %207, %220 ], [ %.lcssa8389, %201 ]
  %203 = phi i32 [ %221, %220 ], [ 0, %201 ]
  %204 = icmp samesign ult i32 %203, 3
  br i1 %204, label %205, label %222

205:                                              ; preds = %202
  br label %206

206:                                              ; preds = %218, %205
  %.lcssa9397 = phi i32 [ %211, %218 ], [ %.lcssa9397.lcssa103, %205 ]
  %207 = phi i32 [ 1, %218 ], [ 0, %205 ]
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %219

209:                                              ; preds = %206
  br label %210

210:                                              ; preds = %216, %209
  %211 = phi i32 [ 1, %216 ], [ 0, %209 ]
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %213, label %217

213:                                              ; preds = %210
  %214 = zext nneg i32 %203 to i64
  %215 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %214
  store i32 1, ptr %215, align 4
  br label %216

216:                                              ; preds = %213
  br label %210, !llvm.loop !37

217:                                              ; preds = %210
  br label %218

218:                                              ; preds = %217
  br label %206, !llvm.loop !38

219:                                              ; preds = %206
  br label %220

220:                                              ; preds = %219
  %221 = add nuw nsw i32 %203, 1
  br label %202, !llvm.loop !39

222:                                              ; preds = %202
  store i32 %.lcssa95101, ptr %1, align 4
  store i32 %.lcssa9397.lcssa103, ptr %2, align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %223

223:                                              ; preds = %242, %222
  %.lcssa105109.lcssa115 = phi i32 [ %.lcssa105109, %242 ], [ %.lcssa9397.lcssa103, %222 ]
  %.lcssa107113 = phi i32 [ %227, %242 ], [ %.lcssa95101, %222 ]
  %224 = phi i1 [ false, %242 ], [ true, %222 ]
  br i1 %224, label %225, label %243

225:                                              ; preds = %223
  br label %226

226:                                              ; preds = %239, %225
  %.lcssa105109 = phi i32 [ %231, %239 ], [ %.lcssa105109.lcssa115, %225 ]
  %227 = phi i32 [ %240, %239 ], [ 0, %225 ]
  %228 = icmp samesign ult i32 %227, 3
  br i1 %228, label %229, label %241

229:                                              ; preds = %226
  br label %230

230:                                              ; preds = %237, %229
  %231 = phi i32 [ 1, %237 ], [ 0, %229 ]
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %233, label %238

233:                                              ; preds = %230
  %234 = shl nuw nsw i32 %227, 3
  %235 = zext nneg i32 %234 to i64
  %236 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %235
  store i32 1, ptr %236, align 4
  br label %237

237:                                              ; preds = %233
  br label %230, !llvm.loop !40

238:                                              ; preds = %230
  br label %239

239:                                              ; preds = %238
  %240 = add nuw nsw i32 %227, 1
  br label %226, !llvm.loop !41

241:                                              ; preds = %226
  br label %242

242:                                              ; preds = %241
  br label %223, !llvm.loop !42

243:                                              ; preds = %223
  store i32 %.lcssa107113, ptr %1, align 4
  store i32 %.lcssa105109.lcssa115, ptr %2, align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %244

244:                                              ; preds = %263, %243
  %.lcssa117121.lcssa127 = phi i32 [ %.lcssa117121, %263 ], [ %.lcssa105109.lcssa115, %243 ]
  %.lcssa119125 = phi i32 [ %248, %263 ], [ %.lcssa107113, %243 ]
  %245 = phi i1 [ false, %263 ], [ true, %243 ]
  br i1 %245, label %246, label %264

246:                                              ; preds = %244
  br label %247

247:                                              ; preds = %261, %246
  %.lcssa117121 = phi i32 [ %252, %261 ], [ %.lcssa117121.lcssa127, %246 ]
  %248 = phi i32 [ 1, %261 ], [ 0, %246 ]
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %250, label %262

250:                                              ; preds = %247
  br label %251

251:                                              ; preds = %258, %250
  %252 = phi i32 [ %259, %258 ], [ 0, %250 ]
  %253 = icmp samesign ult i32 %252, 3
  br i1 %253, label %254, label %260

254:                                              ; preds = %251
  %255 = shl nuw nsw i32 %252, 6
  %256 = zext nneg i32 %255 to i64
  %257 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %256
  store i32 1, ptr %257, align 4
  br label %258

258:                                              ; preds = %254
  %259 = add nuw nsw i32 %252, 1
  br label %251, !llvm.loop !43

260:                                              ; preds = %251
  br label %261

261:                                              ; preds = %260
  br label %247, !llvm.loop !44

262:                                              ; preds = %247
  br label %263

263:                                              ; preds = %262
  br label %244, !llvm.loop !45

264:                                              ; preds = %244
  store i32 %.lcssa119125, ptr %1, align 4
  store i32 %.lcssa117121.lcssa127, ptr %2, align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %265

265:                                              ; preds = %286, %264
  %.lcssa129133.lcssa139 = phi i32 [ %.lcssa129133, %286 ], [ %.lcssa117121.lcssa127, %264 ]
  %.lcssa131137 = phi i32 [ %270, %286 ], [ %.lcssa119125, %264 ]
  %266 = phi i32 [ %287, %286 ], [ 0, %264 ]
  %267 = icmp samesign ult i32 %266, 2
  br i1 %267, label %268, label %288

268:                                              ; preds = %265
  br label %269

269:                                              ; preds = %283, %268
  %.lcssa129133 = phi i32 [ %274, %283 ], [ %.lcssa129133.lcssa139, %268 ]
  %270 = phi i32 [ %284, %283 ], [ 0, %268 ]
  %271 = icmp samesign ult i32 %270, 2
  br i1 %271, label %272, label %285

272:                                              ; preds = %269
  br label %273

273:                                              ; preds = %281, %272
  %274 = phi i32 [ 1, %281 ], [ 0, %272 ]
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %276, label %282

276:                                              ; preds = %273
  %277 = shl nuw nsw i32 %270, 3
  %278 = or disjoint i32 %266, %277
  %279 = zext nneg i32 %278 to i64
  %280 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %279
  store i32 1, ptr %280, align 4
  br label %281

281:                                              ; preds = %276
  br label %273, !llvm.loop !46

282:                                              ; preds = %273
  br label %283

283:                                              ; preds = %282
  %284 = add nuw nsw i32 %270, 1
  br label %269, !llvm.loop !47

285:                                              ; preds = %269
  br label %286

286:                                              ; preds = %285
  %287 = add nuw nsw i32 %266, 1
  br label %265, !llvm.loop !48

288:                                              ; preds = %265
  store i32 %.lcssa131137, ptr %1, align 4
  store i32 %.lcssa129133.lcssa139, ptr %2, align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %289

289:                                              ; preds = %310, %288
  %.lcssa141145.lcssa151 = phi i32 [ %.lcssa141145, %310 ], [ %.lcssa129133.lcssa139, %288 ]
  %.lcssa143149 = phi i32 [ %294, %310 ], [ %.lcssa131137, %288 ]
  %290 = phi i32 [ %311, %310 ], [ 0, %288 ]
  %291 = icmp samesign ult i32 %290, 2
  br i1 %291, label %292, label %312

292:                                              ; preds = %289
  br label %293

293:                                              ; preds = %308, %292
  %.lcssa141145 = phi i32 [ %298, %308 ], [ %.lcssa141145.lcssa151, %292 ]
  %294 = phi i32 [ 1, %308 ], [ 0, %292 ]
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %296, label %309

296:                                              ; preds = %293
  br label %297

297:                                              ; preds = %305, %296
  %298 = phi i32 [ %306, %305 ], [ 0, %296 ]
  %299 = icmp samesign ult i32 %298, 2
  br i1 %299, label %300, label %307

300:                                              ; preds = %297
  %301 = shl nuw nsw i32 %298, 6
  %302 = or disjoint i32 %290, %301
  %303 = zext nneg i32 %302 to i64
  %304 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %303
  store i32 1, ptr %304, align 4
  br label %305

305:                                              ; preds = %300
  %306 = add nuw nsw i32 %298, 1
  br label %297, !llvm.loop !49

307:                                              ; preds = %297
  br label %308

308:                                              ; preds = %307
  br label %293, !llvm.loop !50

309:                                              ; preds = %293
  br label %310

310:                                              ; preds = %309
  %311 = add nuw nsw i32 %290, 1
  br label %289, !llvm.loop !51

312:                                              ; preds = %289
  store i32 %.lcssa143149, ptr %1, align 4
  store i32 %.lcssa141145.lcssa151, ptr %2, align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %313

313:                                              ; preds = %335, %312
  %.lcssa153157.lcssa163 = phi i32 [ %.lcssa153157, %335 ], [ %.lcssa141145.lcssa151, %312 ]
  %.lcssa155161 = phi i32 [ %317, %335 ], [ %.lcssa143149, %312 ]
  %314 = phi i1 [ false, %335 ], [ true, %312 ]
  br i1 %314, label %315, label %336

315:                                              ; preds = %313
  br label %316

316:                                              ; preds = %332, %315
  %.lcssa153157 = phi i32 [ %321, %332 ], [ %.lcssa153157.lcssa163, %315 ]
  %317 = phi i32 [ %333, %332 ], [ 0, %315 ]
  %318 = icmp samesign ult i32 %317, 2
  br i1 %318, label %319, label %334

319:                                              ; preds = %316
  br label %320

320:                                              ; preds = %329, %319
  %321 = phi i32 [ %330, %329 ], [ 0, %319 ]
  %322 = icmp samesign ult i32 %321, 2
  br i1 %322, label %323, label %331

323:                                              ; preds = %320
  %324 = shl nuw nsw i32 %321, 6
  %325 = shl nuw nsw i32 %317, 3
  %326 = or disjoint i32 %324, %325
  %327 = zext nneg i32 %326 to i64
  %328 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %327
  store i32 1, ptr %328, align 4
  br label %329

329:                                              ; preds = %323
  %330 = add nuw nsw i32 %321, 1
  br label %320, !llvm.loop !52

331:                                              ; preds = %320
  br label %332

332:                                              ; preds = %331
  %333 = add nuw nsw i32 %317, 1
  br label %316, !llvm.loop !53

334:                                              ; preds = %316
  br label %335

335:                                              ; preds = %334
  br label %313, !llvm.loop !54

336:                                              ; preds = %313
  store i32 %.lcssa155161, ptr %1, align 4
  store i32 %.lcssa153157.lcssa163, ptr %2, align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %337

337:                                              ; preds = %361, %336
  %.lcssa165169.lcssa175 = phi i32 [ %.lcssa165169, %361 ], [ %.lcssa153157.lcssa163, %336 ]
  %.lcssa167173 = phi i32 [ %342, %361 ], [ %.lcssa155161, %336 ]
  %338 = phi i32 [ %362, %361 ], [ 0, %336 ]
  %339 = icmp samesign ult i32 %338, 2
  br i1 %339, label %340, label %363

340:                                              ; preds = %337
  br label %341

341:                                              ; preds = %358, %340
  %.lcssa165169 = phi i32 [ %346, %358 ], [ %.lcssa165169.lcssa175, %340 ]
  %342 = phi i32 [ %359, %358 ], [ 0, %340 ]
  %343 = icmp samesign ult i32 %342, 2
  br i1 %343, label %344, label %360

344:                                              ; preds = %341
  br label %345

345:                                              ; preds = %355, %344
  %346 = phi i32 [ %356, %355 ], [ 0, %344 ]
  %347 = icmp samesign ult i32 %346, 2
  br i1 %347, label %348, label %357

348:                                              ; preds = %345
  %349 = shl nuw nsw i32 %346, 6
  %350 = shl nuw nsw i32 %342, 3
  %351 = or disjoint i32 %349, %350
  %352 = or disjoint i32 %338, %351
  %353 = zext nneg i32 %352 to i64
  %354 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %353
  store i32 1, ptr %354, align 4
  br label %355

355:                                              ; preds = %348
  %356 = add nuw nsw i32 %346, 1
  br label %345, !llvm.loop !55

357:                                              ; preds = %345
  br label %358

358:                                              ; preds = %357
  %359 = add nuw nsw i32 %342, 1
  br label %341, !llvm.loop !56

360:                                              ; preds = %341
  br label %361

361:                                              ; preds = %360
  %362 = add nuw nsw i32 %338, 1
  br label %337, !llvm.loop !57

363:                                              ; preds = %337
  store i32 %.lcssa167173, ptr %1, align 4
  store i32 %.lcssa165169.lcssa175, ptr %2, align 4
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 73, ptr %3, align 4
  store i32 0, ptr @kount, align 4
  %364 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %364, 0
  br i1 %.not, label %368, label %365

365:                                              ; preds = %363
  %366 = load i32, ptr %3, align 4
  %367 = call i32 @Place(i32 noundef 0, i32 noundef %366)
  store i32 %367, ptr @n, align 4
  br label %369

368:                                              ; preds = %363
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %369

369:                                              ; preds = %368, %365
  %370 = load i32, ptr @n, align 4
  %371 = call i32 @Trial(i32 noundef %370)
  %.not176 = icmp eq i32 %371, 0
  br i1 %.not176, label %372, label %373

372:                                              ; preds = %369
  %puts177 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %377

373:                                              ; preds = %369
  %374 = load i32, ptr @kount, align 4
  %.not178 = icmp eq i32 %374, 2005
  br i1 %.not178, label %376, label %375

375:                                              ; preds = %373
  %puts179 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %376

376:                                              ; preds = %375, %373
  br label %377

377:                                              ; preds = %376, %372
  %378 = load i32, ptr @n, align 4
  %379 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %378) #3
  %380 = load i32, ptr @kount, align 4
  %381 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %380) #3
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %5, %0
  %2 = phi i32 [ %6, %5 ], [ 0, %0 ]
  %3 = icmp samesign ult i32 %2, 100
  br i1 %3, label %4, label %7

4:                                                ; preds = %1
  call void @Puzzle()
  br label %5

5:                                                ; preds = %4
  %6 = add nuw nsw i32 %2, 1
  br label %1, !llvm.loop !58

7:                                                ; preds = %1
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
