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

17:                                               ; preds = %133, %16
  %18 = phi i32 [ %134, %133 ], [ 1, %16 ]
  %19 = icmp samesign ult i32 %18, 6
  br i1 %19, label %20, label %135

20:                                               ; preds = %17
  br label %21

21:                                               ; preds = %20
  br label %22

22:                                               ; preds = %21
  %invariant.op = or disjoint i32 8, %18
  br label %23

23:                                               ; preds = %22
  br label %24

24:                                               ; preds = %23
  %.reass = or disjoint i32 64, %invariant.op
  %25 = zext nneg i32 %.reass to i64
  %26 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %25
  store i32 0, ptr %26, align 4
  br label %27

27:                                               ; preds = %24
  %.reass.1 = or disjoint i32 128, %invariant.op
  %28 = zext nneg i32 %.reass.1 to i64
  %29 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %28
  store i32 0, ptr %29, align 4
  br label %30

30:                                               ; preds = %27
  %.reass.2 = or disjoint i32 192, %invariant.op
  %31 = zext nneg i32 %.reass.2 to i64
  %32 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %31
  store i32 0, ptr %32, align 4
  br label %33

33:                                               ; preds = %30
  %.reass.3 = or disjoint i32 256, %invariant.op
  %34 = zext nneg i32 %.reass.3 to i64
  %35 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %34
  store i32 0, ptr %35, align 4
  br label %36

36:                                               ; preds = %33
  %.reass.4 = or disjoint i32 320, %invariant.op
  %37 = zext nneg i32 %.reass.4 to i64
  %38 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %37
  store i32 0, ptr %38, align 4
  br i1 false, label %.loopexit, label %42

.loopexit:                                        ; preds = %36, %57, %75, %93, %111
  %invariant.op.lcssa.ph = phi i32 [ %invariant.op.4, %111 ], [ %invariant.op.3, %93 ], [ %invariant.op.2, %75 ], [ %invariant.op.1, %57 ], [ %invariant.op, %36 ]
  br label %39

39:                                               ; preds = %.loopexit, %129
  %invariant.op.lcssa = phi i32 [ %invariant.op.5, %129 ], [ %invariant.op.lcssa.ph, %.loopexit ]
  %.reass.5 = or disjoint i32 384, %invariant.op.lcssa
  %40 = zext nneg i32 %.reass.5 to i64
  %41 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %40
  store i32 0, ptr %41, align 4
  unreachable

42:                                               ; preds = %36
  br label %43

43:                                               ; preds = %42
  %invariant.op.1 = or disjoint i32 16, %18
  br label %44

44:                                               ; preds = %43
  br label %45

45:                                               ; preds = %44
  %.reass.13 = or disjoint i32 64, %invariant.op.1
  %46 = zext nneg i32 %.reass.13 to i64
  %47 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %46
  store i32 0, ptr %47, align 4
  br label %48

48:                                               ; preds = %45
  %.reass.1.1 = or disjoint i32 128, %invariant.op.1
  %49 = zext nneg i32 %.reass.1.1 to i64
  %50 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %49
  store i32 0, ptr %50, align 4
  br label %51

51:                                               ; preds = %48
  %.reass.2.1 = or disjoint i32 192, %invariant.op.1
  %52 = zext nneg i32 %.reass.2.1 to i64
  %53 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %52
  store i32 0, ptr %53, align 4
  br label %54

54:                                               ; preds = %51
  %.reass.3.1 = or disjoint i32 256, %invariant.op.1
  %55 = zext nneg i32 %.reass.3.1 to i64
  %56 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %55
  store i32 0, ptr %56, align 4
  br label %57

57:                                               ; preds = %54
  %.reass.4.1 = or disjoint i32 320, %invariant.op.1
  %58 = zext nneg i32 %.reass.4.1 to i64
  %59 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %58
  store i32 0, ptr %59, align 4
  br i1 false, label %.loopexit, label %60

60:                                               ; preds = %57
  br label %61

61:                                               ; preds = %60
  %invariant.op.2 = or disjoint i32 24, %18
  br label %62

62:                                               ; preds = %61
  br label %63

63:                                               ; preds = %62
  %.reass.24 = or disjoint i32 64, %invariant.op.2
  %64 = zext nneg i32 %.reass.24 to i64
  %65 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %64
  store i32 0, ptr %65, align 4
  br label %66

66:                                               ; preds = %63
  %.reass.1.2 = or disjoint i32 128, %invariant.op.2
  %67 = zext nneg i32 %.reass.1.2 to i64
  %68 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %67
  store i32 0, ptr %68, align 4
  br label %69

69:                                               ; preds = %66
  %.reass.2.2 = or disjoint i32 192, %invariant.op.2
  %70 = zext nneg i32 %.reass.2.2 to i64
  %71 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %70
  store i32 0, ptr %71, align 4
  br label %72

72:                                               ; preds = %69
  %.reass.3.2 = or disjoint i32 256, %invariant.op.2
  %73 = zext nneg i32 %.reass.3.2 to i64
  %74 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %73
  store i32 0, ptr %74, align 4
  br label %75

75:                                               ; preds = %72
  %.reass.4.2 = or disjoint i32 320, %invariant.op.2
  %76 = zext nneg i32 %.reass.4.2 to i64
  %77 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %76
  store i32 0, ptr %77, align 4
  br i1 false, label %.loopexit, label %78

78:                                               ; preds = %75
  br label %79

79:                                               ; preds = %78
  %invariant.op.3 = or disjoint i32 32, %18
  br label %80

80:                                               ; preds = %79
  br label %81

81:                                               ; preds = %80
  %.reass.35 = or disjoint i32 64, %invariant.op.3
  %82 = zext nneg i32 %.reass.35 to i64
  %83 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %82
  store i32 0, ptr %83, align 4
  br label %84

84:                                               ; preds = %81
  %.reass.1.3 = or disjoint i32 128, %invariant.op.3
  %85 = zext nneg i32 %.reass.1.3 to i64
  %86 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %85
  store i32 0, ptr %86, align 4
  br label %87

87:                                               ; preds = %84
  %.reass.2.3 = or disjoint i32 192, %invariant.op.3
  %88 = zext nneg i32 %.reass.2.3 to i64
  %89 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %88
  store i32 0, ptr %89, align 4
  br label %90

90:                                               ; preds = %87
  %.reass.3.3 = or disjoint i32 256, %invariant.op.3
  %91 = zext nneg i32 %.reass.3.3 to i64
  %92 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %91
  store i32 0, ptr %92, align 4
  br label %93

93:                                               ; preds = %90
  %.reass.4.3 = or disjoint i32 320, %invariant.op.3
  %94 = zext nneg i32 %.reass.4.3 to i64
  %95 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %94
  store i32 0, ptr %95, align 4
  br i1 false, label %.loopexit, label %96

96:                                               ; preds = %93
  br label %97

97:                                               ; preds = %96
  %invariant.op.4 = or disjoint i32 40, %18
  br label %98

98:                                               ; preds = %97
  br label %99

99:                                               ; preds = %98
  %.reass.46 = or disjoint i32 64, %invariant.op.4
  %100 = zext nneg i32 %.reass.46 to i64
  %101 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %100
  store i32 0, ptr %101, align 4
  br label %102

102:                                              ; preds = %99
  %.reass.1.4 = or disjoint i32 128, %invariant.op.4
  %103 = zext nneg i32 %.reass.1.4 to i64
  %104 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %103
  store i32 0, ptr %104, align 4
  br label %105

105:                                              ; preds = %102
  %.reass.2.4 = or disjoint i32 192, %invariant.op.4
  %106 = zext nneg i32 %.reass.2.4 to i64
  %107 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %106
  store i32 0, ptr %107, align 4
  br label %108

108:                                              ; preds = %105
  %.reass.3.4 = or disjoint i32 256, %invariant.op.4
  %109 = zext nneg i32 %.reass.3.4 to i64
  %110 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %109
  store i32 0, ptr %110, align 4
  br label %111

111:                                              ; preds = %108
  %.reass.4.4 = or disjoint i32 320, %invariant.op.4
  %112 = zext nneg i32 %.reass.4.4 to i64
  %113 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %112
  store i32 0, ptr %113, align 4
  br i1 false, label %.loopexit, label %114

114:                                              ; preds = %111
  br i1 false, label %115, label %133

115:                                              ; preds = %114
  %.lcssa9 = phi i32 [ %18, %114 ]
  %invariant.op.5 = or disjoint i32 48, %.lcssa9
  br label %116

116:                                              ; preds = %115
  br label %117

117:                                              ; preds = %116
  %.reass.57 = or disjoint i32 64, %invariant.op.5
  %118 = zext nneg i32 %.reass.57 to i64
  %119 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %118
  store i32 0, ptr %119, align 4
  br label %120

120:                                              ; preds = %117
  %.reass.1.5 = or disjoint i32 128, %invariant.op.5
  %121 = zext nneg i32 %.reass.1.5 to i64
  %122 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %121
  store i32 0, ptr %122, align 4
  br label %123

123:                                              ; preds = %120
  %.reass.2.5 = or disjoint i32 192, %invariant.op.5
  %124 = zext nneg i32 %.reass.2.5 to i64
  %125 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %124
  store i32 0, ptr %125, align 4
  br label %126

126:                                              ; preds = %123
  %.reass.3.5 = or disjoint i32 256, %invariant.op.5
  %127 = zext nneg i32 %.reass.3.5 to i64
  %128 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %127
  store i32 0, ptr %128, align 4
  br label %129

129:                                              ; preds = %126
  %.reass.4.5 = or disjoint i32 320, %invariant.op.5
  %130 = zext nneg i32 %.reass.4.5 to i64
  %131 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %130
  store i32 0, ptr %131, align 4
  br i1 false, label %39, label %132

132:                                              ; preds = %129
  unreachable

133:                                              ; preds = %114
  %134 = add nuw nsw i32 %18, 1
  br label %17, !llvm.loop !14

135:                                              ; preds = %17
  br label %136

136:                                              ; preds = %157, %135
  %137 = phi i32 [ %158, %157 ], [ 0, %135 ]
  %138 = icmp samesign ult i32 %137, 13
  br i1 %138, label %139, label %159

139:                                              ; preds = %136
  %140 = zext nneg i32 %137 to i64
  %141 = getelementptr inbounds nuw [2048 x i8], ptr @p, i64 %140
  br label %142

142:                                              ; preds = %153, %139
  %143 = phi i32 [ 0, %139 ], [ %156, %153 ]
  br label %144

144:                                              ; preds = %142
  %145 = zext nneg i32 %143 to i64
  %146 = getelementptr inbounds nuw [4 x i8], ptr %141, i64 %145
  store i32 0, ptr %146, align 4
  %147 = add nuw nsw i32 %143, 1
  br label %148

148:                                              ; preds = %144
  %149 = zext nneg i32 %147 to i64
  %150 = getelementptr inbounds nuw [4 x i8], ptr %141, i64 %149
  store i32 0, ptr %150, align 4
  %151 = add nuw nsw i32 %143, 2
  %152 = icmp samesign ult i32 %151, 512
  br i1 %152, label %153, label %157

153:                                              ; preds = %148
  %154 = zext nneg i32 %151 to i64
  %155 = getelementptr inbounds nuw [4 x i8], ptr %141, i64 %154
  store i32 0, ptr %155, align 4
  %156 = add nuw nsw i32 %143, 3
  br label %142, !llvm.loop !15

157:                                              ; preds = %148
  %158 = add nuw nsw i32 %137, 1
  br label %136, !llvm.loop !16

159:                                              ; preds = %136
  br label %160

160:                                              ; preds = %159
  br label %161

161:                                              ; preds = %160
  br label %162

162:                                              ; preds = %161
  br label %163

163:                                              ; preds = %162
  br label %164

164:                                              ; preds = %163
  br label %165

165:                                              ; preds = %164
  store i32 1, ptr @p, align 4
  br i1 false, label %.loopexit13, label %167

.loopexit13:                                      ; preds = %221, %217, %210, %206, %199, %195, %188, %184, %165, %170
  %.lcssa.ph = phi ptr [ getelementptr inbounds nuw (i8, ptr @p, i64 32), %170 ], [ @p, %165 ], [ getelementptr inbounds nuw (i8, ptr @p, i64 4), %184 ], [ getelementptr inbounds nuw (i8, ptr @p, i64 36), %188 ], [ getelementptr inbounds nuw (i8, ptr @p, i64 8), %195 ], [ getelementptr inbounds nuw (i8, ptr @p, i64 40), %199 ], [ getelementptr inbounds nuw (i8, ptr @p, i64 12), %206 ], [ getelementptr inbounds nuw (i8, ptr @p, i64 44), %210 ], [ getelementptr inbounds nuw (i8, ptr @p, i64 16), %217 ], [ getelementptr inbounds nuw (i8, ptr @p, i64 48), %221 ]
  br label %166

166:                                              ; preds = %.loopexit13, %177
  %.lcssa = phi ptr [ %175, %177 ], [ %.lcssa.ph, %.loopexit13 ]
  store i32 1, ptr %.lcssa, align 4
  unreachable

167:                                              ; preds = %165
  br label %168

168:                                              ; preds = %167
  br label %169

169:                                              ; preds = %168
  br label %170

170:                                              ; preds = %169
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 32), align 4
  br i1 false, label %.loopexit13, label %171

171:                                              ; preds = %170
  br i1 false, label %172, label %179

172:                                              ; preds = %222, %211, %200, %189, %171
  %.lcssa12 = phi i32 [ 0, %171 ], [ 1, %189 ], [ 2, %200 ], [ 3, %211 ], [ 4, %222 ]
  %173 = or disjoint i32 %.lcssa12, 16
  %174 = zext nneg i32 %173 to i64
  %175 = getelementptr inbounds nuw [4 x i8], ptr @p, i64 %174
  br label %176

176:                                              ; preds = %172
  br label %177

177:                                              ; preds = %176
  store i32 1, ptr %175, align 4
  br i1 false, label %166, label %178

178:                                              ; preds = %177
  unreachable

179:                                              ; preds = %171
  br label %180

180:                                              ; preds = %179
  br label %181

181:                                              ; preds = %180
  br label %182

182:                                              ; preds = %181
  br label %183

183:                                              ; preds = %182
  br label %184

184:                                              ; preds = %183
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4), align 4
  br i1 false, label %.loopexit13, label %185

185:                                              ; preds = %184
  br label %186

186:                                              ; preds = %185
  br label %187

187:                                              ; preds = %186
  br label %188

188:                                              ; preds = %187
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 36), align 4
  br i1 false, label %.loopexit13, label %189

189:                                              ; preds = %188
  br i1 false, label %172, label %190

190:                                              ; preds = %189
  br label %191

191:                                              ; preds = %190
  br label %192

192:                                              ; preds = %191
  br label %193

193:                                              ; preds = %192
  br label %194

194:                                              ; preds = %193
  br label %195

195:                                              ; preds = %194
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8), align 4
  br i1 false, label %.loopexit13, label %196

196:                                              ; preds = %195
  br label %197

197:                                              ; preds = %196
  br label %198

198:                                              ; preds = %197
  br label %199

199:                                              ; preds = %198
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 40), align 4
  br i1 false, label %.loopexit13, label %200

200:                                              ; preds = %199
  br i1 false, label %172, label %201

201:                                              ; preds = %200
  br label %202

202:                                              ; preds = %201
  br label %203

203:                                              ; preds = %202
  br label %204

204:                                              ; preds = %203
  br label %205

205:                                              ; preds = %204
  br label %206

206:                                              ; preds = %205
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12), align 4
  br i1 false, label %.loopexit13, label %207

207:                                              ; preds = %206
  br label %208

208:                                              ; preds = %207
  br label %209

209:                                              ; preds = %208
  br label %210

210:                                              ; preds = %209
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 44), align 4
  br i1 false, label %.loopexit13, label %211

211:                                              ; preds = %210
  br i1 false, label %172, label %212

212:                                              ; preds = %211
  br i1 false, label %213, label %224

213:                                              ; preds = %212
  br label %214

214:                                              ; preds = %213
  br label %215

215:                                              ; preds = %214
  br label %216

216:                                              ; preds = %215
  br label %217

217:                                              ; preds = %216
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16), align 4
  br i1 false, label %.loopexit13, label %218

218:                                              ; preds = %217
  br label %219

219:                                              ; preds = %218
  br label %220

220:                                              ; preds = %219
  br label %221

221:                                              ; preds = %220
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 48), align 4
  br i1 false, label %.loopexit13, label %222

222:                                              ; preds = %221
  br i1 false, label %172, label %223

223:                                              ; preds = %222
  unreachable

224:                                              ; preds = %212
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %225

225:                                              ; preds = %224
  br label %226

226:                                              ; preds = %225
  br label %227

227:                                              ; preds = %226
  br label %228

228:                                              ; preds = %227
  br label %229

229:                                              ; preds = %228
  br label %230

230:                                              ; preds = %229
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), align 4
  br label %231

231:                                              ; preds = %230
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2304), align 4
  br label %232

232:                                              ; preds = %231
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2560), align 4
  br label %233

233:                                              ; preds = %232
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2816), align 4
  br i1 false, label %.loopexit19, label %238

.loopexit19:                                      ; preds = %275, %265, %233
  %.lcssa15.ph = phi i32 [ 0, %233 ], [ 1, %265 ], [ 2, %275 ]
  br label %234

234:                                              ; preds = %.loopexit19, %252
  %.lcssa15 = phi i32 [ %.lcssa17, %252 ], [ %.lcssa15.ph, %.loopexit19 ]
  %235 = or disjoint i32 %.lcssa15, 256
  %236 = zext nneg i32 %235 to i64
  %237 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %236
  store i32 1, ptr %237, align 4
  unreachable

238:                                              ; preds = %233
  br i1 false, label %239, label %257

239:                                              ; preds = %276, %266, %238
  %.lcssa17 = phi i32 [ 0, %238 ], [ 1, %266 ], [ 2, %276 ]
  br label %240

240:                                              ; preds = %239
  br label %241

241:                                              ; preds = %240
  %242 = zext nneg i32 %.lcssa17 to i64
  %243 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %242
  store i32 1, ptr %243, align 4
  br label %244

244:                                              ; preds = %241
  %245 = or disjoint i32 %.lcssa17, 64
  %246 = zext nneg i32 %245 to i64
  %247 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %246
  store i32 1, ptr %247, align 4
  br label %248

248:                                              ; preds = %244
  %249 = or disjoint i32 %.lcssa17, 128
  %250 = zext nneg i32 %249 to i64
  %251 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %250
  store i32 1, ptr %251, align 4
  br label %252

252:                                              ; preds = %248
  %253 = or disjoint i32 %.lcssa17, 192
  %254 = zext nneg i32 %253 to i64
  %255 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %254
  store i32 1, ptr %255, align 4
  br i1 false, label %234, label %256

256:                                              ; preds = %252
  unreachable

257:                                              ; preds = %238
  br label %258

258:                                              ; preds = %257
  br label %259

259:                                              ; preds = %258
  br label %260

260:                                              ; preds = %259
  br label %261

261:                                              ; preds = %260
  br label %262

262:                                              ; preds = %261
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2052), align 4
  br label %263

263:                                              ; preds = %262
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2308), align 4
  br label %264

264:                                              ; preds = %263
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2564), align 4
  br label %265

265:                                              ; preds = %264
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2820), align 4
  br i1 false, label %.loopexit19, label %266

266:                                              ; preds = %265
  br i1 false, label %239, label %267

267:                                              ; preds = %266
  br i1 false, label %268, label %278

268:                                              ; preds = %267
  br label %269

269:                                              ; preds = %268
  br label %270

270:                                              ; preds = %269
  br label %271

271:                                              ; preds = %270
  br label %272

272:                                              ; preds = %271
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2056), align 4
  br label %273

273:                                              ; preds = %272
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2312), align 4
  br label %274

274:                                              ; preds = %273
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2568), align 4
  br label %275

275:                                              ; preds = %274
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2824), align 4
  br i1 false, label %.loopexit19, label %276

276:                                              ; preds = %275
  br i1 false, label %239, label %277

277:                                              ; preds = %276
  unreachable

278:                                              ; preds = %267
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %279

279:                                              ; preds = %278
  br label %280

280:                                              ; preds = %279
  br label %281

281:                                              ; preds = %280
  br label %282

282:                                              ; preds = %281
  br label %283

283:                                              ; preds = %282
  br label %284

284:                                              ; preds = %283
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), align 4
  br label %285

285:                                              ; preds = %284
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4352), align 4
  br i1 false, label %.loopexit21, label %290

.loopexit21:                                      ; preds = %332, %327, %322, %317, %285, %294, %299, %304
  %.lcssa20.ph = phi i32 [ 24, %304 ], [ 16, %299 ], [ 8, %294 ], [ 0, %285 ], [ 0, %317 ], [ 8, %322 ], [ 16, %327 ], [ 24, %332 ]
  br label %286

286:                                              ; preds = %.loopexit21, %309
  %.lcssa20 = phi i32 [ 32, %309 ], [ %.lcssa20.ph, %.loopexit21 ]
  %287 = or disjoint i32 128, %.lcssa20
  %288 = zext nneg i32 %287 to i64
  %289 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %288
  store i32 1, ptr %289, align 4
  unreachable

290:                                              ; preds = %285
  br label %291

291:                                              ; preds = %290
  br label %292

292:                                              ; preds = %291
  br label %293

293:                                              ; preds = %292
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4128), align 4
  br label %294

294:                                              ; preds = %293
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4384), align 4
  br i1 false, label %.loopexit21, label %295

295:                                              ; preds = %294
  br label %296

296:                                              ; preds = %295
  br label %297

297:                                              ; preds = %296
  br label %298

298:                                              ; preds = %297
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4160), align 4
  br label %299

299:                                              ; preds = %298
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4416), align 4
  br i1 false, label %.loopexit21, label %300

300:                                              ; preds = %299
  br label %301

301:                                              ; preds = %300
  br label %302

302:                                              ; preds = %301
  br label %303

303:                                              ; preds = %302
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4192), align 4
  br label %304

304:                                              ; preds = %303
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4448), align 4
  br i1 false, label %.loopexit21, label %305

305:                                              ; preds = %304
  br i1 false, label %306, label %311

306:                                              ; preds = %333, %305
  br label %307

307:                                              ; preds = %306
  br label %308

308:                                              ; preds = %307
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4224), align 4
  br label %309

309:                                              ; preds = %308
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4480), align 4
  br i1 false, label %286, label %310

310:                                              ; preds = %309
  unreachable

311:                                              ; preds = %305
  br i1 false, label %312, label %335

312:                                              ; preds = %311
  br label %313

313:                                              ; preds = %312
  br label %314

314:                                              ; preds = %313
  br label %315

315:                                              ; preds = %314
  br label %316

316:                                              ; preds = %315
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), align 4
  br label %317

317:                                              ; preds = %316
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4352), align 4
  br i1 false, label %.loopexit21, label %318

318:                                              ; preds = %317
  br label %319

319:                                              ; preds = %318
  br label %320

320:                                              ; preds = %319
  br label %321

321:                                              ; preds = %320
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4128), align 4
  br label %322

322:                                              ; preds = %321
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4384), align 4
  br i1 false, label %.loopexit21, label %323

323:                                              ; preds = %322
  br label %324

324:                                              ; preds = %323
  br label %325

325:                                              ; preds = %324
  br label %326

326:                                              ; preds = %325
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4160), align 4
  br label %327

327:                                              ; preds = %326
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4416), align 4
  br i1 false, label %.loopexit21, label %328

328:                                              ; preds = %327
  br label %329

329:                                              ; preds = %328
  br label %330

330:                                              ; preds = %329
  br label %331

331:                                              ; preds = %330
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4192), align 4
  br label %332

332:                                              ; preds = %331
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4448), align 4
  br i1 false, label %.loopexit21, label %333

333:                                              ; preds = %332
  br i1 false, label %306, label %334

334:                                              ; preds = %333
  unreachable

335:                                              ; preds = %311
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %336

336:                                              ; preds = %335
  br label %337

337:                                              ; preds = %336
  br label %338

338:                                              ; preds = %337
  br label %339

339:                                              ; preds = %338
  br label %340

340:                                              ; preds = %339
  br label %341

341:                                              ; preds = %340
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), align 4
  br i1 false, label %.loopexit26, label %343

.loopexit26:                                      ; preds = %399, %395, %391, %387, %380, %376, %372, %368, %341, %346, %350, %354
  %.lcssa22.ph = phi ptr [ getelementptr inbounds nuw (i8, ptr @p, i64 6240), %354 ], [ getelementptr inbounds nuw (i8, ptr @p, i64 6208), %350 ], [ getelementptr inbounds nuw (i8, ptr @p, i64 6176), %346 ], [ getelementptr inbounds nuw (i8, ptr @p, i64 6144), %341 ], [ getelementptr inbounds nuw (i8, ptr @p, i64 6148), %368 ], [ getelementptr inbounds nuw (i8, ptr @p, i64 6180), %372 ], [ getelementptr inbounds nuw (i8, ptr @p, i64 6212), %376 ], [ getelementptr inbounds nuw (i8, ptr @p, i64 6244), %380 ], [ getelementptr inbounds nuw (i8, ptr @p, i64 6152), %387 ], [ getelementptr inbounds nuw (i8, ptr @p, i64 6184), %391 ], [ getelementptr inbounds nuw (i8, ptr @p, i64 6216), %395 ], [ getelementptr inbounds nuw (i8, ptr @p, i64 6248), %399 ]
  br label %342

342:                                              ; preds = %.loopexit26, %361
  %.lcssa22 = phi ptr [ %359, %361 ], [ %.lcssa22.ph, %.loopexit26 ]
  store i32 1, ptr %.lcssa22, align 4
  unreachable

343:                                              ; preds = %341
  br label %344

344:                                              ; preds = %343
  br label %345

345:                                              ; preds = %344
  br label %346

346:                                              ; preds = %345
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6176), align 4
  br i1 false, label %.loopexit26, label %347

347:                                              ; preds = %346
  br label %348

348:                                              ; preds = %347
  br label %349

349:                                              ; preds = %348
  br label %350

350:                                              ; preds = %349
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6208), align 4
  br i1 false, label %.loopexit26, label %351

351:                                              ; preds = %350
  br label %352

352:                                              ; preds = %351
  br label %353

353:                                              ; preds = %352
  br label %354

354:                                              ; preds = %353
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6240), align 4
  br i1 false, label %.loopexit26, label %355

355:                                              ; preds = %354
  br i1 false, label %356, label %363

356:                                              ; preds = %400, %381, %355
  %.lcssa25 = phi i32 [ 0, %355 ], [ 1, %381 ], [ 2, %400 ]
  %357 = or disjoint i32 %.lcssa25, 32
  %358 = zext nneg i32 %357 to i64
  %359 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %358
  br label %360

360:                                              ; preds = %356
  br label %361

361:                                              ; preds = %360
  store i32 1, ptr %359, align 4
  br i1 false, label %342, label %362

362:                                              ; preds = %361
  unreachable

363:                                              ; preds = %355
  br label %364

364:                                              ; preds = %363
  br label %365

365:                                              ; preds = %364
  br label %366

366:                                              ; preds = %365
  br label %367

367:                                              ; preds = %366
  br label %368

368:                                              ; preds = %367
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6148), align 4
  br i1 false, label %.loopexit26, label %369

369:                                              ; preds = %368
  br label %370

370:                                              ; preds = %369
  br label %371

371:                                              ; preds = %370
  br label %372

372:                                              ; preds = %371
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6180), align 4
  br i1 false, label %.loopexit26, label %373

373:                                              ; preds = %372
  br label %374

374:                                              ; preds = %373
  br label %375

375:                                              ; preds = %374
  br label %376

376:                                              ; preds = %375
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6212), align 4
  br i1 false, label %.loopexit26, label %377

377:                                              ; preds = %376
  br label %378

378:                                              ; preds = %377
  br label %379

379:                                              ; preds = %378
  br label %380

380:                                              ; preds = %379
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6244), align 4
  br i1 false, label %.loopexit26, label %381

381:                                              ; preds = %380
  br i1 false, label %356, label %382

382:                                              ; preds = %381
  br i1 false, label %383, label %402

383:                                              ; preds = %382
  br label %384

384:                                              ; preds = %383
  br label %385

385:                                              ; preds = %384
  br label %386

386:                                              ; preds = %385
  br label %387

387:                                              ; preds = %386
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6152), align 4
  br i1 false, label %.loopexit26, label %388

388:                                              ; preds = %387
  br label %389

389:                                              ; preds = %388
  br label %390

390:                                              ; preds = %389
  br label %391

391:                                              ; preds = %390
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6184), align 4
  br i1 false, label %.loopexit26, label %392

392:                                              ; preds = %391
  br label %393

393:                                              ; preds = %392
  br label %394

394:                                              ; preds = %393
  br label %395

395:                                              ; preds = %394
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6216), align 4
  br i1 false, label %.loopexit26, label %396

396:                                              ; preds = %395
  br label %397

397:                                              ; preds = %396
  br label %398

398:                                              ; preds = %397
  br label %399

399:                                              ; preds = %398
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6248), align 4
  br i1 false, label %.loopexit26, label %400

400:                                              ; preds = %399
  br i1 false, label %356, label %401

401:                                              ; preds = %400
  unreachable

402:                                              ; preds = %382
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %403

403:                                              ; preds = %402
  br label %404

404:                                              ; preds = %403
  br label %405

405:                                              ; preds = %404
  br label %406

406:                                              ; preds = %405
  br label %407

407:                                              ; preds = %406
  br label %408

408:                                              ; preds = %407
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), align 4
  br label %409

409:                                              ; preds = %408
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8448), align 4
  br i1 false, label %.loopexit32, label %414

.loopexit32:                                      ; preds = %455, %447, %439, %431, %409
  %.lcssa28.ph = phi i32 [ 0, %409 ], [ 1, %431 ], [ 2, %439 ], [ 3, %447 ], [ 4, %455 ]
  br label %410

410:                                              ; preds = %.loopexit32, %420
  %.lcssa28 = phi i32 [ %.lcssa30, %420 ], [ %.lcssa28.ph, %.loopexit32 ]
  %411 = or disjoint i32 %.lcssa28, 128
  %412 = zext nneg i32 %411 to i64
  %413 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %412
  store i32 1, ptr %413, align 4
  unreachable

414:                                              ; preds = %409
  br i1 false, label %415, label %425

415:                                              ; preds = %456, %448, %440, %432, %414
  %.lcssa30 = phi i32 [ 0, %414 ], [ 1, %432 ], [ 2, %440 ], [ 3, %448 ], [ 4, %456 ]
  br label %416

416:                                              ; preds = %415
  br label %417

417:                                              ; preds = %416
  %418 = zext nneg i32 %.lcssa30 to i64
  %419 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %418
  store i32 1, ptr %419, align 4
  br label %420

420:                                              ; preds = %417
  %421 = or disjoint i32 %.lcssa30, 64
  %422 = zext nneg i32 %421 to i64
  %423 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %422
  store i32 1, ptr %423, align 4
  br i1 false, label %410, label %424

424:                                              ; preds = %420
  unreachable

425:                                              ; preds = %414
  br label %426

426:                                              ; preds = %425
  br label %427

427:                                              ; preds = %426
  br label %428

428:                                              ; preds = %427
  br label %429

429:                                              ; preds = %428
  br label %430

430:                                              ; preds = %429
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8196), align 4
  br label %431

431:                                              ; preds = %430
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8452), align 4
  br i1 false, label %.loopexit32, label %432

432:                                              ; preds = %431
  br i1 false, label %415, label %433

433:                                              ; preds = %432
  br label %434

434:                                              ; preds = %433
  br label %435

435:                                              ; preds = %434
  br label %436

436:                                              ; preds = %435
  br label %437

437:                                              ; preds = %436
  br label %438

438:                                              ; preds = %437
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8200), align 4
  br label %439

439:                                              ; preds = %438
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8456), align 4
  br i1 false, label %.loopexit32, label %440

440:                                              ; preds = %439
  br i1 false, label %415, label %441

441:                                              ; preds = %440
  br label %442

442:                                              ; preds = %441
  br label %443

443:                                              ; preds = %442
  br label %444

444:                                              ; preds = %443
  br label %445

445:                                              ; preds = %444
  br label %446

446:                                              ; preds = %445
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8204), align 4
  br label %447

447:                                              ; preds = %446
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8460), align 4
  br i1 false, label %.loopexit32, label %448

448:                                              ; preds = %447
  br i1 false, label %415, label %449

449:                                              ; preds = %448
  br i1 false, label %450, label %458

450:                                              ; preds = %449
  br label %451

451:                                              ; preds = %450
  br label %452

452:                                              ; preds = %451
  br label %453

453:                                              ; preds = %452
  br label %454

454:                                              ; preds = %453
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8208), align 4
  br label %455

455:                                              ; preds = %454
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8464), align 4
  br i1 false, label %.loopexit32, label %456

456:                                              ; preds = %455
  br i1 false, label %415, label %457

457:                                              ; preds = %456
  unreachable

458:                                              ; preds = %449
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %459

459:                                              ; preds = %458
  br label %460

460:                                              ; preds = %459
  br label %461

461:                                              ; preds = %460
  br label %462

462:                                              ; preds = %461
  br label %463

463:                                              ; preds = %462
  br label %464

464:                                              ; preds = %463
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), align 4
  br label %465

465:                                              ; preds = %464
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10496), align 4
  br label %466

466:                                              ; preds = %465
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10752), align 4
  br label %467

467:                                              ; preds = %466
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 11008), align 4
  br i1 false, label %.loopexit34, label %472

.loopexit34:                                      ; preds = %502, %495, %467, %478
  %.lcssa33.ph = phi i32 [ 8, %478 ], [ 0, %467 ], [ 0, %495 ], [ 8, %502 ]
  br label %468

468:                                              ; preds = %.loopexit34, %485
  %.lcssa33 = phi i32 [ 16, %485 ], [ %.lcssa33.ph, %.loopexit34 ]
  %469 = or disjoint i32 256, %.lcssa33
  %470 = zext nneg i32 %469 to i64
  %471 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %470
  store i32 1, ptr %471, align 4
  unreachable

472:                                              ; preds = %467
  br label %473

473:                                              ; preds = %472
  br label %474

474:                                              ; preds = %473
  br label %475

475:                                              ; preds = %474
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10272), align 4
  br label %476

476:                                              ; preds = %475
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10528), align 4
  br label %477

477:                                              ; preds = %476
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10784), align 4
  br label %478

478:                                              ; preds = %477
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 11040), align 4
  br i1 false, label %.loopexit34, label %479

479:                                              ; preds = %478
  br i1 false, label %480, label %487

480:                                              ; preds = %503, %479
  br label %481

481:                                              ; preds = %480
  br label %482

482:                                              ; preds = %481
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10304), align 4
  br label %483

483:                                              ; preds = %482
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10560), align 4
  br label %484

484:                                              ; preds = %483
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10816), align 4
  br label %485

485:                                              ; preds = %484
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 11072), align 4
  br i1 false, label %468, label %486

486:                                              ; preds = %485
  unreachable

487:                                              ; preds = %479
  br i1 false, label %488, label %505

488:                                              ; preds = %487
  br label %489

489:                                              ; preds = %488
  br label %490

490:                                              ; preds = %489
  br label %491

491:                                              ; preds = %490
  br label %492

492:                                              ; preds = %491
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), align 4
  br label %493

493:                                              ; preds = %492
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10496), align 4
  br label %494

494:                                              ; preds = %493
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10752), align 4
  br label %495

495:                                              ; preds = %494
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 11008), align 4
  br i1 false, label %.loopexit34, label %496

496:                                              ; preds = %495
  br label %497

497:                                              ; preds = %496
  br label %498

498:                                              ; preds = %497
  br label %499

499:                                              ; preds = %498
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10272), align 4
  br label %500

500:                                              ; preds = %499
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10528), align 4
  br label %501

501:                                              ; preds = %500
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10784), align 4
  br label %502

502:                                              ; preds = %501
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 11040), align 4
  br i1 false, label %.loopexit34, label %503

503:                                              ; preds = %502
  br i1 false, label %480, label %504

504:                                              ; preds = %503
  unreachable

505:                                              ; preds = %487
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
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
  br label %511

511:                                              ; preds = %510
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), align 4
  br i1 false, label %.loopexit38, label %513

.loopexit38:                                      ; preds = %537, %530, %523, %511
  %.lcssa35.ph = phi ptr [ getelementptr inbounds nuw (i8, ptr @p, i64 12288), %511 ], [ getelementptr inbounds nuw (i8, ptr @p, i64 12292), %523 ], [ getelementptr inbounds nuw (i8, ptr @p, i64 12296), %530 ], [ getelementptr inbounds nuw (i8, ptr @p, i64 12300), %537 ]
  br label %512

512:                                              ; preds = %.loopexit38, %516
  %.lcssa35 = phi ptr [ %.lcssa36, %516 ], [ %.lcssa35.ph, %.loopexit38 ]
  store i32 1, ptr %.lcssa35, align 4
  unreachable

513:                                              ; preds = %511
  br i1 false, label %514, label %518

514:                                              ; preds = %538, %531, %524, %513
  %.lcssa36 = phi ptr [ getelementptr inbounds nuw (i8, ptr @p, i64 12288), %513 ], [ getelementptr inbounds nuw (i8, ptr @p, i64 12292), %524 ], [ getelementptr inbounds nuw (i8, ptr @p, i64 12296), %531 ], [ getelementptr inbounds nuw (i8, ptr @p, i64 12300), %538 ]
  br label %515

515:                                              ; preds = %514
  br label %516

516:                                              ; preds = %515
  store i32 1, ptr %.lcssa36, align 4
  br i1 false, label %512, label %517

517:                                              ; preds = %516
  unreachable

518:                                              ; preds = %513
  br label %519

519:                                              ; preds = %518
  br label %520

520:                                              ; preds = %519
  br label %521

521:                                              ; preds = %520
  br label %522

522:                                              ; preds = %521
  br label %523

523:                                              ; preds = %522
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12292), align 4
  br i1 false, label %.loopexit38, label %524

524:                                              ; preds = %523
  br i1 false, label %514, label %525

525:                                              ; preds = %524
  br label %526

526:                                              ; preds = %525
  br label %527

527:                                              ; preds = %526
  br label %528

528:                                              ; preds = %527
  br label %529

529:                                              ; preds = %528
  br label %530

530:                                              ; preds = %529
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12296), align 4
  br i1 false, label %.loopexit38, label %531

531:                                              ; preds = %530
  br i1 false, label %514, label %532

532:                                              ; preds = %531
  br i1 false, label %533, label %540

533:                                              ; preds = %532
  br label %534

534:                                              ; preds = %533
  br label %535

535:                                              ; preds = %534
  br label %536

536:                                              ; preds = %535
  br label %537

537:                                              ; preds = %536
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12300), align 4
  br i1 false, label %.loopexit38, label %538

538:                                              ; preds = %537
  br i1 false, label %514, label %539

539:                                              ; preds = %538
  unreachable

540:                                              ; preds = %532
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %541

541:                                              ; preds = %540
  br label %542

542:                                              ; preds = %541
  br label %543

543:                                              ; preds = %542
  br label %544

544:                                              ; preds = %543
  br label %545

545:                                              ; preds = %544
  br label %546

546:                                              ; preds = %545
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), align 4
  br i1 false, label %.loopexit40, label %548

.loopexit40:                                      ; preds = %574, %570, %566, %546, %551, %555
  %.lcssa39.ph = phi ptr [ getelementptr inbounds nuw (i8, ptr @p, i64 14400), %555 ], [ getelementptr inbounds nuw (i8, ptr @p, i64 14368), %551 ], [ getelementptr inbounds nuw (i8, ptr @p, i64 14336), %546 ], [ getelementptr inbounds nuw (i8, ptr @p, i64 14336), %566 ], [ getelementptr inbounds nuw (i8, ptr @p, i64 14368), %570 ], [ getelementptr inbounds nuw (i8, ptr @p, i64 14400), %574 ]
  br label %547

547:                                              ; preds = %.loopexit40, %559
  %.lcssa39 = phi ptr [ getelementptr inbounds nuw (i8, ptr @p, i64 14432), %559 ], [ %.lcssa39.ph, %.loopexit40 ]
  store i32 1, ptr %.lcssa39, align 4
  unreachable

548:                                              ; preds = %546
  br label %549

549:                                              ; preds = %548
  br label %550

550:                                              ; preds = %549
  br label %551

551:                                              ; preds = %550
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14368), align 4
  br i1 false, label %.loopexit40, label %552

552:                                              ; preds = %551
  br label %553

553:                                              ; preds = %552
  br label %554

554:                                              ; preds = %553
  br label %555

555:                                              ; preds = %554
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14400), align 4
  br i1 false, label %.loopexit40, label %556

556:                                              ; preds = %555
  br i1 false, label %557, label %561

557:                                              ; preds = %575, %556
  br label %558

558:                                              ; preds = %557
  br label %559

559:                                              ; preds = %558
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14432), align 4
  br i1 false, label %547, label %560

560:                                              ; preds = %559
  unreachable

561:                                              ; preds = %556
  br i1 false, label %562, label %577

562:                                              ; preds = %561
  br label %563

563:                                              ; preds = %562
  br label %564

564:                                              ; preds = %563
  br label %565

565:                                              ; preds = %564
  br label %566

566:                                              ; preds = %565
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), align 4
  br i1 false, label %.loopexit40, label %567

567:                                              ; preds = %566
  br label %568

568:                                              ; preds = %567
  br label %569

569:                                              ; preds = %568
  br label %570

570:                                              ; preds = %569
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14368), align 4
  br i1 false, label %.loopexit40, label %571

571:                                              ; preds = %570
  br label %572

572:                                              ; preds = %571
  br label %573

573:                                              ; preds = %572
  br label %574

574:                                              ; preds = %573
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14400), align 4
  br i1 false, label %.loopexit40, label %575

575:                                              ; preds = %574
  br i1 false, label %557, label %576

576:                                              ; preds = %575
  unreachable

577:                                              ; preds = %561
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %578

578:                                              ; preds = %577
  br label %579

579:                                              ; preds = %578
  br label %580

580:                                              ; preds = %579
  br label %581

581:                                              ; preds = %580
  br label %582

582:                                              ; preds = %581
  br label %583

583:                                              ; preds = %582
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), align 4
  br label %584

584:                                              ; preds = %583
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16640), align 4
  br label %585

585:                                              ; preds = %584
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16896), align 4
  br i1 false, label %.loopexit41, label %587

.loopexit41:                                      ; preds = %601, %585
  br label %586

586:                                              ; preds = %.loopexit41, %592
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 17152), align 4
  unreachable

587:                                              ; preds = %585
  br i1 false, label %588, label %594

588:                                              ; preds = %602, %587
  br label %589

589:                                              ; preds = %588
  br label %590

590:                                              ; preds = %589
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), align 4
  br label %591

591:                                              ; preds = %590
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16640), align 4
  br label %592

592:                                              ; preds = %591
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16896), align 4
  br i1 false, label %586, label %593

593:                                              ; preds = %592
  unreachable

594:                                              ; preds = %587
  br i1 false, label %595, label %604

595:                                              ; preds = %594
  br label %596

596:                                              ; preds = %595
  br label %597

597:                                              ; preds = %596
  br label %598

598:                                              ; preds = %597
  br label %599

599:                                              ; preds = %598
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), align 4
  br label %600

600:                                              ; preds = %599
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16640), align 4
  br label %601

601:                                              ; preds = %600
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16896), align 4
  br i1 false, label %.loopexit41, label %602

602:                                              ; preds = %601
  br i1 false, label %588, label %603

603:                                              ; preds = %602
  unreachable

604:                                              ; preds = %594
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %605

605:                                              ; preds = %604
  br label %606

606:                                              ; preds = %605
  br label %607

607:                                              ; preds = %606
  br label %608

608:                                              ; preds = %607
  br label %609

609:                                              ; preds = %608
  br label %610

610:                                              ; preds = %609
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), align 4
  br i1 false, label %.loopexit46, label %612

.loopexit46:                                      ; preds = %644, %640, %633, %629, %610, %615
  %.lcssa42.ph = phi ptr [ getelementptr inbounds nuw (i8, ptr @p, i64 18464), %615 ], [ getelementptr inbounds nuw (i8, ptr @p, i64 18432), %610 ], [ getelementptr inbounds nuw (i8, ptr @p, i64 18436), %629 ], [ getelementptr inbounds nuw (i8, ptr @p, i64 18468), %633 ], [ getelementptr inbounds nuw (i8, ptr @p, i64 18440), %640 ], [ getelementptr inbounds nuw (i8, ptr @p, i64 18472), %644 ]
  br label %611

611:                                              ; preds = %.loopexit46, %622
  %.lcssa42 = phi ptr [ %620, %622 ], [ %.lcssa42.ph, %.loopexit46 ]
  store i32 1, ptr %.lcssa42, align 4
  unreachable

612:                                              ; preds = %610
  br label %613

613:                                              ; preds = %612
  br label %614

614:                                              ; preds = %613
  br label %615

615:                                              ; preds = %614
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18464), align 4
  br i1 false, label %.loopexit46, label %616

616:                                              ; preds = %615
  br i1 false, label %617, label %624

617:                                              ; preds = %645, %634, %616
  %.lcssa45 = phi i32 [ 0, %616 ], [ 1, %634 ], [ 2, %645 ]
  %618 = or disjoint i32 %.lcssa45, 16
  %619 = zext nneg i32 %618 to i64
  %620 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %619
  br label %621

621:                                              ; preds = %617
  br label %622

622:                                              ; preds = %621
  store i32 1, ptr %620, align 4
  br i1 false, label %611, label %623

623:                                              ; preds = %622
  unreachable

624:                                              ; preds = %616
  br label %625

625:                                              ; preds = %624
  br label %626

626:                                              ; preds = %625
  br label %627

627:                                              ; preds = %626
  br label %628

628:                                              ; preds = %627
  br label %629

629:                                              ; preds = %628
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18436), align 4
  br i1 false, label %.loopexit46, label %630

630:                                              ; preds = %629
  br label %631

631:                                              ; preds = %630
  br label %632

632:                                              ; preds = %631
  br label %633

633:                                              ; preds = %632
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18468), align 4
  br i1 false, label %.loopexit46, label %634

634:                                              ; preds = %633
  br i1 false, label %617, label %635

635:                                              ; preds = %634
  br i1 false, label %636, label %647

636:                                              ; preds = %635
  br label %637

637:                                              ; preds = %636
  br label %638

638:                                              ; preds = %637
  br label %639

639:                                              ; preds = %638
  br label %640

640:                                              ; preds = %639
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18440), align 4
  br i1 false, label %.loopexit46, label %641

641:                                              ; preds = %640
  br label %642

642:                                              ; preds = %641
  br label %643

643:                                              ; preds = %642
  br label %644

644:                                              ; preds = %643
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18472), align 4
  br i1 false, label %.loopexit46, label %645

645:                                              ; preds = %644
  br i1 false, label %617, label %646

646:                                              ; preds = %645
  unreachable

647:                                              ; preds = %635
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %648

648:                                              ; preds = %647
  br label %649

649:                                              ; preds = %648
  br label %650

650:                                              ; preds = %649
  br label %651

651:                                              ; preds = %650
  br label %652

652:                                              ; preds = %651
  br label %653

653:                                              ; preds = %652
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), align 4
  br label %654

654:                                              ; preds = %653
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20736), align 4
  br i1 false, label %.loopexit52, label %659

.loopexit52:                                      ; preds = %684, %676, %654
  %.lcssa48.ph = phi i32 [ 0, %654 ], [ 1, %676 ], [ 2, %684 ]
  br label %655

655:                                              ; preds = %.loopexit52, %665
  %.lcssa48 = phi i32 [ %.lcssa50, %665 ], [ %.lcssa48.ph, %.loopexit52 ]
  %656 = or disjoint i32 %.lcssa48, 128
  %657 = zext nneg i32 %656 to i64
  %658 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %657
  store i32 1, ptr %658, align 4
  unreachable

659:                                              ; preds = %654
  br i1 false, label %660, label %670

660:                                              ; preds = %685, %677, %659
  %.lcssa50 = phi i32 [ 0, %659 ], [ 1, %677 ], [ 2, %685 ]
  br label %661

661:                                              ; preds = %660
  br label %662

662:                                              ; preds = %661
  %663 = zext nneg i32 %.lcssa50 to i64
  %664 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %663
  store i32 1, ptr %664, align 4
  br label %665

665:                                              ; preds = %662
  %666 = or disjoint i32 %.lcssa50, 64
  %667 = zext nneg i32 %666 to i64
  %668 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %667
  store i32 1, ptr %668, align 4
  br i1 false, label %655, label %669

669:                                              ; preds = %665
  unreachable

670:                                              ; preds = %659
  br label %671

671:                                              ; preds = %670
  br label %672

672:                                              ; preds = %671
  br label %673

673:                                              ; preds = %672
  br label %674

674:                                              ; preds = %673
  br label %675

675:                                              ; preds = %674
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20484), align 4
  br label %676

676:                                              ; preds = %675
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20740), align 4
  br i1 false, label %.loopexit52, label %677

677:                                              ; preds = %676
  br i1 false, label %660, label %678

678:                                              ; preds = %677
  br i1 false, label %679, label %687

679:                                              ; preds = %678
  br label %680

680:                                              ; preds = %679
  br label %681

681:                                              ; preds = %680
  br label %682

682:                                              ; preds = %681
  br label %683

683:                                              ; preds = %682
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20488), align 4
  br label %684

684:                                              ; preds = %683
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20744), align 4
  br i1 false, label %.loopexit52, label %685

685:                                              ; preds = %684
  br i1 false, label %660, label %686

686:                                              ; preds = %685
  unreachable

687:                                              ; preds = %678
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %688

688:                                              ; preds = %687
  br label %689

689:                                              ; preds = %688
  br label %690

690:                                              ; preds = %689
  br label %691

691:                                              ; preds = %690
  br label %692

692:                                              ; preds = %691
  br label %693

693:                                              ; preds = %692
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), align 4
  br label %694

694:                                              ; preds = %693
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22784), align 4
  br i1 false, label %.loopexit54, label %699

.loopexit54:                                      ; preds = %721, %716, %694, %703
  %.lcssa53.ph = phi i32 [ 8, %703 ], [ 0, %694 ], [ 0, %716 ], [ 8, %721 ]
  br label %695

695:                                              ; preds = %.loopexit54, %708
  %.lcssa53 = phi i32 [ 16, %708 ], [ %.lcssa53.ph, %.loopexit54 ]
  %696 = or disjoint i32 128, %.lcssa53
  %697 = zext nneg i32 %696 to i64
  %698 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %697
  store i32 1, ptr %698, align 4
  unreachable

699:                                              ; preds = %694
  br label %700

700:                                              ; preds = %699
  br label %701

701:                                              ; preds = %700
  br label %702

702:                                              ; preds = %701
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22560), align 4
  br label %703

703:                                              ; preds = %702
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22816), align 4
  br i1 false, label %.loopexit54, label %704

704:                                              ; preds = %703
  br i1 false, label %705, label %710

705:                                              ; preds = %722, %704
  br label %706

706:                                              ; preds = %705
  br label %707

707:                                              ; preds = %706
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22592), align 4
  br label %708

708:                                              ; preds = %707
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22848), align 4
  br i1 false, label %695, label %709

709:                                              ; preds = %708
  unreachable

710:                                              ; preds = %704
  br i1 false, label %711, label %724

711:                                              ; preds = %710
  br label %712

712:                                              ; preds = %711
  br label %713

713:                                              ; preds = %712
  br label %714

714:                                              ; preds = %713
  br label %715

715:                                              ; preds = %714
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), align 4
  br label %716

716:                                              ; preds = %715
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22784), align 4
  br i1 false, label %.loopexit54, label %717

717:                                              ; preds = %716
  br label %718

718:                                              ; preds = %717
  br label %719

719:                                              ; preds = %718
  br label %720

720:                                              ; preds = %719
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22560), align 4
  br label %721

721:                                              ; preds = %720
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22816), align 4
  br i1 false, label %.loopexit54, label %722

722:                                              ; preds = %721
  br i1 false, label %705, label %723

723:                                              ; preds = %722
  unreachable

724:                                              ; preds = %710
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
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
  br label %730

730:                                              ; preds = %729
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), align 4
  br label %731

731:                                              ; preds = %730
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24832), align 4
  br i1 false, label %.loopexit58, label %735

.loopexit58:                                      ; preds = %774, %769, %761, %756, %731, %739
  %invariant.op1.lcssa.ph = phi i32 [ 8, %739 ], [ 0, %731 ], [ 1, %756 ], [ 9, %761 ], [ 2, %769 ], [ 10, %774 ]
  br label %732

732:                                              ; preds = %.loopexit58, %746
  %invariant.op1.lcssa = phi i32 [ %invariant.op1.2, %746 ], [ %invariant.op1.lcssa.ph, %.loopexit58 ]
  %.reass2.2 = or disjoint i32 128, %invariant.op1.lcssa
  %733 = zext nneg i32 %.reass2.2 to i64
  %734 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %733
  store i32 1, ptr %734, align 4
  unreachable

735:                                              ; preds = %731
  br label %736

736:                                              ; preds = %735
  br label %737

737:                                              ; preds = %736
  br label %738

738:                                              ; preds = %737
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24608), align 4
  br label %739

739:                                              ; preds = %738
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24864), align 4
  br i1 false, label %.loopexit58, label %740

740:                                              ; preds = %739
  br i1 false, label %741, label %750

741:                                              ; preds = %775, %762, %740
  %.lcssa57 = phi i32 [ 0, %740 ], [ 1, %762 ], [ 2, %775 ]
  %invariant.op1.2 = or disjoint i32 16, %.lcssa57
  br label %742

742:                                              ; preds = %741
  br label %743

743:                                              ; preds = %742
  %744 = zext nneg i32 %invariant.op1.2 to i64
  %745 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %744
  store i32 1, ptr %745, align 4
  br label %746

746:                                              ; preds = %743
  %.reass2.1.2 = or disjoint i32 64, %invariant.op1.2
  %747 = zext nneg i32 %.reass2.1.2 to i64
  %748 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %747
  store i32 1, ptr %748, align 4
  br i1 false, label %732, label %749

749:                                              ; preds = %746
  unreachable

750:                                              ; preds = %740
  br label %751

751:                                              ; preds = %750
  br label %752

752:                                              ; preds = %751
  br label %753

753:                                              ; preds = %752
  br label %754

754:                                              ; preds = %753
  br label %755

755:                                              ; preds = %754
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24580), align 4
  br label %756

756:                                              ; preds = %755
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24836), align 4
  br i1 false, label %.loopexit58, label %757

757:                                              ; preds = %756
  br label %758

758:                                              ; preds = %757
  br label %759

759:                                              ; preds = %758
  br label %760

760:                                              ; preds = %759
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24612), align 4
  br label %761

761:                                              ; preds = %760
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24868), align 4
  br i1 false, label %.loopexit58, label %762

762:                                              ; preds = %761
  br i1 false, label %741, label %763

763:                                              ; preds = %762
  br i1 false, label %764, label %777

764:                                              ; preds = %763
  br label %765

765:                                              ; preds = %764
  br label %766

766:                                              ; preds = %765
  br label %767

767:                                              ; preds = %766
  br label %768

768:                                              ; preds = %767
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24584), align 4
  br label %769

769:                                              ; preds = %768
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24840), align 4
  br i1 false, label %.loopexit58, label %770

770:                                              ; preds = %769
  br label %771

771:                                              ; preds = %770
  br label %772

772:                                              ; preds = %771
  br label %773

773:                                              ; preds = %772
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24616), align 4
  br label %774

774:                                              ; preds = %773
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24872), align 4
  br i1 false, label %.loopexit58, label %775

775:                                              ; preds = %774
  br i1 false, label %741, label %776

776:                                              ; preds = %775
  unreachable

777:                                              ; preds = %763
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 0, ptr @kount, align 4
  %778 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %778, 0
  br i1 %.not, label %781, label %779

779:                                              ; preds = %777
  %780 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %780, ptr @n, align 4
  br label %782

781:                                              ; preds = %777
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %.pre = load i32, ptr @n, align 4
  br label %782

782:                                              ; preds = %781, %779
  %783 = phi i32 [ %.pre, %781 ], [ %780, %779 ]
  %784 = call i32 @Trial(i32 noundef %783)
  %.not1 = icmp eq i32 %784, 0
  br i1 %.not1, label %785, label %786

785:                                              ; preds = %782
  %puts2 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %790

786:                                              ; preds = %782
  %787 = load i32, ptr @kount, align 4
  %.not3 = icmp eq i32 %787, 2005
  br i1 %.not3, label %789, label %788

788:                                              ; preds = %786
  %puts4 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %789

789:                                              ; preds = %788, %786
  br label %790

790:                                              ; preds = %789, %785
  %791 = load i32, ptr @n, align 4
  %792 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %791) #3
  %793 = load i32, ptr @kount, align 4
  %794 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %793) #3
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
