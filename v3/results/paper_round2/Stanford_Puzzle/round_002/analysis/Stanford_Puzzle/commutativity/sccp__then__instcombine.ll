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
  %.not1 = icmp slt i32 %.pre, 0
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
  %.not.not = icmp slt i32 %4, %.pre
  br i1 %.not.not, label %3, label %._crit_edge, !llvm.loop !7

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
  %.not4 = icmp slt i32 %.pre, 0
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
  %.not.not = icmp slt i32 %4, %.pre
  br i1 %.not.not, label %3, label %._crit_edge, !llvm.loop !9

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
  %.not.not = icmp slt i32 %4, %.pre
  br i1 %.not.not, label %3, label %._crit_edge, !llvm.loop !11

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
  %21 = icmp samesign ult i32 %13, 5
  br i1 %21, label %12, label %22, !llvm.loop !14

22:                                               ; preds = %12
  %23 = add nuw nsw i32 %11, 1
  %24 = icmp samesign ult i32 %11, 5
  br i1 %24, label %10, label %25, !llvm.loop !15

25:                                               ; preds = %22
  %26 = add nuw nsw i32 %9, 1
  %27 = icmp samesign ult i32 %9, 5
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
  %38 = icmp samesign ult i32 %32, 511
  br i1 %38, label %31, label %39, !llvm.loop !17

39:                                               ; preds = %31
  %40 = add nuw nsw i32 %30, 1
  %41 = icmp samesign ult i32 %30, 12
  br i1 %41, label %29, label %42, !llvm.loop !18

42:                                               ; preds = %39
  br label %43

43:                                               ; preds = %53, %42
  %44 = phi i32 [ 0, %42 ], [ %54, %53 ]
  br label %45

45:                                               ; preds = %52, %43
  %46 = phi i1 [ true, %43 ], [ false, %52 ]
  %47 = phi i32 [ 0, %43 ], [ 8, %52 ]
  br label %48

48:                                               ; preds = %45
  %49 = or disjoint i32 %44, %47
  %50 = zext nneg i32 %49 to i64
  %51 = getelementptr inbounds nuw [4 x i8], ptr @p, i64 %50
  store i32 1, ptr %51, align 4
  br label %52

52:                                               ; preds = %48
  br i1 %46, label %45, label %53, !llvm.loop !19

53:                                               ; preds = %52
  %54 = add nuw nsw i32 %44, 1
  %55 = icmp samesign ult i32 %44, 3
  br i1 %55, label %43, label %56, !llvm.loop !20

56:                                               ; preds = %53
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %57

57:                                               ; preds = %70, %56
  %58 = phi i1 [ true, %56 ], [ false, %70 ]
  %59 = phi i32 [ 0, %56 ], [ 1, %70 ]
  br label %60

60:                                               ; preds = %57
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
  br i1 %68, label %61, label %69, !llvm.loop !21

69:                                               ; preds = %61
  br label %70

70:                                               ; preds = %69
  br i1 %58, label %57, label %71, !llvm.loop !22

71:                                               ; preds = %70
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %72

72:                                               ; preds = %71
  br label %73

73:                                               ; preds = %84, %72
  %74 = phi i32 [ 0, %72 ], [ %85, %84 ]
  br label %75

75:                                               ; preds = %75, %73
  %76 = phi i32 [ 0, %73 ], [ %82, %75 ]
  %77 = shl nuw nsw i32 %76, 6
  %78 = shl nuw nsw i32 %74, 3
  %79 = or disjoint i32 %77, %78
  %80 = zext nneg i32 %79 to i64
  %81 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %80
  store i32 1, ptr %81, align 4
  %82 = add nuw nsw i32 %76, 1
  %83 = icmp eq i32 %76, 0
  br i1 %83, label %75, label %84, !llvm.loop !23

84:                                               ; preds = %75
  %85 = add nuw nsw i32 %74, 1
  %86 = icmp samesign ult i32 %74, 3
  br i1 %86, label %73, label %87, !llvm.loop !24

87:                                               ; preds = %84
  br label %88

88:                                               ; preds = %87
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %89

89:                                               ; preds = %102, %88
  %90 = phi i1 [ true, %88 ], [ false, %102 ]
  %91 = phi i32 [ 0, %88 ], [ 1, %102 ]
  br label %92

92:                                               ; preds = %99, %89
  %93 = phi i32 [ 0, %89 ], [ %100, %99 ]
  br label %94

94:                                               ; preds = %92
  %95 = shl nuw nsw i32 %93, 3
  %96 = or disjoint i32 %91, %95
  %97 = zext nneg i32 %96 to i64
  %98 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %97
  store i32 1, ptr %98, align 4
  br label %99

99:                                               ; preds = %94
  %100 = add nuw nsw i32 %93, 1
  %101 = icmp samesign ult i32 %93, 3
  br i1 %101, label %92, label %102, !llvm.loop !25

102:                                              ; preds = %99
  br i1 %90, label %89, label %103, !llvm.loop !26

103:                                              ; preds = %102
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %104

104:                                              ; preds = %116, %103
  %105 = phi i32 [ 0, %103 ], [ %117, %116 ]
  br label %106

106:                                              ; preds = %104
  br label %107

107:                                              ; preds = %107, %106
  %108 = phi i32 [ 0, %106 ], [ %113, %107 ]
  %109 = shl nuw nsw i32 %108, 6
  %110 = or disjoint i32 %105, %109
  %111 = zext nneg i32 %110 to i64
  %112 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %111
  store i32 1, ptr %112, align 4
  %113 = add nuw nsw i32 %108, 1
  %114 = icmp eq i32 %108, 0
  br i1 %114, label %107, label %115, !llvm.loop !27

115:                                              ; preds = %107
  br label %116

116:                                              ; preds = %115
  %117 = add nuw nsw i32 %105, 1
  %118 = icmp samesign ult i32 %105, 3
  br i1 %118, label %104, label %119, !llvm.loop !28

119:                                              ; preds = %116
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %120

120:                                              ; preds = %119
  br label %121

121:                                              ; preds = %132, %120
  %122 = phi i1 [ true, %120 ], [ false, %132 ]
  %123 = phi i32 [ 0, %120 ], [ 8, %132 ]
  br label %124

124:                                              ; preds = %124, %121
  %125 = phi i32 [ 0, %121 ], [ %130, %124 ]
  %126 = shl nuw nsw i32 %125, 6
  %127 = or disjoint i32 %126, %123
  %128 = zext nneg i32 %127 to i64
  %129 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %128
  store i32 1, ptr %129, align 4
  %130 = add nuw nsw i32 %125, 1
  %131 = icmp samesign ult i32 %125, 3
  br i1 %131, label %124, label %132, !llvm.loop !29

132:                                              ; preds = %124
  br i1 %122, label %121, label %133, !llvm.loop !30

133:                                              ; preds = %132
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
  %144 = icmp samesign ult i32 %136, 2
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
  %155 = icmp samesign ult i32 %148, 2
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
  %166 = icmp samesign ult i32 %161, 2
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
  %171 = phi i1 [ true, %169 ], [ false, %181 ]
  %172 = phi i32 [ 0, %169 ], [ 1, %181 ]
  br label %173

173:                                              ; preds = %180, %170
  %174 = phi i1 [ true, %170 ], [ false, %180 ]
  %175 = phi i32 [ 0, %170 ], [ 8, %180 ]
  br label %176

176:                                              ; preds = %173
  %177 = or disjoint i32 %172, %175
  %178 = zext nneg i32 %177 to i64
  %179 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %178
  store i32 1, ptr %179, align 4
  br label %180

180:                                              ; preds = %176
  br i1 %174, label %173, label %181, !llvm.loop !34

181:                                              ; preds = %180
  br i1 %171, label %170, label %182, !llvm.loop !35

182:                                              ; preds = %181
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %183

183:                                              ; preds = %196, %182
  %184 = phi i1 [ true, %182 ], [ false, %196 ]
  %185 = phi i32 [ 0, %182 ], [ 1, %196 ]
  br label %186

186:                                              ; preds = %183
  br label %187

187:                                              ; preds = %187, %186
  %188 = phi i32 [ 0, %186 ], [ %193, %187 ]
  %189 = shl nuw nsw i32 %188, 6
  %190 = or disjoint i32 %185, %189
  %191 = zext nneg i32 %190 to i64
  %192 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %191
  store i32 1, ptr %192, align 4
  %193 = add nuw nsw i32 %188, 1
  %194 = icmp eq i32 %188, 0
  br i1 %194, label %187, label %195, !llvm.loop !36

195:                                              ; preds = %187
  br label %196

196:                                              ; preds = %195
  br i1 %184, label %183, label %197, !llvm.loop !37

197:                                              ; preds = %196
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %198

198:                                              ; preds = %197
  br label %199

199:                                              ; preds = %210, %198
  %200 = phi i1 [ true, %198 ], [ false, %210 ]
  %201 = phi i32 [ 0, %198 ], [ 8, %210 ]
  br label %202

202:                                              ; preds = %202, %199
  %203 = phi i32 [ 0, %199 ], [ %208, %202 ]
  %204 = shl nuw nsw i32 %203, 6
  %205 = or disjoint i32 %204, %201
  %206 = zext nneg i32 %205 to i64
  %207 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %206
  store i32 1, ptr %207, align 4
  %208 = add nuw nsw i32 %203, 1
  %209 = icmp eq i32 %203, 0
  br i1 %209, label %202, label %210, !llvm.loop !38

210:                                              ; preds = %202
  br i1 %200, label %199, label %211, !llvm.loop !39

211:                                              ; preds = %210
  br label %212

212:                                              ; preds = %211
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %213

213:                                              ; preds = %229, %212
  %214 = phi i1 [ true, %212 ], [ false, %229 ]
  %215 = phi i32 [ 0, %212 ], [ 1, %229 ]
  br label %216

216:                                              ; preds = %228, %213
  %217 = phi i1 [ true, %213 ], [ false, %228 ]
  %218 = phi i32 [ 0, %213 ], [ 8, %228 ]
  br label %219

219:                                              ; preds = %219, %216
  %220 = phi i32 [ 0, %216 ], [ %226, %219 ]
  %221 = shl nuw nsw i32 %220, 6
  %222 = or disjoint i32 %221, %218
  %223 = or disjoint i32 %215, %222
  %224 = zext nneg i32 %223 to i64
  %225 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %224
  store i32 1, ptr %225, align 4
  %226 = add nuw nsw i32 %220, 1
  %227 = icmp eq i32 %220, 0
  br i1 %227, label %219, label %228, !llvm.loop !40

228:                                              ; preds = %219
  br i1 %217, label %216, label %229, !llvm.loop !41

229:                                              ; preds = %228
  br i1 %214, label %213, label %230, !llvm.loop !42

230:                                              ; preds = %229
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
  %4 = icmp samesign ult i32 %2, 99
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
