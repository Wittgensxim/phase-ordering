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
define dso_local range(i32 -2147483648, 512) i32 @Place(i32 noundef %0, i32 noundef %1) #0 {
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
define dso_local range(i32 0, 2) i32 @Trial(i32 noundef %0) #0 {
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

41:                                               ; preds = %52, %40
  %42 = phi i32 [ 0, %40 ], [ %53, %52 ]
  br label %43

43:                                               ; preds = %50, %41
  %44 = phi i32 [ 0, %41 ], [ 1, %50 ]
  br label %45

45:                                               ; preds = %43
  %46 = shl nuw nsw i32 %44, 3
  %47 = or disjoint i32 %42, %46
  %48 = zext nneg i32 %47 to i64
  %49 = getelementptr inbounds nuw [4 x i8], ptr @p, i64 %48
  store i32 1, ptr %49, align 4
  br label %50

50:                                               ; preds = %45
  %51 = icmp samesign ult i32 %44, 1
  br i1 %51, label %43, label %52, !llvm.loop !19

52:                                               ; preds = %50
  %53 = add nuw nsw i32 %42, 1
  %54 = icmp samesign ult i32 %53, 4
  br i1 %54, label %41, label %55, !llvm.loop !20

55:                                               ; preds = %52
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %56

56:                                               ; preds = %68, %55
  %57 = phi i32 [ 0, %55 ], [ 1, %68 ]
  br label %58

58:                                               ; preds = %56
  br label %59

59:                                               ; preds = %59, %58
  %60 = phi i32 [ 0, %58 ], [ %65, %59 ]
  %61 = shl nuw nsw i32 %60, 6
  %62 = or disjoint i32 %57, %61
  %63 = zext nneg i32 %62 to i64
  %64 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %63
  store i32 1, ptr %64, align 4
  %65 = add nuw nsw i32 %60, 1
  %66 = icmp samesign ult i32 %65, 4
  br i1 %66, label %59, label %67, !llvm.loop !21

67:                                               ; preds = %59
  br label %68

68:                                               ; preds = %67
  %69 = icmp samesign ult i32 %57, 1
  br i1 %69, label %56, label %70, !llvm.loop !22

70:                                               ; preds = %68
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %71

71:                                               ; preds = %70
  br label %72

72:                                               ; preds = %83, %71
  %73 = phi i32 [ 0, %71 ], [ %84, %83 ]
  %74 = shl nuw nsw i32 %73, 3
  br label %75

75:                                               ; preds = %75, %72
  %76 = phi i32 [ 0, %72 ], [ %81, %75 ]
  %77 = shl nuw nsw i32 %76, 6
  %78 = or disjoint i32 %77, %74
  %79 = zext nneg i32 %78 to i64
  %80 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %79
  store i32 1, ptr %80, align 4
  %81 = add nuw nsw i32 %76, 1
  %82 = icmp samesign ult i32 %81, 2
  br i1 %82, label %75, label %83, !llvm.loop !23

83:                                               ; preds = %75
  %84 = add nuw nsw i32 %73, 1
  %85 = icmp samesign ult i32 %84, 4
  br i1 %85, label %72, label %86, !llvm.loop !24

86:                                               ; preds = %83
  br label %87

87:                                               ; preds = %86
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %88

88:                                               ; preds = %100, %87
  %89 = phi i32 [ 0, %87 ], [ 1, %100 ]
  br label %90

90:                                               ; preds = %97, %88
  %91 = phi i32 [ 0, %88 ], [ %98, %97 ]
  br label %92

92:                                               ; preds = %90
  %93 = shl nuw nsw i32 %91, 3
  %94 = or disjoint i32 %89, %93
  %95 = zext nneg i32 %94 to i64
  %96 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %95
  store i32 1, ptr %96, align 4
  br label %97

97:                                               ; preds = %92
  %98 = add nuw nsw i32 %91, 1
  %99 = icmp samesign ult i32 %98, 4
  br i1 %99, label %90, label %100, !llvm.loop !25

100:                                              ; preds = %97
  %101 = icmp samesign ult i32 %89, 1
  br i1 %101, label %88, label %102, !llvm.loop !26

102:                                              ; preds = %100
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %103

103:                                              ; preds = %115, %102
  %104 = phi i32 [ 0, %102 ], [ %116, %115 ]
  br label %105

105:                                              ; preds = %103
  br label %106

106:                                              ; preds = %106, %105
  %107 = phi i32 [ 0, %105 ], [ %112, %106 ]
  %108 = shl nuw nsw i32 %107, 6
  %109 = or disjoint i32 %104, %108
  %110 = zext nneg i32 %109 to i64
  %111 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %110
  store i32 1, ptr %111, align 4
  %112 = add nuw nsw i32 %107, 1
  %113 = icmp samesign ult i32 %112, 2
  br i1 %113, label %106, label %114, !llvm.loop !27

114:                                              ; preds = %106
  br label %115

115:                                              ; preds = %114
  %116 = add nuw nsw i32 %104, 1
  %117 = icmp samesign ult i32 %116, 4
  br i1 %117, label %103, label %118, !llvm.loop !28

118:                                              ; preds = %115
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %119

119:                                              ; preds = %118
  br label %120

120:                                              ; preds = %131, %119
  %121 = phi i32 [ 0, %119 ], [ 1, %131 ]
  %122 = shl nuw nsw i32 %121, 3
  br label %123

123:                                              ; preds = %123, %120
  %124 = phi i32 [ 0, %120 ], [ %129, %123 ]
  %125 = shl nuw nsw i32 %124, 6
  %126 = or disjoint i32 %125, %122
  %127 = zext nneg i32 %126 to i64
  %128 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %127
  store i32 1, ptr %128, align 4
  %129 = add nuw nsw i32 %124, 1
  %130 = icmp samesign ult i32 %129, 4
  br i1 %130, label %123, label %131, !llvm.loop !29

131:                                              ; preds = %123
  %132 = icmp samesign ult i32 %121, 1
  br i1 %132, label %120, label %133, !llvm.loop !30

133:                                              ; preds = %131
  br label %134

134:                                              ; preds = %133
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %135

135:                                              ; preds = %142, %134
  %136 = phi i32 [ 0, %134 ], [ %143, %142 ]
  br label %137

137:                                              ; preds = %135
  br label %138

138:                                              ; preds = %137
  %139 = zext nneg i32 %136 to i64
  %140 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %139
  store i32 1, ptr %140, align 4
  br label %141

141:                                              ; preds = %138
  br label %142

142:                                              ; preds = %141
  %143 = add nuw nsw i32 %136, 1
  %144 = icmp samesign ult i32 %143, 3
  br i1 %144, label %135, label %145, !llvm.loop !31

145:                                              ; preds = %142
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %146

146:                                              ; preds = %145
  br label %147

147:                                              ; preds = %153, %146
  %148 = phi i32 [ 0, %146 ], [ %154, %153 ]
  br label %149

149:                                              ; preds = %147
  %150 = shl nuw nsw i32 %148, 3
  %151 = zext nneg i32 %150 to i64
  %152 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %151
  store i32 1, ptr %152, align 4
  br label %153

153:                                              ; preds = %149
  %154 = add nuw nsw i32 %148, 1
  %155 = icmp samesign ult i32 %154, 3
  br i1 %155, label %147, label %156, !llvm.loop !32

156:                                              ; preds = %153
  br label %157

157:                                              ; preds = %156
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %158

158:                                              ; preds = %157
  br label %159

159:                                              ; preds = %158
  br label %160

160:                                              ; preds = %160, %159
  %161 = phi i32 [ 0, %159 ], [ %165, %160 ]
  %162 = shl nuw nsw i32 %161, 6
  %163 = zext nneg i32 %162 to i64
  %164 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %163
  store i32 1, ptr %164, align 4
  %165 = add nuw nsw i32 %161, 1
  %166 = icmp samesign ult i32 %165, 3
  br i1 %166, label %160, label %167, !llvm.loop !33

167:                                              ; preds = %160
  br label %168

168:                                              ; preds = %167
  br label %169

169:                                              ; preds = %168
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %170

170:                                              ; preds = %181, %169
  %171 = phi i32 [ 0, %169 ], [ 1, %181 ]
  br label %172

172:                                              ; preds = %179, %170
  %173 = phi i32 [ 0, %170 ], [ 1, %179 ]
  br label %174

174:                                              ; preds = %172
  %175 = shl nuw nsw i32 %173, 3
  %176 = or disjoint i32 %171, %175
  %177 = zext nneg i32 %176 to i64
  %178 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %177
  store i32 1, ptr %178, align 4
  br label %179

179:                                              ; preds = %174
  %180 = icmp samesign ult i32 %173, 1
  br i1 %180, label %172, label %181, !llvm.loop !34

181:                                              ; preds = %179
  %182 = icmp samesign ult i32 %171, 1
  br i1 %182, label %170, label %183, !llvm.loop !35

183:                                              ; preds = %181
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %184

184:                                              ; preds = %196, %183
  %185 = phi i32 [ 0, %183 ], [ 1, %196 ]
  br label %186

186:                                              ; preds = %184
  br label %187

187:                                              ; preds = %187, %186
  %188 = phi i32 [ 0, %186 ], [ %193, %187 ]
  %189 = shl nuw nsw i32 %188, 6
  %190 = or disjoint i32 %185, %189
  %191 = zext nneg i32 %190 to i64
  %192 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %191
  store i32 1, ptr %192, align 4
  %193 = add nuw nsw i32 %188, 1
  %194 = icmp samesign ult i32 %193, 2
  br i1 %194, label %187, label %195, !llvm.loop !36

195:                                              ; preds = %187
  br label %196

196:                                              ; preds = %195
  %197 = icmp samesign ult i32 %185, 1
  br i1 %197, label %184, label %198, !llvm.loop !37

198:                                              ; preds = %196
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %199

199:                                              ; preds = %198
  br label %200

200:                                              ; preds = %211, %199
  %201 = phi i32 [ 0, %199 ], [ 1, %211 ]
  %202 = shl nuw nsw i32 %201, 3
  br label %203

203:                                              ; preds = %203, %200
  %204 = phi i32 [ 0, %200 ], [ %209, %203 ]
  %205 = shl nuw nsw i32 %204, 6
  %206 = or disjoint i32 %205, %202
  %207 = zext nneg i32 %206 to i64
  %208 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %207
  store i32 1, ptr %208, align 4
  %209 = add nuw nsw i32 %204, 1
  %210 = icmp samesign ult i32 %209, 2
  br i1 %210, label %203, label %211, !llvm.loop !38

211:                                              ; preds = %203
  %212 = icmp samesign ult i32 %201, 1
  br i1 %212, label %200, label %213, !llvm.loop !39

213:                                              ; preds = %211
  br label %214

214:                                              ; preds = %213
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %215

215:                                              ; preds = %229, %214
  %216 = phi i32 [ 0, %214 ], [ 1, %229 ]
  br label %217

217:                                              ; preds = %227, %215
  %218 = phi i32 [ 0, %215 ], [ 1, %227 ]
  %219 = shl nuw nsw i32 %218, 3
  %invariant.op19 = or disjoint i32 %219, %216
  br label %220

220:                                              ; preds = %220, %217
  %221 = phi i32 [ 0, %217 ], [ %225, %220 ]
  %222 = shl nuw nsw i32 %221, 6
  %.reass20 = or disjoint i32 %222, %invariant.op19
  %223 = zext nneg i32 %.reass20 to i64
  %224 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %223
  store i32 1, ptr %224, align 4
  %225 = add nuw nsw i32 %221, 1
  %226 = icmp samesign ult i32 %225, 2
  br i1 %226, label %220, label %227, !llvm.loop !40

227:                                              ; preds = %220
  %228 = icmp samesign ult i32 %218, 1
  br i1 %228, label %217, label %229, !llvm.loop !41

229:                                              ; preds = %227
  %230 = icmp samesign ult i32 %216, 1
  br i1 %230, label %215, label %231, !llvm.loop !42

231:                                              ; preds = %229
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 0, ptr @kount, align 4
  %232 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %232, 0
  br i1 %.not, label %235, label %233

233:                                              ; preds = %231
  %234 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %234, ptr @n, align 4
  br label %236

235:                                              ; preds = %231
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %.pre = load i32, ptr @n, align 4
  br label %236

236:                                              ; preds = %235, %233
  %237 = phi i32 [ %.pre, %235 ], [ %234, %233 ]
  %238 = call i32 @Trial(i32 noundef %237)
  %.not1 = icmp eq i32 %238, 0
  br i1 %.not1, label %239, label %240

239:                                              ; preds = %236
  %puts2 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %244

240:                                              ; preds = %236
  %241 = load i32, ptr @kount, align 4
  %.not3 = icmp eq i32 %241, 2005
  br i1 %.not3, label %243, label %242

242:                                              ; preds = %240
  %puts4 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %243

243:                                              ; preds = %242, %240
  br label %244

244:                                              ; preds = %243, %239
  %245 = load i32, ptr @n, align 4
  %246 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %245) #3
  %247 = load i32, ptr @kount, align 4
  %248 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %247) #3
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
  br i1 %4, label %1, label %5, !llvm.loop !43

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
