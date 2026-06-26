; ModuleID = 'results\paper_round2\Stanford_Puzzle\round_000\output.ll'
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
  %3 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  br label %4

4:                                                ; preds = %17, %2
  %5 = phi i32 [ %18, %17 ], [ 0, %2 ]
  %.not = icmp sgt i32 %5, %.pre
  br i1 %.not, label %19, label %6

6:                                                ; preds = %4
  %7 = zext nneg i32 %5 to i64
  %8 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %7
  %9 = load i32, ptr %8, align 4
  %.not2 = icmp eq i32 %9, 0
  br i1 %.not2, label %17, label %10

10:                                               ; preds = %6
  %11 = add nsw i32 %1, %5
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %12
  %14 = load i32, ptr %13, align 4
  %.not3 = icmp eq i32 %14, 0
  br i1 %.not3, label %16, label %15

15:                                               ; preds = %10
  br label %20

16:                                               ; preds = %10
  br label %17

17:                                               ; preds = %16, %6
  %18 = add nuw nsw i32 %5, 1
  br label %4, !llvm.loop !7

19:                                               ; preds = %4
  br label %20

20:                                               ; preds = %19, %15
  %21 = phi i32 [ 1, %19 ], [ 0, %15 ]
  ret i32 %21
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Place(i32 noundef %0, i32 noundef %1) #0 {
  %.phi.trans.insert = sext i32 %0 to i64
  %.phi.trans.insert1 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert1, align 4
  %3 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  br label %4

4:                                                ; preds = %14, %2
  %5 = phi i32 [ %15, %14 ], [ 0, %2 ]
  %.not = icmp sgt i32 %5, %.pre
  br i1 %.not, label %16, label %6

6:                                                ; preds = %4
  %7 = zext nneg i32 %5 to i64
  %8 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %7
  %9 = load i32, ptr %8, align 4
  %.not3 = icmp eq i32 %9, 0
  br i1 %.not3, label %14, label %10

10:                                               ; preds = %6
  %11 = add nsw i32 %1, %5
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %12
  store i32 1, ptr %13, align 4
  br label %14

14:                                               ; preds = %10, %6
  %15 = add nuw nsw i32 %5, 1
  br label %4, !llvm.loop !9

16:                                               ; preds = %4
  %17 = getelementptr inbounds [4 x i8], ptr @class, i64 %.phi.trans.insert
  %18 = load i32, ptr %17, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %19
  %21 = load i32, ptr %20, align 4
  %22 = add nsw i32 %21, -1
  store i32 %22, ptr %20, align 4
  br label %23

23:                                               ; preds = %31, %16
  %24 = phi i32 [ %32, %31 ], [ %1, %16 ]
  %25 = icmp slt i32 %24, 512
  br i1 %25, label %26, label %33

26:                                               ; preds = %23
  %27 = sext i32 %24 to i64
  %28 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %27
  %29 = load i32, ptr %28, align 4
  %.not2 = icmp eq i32 %29, 0
  br i1 %.not2, label %30, label %31

30:                                               ; preds = %26
  %.lcssa1 = phi i32 [ %24, %26 ]
  br label %34

31:                                               ; preds = %26
  %32 = add nsw i32 %24, 1
  br label %23, !llvm.loop !10

33:                                               ; preds = %23
  br label %34

34:                                               ; preds = %33, %30
  %35 = phi i32 [ 0, %33 ], [ %.lcssa1, %30 ]
  ret i32 %35
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Remove(i32 noundef %0, i32 noundef %1) #0 {
  %.phi.trans.insert = sext i32 %0 to i64
  %.phi.trans.insert1 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert1, align 4
  %3 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  br label %4

4:                                                ; preds = %14, %2
  %5 = phi i32 [ %15, %14 ], [ 0, %2 ]
  %.not = icmp sgt i32 %5, %.pre
  br i1 %.not, label %16, label %6

6:                                                ; preds = %4
  %7 = zext nneg i32 %5 to i64
  %8 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %7
  %9 = load i32, ptr %8, align 4
  %.not2 = icmp eq i32 %9, 0
  br i1 %.not2, label %14, label %10

10:                                               ; preds = %6
  %11 = add nsw i32 %1, %5
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %12
  store i32 0, ptr %13, align 4
  br label %14

14:                                               ; preds = %10, %6
  %15 = add nuw nsw i32 %5, 1
  br label %4, !llvm.loop !11

16:                                               ; preds = %4
  %17 = getelementptr inbounds [4 x i8], ptr @class, i64 %.phi.trans.insert
  %18 = load i32, ptr %17, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %19
  %21 = load i32, ptr %20, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, ptr %20, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Trial(i32 noundef %0) #0 {
  %2 = load i32, ptr @kount, align 4
  %3 = add nsw i32 %2, 1
  store i32 %3, ptr @kount, align 4
  br label %4

4:                                                ; preds = %24, %1
  %5 = phi i32 [ %25, %24 ], [ 0, %1 ]
  %6 = icmp samesign ult i32 %5, 13
  br i1 %6, label %7, label %26

7:                                                ; preds = %4
  %8 = zext nneg i32 %5 to i64
  %9 = getelementptr inbounds nuw [4 x i8], ptr @class, i64 %8
  %10 = load i32, ptr %9, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %11
  %13 = load i32, ptr %12, align 4
  %.not = icmp eq i32 %13, 0
  br i1 %.not, label %24, label %14

14:                                               ; preds = %7
  %15 = call i32 @Fit(i32 noundef %5, i32 noundef %0)
  %.not1 = icmp eq i32 %15, 0
  br i1 %.not1, label %23, label %16

16:                                               ; preds = %14
  %17 = call i32 @Place(i32 noundef %5, i32 noundef %0)
  %18 = call i32 @Trial(i32 noundef %17)
  %.not2 = icmp eq i32 %18, 0
  br i1 %.not2, label %19, label %21

19:                                               ; preds = %16
  %20 = icmp eq i32 %17, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %19, %16
  br label %27

22:                                               ; preds = %19
  call void @Remove(i32 noundef %5, i32 noundef %0)
  br label %23

23:                                               ; preds = %22, %14
  br label %24

24:                                               ; preds = %23, %7
  %25 = add nuw nsw i32 %5, 1
  br label %4, !llvm.loop !12

26:                                               ; preds = %4
  br label %27

27:                                               ; preds = %26, %21
  %28 = phi i32 [ 0, %26 ], [ 1, %21 ]
  ret i32 %28
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

17:                                               ; preds = %166, %16
  %18 = phi i32 [ %167, %166 ], [ 1, %16 ]
  %19 = icmp samesign ult i32 %18, 6
  br i1 %19, label %20, label %168

20:                                               ; preds = %17
  br label %21

21:                                               ; preds = %20
  br label %22

22:                                               ; preds = %21
  br label %23

23:                                               ; preds = %22
  br label %24

24:                                               ; preds = %23
  %25 = or disjoint i32 %18, 72
  %26 = zext nneg i32 %25 to i64
  %27 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %26
  store i32 0, ptr %27, align 4
  br label %28

28:                                               ; preds = %24
  %29 = or disjoint i32 %18, 136
  %30 = zext nneg i32 %29 to i64
  %31 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %30
  store i32 0, ptr %31, align 4
  br label %32

32:                                               ; preds = %28
  %33 = or disjoint i32 %18, 200
  %34 = zext nneg i32 %33 to i64
  %35 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %34
  store i32 0, ptr %35, align 4
  br label %36

36:                                               ; preds = %32
  %37 = or disjoint i32 %18, 264
  %38 = zext nneg i32 %37 to i64
  %39 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %38
  store i32 0, ptr %39, align 4
  br label %40

40:                                               ; preds = %36
  %41 = or disjoint i32 %18, 328
  %42 = zext nneg i32 %41 to i64
  %43 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %42
  store i32 0, ptr %43, align 4
  br i1 false, label %.loopexit, label %50

.loopexit:                                        ; preds = %40, %69, %92, %115, %138
  %.lcssa2.ph = phi i32 [ %18, %138 ], [ %18, %115 ], [ %18, %92 ], [ %18, %69 ], [ %18, %40 ]
  %.lcssa1.ph = phi i32 [ 5, %138 ], [ 4, %115 ], [ 3, %92 ], [ 2, %69 ], [ 1, %40 ]
  br label %44

44:                                               ; preds = %.loopexit, %161
  %.lcssa2 = phi i32 [ %.lcssa4, %161 ], [ %.lcssa2.ph, %.loopexit ]
  %.lcssa1 = phi i32 [ 6, %161 ], [ %.lcssa1.ph, %.loopexit ]
  %45 = shl nuw nsw i32 %.lcssa1, 3
  %46 = or disjoint i32 384, %45
  %47 = or disjoint i32 %.lcssa2, %46
  %48 = zext nneg i32 %47 to i64
  %49 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %48
  store i32 0, ptr %49, align 4
  unreachable

50:                                               ; preds = %40
  br label %51

51:                                               ; preds = %50
  br label %52

52:                                               ; preds = %51
  br label %53

53:                                               ; preds = %52
  %54 = or disjoint i32 %18, 80
  %55 = zext nneg i32 %54 to i64
  %56 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %55
  store i32 0, ptr %56, align 4
  br label %57

57:                                               ; preds = %53
  %58 = or disjoint i32 %18, 144
  %59 = zext nneg i32 %58 to i64
  %60 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %59
  store i32 0, ptr %60, align 4
  br label %61

61:                                               ; preds = %57
  %62 = or disjoint i32 %18, 208
  %63 = zext nneg i32 %62 to i64
  %64 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %63
  store i32 0, ptr %64, align 4
  br label %65

65:                                               ; preds = %61
  %66 = or disjoint i32 %18, 272
  %67 = zext nneg i32 %66 to i64
  %68 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %67
  store i32 0, ptr %68, align 4
  br label %69

69:                                               ; preds = %65
  %70 = or disjoint i32 %18, 336
  %71 = zext nneg i32 %70 to i64
  %72 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %71
  store i32 0, ptr %72, align 4
  br i1 false, label %.loopexit, label %73

73:                                               ; preds = %69
  br label %74

74:                                               ; preds = %73
  br label %75

75:                                               ; preds = %74
  br label %76

76:                                               ; preds = %75
  %77 = or disjoint i32 %18, 88
  %78 = zext nneg i32 %77 to i64
  %79 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %78
  store i32 0, ptr %79, align 4
  br label %80

80:                                               ; preds = %76
  %81 = or disjoint i32 %18, 152
  %82 = zext nneg i32 %81 to i64
  %83 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %82
  store i32 0, ptr %83, align 4
  br label %84

84:                                               ; preds = %80
  %85 = or disjoint i32 %18, 216
  %86 = zext nneg i32 %85 to i64
  %87 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %86
  store i32 0, ptr %87, align 4
  br label %88

88:                                               ; preds = %84
  %89 = or disjoint i32 %18, 280
  %90 = zext nneg i32 %89 to i64
  %91 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %90
  store i32 0, ptr %91, align 4
  br label %92

92:                                               ; preds = %88
  %93 = or disjoint i32 %18, 344
  %94 = zext nneg i32 %93 to i64
  %95 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %94
  store i32 0, ptr %95, align 4
  br i1 false, label %.loopexit, label %96

96:                                               ; preds = %92
  br label %97

97:                                               ; preds = %96
  br label %98

98:                                               ; preds = %97
  br label %99

99:                                               ; preds = %98
  %100 = or disjoint i32 %18, 96
  %101 = zext nneg i32 %100 to i64
  %102 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %101
  store i32 0, ptr %102, align 4
  br label %103

103:                                              ; preds = %99
  %104 = or disjoint i32 %18, 160
  %105 = zext nneg i32 %104 to i64
  %106 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %105
  store i32 0, ptr %106, align 4
  br label %107

107:                                              ; preds = %103
  %108 = or disjoint i32 %18, 224
  %109 = zext nneg i32 %108 to i64
  %110 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %109
  store i32 0, ptr %110, align 4
  br label %111

111:                                              ; preds = %107
  %112 = or disjoint i32 %18, 288
  %113 = zext nneg i32 %112 to i64
  %114 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %113
  store i32 0, ptr %114, align 4
  br label %115

115:                                              ; preds = %111
  %116 = or disjoint i32 %18, 352
  %117 = zext nneg i32 %116 to i64
  %118 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %117
  store i32 0, ptr %118, align 4
  br i1 false, label %.loopexit, label %119

119:                                              ; preds = %115
  br label %120

120:                                              ; preds = %119
  br label %121

121:                                              ; preds = %120
  br label %122

122:                                              ; preds = %121
  %123 = or disjoint i32 %18, 104
  %124 = zext nneg i32 %123 to i64
  %125 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %124
  store i32 0, ptr %125, align 4
  br label %126

126:                                              ; preds = %122
  %127 = or disjoint i32 %18, 168
  %128 = zext nneg i32 %127 to i64
  %129 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %128
  store i32 0, ptr %129, align 4
  br label %130

130:                                              ; preds = %126
  %131 = or disjoint i32 %18, 232
  %132 = zext nneg i32 %131 to i64
  %133 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %132
  store i32 0, ptr %133, align 4
  br label %134

134:                                              ; preds = %130
  %135 = or disjoint i32 %18, 296
  %136 = zext nneg i32 %135 to i64
  %137 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %136
  store i32 0, ptr %137, align 4
  br label %138

138:                                              ; preds = %134
  %139 = or disjoint i32 %18, 360
  %140 = zext nneg i32 %139 to i64
  %141 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %140
  store i32 0, ptr %141, align 4
  br i1 false, label %.loopexit, label %142

142:                                              ; preds = %138
  br i1 false, label %143, label %166

143:                                              ; preds = %142
  %.lcssa4 = phi i32 [ %18, %142 ]
  br label %144

144:                                              ; preds = %143
  br label %145

145:                                              ; preds = %144
  %146 = or disjoint i32 %.lcssa4, 112
  %147 = zext nneg i32 %146 to i64
  %148 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %147
  store i32 0, ptr %148, align 4
  br label %149

149:                                              ; preds = %145
  %150 = or disjoint i32 %.lcssa4, 176
  %151 = zext nneg i32 %150 to i64
  %152 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %151
  store i32 0, ptr %152, align 4
  br label %153

153:                                              ; preds = %149
  %154 = or disjoint i32 %.lcssa4, 240
  %155 = zext nneg i32 %154 to i64
  %156 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %155
  store i32 0, ptr %156, align 4
  br label %157

157:                                              ; preds = %153
  %158 = or disjoint i32 %.lcssa4, 304
  %159 = zext nneg i32 %158 to i64
  %160 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %159
  store i32 0, ptr %160, align 4
  br label %161

161:                                              ; preds = %157
  %162 = or disjoint i32 %.lcssa4, 368
  %163 = zext nneg i32 %162 to i64
  %164 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %163
  store i32 0, ptr %164, align 4
  br i1 false, label %44, label %165

165:                                              ; preds = %161
  unreachable

166:                                              ; preds = %142
  %167 = add nuw nsw i32 %18, 1
  br label %17, !llvm.loop !14

168:                                              ; preds = %17
  br label %169

169:                                              ; preds = %194, %168
  %170 = phi i32 [ %195, %194 ], [ 0, %168 ]
  %171 = icmp samesign ult i32 %170, 13
  br i1 %171, label %172, label %196

172:                                              ; preds = %169
  %173 = zext nneg i32 %170 to i64
  %174 = getelementptr inbounds nuw [2048 x i8], ptr @p, i64 %173
  %175 = zext nneg i32 %170 to i64
  %176 = getelementptr inbounds nuw [2048 x i8], ptr @p, i64 %175
  %177 = zext nneg i32 %170 to i64
  %178 = getelementptr inbounds nuw [2048 x i8], ptr @p, i64 %177
  br label %179

179:                                              ; preds = %190, %172
  %180 = phi i32 [ 0, %172 ], [ %193, %190 ]
  br label %181

181:                                              ; preds = %179
  %182 = zext nneg i32 %180 to i64
  %183 = getelementptr inbounds nuw [4 x i8], ptr %176, i64 %182
  store i32 0, ptr %183, align 4
  %184 = add nuw nsw i32 %180, 1
  br label %185

185:                                              ; preds = %181
  %186 = zext nneg i32 %184 to i64
  %187 = getelementptr inbounds nuw [4 x i8], ptr %174, i64 %186
  store i32 0, ptr %187, align 4
  %188 = add nuw nsw i32 %180, 2
  %189 = icmp samesign ult i32 %188, 512
  br i1 %189, label %190, label %194

190:                                              ; preds = %185
  %191 = zext nneg i32 %188 to i64
  %192 = getelementptr inbounds nuw [4 x i8], ptr %178, i64 %191
  store i32 0, ptr %192, align 4
  %193 = add nuw nsw i32 %180, 3
  br label %179, !llvm.loop !15

194:                                              ; preds = %185
  %195 = add nuw nsw i32 %170, 1
  br label %169, !llvm.loop !16

196:                                              ; preds = %169
  br label %197

197:                                              ; preds = %196
  br label %198

198:                                              ; preds = %197
  br label %199

199:                                              ; preds = %198
  br label %200

200:                                              ; preds = %199
  br label %201

201:                                              ; preds = %200
  br label %202

202:                                              ; preds = %201
  store i32 1, ptr @p, align 4
  br i1 false, label %.loopexit9, label %208

.loopexit9:                                       ; preds = %262, %258, %251, %247, %240, %236, %229, %225, %202, %211
  %.lcssa6.ph = phi i32 [ 0, %211 ], [ 0, %202 ], [ 1, %225 ], [ 1, %229 ], [ 2, %236 ], [ 2, %240 ], [ 3, %247 ], [ 3, %251 ], [ 4, %258 ], [ 4, %262 ]
  %.lcssa5.ph = phi i32 [ 1, %211 ], [ 0, %202 ], [ 0, %225 ], [ 1, %229 ], [ 0, %236 ], [ 1, %240 ], [ 0, %247 ], [ 1, %251 ], [ 0, %258 ], [ 1, %262 ]
  br label %203

203:                                              ; preds = %.loopexit9, %215
  %.lcssa6 = phi i32 [ %.lcssa8, %215 ], [ %.lcssa6.ph, %.loopexit9 ]
  %.lcssa5 = phi i32 [ 2, %215 ], [ %.lcssa5.ph, %.loopexit9 ]
  %204 = shl nuw nsw i32 %.lcssa5, 3
  %205 = or disjoint i32 %.lcssa6, %204
  %206 = zext nneg i32 %205 to i64
  %207 = getelementptr inbounds nuw [4 x i8], ptr @p, i64 %206
  store i32 1, ptr %207, align 4
  unreachable

208:                                              ; preds = %202
  br label %209

209:                                              ; preds = %208
  br label %210

210:                                              ; preds = %209
  br label %211

211:                                              ; preds = %210
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 32), align 4
  br i1 false, label %.loopexit9, label %212

212:                                              ; preds = %211
  br i1 false, label %213, label %220

213:                                              ; preds = %263, %252, %241, %230, %212
  %.lcssa8 = phi i32 [ 0, %212 ], [ 1, %230 ], [ 2, %241 ], [ 3, %252 ], [ 4, %263 ]
  br label %214

214:                                              ; preds = %213
  br label %215

215:                                              ; preds = %214
  %216 = or disjoint i32 %.lcssa8, 16
  %217 = zext nneg i32 %216 to i64
  %218 = getelementptr inbounds nuw [4 x i8], ptr @p, i64 %217
  store i32 1, ptr %218, align 4
  br i1 false, label %203, label %219

219:                                              ; preds = %215
  unreachable

220:                                              ; preds = %212
  br label %221

221:                                              ; preds = %220
  br label %222

222:                                              ; preds = %221
  br label %223

223:                                              ; preds = %222
  br label %224

224:                                              ; preds = %223
  br label %225

225:                                              ; preds = %224
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4), align 4
  br i1 false, label %.loopexit9, label %226

226:                                              ; preds = %225
  br label %227

227:                                              ; preds = %226
  br label %228

228:                                              ; preds = %227
  br label %229

229:                                              ; preds = %228
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 36), align 4
  br i1 false, label %.loopexit9, label %230

230:                                              ; preds = %229
  br i1 false, label %213, label %231

231:                                              ; preds = %230
  br label %232

232:                                              ; preds = %231
  br label %233

233:                                              ; preds = %232
  br label %234

234:                                              ; preds = %233
  br label %235

235:                                              ; preds = %234
  br label %236

236:                                              ; preds = %235
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8), align 4
  br i1 false, label %.loopexit9, label %237

237:                                              ; preds = %236
  br label %238

238:                                              ; preds = %237
  br label %239

239:                                              ; preds = %238
  br label %240

240:                                              ; preds = %239
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 40), align 4
  br i1 false, label %.loopexit9, label %241

241:                                              ; preds = %240
  br i1 false, label %213, label %242

242:                                              ; preds = %241
  br label %243

243:                                              ; preds = %242
  br label %244

244:                                              ; preds = %243
  br label %245

245:                                              ; preds = %244
  br label %246

246:                                              ; preds = %245
  br label %247

247:                                              ; preds = %246
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12), align 4
  br i1 false, label %.loopexit9, label %248

248:                                              ; preds = %247
  br label %249

249:                                              ; preds = %248
  br label %250

250:                                              ; preds = %249
  br label %251

251:                                              ; preds = %250
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 44), align 4
  br i1 false, label %.loopexit9, label %252

252:                                              ; preds = %251
  br i1 false, label %213, label %253

253:                                              ; preds = %252
  br i1 false, label %254, label %265

254:                                              ; preds = %253
  br label %255

255:                                              ; preds = %254
  br label %256

256:                                              ; preds = %255
  br label %257

257:                                              ; preds = %256
  br label %258

258:                                              ; preds = %257
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16), align 4
  br i1 false, label %.loopexit9, label %259

259:                                              ; preds = %258
  br label %260

260:                                              ; preds = %259
  br label %261

261:                                              ; preds = %260
  br label %262

262:                                              ; preds = %261
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 48), align 4
  br i1 false, label %.loopexit9, label %263

263:                                              ; preds = %262
  br i1 false, label %213, label %264

264:                                              ; preds = %263
  unreachable

265:                                              ; preds = %253
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %266

266:                                              ; preds = %265
  br label %267

267:                                              ; preds = %266
  br label %268

268:                                              ; preds = %267
  br label %269

269:                                              ; preds = %268
  br label %270

270:                                              ; preds = %269
  br label %271

271:                                              ; preds = %270
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), align 4
  br label %272

272:                                              ; preds = %271
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2304), align 4
  br label %273

273:                                              ; preds = %272
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2560), align 4
  br label %274

274:                                              ; preds = %273
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2816), align 4
  br i1 false, label %.loopexit13, label %279

.loopexit13:                                      ; preds = %316, %306, %274
  %.lcssa10.ph = phi i32 [ 0, %274 ], [ 1, %306 ], [ 2, %316 ]
  br label %275

275:                                              ; preds = %.loopexit13, %293
  %.lcssa10 = phi i32 [ %.lcssa11, %293 ], [ %.lcssa10.ph, %.loopexit13 ]
  %276 = or disjoint i32 %.lcssa10, 256
  %277 = zext nneg i32 %276 to i64
  %278 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %277
  store i32 1, ptr %278, align 4
  unreachable

279:                                              ; preds = %274
  br i1 false, label %280, label %298

280:                                              ; preds = %317, %307, %279
  %.lcssa11 = phi i32 [ 0, %279 ], [ 1, %307 ], [ 2, %317 ]
  br label %281

281:                                              ; preds = %280
  br label %282

282:                                              ; preds = %281
  %283 = zext nneg i32 %.lcssa11 to i64
  %284 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %283
  store i32 1, ptr %284, align 4
  br label %285

285:                                              ; preds = %282
  %286 = or disjoint i32 %.lcssa11, 64
  %287 = zext nneg i32 %286 to i64
  %288 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %287
  store i32 1, ptr %288, align 4
  br label %289

289:                                              ; preds = %285
  %290 = or disjoint i32 %.lcssa11, 128
  %291 = zext nneg i32 %290 to i64
  %292 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %291
  store i32 1, ptr %292, align 4
  br label %293

293:                                              ; preds = %289
  %294 = or disjoint i32 %.lcssa11, 192
  %295 = zext nneg i32 %294 to i64
  %296 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %295
  store i32 1, ptr %296, align 4
  br i1 false, label %275, label %297

297:                                              ; preds = %293
  unreachable

298:                                              ; preds = %279
  br label %299

299:                                              ; preds = %298
  br label %300

300:                                              ; preds = %299
  br label %301

301:                                              ; preds = %300
  br label %302

302:                                              ; preds = %301
  br label %303

303:                                              ; preds = %302
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2052), align 4
  br label %304

304:                                              ; preds = %303
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2308), align 4
  br label %305

305:                                              ; preds = %304
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2564), align 4
  br label %306

306:                                              ; preds = %305
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2820), align 4
  br i1 false, label %.loopexit13, label %307

307:                                              ; preds = %306
  br i1 false, label %280, label %308

308:                                              ; preds = %307
  br i1 false, label %309, label %319

309:                                              ; preds = %308
  br label %310

310:                                              ; preds = %309
  br label %311

311:                                              ; preds = %310
  br label %312

312:                                              ; preds = %311
  br label %313

313:                                              ; preds = %312
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2056), align 4
  br label %314

314:                                              ; preds = %313
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2312), align 4
  br label %315

315:                                              ; preds = %314
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2568), align 4
  br label %316

316:                                              ; preds = %315
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2824), align 4
  br i1 false, label %.loopexit13, label %317

317:                                              ; preds = %316
  br i1 false, label %280, label %318

318:                                              ; preds = %317
  unreachable

319:                                              ; preds = %308
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %320

320:                                              ; preds = %319
  br label %321

321:                                              ; preds = %320
  br label %322

322:                                              ; preds = %321
  br label %323

323:                                              ; preds = %322
  br label %324

324:                                              ; preds = %323
  br label %325

325:                                              ; preds = %324
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), align 4
  br label %326

326:                                              ; preds = %325
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4352), align 4
  br i1 false, label %.loopexit15, label %332

.loopexit15:                                      ; preds = %374, %369, %364, %359, %326, %336, %341, %346
  %.lcssa14.ph = phi i32 [ 3, %346 ], [ 2, %341 ], [ 1, %336 ], [ 0, %326 ], [ 0, %359 ], [ 1, %364 ], [ 2, %369 ], [ 3, %374 ]
  br label %327

327:                                              ; preds = %.loopexit15, %351
  %.lcssa14 = phi i32 [ 4, %351 ], [ %.lcssa14.ph, %.loopexit15 ]
  %328 = shl nuw nsw i32 %.lcssa14, 3
  %329 = or disjoint i32 128, %328
  %330 = zext nneg i32 %329 to i64
  %331 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %330
  store i32 1, ptr %331, align 4
  unreachable

332:                                              ; preds = %326
  br label %333

333:                                              ; preds = %332
  br label %334

334:                                              ; preds = %333
  br label %335

335:                                              ; preds = %334
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4128), align 4
  br label %336

336:                                              ; preds = %335
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4384), align 4
  br i1 false, label %.loopexit15, label %337

337:                                              ; preds = %336
  br label %338

338:                                              ; preds = %337
  br label %339

339:                                              ; preds = %338
  br label %340

340:                                              ; preds = %339
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4160), align 4
  br label %341

341:                                              ; preds = %340
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4416), align 4
  br i1 false, label %.loopexit15, label %342

342:                                              ; preds = %341
  br label %343

343:                                              ; preds = %342
  br label %344

344:                                              ; preds = %343
  br label %345

345:                                              ; preds = %344
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4192), align 4
  br label %346

346:                                              ; preds = %345
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4448), align 4
  br i1 false, label %.loopexit15, label %347

347:                                              ; preds = %346
  br i1 false, label %348, label %353

348:                                              ; preds = %375, %347
  br label %349

349:                                              ; preds = %348
  br label %350

350:                                              ; preds = %349
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4224), align 4
  br label %351

351:                                              ; preds = %350
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4480), align 4
  br i1 false, label %327, label %352

352:                                              ; preds = %351
  unreachable

353:                                              ; preds = %347
  br i1 false, label %354, label %377

354:                                              ; preds = %353
  br label %355

355:                                              ; preds = %354
  br label %356

356:                                              ; preds = %355
  br label %357

357:                                              ; preds = %356
  br label %358

358:                                              ; preds = %357
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), align 4
  br label %359

359:                                              ; preds = %358
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4352), align 4
  br i1 false, label %.loopexit15, label %360

360:                                              ; preds = %359
  br label %361

361:                                              ; preds = %360
  br label %362

362:                                              ; preds = %361
  br label %363

363:                                              ; preds = %362
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4128), align 4
  br label %364

364:                                              ; preds = %363
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4384), align 4
  br i1 false, label %.loopexit15, label %365

365:                                              ; preds = %364
  br label %366

366:                                              ; preds = %365
  br label %367

367:                                              ; preds = %366
  br label %368

368:                                              ; preds = %367
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4160), align 4
  br label %369

369:                                              ; preds = %368
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4416), align 4
  br i1 false, label %.loopexit15, label %370

370:                                              ; preds = %369
  br label %371

371:                                              ; preds = %370
  br label %372

372:                                              ; preds = %371
  br label %373

373:                                              ; preds = %372
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4192), align 4
  br label %374

374:                                              ; preds = %373
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4448), align 4
  br i1 false, label %.loopexit15, label %375

375:                                              ; preds = %374
  br i1 false, label %348, label %376

376:                                              ; preds = %375
  unreachable

377:                                              ; preds = %353
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %378

378:                                              ; preds = %377
  br label %379

379:                                              ; preds = %378
  br label %380

380:                                              ; preds = %379
  br label %381

381:                                              ; preds = %380
  br label %382

382:                                              ; preds = %381
  br label %383

383:                                              ; preds = %382
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), align 4
  br i1 false, label %.loopexit20, label %389

.loopexit20:                                      ; preds = %445, %441, %437, %433, %426, %422, %418, %414, %383, %392, %396, %400
  %.lcssa17.ph = phi i32 [ 0, %400 ], [ 0, %396 ], [ 0, %392 ], [ 0, %383 ], [ 1, %414 ], [ 1, %418 ], [ 1, %422 ], [ 1, %426 ], [ 2, %433 ], [ 2, %437 ], [ 2, %441 ], [ 2, %445 ]
  %.lcssa16.ph = phi i32 [ 3, %400 ], [ 2, %396 ], [ 1, %392 ], [ 0, %383 ], [ 0, %414 ], [ 1, %418 ], [ 2, %422 ], [ 3, %426 ], [ 0, %433 ], [ 1, %437 ], [ 2, %441 ], [ 3, %445 ]
  br label %384

384:                                              ; preds = %.loopexit20, %404
  %.lcssa17 = phi i32 [ %.lcssa19, %404 ], [ %.lcssa17.ph, %.loopexit20 ]
  %.lcssa16 = phi i32 [ 4, %404 ], [ %.lcssa16.ph, %.loopexit20 ]
  %385 = shl nuw nsw i32 %.lcssa16, 3
  %386 = or disjoint i32 %.lcssa17, %385
  %387 = zext nneg i32 %386 to i64
  %388 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %387
  store i32 1, ptr %388, align 4
  unreachable

389:                                              ; preds = %383
  br label %390

390:                                              ; preds = %389
  br label %391

391:                                              ; preds = %390
  br label %392

392:                                              ; preds = %391
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6176), align 4
  br i1 false, label %.loopexit20, label %393

393:                                              ; preds = %392
  br label %394

394:                                              ; preds = %393
  br label %395

395:                                              ; preds = %394
  br label %396

396:                                              ; preds = %395
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6208), align 4
  br i1 false, label %.loopexit20, label %397

397:                                              ; preds = %396
  br label %398

398:                                              ; preds = %397
  br label %399

399:                                              ; preds = %398
  br label %400

400:                                              ; preds = %399
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6240), align 4
  br i1 false, label %.loopexit20, label %401

401:                                              ; preds = %400
  br i1 false, label %402, label %409

402:                                              ; preds = %446, %427, %401
  %.lcssa19 = phi i32 [ 0, %401 ], [ 1, %427 ], [ 2, %446 ]
  br label %403

403:                                              ; preds = %402
  br label %404

404:                                              ; preds = %403
  %405 = or disjoint i32 %.lcssa19, 32
  %406 = zext nneg i32 %405 to i64
  %407 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %406
  store i32 1, ptr %407, align 4
  br i1 false, label %384, label %408

408:                                              ; preds = %404
  unreachable

409:                                              ; preds = %401
  br label %410

410:                                              ; preds = %409
  br label %411

411:                                              ; preds = %410
  br label %412

412:                                              ; preds = %411
  br label %413

413:                                              ; preds = %412
  br label %414

414:                                              ; preds = %413
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6148), align 4
  br i1 false, label %.loopexit20, label %415

415:                                              ; preds = %414
  br label %416

416:                                              ; preds = %415
  br label %417

417:                                              ; preds = %416
  br label %418

418:                                              ; preds = %417
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6180), align 4
  br i1 false, label %.loopexit20, label %419

419:                                              ; preds = %418
  br label %420

420:                                              ; preds = %419
  br label %421

421:                                              ; preds = %420
  br label %422

422:                                              ; preds = %421
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6212), align 4
  br i1 false, label %.loopexit20, label %423

423:                                              ; preds = %422
  br label %424

424:                                              ; preds = %423
  br label %425

425:                                              ; preds = %424
  br label %426

426:                                              ; preds = %425
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6244), align 4
  br i1 false, label %.loopexit20, label %427

427:                                              ; preds = %426
  br i1 false, label %402, label %428

428:                                              ; preds = %427
  br i1 false, label %429, label %448

429:                                              ; preds = %428
  br label %430

430:                                              ; preds = %429
  br label %431

431:                                              ; preds = %430
  br label %432

432:                                              ; preds = %431
  br label %433

433:                                              ; preds = %432
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6152), align 4
  br i1 false, label %.loopexit20, label %434

434:                                              ; preds = %433
  br label %435

435:                                              ; preds = %434
  br label %436

436:                                              ; preds = %435
  br label %437

437:                                              ; preds = %436
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6184), align 4
  br i1 false, label %.loopexit20, label %438

438:                                              ; preds = %437
  br label %439

439:                                              ; preds = %438
  br label %440

440:                                              ; preds = %439
  br label %441

441:                                              ; preds = %440
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6216), align 4
  br i1 false, label %.loopexit20, label %442

442:                                              ; preds = %441
  br label %443

443:                                              ; preds = %442
  br label %444

444:                                              ; preds = %443
  br label %445

445:                                              ; preds = %444
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6248), align 4
  br i1 false, label %.loopexit20, label %446

446:                                              ; preds = %445
  br i1 false, label %402, label %447

447:                                              ; preds = %446
  unreachable

448:                                              ; preds = %428
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %449

449:                                              ; preds = %448
  br label %450

450:                                              ; preds = %449
  br label %451

451:                                              ; preds = %450
  br label %452

452:                                              ; preds = %451
  br label %453

453:                                              ; preds = %452
  br label %454

454:                                              ; preds = %453
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), align 4
  br label %455

455:                                              ; preds = %454
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8448), align 4
  br i1 false, label %.loopexit24, label %460

.loopexit24:                                      ; preds = %501, %493, %485, %477, %455
  %.lcssa21.ph = phi i32 [ 0, %455 ], [ 1, %477 ], [ 2, %485 ], [ 3, %493 ], [ 4, %501 ]
  br label %456

456:                                              ; preds = %.loopexit24, %466
  %.lcssa21 = phi i32 [ %.lcssa22, %466 ], [ %.lcssa21.ph, %.loopexit24 ]
  %457 = or disjoint i32 %.lcssa21, 128
  %458 = zext nneg i32 %457 to i64
  %459 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %458
  store i32 1, ptr %459, align 4
  unreachable

460:                                              ; preds = %455
  br i1 false, label %461, label %471

461:                                              ; preds = %502, %494, %486, %478, %460
  %.lcssa22 = phi i32 [ 0, %460 ], [ 1, %478 ], [ 2, %486 ], [ 3, %494 ], [ 4, %502 ]
  br label %462

462:                                              ; preds = %461
  br label %463

463:                                              ; preds = %462
  %464 = zext nneg i32 %.lcssa22 to i64
  %465 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %464
  store i32 1, ptr %465, align 4
  br label %466

466:                                              ; preds = %463
  %467 = or disjoint i32 %.lcssa22, 64
  %468 = zext nneg i32 %467 to i64
  %469 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %468
  store i32 1, ptr %469, align 4
  br i1 false, label %456, label %470

470:                                              ; preds = %466
  unreachable

471:                                              ; preds = %460
  br label %472

472:                                              ; preds = %471
  br label %473

473:                                              ; preds = %472
  br label %474

474:                                              ; preds = %473
  br label %475

475:                                              ; preds = %474
  br label %476

476:                                              ; preds = %475
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8196), align 4
  br label %477

477:                                              ; preds = %476
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8452), align 4
  br i1 false, label %.loopexit24, label %478

478:                                              ; preds = %477
  br i1 false, label %461, label %479

479:                                              ; preds = %478
  br label %480

480:                                              ; preds = %479
  br label %481

481:                                              ; preds = %480
  br label %482

482:                                              ; preds = %481
  br label %483

483:                                              ; preds = %482
  br label %484

484:                                              ; preds = %483
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8200), align 4
  br label %485

485:                                              ; preds = %484
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8456), align 4
  br i1 false, label %.loopexit24, label %486

486:                                              ; preds = %485
  br i1 false, label %461, label %487

487:                                              ; preds = %486
  br label %488

488:                                              ; preds = %487
  br label %489

489:                                              ; preds = %488
  br label %490

490:                                              ; preds = %489
  br label %491

491:                                              ; preds = %490
  br label %492

492:                                              ; preds = %491
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8204), align 4
  br label %493

493:                                              ; preds = %492
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8460), align 4
  br i1 false, label %.loopexit24, label %494

494:                                              ; preds = %493
  br i1 false, label %461, label %495

495:                                              ; preds = %494
  br i1 false, label %496, label %504

496:                                              ; preds = %495
  br label %497

497:                                              ; preds = %496
  br label %498

498:                                              ; preds = %497
  br label %499

499:                                              ; preds = %498
  br label %500

500:                                              ; preds = %499
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8208), align 4
  br label %501

501:                                              ; preds = %500
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8464), align 4
  br i1 false, label %.loopexit24, label %502

502:                                              ; preds = %501
  br i1 false, label %461, label %503

503:                                              ; preds = %502
  unreachable

504:                                              ; preds = %495
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %505

505:                                              ; preds = %504
  br label %506

506:                                              ; preds = %505
  br label %507

507:                                              ; preds = %506
  br label %508

508:                                              ; preds = %507
  br label %509

509:                                              ; preds = %508
  br label %510

510:                                              ; preds = %509
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), align 4
  br label %511

511:                                              ; preds = %510
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10496), align 4
  br label %512

512:                                              ; preds = %511
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10752), align 4
  br label %513

513:                                              ; preds = %512
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 11008), align 4
  br i1 false, label %.loopexit26, label %519

.loopexit26:                                      ; preds = %549, %542, %513, %525
  %.lcssa25.ph = phi i32 [ 1, %525 ], [ 0, %513 ], [ 0, %542 ], [ 1, %549 ]
  br label %514

514:                                              ; preds = %.loopexit26, %532
  %.lcssa25 = phi i32 [ 2, %532 ], [ %.lcssa25.ph, %.loopexit26 ]
  %515 = shl nuw nsw i32 %.lcssa25, 3
  %516 = or disjoint i32 256, %515
  %517 = zext nneg i32 %516 to i64
  %518 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %517
  store i32 1, ptr %518, align 4
  unreachable

519:                                              ; preds = %513
  br label %520

520:                                              ; preds = %519
  br label %521

521:                                              ; preds = %520
  br label %522

522:                                              ; preds = %521
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10272), align 4
  br label %523

523:                                              ; preds = %522
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10528), align 4
  br label %524

524:                                              ; preds = %523
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10784), align 4
  br label %525

525:                                              ; preds = %524
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 11040), align 4
  br i1 false, label %.loopexit26, label %526

526:                                              ; preds = %525
  br i1 false, label %527, label %534

527:                                              ; preds = %550, %526
  br label %528

528:                                              ; preds = %527
  br label %529

529:                                              ; preds = %528
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10304), align 4
  br label %530

530:                                              ; preds = %529
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10560), align 4
  br label %531

531:                                              ; preds = %530
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10816), align 4
  br label %532

532:                                              ; preds = %531
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 11072), align 4
  br i1 false, label %514, label %533

533:                                              ; preds = %532
  unreachable

534:                                              ; preds = %526
  br i1 false, label %535, label %552

535:                                              ; preds = %534
  br label %536

536:                                              ; preds = %535
  br label %537

537:                                              ; preds = %536
  br label %538

538:                                              ; preds = %537
  br label %539

539:                                              ; preds = %538
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), align 4
  br label %540

540:                                              ; preds = %539
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10496), align 4
  br label %541

541:                                              ; preds = %540
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10752), align 4
  br label %542

542:                                              ; preds = %541
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 11008), align 4
  br i1 false, label %.loopexit26, label %543

543:                                              ; preds = %542
  br label %544

544:                                              ; preds = %543
  br label %545

545:                                              ; preds = %544
  br label %546

546:                                              ; preds = %545
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10272), align 4
  br label %547

547:                                              ; preds = %546
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10528), align 4
  br label %548

548:                                              ; preds = %547
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10784), align 4
  br label %549

549:                                              ; preds = %548
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 11040), align 4
  br i1 false, label %.loopexit26, label %550

550:                                              ; preds = %549
  br i1 false, label %527, label %551

551:                                              ; preds = %550
  unreachable

552:                                              ; preds = %534
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %553

553:                                              ; preds = %552
  br label %554

554:                                              ; preds = %553
  br label %555

555:                                              ; preds = %554
  br label %556

556:                                              ; preds = %555
  br label %557

557:                                              ; preds = %556
  br label %558

558:                                              ; preds = %557
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), align 4
  br i1 false, label %.loopexit30, label %562

.loopexit30:                                      ; preds = %588, %581, %574, %558
  %.lcssa27.ph = phi i32 [ 0, %558 ], [ 1, %574 ], [ 2, %581 ], [ 3, %588 ]
  br label %559

559:                                              ; preds = %.loopexit30, %565
  %.lcssa27 = phi i32 [ %.lcssa28, %565 ], [ %.lcssa27.ph, %.loopexit30 ]
  %560 = zext nneg i32 %.lcssa27 to i64
  %561 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %560
  store i32 1, ptr %561, align 4
  unreachable

562:                                              ; preds = %558
  br i1 false, label %563, label %569

563:                                              ; preds = %589, %582, %575, %562
  %.lcssa28 = phi i32 [ 0, %562 ], [ 1, %575 ], [ 2, %582 ], [ 3, %589 ]
  br label %564

564:                                              ; preds = %563
  br label %565

565:                                              ; preds = %564
  %566 = zext nneg i32 %.lcssa28 to i64
  %567 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %566
  store i32 1, ptr %567, align 4
  br i1 false, label %559, label %568

568:                                              ; preds = %565
  unreachable

569:                                              ; preds = %562
  br label %570

570:                                              ; preds = %569
  br label %571

571:                                              ; preds = %570
  br label %572

572:                                              ; preds = %571
  br label %573

573:                                              ; preds = %572
  br label %574

574:                                              ; preds = %573
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12292), align 4
  br i1 false, label %.loopexit30, label %575

575:                                              ; preds = %574
  br i1 false, label %563, label %576

576:                                              ; preds = %575
  br label %577

577:                                              ; preds = %576
  br label %578

578:                                              ; preds = %577
  br label %579

579:                                              ; preds = %578
  br label %580

580:                                              ; preds = %579
  br label %581

581:                                              ; preds = %580
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12296), align 4
  br i1 false, label %.loopexit30, label %582

582:                                              ; preds = %581
  br i1 false, label %563, label %583

583:                                              ; preds = %582
  br i1 false, label %584, label %591

584:                                              ; preds = %583
  br label %585

585:                                              ; preds = %584
  br label %586

586:                                              ; preds = %585
  br label %587

587:                                              ; preds = %586
  br label %588

588:                                              ; preds = %587
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12300), align 4
  br i1 false, label %.loopexit30, label %589

589:                                              ; preds = %588
  br i1 false, label %563, label %590

590:                                              ; preds = %589
  unreachable

591:                                              ; preds = %583
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %592

592:                                              ; preds = %591
  br label %593

593:                                              ; preds = %592
  br label %594

594:                                              ; preds = %593
  br label %595

595:                                              ; preds = %594
  br label %596

596:                                              ; preds = %595
  br label %597

597:                                              ; preds = %596
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), align 4
  br i1 false, label %.loopexit32, label %602

.loopexit32:                                      ; preds = %628, %624, %620, %597, %605, %609
  %.lcssa31.ph = phi i32 [ 2, %609 ], [ 1, %605 ], [ 0, %597 ], [ 0, %620 ], [ 1, %624 ], [ 2, %628 ]
  br label %598

598:                                              ; preds = %.loopexit32, %613
  %.lcssa31 = phi i32 [ 3, %613 ], [ %.lcssa31.ph, %.loopexit32 ]
  %599 = shl nuw nsw i32 %.lcssa31, 3
  %600 = zext nneg i32 %599 to i64
  %601 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %600
  store i32 1, ptr %601, align 4
  unreachable

602:                                              ; preds = %597
  br label %603

603:                                              ; preds = %602
  br label %604

604:                                              ; preds = %603
  br label %605

605:                                              ; preds = %604
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14368), align 4
  br i1 false, label %.loopexit32, label %606

606:                                              ; preds = %605
  br label %607

607:                                              ; preds = %606
  br label %608

608:                                              ; preds = %607
  br label %609

609:                                              ; preds = %608
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14400), align 4
  br i1 false, label %.loopexit32, label %610

610:                                              ; preds = %609
  br i1 false, label %611, label %615

611:                                              ; preds = %629, %610
  br label %612

612:                                              ; preds = %611
  br label %613

613:                                              ; preds = %612
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14432), align 4
  br i1 false, label %598, label %614

614:                                              ; preds = %613
  unreachable

615:                                              ; preds = %610
  br i1 false, label %616, label %631

616:                                              ; preds = %615
  br label %617

617:                                              ; preds = %616
  br label %618

618:                                              ; preds = %617
  br label %619

619:                                              ; preds = %618
  br label %620

620:                                              ; preds = %619
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), align 4
  br i1 false, label %.loopexit32, label %621

621:                                              ; preds = %620
  br label %622

622:                                              ; preds = %621
  br label %623

623:                                              ; preds = %622
  br label %624

624:                                              ; preds = %623
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14368), align 4
  br i1 false, label %.loopexit32, label %625

625:                                              ; preds = %624
  br label %626

626:                                              ; preds = %625
  br label %627

627:                                              ; preds = %626
  br label %628

628:                                              ; preds = %627
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14400), align 4
  br i1 false, label %.loopexit32, label %629

629:                                              ; preds = %628
  br i1 false, label %611, label %630

630:                                              ; preds = %629
  unreachable

631:                                              ; preds = %615
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %632

632:                                              ; preds = %631
  br label %633

633:                                              ; preds = %632
  br label %634

634:                                              ; preds = %633
  br label %635

635:                                              ; preds = %634
  br label %636

636:                                              ; preds = %635
  br label %637

637:                                              ; preds = %636
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), align 4
  br label %638

638:                                              ; preds = %637
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16640), align 4
  br label %639

639:                                              ; preds = %638
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16896), align 4
  br i1 false, label %.loopexit33, label %641

.loopexit33:                                      ; preds = %655, %639
  br label %640

640:                                              ; preds = %.loopexit33, %646
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 17152), align 4
  unreachable

641:                                              ; preds = %639
  br i1 false, label %642, label %648

642:                                              ; preds = %656, %641
  br label %643

643:                                              ; preds = %642
  br label %644

644:                                              ; preds = %643
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), align 4
  br label %645

645:                                              ; preds = %644
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16640), align 4
  br label %646

646:                                              ; preds = %645
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16896), align 4
  br i1 false, label %640, label %647

647:                                              ; preds = %646
  unreachable

648:                                              ; preds = %641
  br i1 false, label %649, label %658

649:                                              ; preds = %648
  br label %650

650:                                              ; preds = %649
  br label %651

651:                                              ; preds = %650
  br label %652

652:                                              ; preds = %651
  br label %653

653:                                              ; preds = %652
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), align 4
  br label %654

654:                                              ; preds = %653
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16640), align 4
  br label %655

655:                                              ; preds = %654
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16896), align 4
  br i1 false, label %.loopexit33, label %656

656:                                              ; preds = %655
  br i1 false, label %642, label %657

657:                                              ; preds = %656
  unreachable

658:                                              ; preds = %648
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %659

659:                                              ; preds = %658
  br label %660

660:                                              ; preds = %659
  br label %661

661:                                              ; preds = %660
  br label %662

662:                                              ; preds = %661
  br label %663

663:                                              ; preds = %662
  br label %664

664:                                              ; preds = %663
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), align 4
  br i1 false, label %.loopexit38, label %670

.loopexit38:                                      ; preds = %702, %698, %691, %687, %664, %673
  %.lcssa35.ph = phi i32 [ 0, %673 ], [ 0, %664 ], [ 1, %687 ], [ 1, %691 ], [ 2, %698 ], [ 2, %702 ]
  %.lcssa34.ph = phi i32 [ 1, %673 ], [ 0, %664 ], [ 0, %687 ], [ 1, %691 ], [ 0, %698 ], [ 1, %702 ]
  br label %665

665:                                              ; preds = %.loopexit38, %677
  %.lcssa35 = phi i32 [ %.lcssa37, %677 ], [ %.lcssa35.ph, %.loopexit38 ]
  %.lcssa34 = phi i32 [ 2, %677 ], [ %.lcssa34.ph, %.loopexit38 ]
  %666 = shl nuw nsw i32 %.lcssa34, 3
  %667 = or disjoint i32 %.lcssa35, %666
  %668 = zext nneg i32 %667 to i64
  %669 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %668
  store i32 1, ptr %669, align 4
  unreachable

670:                                              ; preds = %664
  br label %671

671:                                              ; preds = %670
  br label %672

672:                                              ; preds = %671
  br label %673

673:                                              ; preds = %672
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18464), align 4
  br i1 false, label %.loopexit38, label %674

674:                                              ; preds = %673
  br i1 false, label %675, label %682

675:                                              ; preds = %703, %692, %674
  %.lcssa37 = phi i32 [ 0, %674 ], [ 1, %692 ], [ 2, %703 ]
  br label %676

676:                                              ; preds = %675
  br label %677

677:                                              ; preds = %676
  %678 = or disjoint i32 %.lcssa37, 16
  %679 = zext nneg i32 %678 to i64
  %680 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %679
  store i32 1, ptr %680, align 4
  br i1 false, label %665, label %681

681:                                              ; preds = %677
  unreachable

682:                                              ; preds = %674
  br label %683

683:                                              ; preds = %682
  br label %684

684:                                              ; preds = %683
  br label %685

685:                                              ; preds = %684
  br label %686

686:                                              ; preds = %685
  br label %687

687:                                              ; preds = %686
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18436), align 4
  br i1 false, label %.loopexit38, label %688

688:                                              ; preds = %687
  br label %689

689:                                              ; preds = %688
  br label %690

690:                                              ; preds = %689
  br label %691

691:                                              ; preds = %690
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18468), align 4
  br i1 false, label %.loopexit38, label %692

692:                                              ; preds = %691
  br i1 false, label %675, label %693

693:                                              ; preds = %692
  br i1 false, label %694, label %705

694:                                              ; preds = %693
  br label %695

695:                                              ; preds = %694
  br label %696

696:                                              ; preds = %695
  br label %697

697:                                              ; preds = %696
  br label %698

698:                                              ; preds = %697
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18440), align 4
  br i1 false, label %.loopexit38, label %699

699:                                              ; preds = %698
  br label %700

700:                                              ; preds = %699
  br label %701

701:                                              ; preds = %700
  br label %702

702:                                              ; preds = %701
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18472), align 4
  br i1 false, label %.loopexit38, label %703

703:                                              ; preds = %702
  br i1 false, label %675, label %704

704:                                              ; preds = %703
  unreachable

705:                                              ; preds = %693
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %706

706:                                              ; preds = %705
  br label %707

707:                                              ; preds = %706
  br label %708

708:                                              ; preds = %707
  br label %709

709:                                              ; preds = %708
  br label %710

710:                                              ; preds = %709
  br label %711

711:                                              ; preds = %710
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), align 4
  br label %712

712:                                              ; preds = %711
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20736), align 4
  br i1 false, label %.loopexit42, label %717

.loopexit42:                                      ; preds = %742, %734, %712
  %.lcssa39.ph = phi i32 [ 0, %712 ], [ 1, %734 ], [ 2, %742 ]
  br label %713

713:                                              ; preds = %.loopexit42, %723
  %.lcssa39 = phi i32 [ %.lcssa40, %723 ], [ %.lcssa39.ph, %.loopexit42 ]
  %714 = or disjoint i32 %.lcssa39, 128
  %715 = zext nneg i32 %714 to i64
  %716 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %715
  store i32 1, ptr %716, align 4
  unreachable

717:                                              ; preds = %712
  br i1 false, label %718, label %728

718:                                              ; preds = %743, %735, %717
  %.lcssa40 = phi i32 [ 0, %717 ], [ 1, %735 ], [ 2, %743 ]
  br label %719

719:                                              ; preds = %718
  br label %720

720:                                              ; preds = %719
  %721 = zext nneg i32 %.lcssa40 to i64
  %722 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %721
  store i32 1, ptr %722, align 4
  br label %723

723:                                              ; preds = %720
  %724 = or disjoint i32 %.lcssa40, 64
  %725 = zext nneg i32 %724 to i64
  %726 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %725
  store i32 1, ptr %726, align 4
  br i1 false, label %713, label %727

727:                                              ; preds = %723
  unreachable

728:                                              ; preds = %717
  br label %729

729:                                              ; preds = %728
  br label %730

730:                                              ; preds = %729
  br label %731

731:                                              ; preds = %730
  br label %732

732:                                              ; preds = %731
  br label %733

733:                                              ; preds = %732
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20484), align 4
  br label %734

734:                                              ; preds = %733
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20740), align 4
  br i1 false, label %.loopexit42, label %735

735:                                              ; preds = %734
  br i1 false, label %718, label %736

736:                                              ; preds = %735
  br i1 false, label %737, label %745

737:                                              ; preds = %736
  br label %738

738:                                              ; preds = %737
  br label %739

739:                                              ; preds = %738
  br label %740

740:                                              ; preds = %739
  br label %741

741:                                              ; preds = %740
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20488), align 4
  br label %742

742:                                              ; preds = %741
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20744), align 4
  br i1 false, label %.loopexit42, label %743

743:                                              ; preds = %742
  br i1 false, label %718, label %744

744:                                              ; preds = %743
  unreachable

745:                                              ; preds = %736
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %746

746:                                              ; preds = %745
  br label %747

747:                                              ; preds = %746
  br label %748

748:                                              ; preds = %747
  br label %749

749:                                              ; preds = %748
  br label %750

750:                                              ; preds = %749
  br label %751

751:                                              ; preds = %750
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), align 4
  br label %752

752:                                              ; preds = %751
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22784), align 4
  br i1 false, label %.loopexit44, label %758

.loopexit44:                                      ; preds = %780, %775, %752, %762
  %.lcssa43.ph = phi i32 [ 1, %762 ], [ 0, %752 ], [ 0, %775 ], [ 1, %780 ]
  br label %753

753:                                              ; preds = %.loopexit44, %767
  %.lcssa43 = phi i32 [ 2, %767 ], [ %.lcssa43.ph, %.loopexit44 ]
  %754 = shl nuw nsw i32 %.lcssa43, 3
  %755 = or disjoint i32 128, %754
  %756 = zext nneg i32 %755 to i64
  %757 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %756
  store i32 1, ptr %757, align 4
  unreachable

758:                                              ; preds = %752
  br label %759

759:                                              ; preds = %758
  br label %760

760:                                              ; preds = %759
  br label %761

761:                                              ; preds = %760
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22560), align 4
  br label %762

762:                                              ; preds = %761
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22816), align 4
  br i1 false, label %.loopexit44, label %763

763:                                              ; preds = %762
  br i1 false, label %764, label %769

764:                                              ; preds = %781, %763
  br label %765

765:                                              ; preds = %764
  br label %766

766:                                              ; preds = %765
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22592), align 4
  br label %767

767:                                              ; preds = %766
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22848), align 4
  br i1 false, label %753, label %768

768:                                              ; preds = %767
  unreachable

769:                                              ; preds = %763
  br i1 false, label %770, label %783

770:                                              ; preds = %769
  br label %771

771:                                              ; preds = %770
  br label %772

772:                                              ; preds = %771
  br label %773

773:                                              ; preds = %772
  br label %774

774:                                              ; preds = %773
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), align 4
  br label %775

775:                                              ; preds = %774
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22784), align 4
  br i1 false, label %.loopexit44, label %776

776:                                              ; preds = %775
  br label %777

777:                                              ; preds = %776
  br label %778

778:                                              ; preds = %777
  br label %779

779:                                              ; preds = %778
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22560), align 4
  br label %780

780:                                              ; preds = %779
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22816), align 4
  br i1 false, label %.loopexit44, label %781

781:                                              ; preds = %780
  br i1 false, label %764, label %782

782:                                              ; preds = %781
  unreachable

783:                                              ; preds = %769
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %784

784:                                              ; preds = %783
  br label %785

785:                                              ; preds = %784
  br label %786

786:                                              ; preds = %785
  br label %787

787:                                              ; preds = %786
  br label %788

788:                                              ; preds = %787
  br label %789

789:                                              ; preds = %788
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), align 4
  br label %790

790:                                              ; preds = %789
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24832), align 4
  br i1 false, label %.loopexit49, label %797

.loopexit49:                                      ; preds = %838, %833, %825, %820, %790, %801
  %.lcssa46.ph = phi i32 [ 0, %801 ], [ 0, %790 ], [ 1, %820 ], [ 1, %825 ], [ 2, %833 ], [ 2, %838 ]
  %.lcssa45.ph = phi i32 [ 1, %801 ], [ 0, %790 ], [ 0, %820 ], [ 1, %825 ], [ 0, %833 ], [ 1, %838 ]
  br label %791

791:                                              ; preds = %.loopexit49, %809
  %.lcssa46 = phi i32 [ %.lcssa48, %809 ], [ %.lcssa46.ph, %.loopexit49 ]
  %.lcssa45 = phi i32 [ 2, %809 ], [ %.lcssa45.ph, %.loopexit49 ]
  %792 = shl nuw nsw i32 %.lcssa45, 3
  %793 = or disjoint i32 128, %792
  %794 = or disjoint i32 %.lcssa46, %793
  %795 = zext nneg i32 %794 to i64
  %796 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %795
  store i32 1, ptr %796, align 4
  unreachable

797:                                              ; preds = %790
  br label %798

798:                                              ; preds = %797
  br label %799

799:                                              ; preds = %798
  br label %800

800:                                              ; preds = %799
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24608), align 4
  br label %801

801:                                              ; preds = %800
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24864), align 4
  br i1 false, label %.loopexit49, label %802

802:                                              ; preds = %801
  br i1 false, label %803, label %814

803:                                              ; preds = %839, %826, %802
  %.lcssa48 = phi i32 [ 0, %802 ], [ 1, %826 ], [ 2, %839 ]
  br label %804

804:                                              ; preds = %803
  br label %805

805:                                              ; preds = %804
  %806 = or disjoint i32 %.lcssa48, 16
  %807 = zext nneg i32 %806 to i64
  %808 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %807
  store i32 1, ptr %808, align 4
  br label %809

809:                                              ; preds = %805
  %810 = or disjoint i32 %.lcssa48, 80
  %811 = zext nneg i32 %810 to i64
  %812 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %811
  store i32 1, ptr %812, align 4
  br i1 false, label %791, label %813

813:                                              ; preds = %809
  unreachable

814:                                              ; preds = %802
  br label %815

815:                                              ; preds = %814
  br label %816

816:                                              ; preds = %815
  br label %817

817:                                              ; preds = %816
  br label %818

818:                                              ; preds = %817
  br label %819

819:                                              ; preds = %818
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24580), align 4
  br label %820

820:                                              ; preds = %819
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24836), align 4
  br i1 false, label %.loopexit49, label %821

821:                                              ; preds = %820
  br label %822

822:                                              ; preds = %821
  br label %823

823:                                              ; preds = %822
  br label %824

824:                                              ; preds = %823
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24612), align 4
  br label %825

825:                                              ; preds = %824
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24868), align 4
  br i1 false, label %.loopexit49, label %826

826:                                              ; preds = %825
  br i1 false, label %803, label %827

827:                                              ; preds = %826
  br i1 false, label %828, label %841

828:                                              ; preds = %827
  br label %829

829:                                              ; preds = %828
  br label %830

830:                                              ; preds = %829
  br label %831

831:                                              ; preds = %830
  br label %832

832:                                              ; preds = %831
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24584), align 4
  br label %833

833:                                              ; preds = %832
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24840), align 4
  br i1 false, label %.loopexit49, label %834

834:                                              ; preds = %833
  br label %835

835:                                              ; preds = %834
  br label %836

836:                                              ; preds = %835
  br label %837

837:                                              ; preds = %836
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24616), align 4
  br label %838

838:                                              ; preds = %837
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24872), align 4
  br i1 false, label %.loopexit49, label %839

839:                                              ; preds = %838
  br i1 false, label %803, label %840

840:                                              ; preds = %839
  unreachable

841:                                              ; preds = %827
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 0, ptr @kount, align 4
  %842 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %842, 0
  br i1 %.not, label %845, label %843

843:                                              ; preds = %841
  %844 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %844, ptr @n, align 4
  br label %846

845:                                              ; preds = %841
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %.pre = load i32, ptr @n, align 4
  br label %846

846:                                              ; preds = %845, %843
  %847 = phi i32 [ %.pre, %845 ], [ %844, %843 ]
  %848 = call i32 @Trial(i32 noundef %847)
  %.not1 = icmp eq i32 %848, 0
  br i1 %.not1, label %849, label %850

849:                                              ; preds = %846
  %puts2 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %854

850:                                              ; preds = %846
  %851 = load i32, ptr @kount, align 4
  %.not3 = icmp eq i32 %851, 2005
  br i1 %.not3, label %853, label %852

852:                                              ; preds = %850
  %puts4 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %853

853:                                              ; preds = %852, %850
  br label %854

854:                                              ; preds = %853, %849
  %855 = load i32, ptr @n, align 4
  %856 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %855) #3
  %857 = load i32, ptr @kount, align 4
  %858 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %857) #3
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %4, %0
  %2 = phi i32 [ %5, %4 ], [ 0, %0 ]
  %3 = icmp samesign ult i32 %2, 100
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  call void @Puzzle()
  %5 = add nuw nsw i32 %2, 1
  br label %1, !llvm.loop !17

6:                                                ; preds = %1
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
