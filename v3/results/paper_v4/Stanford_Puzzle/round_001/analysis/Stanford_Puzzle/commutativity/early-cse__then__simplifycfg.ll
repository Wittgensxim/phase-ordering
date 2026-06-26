; ModuleID = 'results\paper_v4\Stanford_Puzzle\round_000\output.ll'
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

3:                                                ; preds = %15, %2
  %4 = phi i32 [ %16, %15 ], [ 0, %2 ]
  %.not = icmp sgt i32 %4, %.pre
  br i1 %.not, label %17, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  %7 = zext nneg i32 %4 to i64
  %8 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4
  %.not2 = icmp eq i32 %9, 0
  br i1 %.not2, label %15, label %10

10:                                               ; preds = %5
  %11 = add nsw i32 %1, %4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %12
  %14 = load i32, ptr %13, align 4
  %.not3 = icmp eq i32 %14, 0
  br i1 %.not3, label %15, label %17

15:                                               ; preds = %10, %5
  %16 = add nuw nsw i32 %4, 1
  br label %3, !llvm.loop !7

17:                                               ; preds = %3, %10
  %18 = phi i32 [ 0, %10 ], [ 1, %3 ]
  ret i32 %18
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

23:                                               ; preds = %30, %16
  %24 = phi i32 [ %31, %30 ], [ %1, %16 ]
  %25 = icmp slt i32 %24, 512
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = sext i32 %24 to i64
  %28 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %27
  %29 = load i32, ptr %28, align 4
  %.not2 = icmp eq i32 %29, 0
  br i1 %.not2, label %32, label %30

30:                                               ; preds = %26
  %31 = add nsw i32 %24, 1
  br label %23, !llvm.loop !10

32:                                               ; preds = %23, %26
  %33 = phi i32 [ %24, %26 ], [ 0, %23 ]
  ret i32 %33
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

4:                                                ; preds = %21, %1
  %5 = phi i32 [ %22, %21 ], [ 0, %1 ]
  %6 = icmp samesign ult i32 %5, 13
  br i1 %6, label %7, label %23

7:                                                ; preds = %4
  %8 = zext nneg i32 %5 to i64
  %9 = getelementptr inbounds nuw [4 x i8], ptr @class, i64 %8
  %10 = load i32, ptr %9, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %11
  %13 = load i32, ptr %12, align 4
  %.not = icmp eq i32 %13, 0
  br i1 %.not, label %21, label %14

14:                                               ; preds = %7
  %15 = call i32 @Fit(i32 noundef %5, i32 noundef %0)
  %.not1 = icmp eq i32 %15, 0
  br i1 %.not1, label %21, label %16

16:                                               ; preds = %14
  %17 = call i32 @Place(i32 noundef %5, i32 noundef %0)
  %18 = call i32 @Trial(i32 noundef %17)
  %.not2 = icmp ne i32 %18, 0
  %19 = icmp eq i32 %17, 0
  %or.cond = or i1 %.not2, %19
  br i1 %or.cond, label %23, label %20

20:                                               ; preds = %16
  call void @Remove(i32 noundef %5, i32 noundef %0)
  br label %21

21:                                               ; preds = %14, %20, %7
  %22 = add nuw nsw i32 %5, 1
  br label %4, !llvm.loop !12

23:                                               ; preds = %4, %16
  %24 = phi i32 [ 1, %16 ], [ 0, %4 ]
  ret i32 %24
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

8:                                                ; preds = %1, %27
  %9 = phi i32 [ %28, %27 ], [ 1, %1 ]
  %10 = icmp samesign ult i32 %9, 6
  br i1 %10, label %11, label %29

11:                                               ; preds = %8, %25
  %12 = phi i32 [ %26, %25 ], [ 1, %8 ]
  %13 = icmp samesign ult i32 %12, 6
  br i1 %13, label %14, label %27

14:                                               ; preds = %11, %17
  %15 = phi i32 [ %24, %17 ], [ 1, %11 ]
  %16 = icmp samesign ult i32 %15, 6
  br i1 %16, label %17, label %25

17:                                               ; preds = %14
  %18 = shl nuw nsw i32 %15, 6
  %19 = shl nuw nsw i32 %12, 3
  %20 = or disjoint i32 %18, %19
  %21 = or disjoint i32 %9, %20
  %22 = zext nneg i32 %21 to i64
  %23 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %22
  store i32 0, ptr %23, align 4
  %24 = add nuw nsw i32 %15, 1
  br label %14, !llvm.loop !14

25:                                               ; preds = %14
  %26 = add nuw nsw i32 %12, 1
  br label %11, !llvm.loop !15

27:                                               ; preds = %11
  %28 = add nuw nsw i32 %9, 1
  br label %8, !llvm.loop !16

29:                                               ; preds = %8, %41
  %30 = phi i32 [ %42, %41 ], [ 0, %8 ]
  %31 = icmp samesign ult i32 %30, 13
  br i1 %31, label %32, label %43

32:                                               ; preds = %29, %35
  %33 = phi i32 [ %40, %35 ], [ 0, %29 ]
  %34 = icmp samesign ult i32 %33, 512
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = zext nneg i32 %30 to i64
  %37 = getelementptr inbounds nuw [2048 x i8], ptr @p, i64 %36
  %38 = zext nneg i32 %33 to i64
  %39 = getelementptr inbounds nuw [4 x i8], ptr %37, i64 %38
  store i32 0, ptr %39, align 4
  %40 = add nuw nsw i32 %33, 1
  br label %32, !llvm.loop !17

41:                                               ; preds = %32
  %42 = add nuw nsw i32 %30, 1
  br label %29, !llvm.loop !18

43:                                               ; preds = %29, %58
  %44 = phi i32 [ %59, %58 ], [ 0, %29 ]
  %45 = icmp samesign ult i32 %44, 4
  br i1 %45, label %46, label %60

46:                                               ; preds = %43, %56
  %47 = phi i32 [ %57, %56 ], [ 0, %43 ]
  %48 = icmp samesign ult i32 %47, 2
  br i1 %48, label %49, label %58

49:                                               ; preds = %46, %51
  %50 = phi i1 [ false, %51 ], [ true, %46 ]
  br i1 %50, label %51, label %56

51:                                               ; preds = %49
  %52 = shl nuw nsw i32 %47, 3
  %53 = or disjoint i32 %44, %52
  %54 = zext nneg i32 %53 to i64
  %55 = getelementptr inbounds nuw [4 x i8], ptr @p, i64 %54
  store i32 1, ptr %55, align 4
  br label %49, !llvm.loop !19

56:                                               ; preds = %49
  %57 = add nuw nsw i32 %47, 1
  br label %46, !llvm.loop !20

58:                                               ; preds = %46
  %59 = add nuw nsw i32 %44, 1
  br label %43, !llvm.loop !21

60:                                               ; preds = %43
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %61

61:                                               ; preds = %75, %60
  %62 = phi i32 [ %76, %75 ], [ 0, %60 ]
  %63 = icmp samesign ult i32 %62, 2
  br i1 %63, label %64, label %77

64:                                               ; preds = %66, %61
  %65 = phi i1 [ true, %61 ], [ false, %66 ]
  br i1 %65, label %66, label %75

66:                                               ; preds = %64, %69
  %67 = phi i32 [ %74, %69 ], [ 0, %64 ]
  %68 = icmp samesign ult i32 %67, 4
  br i1 %68, label %69, label %64, !llvm.loop !22

69:                                               ; preds = %66
  %70 = shl nuw nsw i32 %67, 6
  %71 = or disjoint i32 %62, %70
  %72 = zext nneg i32 %71 to i64
  %73 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %72
  store i32 1, ptr %73, align 4
  %74 = add nuw nsw i32 %67, 1
  br label %66, !llvm.loop !23

75:                                               ; preds = %64
  %76 = add nuw nsw i32 %62, 1
  br label %61, !llvm.loop !24

77:                                               ; preds = %61
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %78

78:                                               ; preds = %80, %77
  %79 = phi i1 [ true, %77 ], [ false, %80 ]
  br i1 %79, label %80, label %95

80:                                               ; preds = %78, %93
  %81 = phi i32 [ %94, %93 ], [ 0, %78 ]
  %82 = icmp samesign ult i32 %81, 4
  br i1 %82, label %83, label %78, !llvm.loop !25

83:                                               ; preds = %80, %86
  %84 = phi i32 [ %92, %86 ], [ 0, %80 ]
  %85 = icmp samesign ult i32 %84, 2
  br i1 %85, label %86, label %93

86:                                               ; preds = %83
  %87 = shl nuw nsw i32 %84, 6
  %88 = shl nuw nsw i32 %81, 3
  %89 = or disjoint i32 %87, %88
  %90 = zext nneg i32 %89 to i64
  %91 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %90
  store i32 1, ptr %91, align 4
  %92 = add nuw nsw i32 %84, 1
  br label %83, !llvm.loop !26

93:                                               ; preds = %83
  %94 = add nuw nsw i32 %81, 1
  br label %80, !llvm.loop !27

95:                                               ; preds = %78
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %96

96:                                               ; preds = %111, %95
  %97 = phi i32 [ %112, %111 ], [ 0, %95 ]
  %98 = icmp samesign ult i32 %97, 2
  br i1 %98, label %99, label %113

99:                                               ; preds = %96, %109
  %100 = phi i32 [ %110, %109 ], [ 0, %96 ]
  %101 = icmp samesign ult i32 %100, 4
  br i1 %101, label %102, label %111

102:                                              ; preds = %99, %104
  %103 = phi i1 [ false, %104 ], [ true, %99 ]
  br i1 %103, label %104, label %109

104:                                              ; preds = %102
  %105 = shl nuw nsw i32 %100, 3
  %106 = or disjoint i32 %97, %105
  %107 = zext nneg i32 %106 to i64
  %108 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %107
  store i32 1, ptr %108, align 4
  br label %102, !llvm.loop !28

109:                                              ; preds = %102
  %110 = add nuw nsw i32 %100, 1
  br label %99, !llvm.loop !29

111:                                              ; preds = %99
  %112 = add nuw nsw i32 %97, 1
  br label %96, !llvm.loop !30

113:                                              ; preds = %96
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %114

114:                                              ; preds = %128, %113
  %115 = phi i32 [ %129, %128 ], [ 0, %113 ]
  %116 = icmp samesign ult i32 %115, 4
  br i1 %116, label %117, label %130

117:                                              ; preds = %119, %114
  %118 = phi i1 [ true, %114 ], [ false, %119 ]
  br i1 %118, label %119, label %128

119:                                              ; preds = %117, %122
  %120 = phi i32 [ %127, %122 ], [ 0, %117 ]
  %121 = icmp samesign ult i32 %120, 2
  br i1 %121, label %122, label %117, !llvm.loop !31

122:                                              ; preds = %119
  %123 = shl nuw nsw i32 %120, 6
  %124 = or disjoint i32 %115, %123
  %125 = zext nneg i32 %124 to i64
  %126 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %125
  store i32 1, ptr %126, align 4
  %127 = add nuw nsw i32 %120, 1
  br label %119, !llvm.loop !32

128:                                              ; preds = %117
  %129 = add nuw nsw i32 %115, 1
  br label %114, !llvm.loop !33

130:                                              ; preds = %114
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %131

131:                                              ; preds = %133, %130
  %132 = phi i1 [ true, %130 ], [ false, %133 ]
  br i1 %132, label %133, label %148

133:                                              ; preds = %131, %146
  %134 = phi i32 [ %147, %146 ], [ 0, %131 ]
  %135 = icmp samesign ult i32 %134, 2
  br i1 %135, label %136, label %131, !llvm.loop !34

136:                                              ; preds = %133, %139
  %137 = phi i32 [ %145, %139 ], [ 0, %133 ]
  %138 = icmp samesign ult i32 %137, 4
  br i1 %138, label %139, label %146

139:                                              ; preds = %136
  %140 = shl nuw nsw i32 %137, 6
  %141 = shl nuw nsw i32 %134, 3
  %142 = or disjoint i32 %140, %141
  %143 = zext nneg i32 %142 to i64
  %144 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %143
  store i32 1, ptr %144, align 4
  %145 = add nuw nsw i32 %137, 1
  br label %136, !llvm.loop !35

146:                                              ; preds = %136
  %147 = add nuw nsw i32 %134, 1
  br label %133, !llvm.loop !36

148:                                              ; preds = %131
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %149

149:                                              ; preds = %159, %148
  %150 = phi i32 [ %160, %159 ], [ 0, %148 ]
  %151 = icmp samesign ult i32 %150, 3
  br i1 %151, label %152, label %161

152:                                              ; preds = %154, %149
  %153 = phi i1 [ true, %149 ], [ false, %154 ]
  br i1 %153, label %154, label %159

154:                                              ; preds = %152, %156
  %155 = phi i1 [ false, %156 ], [ true, %152 ]
  br i1 %155, label %156, label %152, !llvm.loop !37

156:                                              ; preds = %154
  %157 = zext nneg i32 %150 to i64
  %158 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %157
  store i32 1, ptr %158, align 4
  br label %154, !llvm.loop !38

159:                                              ; preds = %152
  %160 = add nuw nsw i32 %150, 1
  br label %149, !llvm.loop !39

161:                                              ; preds = %149
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %162

162:                                              ; preds = %164, %161
  %163 = phi i1 [ true, %161 ], [ false, %164 ]
  br i1 %163, label %164, label %175

164:                                              ; preds = %162, %173
  %165 = phi i32 [ %174, %173 ], [ 0, %162 ]
  %166 = icmp samesign ult i32 %165, 3
  br i1 %166, label %167, label %162, !llvm.loop !40

167:                                              ; preds = %164, %169
  %168 = phi i1 [ false, %169 ], [ true, %164 ]
  br i1 %168, label %169, label %173

169:                                              ; preds = %167
  %170 = shl nuw nsw i32 %165, 3
  %171 = zext nneg i32 %170 to i64
  %172 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %171
  store i32 1, ptr %172, align 4
  br label %167, !llvm.loop !41

173:                                              ; preds = %167
  %174 = add nuw nsw i32 %165, 1
  br label %164, !llvm.loop !42

175:                                              ; preds = %162
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %176

176:                                              ; preds = %178, %175
  %177 = phi i1 [ true, %175 ], [ false, %178 ]
  br i1 %177, label %178, label %188

178:                                              ; preds = %180, %176
  %179 = phi i1 [ true, %176 ], [ false, %180 ]
  br i1 %179, label %180, label %176, !llvm.loop !43

180:                                              ; preds = %178, %183
  %181 = phi i32 [ %187, %183 ], [ 0, %178 ]
  %182 = icmp samesign ult i32 %181, 3
  br i1 %182, label %183, label %178, !llvm.loop !44

183:                                              ; preds = %180
  %184 = shl nuw nsw i32 %181, 6
  %185 = zext nneg i32 %184 to i64
  %186 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %185
  store i32 1, ptr %186, align 4
  %187 = add nuw nsw i32 %181, 1
  br label %180, !llvm.loop !45

188:                                              ; preds = %176
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %189

189:                                              ; preds = %204, %188
  %190 = phi i32 [ %205, %204 ], [ 0, %188 ]
  %191 = icmp samesign ult i32 %190, 2
  br i1 %191, label %192, label %206

192:                                              ; preds = %189, %202
  %193 = phi i32 [ %203, %202 ], [ 0, %189 ]
  %194 = icmp samesign ult i32 %193, 2
  br i1 %194, label %195, label %204

195:                                              ; preds = %192, %197
  %196 = phi i1 [ false, %197 ], [ true, %192 ]
  br i1 %196, label %197, label %202

197:                                              ; preds = %195
  %198 = shl nuw nsw i32 %193, 3
  %199 = or disjoint i32 %190, %198
  %200 = zext nneg i32 %199 to i64
  %201 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %200
  store i32 1, ptr %201, align 4
  br label %195, !llvm.loop !46

202:                                              ; preds = %195
  %203 = add nuw nsw i32 %193, 1
  br label %192, !llvm.loop !47

204:                                              ; preds = %192
  %205 = add nuw nsw i32 %190, 1
  br label %189, !llvm.loop !48

206:                                              ; preds = %189
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %207

207:                                              ; preds = %221, %206
  %208 = phi i32 [ %222, %221 ], [ 0, %206 ]
  %209 = icmp samesign ult i32 %208, 2
  br i1 %209, label %210, label %223

210:                                              ; preds = %212, %207
  %211 = phi i1 [ true, %207 ], [ false, %212 ]
  br i1 %211, label %212, label %221

212:                                              ; preds = %210, %215
  %213 = phi i32 [ %220, %215 ], [ 0, %210 ]
  %214 = icmp samesign ult i32 %213, 2
  br i1 %214, label %215, label %210, !llvm.loop !49

215:                                              ; preds = %212
  %216 = shl nuw nsw i32 %213, 6
  %217 = or disjoint i32 %208, %216
  %218 = zext nneg i32 %217 to i64
  %219 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %218
  store i32 1, ptr %219, align 4
  %220 = add nuw nsw i32 %213, 1
  br label %212, !llvm.loop !50

221:                                              ; preds = %210
  %222 = add nuw nsw i32 %208, 1
  br label %207, !llvm.loop !51

223:                                              ; preds = %207
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %224

224:                                              ; preds = %226, %223
  %225 = phi i1 [ true, %223 ], [ false, %226 ]
  br i1 %225, label %226, label %241

226:                                              ; preds = %224, %239
  %227 = phi i32 [ %240, %239 ], [ 0, %224 ]
  %228 = icmp samesign ult i32 %227, 2
  br i1 %228, label %229, label %224, !llvm.loop !52

229:                                              ; preds = %226, %232
  %230 = phi i32 [ %238, %232 ], [ 0, %226 ]
  %231 = icmp samesign ult i32 %230, 2
  br i1 %231, label %232, label %239

232:                                              ; preds = %229
  %233 = shl nuw nsw i32 %230, 6
  %234 = shl nuw nsw i32 %227, 3
  %235 = or disjoint i32 %233, %234
  %236 = zext nneg i32 %235 to i64
  %237 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %236
  store i32 1, ptr %237, align 4
  %238 = add nuw nsw i32 %230, 1
  br label %229, !llvm.loop !53

239:                                              ; preds = %229
  %240 = add nuw nsw i32 %227, 1
  br label %226, !llvm.loop !54

241:                                              ; preds = %224
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %242

242:                                              ; preds = %261, %241
  %243 = phi i32 [ %262, %261 ], [ 0, %241 ]
  %244 = icmp samesign ult i32 %243, 2
  br i1 %244, label %245, label %263

245:                                              ; preds = %242, %259
  %246 = phi i32 [ %260, %259 ], [ 0, %242 ]
  %247 = icmp samesign ult i32 %246, 2
  br i1 %247, label %248, label %261

248:                                              ; preds = %245, %251
  %249 = phi i32 [ %258, %251 ], [ 0, %245 ]
  %250 = icmp samesign ult i32 %249, 2
  br i1 %250, label %251, label %259

251:                                              ; preds = %248
  %252 = shl nuw nsw i32 %249, 6
  %253 = shl nuw nsw i32 %246, 3
  %254 = or disjoint i32 %252, %253
  %255 = or disjoint i32 %243, %254
  %256 = zext nneg i32 %255 to i64
  %257 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %256
  store i32 1, ptr %257, align 4
  %258 = add nuw nsw i32 %249, 1
  br label %248, !llvm.loop !55

259:                                              ; preds = %248
  %260 = add nuw nsw i32 %246, 1
  br label %245, !llvm.loop !56

261:                                              ; preds = %245
  %262 = add nuw nsw i32 %243, 1
  br label %242, !llvm.loop !57

263:                                              ; preds = %242
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 0, ptr @kount, align 4
  %264 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %264, 0
  br i1 %.not, label %267, label %265

265:                                              ; preds = %263
  %266 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %266, ptr @n, align 4
  br label %268

267:                                              ; preds = %263
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %.pre = load i32, ptr @n, align 4
  br label %268

268:                                              ; preds = %267, %265
  %269 = phi i32 [ %.pre, %267 ], [ %266, %265 ]
  %270 = call i32 @Trial(i32 noundef %269)
  %.not1 = icmp eq i32 %270, 0
  br i1 %.not1, label %271, label %272

271:                                              ; preds = %268
  %puts2 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %275

272:                                              ; preds = %268
  %273 = load i32, ptr @kount, align 4
  %.not3 = icmp eq i32 %273, 2005
  br i1 %.not3, label %275, label %274

274:                                              ; preds = %272
  %puts4 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %275

275:                                              ; preds = %272, %274, %271
  %276 = load i32, ptr @n, align 4
  %277 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %276) #3
  %278 = load i32, ptr @kount, align 4
  %279 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %278) #3
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
