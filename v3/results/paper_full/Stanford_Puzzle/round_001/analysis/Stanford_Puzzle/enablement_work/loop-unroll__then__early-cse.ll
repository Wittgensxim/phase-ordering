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
  br label %3

3:                                                ; preds = %17, %2
  %4 = phi i32 [ %18, %17 ], [ 0, %2 ]
  %.not = icmp sgt i32 %4, %.pre
  br i1 %.not, label %19, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  %7 = zext nneg i32 %4 to i64
  %8 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4
  %.not2 = icmp eq i32 %9, 0
  br i1 %.not2, label %17, label %10

10:                                               ; preds = %5
  %11 = add nsw i32 %1, %4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %12
  %14 = load i32, ptr %13, align 4
  %.not3 = icmp eq i32 %14, 0
  br i1 %.not3, label %16, label %15

15:                                               ; preds = %10
  br label %20

16:                                               ; preds = %10
  br label %17

17:                                               ; preds = %16, %5
  %18 = add nuw nsw i32 %4, 1
  br label %3, !llvm.loop !7

19:                                               ; preds = %3
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
  br label %3

3:                                                ; preds = %14, %2
  %4 = phi i32 [ %15, %14 ], [ 0, %2 ]
  %.not = icmp sgt i32 %4, %.pre
  br i1 %.not, label %16, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  %7 = zext nneg i32 %4 to i64
  %8 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4
  %.not3 = icmp eq i32 %9, 0
  br i1 %.not3, label %14, label %10

10:                                               ; preds = %5
  %11 = add nsw i32 %1, %4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %12
  store i32 1, ptr %13, align 4
  br label %14

14:                                               ; preds = %10, %5
  %15 = add nuw nsw i32 %4, 1
  br label %3, !llvm.loop !9

16:                                               ; preds = %3
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
  br label %34

31:                                               ; preds = %26
  %32 = add nsw i32 %24, 1
  br label %23, !llvm.loop !10

33:                                               ; preds = %23
  br label %34

34:                                               ; preds = %33, %30
  %35 = phi i32 [ 0, %33 ], [ %24, %30 ]
  ret i32 %35
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Remove(i32 noundef %0, i32 noundef %1) #0 {
  %.phi.trans.insert = sext i32 %0 to i64
  %.phi.trans.insert1 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert1, align 4
  br label %3

3:                                                ; preds = %14, %2
  %4 = phi i32 [ %15, %14 ], [ 0, %2 ]
  %.not = icmp sgt i32 %4, %.pre
  br i1 %.not, label %16, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  %7 = zext nneg i32 %4 to i64
  %8 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4
  %.not2 = icmp eq i32 %9, 0
  br i1 %.not2, label %14, label %10

10:                                               ; preds = %5
  %11 = add nsw i32 %1, %4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %12
  store i32 0, ptr %13, align 4
  br label %14

14:                                               ; preds = %10, %5
  %15 = add nuw nsw i32 %4, 1
  br label %3, !llvm.loop !11

16:                                               ; preds = %3
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
  %.lcssa1.ph = phi i32 [ 5, %138 ], [ 4, %115 ], [ 3, %92 ], [ 2, %69 ], [ 1, %40 ]
  br label %44

44:                                               ; preds = %.loopexit, %161
  %.lcssa2 = phi i32 [ %18, %161 ], [ %18, %.loopexit ]
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
  br label %144

144:                                              ; preds = %143
  br label %145

145:                                              ; preds = %144
  %146 = or disjoint i32 %18, 112
  %147 = zext nneg i32 %146 to i64
  %148 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %147
  store i32 0, ptr %148, align 4
  br label %149

149:                                              ; preds = %145
  %150 = or disjoint i32 %18, 176
  %151 = zext nneg i32 %150 to i64
  %152 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %151
  store i32 0, ptr %152, align 4
  br label %153

153:                                              ; preds = %149
  %154 = or disjoint i32 %18, 240
  %155 = zext nneg i32 %154 to i64
  %156 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %155
  store i32 0, ptr %156, align 4
  br label %157

157:                                              ; preds = %153
  %158 = or disjoint i32 %18, 304
  %159 = zext nneg i32 %158 to i64
  %160 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %159
  store i32 0, ptr %160, align 4
  br label %161

161:                                              ; preds = %157
  %162 = or disjoint i32 %18, 368
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

169:                                              ; preds = %190, %168
  %170 = phi i32 [ %191, %190 ], [ 0, %168 ]
  %171 = icmp samesign ult i32 %170, 13
  br i1 %171, label %172, label %192

172:                                              ; preds = %169
  %173 = zext nneg i32 %170 to i64
  %174 = getelementptr inbounds nuw [2048 x i8], ptr @p, i64 %173
  br label %175

175:                                              ; preds = %186, %172
  %176 = phi i32 [ 0, %172 ], [ %189, %186 ]
  br label %177

177:                                              ; preds = %175
  %178 = zext nneg i32 %176 to i64
  %179 = getelementptr inbounds nuw [4 x i8], ptr %174, i64 %178
  store i32 0, ptr %179, align 4
  %180 = add nuw nsw i32 %176, 1
  br label %181

181:                                              ; preds = %177
  %182 = zext nneg i32 %180 to i64
  %183 = getelementptr inbounds nuw [4 x i8], ptr %174, i64 %182
  store i32 0, ptr %183, align 4
  %184 = add nuw nsw i32 %176, 2
  %185 = icmp samesign ult i32 %184, 512
  br i1 %185, label %186, label %190

186:                                              ; preds = %181
  %187 = zext nneg i32 %184 to i64
  %188 = getelementptr inbounds nuw [4 x i8], ptr %174, i64 %187
  store i32 0, ptr %188, align 4
  %189 = add nuw nsw i32 %176, 3
  br label %175, !llvm.loop !15

190:                                              ; preds = %181
  %191 = add nuw nsw i32 %170, 1
  br label %169, !llvm.loop !16

192:                                              ; preds = %169
  br label %193

193:                                              ; preds = %192
  br label %194

194:                                              ; preds = %193
  br label %195

195:                                              ; preds = %194
  br label %196

196:                                              ; preds = %195
  br label %197

197:                                              ; preds = %196
  br label %198

198:                                              ; preds = %197
  store i32 1, ptr @p, align 4
  br i1 false, label %.loopexit9, label %204

.loopexit9:                                       ; preds = %258, %254, %247, %243, %236, %232, %225, %221, %198, %207
  %.lcssa6.ph = phi i32 [ 0, %207 ], [ 0, %198 ], [ 1, %221 ], [ 1, %225 ], [ 2, %232 ], [ 2, %236 ], [ 3, %243 ], [ 3, %247 ], [ 4, %254 ], [ 4, %258 ]
  %.lcssa5.ph = phi i32 [ 1, %207 ], [ 0, %198 ], [ 0, %221 ], [ 1, %225 ], [ 0, %232 ], [ 1, %236 ], [ 0, %243 ], [ 1, %247 ], [ 0, %254 ], [ 1, %258 ]
  br label %199

199:                                              ; preds = %.loopexit9, %211
  %.lcssa6 = phi i32 [ %.lcssa8, %211 ], [ %.lcssa6.ph, %.loopexit9 ]
  %.lcssa5 = phi i32 [ 2, %211 ], [ %.lcssa5.ph, %.loopexit9 ]
  %200 = shl nuw nsw i32 %.lcssa5, 3
  %201 = or disjoint i32 %.lcssa6, %200
  %202 = zext nneg i32 %201 to i64
  %203 = getelementptr inbounds nuw [4 x i8], ptr @p, i64 %202
  store i32 1, ptr %203, align 4
  unreachable

204:                                              ; preds = %198
  br label %205

205:                                              ; preds = %204
  br label %206

206:                                              ; preds = %205
  br label %207

207:                                              ; preds = %206
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 32), align 4
  br i1 false, label %.loopexit9, label %208

208:                                              ; preds = %207
  br i1 false, label %209, label %216

209:                                              ; preds = %259, %248, %237, %226, %208
  %.lcssa8 = phi i32 [ 0, %208 ], [ 1, %226 ], [ 2, %237 ], [ 3, %248 ], [ 4, %259 ]
  br label %210

210:                                              ; preds = %209
  br label %211

211:                                              ; preds = %210
  %212 = or disjoint i32 %.lcssa8, 16
  %213 = zext nneg i32 %212 to i64
  %214 = getelementptr inbounds nuw [4 x i8], ptr @p, i64 %213
  store i32 1, ptr %214, align 4
  br i1 false, label %199, label %215

215:                                              ; preds = %211
  unreachable

216:                                              ; preds = %208
  br label %217

217:                                              ; preds = %216
  br label %218

218:                                              ; preds = %217
  br label %219

219:                                              ; preds = %218
  br label %220

220:                                              ; preds = %219
  br label %221

221:                                              ; preds = %220
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4), align 4
  br i1 false, label %.loopexit9, label %222

222:                                              ; preds = %221
  br label %223

223:                                              ; preds = %222
  br label %224

224:                                              ; preds = %223
  br label %225

225:                                              ; preds = %224
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 36), align 4
  br i1 false, label %.loopexit9, label %226

226:                                              ; preds = %225
  br i1 false, label %209, label %227

227:                                              ; preds = %226
  br label %228

228:                                              ; preds = %227
  br label %229

229:                                              ; preds = %228
  br label %230

230:                                              ; preds = %229
  br label %231

231:                                              ; preds = %230
  br label %232

232:                                              ; preds = %231
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8), align 4
  br i1 false, label %.loopexit9, label %233

233:                                              ; preds = %232
  br label %234

234:                                              ; preds = %233
  br label %235

235:                                              ; preds = %234
  br label %236

236:                                              ; preds = %235
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 40), align 4
  br i1 false, label %.loopexit9, label %237

237:                                              ; preds = %236
  br i1 false, label %209, label %238

238:                                              ; preds = %237
  br label %239

239:                                              ; preds = %238
  br label %240

240:                                              ; preds = %239
  br label %241

241:                                              ; preds = %240
  br label %242

242:                                              ; preds = %241
  br label %243

243:                                              ; preds = %242
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12), align 4
  br i1 false, label %.loopexit9, label %244

244:                                              ; preds = %243
  br label %245

245:                                              ; preds = %244
  br label %246

246:                                              ; preds = %245
  br label %247

247:                                              ; preds = %246
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 44), align 4
  br i1 false, label %.loopexit9, label %248

248:                                              ; preds = %247
  br i1 false, label %209, label %249

249:                                              ; preds = %248
  br i1 false, label %250, label %261

250:                                              ; preds = %249
  br label %251

251:                                              ; preds = %250
  br label %252

252:                                              ; preds = %251
  br label %253

253:                                              ; preds = %252
  br label %254

254:                                              ; preds = %253
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16), align 4
  br i1 false, label %.loopexit9, label %255

255:                                              ; preds = %254
  br label %256

256:                                              ; preds = %255
  br label %257

257:                                              ; preds = %256
  br label %258

258:                                              ; preds = %257
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 48), align 4
  br i1 false, label %.loopexit9, label %259

259:                                              ; preds = %258
  br i1 false, label %209, label %260

260:                                              ; preds = %259
  unreachable

261:                                              ; preds = %249
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %262

262:                                              ; preds = %261
  br label %263

263:                                              ; preds = %262
  br label %264

264:                                              ; preds = %263
  br label %265

265:                                              ; preds = %264
  br label %266

266:                                              ; preds = %265
  br label %267

267:                                              ; preds = %266
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), align 4
  br label %268

268:                                              ; preds = %267
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2304), align 4
  br label %269

269:                                              ; preds = %268
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2560), align 4
  br label %270

270:                                              ; preds = %269
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2816), align 4
  br i1 false, label %.loopexit13, label %275

.loopexit13:                                      ; preds = %312, %302, %270
  %.lcssa10.ph = phi i32 [ 0, %270 ], [ 1, %302 ], [ 2, %312 ]
  br label %271

271:                                              ; preds = %.loopexit13, %289
  %.lcssa10 = phi i32 [ %.lcssa11, %289 ], [ %.lcssa10.ph, %.loopexit13 ]
  %272 = or disjoint i32 %.lcssa10, 256
  %273 = zext nneg i32 %272 to i64
  %274 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %273
  store i32 1, ptr %274, align 4
  unreachable

275:                                              ; preds = %270
  br i1 false, label %276, label %294

276:                                              ; preds = %313, %303, %275
  %.lcssa11 = phi i32 [ 0, %275 ], [ 1, %303 ], [ 2, %313 ]
  br label %277

277:                                              ; preds = %276
  br label %278

278:                                              ; preds = %277
  %279 = zext nneg i32 %.lcssa11 to i64
  %280 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %279
  store i32 1, ptr %280, align 4
  br label %281

281:                                              ; preds = %278
  %282 = or disjoint i32 %.lcssa11, 64
  %283 = zext nneg i32 %282 to i64
  %284 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %283
  store i32 1, ptr %284, align 4
  br label %285

285:                                              ; preds = %281
  %286 = or disjoint i32 %.lcssa11, 128
  %287 = zext nneg i32 %286 to i64
  %288 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %287
  store i32 1, ptr %288, align 4
  br label %289

289:                                              ; preds = %285
  %290 = or disjoint i32 %.lcssa11, 192
  %291 = zext nneg i32 %290 to i64
  %292 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %291
  store i32 1, ptr %292, align 4
  br i1 false, label %271, label %293

293:                                              ; preds = %289
  unreachable

294:                                              ; preds = %275
  br label %295

295:                                              ; preds = %294
  br label %296

296:                                              ; preds = %295
  br label %297

297:                                              ; preds = %296
  br label %298

298:                                              ; preds = %297
  br label %299

299:                                              ; preds = %298
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2052), align 4
  br label %300

300:                                              ; preds = %299
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2308), align 4
  br label %301

301:                                              ; preds = %300
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2564), align 4
  br label %302

302:                                              ; preds = %301
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2820), align 4
  br i1 false, label %.loopexit13, label %303

303:                                              ; preds = %302
  br i1 false, label %276, label %304

304:                                              ; preds = %303
  br i1 false, label %305, label %315

305:                                              ; preds = %304
  br label %306

306:                                              ; preds = %305
  br label %307

307:                                              ; preds = %306
  br label %308

308:                                              ; preds = %307
  br label %309

309:                                              ; preds = %308
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2056), align 4
  br label %310

310:                                              ; preds = %309
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2312), align 4
  br label %311

311:                                              ; preds = %310
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2568), align 4
  br label %312

312:                                              ; preds = %311
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2824), align 4
  br i1 false, label %.loopexit13, label %313

313:                                              ; preds = %312
  br i1 false, label %276, label %314

314:                                              ; preds = %313
  unreachable

315:                                              ; preds = %304
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %316

316:                                              ; preds = %315
  br label %317

317:                                              ; preds = %316
  br label %318

318:                                              ; preds = %317
  br label %319

319:                                              ; preds = %318
  br label %320

320:                                              ; preds = %319
  br label %321

321:                                              ; preds = %320
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), align 4
  br label %322

322:                                              ; preds = %321
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4352), align 4
  br i1 false, label %.loopexit15, label %328

.loopexit15:                                      ; preds = %370, %365, %360, %355, %322, %332, %337, %342
  %.lcssa14.ph = phi i32 [ 3, %342 ], [ 2, %337 ], [ 1, %332 ], [ 0, %322 ], [ 0, %355 ], [ 1, %360 ], [ 2, %365 ], [ 3, %370 ]
  br label %323

323:                                              ; preds = %.loopexit15, %347
  %.lcssa14 = phi i32 [ 4, %347 ], [ %.lcssa14.ph, %.loopexit15 ]
  %324 = shl nuw nsw i32 %.lcssa14, 3
  %325 = or disjoint i32 128, %324
  %326 = zext nneg i32 %325 to i64
  %327 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %326
  store i32 1, ptr %327, align 4
  unreachable

328:                                              ; preds = %322
  br label %329

329:                                              ; preds = %328
  br label %330

330:                                              ; preds = %329
  br label %331

331:                                              ; preds = %330
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4128), align 4
  br label %332

332:                                              ; preds = %331
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4384), align 4
  br i1 false, label %.loopexit15, label %333

333:                                              ; preds = %332
  br label %334

334:                                              ; preds = %333
  br label %335

335:                                              ; preds = %334
  br label %336

336:                                              ; preds = %335
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4160), align 4
  br label %337

337:                                              ; preds = %336
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4416), align 4
  br i1 false, label %.loopexit15, label %338

338:                                              ; preds = %337
  br label %339

339:                                              ; preds = %338
  br label %340

340:                                              ; preds = %339
  br label %341

341:                                              ; preds = %340
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4192), align 4
  br label %342

342:                                              ; preds = %341
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4448), align 4
  br i1 false, label %.loopexit15, label %343

343:                                              ; preds = %342
  br i1 false, label %344, label %349

344:                                              ; preds = %371, %343
  br label %345

345:                                              ; preds = %344
  br label %346

346:                                              ; preds = %345
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4224), align 4
  br label %347

347:                                              ; preds = %346
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4480), align 4
  br i1 false, label %323, label %348

348:                                              ; preds = %347
  unreachable

349:                                              ; preds = %343
  br i1 false, label %350, label %373

350:                                              ; preds = %349
  br label %351

351:                                              ; preds = %350
  br label %352

352:                                              ; preds = %351
  br label %353

353:                                              ; preds = %352
  br label %354

354:                                              ; preds = %353
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), align 4
  br label %355

355:                                              ; preds = %354
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4352), align 4
  br i1 false, label %.loopexit15, label %356

356:                                              ; preds = %355
  br label %357

357:                                              ; preds = %356
  br label %358

358:                                              ; preds = %357
  br label %359

359:                                              ; preds = %358
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4128), align 4
  br label %360

360:                                              ; preds = %359
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4384), align 4
  br i1 false, label %.loopexit15, label %361

361:                                              ; preds = %360
  br label %362

362:                                              ; preds = %361
  br label %363

363:                                              ; preds = %362
  br label %364

364:                                              ; preds = %363
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4160), align 4
  br label %365

365:                                              ; preds = %364
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4416), align 4
  br i1 false, label %.loopexit15, label %366

366:                                              ; preds = %365
  br label %367

367:                                              ; preds = %366
  br label %368

368:                                              ; preds = %367
  br label %369

369:                                              ; preds = %368
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4192), align 4
  br label %370

370:                                              ; preds = %369
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4448), align 4
  br i1 false, label %.loopexit15, label %371

371:                                              ; preds = %370
  br i1 false, label %344, label %372

372:                                              ; preds = %371
  unreachable

373:                                              ; preds = %349
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %374

374:                                              ; preds = %373
  br label %375

375:                                              ; preds = %374
  br label %376

376:                                              ; preds = %375
  br label %377

377:                                              ; preds = %376
  br label %378

378:                                              ; preds = %377
  br label %379

379:                                              ; preds = %378
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), align 4
  br i1 false, label %.loopexit20, label %385

.loopexit20:                                      ; preds = %441, %437, %433, %429, %422, %418, %414, %410, %379, %388, %392, %396
  %.lcssa17.ph = phi i32 [ 0, %396 ], [ 0, %392 ], [ 0, %388 ], [ 0, %379 ], [ 1, %410 ], [ 1, %414 ], [ 1, %418 ], [ 1, %422 ], [ 2, %429 ], [ 2, %433 ], [ 2, %437 ], [ 2, %441 ]
  %.lcssa16.ph = phi i32 [ 3, %396 ], [ 2, %392 ], [ 1, %388 ], [ 0, %379 ], [ 0, %410 ], [ 1, %414 ], [ 2, %418 ], [ 3, %422 ], [ 0, %429 ], [ 1, %433 ], [ 2, %437 ], [ 3, %441 ]
  br label %380

380:                                              ; preds = %.loopexit20, %400
  %.lcssa17 = phi i32 [ %.lcssa19, %400 ], [ %.lcssa17.ph, %.loopexit20 ]
  %.lcssa16 = phi i32 [ 4, %400 ], [ %.lcssa16.ph, %.loopexit20 ]
  %381 = shl nuw nsw i32 %.lcssa16, 3
  %382 = or disjoint i32 %.lcssa17, %381
  %383 = zext nneg i32 %382 to i64
  %384 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %383
  store i32 1, ptr %384, align 4
  unreachable

385:                                              ; preds = %379
  br label %386

386:                                              ; preds = %385
  br label %387

387:                                              ; preds = %386
  br label %388

388:                                              ; preds = %387
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6176), align 4
  br i1 false, label %.loopexit20, label %389

389:                                              ; preds = %388
  br label %390

390:                                              ; preds = %389
  br label %391

391:                                              ; preds = %390
  br label %392

392:                                              ; preds = %391
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6208), align 4
  br i1 false, label %.loopexit20, label %393

393:                                              ; preds = %392
  br label %394

394:                                              ; preds = %393
  br label %395

395:                                              ; preds = %394
  br label %396

396:                                              ; preds = %395
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6240), align 4
  br i1 false, label %.loopexit20, label %397

397:                                              ; preds = %396
  br i1 false, label %398, label %405

398:                                              ; preds = %442, %423, %397
  %.lcssa19 = phi i32 [ 0, %397 ], [ 1, %423 ], [ 2, %442 ]
  br label %399

399:                                              ; preds = %398
  br label %400

400:                                              ; preds = %399
  %401 = or disjoint i32 %.lcssa19, 32
  %402 = zext nneg i32 %401 to i64
  %403 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %402
  store i32 1, ptr %403, align 4
  br i1 false, label %380, label %404

404:                                              ; preds = %400
  unreachable

405:                                              ; preds = %397
  br label %406

406:                                              ; preds = %405
  br label %407

407:                                              ; preds = %406
  br label %408

408:                                              ; preds = %407
  br label %409

409:                                              ; preds = %408
  br label %410

410:                                              ; preds = %409
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6148), align 4
  br i1 false, label %.loopexit20, label %411

411:                                              ; preds = %410
  br label %412

412:                                              ; preds = %411
  br label %413

413:                                              ; preds = %412
  br label %414

414:                                              ; preds = %413
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6180), align 4
  br i1 false, label %.loopexit20, label %415

415:                                              ; preds = %414
  br label %416

416:                                              ; preds = %415
  br label %417

417:                                              ; preds = %416
  br label %418

418:                                              ; preds = %417
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6212), align 4
  br i1 false, label %.loopexit20, label %419

419:                                              ; preds = %418
  br label %420

420:                                              ; preds = %419
  br label %421

421:                                              ; preds = %420
  br label %422

422:                                              ; preds = %421
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6244), align 4
  br i1 false, label %.loopexit20, label %423

423:                                              ; preds = %422
  br i1 false, label %398, label %424

424:                                              ; preds = %423
  br i1 false, label %425, label %444

425:                                              ; preds = %424
  br label %426

426:                                              ; preds = %425
  br label %427

427:                                              ; preds = %426
  br label %428

428:                                              ; preds = %427
  br label %429

429:                                              ; preds = %428
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6152), align 4
  br i1 false, label %.loopexit20, label %430

430:                                              ; preds = %429
  br label %431

431:                                              ; preds = %430
  br label %432

432:                                              ; preds = %431
  br label %433

433:                                              ; preds = %432
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6184), align 4
  br i1 false, label %.loopexit20, label %434

434:                                              ; preds = %433
  br label %435

435:                                              ; preds = %434
  br label %436

436:                                              ; preds = %435
  br label %437

437:                                              ; preds = %436
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6216), align 4
  br i1 false, label %.loopexit20, label %438

438:                                              ; preds = %437
  br label %439

439:                                              ; preds = %438
  br label %440

440:                                              ; preds = %439
  br label %441

441:                                              ; preds = %440
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6248), align 4
  br i1 false, label %.loopexit20, label %442

442:                                              ; preds = %441
  br i1 false, label %398, label %443

443:                                              ; preds = %442
  unreachable

444:                                              ; preds = %424
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %445

445:                                              ; preds = %444
  br label %446

446:                                              ; preds = %445
  br label %447

447:                                              ; preds = %446
  br label %448

448:                                              ; preds = %447
  br label %449

449:                                              ; preds = %448
  br label %450

450:                                              ; preds = %449
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), align 4
  br label %451

451:                                              ; preds = %450
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8448), align 4
  br i1 false, label %.loopexit24, label %456

.loopexit24:                                      ; preds = %497, %489, %481, %473, %451
  %.lcssa21.ph = phi i32 [ 0, %451 ], [ 1, %473 ], [ 2, %481 ], [ 3, %489 ], [ 4, %497 ]
  br label %452

452:                                              ; preds = %.loopexit24, %462
  %.lcssa21 = phi i32 [ %.lcssa22, %462 ], [ %.lcssa21.ph, %.loopexit24 ]
  %453 = or disjoint i32 %.lcssa21, 128
  %454 = zext nneg i32 %453 to i64
  %455 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %454
  store i32 1, ptr %455, align 4
  unreachable

456:                                              ; preds = %451
  br i1 false, label %457, label %467

457:                                              ; preds = %498, %490, %482, %474, %456
  %.lcssa22 = phi i32 [ 0, %456 ], [ 1, %474 ], [ 2, %482 ], [ 3, %490 ], [ 4, %498 ]
  br label %458

458:                                              ; preds = %457
  br label %459

459:                                              ; preds = %458
  %460 = zext nneg i32 %.lcssa22 to i64
  %461 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %460
  store i32 1, ptr %461, align 4
  br label %462

462:                                              ; preds = %459
  %463 = or disjoint i32 %.lcssa22, 64
  %464 = zext nneg i32 %463 to i64
  %465 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %464
  store i32 1, ptr %465, align 4
  br i1 false, label %452, label %466

466:                                              ; preds = %462
  unreachable

467:                                              ; preds = %456
  br label %468

468:                                              ; preds = %467
  br label %469

469:                                              ; preds = %468
  br label %470

470:                                              ; preds = %469
  br label %471

471:                                              ; preds = %470
  br label %472

472:                                              ; preds = %471
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8196), align 4
  br label %473

473:                                              ; preds = %472
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8452), align 4
  br i1 false, label %.loopexit24, label %474

474:                                              ; preds = %473
  br i1 false, label %457, label %475

475:                                              ; preds = %474
  br label %476

476:                                              ; preds = %475
  br label %477

477:                                              ; preds = %476
  br label %478

478:                                              ; preds = %477
  br label %479

479:                                              ; preds = %478
  br label %480

480:                                              ; preds = %479
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8200), align 4
  br label %481

481:                                              ; preds = %480
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8456), align 4
  br i1 false, label %.loopexit24, label %482

482:                                              ; preds = %481
  br i1 false, label %457, label %483

483:                                              ; preds = %482
  br label %484

484:                                              ; preds = %483
  br label %485

485:                                              ; preds = %484
  br label %486

486:                                              ; preds = %485
  br label %487

487:                                              ; preds = %486
  br label %488

488:                                              ; preds = %487
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8204), align 4
  br label %489

489:                                              ; preds = %488
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8460), align 4
  br i1 false, label %.loopexit24, label %490

490:                                              ; preds = %489
  br i1 false, label %457, label %491

491:                                              ; preds = %490
  br i1 false, label %492, label %500

492:                                              ; preds = %491
  br label %493

493:                                              ; preds = %492
  br label %494

494:                                              ; preds = %493
  br label %495

495:                                              ; preds = %494
  br label %496

496:                                              ; preds = %495
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8208), align 4
  br label %497

497:                                              ; preds = %496
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8464), align 4
  br i1 false, label %.loopexit24, label %498

498:                                              ; preds = %497
  br i1 false, label %457, label %499

499:                                              ; preds = %498
  unreachable

500:                                              ; preds = %491
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %501

501:                                              ; preds = %500
  br label %502

502:                                              ; preds = %501
  br label %503

503:                                              ; preds = %502
  br label %504

504:                                              ; preds = %503
  br label %505

505:                                              ; preds = %504
  br label %506

506:                                              ; preds = %505
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), align 4
  br label %507

507:                                              ; preds = %506
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10496), align 4
  br label %508

508:                                              ; preds = %507
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10752), align 4
  br label %509

509:                                              ; preds = %508
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 11008), align 4
  br i1 false, label %.loopexit26, label %515

.loopexit26:                                      ; preds = %545, %538, %509, %521
  %.lcssa25.ph = phi i32 [ 1, %521 ], [ 0, %509 ], [ 0, %538 ], [ 1, %545 ]
  br label %510

510:                                              ; preds = %.loopexit26, %528
  %.lcssa25 = phi i32 [ 2, %528 ], [ %.lcssa25.ph, %.loopexit26 ]
  %511 = shl nuw nsw i32 %.lcssa25, 3
  %512 = or disjoint i32 256, %511
  %513 = zext nneg i32 %512 to i64
  %514 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %513
  store i32 1, ptr %514, align 4
  unreachable

515:                                              ; preds = %509
  br label %516

516:                                              ; preds = %515
  br label %517

517:                                              ; preds = %516
  br label %518

518:                                              ; preds = %517
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10272), align 4
  br label %519

519:                                              ; preds = %518
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10528), align 4
  br label %520

520:                                              ; preds = %519
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10784), align 4
  br label %521

521:                                              ; preds = %520
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 11040), align 4
  br i1 false, label %.loopexit26, label %522

522:                                              ; preds = %521
  br i1 false, label %523, label %530

523:                                              ; preds = %546, %522
  br label %524

524:                                              ; preds = %523
  br label %525

525:                                              ; preds = %524
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10304), align 4
  br label %526

526:                                              ; preds = %525
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10560), align 4
  br label %527

527:                                              ; preds = %526
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10816), align 4
  br label %528

528:                                              ; preds = %527
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 11072), align 4
  br i1 false, label %510, label %529

529:                                              ; preds = %528
  unreachable

530:                                              ; preds = %522
  br i1 false, label %531, label %548

531:                                              ; preds = %530
  br label %532

532:                                              ; preds = %531
  br label %533

533:                                              ; preds = %532
  br label %534

534:                                              ; preds = %533
  br label %535

535:                                              ; preds = %534
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), align 4
  br label %536

536:                                              ; preds = %535
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10496), align 4
  br label %537

537:                                              ; preds = %536
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10752), align 4
  br label %538

538:                                              ; preds = %537
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 11008), align 4
  br i1 false, label %.loopexit26, label %539

539:                                              ; preds = %538
  br label %540

540:                                              ; preds = %539
  br label %541

541:                                              ; preds = %540
  br label %542

542:                                              ; preds = %541
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10272), align 4
  br label %543

543:                                              ; preds = %542
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10528), align 4
  br label %544

544:                                              ; preds = %543
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10784), align 4
  br label %545

545:                                              ; preds = %544
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 11040), align 4
  br i1 false, label %.loopexit26, label %546

546:                                              ; preds = %545
  br i1 false, label %523, label %547

547:                                              ; preds = %546
  unreachable

548:                                              ; preds = %530
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %549

549:                                              ; preds = %548
  br label %550

550:                                              ; preds = %549
  br label %551

551:                                              ; preds = %550
  br label %552

552:                                              ; preds = %551
  br label %553

553:                                              ; preds = %552
  br label %554

554:                                              ; preds = %553
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), align 4
  br i1 false, label %.loopexit30, label %558

.loopexit30:                                      ; preds = %584, %577, %570, %554
  %.lcssa27.ph = phi i32 [ 0, %554 ], [ 1, %570 ], [ 2, %577 ], [ 3, %584 ]
  br label %555

555:                                              ; preds = %.loopexit30, %561
  %.lcssa27 = phi i32 [ %.lcssa28, %561 ], [ %.lcssa27.ph, %.loopexit30 ]
  %556 = zext nneg i32 %.lcssa27 to i64
  %557 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %556
  store i32 1, ptr %557, align 4
  unreachable

558:                                              ; preds = %554
  br i1 false, label %559, label %565

559:                                              ; preds = %585, %578, %571, %558
  %.lcssa28 = phi i32 [ 0, %558 ], [ 1, %571 ], [ 2, %578 ], [ 3, %585 ]
  br label %560

560:                                              ; preds = %559
  br label %561

561:                                              ; preds = %560
  %562 = zext nneg i32 %.lcssa28 to i64
  %563 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %562
  store i32 1, ptr %563, align 4
  br i1 false, label %555, label %564

564:                                              ; preds = %561
  unreachable

565:                                              ; preds = %558
  br label %566

566:                                              ; preds = %565
  br label %567

567:                                              ; preds = %566
  br label %568

568:                                              ; preds = %567
  br label %569

569:                                              ; preds = %568
  br label %570

570:                                              ; preds = %569
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12292), align 4
  br i1 false, label %.loopexit30, label %571

571:                                              ; preds = %570
  br i1 false, label %559, label %572

572:                                              ; preds = %571
  br label %573

573:                                              ; preds = %572
  br label %574

574:                                              ; preds = %573
  br label %575

575:                                              ; preds = %574
  br label %576

576:                                              ; preds = %575
  br label %577

577:                                              ; preds = %576
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12296), align 4
  br i1 false, label %.loopexit30, label %578

578:                                              ; preds = %577
  br i1 false, label %559, label %579

579:                                              ; preds = %578
  br i1 false, label %580, label %587

580:                                              ; preds = %579
  br label %581

581:                                              ; preds = %580
  br label %582

582:                                              ; preds = %581
  br label %583

583:                                              ; preds = %582
  br label %584

584:                                              ; preds = %583
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12300), align 4
  br i1 false, label %.loopexit30, label %585

585:                                              ; preds = %584
  br i1 false, label %559, label %586

586:                                              ; preds = %585
  unreachable

587:                                              ; preds = %579
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %588

588:                                              ; preds = %587
  br label %589

589:                                              ; preds = %588
  br label %590

590:                                              ; preds = %589
  br label %591

591:                                              ; preds = %590
  br label %592

592:                                              ; preds = %591
  br label %593

593:                                              ; preds = %592
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), align 4
  br i1 false, label %.loopexit32, label %598

.loopexit32:                                      ; preds = %624, %620, %616, %593, %601, %605
  %.lcssa31.ph = phi i32 [ 2, %605 ], [ 1, %601 ], [ 0, %593 ], [ 0, %616 ], [ 1, %620 ], [ 2, %624 ]
  br label %594

594:                                              ; preds = %.loopexit32, %609
  %.lcssa31 = phi i32 [ 3, %609 ], [ %.lcssa31.ph, %.loopexit32 ]
  %595 = shl nuw nsw i32 %.lcssa31, 3
  %596 = zext nneg i32 %595 to i64
  %597 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %596
  store i32 1, ptr %597, align 4
  unreachable

598:                                              ; preds = %593
  br label %599

599:                                              ; preds = %598
  br label %600

600:                                              ; preds = %599
  br label %601

601:                                              ; preds = %600
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14368), align 4
  br i1 false, label %.loopexit32, label %602

602:                                              ; preds = %601
  br label %603

603:                                              ; preds = %602
  br label %604

604:                                              ; preds = %603
  br label %605

605:                                              ; preds = %604
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14400), align 4
  br i1 false, label %.loopexit32, label %606

606:                                              ; preds = %605
  br i1 false, label %607, label %611

607:                                              ; preds = %625, %606
  br label %608

608:                                              ; preds = %607
  br label %609

609:                                              ; preds = %608
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14432), align 4
  br i1 false, label %594, label %610

610:                                              ; preds = %609
  unreachable

611:                                              ; preds = %606
  br i1 false, label %612, label %627

612:                                              ; preds = %611
  br label %613

613:                                              ; preds = %612
  br label %614

614:                                              ; preds = %613
  br label %615

615:                                              ; preds = %614
  br label %616

616:                                              ; preds = %615
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), align 4
  br i1 false, label %.loopexit32, label %617

617:                                              ; preds = %616
  br label %618

618:                                              ; preds = %617
  br label %619

619:                                              ; preds = %618
  br label %620

620:                                              ; preds = %619
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14368), align 4
  br i1 false, label %.loopexit32, label %621

621:                                              ; preds = %620
  br label %622

622:                                              ; preds = %621
  br label %623

623:                                              ; preds = %622
  br label %624

624:                                              ; preds = %623
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14400), align 4
  br i1 false, label %.loopexit32, label %625

625:                                              ; preds = %624
  br i1 false, label %607, label %626

626:                                              ; preds = %625
  unreachable

627:                                              ; preds = %611
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %628

628:                                              ; preds = %627
  br label %629

629:                                              ; preds = %628
  br label %630

630:                                              ; preds = %629
  br label %631

631:                                              ; preds = %630
  br label %632

632:                                              ; preds = %631
  br label %633

633:                                              ; preds = %632
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), align 4
  br label %634

634:                                              ; preds = %633
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16640), align 4
  br label %635

635:                                              ; preds = %634
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16896), align 4
  br i1 false, label %.loopexit33, label %637

.loopexit33:                                      ; preds = %651, %635
  br label %636

636:                                              ; preds = %.loopexit33, %642
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 17152), align 4
  unreachable

637:                                              ; preds = %635
  br i1 false, label %638, label %644

638:                                              ; preds = %652, %637
  br label %639

639:                                              ; preds = %638
  br label %640

640:                                              ; preds = %639
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), align 4
  br label %641

641:                                              ; preds = %640
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16640), align 4
  br label %642

642:                                              ; preds = %641
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16896), align 4
  br i1 false, label %636, label %643

643:                                              ; preds = %642
  unreachable

644:                                              ; preds = %637
  br i1 false, label %645, label %654

645:                                              ; preds = %644
  br label %646

646:                                              ; preds = %645
  br label %647

647:                                              ; preds = %646
  br label %648

648:                                              ; preds = %647
  br label %649

649:                                              ; preds = %648
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), align 4
  br label %650

650:                                              ; preds = %649
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16640), align 4
  br label %651

651:                                              ; preds = %650
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16896), align 4
  br i1 false, label %.loopexit33, label %652

652:                                              ; preds = %651
  br i1 false, label %638, label %653

653:                                              ; preds = %652
  unreachable

654:                                              ; preds = %644
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %655

655:                                              ; preds = %654
  br label %656

656:                                              ; preds = %655
  br label %657

657:                                              ; preds = %656
  br label %658

658:                                              ; preds = %657
  br label %659

659:                                              ; preds = %658
  br label %660

660:                                              ; preds = %659
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), align 4
  br i1 false, label %.loopexit38, label %666

.loopexit38:                                      ; preds = %698, %694, %687, %683, %660, %669
  %.lcssa35.ph = phi i32 [ 0, %669 ], [ 0, %660 ], [ 1, %683 ], [ 1, %687 ], [ 2, %694 ], [ 2, %698 ]
  %.lcssa34.ph = phi i32 [ 1, %669 ], [ 0, %660 ], [ 0, %683 ], [ 1, %687 ], [ 0, %694 ], [ 1, %698 ]
  br label %661

661:                                              ; preds = %.loopexit38, %673
  %.lcssa35 = phi i32 [ %.lcssa37, %673 ], [ %.lcssa35.ph, %.loopexit38 ]
  %.lcssa34 = phi i32 [ 2, %673 ], [ %.lcssa34.ph, %.loopexit38 ]
  %662 = shl nuw nsw i32 %.lcssa34, 3
  %663 = or disjoint i32 %.lcssa35, %662
  %664 = zext nneg i32 %663 to i64
  %665 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %664
  store i32 1, ptr %665, align 4
  unreachable

666:                                              ; preds = %660
  br label %667

667:                                              ; preds = %666
  br label %668

668:                                              ; preds = %667
  br label %669

669:                                              ; preds = %668
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18464), align 4
  br i1 false, label %.loopexit38, label %670

670:                                              ; preds = %669
  br i1 false, label %671, label %678

671:                                              ; preds = %699, %688, %670
  %.lcssa37 = phi i32 [ 0, %670 ], [ 1, %688 ], [ 2, %699 ]
  br label %672

672:                                              ; preds = %671
  br label %673

673:                                              ; preds = %672
  %674 = or disjoint i32 %.lcssa37, 16
  %675 = zext nneg i32 %674 to i64
  %676 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %675
  store i32 1, ptr %676, align 4
  br i1 false, label %661, label %677

677:                                              ; preds = %673
  unreachable

678:                                              ; preds = %670
  br label %679

679:                                              ; preds = %678
  br label %680

680:                                              ; preds = %679
  br label %681

681:                                              ; preds = %680
  br label %682

682:                                              ; preds = %681
  br label %683

683:                                              ; preds = %682
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18436), align 4
  br i1 false, label %.loopexit38, label %684

684:                                              ; preds = %683
  br label %685

685:                                              ; preds = %684
  br label %686

686:                                              ; preds = %685
  br label %687

687:                                              ; preds = %686
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18468), align 4
  br i1 false, label %.loopexit38, label %688

688:                                              ; preds = %687
  br i1 false, label %671, label %689

689:                                              ; preds = %688
  br i1 false, label %690, label %701

690:                                              ; preds = %689
  br label %691

691:                                              ; preds = %690
  br label %692

692:                                              ; preds = %691
  br label %693

693:                                              ; preds = %692
  br label %694

694:                                              ; preds = %693
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18440), align 4
  br i1 false, label %.loopexit38, label %695

695:                                              ; preds = %694
  br label %696

696:                                              ; preds = %695
  br label %697

697:                                              ; preds = %696
  br label %698

698:                                              ; preds = %697
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18472), align 4
  br i1 false, label %.loopexit38, label %699

699:                                              ; preds = %698
  br i1 false, label %671, label %700

700:                                              ; preds = %699
  unreachable

701:                                              ; preds = %689
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %702

702:                                              ; preds = %701
  br label %703

703:                                              ; preds = %702
  br label %704

704:                                              ; preds = %703
  br label %705

705:                                              ; preds = %704
  br label %706

706:                                              ; preds = %705
  br label %707

707:                                              ; preds = %706
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), align 4
  br label %708

708:                                              ; preds = %707
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20736), align 4
  br i1 false, label %.loopexit42, label %713

.loopexit42:                                      ; preds = %738, %730, %708
  %.lcssa39.ph = phi i32 [ 0, %708 ], [ 1, %730 ], [ 2, %738 ]
  br label %709

709:                                              ; preds = %.loopexit42, %719
  %.lcssa39 = phi i32 [ %.lcssa40, %719 ], [ %.lcssa39.ph, %.loopexit42 ]
  %710 = or disjoint i32 %.lcssa39, 128
  %711 = zext nneg i32 %710 to i64
  %712 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %711
  store i32 1, ptr %712, align 4
  unreachable

713:                                              ; preds = %708
  br i1 false, label %714, label %724

714:                                              ; preds = %739, %731, %713
  %.lcssa40 = phi i32 [ 0, %713 ], [ 1, %731 ], [ 2, %739 ]
  br label %715

715:                                              ; preds = %714
  br label %716

716:                                              ; preds = %715
  %717 = zext nneg i32 %.lcssa40 to i64
  %718 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %717
  store i32 1, ptr %718, align 4
  br label %719

719:                                              ; preds = %716
  %720 = or disjoint i32 %.lcssa40, 64
  %721 = zext nneg i32 %720 to i64
  %722 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %721
  store i32 1, ptr %722, align 4
  br i1 false, label %709, label %723

723:                                              ; preds = %719
  unreachable

724:                                              ; preds = %713
  br label %725

725:                                              ; preds = %724
  br label %726

726:                                              ; preds = %725
  br label %727

727:                                              ; preds = %726
  br label %728

728:                                              ; preds = %727
  br label %729

729:                                              ; preds = %728
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20484), align 4
  br label %730

730:                                              ; preds = %729
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20740), align 4
  br i1 false, label %.loopexit42, label %731

731:                                              ; preds = %730
  br i1 false, label %714, label %732

732:                                              ; preds = %731
  br i1 false, label %733, label %741

733:                                              ; preds = %732
  br label %734

734:                                              ; preds = %733
  br label %735

735:                                              ; preds = %734
  br label %736

736:                                              ; preds = %735
  br label %737

737:                                              ; preds = %736
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20488), align 4
  br label %738

738:                                              ; preds = %737
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20744), align 4
  br i1 false, label %.loopexit42, label %739

739:                                              ; preds = %738
  br i1 false, label %714, label %740

740:                                              ; preds = %739
  unreachable

741:                                              ; preds = %732
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %742

742:                                              ; preds = %741
  br label %743

743:                                              ; preds = %742
  br label %744

744:                                              ; preds = %743
  br label %745

745:                                              ; preds = %744
  br label %746

746:                                              ; preds = %745
  br label %747

747:                                              ; preds = %746
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), align 4
  br label %748

748:                                              ; preds = %747
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22784), align 4
  br i1 false, label %.loopexit44, label %754

.loopexit44:                                      ; preds = %776, %771, %748, %758
  %.lcssa43.ph = phi i32 [ 1, %758 ], [ 0, %748 ], [ 0, %771 ], [ 1, %776 ]
  br label %749

749:                                              ; preds = %.loopexit44, %763
  %.lcssa43 = phi i32 [ 2, %763 ], [ %.lcssa43.ph, %.loopexit44 ]
  %750 = shl nuw nsw i32 %.lcssa43, 3
  %751 = or disjoint i32 128, %750
  %752 = zext nneg i32 %751 to i64
  %753 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %752
  store i32 1, ptr %753, align 4
  unreachable

754:                                              ; preds = %748
  br label %755

755:                                              ; preds = %754
  br label %756

756:                                              ; preds = %755
  br label %757

757:                                              ; preds = %756
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22560), align 4
  br label %758

758:                                              ; preds = %757
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22816), align 4
  br i1 false, label %.loopexit44, label %759

759:                                              ; preds = %758
  br i1 false, label %760, label %765

760:                                              ; preds = %777, %759
  br label %761

761:                                              ; preds = %760
  br label %762

762:                                              ; preds = %761
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22592), align 4
  br label %763

763:                                              ; preds = %762
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22848), align 4
  br i1 false, label %749, label %764

764:                                              ; preds = %763
  unreachable

765:                                              ; preds = %759
  br i1 false, label %766, label %779

766:                                              ; preds = %765
  br label %767

767:                                              ; preds = %766
  br label %768

768:                                              ; preds = %767
  br label %769

769:                                              ; preds = %768
  br label %770

770:                                              ; preds = %769
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), align 4
  br label %771

771:                                              ; preds = %770
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22784), align 4
  br i1 false, label %.loopexit44, label %772

772:                                              ; preds = %771
  br label %773

773:                                              ; preds = %772
  br label %774

774:                                              ; preds = %773
  br label %775

775:                                              ; preds = %774
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22560), align 4
  br label %776

776:                                              ; preds = %775
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22816), align 4
  br i1 false, label %.loopexit44, label %777

777:                                              ; preds = %776
  br i1 false, label %760, label %778

778:                                              ; preds = %777
  unreachable

779:                                              ; preds = %765
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %780

780:                                              ; preds = %779
  br label %781

781:                                              ; preds = %780
  br label %782

782:                                              ; preds = %781
  br label %783

783:                                              ; preds = %782
  br label %784

784:                                              ; preds = %783
  br label %785

785:                                              ; preds = %784
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), align 4
  br label %786

786:                                              ; preds = %785
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24832), align 4
  br i1 false, label %.loopexit49, label %793

.loopexit49:                                      ; preds = %834, %829, %821, %816, %786, %797
  %.lcssa46.ph = phi i32 [ 0, %797 ], [ 0, %786 ], [ 1, %816 ], [ 1, %821 ], [ 2, %829 ], [ 2, %834 ]
  %.lcssa45.ph = phi i32 [ 1, %797 ], [ 0, %786 ], [ 0, %816 ], [ 1, %821 ], [ 0, %829 ], [ 1, %834 ]
  br label %787

787:                                              ; preds = %.loopexit49, %805
  %.lcssa46 = phi i32 [ %.lcssa48, %805 ], [ %.lcssa46.ph, %.loopexit49 ]
  %.lcssa45 = phi i32 [ 2, %805 ], [ %.lcssa45.ph, %.loopexit49 ]
  %788 = shl nuw nsw i32 %.lcssa45, 3
  %789 = or disjoint i32 128, %788
  %790 = or disjoint i32 %.lcssa46, %789
  %791 = zext nneg i32 %790 to i64
  %792 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %791
  store i32 1, ptr %792, align 4
  unreachable

793:                                              ; preds = %786
  br label %794

794:                                              ; preds = %793
  br label %795

795:                                              ; preds = %794
  br label %796

796:                                              ; preds = %795
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24608), align 4
  br label %797

797:                                              ; preds = %796
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24864), align 4
  br i1 false, label %.loopexit49, label %798

798:                                              ; preds = %797
  br i1 false, label %799, label %810

799:                                              ; preds = %835, %822, %798
  %.lcssa48 = phi i32 [ 0, %798 ], [ 1, %822 ], [ 2, %835 ]
  br label %800

800:                                              ; preds = %799
  br label %801

801:                                              ; preds = %800
  %802 = or disjoint i32 %.lcssa48, 16
  %803 = zext nneg i32 %802 to i64
  %804 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %803
  store i32 1, ptr %804, align 4
  br label %805

805:                                              ; preds = %801
  %806 = or disjoint i32 %.lcssa48, 80
  %807 = zext nneg i32 %806 to i64
  %808 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %807
  store i32 1, ptr %808, align 4
  br i1 false, label %787, label %809

809:                                              ; preds = %805
  unreachable

810:                                              ; preds = %798
  br label %811

811:                                              ; preds = %810
  br label %812

812:                                              ; preds = %811
  br label %813

813:                                              ; preds = %812
  br label %814

814:                                              ; preds = %813
  br label %815

815:                                              ; preds = %814
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24580), align 4
  br label %816

816:                                              ; preds = %815
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24836), align 4
  br i1 false, label %.loopexit49, label %817

817:                                              ; preds = %816
  br label %818

818:                                              ; preds = %817
  br label %819

819:                                              ; preds = %818
  br label %820

820:                                              ; preds = %819
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24612), align 4
  br label %821

821:                                              ; preds = %820
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24868), align 4
  br i1 false, label %.loopexit49, label %822

822:                                              ; preds = %821
  br i1 false, label %799, label %823

823:                                              ; preds = %822
  br i1 false, label %824, label %837

824:                                              ; preds = %823
  br label %825

825:                                              ; preds = %824
  br label %826

826:                                              ; preds = %825
  br label %827

827:                                              ; preds = %826
  br label %828

828:                                              ; preds = %827
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24584), align 4
  br label %829

829:                                              ; preds = %828
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24840), align 4
  br i1 false, label %.loopexit49, label %830

830:                                              ; preds = %829
  br label %831

831:                                              ; preds = %830
  br label %832

832:                                              ; preds = %831
  br label %833

833:                                              ; preds = %832
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24616), align 4
  br label %834

834:                                              ; preds = %833
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24872), align 4
  br i1 false, label %.loopexit49, label %835

835:                                              ; preds = %834
  br i1 false, label %799, label %836

836:                                              ; preds = %835
  unreachable

837:                                              ; preds = %823
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 0, ptr @kount, align 4
  %838 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %838, 0
  br i1 %.not, label %841, label %839

839:                                              ; preds = %837
  %840 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %840, ptr @n, align 4
  br label %842

841:                                              ; preds = %837
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %.pre = load i32, ptr @n, align 4
  br label %842

842:                                              ; preds = %841, %839
  %843 = phi i32 [ %.pre, %841 ], [ %840, %839 ]
  %844 = call i32 @Trial(i32 noundef %843)
  %.not1 = icmp eq i32 %844, 0
  br i1 %.not1, label %845, label %846

845:                                              ; preds = %842
  %puts2 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %850

846:                                              ; preds = %842
  %847 = load i32, ptr @kount, align 4
  %.not3 = icmp eq i32 %847, 2005
  br i1 %.not3, label %849, label %848

848:                                              ; preds = %846
  %puts4 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %849

849:                                              ; preds = %848, %846
  br label %850

850:                                              ; preds = %849, %845
  %851 = load i32, ptr @n, align 4
  %852 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %851) #3
  %853 = load i32, ptr @kount, align 4
  %854 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %853) #3
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
