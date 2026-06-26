; ModuleID = 'results\paper_round2\Stanford_Puzzle\round_001\output.ll'
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

43:                                               ; preds = %54, %42
  %44 = phi i32 [ 0, %42 ], [ %55, %54 ]
  br label %45

45:                                               ; preds = %51, %43
  %46 = phi i32 [ 0, %43 ], [ %52, %51 ]
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge, %45
  %47 = shl nuw nsw i32 %46, 3
  %48 = or disjoint i32 %44, %47
  %49 = zext nneg i32 %48 to i64
  %50 = getelementptr inbounds nuw [4 x i8], ptr @p, i64 %49
  store i32 1, ptr %50, align 4
  br i1 false, label %._crit_edge, label %51, !llvm.loop !19

51:                                               ; preds = %._crit_edge
  %52 = add nuw nsw i32 %46, 1
  %53 = icmp samesign ult i32 %52, 2
  br i1 %53, label %45, label %54, !llvm.loop !20

54:                                               ; preds = %51
  %55 = add nuw nsw i32 %44, 1
  %56 = icmp samesign ult i32 %55, 4
  br i1 %56, label %43, label %57, !llvm.loop !21

57:                                               ; preds = %54
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %58

58:                                               ; preds = %69, %57
  %59 = phi i32 [ 0, %57 ], [ %70, %69 ]
  br label %60

60:                                               ; preds = %._crit_edge1, %58
  br label %61

61:                                               ; preds = %61, %60
  %62 = phi i32 [ 0, %60 ], [ %67, %61 ]
  %63 = shl nuw nsw i32 %62, 6
  %64 = or disjoint i32 %59, %63
  %65 = zext nneg i32 %64 to i64
  %66 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %65
  store i32 1, ptr %66, align 4
  %67 = add nuw nsw i32 %62, 1
  %68 = icmp samesign ult i32 %67, 4
  br i1 %68, label %61, label %._crit_edge1, !llvm.loop !22

._crit_edge1:                                     ; preds = %61
  br i1 false, label %60, label %69, !llvm.loop !23

69:                                               ; preds = %._crit_edge1
  %70 = add nuw nsw i32 %59, 1
  %71 = icmp samesign ult i32 %70, 2
  br i1 %71, label %58, label %72, !llvm.loop !24

72:                                               ; preds = %69
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %73

73:                                               ; preds = %._crit_edge2, %72
  br label %74

74:                                               ; preds = %85, %73
  %75 = phi i32 [ 0, %73 ], [ %86, %85 ]
  br label %76

76:                                               ; preds = %76, %74
  %77 = phi i32 [ 0, %74 ], [ %83, %76 ]
  %78 = shl nuw nsw i32 %77, 6
  %79 = shl nuw nsw i32 %75, 3
  %80 = or disjoint i32 %78, %79
  %81 = zext nneg i32 %80 to i64
  %82 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %81
  store i32 1, ptr %82, align 4
  %83 = add nuw nsw i32 %77, 1
  %84 = icmp samesign ult i32 %83, 2
  br i1 %84, label %76, label %85, !llvm.loop !25

85:                                               ; preds = %76
  %86 = add nuw nsw i32 %75, 1
  %87 = icmp samesign ult i32 %86, 4
  br i1 %87, label %74, label %._crit_edge2, !llvm.loop !26

._crit_edge2:                                     ; preds = %85
  br i1 false, label %73, label %88, !llvm.loop !27

88:                                               ; preds = %._crit_edge2
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %89

89:                                               ; preds = %100, %88
  %90 = phi i32 [ 0, %88 ], [ %101, %100 ]
  br label %91

91:                                               ; preds = %97, %89
  %92 = phi i32 [ 0, %89 ], [ %98, %97 ]
  br label %._crit_edge3

._crit_edge3:                                     ; preds = %._crit_edge3, %91
  %93 = shl nuw nsw i32 %92, 3
  %94 = or disjoint i32 %90, %93
  %95 = zext nneg i32 %94 to i64
  %96 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %95
  store i32 1, ptr %96, align 4
  br i1 false, label %._crit_edge3, label %97, !llvm.loop !28

97:                                               ; preds = %._crit_edge3
  %98 = add nuw nsw i32 %92, 1
  %99 = icmp samesign ult i32 %98, 4
  br i1 %99, label %91, label %100, !llvm.loop !29

100:                                              ; preds = %97
  %101 = add nuw nsw i32 %90, 1
  %102 = icmp samesign ult i32 %101, 2
  br i1 %102, label %89, label %103, !llvm.loop !30

103:                                              ; preds = %100
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %104

104:                                              ; preds = %115, %103
  %105 = phi i32 [ 0, %103 ], [ %116, %115 ]
  br label %106

106:                                              ; preds = %._crit_edge4, %104
  br label %107

107:                                              ; preds = %107, %106
  %108 = phi i32 [ 0, %106 ], [ %113, %107 ]
  %109 = shl nuw nsw i32 %108, 6
  %110 = or disjoint i32 %105, %109
  %111 = zext nneg i32 %110 to i64
  %112 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %111
  store i32 1, ptr %112, align 4
  %113 = add nuw nsw i32 %108, 1
  %114 = icmp samesign ult i32 %113, 2
  br i1 %114, label %107, label %._crit_edge4, !llvm.loop !31

._crit_edge4:                                     ; preds = %107
  br i1 false, label %106, label %115, !llvm.loop !32

115:                                              ; preds = %._crit_edge4
  %116 = add nuw nsw i32 %105, 1
  %117 = icmp samesign ult i32 %116, 4
  br i1 %117, label %104, label %118, !llvm.loop !33

118:                                              ; preds = %115
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %119

119:                                              ; preds = %._crit_edge5, %118
  br label %120

120:                                              ; preds = %131, %119
  %121 = phi i32 [ 0, %119 ], [ %132, %131 ]
  br label %122

122:                                              ; preds = %122, %120
  %123 = phi i32 [ 0, %120 ], [ %129, %122 ]
  %124 = shl nuw nsw i32 %123, 6
  %125 = shl nuw nsw i32 %121, 3
  %126 = or disjoint i32 %124, %125
  %127 = zext nneg i32 %126 to i64
  %128 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %127
  store i32 1, ptr %128, align 4
  %129 = add nuw nsw i32 %123, 1
  %130 = icmp samesign ult i32 %129, 4
  br i1 %130, label %122, label %131, !llvm.loop !34

131:                                              ; preds = %122
  %132 = add nuw nsw i32 %121, 1
  %133 = icmp samesign ult i32 %132, 2
  br i1 %133, label %120, label %._crit_edge5, !llvm.loop !35

._crit_edge5:                                     ; preds = %131
  br i1 false, label %119, label %134, !llvm.loop !36

134:                                              ; preds = %._crit_edge5
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %135

135:                                              ; preds = %140, %134
  %136 = phi i32 [ 0, %134 ], [ %141, %140 ]
  br label %137

137:                                              ; preds = %._crit_edge7, %135
  br label %._crit_edge6

._crit_edge6:                                     ; preds = %._crit_edge6, %137
  %138 = zext nneg i32 %136 to i64
  %139 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %138
  store i32 1, ptr %139, align 4
  br i1 false, label %._crit_edge6, label %._crit_edge7, !llvm.loop !37

._crit_edge7:                                     ; preds = %._crit_edge6
  br i1 false, label %137, label %140, !llvm.loop !38

140:                                              ; preds = %._crit_edge7
  %141 = add nuw nsw i32 %136, 1
  %142 = icmp samesign ult i32 %141, 3
  br i1 %142, label %135, label %143, !llvm.loop !39

143:                                              ; preds = %140
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %144

144:                                              ; preds = %._crit_edge9, %143
  br label %145

145:                                              ; preds = %150, %144
  %146 = phi i32 [ 0, %144 ], [ %151, %150 ]
  br label %._crit_edge8

._crit_edge8:                                     ; preds = %._crit_edge8, %145
  %147 = shl nuw nsw i32 %146, 3
  %148 = zext nneg i32 %147 to i64
  %149 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %148
  store i32 1, ptr %149, align 4
  br i1 false, label %._crit_edge8, label %150, !llvm.loop !40

150:                                              ; preds = %._crit_edge8
  %151 = add nuw nsw i32 %146, 1
  %152 = icmp samesign ult i32 %151, 3
  br i1 %152, label %145, label %._crit_edge9, !llvm.loop !41

._crit_edge9:                                     ; preds = %150
  br i1 false, label %144, label %153, !llvm.loop !42

153:                                              ; preds = %._crit_edge9
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %154

154:                                              ; preds = %._crit_edge11, %153
  br label %155

155:                                              ; preds = %._crit_edge10, %154
  br label %156

156:                                              ; preds = %156, %155
  %157 = phi i32 [ 0, %155 ], [ %161, %156 ]
  %158 = shl nuw nsw i32 %157, 6
  %159 = zext nneg i32 %158 to i64
  %160 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %159
  store i32 1, ptr %160, align 4
  %161 = add nuw nsw i32 %157, 1
  %162 = icmp samesign ult i32 %161, 3
  br i1 %162, label %156, label %._crit_edge10, !llvm.loop !43

._crit_edge10:                                    ; preds = %156
  br i1 false, label %155, label %._crit_edge11, !llvm.loop !44

._crit_edge11:                                    ; preds = %._crit_edge10
  br i1 false, label %154, label %163, !llvm.loop !45

163:                                              ; preds = %._crit_edge11
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %164

164:                                              ; preds = %175, %163
  %165 = phi i32 [ 0, %163 ], [ %176, %175 ]
  br label %166

166:                                              ; preds = %172, %164
  %167 = phi i32 [ 0, %164 ], [ %173, %172 ]
  br label %._crit_edge12

._crit_edge12:                                    ; preds = %._crit_edge12, %166
  %168 = shl nuw nsw i32 %167, 3
  %169 = or disjoint i32 %165, %168
  %170 = zext nneg i32 %169 to i64
  %171 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %170
  store i32 1, ptr %171, align 4
  br i1 false, label %._crit_edge12, label %172, !llvm.loop !46

172:                                              ; preds = %._crit_edge12
  %173 = add nuw nsw i32 %167, 1
  %174 = icmp samesign ult i32 %173, 2
  br i1 %174, label %166, label %175, !llvm.loop !47

175:                                              ; preds = %172
  %176 = add nuw nsw i32 %165, 1
  %177 = icmp samesign ult i32 %176, 2
  br i1 %177, label %164, label %178, !llvm.loop !48

178:                                              ; preds = %175
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %179

179:                                              ; preds = %190, %178
  %180 = phi i32 [ 0, %178 ], [ %191, %190 ]
  br label %181

181:                                              ; preds = %._crit_edge13, %179
  br label %182

182:                                              ; preds = %182, %181
  %183 = phi i32 [ 0, %181 ], [ %188, %182 ]
  %184 = shl nuw nsw i32 %183, 6
  %185 = or disjoint i32 %180, %184
  %186 = zext nneg i32 %185 to i64
  %187 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %186
  store i32 1, ptr %187, align 4
  %188 = add nuw nsw i32 %183, 1
  %189 = icmp samesign ult i32 %188, 2
  br i1 %189, label %182, label %._crit_edge13, !llvm.loop !49

._crit_edge13:                                    ; preds = %182
  br i1 false, label %181, label %190, !llvm.loop !50

190:                                              ; preds = %._crit_edge13
  %191 = add nuw nsw i32 %180, 1
  %192 = icmp samesign ult i32 %191, 2
  br i1 %192, label %179, label %193, !llvm.loop !51

193:                                              ; preds = %190
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %194

194:                                              ; preds = %._crit_edge14, %193
  br label %195

195:                                              ; preds = %206, %194
  %196 = phi i32 [ 0, %194 ], [ %207, %206 ]
  br label %197

197:                                              ; preds = %197, %195
  %198 = phi i32 [ 0, %195 ], [ %204, %197 ]
  %199 = shl nuw nsw i32 %198, 6
  %200 = shl nuw nsw i32 %196, 3
  %201 = or disjoint i32 %199, %200
  %202 = zext nneg i32 %201 to i64
  %203 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %202
  store i32 1, ptr %203, align 4
  %204 = add nuw nsw i32 %198, 1
  %205 = icmp samesign ult i32 %204, 2
  br i1 %205, label %197, label %206, !llvm.loop !52

206:                                              ; preds = %197
  %207 = add nuw nsw i32 %196, 1
  %208 = icmp samesign ult i32 %207, 2
  br i1 %208, label %195, label %._crit_edge14, !llvm.loop !53

._crit_edge14:                                    ; preds = %206
  br i1 false, label %194, label %209, !llvm.loop !54

209:                                              ; preds = %._crit_edge14
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %210

210:                                              ; preds = %227, %209
  %211 = phi i32 [ 0, %209 ], [ %228, %227 ]
  br label %212

212:                                              ; preds = %224, %210
  %213 = phi i32 [ 0, %210 ], [ %225, %224 ]
  br label %214

214:                                              ; preds = %214, %212
  %215 = phi i32 [ 0, %212 ], [ %222, %214 ]
  %216 = shl nuw nsw i32 %215, 6
  %217 = shl nuw nsw i32 %213, 3
  %218 = or disjoint i32 %216, %217
  %219 = or disjoint i32 %211, %218
  %220 = zext nneg i32 %219 to i64
  %221 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %220
  store i32 1, ptr %221, align 4
  %222 = add nuw nsw i32 %215, 1
  %223 = icmp samesign ult i32 %222, 2
  br i1 %223, label %214, label %224, !llvm.loop !55

224:                                              ; preds = %214
  %225 = add nuw nsw i32 %213, 1
  %226 = icmp samesign ult i32 %225, 2
  br i1 %226, label %212, label %227, !llvm.loop !56

227:                                              ; preds = %224
  %228 = add nuw nsw i32 %211, 1
  %229 = icmp samesign ult i32 %228, 2
  br i1 %229, label %210, label %230, !llvm.loop !57

230:                                              ; preds = %227
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 0, ptr @kount, align 4
  %231 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %231, 0
  br i1 %.not, label %234, label %232

232:                                              ; preds = %230
  %233 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %233, ptr @n, align 4
  br label %235

234:                                              ; preds = %230
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %.pre = load i32, ptr @n, align 4
  br label %235

235:                                              ; preds = %234, %232
  %236 = phi i32 [ %.pre, %234 ], [ %233, %232 ]
  %237 = call i32 @Trial(i32 noundef %236)
  %.not1 = icmp eq i32 %237, 0
  br i1 %.not1, label %238, label %239

238:                                              ; preds = %235
  %puts2 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %243

239:                                              ; preds = %235
  %240 = load i32, ptr @kount, align 4
  %.not3 = icmp eq i32 %240, 2005
  br i1 %.not3, label %242, label %241

241:                                              ; preds = %239
  %puts4 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %242

242:                                              ; preds = %241, %239
  br label %243

243:                                              ; preds = %242, %238
  %244 = load i32, ptr @n, align 4
  %245 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %244) #3
  %246 = load i32, ptr @kount, align 4
  %247 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %246) #3
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
