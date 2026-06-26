; ModuleID = 'results\paper_full\Stanford_Puzzle\round_001\output.ll'
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
  %.phi.trans.insert = sext i32 %0 to i64
  %.phi.trans.insert1 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert1, align 4
  %.not1 = icmp sgt i32 0, %.pre
  br i1 %.not1, label %18, label %.lr.ph

.lr.ph:                                           ; preds = %2
  br label %3

3:                                                ; preds = %16, %.lr.ph
  %4 = phi i32 [ 0, %.lr.ph ], [ %17, %16 ]
  %5 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  %6 = zext nneg i32 %4 to i64
  %7 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %6
  %8 = load i32, ptr %7, align 4
  %.not2 = icmp eq i32 %8, 0
  br i1 %.not2, label %16, label %9

9:                                                ; preds = %3
  %10 = add nsw i32 %1, %4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %11
  %13 = load i32, ptr %12, align 4
  %.not3 = icmp eq i32 %13, 0
  br i1 %.not3, label %15, label %14

14:                                               ; preds = %9
  br label %19

15:                                               ; preds = %9
  br label %16

16:                                               ; preds = %15, %3
  %17 = add nuw nsw i32 %4, 1
  %.not = icmp sgt i32 %17, %.pre
  br i1 %.not, label %._crit_edge, label %3, !llvm.loop !7

._crit_edge:                                      ; preds = %16
  br label %18

18:                                               ; preds = %._crit_edge, %2
  br label %19

19:                                               ; preds = %18, %14
  %20 = phi i32 [ 1, %18 ], [ 0, %14 ]
  ret i32 %20
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Place(i32 noundef %0, i32 noundef %1) #0 {
  %.phi.trans.insert = sext i32 %0 to i64
  %.phi.trans.insert1 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert1, align 4
  %.not4 = icmp sgt i32 0, %.pre
  br i1 %.not4, label %15, label %.lr.ph

.lr.ph:                                           ; preds = %2
  br label %3

3:                                                ; preds = %13, %.lr.ph
  %4 = phi i32 [ 0, %.lr.ph ], [ %14, %13 ]
  %5 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  %6 = zext nneg i32 %4 to i64
  %7 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %6
  %8 = load i32, ptr %7, align 4
  %.not3 = icmp eq i32 %8, 0
  br i1 %.not3, label %13, label %9

9:                                                ; preds = %3
  %10 = add nsw i32 %1, %4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %11
  store i32 1, ptr %12, align 4
  br label %13

13:                                               ; preds = %9, %3
  %14 = add nuw nsw i32 %4, 1
  %.not = icmp sgt i32 %14, %.pre
  br i1 %.not, label %._crit_edge, label %3, !llvm.loop !9

._crit_edge:                                      ; preds = %13
  br label %15

15:                                               ; preds = %._crit_edge, %2
  %16 = getelementptr inbounds [4 x i8], ptr @class, i64 %.phi.trans.insert
  %17 = load i32, ptr %16, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %18
  %20 = load i32, ptr %19, align 4
  %21 = add nsw i32 %20, -1
  store i32 %21, ptr %19, align 4
  %22 = icmp slt i32 %1, 512
  br i1 %22, label %.lr.ph6, label %32

.lr.ph6:                                          ; preds = %15
  br label %23

23:                                               ; preds = %29, %.lr.ph6
  %24 = phi i32 [ %1, %.lr.ph6 ], [ %30, %29 ]
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %25
  %27 = load i32, ptr %26, align 4
  %.not2 = icmp eq i32 %27, 0
  br i1 %.not2, label %28, label %29

28:                                               ; preds = %23
  %.lcssa = phi i32 [ %24, %23 ]
  br label %33

29:                                               ; preds = %23
  %30 = add nsw i32 %24, 1
  %31 = icmp slt i32 %30, 512
  br i1 %31, label %23, label %._crit_edge7, !llvm.loop !10

._crit_edge7:                                     ; preds = %29
  br label %32

32:                                               ; preds = %._crit_edge7, %15
  br label %33

33:                                               ; preds = %32, %28
  %34 = phi i32 [ 0, %32 ], [ %.lcssa, %28 ]
  ret i32 %34
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Remove(i32 noundef %0, i32 noundef %1) #0 {
  %.phi.trans.insert = sext i32 %0 to i64
  %.phi.trans.insert1 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert1, align 4
  %.not1 = icmp sgt i32 0, %.pre
  br i1 %.not1, label %15, label %.lr.ph

.lr.ph:                                           ; preds = %2
  br label %3

3:                                                ; preds = %13, %.lr.ph
  %4 = phi i32 [ 0, %.lr.ph ], [ %14, %13 ]
  %5 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  %6 = zext nneg i32 %4 to i64
  %7 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %6
  %8 = load i32, ptr %7, align 4
  %.not2 = icmp eq i32 %8, 0
  br i1 %.not2, label %13, label %9

9:                                                ; preds = %3
  %10 = add nsw i32 %1, %4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %11
  store i32 0, ptr %12, align 4
  br label %13

13:                                               ; preds = %9, %3
  %14 = add nuw nsw i32 %4, 1
  %.not = icmp sgt i32 %14, %.pre
  br i1 %.not, label %._crit_edge, label %3, !llvm.loop !11

._crit_edge:                                      ; preds = %13
  br label %15

15:                                               ; preds = %._crit_edge, %2
  %16 = getelementptr inbounds [4 x i8], ptr @class, i64 %.phi.trans.insert
  %17 = load i32, ptr %16, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %18
  %20 = load i32, ptr %19, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, ptr %19, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Trial(i32 noundef %0) #0 {
  %2 = load i32, ptr @kount, align 4
  %3 = add nsw i32 %2, 1
  store i32 %3, ptr @kount, align 4
  br label %4

4:                                                ; preds = %22, %1
  %5 = phi i32 [ 0, %1 ], [ %23, %22 ]
  %6 = zext nneg i32 %5 to i64
  %7 = getelementptr inbounds nuw [4 x i8], ptr @class, i64 %6
  %8 = load i32, ptr %7, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %9
  %11 = load i32, ptr %10, align 4
  %.not = icmp eq i32 %11, 0
  br i1 %.not, label %22, label %12

12:                                               ; preds = %4
  %13 = call i32 @Fit(i32 noundef %5, i32 noundef %0)
  %.not1 = icmp eq i32 %13, 0
  br i1 %.not1, label %21, label %14

14:                                               ; preds = %12
  %15 = call i32 @Place(i32 noundef %5, i32 noundef %0)
  %16 = call i32 @Trial(i32 noundef %15)
  %.not2 = icmp eq i32 %16, 0
  br i1 %.not2, label %17, label %19

17:                                               ; preds = %14
  %18 = icmp eq i32 %15, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %17, %14
  br label %26

20:                                               ; preds = %17
  call void @Remove(i32 noundef %5, i32 noundef %0)
  br label %21

21:                                               ; preds = %20, %12
  br label %22

22:                                               ; preds = %21, %4
  %23 = add nuw nsw i32 %5, 1
  %24 = icmp samesign ult i32 %23, 13
  br i1 %24, label %4, label %25, !llvm.loop !12

25:                                               ; preds = %22
  br label %26

26:                                               ; preds = %25, %19
  %27 = phi i32 [ 0, %25 ], [ 1, %19 ]
  ret i32 %27
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Puzzle() #0 {
  br label %1

1:                                                ; preds = %1, %0
  %2 = phi i32 [ 0, %0 ], [ %5, %1 ]
  %3 = zext nneg i32 %2 to i64
  %4 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %3
  store i32 1, ptr %4, align 4
  %5 = add nuw nsw i32 %2, 1
  %6 = icmp samesign ult i32 %5, 512
  br i1 %6, label %1, label %7, !llvm.loop !13

7:                                                ; preds = %1
  br label %8

8:                                                ; preds = %25, %7
  %9 = phi i32 [ 1, %7 ], [ %26, %25 ]
  br label %10

10:                                               ; preds = %22, %8
  %11 = phi i32 [ 1, %8 ], [ %23, %22 ]
  br label %12

12:                                               ; preds = %12, %10
  %13 = phi i32 [ 1, %10 ], [ %20, %12 ]
  %14 = shl nuw nsw i32 %13, 6
  %15 = shl nuw nsw i32 %11, 3
  %16 = or disjoint i32 %14, %15
  %17 = or disjoint i32 %9, %16
  %18 = zext nneg i32 %17 to i64
  %19 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %18
  store i32 0, ptr %19, align 4
  %20 = add nuw nsw i32 %13, 1
  %21 = icmp samesign ult i32 %20, 6
  br i1 %21, label %12, label %22, !llvm.loop !14

22:                                               ; preds = %12
  %23 = add nuw nsw i32 %11, 1
  %24 = icmp samesign ult i32 %23, 6
  br i1 %24, label %10, label %25, !llvm.loop !15

25:                                               ; preds = %22
  %26 = add nuw nsw i32 %9, 1
  %27 = icmp samesign ult i32 %26, 6
  br i1 %27, label %8, label %28, !llvm.loop !16

28:                                               ; preds = %25
  br label %29

29:                                               ; preds = %39, %28
  %30 = phi i32 [ 0, %28 ], [ %40, %39 ]
  br label %31

31:                                               ; preds = %31, %29
  %32 = phi i32 [ 0, %29 ], [ %37, %31 ]
  %33 = zext nneg i32 %30 to i64
  %34 = getelementptr inbounds nuw [2048 x i8], ptr @p, i64 %33
  %35 = zext nneg i32 %32 to i64
  %36 = getelementptr inbounds nuw [4 x i8], ptr %34, i64 %35
  store i32 0, ptr %36, align 4
  %37 = add nuw nsw i32 %32, 1
  %38 = icmp samesign ult i32 %37, 512
  br i1 %38, label %31, label %39, !llvm.loop !17

39:                                               ; preds = %31
  %40 = add nuw nsw i32 %30, 1
  %41 = icmp samesign ult i32 %40, 13
  br i1 %41, label %29, label %42, !llvm.loop !18

42:                                               ; preds = %39
  br label %43

43:                                               ; preds = %55, %42
  %44 = phi i32 [ 0, %42 ], [ %56, %55 ]
  br label %45

45:                                               ; preds = %52, %43
  %46 = phi i32 [ 0, %43 ], [ %53, %52 ]
  br label %47

47:                                               ; preds = %47, %45
  %48 = shl nuw nsw i32 %46, 3
  %49 = or disjoint i32 %44, %48
  %50 = zext nneg i32 %49 to i64
  %51 = getelementptr inbounds nuw [4 x i8], ptr @p, i64 %50
  store i32 1, ptr %51, align 4
  br i1 false, label %47, label %52, !llvm.loop !19

52:                                               ; preds = %47
  %53 = add nuw nsw i32 %46, 1
  %54 = icmp samesign ult i32 %53, 2
  br i1 %54, label %45, label %55, !llvm.loop !20

55:                                               ; preds = %52
  %56 = add nuw nsw i32 %44, 1
  %57 = icmp samesign ult i32 %56, 4
  br i1 %57, label %43, label %58, !llvm.loop !21

58:                                               ; preds = %55
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %59

59:                                               ; preds = %71, %58
  %60 = phi i32 [ 0, %58 ], [ %72, %71 ]
  br label %61

61:                                               ; preds = %70, %59
  br label %62

62:                                               ; preds = %62, %61
  %63 = phi i32 [ 0, %61 ], [ %68, %62 ]
  %64 = shl nuw nsw i32 %63, 6
  %65 = or disjoint i32 %60, %64
  %66 = zext nneg i32 %65 to i64
  %67 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %66
  store i32 1, ptr %67, align 4
  %68 = add nuw nsw i32 %63, 1
  %69 = icmp samesign ult i32 %68, 4
  br i1 %69, label %62, label %70, !llvm.loop !22

70:                                               ; preds = %62
  br i1 false, label %61, label %71, !llvm.loop !23

71:                                               ; preds = %70
  %72 = add nuw nsw i32 %60, 1
  %73 = icmp samesign ult i32 %72, 2
  br i1 %73, label %59, label %74, !llvm.loop !24

74:                                               ; preds = %71
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %75

75:                                               ; preds = %90, %74
  br label %76

76:                                               ; preds = %87, %75
  %77 = phi i32 [ 0, %75 ], [ %88, %87 ]
  br label %78

78:                                               ; preds = %78, %76
  %79 = phi i32 [ 0, %76 ], [ %85, %78 ]
  %80 = shl nuw nsw i32 %79, 6
  %81 = shl nuw nsw i32 %77, 3
  %82 = or disjoint i32 %80, %81
  %83 = zext nneg i32 %82 to i64
  %84 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %83
  store i32 1, ptr %84, align 4
  %85 = add nuw nsw i32 %79, 1
  %86 = icmp samesign ult i32 %85, 2
  br i1 %86, label %78, label %87, !llvm.loop !25

87:                                               ; preds = %78
  %88 = add nuw nsw i32 %77, 1
  %89 = icmp samesign ult i32 %88, 4
  br i1 %89, label %76, label %90, !llvm.loop !26

90:                                               ; preds = %87
  br i1 false, label %75, label %91, !llvm.loop !27

91:                                               ; preds = %90
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %92

92:                                               ; preds = %104, %91
  %93 = phi i32 [ 0, %91 ], [ %105, %104 ]
  br label %94

94:                                               ; preds = %101, %92
  %95 = phi i32 [ 0, %92 ], [ %102, %101 ]
  br label %96

96:                                               ; preds = %96, %94
  %97 = shl nuw nsw i32 %95, 3
  %98 = or disjoint i32 %93, %97
  %99 = zext nneg i32 %98 to i64
  %100 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %99
  store i32 1, ptr %100, align 4
  br i1 false, label %96, label %101, !llvm.loop !28

101:                                              ; preds = %96
  %102 = add nuw nsw i32 %95, 1
  %103 = icmp samesign ult i32 %102, 4
  br i1 %103, label %94, label %104, !llvm.loop !29

104:                                              ; preds = %101
  %105 = add nuw nsw i32 %93, 1
  %106 = icmp samesign ult i32 %105, 2
  br i1 %106, label %92, label %107, !llvm.loop !30

107:                                              ; preds = %104
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %108

108:                                              ; preds = %120, %107
  %109 = phi i32 [ 0, %107 ], [ %121, %120 ]
  br label %110

110:                                              ; preds = %119, %108
  br label %111

111:                                              ; preds = %111, %110
  %112 = phi i32 [ 0, %110 ], [ %117, %111 ]
  %113 = shl nuw nsw i32 %112, 6
  %114 = or disjoint i32 %109, %113
  %115 = zext nneg i32 %114 to i64
  %116 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %115
  store i32 1, ptr %116, align 4
  %117 = add nuw nsw i32 %112, 1
  %118 = icmp samesign ult i32 %117, 2
  br i1 %118, label %111, label %119, !llvm.loop !31

119:                                              ; preds = %111
  br i1 false, label %110, label %120, !llvm.loop !32

120:                                              ; preds = %119
  %121 = add nuw nsw i32 %109, 1
  %122 = icmp samesign ult i32 %121, 4
  br i1 %122, label %108, label %123, !llvm.loop !33

123:                                              ; preds = %120
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %124

124:                                              ; preds = %139, %123
  br label %125

125:                                              ; preds = %136, %124
  %126 = phi i32 [ 0, %124 ], [ %137, %136 ]
  br label %127

127:                                              ; preds = %127, %125
  %128 = phi i32 [ 0, %125 ], [ %134, %127 ]
  %129 = shl nuw nsw i32 %128, 6
  %130 = shl nuw nsw i32 %126, 3
  %131 = or disjoint i32 %129, %130
  %132 = zext nneg i32 %131 to i64
  %133 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %132
  store i32 1, ptr %133, align 4
  %134 = add nuw nsw i32 %128, 1
  %135 = icmp samesign ult i32 %134, 4
  br i1 %135, label %127, label %136, !llvm.loop !34

136:                                              ; preds = %127
  %137 = add nuw nsw i32 %126, 1
  %138 = icmp samesign ult i32 %137, 2
  br i1 %138, label %125, label %139, !llvm.loop !35

139:                                              ; preds = %136
  br i1 false, label %124, label %140, !llvm.loop !36

140:                                              ; preds = %139
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %141

141:                                              ; preds = %148, %140
  %142 = phi i32 [ 0, %140 ], [ %149, %148 ]
  br label %143

143:                                              ; preds = %147, %141
  br label %144

144:                                              ; preds = %144, %143
  %145 = zext nneg i32 %142 to i64
  %146 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %145
  store i32 1, ptr %146, align 4
  br i1 false, label %144, label %147, !llvm.loop !37

147:                                              ; preds = %144
  br i1 false, label %143, label %148, !llvm.loop !38

148:                                              ; preds = %147
  %149 = add nuw nsw i32 %142, 1
  %150 = icmp samesign ult i32 %149, 3
  br i1 %150, label %141, label %151, !llvm.loop !39

151:                                              ; preds = %148
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %152

152:                                              ; preds = %162, %151
  br label %153

153:                                              ; preds = %159, %152
  %154 = phi i32 [ 0, %152 ], [ %160, %159 ]
  br label %155

155:                                              ; preds = %155, %153
  %156 = shl nuw nsw i32 %154, 3
  %157 = zext nneg i32 %156 to i64
  %158 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %157
  store i32 1, ptr %158, align 4
  br i1 false, label %155, label %159, !llvm.loop !40

159:                                              ; preds = %155
  %160 = add nuw nsw i32 %154, 1
  %161 = icmp samesign ult i32 %160, 3
  br i1 %161, label %153, label %162, !llvm.loop !41

162:                                              ; preds = %159
  br i1 false, label %152, label %163, !llvm.loop !42

163:                                              ; preds = %162
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %164

164:                                              ; preds = %174, %163
  br label %165

165:                                              ; preds = %173, %164
  br label %166

166:                                              ; preds = %166, %165
  %167 = phi i32 [ 0, %165 ], [ %171, %166 ]
  %168 = shl nuw nsw i32 %167, 6
  %169 = zext nneg i32 %168 to i64
  %170 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %169
  store i32 1, ptr %170, align 4
  %171 = add nuw nsw i32 %167, 1
  %172 = icmp samesign ult i32 %171, 3
  br i1 %172, label %166, label %173, !llvm.loop !43

173:                                              ; preds = %166
  br i1 false, label %165, label %174, !llvm.loop !44

174:                                              ; preds = %173
  br i1 false, label %164, label %175, !llvm.loop !45

175:                                              ; preds = %174
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %176

176:                                              ; preds = %188, %175
  %177 = phi i32 [ 0, %175 ], [ %189, %188 ]
  br label %178

178:                                              ; preds = %185, %176
  %179 = phi i32 [ 0, %176 ], [ %186, %185 ]
  br label %180

180:                                              ; preds = %180, %178
  %181 = shl nuw nsw i32 %179, 3
  %182 = or disjoint i32 %177, %181
  %183 = zext nneg i32 %182 to i64
  %184 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %183
  store i32 1, ptr %184, align 4
  br i1 false, label %180, label %185, !llvm.loop !46

185:                                              ; preds = %180
  %186 = add nuw nsw i32 %179, 1
  %187 = icmp samesign ult i32 %186, 2
  br i1 %187, label %178, label %188, !llvm.loop !47

188:                                              ; preds = %185
  %189 = add nuw nsw i32 %177, 1
  %190 = icmp samesign ult i32 %189, 2
  br i1 %190, label %176, label %191, !llvm.loop !48

191:                                              ; preds = %188
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %192

192:                                              ; preds = %204, %191
  %193 = phi i32 [ 0, %191 ], [ %205, %204 ]
  br label %194

194:                                              ; preds = %203, %192
  br label %195

195:                                              ; preds = %195, %194
  %196 = phi i32 [ 0, %194 ], [ %201, %195 ]
  %197 = shl nuw nsw i32 %196, 6
  %198 = or disjoint i32 %193, %197
  %199 = zext nneg i32 %198 to i64
  %200 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %199
  store i32 1, ptr %200, align 4
  %201 = add nuw nsw i32 %196, 1
  %202 = icmp samesign ult i32 %201, 2
  br i1 %202, label %195, label %203, !llvm.loop !49

203:                                              ; preds = %195
  br i1 false, label %194, label %204, !llvm.loop !50

204:                                              ; preds = %203
  %205 = add nuw nsw i32 %193, 1
  %206 = icmp samesign ult i32 %205, 2
  br i1 %206, label %192, label %207, !llvm.loop !51

207:                                              ; preds = %204
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %208

208:                                              ; preds = %223, %207
  br label %209

209:                                              ; preds = %220, %208
  %210 = phi i32 [ 0, %208 ], [ %221, %220 ]
  br label %211

211:                                              ; preds = %211, %209
  %212 = phi i32 [ 0, %209 ], [ %218, %211 ]
  %213 = shl nuw nsw i32 %212, 6
  %214 = shl nuw nsw i32 %210, 3
  %215 = or disjoint i32 %213, %214
  %216 = zext nneg i32 %215 to i64
  %217 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %216
  store i32 1, ptr %217, align 4
  %218 = add nuw nsw i32 %212, 1
  %219 = icmp samesign ult i32 %218, 2
  br i1 %219, label %211, label %220, !llvm.loop !52

220:                                              ; preds = %211
  %221 = add nuw nsw i32 %210, 1
  %222 = icmp samesign ult i32 %221, 2
  br i1 %222, label %209, label %223, !llvm.loop !53

223:                                              ; preds = %220
  br i1 false, label %208, label %224, !llvm.loop !54

224:                                              ; preds = %223
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %225

225:                                              ; preds = %242, %224
  %226 = phi i32 [ 0, %224 ], [ %243, %242 ]
  br label %227

227:                                              ; preds = %239, %225
  %228 = phi i32 [ 0, %225 ], [ %240, %239 ]
  br label %229

229:                                              ; preds = %229, %227
  %230 = phi i32 [ 0, %227 ], [ %237, %229 ]
  %231 = shl nuw nsw i32 %230, 6
  %232 = shl nuw nsw i32 %228, 3
  %233 = or disjoint i32 %231, %232
  %234 = or disjoint i32 %226, %233
  %235 = zext nneg i32 %234 to i64
  %236 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %235
  store i32 1, ptr %236, align 4
  %237 = add nuw nsw i32 %230, 1
  %238 = icmp samesign ult i32 %237, 2
  br i1 %238, label %229, label %239, !llvm.loop !55

239:                                              ; preds = %229
  %240 = add nuw nsw i32 %228, 1
  %241 = icmp samesign ult i32 %240, 2
  br i1 %241, label %227, label %242, !llvm.loop !56

242:                                              ; preds = %239
  %243 = add nuw nsw i32 %226, 1
  %244 = icmp samesign ult i32 %243, 2
  br i1 %244, label %225, label %245, !llvm.loop !57

245:                                              ; preds = %242
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 0, ptr @kount, align 4
  %246 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %246, 0
  br i1 %.not, label %249, label %247

247:                                              ; preds = %245
  %248 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %248, ptr @n, align 4
  br label %250

249:                                              ; preds = %245
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %.pre = load i32, ptr @n, align 4
  br label %250

250:                                              ; preds = %249, %247
  %251 = phi i32 [ %.pre, %249 ], [ %248, %247 ]
  %252 = call i32 @Trial(i32 noundef %251)
  %.not1 = icmp eq i32 %252, 0
  br i1 %.not1, label %253, label %254

253:                                              ; preds = %250
  %puts2 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %258

254:                                              ; preds = %250
  %255 = load i32, ptr @kount, align 4
  %.not3 = icmp eq i32 %255, 2005
  br i1 %.not3, label %257, label %256

256:                                              ; preds = %254
  %puts4 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %257

257:                                              ; preds = %256, %254
  br label %258

258:                                              ; preds = %257, %253
  %259 = load i32, ptr @n, align 4
  %260 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %259) #3
  %261 = load i32, ptr @kount, align 4
  %262 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %261) #3
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %1, %0
  %2 = phi i32 [ 0, %0 ], [ %3, %1 ]
  call void @Puzzle()
  %3 = add nuw nsw i32 %2, 1
  %4 = icmp samesign ult i32 %3, 100
  br i1 %4, label %1, label %5, !llvm.loop !58

5:                                                ; preds = %1
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
