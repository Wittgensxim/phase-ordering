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

1:                                                ; preds = %4, %0
  %2 = phi i32 [ %7, %4 ], [ 0, %0 ]
  %3 = icmp samesign ult i32 %2, 512
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = zext nneg i32 %2 to i64
  %6 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %5
  store i32 1, ptr %6, align 4
  %7 = add nuw nsw i32 %2, 1
  br label %1, !llvm.loop !13

8:                                                ; preds = %1
  br label %9

9:                                                ; preds = %30, %8
  %10 = phi i32 [ %31, %30 ], [ 1, %8 ]
  %11 = icmp samesign ult i32 %10, 6
  br i1 %11, label %12, label %32

12:                                               ; preds = %9
  br label %13

13:                                               ; preds = %28, %12
  %14 = phi i32 [ %29, %28 ], [ 1, %12 ]
  %15 = icmp samesign ult i32 %14, 6
  br i1 %15, label %16, label %30

16:                                               ; preds = %13
  br label %17

17:                                               ; preds = %20, %16
  %18 = phi i32 [ %27, %20 ], [ 1, %16 ]
  %19 = icmp samesign ult i32 %18, 6
  br i1 %19, label %20, label %28

20:                                               ; preds = %17
  %21 = shl nuw nsw i32 %18, 6
  %22 = shl nuw nsw i32 %14, 3
  %23 = or disjoint i32 %21, %22
  %24 = or disjoint i32 %10, %23
  %25 = zext nneg i32 %24 to i64
  %26 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %25
  store i32 0, ptr %26, align 4
  %27 = add nuw nsw i32 %18, 1
  br label %17, !llvm.loop !14

28:                                               ; preds = %17
  %29 = add nuw nsw i32 %14, 1
  br label %13, !llvm.loop !15

30:                                               ; preds = %13
  %31 = add nuw nsw i32 %10, 1
  br label %9, !llvm.loop !16

32:                                               ; preds = %9
  br label %33

33:                                               ; preds = %46, %32
  %34 = phi i32 [ %47, %46 ], [ 0, %32 ]
  %35 = icmp samesign ult i32 %34, 13
  br i1 %35, label %36, label %48

36:                                               ; preds = %33
  br label %37

37:                                               ; preds = %40, %36
  %38 = phi i32 [ %45, %40 ], [ 0, %36 ]
  %39 = icmp samesign ult i32 %38, 512
  br i1 %39, label %40, label %46

40:                                               ; preds = %37
  %41 = zext nneg i32 %34 to i64
  %42 = getelementptr inbounds nuw [2048 x i8], ptr @p, i64 %41
  %43 = zext nneg i32 %38 to i64
  %44 = getelementptr inbounds nuw [4 x i8], ptr %42, i64 %43
  store i32 0, ptr %44, align 4
  %45 = add nuw nsw i32 %38, 1
  br label %37, !llvm.loop !17

46:                                               ; preds = %37
  %47 = add nuw nsw i32 %34, 1
  br label %33, !llvm.loop !18

48:                                               ; preds = %33
  br label %49

49:                                               ; preds = %66, %48
  %50 = phi i32 [ %67, %66 ], [ 0, %48 ]
  %51 = icmp samesign ult i32 %50, 4
  br i1 %51, label %52, label %68

52:                                               ; preds = %49
  br label %53

53:                                               ; preds = %64, %52
  %54 = phi i32 [ %65, %64 ], [ 0, %52 ]
  %55 = icmp samesign ult i32 %54, 2
  br i1 %55, label %56, label %66

56:                                               ; preds = %53
  br label %57

57:                                               ; preds = %59, %56
  %58 = phi i1 [ false, %59 ], [ true, %56 ]
  br i1 %58, label %59, label %64

59:                                               ; preds = %57
  %60 = shl nuw nsw i32 %54, 3
  %61 = or disjoint i32 %50, %60
  %62 = zext nneg i32 %61 to i64
  %63 = getelementptr inbounds nuw [4 x i8], ptr @p, i64 %62
  store i32 1, ptr %63, align 4
  br label %57, !llvm.loop !19

64:                                               ; preds = %57
  %65 = add nuw nsw i32 %54, 1
  br label %53, !llvm.loop !20

66:                                               ; preds = %53
  %67 = add nuw nsw i32 %50, 1
  br label %49, !llvm.loop !21

68:                                               ; preds = %49
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %69

69:                                               ; preds = %86, %68
  %70 = phi i32 [ %87, %86 ], [ 0, %68 ]
  %71 = icmp samesign ult i32 %70, 2
  br i1 %71, label %72, label %88

72:                                               ; preds = %69
  br label %73

73:                                               ; preds = %85, %72
  %74 = phi i1 [ false, %85 ], [ true, %72 ]
  br i1 %74, label %75, label %86

75:                                               ; preds = %73
  br label %76

76:                                               ; preds = %79, %75
  %77 = phi i32 [ %84, %79 ], [ 0, %75 ]
  %78 = icmp samesign ult i32 %77, 4
  br i1 %78, label %79, label %85

79:                                               ; preds = %76
  %80 = shl nuw nsw i32 %77, 6
  %81 = or disjoint i32 %70, %80
  %82 = zext nneg i32 %81 to i64
  %83 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %82
  store i32 1, ptr %83, align 4
  %84 = add nuw nsw i32 %77, 1
  br label %76, !llvm.loop !22

85:                                               ; preds = %76
  br label %73, !llvm.loop !23

86:                                               ; preds = %73
  %87 = add nuw nsw i32 %70, 1
  br label %69, !llvm.loop !24

88:                                               ; preds = %69
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %89

89:                                               ; preds = %108, %88
  %90 = phi i1 [ false, %108 ], [ true, %88 ]
  br i1 %90, label %91, label %109

91:                                               ; preds = %89
  br label %92

92:                                               ; preds = %106, %91
  %93 = phi i32 [ %107, %106 ], [ 0, %91 ]
  %94 = icmp samesign ult i32 %93, 4
  br i1 %94, label %95, label %108

95:                                               ; preds = %92
  br label %96

96:                                               ; preds = %99, %95
  %97 = phi i32 [ %105, %99 ], [ 0, %95 ]
  %98 = icmp samesign ult i32 %97, 2
  br i1 %98, label %99, label %106

99:                                               ; preds = %96
  %100 = shl nuw nsw i32 %97, 6
  %101 = shl nuw nsw i32 %93, 3
  %102 = or disjoint i32 %100, %101
  %103 = zext nneg i32 %102 to i64
  %104 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %103
  store i32 1, ptr %104, align 4
  %105 = add nuw nsw i32 %97, 1
  br label %96, !llvm.loop !25

106:                                              ; preds = %96
  %107 = add nuw nsw i32 %93, 1
  br label %92, !llvm.loop !26

108:                                              ; preds = %92
  br label %89, !llvm.loop !27

109:                                              ; preds = %89
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %110

110:                                              ; preds = %127, %109
  %111 = phi i32 [ %128, %127 ], [ 0, %109 ]
  %112 = icmp samesign ult i32 %111, 2
  br i1 %112, label %113, label %129

113:                                              ; preds = %110
  br label %114

114:                                              ; preds = %125, %113
  %115 = phi i32 [ %126, %125 ], [ 0, %113 ]
  %116 = icmp samesign ult i32 %115, 4
  br i1 %116, label %117, label %127

117:                                              ; preds = %114
  br label %118

118:                                              ; preds = %120, %117
  %119 = phi i1 [ false, %120 ], [ true, %117 ]
  br i1 %119, label %120, label %125

120:                                              ; preds = %118
  %121 = shl nuw nsw i32 %115, 3
  %122 = or disjoint i32 %111, %121
  %123 = zext nneg i32 %122 to i64
  %124 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %123
  store i32 1, ptr %124, align 4
  br label %118, !llvm.loop !28

125:                                              ; preds = %118
  %126 = add nuw nsw i32 %115, 1
  br label %114, !llvm.loop !29

127:                                              ; preds = %114
  %128 = add nuw nsw i32 %111, 1
  br label %110, !llvm.loop !30

129:                                              ; preds = %110
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %130

130:                                              ; preds = %147, %129
  %131 = phi i32 [ %148, %147 ], [ 0, %129 ]
  %132 = icmp samesign ult i32 %131, 4
  br i1 %132, label %133, label %149

133:                                              ; preds = %130
  br label %134

134:                                              ; preds = %146, %133
  %135 = phi i1 [ false, %146 ], [ true, %133 ]
  br i1 %135, label %136, label %147

136:                                              ; preds = %134
  br label %137

137:                                              ; preds = %140, %136
  %138 = phi i32 [ %145, %140 ], [ 0, %136 ]
  %139 = icmp samesign ult i32 %138, 2
  br i1 %139, label %140, label %146

140:                                              ; preds = %137
  %141 = shl nuw nsw i32 %138, 6
  %142 = or disjoint i32 %131, %141
  %143 = zext nneg i32 %142 to i64
  %144 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %143
  store i32 1, ptr %144, align 4
  %145 = add nuw nsw i32 %138, 1
  br label %137, !llvm.loop !31

146:                                              ; preds = %137
  br label %134, !llvm.loop !32

147:                                              ; preds = %134
  %148 = add nuw nsw i32 %131, 1
  br label %130, !llvm.loop !33

149:                                              ; preds = %130
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %150

150:                                              ; preds = %169, %149
  %151 = phi i1 [ false, %169 ], [ true, %149 ]
  br i1 %151, label %152, label %170

152:                                              ; preds = %150
  br label %153

153:                                              ; preds = %167, %152
  %154 = phi i32 [ %168, %167 ], [ 0, %152 ]
  %155 = icmp samesign ult i32 %154, 2
  br i1 %155, label %156, label %169

156:                                              ; preds = %153
  br label %157

157:                                              ; preds = %160, %156
  %158 = phi i32 [ %166, %160 ], [ 0, %156 ]
  %159 = icmp samesign ult i32 %158, 4
  br i1 %159, label %160, label %167

160:                                              ; preds = %157
  %161 = shl nuw nsw i32 %158, 6
  %162 = shl nuw nsw i32 %154, 3
  %163 = or disjoint i32 %161, %162
  %164 = zext nneg i32 %163 to i64
  %165 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %164
  store i32 1, ptr %165, align 4
  %166 = add nuw nsw i32 %158, 1
  br label %157, !llvm.loop !34

167:                                              ; preds = %157
  %168 = add nuw nsw i32 %154, 1
  br label %153, !llvm.loop !35

169:                                              ; preds = %153
  br label %150, !llvm.loop !36

170:                                              ; preds = %150
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %171

171:                                              ; preds = %184, %170
  %172 = phi i32 [ %185, %184 ], [ 0, %170 ]
  %173 = icmp samesign ult i32 %172, 3
  br i1 %173, label %174, label %186

174:                                              ; preds = %171
  br label %175

175:                                              ; preds = %183, %174
  %176 = phi i1 [ false, %183 ], [ true, %174 ]
  br i1 %176, label %177, label %184

177:                                              ; preds = %175
  br label %178

178:                                              ; preds = %180, %177
  %179 = phi i1 [ false, %180 ], [ true, %177 ]
  br i1 %179, label %180, label %183

180:                                              ; preds = %178
  %181 = zext nneg i32 %172 to i64
  %182 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %181
  store i32 1, ptr %182, align 4
  br label %178, !llvm.loop !37

183:                                              ; preds = %178
  br label %175, !llvm.loop !38

184:                                              ; preds = %175
  %185 = add nuw nsw i32 %172, 1
  br label %171, !llvm.loop !39

186:                                              ; preds = %171
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %187

187:                                              ; preds = %202, %186
  %188 = phi i1 [ false, %202 ], [ true, %186 ]
  br i1 %188, label %189, label %203

189:                                              ; preds = %187
  br label %190

190:                                              ; preds = %200, %189
  %191 = phi i32 [ %201, %200 ], [ 0, %189 ]
  %192 = icmp samesign ult i32 %191, 3
  br i1 %192, label %193, label %202

193:                                              ; preds = %190
  br label %194

194:                                              ; preds = %196, %193
  %195 = phi i1 [ false, %196 ], [ true, %193 ]
  br i1 %195, label %196, label %200

196:                                              ; preds = %194
  %197 = shl nuw nsw i32 %191, 3
  %198 = zext nneg i32 %197 to i64
  %199 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %198
  store i32 1, ptr %199, align 4
  br label %194, !llvm.loop !40

200:                                              ; preds = %194
  %201 = add nuw nsw i32 %191, 1
  br label %190, !llvm.loop !41

202:                                              ; preds = %190
  br label %187, !llvm.loop !42

203:                                              ; preds = %187
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %204

204:                                              ; preds = %219, %203
  %205 = phi i1 [ false, %219 ], [ true, %203 ]
  br i1 %205, label %206, label %220

206:                                              ; preds = %204
  br label %207

207:                                              ; preds = %218, %206
  %208 = phi i1 [ false, %218 ], [ true, %206 ]
  br i1 %208, label %209, label %219

209:                                              ; preds = %207
  br label %210

210:                                              ; preds = %213, %209
  %211 = phi i32 [ %217, %213 ], [ 0, %209 ]
  %212 = icmp samesign ult i32 %211, 3
  br i1 %212, label %213, label %218

213:                                              ; preds = %210
  %214 = shl nuw nsw i32 %211, 6
  %215 = zext nneg i32 %214 to i64
  %216 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %215
  store i32 1, ptr %216, align 4
  %217 = add nuw nsw i32 %211, 1
  br label %210, !llvm.loop !43

218:                                              ; preds = %210
  br label %207, !llvm.loop !44

219:                                              ; preds = %207
  br label %204, !llvm.loop !45

220:                                              ; preds = %204
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %221

221:                                              ; preds = %238, %220
  %222 = phi i32 [ %239, %238 ], [ 0, %220 ]
  %223 = icmp samesign ult i32 %222, 2
  br i1 %223, label %224, label %240

224:                                              ; preds = %221
  br label %225

225:                                              ; preds = %236, %224
  %226 = phi i32 [ %237, %236 ], [ 0, %224 ]
  %227 = icmp samesign ult i32 %226, 2
  br i1 %227, label %228, label %238

228:                                              ; preds = %225
  br label %229

229:                                              ; preds = %231, %228
  %230 = phi i1 [ false, %231 ], [ true, %228 ]
  br i1 %230, label %231, label %236

231:                                              ; preds = %229
  %232 = shl nuw nsw i32 %226, 3
  %233 = or disjoint i32 %222, %232
  %234 = zext nneg i32 %233 to i64
  %235 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %234
  store i32 1, ptr %235, align 4
  br label %229, !llvm.loop !46

236:                                              ; preds = %229
  %237 = add nuw nsw i32 %226, 1
  br label %225, !llvm.loop !47

238:                                              ; preds = %225
  %239 = add nuw nsw i32 %222, 1
  br label %221, !llvm.loop !48

240:                                              ; preds = %221
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %241

241:                                              ; preds = %258, %240
  %242 = phi i32 [ %259, %258 ], [ 0, %240 ]
  %243 = icmp samesign ult i32 %242, 2
  br i1 %243, label %244, label %260

244:                                              ; preds = %241
  br label %245

245:                                              ; preds = %257, %244
  %246 = phi i1 [ false, %257 ], [ true, %244 ]
  br i1 %246, label %247, label %258

247:                                              ; preds = %245
  br label %248

248:                                              ; preds = %251, %247
  %249 = phi i32 [ %256, %251 ], [ 0, %247 ]
  %250 = icmp samesign ult i32 %249, 2
  br i1 %250, label %251, label %257

251:                                              ; preds = %248
  %252 = shl nuw nsw i32 %249, 6
  %253 = or disjoint i32 %242, %252
  %254 = zext nneg i32 %253 to i64
  %255 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %254
  store i32 1, ptr %255, align 4
  %256 = add nuw nsw i32 %249, 1
  br label %248, !llvm.loop !49

257:                                              ; preds = %248
  br label %245, !llvm.loop !50

258:                                              ; preds = %245
  %259 = add nuw nsw i32 %242, 1
  br label %241, !llvm.loop !51

260:                                              ; preds = %241
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %261

261:                                              ; preds = %280, %260
  %262 = phi i1 [ false, %280 ], [ true, %260 ]
  br i1 %262, label %263, label %281

263:                                              ; preds = %261
  br label %264

264:                                              ; preds = %278, %263
  %265 = phi i32 [ %279, %278 ], [ 0, %263 ]
  %266 = icmp samesign ult i32 %265, 2
  br i1 %266, label %267, label %280

267:                                              ; preds = %264
  br label %268

268:                                              ; preds = %271, %267
  %269 = phi i32 [ %277, %271 ], [ 0, %267 ]
  %270 = icmp samesign ult i32 %269, 2
  br i1 %270, label %271, label %278

271:                                              ; preds = %268
  %272 = shl nuw nsw i32 %269, 6
  %273 = shl nuw nsw i32 %265, 3
  %274 = or disjoint i32 %272, %273
  %275 = zext nneg i32 %274 to i64
  %276 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %275
  store i32 1, ptr %276, align 4
  %277 = add nuw nsw i32 %269, 1
  br label %268, !llvm.loop !52

278:                                              ; preds = %268
  %279 = add nuw nsw i32 %265, 1
  br label %264, !llvm.loop !53

280:                                              ; preds = %264
  br label %261, !llvm.loop !54

281:                                              ; preds = %261
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %282

282:                                              ; preds = %303, %281
  %283 = phi i32 [ %304, %303 ], [ 0, %281 ]
  %284 = icmp samesign ult i32 %283, 2
  br i1 %284, label %285, label %305

285:                                              ; preds = %282
  br label %286

286:                                              ; preds = %301, %285
  %287 = phi i32 [ %302, %301 ], [ 0, %285 ]
  %288 = icmp samesign ult i32 %287, 2
  br i1 %288, label %289, label %303

289:                                              ; preds = %286
  br label %290

290:                                              ; preds = %293, %289
  %291 = phi i32 [ %300, %293 ], [ 0, %289 ]
  %292 = icmp samesign ult i32 %291, 2
  br i1 %292, label %293, label %301

293:                                              ; preds = %290
  %294 = shl nuw nsw i32 %291, 6
  %295 = shl nuw nsw i32 %287, 3
  %296 = or disjoint i32 %294, %295
  %297 = or disjoint i32 %283, %296
  %298 = zext nneg i32 %297 to i64
  %299 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %298
  store i32 1, ptr %299, align 4
  %300 = add nuw nsw i32 %291, 1
  br label %290, !llvm.loop !55

301:                                              ; preds = %290
  %302 = add nuw nsw i32 %287, 1
  br label %286, !llvm.loop !56

303:                                              ; preds = %286
  %304 = add nuw nsw i32 %283, 1
  br label %282, !llvm.loop !57

305:                                              ; preds = %282
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 0, ptr @kount, align 4
  %306 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %306, 0
  br i1 %.not, label %309, label %307

307:                                              ; preds = %305
  %308 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %308, ptr @n, align 4
  br label %310

309:                                              ; preds = %305
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %.pre = load i32, ptr @n, align 4
  br label %310

310:                                              ; preds = %309, %307
  %311 = phi i32 [ %.pre, %309 ], [ %308, %307 ]
  %312 = call i32 @Trial(i32 noundef %311)
  %.not1 = icmp eq i32 %312, 0
  br i1 %.not1, label %313, label %314

313:                                              ; preds = %310
  %puts2 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %318

314:                                              ; preds = %310
  %315 = load i32, ptr @kount, align 4
  %.not3 = icmp eq i32 %315, 2005
  br i1 %.not3, label %317, label %316

316:                                              ; preds = %314
  %puts4 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %317

317:                                              ; preds = %316, %314
  br label %318

318:                                              ; preds = %317, %313
  %319 = load i32, ptr @n, align 4
  %320 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %319) #3
  %321 = load i32, ptr @kount, align 4
  %322 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %321) #3
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
  br label %1, !llvm.loop !58

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
