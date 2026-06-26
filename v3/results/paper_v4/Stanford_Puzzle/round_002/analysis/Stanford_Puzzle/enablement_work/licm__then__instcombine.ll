; ModuleID = 'results\paper_v4\Stanford_Puzzle\round_001\output.ll'
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
  %.not1 = icmp slt i32 %.pre, 0
  br i1 %.not1, label %18, label %.lr.ph

.lr.ph:                                           ; preds = %2
  %3 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  br label %4

4:                                                ; preds = %16, %.lr.ph
  %5 = phi i32 [ 0, %.lr.ph ], [ %17, %16 ]
  %6 = zext nneg i32 %5 to i64
  %7 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %6
  %8 = load i32, ptr %7, align 4
  %.not2 = icmp eq i32 %8, 0
  br i1 %.not2, label %16, label %9

9:                                                ; preds = %4
  %10 = add nsw i32 %1, %5
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %11
  %13 = load i32, ptr %12, align 4
  %.not3 = icmp eq i32 %13, 0
  br i1 %.not3, label %15, label %14

14:                                               ; preds = %9
  br label %19

15:                                               ; preds = %9
  br label %16

16:                                               ; preds = %15, %4
  %17 = add nuw nsw i32 %5, 1
  %.not.not = icmp slt i32 %5, %.pre
  br i1 %.not.not, label %4, label %._crit_edge, !llvm.loop !7

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
  %.not4 = icmp slt i32 %.pre, 0
  br i1 %.not4, label %15, label %.lr.ph

.lr.ph:                                           ; preds = %2
  %3 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  br label %4

4:                                                ; preds = %13, %.lr.ph
  %5 = phi i32 [ 0, %.lr.ph ], [ %14, %13 ]
  %6 = zext nneg i32 %5 to i64
  %7 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %6
  %8 = load i32, ptr %7, align 4
  %.not3 = icmp eq i32 %8, 0
  br i1 %.not3, label %13, label %9

9:                                                ; preds = %4
  %10 = add nsw i32 %1, %5
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %11
  store i32 1, ptr %12, align 4
  br label %13

13:                                               ; preds = %9, %4
  %14 = add nuw nsw i32 %5, 1
  %.not.not = icmp slt i32 %5, %.pre
  br i1 %.not.not, label %4, label %._crit_edge, !llvm.loop !9

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
  br label %33

29:                                               ; preds = %23
  %30 = add nsw i32 %24, 1
  %31 = icmp slt i32 %24, 511
  br i1 %31, label %23, label %._crit_edge7, !llvm.loop !10

._crit_edge7:                                     ; preds = %29
  br label %32

32:                                               ; preds = %._crit_edge7, %15
  br label %33

33:                                               ; preds = %32, %28
  %34 = phi i32 [ 0, %32 ], [ %24, %28 ]
  ret i32 %34
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Remove(i32 noundef %0, i32 noundef %1) #0 {
  %.phi.trans.insert = sext i32 %0 to i64
  %.phi.trans.insert1 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert1, align 4
  %.not1 = icmp slt i32 %.pre, 0
  br i1 %.not1, label %15, label %.lr.ph

.lr.ph:                                           ; preds = %2
  %3 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  br label %4

4:                                                ; preds = %13, %.lr.ph
  %5 = phi i32 [ 0, %.lr.ph ], [ %14, %13 ]
  %6 = zext nneg i32 %5 to i64
  %7 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %6
  %8 = load i32, ptr %7, align 4
  %.not2 = icmp eq i32 %8, 0
  br i1 %.not2, label %13, label %9

9:                                                ; preds = %4
  %10 = add nsw i32 %1, %5
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %11
  store i32 0, ptr %12, align 4
  br label %13

13:                                               ; preds = %9, %4
  %14 = add nuw nsw i32 %5, 1
  %.not.not = icmp slt i32 %5, %.pre
  br i1 %.not.not, label %4, label %._crit_edge, !llvm.loop !11

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
  %24 = icmp samesign ult i32 %5, 12
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
  %6 = icmp samesign ult i32 %2, 511
  br i1 %6, label %1, label %7, !llvm.loop !13

7:                                                ; preds = %1
  br label %8

8:                                                ; preds = %24, %7
  %9 = phi i32 [ 1, %7 ], [ %25, %24 ]
  br label %10

10:                                               ; preds = %21, %8
  %11 = phi i32 [ 1, %8 ], [ %22, %21 ]
  %12 = shl nuw nsw i32 %11, 3
  br label %13

13:                                               ; preds = %13, %10
  %14 = phi i32 [ 1, %10 ], [ %19, %13 ]
  %15 = shl nuw nsw i32 %14, 6
  %16 = or i32 %12, %15
  %.reass = or i32 %16, %9
  %17 = zext nneg i32 %.reass to i64
  %18 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %17
  store i32 0, ptr %18, align 4
  %19 = add nuw nsw i32 %14, 1
  %20 = icmp samesign ult i32 %14, 5
  br i1 %20, label %13, label %21, !llvm.loop !14

21:                                               ; preds = %13
  %22 = add nuw nsw i32 %11, 1
  %23 = icmp samesign ult i32 %11, 5
  br i1 %23, label %10, label %24, !llvm.loop !15

24:                                               ; preds = %21
  %25 = add nuw nsw i32 %9, 1
  %26 = icmp samesign ult i32 %9, 5
  br i1 %26, label %8, label %27, !llvm.loop !16

27:                                               ; preds = %24
  br label %28

28:                                               ; preds = %38, %27
  %29 = phi i32 [ 0, %27 ], [ %39, %38 ]
  %30 = zext nneg i32 %29 to i64
  %31 = getelementptr inbounds nuw [2048 x i8], ptr @p, i64 %30
  br label %32

32:                                               ; preds = %32, %28
  %33 = phi i32 [ 0, %28 ], [ %36, %32 ]
  %34 = zext nneg i32 %33 to i64
  %35 = getelementptr inbounds nuw [4 x i8], ptr %31, i64 %34
  store i32 0, ptr %35, align 4
  %36 = add nuw nsw i32 %33, 1
  %37 = icmp samesign ult i32 %33, 511
  br i1 %37, label %32, label %38, !llvm.loop !17

38:                                               ; preds = %32
  %39 = add nuw nsw i32 %29, 1
  %40 = icmp samesign ult i32 %29, 12
  br i1 %40, label %28, label %41, !llvm.loop !18

41:                                               ; preds = %38
  br label %42

42:                                               ; preds = %54, %41
  %43 = phi i32 [ 0, %41 ], [ %55, %54 ]
  br label %44

44:                                               ; preds = %51, %42
  %45 = phi i32 [ 0, %42 ], [ %52, %51 ]
  %46 = shl nuw nsw i32 %45, 3
  %47 = or disjoint i32 %43, %46
  %48 = zext nneg i32 %47 to i64
  %49 = getelementptr inbounds nuw [4 x i8], ptr @p, i64 %48
  store i32 1, ptr %49, align 4
  br label %50

50:                                               ; preds = %50, %44
  br i1 false, label %50, label %51, !llvm.loop !19

51:                                               ; preds = %50
  %52 = add nuw nsw i32 %45, 1
  %53 = icmp eq i32 %45, 0
  br i1 %53, label %44, label %54, !llvm.loop !20

54:                                               ; preds = %51
  %55 = add nuw nsw i32 %43, 1
  %56 = icmp samesign ult i32 %43, 3
  br i1 %56, label %42, label %57, !llvm.loop !21

57:                                               ; preds = %54
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %58

58:                                               ; preds = %70, %57
  %59 = phi i32 [ 0, %57 ], [ %71, %70 ]
  br label %60

60:                                               ; preds = %69, %58
  br label %61

61:                                               ; preds = %61, %60
  %62 = phi i32 [ 0, %60 ], [ %67, %61 ]
  %63 = shl nuw nsw i32 %62, 6
  %64 = or disjoint i32 %59, %63
  %65 = zext nneg i32 %64 to i64
  %66 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %65
  store i32 1, ptr %66, align 4
  %67 = add nuw nsw i32 %62, 1
  %68 = icmp samesign ult i32 %62, 3
  br i1 %68, label %61, label %69, !llvm.loop !22

69:                                               ; preds = %61
  br i1 false, label %60, label %70, !llvm.loop !23

70:                                               ; preds = %69
  %71 = add nuw nsw i32 %59, 1
  %72 = icmp eq i32 %59, 0
  br i1 %72, label %58, label %73, !llvm.loop !24

73:                                               ; preds = %70
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %74

74:                                               ; preds = %89, %73
  br label %75

75:                                               ; preds = %86, %74
  %76 = phi i32 [ 0, %74 ], [ %87, %86 ]
  %77 = shl nuw nsw i32 %76, 3
  br label %78

78:                                               ; preds = %78, %75
  %79 = phi i32 [ 0, %75 ], [ %84, %78 ]
  %80 = shl nuw nsw i32 %79, 6
  %81 = or disjoint i32 %80, %77
  %82 = zext nneg i32 %81 to i64
  %83 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %82
  store i32 1, ptr %83, align 4
  %84 = add nuw nsw i32 %79, 1
  %85 = icmp eq i32 %79, 0
  br i1 %85, label %78, label %86, !llvm.loop !25

86:                                               ; preds = %78
  %87 = add nuw nsw i32 %76, 1
  %88 = icmp samesign ult i32 %76, 3
  br i1 %88, label %75, label %89, !llvm.loop !26

89:                                               ; preds = %86
  br i1 false, label %74, label %90, !llvm.loop !27

90:                                               ; preds = %89
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %91

91:                                               ; preds = %103, %90
  %92 = phi i32 [ 0, %90 ], [ %104, %103 ]
  br label %93

93:                                               ; preds = %100, %91
  %94 = phi i32 [ 0, %91 ], [ %101, %100 ]
  %95 = shl nuw nsw i32 %94, 3
  %96 = or disjoint i32 %92, %95
  %97 = zext nneg i32 %96 to i64
  %98 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %97
  store i32 1, ptr %98, align 4
  br label %99

99:                                               ; preds = %99, %93
  br i1 false, label %99, label %100, !llvm.loop !28

100:                                              ; preds = %99
  %101 = add nuw nsw i32 %94, 1
  %102 = icmp samesign ult i32 %94, 3
  br i1 %102, label %93, label %103, !llvm.loop !29

103:                                              ; preds = %100
  %104 = add nuw nsw i32 %92, 1
  %105 = icmp eq i32 %92, 0
  br i1 %105, label %91, label %106, !llvm.loop !30

106:                                              ; preds = %103
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %107

107:                                              ; preds = %119, %106
  %108 = phi i32 [ 0, %106 ], [ %120, %119 ]
  br label %109

109:                                              ; preds = %118, %107
  br label %110

110:                                              ; preds = %110, %109
  %111 = phi i32 [ 0, %109 ], [ %116, %110 ]
  %112 = shl nuw nsw i32 %111, 6
  %113 = or disjoint i32 %108, %112
  %114 = zext nneg i32 %113 to i64
  %115 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %114
  store i32 1, ptr %115, align 4
  %116 = add nuw nsw i32 %111, 1
  %117 = icmp eq i32 %111, 0
  br i1 %117, label %110, label %118, !llvm.loop !31

118:                                              ; preds = %110
  br i1 false, label %109, label %119, !llvm.loop !32

119:                                              ; preds = %118
  %120 = add nuw nsw i32 %108, 1
  %121 = icmp samesign ult i32 %108, 3
  br i1 %121, label %107, label %122, !llvm.loop !33

122:                                              ; preds = %119
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %123

123:                                              ; preds = %138, %122
  br label %124

124:                                              ; preds = %135, %123
  %125 = phi i32 [ 0, %123 ], [ %136, %135 ]
  %126 = shl nuw nsw i32 %125, 3
  br label %127

127:                                              ; preds = %127, %124
  %128 = phi i32 [ 0, %124 ], [ %133, %127 ]
  %129 = shl nuw nsw i32 %128, 6
  %130 = or disjoint i32 %129, %126
  %131 = zext nneg i32 %130 to i64
  %132 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %131
  store i32 1, ptr %132, align 4
  %133 = add nuw nsw i32 %128, 1
  %134 = icmp samesign ult i32 %128, 3
  br i1 %134, label %127, label %135, !llvm.loop !34

135:                                              ; preds = %127
  %136 = add nuw nsw i32 %125, 1
  %137 = icmp eq i32 %125, 0
  br i1 %137, label %124, label %138, !llvm.loop !35

138:                                              ; preds = %135
  br i1 false, label %123, label %139, !llvm.loop !36

139:                                              ; preds = %138
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %140

140:                                              ; preds = %147, %139
  %141 = phi i32 [ 0, %139 ], [ %148, %147 ]
  %142 = zext nneg i32 %141 to i64
  %143 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %142
  store i32 1, ptr %143, align 4
  br label %144

144:                                              ; preds = %146, %140
  br label %145

145:                                              ; preds = %145, %144
  br i1 false, label %145, label %146, !llvm.loop !37

146:                                              ; preds = %145
  br i1 false, label %144, label %147, !llvm.loop !38

147:                                              ; preds = %146
  %148 = add nuw nsw i32 %141, 1
  %149 = icmp samesign ult i32 %141, 2
  br i1 %149, label %140, label %150, !llvm.loop !39

150:                                              ; preds = %147
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %151

151:                                              ; preds = %161, %150
  br label %152

152:                                              ; preds = %158, %151
  %153 = phi i32 [ 0, %151 ], [ %159, %158 ]
  %154 = shl nuw nsw i32 %153, 3
  %155 = zext nneg i32 %154 to i64
  %156 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %155
  store i32 1, ptr %156, align 4
  br label %157

157:                                              ; preds = %157, %152
  br i1 false, label %157, label %158, !llvm.loop !40

158:                                              ; preds = %157
  %159 = add nuw nsw i32 %153, 1
  %160 = icmp samesign ult i32 %153, 2
  br i1 %160, label %152, label %161, !llvm.loop !41

161:                                              ; preds = %158
  br i1 false, label %151, label %162, !llvm.loop !42

162:                                              ; preds = %161
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %163

163:                                              ; preds = %173, %162
  br label %164

164:                                              ; preds = %172, %163
  br label %165

165:                                              ; preds = %165, %164
  %166 = phi i32 [ 0, %164 ], [ %170, %165 ]
  %167 = shl nuw nsw i32 %166, 6
  %168 = zext nneg i32 %167 to i64
  %169 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %168
  store i32 1, ptr %169, align 4
  %170 = add nuw nsw i32 %166, 1
  %171 = icmp samesign ult i32 %166, 2
  br i1 %171, label %165, label %172, !llvm.loop !43

172:                                              ; preds = %165
  br i1 false, label %164, label %173, !llvm.loop !44

173:                                              ; preds = %172
  br i1 false, label %163, label %174, !llvm.loop !45

174:                                              ; preds = %173
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %175

175:                                              ; preds = %187, %174
  %176 = phi i32 [ 0, %174 ], [ %188, %187 ]
  br label %177

177:                                              ; preds = %184, %175
  %178 = phi i32 [ 0, %175 ], [ %185, %184 ]
  %179 = shl nuw nsw i32 %178, 3
  %180 = or disjoint i32 %176, %179
  %181 = zext nneg i32 %180 to i64
  %182 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %181
  store i32 1, ptr %182, align 4
  br label %183

183:                                              ; preds = %183, %177
  br i1 false, label %183, label %184, !llvm.loop !46

184:                                              ; preds = %183
  %185 = add nuw nsw i32 %178, 1
  %186 = icmp eq i32 %178, 0
  br i1 %186, label %177, label %187, !llvm.loop !47

187:                                              ; preds = %184
  %188 = add nuw nsw i32 %176, 1
  %189 = icmp eq i32 %176, 0
  br i1 %189, label %175, label %190, !llvm.loop !48

190:                                              ; preds = %187
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %191

191:                                              ; preds = %203, %190
  %192 = phi i32 [ 0, %190 ], [ %204, %203 ]
  br label %193

193:                                              ; preds = %202, %191
  br label %194

194:                                              ; preds = %194, %193
  %195 = phi i32 [ 0, %193 ], [ %200, %194 ]
  %196 = shl nuw nsw i32 %195, 6
  %197 = or disjoint i32 %192, %196
  %198 = zext nneg i32 %197 to i64
  %199 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %198
  store i32 1, ptr %199, align 4
  %200 = add nuw nsw i32 %195, 1
  %201 = icmp eq i32 %195, 0
  br i1 %201, label %194, label %202, !llvm.loop !49

202:                                              ; preds = %194
  br i1 false, label %193, label %203, !llvm.loop !50

203:                                              ; preds = %202
  %204 = add nuw nsw i32 %192, 1
  %205 = icmp eq i32 %192, 0
  br i1 %205, label %191, label %206, !llvm.loop !51

206:                                              ; preds = %203
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %207

207:                                              ; preds = %222, %206
  br label %208

208:                                              ; preds = %219, %207
  %209 = phi i32 [ 0, %207 ], [ %220, %219 ]
  %210 = shl nuw nsw i32 %209, 3
  br label %211

211:                                              ; preds = %211, %208
  %212 = phi i32 [ 0, %208 ], [ %217, %211 ]
  %213 = shl nuw nsw i32 %212, 6
  %214 = or disjoint i32 %213, %210
  %215 = zext nneg i32 %214 to i64
  %216 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %215
  store i32 1, ptr %216, align 4
  %217 = add nuw nsw i32 %212, 1
  %218 = icmp eq i32 %212, 0
  br i1 %218, label %211, label %219, !llvm.loop !52

219:                                              ; preds = %211
  %220 = add nuw nsw i32 %209, 1
  %221 = icmp eq i32 %209, 0
  br i1 %221, label %208, label %222, !llvm.loop !53

222:                                              ; preds = %219
  br i1 false, label %207, label %223, !llvm.loop !54

223:                                              ; preds = %222
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %224

224:                                              ; preds = %240, %223
  %225 = phi i32 [ 0, %223 ], [ %241, %240 ]
  br label %226

226:                                              ; preds = %237, %224
  %227 = phi i32 [ 0, %224 ], [ %238, %237 ]
  %228 = shl nuw nsw i32 %227, 3
  br label %229

229:                                              ; preds = %229, %226
  %230 = phi i32 [ 0, %226 ], [ %235, %229 ]
  %231 = shl nuw nsw i32 %230, 6
  %232 = or i32 %228, %231
  %.reass2 = or i32 %232, %225
  %233 = zext nneg i32 %.reass2 to i64
  %234 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %233
  store i32 1, ptr %234, align 4
  %235 = add nuw nsw i32 %230, 1
  %236 = icmp eq i32 %230, 0
  br i1 %236, label %229, label %237, !llvm.loop !55

237:                                              ; preds = %229
  %238 = add nuw nsw i32 %227, 1
  %239 = icmp eq i32 %227, 0
  br i1 %239, label %226, label %240, !llvm.loop !56

240:                                              ; preds = %237
  %241 = add nuw nsw i32 %225, 1
  %242 = icmp eq i32 %225, 0
  br i1 %242, label %224, label %243, !llvm.loop !57

243:                                              ; preds = %240
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 0, ptr @kount, align 4
  %244 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %244, 0
  br i1 %.not, label %247, label %245

245:                                              ; preds = %243
  %246 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %246, ptr @n, align 4
  br label %248

247:                                              ; preds = %243
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %.pre = load i32, ptr @n, align 4
  br label %248

248:                                              ; preds = %247, %245
  %249 = phi i32 [ %.pre, %247 ], [ %246, %245 ]
  %250 = call i32 @Trial(i32 noundef %249)
  %.not1 = icmp eq i32 %250, 0
  br i1 %.not1, label %251, label %252

251:                                              ; preds = %248
  %puts2 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %256

252:                                              ; preds = %248
  %253 = load i32, ptr @kount, align 4
  %.not3 = icmp eq i32 %253, 2005
  br i1 %.not3, label %255, label %254

254:                                              ; preds = %252
  %puts4 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %255

255:                                              ; preds = %254, %252
  br label %256

256:                                              ; preds = %255, %251
  %257 = load i32, ptr @n, align 4
  %258 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %257) #3
  %259 = load i32, ptr @kount, align 4
  %260 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %259) #3
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
  %4 = icmp samesign ult i32 %2, 99
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
