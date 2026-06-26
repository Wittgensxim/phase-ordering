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
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  %.phi.trans.insert = sext i32 %0 to i64
  %.phi.trans.insert4 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert4, align 4
  br label %6

6:                                                ; preds = %20, %2
  %7 = phi i32 [ 0, %2 ], [ %21, %20 ]
  store i32 %7, ptr %5, align 4
  %.not = icmp sgt i32 %7, %.pre
  br i1 %.not, label %22, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  %10 = sext i32 %7 to i64
  %11 = getelementptr inbounds [4 x i8], ptr %9, i64 %10
  %12 = load i32, ptr %11, align 4
  %.not2 = icmp eq i32 %12, 0
  br i1 %.not2, label %20, label %13

13:                                               ; preds = %8
  %14 = add nsw i32 %1, %7
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %15
  %17 = load i32, ptr %16, align 4
  %.not3 = icmp eq i32 %17, 0
  br i1 %.not3, label %19, label %18

18:                                               ; preds = %13
  br label %23

19:                                               ; preds = %13
  br label %20

20:                                               ; preds = %19, %8
  %21 = add nsw i32 %7, 1
  br label %6, !llvm.loop !7

22:                                               ; preds = %6
  br label %23

23:                                               ; preds = %22, %18
  %storemerge1 = phi i32 [ 1, %22 ], [ 0, %18 ]
  ret i32 %storemerge1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Place(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  %.phi.trans.insert = sext i32 %0 to i64
  %.phi.trans.insert5 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert5, align 4
  br label %6

6:                                                ; preds = %17, %2
  %7 = phi i32 [ 0, %2 ], [ %18, %17 ]
  store i32 %7, ptr %5, align 4
  %.not = icmp sgt i32 %7, %.pre
  br i1 %.not, label %19, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  %10 = sext i32 %7 to i64
  %11 = getelementptr inbounds [4 x i8], ptr %9, i64 %10
  %12 = load i32, ptr %11, align 4
  %.not4 = icmp eq i32 %12, 0
  br i1 %.not4, label %17, label %13

13:                                               ; preds = %8
  %14 = add nsw i32 %1, %7
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %15
  store i32 1, ptr %16, align 4
  br label %17

17:                                               ; preds = %13, %8
  %18 = add nsw i32 %7, 1
  br label %6, !llvm.loop !9

19:                                               ; preds = %6
  %20 = getelementptr inbounds [4 x i8], ptr @class, i64 %.phi.trans.insert
  %21 = load i32, ptr %20, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %22
  %24 = load i32, ptr %23, align 4
  %25 = add nsw i32 %24, -1
  store i32 %25, ptr %23, align 4
  br label %26

26:                                               ; preds = %34, %19
  %27 = phi i32 [ %1, %19 ], [ %35, %34 ]
  store i32 %27, ptr %5, align 4
  %28 = icmp slt i32 %27, 512
  br i1 %28, label %29, label %36

29:                                               ; preds = %26
  %30 = sext i32 %27 to i64
  %31 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %30
  %32 = load i32, ptr %31, align 4
  %.not3 = icmp eq i32 %32, 0
  br i1 %.not3, label %33, label %34

33:                                               ; preds = %29
  br label %37

34:                                               ; preds = %29
  %35 = add nsw i32 %27, 1
  br label %26, !llvm.loop !10

36:                                               ; preds = %26
  br label %37

37:                                               ; preds = %36, %33
  %storemerge2 = phi i32 [ 0, %36 ], [ %27, %33 ]
  ret i32 %storemerge2
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Remove(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  %.phi.trans.insert = sext i32 %0 to i64
  %.phi.trans.insert2 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert2, align 4
  br label %6

6:                                                ; preds = %17, %2
  %7 = phi i32 [ 0, %2 ], [ %18, %17 ]
  store i32 %7, ptr %5, align 4
  %.not = icmp sgt i32 %7, %.pre
  br i1 %.not, label %19, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  %10 = sext i32 %7 to i64
  %11 = getelementptr inbounds [4 x i8], ptr %9, i64 %10
  %12 = load i32, ptr %11, align 4
  %.not1 = icmp eq i32 %12, 0
  br i1 %.not1, label %17, label %13

13:                                               ; preds = %8
  %14 = add nsw i32 %1, %7
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %15
  store i32 0, ptr %16, align 4
  br label %17

17:                                               ; preds = %13, %8
  %18 = add nsw i32 %7, 1
  br label %6, !llvm.loop !11

19:                                               ; preds = %6
  %20 = getelementptr inbounds [4 x i8], ptr @class, i64 %.phi.trans.insert
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
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %5 = load i32, ptr @kount, align 4
  %6 = add nsw i32 %5, 1
  store i32 %6, ptr @kount, align 4
  br label %7

7:                                                ; preds = %29, %1
  %8 = phi i32 [ %0, %1 ], [ %30, %29 ]
  %9 = phi i32 [ 0, %1 ], [ %31, %29 ]
  store i32 %9, ptr %3, align 4
  %10 = icmp slt i32 %9, 13
  br i1 %10, label %11, label %32

11:                                               ; preds = %7
  %12 = sext i32 %9 to i64
  %13 = getelementptr inbounds [4 x i8], ptr @class, i64 %12
  %14 = load i32, ptr %13, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %15
  %17 = load i32, ptr %16, align 4
  %.not = icmp eq i32 %17, 0
  br i1 %.not, label %29, label %18

18:                                               ; preds = %11
  %19 = call i32 @Fit(i32 noundef %9, i32 noundef %8)
  %.not2 = icmp eq i32 %19, 0
  br i1 %.not2, label %27, label %20

20:                                               ; preds = %18
  %21 = call i32 @Place(i32 noundef %9, i32 noundef %8)
  store i32 %21, ptr %4, align 4
  %22 = call i32 @Trial(i32 noundef %21)
  %.not3 = icmp eq i32 %22, 0
  br i1 %.not3, label %23, label %25

23:                                               ; preds = %20
  %24 = icmp eq i32 %21, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %23, %20
  br label %33

26:                                               ; preds = %23
  call void @Remove(i32 noundef %9, i32 noundef %0)
  br label %27

27:                                               ; preds = %26, %18
  %28 = phi i32 [ %0, %26 ], [ %8, %18 ]
  br label %29

29:                                               ; preds = %27, %11
  %30 = phi i32 [ %28, %27 ], [ %8, %11 ]
  %31 = add nsw i32 %9, 1
  br label %7, !llvm.loop !12

32:                                               ; preds = %7
  br label %33

33:                                               ; preds = %32, %25
  %storemerge1 = phi i32 [ 0, %32 ], [ 1, %25 ]
  ret i32 %storemerge1
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Puzzle() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  br label %5

5:                                                ; preds = %8, %0
  %6 = phi i32 [ 0, %0 ], [ %11, %8 ]
  store i32 %6, ptr %4, align 4
  %7 = icmp slt i32 %6, 512
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = sext i32 %6 to i64
  %10 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %9
  store i32 1, ptr %10, align 4
  %11 = add nsw i32 %6, 1
  br label %5, !llvm.loop !13

12:                                               ; preds = %5
  br label %13

13:                                               ; preds = %36, %12
  %14 = phi i32 [ 1, %12 ], [ %37, %36 ]
  store i32 %14, ptr %1, align 4
  %15 = icmp slt i32 %14, 6
  br i1 %15, label %16, label %38

16:                                               ; preds = %13
  br label %17

17:                                               ; preds = %34, %16
  %18 = phi i32 [ %14, %16 ], [ %23, %34 ]
  %19 = phi i32 [ 1, %16 ], [ %35, %34 ]
  store i32 %19, ptr %2, align 4
  %20 = icmp slt i32 %19, 6
  br i1 %20, label %21, label %36

21:                                               ; preds = %17
  br label %22

22:                                               ; preds = %26, %21
  %23 = phi i32 [ %18, %21 ], [ %14, %26 ]
  %24 = phi i32 [ 1, %21 ], [ %33, %26 ]
  store i32 %24, ptr %3, align 4
  %25 = icmp slt i32 %24, 6
  br i1 %25, label %26, label %34

26:                                               ; preds = %22
  %27 = shl i32 %24, 6
  %28 = shl i32 %19, 3
  %29 = add i32 %27, %28
  %30 = add nsw i32 %14, %29
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %31
  store i32 0, ptr %32, align 4
  %33 = add nsw i32 %24, 1
  br label %22, !llvm.loop !14

34:                                               ; preds = %22
  %35 = add nsw i32 %19, 1
  br label %17, !llvm.loop !15

36:                                               ; preds = %17
  %37 = add nsw i32 %18, 1
  br label %13, !llvm.loop !16

38:                                               ; preds = %13
  br label %39

39:                                               ; preds = %52, %38
  %40 = phi i32 [ 0, %38 ], [ %53, %52 ]
  store i32 %40, ptr %1, align 4
  %41 = icmp slt i32 %40, 13
  br i1 %41, label %42, label %54

42:                                               ; preds = %39
  br label %43

43:                                               ; preds = %46, %42
  %44 = phi i32 [ 0, %42 ], [ %51, %46 ]
  store i32 %44, ptr %4, align 4
  %45 = icmp slt i32 %44, 512
  br i1 %45, label %46, label %52

46:                                               ; preds = %43
  %47 = sext i32 %40 to i64
  %48 = getelementptr inbounds [2048 x i8], ptr @p, i64 %47
  %49 = sext i32 %44 to i64
  %50 = getelementptr inbounds [4 x i8], ptr %48, i64 %49
  store i32 0, ptr %50, align 4
  %51 = add nsw i32 %44, 1
  br label %43, !llvm.loop !17

52:                                               ; preds = %43
  %53 = add nsw i32 %40, 1
  br label %39, !llvm.loop !18

54:                                               ; preds = %39
  br label %55

55:                                               ; preds = %78, %54
  %56 = phi i32 [ 0, %54 ], [ %79, %78 ]
  store i32 %56, ptr %1, align 4
  %57 = icmp slt i32 %56, 4
  br i1 %57, label %58, label %80

58:                                               ; preds = %55
  br label %59

59:                                               ; preds = %76, %58
  %60 = phi i32 [ %56, %58 ], [ %65, %76 ]
  %61 = phi i32 [ 0, %58 ], [ %77, %76 ]
  store i32 %61, ptr %2, align 4
  %62 = icmp slt i32 %61, 2
  br i1 %62, label %63, label %78

63:                                               ; preds = %59
  br label %64

64:                                               ; preds = %68, %63
  %65 = phi i32 [ %60, %63 ], [ %56, %68 ]
  %66 = phi i32 [ 0, %63 ], [ %75, %68 ]
  store i32 %66, ptr %3, align 4
  %67 = icmp slt i32 %66, 1
  br i1 %67, label %68, label %76

68:                                               ; preds = %64
  %69 = shl i32 %66, 6
  %70 = shl i32 %61, 3
  %71 = add i32 %69, %70
  %72 = add nsw i32 %56, %71
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [4 x i8], ptr @p, i64 %73
  store i32 1, ptr %74, align 4
  %75 = add nsw i32 %66, 1
  br label %64, !llvm.loop !19

76:                                               ; preds = %64
  %77 = add nsw i32 %61, 1
  br label %59, !llvm.loop !20

78:                                               ; preds = %59
  %79 = add nsw i32 %60, 1
  br label %55, !llvm.loop !21

80:                                               ; preds = %55
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %81

81:                                               ; preds = %104, %80
  %82 = phi i32 [ 0, %80 ], [ %105, %104 ]
  store i32 %82, ptr %1, align 4
  %83 = icmp slt i32 %82, 2
  br i1 %83, label %84, label %106

84:                                               ; preds = %81
  br label %85

85:                                               ; preds = %102, %84
  %86 = phi i32 [ %82, %84 ], [ %91, %102 ]
  %87 = phi i32 [ 0, %84 ], [ %103, %102 ]
  store i32 %87, ptr %2, align 4
  %88 = icmp slt i32 %87, 1
  br i1 %88, label %89, label %104

89:                                               ; preds = %85
  br label %90

90:                                               ; preds = %94, %89
  %91 = phi i32 [ %86, %89 ], [ %82, %94 ]
  %92 = phi i32 [ 0, %89 ], [ %101, %94 ]
  store i32 %92, ptr %3, align 4
  %93 = icmp slt i32 %92, 4
  br i1 %93, label %94, label %102

94:                                               ; preds = %90
  %95 = shl i32 %92, 6
  %96 = shl i32 %87, 3
  %97 = add i32 %95, %96
  %98 = add nsw i32 %82, %97
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %99
  store i32 1, ptr %100, align 4
  %101 = add nsw i32 %92, 1
  br label %90, !llvm.loop !22

102:                                              ; preds = %90
  %103 = add nsw i32 %87, 1
  br label %85, !llvm.loop !23

104:                                              ; preds = %85
  %105 = add nsw i32 %86, 1
  br label %81, !llvm.loop !24

106:                                              ; preds = %81
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %107

107:                                              ; preds = %130, %106
  %108 = phi i32 [ 0, %106 ], [ %131, %130 ]
  store i32 %108, ptr %1, align 4
  %109 = icmp slt i32 %108, 1
  br i1 %109, label %110, label %132

110:                                              ; preds = %107
  br label %111

111:                                              ; preds = %128, %110
  %112 = phi i32 [ %108, %110 ], [ %117, %128 ]
  %113 = phi i32 [ 0, %110 ], [ %129, %128 ]
  store i32 %113, ptr %2, align 4
  %114 = icmp slt i32 %113, 4
  br i1 %114, label %115, label %130

115:                                              ; preds = %111
  br label %116

116:                                              ; preds = %120, %115
  %117 = phi i32 [ %112, %115 ], [ %108, %120 ]
  %118 = phi i32 [ 0, %115 ], [ %127, %120 ]
  store i32 %118, ptr %3, align 4
  %119 = icmp slt i32 %118, 2
  br i1 %119, label %120, label %128

120:                                              ; preds = %116
  %121 = shl i32 %118, 6
  %122 = shl i32 %113, 3
  %123 = add i32 %121, %122
  %124 = add nsw i32 %108, %123
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %125
  store i32 1, ptr %126, align 4
  %127 = add nsw i32 %118, 1
  br label %116, !llvm.loop !25

128:                                              ; preds = %116
  %129 = add nsw i32 %113, 1
  br label %111, !llvm.loop !26

130:                                              ; preds = %111
  %131 = add nsw i32 %112, 1
  br label %107, !llvm.loop !27

132:                                              ; preds = %107
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %133

133:                                              ; preds = %156, %132
  %134 = phi i32 [ 0, %132 ], [ %157, %156 ]
  store i32 %134, ptr %1, align 4
  %135 = icmp slt i32 %134, 2
  br i1 %135, label %136, label %158

136:                                              ; preds = %133
  br label %137

137:                                              ; preds = %154, %136
  %138 = phi i32 [ %134, %136 ], [ %143, %154 ]
  %139 = phi i32 [ 0, %136 ], [ %155, %154 ]
  store i32 %139, ptr %2, align 4
  %140 = icmp slt i32 %139, 4
  br i1 %140, label %141, label %156

141:                                              ; preds = %137
  br label %142

142:                                              ; preds = %146, %141
  %143 = phi i32 [ %138, %141 ], [ %134, %146 ]
  %144 = phi i32 [ 0, %141 ], [ %153, %146 ]
  store i32 %144, ptr %3, align 4
  %145 = icmp slt i32 %144, 1
  br i1 %145, label %146, label %154

146:                                              ; preds = %142
  %147 = shl i32 %144, 6
  %148 = shl i32 %139, 3
  %149 = add i32 %147, %148
  %150 = add nsw i32 %134, %149
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %151
  store i32 1, ptr %152, align 4
  %153 = add nsw i32 %144, 1
  br label %142, !llvm.loop !28

154:                                              ; preds = %142
  %155 = add nsw i32 %139, 1
  br label %137, !llvm.loop !29

156:                                              ; preds = %137
  %157 = add nsw i32 %138, 1
  br label %133, !llvm.loop !30

158:                                              ; preds = %133
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %159

159:                                              ; preds = %182, %158
  %160 = phi i32 [ 0, %158 ], [ %183, %182 ]
  store i32 %160, ptr %1, align 4
  %161 = icmp slt i32 %160, 4
  br i1 %161, label %162, label %184

162:                                              ; preds = %159
  br label %163

163:                                              ; preds = %180, %162
  %164 = phi i32 [ %160, %162 ], [ %169, %180 ]
  %165 = phi i32 [ 0, %162 ], [ %181, %180 ]
  store i32 %165, ptr %2, align 4
  %166 = icmp slt i32 %165, 1
  br i1 %166, label %167, label %182

167:                                              ; preds = %163
  br label %168

168:                                              ; preds = %172, %167
  %169 = phi i32 [ %164, %167 ], [ %160, %172 ]
  %170 = phi i32 [ 0, %167 ], [ %179, %172 ]
  store i32 %170, ptr %3, align 4
  %171 = icmp slt i32 %170, 2
  br i1 %171, label %172, label %180

172:                                              ; preds = %168
  %173 = shl i32 %170, 6
  %174 = shl i32 %165, 3
  %175 = add i32 %173, %174
  %176 = add nsw i32 %160, %175
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %177
  store i32 1, ptr %178, align 4
  %179 = add nsw i32 %170, 1
  br label %168, !llvm.loop !31

180:                                              ; preds = %168
  %181 = add nsw i32 %165, 1
  br label %163, !llvm.loop !32

182:                                              ; preds = %163
  %183 = add nsw i32 %164, 1
  br label %159, !llvm.loop !33

184:                                              ; preds = %159
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %185

185:                                              ; preds = %208, %184
  %186 = phi i32 [ 0, %184 ], [ %209, %208 ]
  store i32 %186, ptr %1, align 4
  %187 = icmp slt i32 %186, 1
  br i1 %187, label %188, label %210

188:                                              ; preds = %185
  br label %189

189:                                              ; preds = %206, %188
  %190 = phi i32 [ %186, %188 ], [ %195, %206 ]
  %191 = phi i32 [ 0, %188 ], [ %207, %206 ]
  store i32 %191, ptr %2, align 4
  %192 = icmp slt i32 %191, 2
  br i1 %192, label %193, label %208

193:                                              ; preds = %189
  br label %194

194:                                              ; preds = %198, %193
  %195 = phi i32 [ %190, %193 ], [ %186, %198 ]
  %196 = phi i32 [ 0, %193 ], [ %205, %198 ]
  store i32 %196, ptr %3, align 4
  %197 = icmp slt i32 %196, 4
  br i1 %197, label %198, label %206

198:                                              ; preds = %194
  %199 = shl i32 %196, 6
  %200 = shl i32 %191, 3
  %201 = add i32 %199, %200
  %202 = add nsw i32 %186, %201
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %203
  store i32 1, ptr %204, align 4
  %205 = add nsw i32 %196, 1
  br label %194, !llvm.loop !34

206:                                              ; preds = %194
  %207 = add nsw i32 %191, 1
  br label %189, !llvm.loop !35

208:                                              ; preds = %189
  %209 = add nsw i32 %190, 1
  br label %185, !llvm.loop !36

210:                                              ; preds = %185
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %211

211:                                              ; preds = %234, %210
  %212 = phi i32 [ 0, %210 ], [ %235, %234 ]
  store i32 %212, ptr %1, align 4
  %213 = icmp slt i32 %212, 3
  br i1 %213, label %214, label %236

214:                                              ; preds = %211
  br label %215

215:                                              ; preds = %232, %214
  %216 = phi i32 [ %212, %214 ], [ %221, %232 ]
  %217 = phi i32 [ 0, %214 ], [ %233, %232 ]
  store i32 %217, ptr %2, align 4
  %218 = icmp slt i32 %217, 1
  br i1 %218, label %219, label %234

219:                                              ; preds = %215
  br label %220

220:                                              ; preds = %224, %219
  %221 = phi i32 [ %216, %219 ], [ %212, %224 ]
  %222 = phi i32 [ 0, %219 ], [ %231, %224 ]
  store i32 %222, ptr %3, align 4
  %223 = icmp slt i32 %222, 1
  br i1 %223, label %224, label %232

224:                                              ; preds = %220
  %225 = shl i32 %222, 6
  %226 = shl i32 %217, 3
  %227 = add i32 %225, %226
  %228 = add nsw i32 %212, %227
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %229
  store i32 1, ptr %230, align 4
  %231 = add nsw i32 %222, 1
  br label %220, !llvm.loop !37

232:                                              ; preds = %220
  %233 = add nsw i32 %217, 1
  br label %215, !llvm.loop !38

234:                                              ; preds = %215
  %235 = add nsw i32 %216, 1
  br label %211, !llvm.loop !39

236:                                              ; preds = %211
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %237

237:                                              ; preds = %260, %236
  %238 = phi i32 [ 0, %236 ], [ %261, %260 ]
  store i32 %238, ptr %1, align 4
  %239 = icmp slt i32 %238, 1
  br i1 %239, label %240, label %262

240:                                              ; preds = %237
  br label %241

241:                                              ; preds = %258, %240
  %242 = phi i32 [ %238, %240 ], [ %247, %258 ]
  %243 = phi i32 [ 0, %240 ], [ %259, %258 ]
  store i32 %243, ptr %2, align 4
  %244 = icmp slt i32 %243, 3
  br i1 %244, label %245, label %260

245:                                              ; preds = %241
  br label %246

246:                                              ; preds = %250, %245
  %247 = phi i32 [ %242, %245 ], [ %238, %250 ]
  %248 = phi i32 [ 0, %245 ], [ %257, %250 ]
  store i32 %248, ptr %3, align 4
  %249 = icmp slt i32 %248, 1
  br i1 %249, label %250, label %258

250:                                              ; preds = %246
  %251 = shl i32 %248, 6
  %252 = shl i32 %243, 3
  %253 = add i32 %251, %252
  %254 = add nsw i32 %238, %253
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %255
  store i32 1, ptr %256, align 4
  %257 = add nsw i32 %248, 1
  br label %246, !llvm.loop !40

258:                                              ; preds = %246
  %259 = add nsw i32 %243, 1
  br label %241, !llvm.loop !41

260:                                              ; preds = %241
  %261 = add nsw i32 %242, 1
  br label %237, !llvm.loop !42

262:                                              ; preds = %237
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %263

263:                                              ; preds = %286, %262
  %264 = phi i32 [ 0, %262 ], [ %287, %286 ]
  store i32 %264, ptr %1, align 4
  %265 = icmp slt i32 %264, 1
  br i1 %265, label %266, label %288

266:                                              ; preds = %263
  br label %267

267:                                              ; preds = %284, %266
  %268 = phi i32 [ %264, %266 ], [ %273, %284 ]
  %269 = phi i32 [ 0, %266 ], [ %285, %284 ]
  store i32 %269, ptr %2, align 4
  %270 = icmp slt i32 %269, 1
  br i1 %270, label %271, label %286

271:                                              ; preds = %267
  br label %272

272:                                              ; preds = %276, %271
  %273 = phi i32 [ %268, %271 ], [ %264, %276 ]
  %274 = phi i32 [ 0, %271 ], [ %283, %276 ]
  store i32 %274, ptr %3, align 4
  %275 = icmp slt i32 %274, 3
  br i1 %275, label %276, label %284

276:                                              ; preds = %272
  %277 = shl i32 %274, 6
  %278 = shl i32 %269, 3
  %279 = add i32 %277, %278
  %280 = add nsw i32 %264, %279
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %281
  store i32 1, ptr %282, align 4
  %283 = add nsw i32 %274, 1
  br label %272, !llvm.loop !43

284:                                              ; preds = %272
  %285 = add nsw i32 %269, 1
  br label %267, !llvm.loop !44

286:                                              ; preds = %267
  %287 = add nsw i32 %268, 1
  br label %263, !llvm.loop !45

288:                                              ; preds = %263
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %289

289:                                              ; preds = %312, %288
  %290 = phi i32 [ 0, %288 ], [ %313, %312 ]
  store i32 %290, ptr %1, align 4
  %291 = icmp slt i32 %290, 2
  br i1 %291, label %292, label %314

292:                                              ; preds = %289
  br label %293

293:                                              ; preds = %310, %292
  %294 = phi i32 [ %290, %292 ], [ %299, %310 ]
  %295 = phi i32 [ 0, %292 ], [ %311, %310 ]
  store i32 %295, ptr %2, align 4
  %296 = icmp slt i32 %295, 2
  br i1 %296, label %297, label %312

297:                                              ; preds = %293
  br label %298

298:                                              ; preds = %302, %297
  %299 = phi i32 [ %294, %297 ], [ %290, %302 ]
  %300 = phi i32 [ 0, %297 ], [ %309, %302 ]
  store i32 %300, ptr %3, align 4
  %301 = icmp slt i32 %300, 1
  br i1 %301, label %302, label %310

302:                                              ; preds = %298
  %303 = shl i32 %300, 6
  %304 = shl i32 %295, 3
  %305 = add i32 %303, %304
  %306 = add nsw i32 %290, %305
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %307
  store i32 1, ptr %308, align 4
  %309 = add nsw i32 %300, 1
  br label %298, !llvm.loop !46

310:                                              ; preds = %298
  %311 = add nsw i32 %295, 1
  br label %293, !llvm.loop !47

312:                                              ; preds = %293
  %313 = add nsw i32 %294, 1
  br label %289, !llvm.loop !48

314:                                              ; preds = %289
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %315

315:                                              ; preds = %338, %314
  %316 = phi i32 [ 0, %314 ], [ %339, %338 ]
  store i32 %316, ptr %1, align 4
  %317 = icmp slt i32 %316, 2
  br i1 %317, label %318, label %340

318:                                              ; preds = %315
  br label %319

319:                                              ; preds = %336, %318
  %320 = phi i32 [ %316, %318 ], [ %325, %336 ]
  %321 = phi i32 [ 0, %318 ], [ %337, %336 ]
  store i32 %321, ptr %2, align 4
  %322 = icmp slt i32 %321, 1
  br i1 %322, label %323, label %338

323:                                              ; preds = %319
  br label %324

324:                                              ; preds = %328, %323
  %325 = phi i32 [ %320, %323 ], [ %316, %328 ]
  %326 = phi i32 [ 0, %323 ], [ %335, %328 ]
  store i32 %326, ptr %3, align 4
  %327 = icmp slt i32 %326, 2
  br i1 %327, label %328, label %336

328:                                              ; preds = %324
  %329 = shl i32 %326, 6
  %330 = shl i32 %321, 3
  %331 = add i32 %329, %330
  %332 = add nsw i32 %316, %331
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %333
  store i32 1, ptr %334, align 4
  %335 = add nsw i32 %326, 1
  br label %324, !llvm.loop !49

336:                                              ; preds = %324
  %337 = add nsw i32 %321, 1
  br label %319, !llvm.loop !50

338:                                              ; preds = %319
  %339 = add nsw i32 %320, 1
  br label %315, !llvm.loop !51

340:                                              ; preds = %315
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %341

341:                                              ; preds = %364, %340
  %342 = phi i32 [ 0, %340 ], [ %365, %364 ]
  store i32 %342, ptr %1, align 4
  %343 = icmp slt i32 %342, 1
  br i1 %343, label %344, label %366

344:                                              ; preds = %341
  br label %345

345:                                              ; preds = %362, %344
  %346 = phi i32 [ %342, %344 ], [ %351, %362 ]
  %347 = phi i32 [ 0, %344 ], [ %363, %362 ]
  store i32 %347, ptr %2, align 4
  %348 = icmp slt i32 %347, 2
  br i1 %348, label %349, label %364

349:                                              ; preds = %345
  br label %350

350:                                              ; preds = %354, %349
  %351 = phi i32 [ %346, %349 ], [ %342, %354 ]
  %352 = phi i32 [ 0, %349 ], [ %361, %354 ]
  store i32 %352, ptr %3, align 4
  %353 = icmp slt i32 %352, 2
  br i1 %353, label %354, label %362

354:                                              ; preds = %350
  %355 = shl i32 %352, 6
  %356 = shl i32 %347, 3
  %357 = add i32 %355, %356
  %358 = add nsw i32 %342, %357
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %359
  store i32 1, ptr %360, align 4
  %361 = add nsw i32 %352, 1
  br label %350, !llvm.loop !52

362:                                              ; preds = %350
  %363 = add nsw i32 %347, 1
  br label %345, !llvm.loop !53

364:                                              ; preds = %345
  %365 = add nsw i32 %346, 1
  br label %341, !llvm.loop !54

366:                                              ; preds = %341
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %367

367:                                              ; preds = %390, %366
  %368 = phi i32 [ 0, %366 ], [ %391, %390 ]
  store i32 %368, ptr %1, align 4
  %369 = icmp slt i32 %368, 2
  br i1 %369, label %370, label %392

370:                                              ; preds = %367
  br label %371

371:                                              ; preds = %388, %370
  %372 = phi i32 [ %368, %370 ], [ %377, %388 ]
  %373 = phi i32 [ 0, %370 ], [ %389, %388 ]
  store i32 %373, ptr %2, align 4
  %374 = icmp slt i32 %373, 2
  br i1 %374, label %375, label %390

375:                                              ; preds = %371
  br label %376

376:                                              ; preds = %380, %375
  %377 = phi i32 [ %372, %375 ], [ %368, %380 ]
  %378 = phi i32 [ 0, %375 ], [ %387, %380 ]
  store i32 %378, ptr %3, align 4
  %379 = icmp slt i32 %378, 2
  br i1 %379, label %380, label %388

380:                                              ; preds = %376
  %381 = shl i32 %378, 6
  %382 = shl i32 %373, 3
  %383 = add i32 %381, %382
  %384 = add nsw i32 %368, %383
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %385
  store i32 1, ptr %386, align 4
  %387 = add nsw i32 %378, 1
  br label %376, !llvm.loop !55

388:                                              ; preds = %376
  %389 = add nsw i32 %373, 1
  br label %371, !llvm.loop !56

390:                                              ; preds = %371
  %391 = add nsw i32 %372, 1
  br label %367, !llvm.loop !57

392:                                              ; preds = %367
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 73, ptr %4, align 4
  store i32 0, ptr @kount, align 4
  %393 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %393, 0
  br i1 %.not, label %396, label %394

394:                                              ; preds = %392
  %395 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %395, ptr @n, align 4
  br label %397

396:                                              ; preds = %392
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %.pre = load i32, ptr @n, align 4
  br label %397

397:                                              ; preds = %396, %394
  %398 = phi i32 [ %.pre, %396 ], [ %395, %394 ]
  %399 = call i32 @Trial(i32 noundef %398)
  %.not16 = icmp eq i32 %399, 0
  br i1 %.not16, label %400, label %401

400:                                              ; preds = %397
  %puts17 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %405

401:                                              ; preds = %397
  %402 = load i32, ptr @kount, align 4
  %.not18 = icmp eq i32 %402, 2005
  br i1 %.not18, label %404, label %403

403:                                              ; preds = %401
  %puts19 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %404

404:                                              ; preds = %403, %401
  br label %405

405:                                              ; preds = %404, %400
  %406 = load i32, ptr @n, align 4
  %407 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %406) #3
  %408 = load i32, ptr @kount, align 4
  %409 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %408) #3
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  br label %2

2:                                                ; preds = %5, %0
  %3 = phi i32 [ 0, %0 ], [ %6, %5 ]
  store i32 %3, ptr %1, align 4
  %4 = icmp slt i32 %3, 100
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  call void @Puzzle()
  %6 = add nsw i32 %3, 1
  br label %2, !llvm.loop !58

7:                                                ; preds = %2
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
