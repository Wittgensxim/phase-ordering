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
  %.not = icmp sgt i32 %17, %.pre
  br i1 %.not, label %._crit_edge, label %4, !llvm.loop !7

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
  %.not = icmp sgt i32 %14, %.pre
  br i1 %.not, label %._crit_edge, label %4, !llvm.loop !9

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
  %.not = icmp sgt i32 %14, %.pre
  br i1 %.not, label %._crit_edge, label %4, !llvm.loop !11

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

8:                                                ; preds = %23, %7
  %9 = phi i32 [ 1, %7 ], [ %24, %23 ]
  br label %10

10:                                               ; preds = %20, %8
  %11 = phi i32 [ 1, %8 ], [ %21, %20 ]
  %12 = shl nuw nsw i32 %11, 3
  %invariant.op = or disjoint i32 %12, %9
  br label %13

13:                                               ; preds = %13, %10
  %14 = phi i32 [ 1, %10 ], [ %18, %13 ]
  %15 = shl nuw nsw i32 %14, 6
  %.reass = or disjoint i32 %15, %invariant.op
  %16 = zext nneg i32 %.reass to i64
  %17 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %16
  store i32 0, ptr %17, align 4
  %18 = add nuw nsw i32 %14, 1
  %19 = icmp samesign ult i32 %18, 6
  br i1 %19, label %13, label %20, !llvm.loop !14

20:                                               ; preds = %13
  %21 = add nuw nsw i32 %11, 1
  %22 = icmp samesign ult i32 %21, 6
  br i1 %22, label %10, label %23, !llvm.loop !15

23:                                               ; preds = %20
  %24 = add nuw nsw i32 %9, 1
  %25 = icmp samesign ult i32 %24, 6
  br i1 %25, label %8, label %26, !llvm.loop !16

26:                                               ; preds = %23
  br label %27

27:                                               ; preds = %37, %26
  %28 = phi i32 [ 0, %26 ], [ %38, %37 ]
  %29 = zext nneg i32 %28 to i64
  %30 = getelementptr inbounds nuw [2048 x i8], ptr @p, i64 %29
  br label %31

31:                                               ; preds = %31, %27
  %32 = phi i32 [ 0, %27 ], [ %35, %31 ]
  %33 = zext nneg i32 %32 to i64
  %34 = getelementptr inbounds nuw [4 x i8], ptr %30, i64 %33
  store i32 0, ptr %34, align 4
  %35 = add nuw nsw i32 %32, 1
  %36 = icmp samesign ult i32 %35, 512
  br i1 %36, label %31, label %37, !llvm.loop !17

37:                                               ; preds = %31
  %38 = add nuw nsw i32 %28, 1
  %39 = icmp samesign ult i32 %38, 13
  br i1 %39, label %27, label %40, !llvm.loop !18

40:                                               ; preds = %37
  br label %41

41:                                               ; preds = %53, %40
  %42 = phi i32 [ 0, %40 ], [ %54, %53 ]
  br label %43

43:                                               ; preds = %50, %41
  %44 = phi i32 [ 0, %41 ], [ %51, %50 ]
  %45 = shl nuw nsw i32 %44, 3
  %46 = or disjoint i32 %42, %45
  %47 = zext nneg i32 %46 to i64
  %48 = getelementptr inbounds nuw [4 x i8], ptr @p, i64 %47
  store i32 1, ptr %48, align 4
  br label %49

49:                                               ; preds = %49, %43
  br i1 false, label %49, label %50, !llvm.loop !19

50:                                               ; preds = %49
  %51 = add nuw nsw i32 %44, 1
  %52 = icmp samesign ult i32 %51, 2
  br i1 %52, label %43, label %53, !llvm.loop !20

53:                                               ; preds = %50
  %54 = add nuw nsw i32 %42, 1
  %55 = icmp samesign ult i32 %54, 4
  br i1 %55, label %41, label %56, !llvm.loop !21

56:                                               ; preds = %53
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %57

57:                                               ; preds = %69, %56
  %58 = phi i32 [ 0, %56 ], [ %70, %69 ]
  br label %59

59:                                               ; preds = %68, %57
  br label %60

60:                                               ; preds = %60, %59
  %61 = phi i32 [ 0, %59 ], [ %66, %60 ]
  %62 = shl nuw nsw i32 %61, 6
  %63 = or disjoint i32 %58, %62
  %64 = zext nneg i32 %63 to i64
  %65 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %64
  store i32 1, ptr %65, align 4
  %66 = add nuw nsw i32 %61, 1
  %67 = icmp samesign ult i32 %66, 4
  br i1 %67, label %60, label %68, !llvm.loop !22

68:                                               ; preds = %60
  br i1 false, label %59, label %69, !llvm.loop !23

69:                                               ; preds = %68
  %70 = add nuw nsw i32 %58, 1
  %71 = icmp samesign ult i32 %70, 2
  br i1 %71, label %57, label %72, !llvm.loop !24

72:                                               ; preds = %69
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %73

73:                                               ; preds = %88, %72
  br label %74

74:                                               ; preds = %85, %73
  %75 = phi i32 [ 0, %73 ], [ %86, %85 ]
  %76 = shl nuw nsw i32 %75, 3
  br label %77

77:                                               ; preds = %77, %74
  %78 = phi i32 [ 0, %74 ], [ %83, %77 ]
  %79 = shl nuw nsw i32 %78, 6
  %80 = or disjoint i32 %79, %76
  %81 = zext nneg i32 %80 to i64
  %82 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %81
  store i32 1, ptr %82, align 4
  %83 = add nuw nsw i32 %78, 1
  %84 = icmp samesign ult i32 %83, 2
  br i1 %84, label %77, label %85, !llvm.loop !25

85:                                               ; preds = %77
  %86 = add nuw nsw i32 %75, 1
  %87 = icmp samesign ult i32 %86, 4
  br i1 %87, label %74, label %88, !llvm.loop !26

88:                                               ; preds = %85
  br i1 false, label %73, label %89, !llvm.loop !27

89:                                               ; preds = %88
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %90

90:                                               ; preds = %102, %89
  %91 = phi i32 [ 0, %89 ], [ %103, %102 ]
  br label %92

92:                                               ; preds = %99, %90
  %93 = phi i32 [ 0, %90 ], [ %100, %99 ]
  %94 = shl nuw nsw i32 %93, 3
  %95 = or disjoint i32 %91, %94
  %96 = zext nneg i32 %95 to i64
  %97 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %96
  store i32 1, ptr %97, align 4
  br label %98

98:                                               ; preds = %98, %92
  br i1 false, label %98, label %99, !llvm.loop !28

99:                                               ; preds = %98
  %100 = add nuw nsw i32 %93, 1
  %101 = icmp samesign ult i32 %100, 4
  br i1 %101, label %92, label %102, !llvm.loop !29

102:                                              ; preds = %99
  %103 = add nuw nsw i32 %91, 1
  %104 = icmp samesign ult i32 %103, 2
  br i1 %104, label %90, label %105, !llvm.loop !30

105:                                              ; preds = %102
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %106

106:                                              ; preds = %118, %105
  %107 = phi i32 [ 0, %105 ], [ %119, %118 ]
  br label %108

108:                                              ; preds = %117, %106
  br label %109

109:                                              ; preds = %109, %108
  %110 = phi i32 [ 0, %108 ], [ %115, %109 ]
  %111 = shl nuw nsw i32 %110, 6
  %112 = or disjoint i32 %107, %111
  %113 = zext nneg i32 %112 to i64
  %114 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %113
  store i32 1, ptr %114, align 4
  %115 = add nuw nsw i32 %110, 1
  %116 = icmp samesign ult i32 %115, 2
  br i1 %116, label %109, label %117, !llvm.loop !31

117:                                              ; preds = %109
  br i1 false, label %108, label %118, !llvm.loop !32

118:                                              ; preds = %117
  %119 = add nuw nsw i32 %107, 1
  %120 = icmp samesign ult i32 %119, 4
  br i1 %120, label %106, label %121, !llvm.loop !33

121:                                              ; preds = %118
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %122

122:                                              ; preds = %137, %121
  br label %123

123:                                              ; preds = %134, %122
  %124 = phi i32 [ 0, %122 ], [ %135, %134 ]
  %125 = shl nuw nsw i32 %124, 3
  br label %126

126:                                              ; preds = %126, %123
  %127 = phi i32 [ 0, %123 ], [ %132, %126 ]
  %128 = shl nuw nsw i32 %127, 6
  %129 = or disjoint i32 %128, %125
  %130 = zext nneg i32 %129 to i64
  %131 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %130
  store i32 1, ptr %131, align 4
  %132 = add nuw nsw i32 %127, 1
  %133 = icmp samesign ult i32 %132, 4
  br i1 %133, label %126, label %134, !llvm.loop !34

134:                                              ; preds = %126
  %135 = add nuw nsw i32 %124, 1
  %136 = icmp samesign ult i32 %135, 2
  br i1 %136, label %123, label %137, !llvm.loop !35

137:                                              ; preds = %134
  br i1 false, label %122, label %138, !llvm.loop !36

138:                                              ; preds = %137
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %139

139:                                              ; preds = %146, %138
  %140 = phi i32 [ 0, %138 ], [ %147, %146 ]
  %141 = zext nneg i32 %140 to i64
  %142 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %141
  store i32 1, ptr %142, align 4
  br label %143

143:                                              ; preds = %145, %139
  br label %144

144:                                              ; preds = %144, %143
  br i1 false, label %144, label %145, !llvm.loop !37

145:                                              ; preds = %144
  br i1 false, label %143, label %146, !llvm.loop !38

146:                                              ; preds = %145
  %147 = add nuw nsw i32 %140, 1
  %148 = icmp samesign ult i32 %147, 3
  br i1 %148, label %139, label %149, !llvm.loop !39

149:                                              ; preds = %146
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %150

150:                                              ; preds = %160, %149
  br label %151

151:                                              ; preds = %157, %150
  %152 = phi i32 [ 0, %150 ], [ %158, %157 ]
  %153 = shl nuw nsw i32 %152, 3
  %154 = zext nneg i32 %153 to i64
  %155 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %154
  store i32 1, ptr %155, align 4
  br label %156

156:                                              ; preds = %156, %151
  br i1 false, label %156, label %157, !llvm.loop !40

157:                                              ; preds = %156
  %158 = add nuw nsw i32 %152, 1
  %159 = icmp samesign ult i32 %158, 3
  br i1 %159, label %151, label %160, !llvm.loop !41

160:                                              ; preds = %157
  br i1 false, label %150, label %161, !llvm.loop !42

161:                                              ; preds = %160
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %162

162:                                              ; preds = %172, %161
  br label %163

163:                                              ; preds = %171, %162
  br label %164

164:                                              ; preds = %164, %163
  %165 = phi i32 [ 0, %163 ], [ %169, %164 ]
  %166 = shl nuw nsw i32 %165, 6
  %167 = zext nneg i32 %166 to i64
  %168 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %167
  store i32 1, ptr %168, align 4
  %169 = add nuw nsw i32 %165, 1
  %170 = icmp samesign ult i32 %169, 3
  br i1 %170, label %164, label %171, !llvm.loop !43

171:                                              ; preds = %164
  br i1 false, label %163, label %172, !llvm.loop !44

172:                                              ; preds = %171
  br i1 false, label %162, label %173, !llvm.loop !45

173:                                              ; preds = %172
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %174

174:                                              ; preds = %186, %173
  %175 = phi i32 [ 0, %173 ], [ %187, %186 ]
  br label %176

176:                                              ; preds = %183, %174
  %177 = phi i32 [ 0, %174 ], [ %184, %183 ]
  %178 = shl nuw nsw i32 %177, 3
  %179 = or disjoint i32 %175, %178
  %180 = zext nneg i32 %179 to i64
  %181 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %180
  store i32 1, ptr %181, align 4
  br label %182

182:                                              ; preds = %182, %176
  br i1 false, label %182, label %183, !llvm.loop !46

183:                                              ; preds = %182
  %184 = add nuw nsw i32 %177, 1
  %185 = icmp samesign ult i32 %184, 2
  br i1 %185, label %176, label %186, !llvm.loop !47

186:                                              ; preds = %183
  %187 = add nuw nsw i32 %175, 1
  %188 = icmp samesign ult i32 %187, 2
  br i1 %188, label %174, label %189, !llvm.loop !48

189:                                              ; preds = %186
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %190

190:                                              ; preds = %202, %189
  %191 = phi i32 [ 0, %189 ], [ %203, %202 ]
  br label %192

192:                                              ; preds = %201, %190
  br label %193

193:                                              ; preds = %193, %192
  %194 = phi i32 [ 0, %192 ], [ %199, %193 ]
  %195 = shl nuw nsw i32 %194, 6
  %196 = or disjoint i32 %191, %195
  %197 = zext nneg i32 %196 to i64
  %198 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %197
  store i32 1, ptr %198, align 4
  %199 = add nuw nsw i32 %194, 1
  %200 = icmp samesign ult i32 %199, 2
  br i1 %200, label %193, label %201, !llvm.loop !49

201:                                              ; preds = %193
  br i1 false, label %192, label %202, !llvm.loop !50

202:                                              ; preds = %201
  %203 = add nuw nsw i32 %191, 1
  %204 = icmp samesign ult i32 %203, 2
  br i1 %204, label %190, label %205, !llvm.loop !51

205:                                              ; preds = %202
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %206

206:                                              ; preds = %221, %205
  br label %207

207:                                              ; preds = %218, %206
  %208 = phi i32 [ 0, %206 ], [ %219, %218 ]
  %209 = shl nuw nsw i32 %208, 3
  br label %210

210:                                              ; preds = %210, %207
  %211 = phi i32 [ 0, %207 ], [ %216, %210 ]
  %212 = shl nuw nsw i32 %211, 6
  %213 = or disjoint i32 %212, %209
  %214 = zext nneg i32 %213 to i64
  %215 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %214
  store i32 1, ptr %215, align 4
  %216 = add nuw nsw i32 %211, 1
  %217 = icmp samesign ult i32 %216, 2
  br i1 %217, label %210, label %218, !llvm.loop !52

218:                                              ; preds = %210
  %219 = add nuw nsw i32 %208, 1
  %220 = icmp samesign ult i32 %219, 2
  br i1 %220, label %207, label %221, !llvm.loop !53

221:                                              ; preds = %218
  br i1 false, label %206, label %222, !llvm.loop !54

222:                                              ; preds = %221
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %223

223:                                              ; preds = %238, %222
  %224 = phi i32 [ 0, %222 ], [ %239, %238 ]
  br label %225

225:                                              ; preds = %235, %223
  %226 = phi i32 [ 0, %223 ], [ %236, %235 ]
  %227 = shl nuw nsw i32 %226, 3
  %invariant.op1 = or disjoint i32 %227, %224
  br label %228

228:                                              ; preds = %228, %225
  %229 = phi i32 [ 0, %225 ], [ %233, %228 ]
  %230 = shl nuw nsw i32 %229, 6
  %.reass2 = or disjoint i32 %230, %invariant.op1
  %231 = zext nneg i32 %.reass2 to i64
  %232 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %231
  store i32 1, ptr %232, align 4
  %233 = add nuw nsw i32 %229, 1
  %234 = icmp samesign ult i32 %233, 2
  br i1 %234, label %228, label %235, !llvm.loop !55

235:                                              ; preds = %228
  %236 = add nuw nsw i32 %226, 1
  %237 = icmp samesign ult i32 %236, 2
  br i1 %237, label %225, label %238, !llvm.loop !56

238:                                              ; preds = %235
  %239 = add nuw nsw i32 %224, 1
  %240 = icmp samesign ult i32 %239, 2
  br i1 %240, label %223, label %241, !llvm.loop !57

241:                                              ; preds = %238
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 0, ptr @kount, align 4
  %242 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %242, 0
  br i1 %.not, label %245, label %243

243:                                              ; preds = %241
  %244 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %244, ptr @n, align 4
  br label %246

245:                                              ; preds = %241
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %.pre = load i32, ptr @n, align 4
  br label %246

246:                                              ; preds = %245, %243
  %247 = phi i32 [ %.pre, %245 ], [ %244, %243 ]
  %248 = call i32 @Trial(i32 noundef %247)
  %.not1 = icmp eq i32 %248, 0
  br i1 %.not1, label %249, label %250

249:                                              ; preds = %246
  %puts2 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %254

250:                                              ; preds = %246
  %251 = load i32, ptr @kount, align 4
  %.not3 = icmp eq i32 %251, 2005
  br i1 %.not3, label %253, label %252

252:                                              ; preds = %250
  %puts4 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %253

253:                                              ; preds = %252, %250
  br label %254

254:                                              ; preds = %253, %249
  %255 = load i32, ptr @n, align 4
  %256 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %255) #3
  %257 = load i32, ptr @kount, align 4
  %258 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %257) #3
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
