; ModuleID = 'results\paper_full\Stanford_Puzzle\round_000\output.ll'
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

3:                                                ; preds = %.lr.ph, %16
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

3:                                                ; preds = %.lr.ph, %13
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

23:                                               ; preds = %.lr.ph6, %29
  %24 = phi i32 [ %1, %.lr.ph6 ], [ %30, %29 ]
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %25
  %27 = load i32, ptr %26, align 4
  %.not2 = icmp eq i32 %27, 0
  br i1 %.not2, label %28, label %29

28:                                               ; preds = %23
  %.lcssa1 = phi i32 [ %24, %23 ]
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
  %34 = phi i32 [ 0, %32 ], [ %.lcssa1, %28 ]
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

3:                                                ; preds = %.lr.ph, %13
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

4:                                                ; preds = %1, %22
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

1:                                                ; preds = %12, %0
  %2 = phi i32 [ 0, %0 ], [ %15, %12 ]
  br label %3

3:                                                ; preds = %1
  %4 = zext nneg i32 %2 to i64
  %5 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %4
  store i32 1, ptr %5, align 4
  %6 = add nuw nsw i32 %2, 1
  br label %7

7:                                                ; preds = %3
  %8 = zext nneg i32 %6 to i64
  %9 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %8
  store i32 1, ptr %9, align 4
  %10 = add nuw nsw i32 %2, 2
  %11 = icmp samesign ult i32 %10, 512
  br i1 %11, label %12, label %16

12:                                               ; preds = %7
  %13 = zext nneg i32 %10 to i64
  %14 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %13
  store i32 1, ptr %14, align 4
  %15 = add nuw nsw i32 %2, 3
  br label %1, !llvm.loop !13

16:                                               ; preds = %7
  br label %17

17:                                               ; preds = %16, %164
  %18 = phi i32 [ 1, %16 ], [ %165, %164 ]
  br label %19

19:                                               ; preds = %17
  br label %20

20:                                               ; preds = %19
  br label %21

21:                                               ; preds = %20
  br label %22

22:                                               ; preds = %21
  %23 = or disjoint i32 %18, 72
  %24 = zext nneg i32 %23 to i64
  %25 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %24
  store i32 0, ptr %25, align 4
  br label %26

26:                                               ; preds = %22
  %27 = or disjoint i32 %18, 136
  %28 = zext nneg i32 %27 to i64
  %29 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %28
  store i32 0, ptr %29, align 4
  br label %30

30:                                               ; preds = %26
  %31 = or disjoint i32 %18, 200
  %32 = zext nneg i32 %31 to i64
  %33 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %32
  store i32 0, ptr %33, align 4
  br label %34

34:                                               ; preds = %30
  %35 = or disjoint i32 %18, 264
  %36 = zext nneg i32 %35 to i64
  %37 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %36
  store i32 0, ptr %37, align 4
  br label %38

38:                                               ; preds = %34
  %39 = or disjoint i32 %18, 328
  %40 = zext nneg i32 %39 to i64
  %41 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %40
  store i32 0, ptr %41, align 4
  br i1 false, label %.loopexit, label %48

.loopexit:                                        ; preds = %38, %67, %90, %113, %136
  %.lcssa2.ph = phi i32 [ %18, %136 ], [ %18, %113 ], [ %18, %90 ], [ %18, %67 ], [ %18, %38 ]
  %.lcssa1.ph = phi i32 [ 5, %136 ], [ 4, %113 ], [ 3, %90 ], [ 2, %67 ], [ 1, %38 ]
  br label %42

42:                                               ; preds = %.loopexit, %159
  %.lcssa2 = phi i32 [ %.lcssa4, %159 ], [ %.lcssa2.ph, %.loopexit ]
  %.lcssa1 = phi i32 [ 6, %159 ], [ %.lcssa1.ph, %.loopexit ]
  %43 = shl nuw nsw i32 %.lcssa1, 3
  %44 = or disjoint i32 384, %43
  %45 = or disjoint i32 %.lcssa2, %44
  %46 = zext nneg i32 %45 to i64
  %47 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %46
  store i32 0, ptr %47, align 4
  unreachable

48:                                               ; preds = %38
  br label %49

49:                                               ; preds = %48
  br label %50

50:                                               ; preds = %49
  br label %51

51:                                               ; preds = %50
  %52 = or disjoint i32 %18, 80
  %53 = zext nneg i32 %52 to i64
  %54 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %53
  store i32 0, ptr %54, align 4
  br label %55

55:                                               ; preds = %51
  %56 = or disjoint i32 %18, 144
  %57 = zext nneg i32 %56 to i64
  %58 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %57
  store i32 0, ptr %58, align 4
  br label %59

59:                                               ; preds = %55
  %60 = or disjoint i32 %18, 208
  %61 = zext nneg i32 %60 to i64
  %62 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %61
  store i32 0, ptr %62, align 4
  br label %63

63:                                               ; preds = %59
  %64 = or disjoint i32 %18, 272
  %65 = zext nneg i32 %64 to i64
  %66 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %65
  store i32 0, ptr %66, align 4
  br label %67

67:                                               ; preds = %63
  %68 = or disjoint i32 %18, 336
  %69 = zext nneg i32 %68 to i64
  %70 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %69
  store i32 0, ptr %70, align 4
  br i1 false, label %.loopexit, label %71

71:                                               ; preds = %67
  br label %72

72:                                               ; preds = %71
  br label %73

73:                                               ; preds = %72
  br label %74

74:                                               ; preds = %73
  %75 = or disjoint i32 %18, 88
  %76 = zext nneg i32 %75 to i64
  %77 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %76
  store i32 0, ptr %77, align 4
  br label %78

78:                                               ; preds = %74
  %79 = or disjoint i32 %18, 152
  %80 = zext nneg i32 %79 to i64
  %81 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %80
  store i32 0, ptr %81, align 4
  br label %82

82:                                               ; preds = %78
  %83 = or disjoint i32 %18, 216
  %84 = zext nneg i32 %83 to i64
  %85 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %84
  store i32 0, ptr %85, align 4
  br label %86

86:                                               ; preds = %82
  %87 = or disjoint i32 %18, 280
  %88 = zext nneg i32 %87 to i64
  %89 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %88
  store i32 0, ptr %89, align 4
  br label %90

90:                                               ; preds = %86
  %91 = or disjoint i32 %18, 344
  %92 = zext nneg i32 %91 to i64
  %93 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %92
  store i32 0, ptr %93, align 4
  br i1 false, label %.loopexit, label %94

94:                                               ; preds = %90
  br label %95

95:                                               ; preds = %94
  br label %96

96:                                               ; preds = %95
  br label %97

97:                                               ; preds = %96
  %98 = or disjoint i32 %18, 96
  %99 = zext nneg i32 %98 to i64
  %100 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %99
  store i32 0, ptr %100, align 4
  br label %101

101:                                              ; preds = %97
  %102 = or disjoint i32 %18, 160
  %103 = zext nneg i32 %102 to i64
  %104 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %103
  store i32 0, ptr %104, align 4
  br label %105

105:                                              ; preds = %101
  %106 = or disjoint i32 %18, 224
  %107 = zext nneg i32 %106 to i64
  %108 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %107
  store i32 0, ptr %108, align 4
  br label %109

109:                                              ; preds = %105
  %110 = or disjoint i32 %18, 288
  %111 = zext nneg i32 %110 to i64
  %112 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %111
  store i32 0, ptr %112, align 4
  br label %113

113:                                              ; preds = %109
  %114 = or disjoint i32 %18, 352
  %115 = zext nneg i32 %114 to i64
  %116 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %115
  store i32 0, ptr %116, align 4
  br i1 false, label %.loopexit, label %117

117:                                              ; preds = %113
  br label %118

118:                                              ; preds = %117
  br label %119

119:                                              ; preds = %118
  br label %120

120:                                              ; preds = %119
  %121 = or disjoint i32 %18, 104
  %122 = zext nneg i32 %121 to i64
  %123 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %122
  store i32 0, ptr %123, align 4
  br label %124

124:                                              ; preds = %120
  %125 = or disjoint i32 %18, 168
  %126 = zext nneg i32 %125 to i64
  %127 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %126
  store i32 0, ptr %127, align 4
  br label %128

128:                                              ; preds = %124
  %129 = or disjoint i32 %18, 232
  %130 = zext nneg i32 %129 to i64
  %131 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %130
  store i32 0, ptr %131, align 4
  br label %132

132:                                              ; preds = %128
  %133 = or disjoint i32 %18, 296
  %134 = zext nneg i32 %133 to i64
  %135 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %134
  store i32 0, ptr %135, align 4
  br label %136

136:                                              ; preds = %132
  %137 = or disjoint i32 %18, 360
  %138 = zext nneg i32 %137 to i64
  %139 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %138
  store i32 0, ptr %139, align 4
  br i1 false, label %.loopexit, label %140

140:                                              ; preds = %136
  br i1 false, label %141, label %164

141:                                              ; preds = %140
  %.lcssa4 = phi i32 [ %18, %140 ]
  br label %142

142:                                              ; preds = %141
  br label %143

143:                                              ; preds = %142
  %144 = or disjoint i32 %.lcssa4, 112
  %145 = zext nneg i32 %144 to i64
  %146 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %145
  store i32 0, ptr %146, align 4
  br label %147

147:                                              ; preds = %143
  %148 = or disjoint i32 %.lcssa4, 176
  %149 = zext nneg i32 %148 to i64
  %150 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %149
  store i32 0, ptr %150, align 4
  br label %151

151:                                              ; preds = %147
  %152 = or disjoint i32 %.lcssa4, 240
  %153 = zext nneg i32 %152 to i64
  %154 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %153
  store i32 0, ptr %154, align 4
  br label %155

155:                                              ; preds = %151
  %156 = or disjoint i32 %.lcssa4, 304
  %157 = zext nneg i32 %156 to i64
  %158 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %157
  store i32 0, ptr %158, align 4
  br label %159

159:                                              ; preds = %155
  %160 = or disjoint i32 %.lcssa4, 368
  %161 = zext nneg i32 %160 to i64
  %162 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %161
  store i32 0, ptr %162, align 4
  br i1 false, label %42, label %163

163:                                              ; preds = %159
  unreachable

164:                                              ; preds = %140
  %165 = add nuw nsw i32 %18, 1
  %166 = icmp samesign ult i32 %165, 6
  br i1 %166, label %17, label %167, !llvm.loop !14

167:                                              ; preds = %164
  br label %168

168:                                              ; preds = %167, %191
  %169 = phi i32 [ 0, %167 ], [ %192, %191 ]
  %170 = zext nneg i32 %169 to i64
  %171 = getelementptr inbounds nuw [2048 x i8], ptr @p, i64 %170
  br label %172

172:                                              ; preds = %185, %168
  %173 = phi i32 [ 0, %168 ], [ %190, %185 ]
  br label %174

174:                                              ; preds = %172
  %175 = zext nneg i32 %169 to i64
  %176 = getelementptr inbounds nuw [2048 x i8], ptr @p, i64 %175
  %177 = zext nneg i32 %173 to i64
  %178 = getelementptr inbounds nuw [4 x i8], ptr %176, i64 %177
  store i32 0, ptr %178, align 4
  %179 = add nuw nsw i32 %173, 1
  br label %180

180:                                              ; preds = %174
  %181 = zext nneg i32 %179 to i64
  %182 = getelementptr inbounds nuw [4 x i8], ptr %171, i64 %181
  store i32 0, ptr %182, align 4
  %183 = add nuw nsw i32 %173, 2
  %184 = icmp samesign ult i32 %183, 512
  br i1 %184, label %185, label %191

185:                                              ; preds = %180
  %186 = zext nneg i32 %169 to i64
  %187 = getelementptr inbounds nuw [2048 x i8], ptr @p, i64 %186
  %188 = zext nneg i32 %183 to i64
  %189 = getelementptr inbounds nuw [4 x i8], ptr %187, i64 %188
  store i32 0, ptr %189, align 4
  %190 = add nuw nsw i32 %173, 3
  br label %172, !llvm.loop !15

191:                                              ; preds = %180
  %192 = add nuw nsw i32 %169, 1
  %193 = icmp samesign ult i32 %192, 13
  br i1 %193, label %168, label %194, !llvm.loop !16

194:                                              ; preds = %191
  br label %195

195:                                              ; preds = %194
  br label %196

196:                                              ; preds = %195
  br label %197

197:                                              ; preds = %196
  br label %198

198:                                              ; preds = %197
  br label %199

199:                                              ; preds = %198
  br label %200

200:                                              ; preds = %199
  store i32 1, ptr @p, align 4
  br i1 false, label %.loopexit9, label %206

.loopexit9:                                       ; preds = %260, %256, %249, %245, %238, %234, %227, %223, %200, %209
  %.lcssa6.ph = phi i32 [ 0, %209 ], [ 0, %200 ], [ 1, %223 ], [ 1, %227 ], [ 2, %234 ], [ 2, %238 ], [ 3, %245 ], [ 3, %249 ], [ 4, %256 ], [ 4, %260 ]
  %.lcssa5.ph = phi i32 [ 1, %209 ], [ 0, %200 ], [ 0, %223 ], [ 1, %227 ], [ 0, %234 ], [ 1, %238 ], [ 0, %245 ], [ 1, %249 ], [ 0, %256 ], [ 1, %260 ]
  br label %201

201:                                              ; preds = %.loopexit9, %213
  %.lcssa6 = phi i32 [ %.lcssa8, %213 ], [ %.lcssa6.ph, %.loopexit9 ]
  %.lcssa5 = phi i32 [ 2, %213 ], [ %.lcssa5.ph, %.loopexit9 ]
  %202 = shl nuw nsw i32 %.lcssa5, 3
  %203 = or disjoint i32 %.lcssa6, %202
  %204 = zext nneg i32 %203 to i64
  %205 = getelementptr inbounds nuw [4 x i8], ptr @p, i64 %204
  store i32 1, ptr %205, align 4
  unreachable

206:                                              ; preds = %200
  br label %207

207:                                              ; preds = %206
  br label %208

208:                                              ; preds = %207
  br label %209

209:                                              ; preds = %208
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 32), align 4
  br i1 false, label %.loopexit9, label %210

210:                                              ; preds = %209
  br i1 false, label %211, label %218

211:                                              ; preds = %261, %250, %239, %228, %210
  %.lcssa8 = phi i32 [ 0, %210 ], [ 1, %228 ], [ 2, %239 ], [ 3, %250 ], [ 4, %261 ]
  br label %212

212:                                              ; preds = %211
  br label %213

213:                                              ; preds = %212
  %214 = or disjoint i32 %.lcssa8, 16
  %215 = zext nneg i32 %214 to i64
  %216 = getelementptr inbounds nuw [4 x i8], ptr @p, i64 %215
  store i32 1, ptr %216, align 4
  br i1 false, label %201, label %217

217:                                              ; preds = %213
  unreachable

218:                                              ; preds = %210
  br label %219

219:                                              ; preds = %218
  br label %220

220:                                              ; preds = %219
  br label %221

221:                                              ; preds = %220
  br label %222

222:                                              ; preds = %221
  br label %223

223:                                              ; preds = %222
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4), align 4
  br i1 false, label %.loopexit9, label %224

224:                                              ; preds = %223
  br label %225

225:                                              ; preds = %224
  br label %226

226:                                              ; preds = %225
  br label %227

227:                                              ; preds = %226
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 36), align 4
  br i1 false, label %.loopexit9, label %228

228:                                              ; preds = %227
  br i1 false, label %211, label %229

229:                                              ; preds = %228
  br label %230

230:                                              ; preds = %229
  br label %231

231:                                              ; preds = %230
  br label %232

232:                                              ; preds = %231
  br label %233

233:                                              ; preds = %232
  br label %234

234:                                              ; preds = %233
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8), align 4
  br i1 false, label %.loopexit9, label %235

235:                                              ; preds = %234
  br label %236

236:                                              ; preds = %235
  br label %237

237:                                              ; preds = %236
  br label %238

238:                                              ; preds = %237
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 40), align 4
  br i1 false, label %.loopexit9, label %239

239:                                              ; preds = %238
  br i1 false, label %211, label %240

240:                                              ; preds = %239
  br label %241

241:                                              ; preds = %240
  br label %242

242:                                              ; preds = %241
  br label %243

243:                                              ; preds = %242
  br label %244

244:                                              ; preds = %243
  br label %245

245:                                              ; preds = %244
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12), align 4
  br i1 false, label %.loopexit9, label %246

246:                                              ; preds = %245
  br label %247

247:                                              ; preds = %246
  br label %248

248:                                              ; preds = %247
  br label %249

249:                                              ; preds = %248
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 44), align 4
  br i1 false, label %.loopexit9, label %250

250:                                              ; preds = %249
  br i1 false, label %211, label %251

251:                                              ; preds = %250
  br i1 false, label %252, label %263

252:                                              ; preds = %251
  br label %253

253:                                              ; preds = %252
  br label %254

254:                                              ; preds = %253
  br label %255

255:                                              ; preds = %254
  br label %256

256:                                              ; preds = %255
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16), align 4
  br i1 false, label %.loopexit9, label %257

257:                                              ; preds = %256
  br label %258

258:                                              ; preds = %257
  br label %259

259:                                              ; preds = %258
  br label %260

260:                                              ; preds = %259
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 48), align 4
  br i1 false, label %.loopexit9, label %261

261:                                              ; preds = %260
  br i1 false, label %211, label %262

262:                                              ; preds = %261
  unreachable

263:                                              ; preds = %251
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %264

264:                                              ; preds = %263
  br label %265

265:                                              ; preds = %264
  br label %266

266:                                              ; preds = %265
  br label %267

267:                                              ; preds = %266
  br label %268

268:                                              ; preds = %267
  br label %269

269:                                              ; preds = %268
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), align 4
  br label %270

270:                                              ; preds = %269
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2304), align 4
  br label %271

271:                                              ; preds = %270
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2560), align 4
  br label %272

272:                                              ; preds = %271
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2816), align 4
  br i1 false, label %.loopexit13, label %277

.loopexit13:                                      ; preds = %314, %304, %272
  %.lcssa10.ph = phi i32 [ 0, %272 ], [ 1, %304 ], [ 2, %314 ]
  br label %273

273:                                              ; preds = %.loopexit13, %291
  %.lcssa10 = phi i32 [ %.lcssa11, %291 ], [ %.lcssa10.ph, %.loopexit13 ]
  %274 = or disjoint i32 %.lcssa10, 256
  %275 = zext nneg i32 %274 to i64
  %276 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %275
  store i32 1, ptr %276, align 4
  unreachable

277:                                              ; preds = %272
  br i1 false, label %278, label %296

278:                                              ; preds = %315, %305, %277
  %.lcssa11 = phi i32 [ 0, %277 ], [ 1, %305 ], [ 2, %315 ]
  br label %279

279:                                              ; preds = %278
  br label %280

280:                                              ; preds = %279
  %281 = zext nneg i32 %.lcssa11 to i64
  %282 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %281
  store i32 1, ptr %282, align 4
  br label %283

283:                                              ; preds = %280
  %284 = or disjoint i32 %.lcssa11, 64
  %285 = zext nneg i32 %284 to i64
  %286 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %285
  store i32 1, ptr %286, align 4
  br label %287

287:                                              ; preds = %283
  %288 = or disjoint i32 %.lcssa11, 128
  %289 = zext nneg i32 %288 to i64
  %290 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %289
  store i32 1, ptr %290, align 4
  br label %291

291:                                              ; preds = %287
  %292 = or disjoint i32 %.lcssa11, 192
  %293 = zext nneg i32 %292 to i64
  %294 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %293
  store i32 1, ptr %294, align 4
  br i1 false, label %273, label %295

295:                                              ; preds = %291
  unreachable

296:                                              ; preds = %277
  br label %297

297:                                              ; preds = %296
  br label %298

298:                                              ; preds = %297
  br label %299

299:                                              ; preds = %298
  br label %300

300:                                              ; preds = %299
  br label %301

301:                                              ; preds = %300
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2052), align 4
  br label %302

302:                                              ; preds = %301
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2308), align 4
  br label %303

303:                                              ; preds = %302
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2564), align 4
  br label %304

304:                                              ; preds = %303
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2820), align 4
  br i1 false, label %.loopexit13, label %305

305:                                              ; preds = %304
  br i1 false, label %278, label %306

306:                                              ; preds = %305
  br i1 false, label %307, label %317

307:                                              ; preds = %306
  br label %308

308:                                              ; preds = %307
  br label %309

309:                                              ; preds = %308
  br label %310

310:                                              ; preds = %309
  br label %311

311:                                              ; preds = %310
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2056), align 4
  br label %312

312:                                              ; preds = %311
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2312), align 4
  br label %313

313:                                              ; preds = %312
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2568), align 4
  br label %314

314:                                              ; preds = %313
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2824), align 4
  br i1 false, label %.loopexit13, label %315

315:                                              ; preds = %314
  br i1 false, label %278, label %316

316:                                              ; preds = %315
  unreachable

317:                                              ; preds = %306
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %318

318:                                              ; preds = %317
  br label %319

319:                                              ; preds = %318
  br label %320

320:                                              ; preds = %319
  br label %321

321:                                              ; preds = %320
  br label %322

322:                                              ; preds = %321
  br label %323

323:                                              ; preds = %322
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), align 4
  br label %324

324:                                              ; preds = %323
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4352), align 4
  br i1 false, label %.loopexit15, label %330

.loopexit15:                                      ; preds = %372, %367, %362, %357, %324, %334, %339, %344
  %.lcssa14.ph = phi i32 [ 3, %344 ], [ 2, %339 ], [ 1, %334 ], [ 0, %324 ], [ 0, %357 ], [ 1, %362 ], [ 2, %367 ], [ 3, %372 ]
  br label %325

325:                                              ; preds = %.loopexit15, %349
  %.lcssa14 = phi i32 [ 4, %349 ], [ %.lcssa14.ph, %.loopexit15 ]
  %326 = shl nuw nsw i32 %.lcssa14, 3
  %327 = or disjoint i32 128, %326
  %328 = zext nneg i32 %327 to i64
  %329 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %328
  store i32 1, ptr %329, align 4
  unreachable

330:                                              ; preds = %324
  br label %331

331:                                              ; preds = %330
  br label %332

332:                                              ; preds = %331
  br label %333

333:                                              ; preds = %332
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4128), align 4
  br label %334

334:                                              ; preds = %333
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4384), align 4
  br i1 false, label %.loopexit15, label %335

335:                                              ; preds = %334
  br label %336

336:                                              ; preds = %335
  br label %337

337:                                              ; preds = %336
  br label %338

338:                                              ; preds = %337
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4160), align 4
  br label %339

339:                                              ; preds = %338
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4416), align 4
  br i1 false, label %.loopexit15, label %340

340:                                              ; preds = %339
  br label %341

341:                                              ; preds = %340
  br label %342

342:                                              ; preds = %341
  br label %343

343:                                              ; preds = %342
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4192), align 4
  br label %344

344:                                              ; preds = %343
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4448), align 4
  br i1 false, label %.loopexit15, label %345

345:                                              ; preds = %344
  br i1 false, label %346, label %351

346:                                              ; preds = %373, %345
  br label %347

347:                                              ; preds = %346
  br label %348

348:                                              ; preds = %347
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4224), align 4
  br label %349

349:                                              ; preds = %348
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4480), align 4
  br i1 false, label %325, label %350

350:                                              ; preds = %349
  unreachable

351:                                              ; preds = %345
  br i1 false, label %352, label %375

352:                                              ; preds = %351
  br label %353

353:                                              ; preds = %352
  br label %354

354:                                              ; preds = %353
  br label %355

355:                                              ; preds = %354
  br label %356

356:                                              ; preds = %355
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), align 4
  br label %357

357:                                              ; preds = %356
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4352), align 4
  br i1 false, label %.loopexit15, label %358

358:                                              ; preds = %357
  br label %359

359:                                              ; preds = %358
  br label %360

360:                                              ; preds = %359
  br label %361

361:                                              ; preds = %360
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4128), align 4
  br label %362

362:                                              ; preds = %361
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4384), align 4
  br i1 false, label %.loopexit15, label %363

363:                                              ; preds = %362
  br label %364

364:                                              ; preds = %363
  br label %365

365:                                              ; preds = %364
  br label %366

366:                                              ; preds = %365
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4160), align 4
  br label %367

367:                                              ; preds = %366
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4416), align 4
  br i1 false, label %.loopexit15, label %368

368:                                              ; preds = %367
  br label %369

369:                                              ; preds = %368
  br label %370

370:                                              ; preds = %369
  br label %371

371:                                              ; preds = %370
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4192), align 4
  br label %372

372:                                              ; preds = %371
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4448), align 4
  br i1 false, label %.loopexit15, label %373

373:                                              ; preds = %372
  br i1 false, label %346, label %374

374:                                              ; preds = %373
  unreachable

375:                                              ; preds = %351
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %376

376:                                              ; preds = %375
  br label %377

377:                                              ; preds = %376
  br label %378

378:                                              ; preds = %377
  br label %379

379:                                              ; preds = %378
  br label %380

380:                                              ; preds = %379
  br label %381

381:                                              ; preds = %380
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), align 4
  br i1 false, label %.loopexit20, label %387

.loopexit20:                                      ; preds = %443, %439, %435, %431, %424, %420, %416, %412, %381, %390, %394, %398
  %.lcssa17.ph = phi i32 [ 0, %398 ], [ 0, %394 ], [ 0, %390 ], [ 0, %381 ], [ 1, %412 ], [ 1, %416 ], [ 1, %420 ], [ 1, %424 ], [ 2, %431 ], [ 2, %435 ], [ 2, %439 ], [ 2, %443 ]
  %.lcssa16.ph = phi i32 [ 3, %398 ], [ 2, %394 ], [ 1, %390 ], [ 0, %381 ], [ 0, %412 ], [ 1, %416 ], [ 2, %420 ], [ 3, %424 ], [ 0, %431 ], [ 1, %435 ], [ 2, %439 ], [ 3, %443 ]
  br label %382

382:                                              ; preds = %.loopexit20, %402
  %.lcssa17 = phi i32 [ %.lcssa19, %402 ], [ %.lcssa17.ph, %.loopexit20 ]
  %.lcssa16 = phi i32 [ 4, %402 ], [ %.lcssa16.ph, %.loopexit20 ]
  %383 = shl nuw nsw i32 %.lcssa16, 3
  %384 = or disjoint i32 %.lcssa17, %383
  %385 = zext nneg i32 %384 to i64
  %386 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %385
  store i32 1, ptr %386, align 4
  unreachable

387:                                              ; preds = %381
  br label %388

388:                                              ; preds = %387
  br label %389

389:                                              ; preds = %388
  br label %390

390:                                              ; preds = %389
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6176), align 4
  br i1 false, label %.loopexit20, label %391

391:                                              ; preds = %390
  br label %392

392:                                              ; preds = %391
  br label %393

393:                                              ; preds = %392
  br label %394

394:                                              ; preds = %393
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6208), align 4
  br i1 false, label %.loopexit20, label %395

395:                                              ; preds = %394
  br label %396

396:                                              ; preds = %395
  br label %397

397:                                              ; preds = %396
  br label %398

398:                                              ; preds = %397
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6240), align 4
  br i1 false, label %.loopexit20, label %399

399:                                              ; preds = %398
  br i1 false, label %400, label %407

400:                                              ; preds = %444, %425, %399
  %.lcssa19 = phi i32 [ 0, %399 ], [ 1, %425 ], [ 2, %444 ]
  br label %401

401:                                              ; preds = %400
  br label %402

402:                                              ; preds = %401
  %403 = or disjoint i32 %.lcssa19, 32
  %404 = zext nneg i32 %403 to i64
  %405 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %404
  store i32 1, ptr %405, align 4
  br i1 false, label %382, label %406

406:                                              ; preds = %402
  unreachable

407:                                              ; preds = %399
  br label %408

408:                                              ; preds = %407
  br label %409

409:                                              ; preds = %408
  br label %410

410:                                              ; preds = %409
  br label %411

411:                                              ; preds = %410
  br label %412

412:                                              ; preds = %411
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6148), align 4
  br i1 false, label %.loopexit20, label %413

413:                                              ; preds = %412
  br label %414

414:                                              ; preds = %413
  br label %415

415:                                              ; preds = %414
  br label %416

416:                                              ; preds = %415
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6180), align 4
  br i1 false, label %.loopexit20, label %417

417:                                              ; preds = %416
  br label %418

418:                                              ; preds = %417
  br label %419

419:                                              ; preds = %418
  br label %420

420:                                              ; preds = %419
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6212), align 4
  br i1 false, label %.loopexit20, label %421

421:                                              ; preds = %420
  br label %422

422:                                              ; preds = %421
  br label %423

423:                                              ; preds = %422
  br label %424

424:                                              ; preds = %423
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6244), align 4
  br i1 false, label %.loopexit20, label %425

425:                                              ; preds = %424
  br i1 false, label %400, label %426

426:                                              ; preds = %425
  br i1 false, label %427, label %446

427:                                              ; preds = %426
  br label %428

428:                                              ; preds = %427
  br label %429

429:                                              ; preds = %428
  br label %430

430:                                              ; preds = %429
  br label %431

431:                                              ; preds = %430
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6152), align 4
  br i1 false, label %.loopexit20, label %432

432:                                              ; preds = %431
  br label %433

433:                                              ; preds = %432
  br label %434

434:                                              ; preds = %433
  br label %435

435:                                              ; preds = %434
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6184), align 4
  br i1 false, label %.loopexit20, label %436

436:                                              ; preds = %435
  br label %437

437:                                              ; preds = %436
  br label %438

438:                                              ; preds = %437
  br label %439

439:                                              ; preds = %438
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6216), align 4
  br i1 false, label %.loopexit20, label %440

440:                                              ; preds = %439
  br label %441

441:                                              ; preds = %440
  br label %442

442:                                              ; preds = %441
  br label %443

443:                                              ; preds = %442
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6248), align 4
  br i1 false, label %.loopexit20, label %444

444:                                              ; preds = %443
  br i1 false, label %400, label %445

445:                                              ; preds = %444
  unreachable

446:                                              ; preds = %426
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %447

447:                                              ; preds = %446
  br label %448

448:                                              ; preds = %447
  br label %449

449:                                              ; preds = %448
  br label %450

450:                                              ; preds = %449
  br label %451

451:                                              ; preds = %450
  br label %452

452:                                              ; preds = %451
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), align 4
  br label %453

453:                                              ; preds = %452
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8448), align 4
  br i1 false, label %.loopexit24, label %458

.loopexit24:                                      ; preds = %499, %491, %483, %475, %453
  %.lcssa21.ph = phi i32 [ 0, %453 ], [ 1, %475 ], [ 2, %483 ], [ 3, %491 ], [ 4, %499 ]
  br label %454

454:                                              ; preds = %.loopexit24, %464
  %.lcssa21 = phi i32 [ %.lcssa22, %464 ], [ %.lcssa21.ph, %.loopexit24 ]
  %455 = or disjoint i32 %.lcssa21, 128
  %456 = zext nneg i32 %455 to i64
  %457 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %456
  store i32 1, ptr %457, align 4
  unreachable

458:                                              ; preds = %453
  br i1 false, label %459, label %469

459:                                              ; preds = %500, %492, %484, %476, %458
  %.lcssa22 = phi i32 [ 0, %458 ], [ 1, %476 ], [ 2, %484 ], [ 3, %492 ], [ 4, %500 ]
  br label %460

460:                                              ; preds = %459
  br label %461

461:                                              ; preds = %460
  %462 = zext nneg i32 %.lcssa22 to i64
  %463 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %462
  store i32 1, ptr %463, align 4
  br label %464

464:                                              ; preds = %461
  %465 = or disjoint i32 %.lcssa22, 64
  %466 = zext nneg i32 %465 to i64
  %467 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %466
  store i32 1, ptr %467, align 4
  br i1 false, label %454, label %468

468:                                              ; preds = %464
  unreachable

469:                                              ; preds = %458
  br label %470

470:                                              ; preds = %469
  br label %471

471:                                              ; preds = %470
  br label %472

472:                                              ; preds = %471
  br label %473

473:                                              ; preds = %472
  br label %474

474:                                              ; preds = %473
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8196), align 4
  br label %475

475:                                              ; preds = %474
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8452), align 4
  br i1 false, label %.loopexit24, label %476

476:                                              ; preds = %475
  br i1 false, label %459, label %477

477:                                              ; preds = %476
  br label %478

478:                                              ; preds = %477
  br label %479

479:                                              ; preds = %478
  br label %480

480:                                              ; preds = %479
  br label %481

481:                                              ; preds = %480
  br label %482

482:                                              ; preds = %481
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8200), align 4
  br label %483

483:                                              ; preds = %482
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8456), align 4
  br i1 false, label %.loopexit24, label %484

484:                                              ; preds = %483
  br i1 false, label %459, label %485

485:                                              ; preds = %484
  br label %486

486:                                              ; preds = %485
  br label %487

487:                                              ; preds = %486
  br label %488

488:                                              ; preds = %487
  br label %489

489:                                              ; preds = %488
  br label %490

490:                                              ; preds = %489
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8204), align 4
  br label %491

491:                                              ; preds = %490
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8460), align 4
  br i1 false, label %.loopexit24, label %492

492:                                              ; preds = %491
  br i1 false, label %459, label %493

493:                                              ; preds = %492
  br i1 false, label %494, label %502

494:                                              ; preds = %493
  br label %495

495:                                              ; preds = %494
  br label %496

496:                                              ; preds = %495
  br label %497

497:                                              ; preds = %496
  br label %498

498:                                              ; preds = %497
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8208), align 4
  br label %499

499:                                              ; preds = %498
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8464), align 4
  br i1 false, label %.loopexit24, label %500

500:                                              ; preds = %499
  br i1 false, label %459, label %501

501:                                              ; preds = %500
  unreachable

502:                                              ; preds = %493
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %503

503:                                              ; preds = %502
  br label %504

504:                                              ; preds = %503
  br label %505

505:                                              ; preds = %504
  br label %506

506:                                              ; preds = %505
  br label %507

507:                                              ; preds = %506
  br label %508

508:                                              ; preds = %507
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), align 4
  br label %509

509:                                              ; preds = %508
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10496), align 4
  br label %510

510:                                              ; preds = %509
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10752), align 4
  br label %511

511:                                              ; preds = %510
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 11008), align 4
  br i1 false, label %.loopexit26, label %517

.loopexit26:                                      ; preds = %547, %540, %511, %523
  %.lcssa25.ph = phi i32 [ 1, %523 ], [ 0, %511 ], [ 0, %540 ], [ 1, %547 ]
  br label %512

512:                                              ; preds = %.loopexit26, %530
  %.lcssa25 = phi i32 [ 2, %530 ], [ %.lcssa25.ph, %.loopexit26 ]
  %513 = shl nuw nsw i32 %.lcssa25, 3
  %514 = or disjoint i32 256, %513
  %515 = zext nneg i32 %514 to i64
  %516 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %515
  store i32 1, ptr %516, align 4
  unreachable

517:                                              ; preds = %511
  br label %518

518:                                              ; preds = %517
  br label %519

519:                                              ; preds = %518
  br label %520

520:                                              ; preds = %519
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10272), align 4
  br label %521

521:                                              ; preds = %520
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10528), align 4
  br label %522

522:                                              ; preds = %521
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10784), align 4
  br label %523

523:                                              ; preds = %522
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 11040), align 4
  br i1 false, label %.loopexit26, label %524

524:                                              ; preds = %523
  br i1 false, label %525, label %532

525:                                              ; preds = %548, %524
  br label %526

526:                                              ; preds = %525
  br label %527

527:                                              ; preds = %526
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10304), align 4
  br label %528

528:                                              ; preds = %527
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10560), align 4
  br label %529

529:                                              ; preds = %528
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10816), align 4
  br label %530

530:                                              ; preds = %529
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 11072), align 4
  br i1 false, label %512, label %531

531:                                              ; preds = %530
  unreachable

532:                                              ; preds = %524
  br i1 false, label %533, label %550

533:                                              ; preds = %532
  br label %534

534:                                              ; preds = %533
  br label %535

535:                                              ; preds = %534
  br label %536

536:                                              ; preds = %535
  br label %537

537:                                              ; preds = %536
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), align 4
  br label %538

538:                                              ; preds = %537
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10496), align 4
  br label %539

539:                                              ; preds = %538
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10752), align 4
  br label %540

540:                                              ; preds = %539
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 11008), align 4
  br i1 false, label %.loopexit26, label %541

541:                                              ; preds = %540
  br label %542

542:                                              ; preds = %541
  br label %543

543:                                              ; preds = %542
  br label %544

544:                                              ; preds = %543
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10272), align 4
  br label %545

545:                                              ; preds = %544
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10528), align 4
  br label %546

546:                                              ; preds = %545
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10784), align 4
  br label %547

547:                                              ; preds = %546
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 11040), align 4
  br i1 false, label %.loopexit26, label %548

548:                                              ; preds = %547
  br i1 false, label %525, label %549

549:                                              ; preds = %548
  unreachable

550:                                              ; preds = %532
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %551

551:                                              ; preds = %550
  br label %552

552:                                              ; preds = %551
  br label %553

553:                                              ; preds = %552
  br label %554

554:                                              ; preds = %553
  br label %555

555:                                              ; preds = %554
  br label %556

556:                                              ; preds = %555
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), align 4
  br i1 false, label %.loopexit30, label %560

.loopexit30:                                      ; preds = %586, %579, %572, %556
  %.lcssa27.ph = phi i32 [ 0, %556 ], [ 1, %572 ], [ 2, %579 ], [ 3, %586 ]
  br label %557

557:                                              ; preds = %.loopexit30, %563
  %.lcssa27 = phi i32 [ %.lcssa28, %563 ], [ %.lcssa27.ph, %.loopexit30 ]
  %558 = zext nneg i32 %.lcssa27 to i64
  %559 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %558
  store i32 1, ptr %559, align 4
  unreachable

560:                                              ; preds = %556
  br i1 false, label %561, label %567

561:                                              ; preds = %587, %580, %573, %560
  %.lcssa28 = phi i32 [ 0, %560 ], [ 1, %573 ], [ 2, %580 ], [ 3, %587 ]
  br label %562

562:                                              ; preds = %561
  br label %563

563:                                              ; preds = %562
  %564 = zext nneg i32 %.lcssa28 to i64
  %565 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %564
  store i32 1, ptr %565, align 4
  br i1 false, label %557, label %566

566:                                              ; preds = %563
  unreachable

567:                                              ; preds = %560
  br label %568

568:                                              ; preds = %567
  br label %569

569:                                              ; preds = %568
  br label %570

570:                                              ; preds = %569
  br label %571

571:                                              ; preds = %570
  br label %572

572:                                              ; preds = %571
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12292), align 4
  br i1 false, label %.loopexit30, label %573

573:                                              ; preds = %572
  br i1 false, label %561, label %574

574:                                              ; preds = %573
  br label %575

575:                                              ; preds = %574
  br label %576

576:                                              ; preds = %575
  br label %577

577:                                              ; preds = %576
  br label %578

578:                                              ; preds = %577
  br label %579

579:                                              ; preds = %578
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12296), align 4
  br i1 false, label %.loopexit30, label %580

580:                                              ; preds = %579
  br i1 false, label %561, label %581

581:                                              ; preds = %580
  br i1 false, label %582, label %589

582:                                              ; preds = %581
  br label %583

583:                                              ; preds = %582
  br label %584

584:                                              ; preds = %583
  br label %585

585:                                              ; preds = %584
  br label %586

586:                                              ; preds = %585
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12300), align 4
  br i1 false, label %.loopexit30, label %587

587:                                              ; preds = %586
  br i1 false, label %561, label %588

588:                                              ; preds = %587
  unreachable

589:                                              ; preds = %581
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %590

590:                                              ; preds = %589
  br label %591

591:                                              ; preds = %590
  br label %592

592:                                              ; preds = %591
  br label %593

593:                                              ; preds = %592
  br label %594

594:                                              ; preds = %593
  br label %595

595:                                              ; preds = %594
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), align 4
  br i1 false, label %.loopexit32, label %600

.loopexit32:                                      ; preds = %626, %622, %618, %595, %603, %607
  %.lcssa31.ph = phi i32 [ 2, %607 ], [ 1, %603 ], [ 0, %595 ], [ 0, %618 ], [ 1, %622 ], [ 2, %626 ]
  br label %596

596:                                              ; preds = %.loopexit32, %611
  %.lcssa31 = phi i32 [ 3, %611 ], [ %.lcssa31.ph, %.loopexit32 ]
  %597 = shl nuw nsw i32 %.lcssa31, 3
  %598 = zext nneg i32 %597 to i64
  %599 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %598
  store i32 1, ptr %599, align 4
  unreachable

600:                                              ; preds = %595
  br label %601

601:                                              ; preds = %600
  br label %602

602:                                              ; preds = %601
  br label %603

603:                                              ; preds = %602
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14368), align 4
  br i1 false, label %.loopexit32, label %604

604:                                              ; preds = %603
  br label %605

605:                                              ; preds = %604
  br label %606

606:                                              ; preds = %605
  br label %607

607:                                              ; preds = %606
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14400), align 4
  br i1 false, label %.loopexit32, label %608

608:                                              ; preds = %607
  br i1 false, label %609, label %613

609:                                              ; preds = %627, %608
  br label %610

610:                                              ; preds = %609
  br label %611

611:                                              ; preds = %610
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14432), align 4
  br i1 false, label %596, label %612

612:                                              ; preds = %611
  unreachable

613:                                              ; preds = %608
  br i1 false, label %614, label %629

614:                                              ; preds = %613
  br label %615

615:                                              ; preds = %614
  br label %616

616:                                              ; preds = %615
  br label %617

617:                                              ; preds = %616
  br label %618

618:                                              ; preds = %617
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), align 4
  br i1 false, label %.loopexit32, label %619

619:                                              ; preds = %618
  br label %620

620:                                              ; preds = %619
  br label %621

621:                                              ; preds = %620
  br label %622

622:                                              ; preds = %621
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14368), align 4
  br i1 false, label %.loopexit32, label %623

623:                                              ; preds = %622
  br label %624

624:                                              ; preds = %623
  br label %625

625:                                              ; preds = %624
  br label %626

626:                                              ; preds = %625
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14400), align 4
  br i1 false, label %.loopexit32, label %627

627:                                              ; preds = %626
  br i1 false, label %609, label %628

628:                                              ; preds = %627
  unreachable

629:                                              ; preds = %613
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %630

630:                                              ; preds = %629
  br label %631

631:                                              ; preds = %630
  br label %632

632:                                              ; preds = %631
  br label %633

633:                                              ; preds = %632
  br label %634

634:                                              ; preds = %633
  br label %635

635:                                              ; preds = %634
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), align 4
  br label %636

636:                                              ; preds = %635
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16640), align 4
  br label %637

637:                                              ; preds = %636
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16896), align 4
  br i1 false, label %.loopexit33, label %639

.loopexit33:                                      ; preds = %653, %637
  br label %638

638:                                              ; preds = %.loopexit33, %644
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 17152), align 4
  unreachable

639:                                              ; preds = %637
  br i1 false, label %640, label %646

640:                                              ; preds = %654, %639
  br label %641

641:                                              ; preds = %640
  br label %642

642:                                              ; preds = %641
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), align 4
  br label %643

643:                                              ; preds = %642
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16640), align 4
  br label %644

644:                                              ; preds = %643
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16896), align 4
  br i1 false, label %638, label %645

645:                                              ; preds = %644
  unreachable

646:                                              ; preds = %639
  br i1 false, label %647, label %656

647:                                              ; preds = %646
  br label %648

648:                                              ; preds = %647
  br label %649

649:                                              ; preds = %648
  br label %650

650:                                              ; preds = %649
  br label %651

651:                                              ; preds = %650
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), align 4
  br label %652

652:                                              ; preds = %651
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16640), align 4
  br label %653

653:                                              ; preds = %652
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16896), align 4
  br i1 false, label %.loopexit33, label %654

654:                                              ; preds = %653
  br i1 false, label %640, label %655

655:                                              ; preds = %654
  unreachable

656:                                              ; preds = %646
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %657

657:                                              ; preds = %656
  br label %658

658:                                              ; preds = %657
  br label %659

659:                                              ; preds = %658
  br label %660

660:                                              ; preds = %659
  br label %661

661:                                              ; preds = %660
  br label %662

662:                                              ; preds = %661
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), align 4
  br i1 false, label %.loopexit38, label %668

.loopexit38:                                      ; preds = %700, %696, %689, %685, %662, %671
  %.lcssa35.ph = phi i32 [ 0, %671 ], [ 0, %662 ], [ 1, %685 ], [ 1, %689 ], [ 2, %696 ], [ 2, %700 ]
  %.lcssa34.ph = phi i32 [ 1, %671 ], [ 0, %662 ], [ 0, %685 ], [ 1, %689 ], [ 0, %696 ], [ 1, %700 ]
  br label %663

663:                                              ; preds = %.loopexit38, %675
  %.lcssa35 = phi i32 [ %.lcssa37, %675 ], [ %.lcssa35.ph, %.loopexit38 ]
  %.lcssa34 = phi i32 [ 2, %675 ], [ %.lcssa34.ph, %.loopexit38 ]
  %664 = shl nuw nsw i32 %.lcssa34, 3
  %665 = or disjoint i32 %.lcssa35, %664
  %666 = zext nneg i32 %665 to i64
  %667 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %666
  store i32 1, ptr %667, align 4
  unreachable

668:                                              ; preds = %662
  br label %669

669:                                              ; preds = %668
  br label %670

670:                                              ; preds = %669
  br label %671

671:                                              ; preds = %670
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18464), align 4
  br i1 false, label %.loopexit38, label %672

672:                                              ; preds = %671
  br i1 false, label %673, label %680

673:                                              ; preds = %701, %690, %672
  %.lcssa37 = phi i32 [ 0, %672 ], [ 1, %690 ], [ 2, %701 ]
  br label %674

674:                                              ; preds = %673
  br label %675

675:                                              ; preds = %674
  %676 = or disjoint i32 %.lcssa37, 16
  %677 = zext nneg i32 %676 to i64
  %678 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %677
  store i32 1, ptr %678, align 4
  br i1 false, label %663, label %679

679:                                              ; preds = %675
  unreachable

680:                                              ; preds = %672
  br label %681

681:                                              ; preds = %680
  br label %682

682:                                              ; preds = %681
  br label %683

683:                                              ; preds = %682
  br label %684

684:                                              ; preds = %683
  br label %685

685:                                              ; preds = %684
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18436), align 4
  br i1 false, label %.loopexit38, label %686

686:                                              ; preds = %685
  br label %687

687:                                              ; preds = %686
  br label %688

688:                                              ; preds = %687
  br label %689

689:                                              ; preds = %688
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18468), align 4
  br i1 false, label %.loopexit38, label %690

690:                                              ; preds = %689
  br i1 false, label %673, label %691

691:                                              ; preds = %690
  br i1 false, label %692, label %703

692:                                              ; preds = %691
  br label %693

693:                                              ; preds = %692
  br label %694

694:                                              ; preds = %693
  br label %695

695:                                              ; preds = %694
  br label %696

696:                                              ; preds = %695
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18440), align 4
  br i1 false, label %.loopexit38, label %697

697:                                              ; preds = %696
  br label %698

698:                                              ; preds = %697
  br label %699

699:                                              ; preds = %698
  br label %700

700:                                              ; preds = %699
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18472), align 4
  br i1 false, label %.loopexit38, label %701

701:                                              ; preds = %700
  br i1 false, label %673, label %702

702:                                              ; preds = %701
  unreachable

703:                                              ; preds = %691
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %704

704:                                              ; preds = %703
  br label %705

705:                                              ; preds = %704
  br label %706

706:                                              ; preds = %705
  br label %707

707:                                              ; preds = %706
  br label %708

708:                                              ; preds = %707
  br label %709

709:                                              ; preds = %708
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), align 4
  br label %710

710:                                              ; preds = %709
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20736), align 4
  br i1 false, label %.loopexit42, label %715

.loopexit42:                                      ; preds = %740, %732, %710
  %.lcssa39.ph = phi i32 [ 0, %710 ], [ 1, %732 ], [ 2, %740 ]
  br label %711

711:                                              ; preds = %.loopexit42, %721
  %.lcssa39 = phi i32 [ %.lcssa40, %721 ], [ %.lcssa39.ph, %.loopexit42 ]
  %712 = or disjoint i32 %.lcssa39, 128
  %713 = zext nneg i32 %712 to i64
  %714 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %713
  store i32 1, ptr %714, align 4
  unreachable

715:                                              ; preds = %710
  br i1 false, label %716, label %726

716:                                              ; preds = %741, %733, %715
  %.lcssa40 = phi i32 [ 0, %715 ], [ 1, %733 ], [ 2, %741 ]
  br label %717

717:                                              ; preds = %716
  br label %718

718:                                              ; preds = %717
  %719 = zext nneg i32 %.lcssa40 to i64
  %720 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %719
  store i32 1, ptr %720, align 4
  br label %721

721:                                              ; preds = %718
  %722 = or disjoint i32 %.lcssa40, 64
  %723 = zext nneg i32 %722 to i64
  %724 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %723
  store i32 1, ptr %724, align 4
  br i1 false, label %711, label %725

725:                                              ; preds = %721
  unreachable

726:                                              ; preds = %715
  br label %727

727:                                              ; preds = %726
  br label %728

728:                                              ; preds = %727
  br label %729

729:                                              ; preds = %728
  br label %730

730:                                              ; preds = %729
  br label %731

731:                                              ; preds = %730
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20484), align 4
  br label %732

732:                                              ; preds = %731
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20740), align 4
  br i1 false, label %.loopexit42, label %733

733:                                              ; preds = %732
  br i1 false, label %716, label %734

734:                                              ; preds = %733
  br i1 false, label %735, label %743

735:                                              ; preds = %734
  br label %736

736:                                              ; preds = %735
  br label %737

737:                                              ; preds = %736
  br label %738

738:                                              ; preds = %737
  br label %739

739:                                              ; preds = %738
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20488), align 4
  br label %740

740:                                              ; preds = %739
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20744), align 4
  br i1 false, label %.loopexit42, label %741

741:                                              ; preds = %740
  br i1 false, label %716, label %742

742:                                              ; preds = %741
  unreachable

743:                                              ; preds = %734
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %744

744:                                              ; preds = %743
  br label %745

745:                                              ; preds = %744
  br label %746

746:                                              ; preds = %745
  br label %747

747:                                              ; preds = %746
  br label %748

748:                                              ; preds = %747
  br label %749

749:                                              ; preds = %748
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), align 4
  br label %750

750:                                              ; preds = %749
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22784), align 4
  br i1 false, label %.loopexit44, label %756

.loopexit44:                                      ; preds = %778, %773, %750, %760
  %.lcssa43.ph = phi i32 [ 1, %760 ], [ 0, %750 ], [ 0, %773 ], [ 1, %778 ]
  br label %751

751:                                              ; preds = %.loopexit44, %765
  %.lcssa43 = phi i32 [ 2, %765 ], [ %.lcssa43.ph, %.loopexit44 ]
  %752 = shl nuw nsw i32 %.lcssa43, 3
  %753 = or disjoint i32 128, %752
  %754 = zext nneg i32 %753 to i64
  %755 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %754
  store i32 1, ptr %755, align 4
  unreachable

756:                                              ; preds = %750
  br label %757

757:                                              ; preds = %756
  br label %758

758:                                              ; preds = %757
  br label %759

759:                                              ; preds = %758
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22560), align 4
  br label %760

760:                                              ; preds = %759
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22816), align 4
  br i1 false, label %.loopexit44, label %761

761:                                              ; preds = %760
  br i1 false, label %762, label %767

762:                                              ; preds = %779, %761
  br label %763

763:                                              ; preds = %762
  br label %764

764:                                              ; preds = %763
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22592), align 4
  br label %765

765:                                              ; preds = %764
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22848), align 4
  br i1 false, label %751, label %766

766:                                              ; preds = %765
  unreachable

767:                                              ; preds = %761
  br i1 false, label %768, label %781

768:                                              ; preds = %767
  br label %769

769:                                              ; preds = %768
  br label %770

770:                                              ; preds = %769
  br label %771

771:                                              ; preds = %770
  br label %772

772:                                              ; preds = %771
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), align 4
  br label %773

773:                                              ; preds = %772
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22784), align 4
  br i1 false, label %.loopexit44, label %774

774:                                              ; preds = %773
  br label %775

775:                                              ; preds = %774
  br label %776

776:                                              ; preds = %775
  br label %777

777:                                              ; preds = %776
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22560), align 4
  br label %778

778:                                              ; preds = %777
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22816), align 4
  br i1 false, label %.loopexit44, label %779

779:                                              ; preds = %778
  br i1 false, label %762, label %780

780:                                              ; preds = %779
  unreachable

781:                                              ; preds = %767
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %782

782:                                              ; preds = %781
  br label %783

783:                                              ; preds = %782
  br label %784

784:                                              ; preds = %783
  br label %785

785:                                              ; preds = %784
  br label %786

786:                                              ; preds = %785
  br label %787

787:                                              ; preds = %786
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), align 4
  br label %788

788:                                              ; preds = %787
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24832), align 4
  br i1 false, label %.loopexit49, label %795

.loopexit49:                                      ; preds = %836, %831, %823, %818, %788, %799
  %.lcssa46.ph = phi i32 [ 0, %799 ], [ 0, %788 ], [ 1, %818 ], [ 1, %823 ], [ 2, %831 ], [ 2, %836 ]
  %.lcssa45.ph = phi i32 [ 1, %799 ], [ 0, %788 ], [ 0, %818 ], [ 1, %823 ], [ 0, %831 ], [ 1, %836 ]
  br label %789

789:                                              ; preds = %.loopexit49, %807
  %.lcssa46 = phi i32 [ %.lcssa48, %807 ], [ %.lcssa46.ph, %.loopexit49 ]
  %.lcssa45 = phi i32 [ 2, %807 ], [ %.lcssa45.ph, %.loopexit49 ]
  %790 = shl nuw nsw i32 %.lcssa45, 3
  %791 = or disjoint i32 128, %790
  %792 = or disjoint i32 %.lcssa46, %791
  %793 = zext nneg i32 %792 to i64
  %794 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %793
  store i32 1, ptr %794, align 4
  unreachable

795:                                              ; preds = %788
  br label %796

796:                                              ; preds = %795
  br label %797

797:                                              ; preds = %796
  br label %798

798:                                              ; preds = %797
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24608), align 4
  br label %799

799:                                              ; preds = %798
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24864), align 4
  br i1 false, label %.loopexit49, label %800

800:                                              ; preds = %799
  br i1 false, label %801, label %812

801:                                              ; preds = %837, %824, %800
  %.lcssa48 = phi i32 [ 0, %800 ], [ 1, %824 ], [ 2, %837 ]
  br label %802

802:                                              ; preds = %801
  br label %803

803:                                              ; preds = %802
  %804 = or disjoint i32 %.lcssa48, 16
  %805 = zext nneg i32 %804 to i64
  %806 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %805
  store i32 1, ptr %806, align 4
  br label %807

807:                                              ; preds = %803
  %808 = or disjoint i32 %.lcssa48, 80
  %809 = zext nneg i32 %808 to i64
  %810 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %809
  store i32 1, ptr %810, align 4
  br i1 false, label %789, label %811

811:                                              ; preds = %807
  unreachable

812:                                              ; preds = %800
  br label %813

813:                                              ; preds = %812
  br label %814

814:                                              ; preds = %813
  br label %815

815:                                              ; preds = %814
  br label %816

816:                                              ; preds = %815
  br label %817

817:                                              ; preds = %816
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24580), align 4
  br label %818

818:                                              ; preds = %817
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24836), align 4
  br i1 false, label %.loopexit49, label %819

819:                                              ; preds = %818
  br label %820

820:                                              ; preds = %819
  br label %821

821:                                              ; preds = %820
  br label %822

822:                                              ; preds = %821
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24612), align 4
  br label %823

823:                                              ; preds = %822
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24868), align 4
  br i1 false, label %.loopexit49, label %824

824:                                              ; preds = %823
  br i1 false, label %801, label %825

825:                                              ; preds = %824
  br i1 false, label %826, label %839

826:                                              ; preds = %825
  br label %827

827:                                              ; preds = %826
  br label %828

828:                                              ; preds = %827
  br label %829

829:                                              ; preds = %828
  br label %830

830:                                              ; preds = %829
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24584), align 4
  br label %831

831:                                              ; preds = %830
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24840), align 4
  br i1 false, label %.loopexit49, label %832

832:                                              ; preds = %831
  br label %833

833:                                              ; preds = %832
  br label %834

834:                                              ; preds = %833
  br label %835

835:                                              ; preds = %834
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24616), align 4
  br label %836

836:                                              ; preds = %835
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24872), align 4
  br i1 false, label %.loopexit49, label %837

837:                                              ; preds = %836
  br i1 false, label %801, label %838

838:                                              ; preds = %837
  unreachable

839:                                              ; preds = %825
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 0, ptr @kount, align 4
  %840 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %840, 0
  br i1 %.not, label %843, label %841

841:                                              ; preds = %839
  %842 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %842, ptr @n, align 4
  br label %844

843:                                              ; preds = %839
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %.pre = load i32, ptr @n, align 4
  br label %844

844:                                              ; preds = %843, %841
  %845 = phi i32 [ %.pre, %843 ], [ %842, %841 ]
  %846 = call i32 @Trial(i32 noundef %845)
  %.not1 = icmp eq i32 %846, 0
  br i1 %.not1, label %847, label %848

847:                                              ; preds = %844
  %puts2 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %852

848:                                              ; preds = %844
  %849 = load i32, ptr @kount, align 4
  %.not3 = icmp eq i32 %849, 2005
  br i1 %.not3, label %851, label %850

850:                                              ; preds = %848
  %puts4 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %851

851:                                              ; preds = %850, %848
  br label %852

852:                                              ; preds = %851, %847
  %853 = load i32, ptr @n, align 4
  %854 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %853) #3
  %855 = load i32, ptr @kount, align 4
  %856 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %855) #3
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %0, %1
  %2 = phi i32 [ 0, %0 ], [ %3, %1 ]
  call void @Puzzle()
  %3 = add nuw nsw i32 %2, 1
  %4 = icmp samesign ult i32 %3, 100
  br i1 %4, label %1, label %5, !llvm.loop !17

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
