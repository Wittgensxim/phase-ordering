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
  %3 = sext i32 %1 to i64
  %smax = call i32 @llvm.smax.i32(i32 %.pre, i32 -1)
  %4 = add i32 %smax, 1
  %wide.trip.count = zext i32 %4 to i64
  br label %5

5:                                                ; preds = %16, %2
  %indvars.iv = phi i64 [ %indvars.iv.next, %16 ], [ 0, %2 ]
  %exitcond = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %17, label %6

6:                                                ; preds = %5
  %7 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  %8 = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv
  %9 = load i32, ptr %8, align 4
  %.not2 = icmp eq i32 %9, 0
  br i1 %.not2, label %16, label %10

10:                                               ; preds = %6
  %11 = add nsw i64 %3, %indvars.iv
  %12 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %11
  %13 = load i32, ptr %12, align 4
  %.not3 = icmp eq i32 %13, 0
  br i1 %.not3, label %15, label %14

14:                                               ; preds = %10
  br label %18

15:                                               ; preds = %10
  br label %16

16:                                               ; preds = %15, %6
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %5, !llvm.loop !7

17:                                               ; preds = %5
  br label %18

18:                                               ; preds = %17, %14
  %19 = phi i32 [ 1, %17 ], [ 0, %14 ]
  ret i32 %19
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Place(i32 noundef %0, i32 noundef %1) #0 {
  %.phi.trans.insert = sext i32 %0 to i64
  %.phi.trans.insert1 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert1, align 4
  %3 = sext i32 %1 to i64
  %smax = call i32 @llvm.smax.i32(i32 %.pre, i32 -1)
  %4 = add i32 %smax, 1
  %wide.trip.count = zext i32 %4 to i64
  br label %5

5:                                                ; preds = %13, %2
  %indvars.iv = phi i64 [ %indvars.iv.next, %13 ], [ 0, %2 ]
  %exitcond = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %14, label %6

6:                                                ; preds = %5
  %7 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  %8 = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv
  %9 = load i32, ptr %8, align 4
  %.not3 = icmp eq i32 %9, 0
  br i1 %.not3, label %13, label %10

10:                                               ; preds = %6
  %11 = add nsw i64 %3, %indvars.iv
  %12 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %11
  store i32 1, ptr %12, align 4
  br label %13

13:                                               ; preds = %10, %6
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %5, !llvm.loop !9

14:                                               ; preds = %5
  %15 = getelementptr inbounds [4 x i8], ptr @class, i64 %.phi.trans.insert
  %16 = load i32, ptr %15, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %17
  %19 = load i32, ptr %18, align 4
  %20 = add nsw i32 %19, -1
  store i32 %20, ptr %18, align 4
  %smax6 = call i32 @llvm.smax.i32(i32 %1, i32 512)
  %wide.trip.count7 = sext i32 %smax6 to i64
  br label %21

21:                                               ; preds = %27, %14
  %indvars.iv3 = phi i64 [ %indvars.iv.next4, %27 ], [ %3, %14 ]
  %exitcond8 = icmp ne i64 %indvars.iv3, %wide.trip.count7
  br i1 %exitcond8, label %22, label %28

22:                                               ; preds = %21
  %23 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %indvars.iv3
  %24 = load i32, ptr %23, align 4
  %.not2 = icmp eq i32 %24, 0
  br i1 %.not2, label %25, label %27

25:                                               ; preds = %22
  %.lcssa1.wide = phi i64 [ %indvars.iv3, %22 ]
  %26 = trunc nsw i64 %.lcssa1.wide to i32
  br label %29

27:                                               ; preds = %22
  %indvars.iv.next4 = add nsw i64 %indvars.iv3, 1
  br label %21, !llvm.loop !10

28:                                               ; preds = %21
  br label %29

29:                                               ; preds = %28, %25
  %30 = phi i32 [ 0, %28 ], [ %26, %25 ]
  ret i32 %30
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Remove(i32 noundef %0, i32 noundef %1) #0 {
  %.phi.trans.insert = sext i32 %0 to i64
  %.phi.trans.insert1 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert1, align 4
  %3 = sext i32 %1 to i64
  %smax = call i32 @llvm.smax.i32(i32 %.pre, i32 -1)
  %4 = add i32 %smax, 1
  %wide.trip.count = zext i32 %4 to i64
  br label %5

5:                                                ; preds = %13, %2
  %indvars.iv = phi i64 [ %indvars.iv.next, %13 ], [ 0, %2 ]
  %exitcond = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %14, label %6

6:                                                ; preds = %5
  %7 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  %8 = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv
  %9 = load i32, ptr %8, align 4
  %.not2 = icmp eq i32 %9, 0
  br i1 %.not2, label %13, label %10

10:                                               ; preds = %6
  %11 = add nsw i64 %3, %indvars.iv
  %12 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %11
  store i32 0, ptr %12, align 4
  br label %13

13:                                               ; preds = %10, %6
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %5, !llvm.loop !11

14:                                               ; preds = %5
  %15 = getelementptr inbounds [4 x i8], ptr @class, i64 %.phi.trans.insert
  %16 = load i32, ptr %15, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %17
  %19 = load i32, ptr %18, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, ptr %18, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Trial(i32 noundef %0) #0 {
  %2 = load i32, ptr @kount, align 4
  %3 = add nsw i32 %2, 1
  store i32 %3, ptr @kount, align 4
  br label %4

4:                                                ; preds = %24, %1
  %indvars.iv = phi i64 [ %indvars.iv.next, %24 ], [ 0, %1 ]
  %exitcond = icmp ne i64 %indvars.iv, 13
  br i1 %exitcond, label %5, label %25

5:                                                ; preds = %4
  %6 = getelementptr inbounds nuw [4 x i8], ptr @class, i64 %indvars.iv
  %7 = load i32, ptr %6, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %8
  %10 = load i32, ptr %9, align 4
  %.not = icmp eq i32 %10, 0
  br i1 %.not, label %24, label %11

11:                                               ; preds = %5
  %12 = trunc nuw nsw i64 %indvars.iv to i32
  %13 = call i32 @Fit(i32 noundef %12, i32 noundef %0)
  %.not1 = icmp eq i32 %13, 0
  br i1 %.not1, label %23, label %14

14:                                               ; preds = %11
  %15 = trunc nuw nsw i64 %indvars.iv to i32
  %16 = call i32 @Place(i32 noundef %15, i32 noundef %0)
  %17 = call i32 @Trial(i32 noundef %16)
  %.not2 = icmp eq i32 %17, 0
  br i1 %.not2, label %18, label %20

18:                                               ; preds = %14
  %19 = icmp eq i32 %16, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %18, %14
  br label %26

21:                                               ; preds = %18
  %22 = trunc nuw nsw i64 %indvars.iv to i32
  call void @Remove(i32 noundef %22, i32 noundef %0)
  br label %23

23:                                               ; preds = %21, %11
  br label %24

24:                                               ; preds = %23, %5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %4, !llvm.loop !12

25:                                               ; preds = %4
  br label %26

26:                                               ; preds = %25, %20
  %27 = phi i32 [ 0, %25 ], [ 1, %20 ]
  ret i32 %27
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Puzzle() #0 {
  br label %1

1:                                                ; preds = %9, %0
  %indvars.iv = phi i64 [ %indvars.iv.next, %9 ], [ 0, %0 ]
  br label %2

2:                                                ; preds = %1
  %3 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %indvars.iv
  store i32 1, ptr %3, align 4
  %4 = add nuw nsw i64 %indvars.iv, 1
  br label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %4
  store i32 1, ptr %6, align 4
  %7 = add nuw nsw i64 %indvars.iv, 2
  %8 = icmp samesign ult i64 %7, 512
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %7
  store i32 1, ptr %10, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 3
  br label %1, !llvm.loop !13

11:                                               ; preds = %5
  br label %12

12:                                               ; preds = %135, %11
  %indvars.iv51 = phi i64 [ %indvars.iv.next52, %135 ], [ 1, %11 ]
  %exitcond = icmp ne i64 %indvars.iv51, 6
  br i1 %exitcond, label %13, label %136

13:                                               ; preds = %12
  br label %14

14:                                               ; preds = %13
  br label %15

15:                                               ; preds = %14
  br label %16

16:                                               ; preds = %15
  br label %17

17:                                               ; preds = %16
  %18 = or disjoint i64 %indvars.iv51, 72
  %19 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %18
  store i32 0, ptr %19, align 4
  br label %20

20:                                               ; preds = %17
  %21 = or disjoint i64 %indvars.iv51, 136
  %22 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %21
  store i32 0, ptr %22, align 4
  br label %23

23:                                               ; preds = %20
  %24 = or disjoint i64 %indvars.iv51, 200
  %25 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %24
  store i32 0, ptr %25, align 4
  br label %26

26:                                               ; preds = %23
  %27 = or disjoint i64 %indvars.iv51, 264
  %28 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %27
  store i32 0, ptr %28, align 4
  br label %29

29:                                               ; preds = %26
  %30 = or disjoint i64 %indvars.iv51, 328
  %31 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %30
  store i32 0, ptr %31, align 4
  br i1 false, label %.loopexit, label %38

.loopexit:                                        ; preds = %29, %53, %71, %89, %107
  %.lcssa2.ph = phi i32 [ 6, %107 ], [ 6, %89 ], [ 6, %71 ], [ 6, %53 ], [ 6, %29 ]
  %.lcssa1.ph = phi i32 [ 5, %107 ], [ 4, %89 ], [ 3, %71 ], [ 2, %53 ], [ 1, %29 ]
  br label %32

32:                                               ; preds = %.loopexit, %130
  %.lcssa2 = phi i32 [ %112, %130 ], [ %.lcssa2.ph, %.loopexit ]
  %.lcssa1 = phi i32 [ 6, %130 ], [ %.lcssa1.ph, %.loopexit ]
  %33 = shl nuw nsw i32 %.lcssa1, 3
  %34 = or disjoint i32 384, %33
  %35 = or disjoint i32 %.lcssa2, %34
  %36 = zext nneg i32 %35 to i64
  %37 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %36
  store i32 0, ptr %37, align 4
  unreachable

38:                                               ; preds = %29
  br label %39

39:                                               ; preds = %38
  br label %40

40:                                               ; preds = %39
  br label %41

41:                                               ; preds = %40
  %42 = or disjoint i64 %indvars.iv51, 80
  %43 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %42
  store i32 0, ptr %43, align 4
  br label %44

44:                                               ; preds = %41
  %45 = or disjoint i64 %indvars.iv51, 144
  %46 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %45
  store i32 0, ptr %46, align 4
  br label %47

47:                                               ; preds = %44
  %48 = or disjoint i64 %indvars.iv51, 208
  %49 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %48
  store i32 0, ptr %49, align 4
  br label %50

50:                                               ; preds = %47
  %51 = or disjoint i64 %indvars.iv51, 272
  %52 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %51
  store i32 0, ptr %52, align 4
  br label %53

53:                                               ; preds = %50
  %54 = or disjoint i64 %indvars.iv51, 336
  %55 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %54
  store i32 0, ptr %55, align 4
  br i1 false, label %.loopexit, label %56

56:                                               ; preds = %53
  br label %57

57:                                               ; preds = %56
  br label %58

58:                                               ; preds = %57
  br label %59

59:                                               ; preds = %58
  %60 = or disjoint i64 %indvars.iv51, 88
  %61 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %60
  store i32 0, ptr %61, align 4
  br label %62

62:                                               ; preds = %59
  %63 = or disjoint i64 %indvars.iv51, 152
  %64 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %63
  store i32 0, ptr %64, align 4
  br label %65

65:                                               ; preds = %62
  %66 = or disjoint i64 %indvars.iv51, 216
  %67 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %66
  store i32 0, ptr %67, align 4
  br label %68

68:                                               ; preds = %65
  %69 = or disjoint i64 %indvars.iv51, 280
  %70 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %69
  store i32 0, ptr %70, align 4
  br label %71

71:                                               ; preds = %68
  %72 = or disjoint i64 %indvars.iv51, 344
  %73 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %72
  store i32 0, ptr %73, align 4
  br i1 false, label %.loopexit, label %74

74:                                               ; preds = %71
  br label %75

75:                                               ; preds = %74
  br label %76

76:                                               ; preds = %75
  br label %77

77:                                               ; preds = %76
  %78 = or disjoint i64 %indvars.iv51, 96
  %79 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %78
  store i32 0, ptr %79, align 4
  br label %80

80:                                               ; preds = %77
  %81 = or disjoint i64 %indvars.iv51, 160
  %82 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %81
  store i32 0, ptr %82, align 4
  br label %83

83:                                               ; preds = %80
  %84 = or disjoint i64 %indvars.iv51, 224
  %85 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %84
  store i32 0, ptr %85, align 4
  br label %86

86:                                               ; preds = %83
  %87 = or disjoint i64 %indvars.iv51, 288
  %88 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %87
  store i32 0, ptr %88, align 4
  br label %89

89:                                               ; preds = %86
  %90 = or disjoint i64 %indvars.iv51, 352
  %91 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %90
  store i32 0, ptr %91, align 4
  br i1 false, label %.loopexit, label %92

92:                                               ; preds = %89
  br label %93

93:                                               ; preds = %92
  br label %94

94:                                               ; preds = %93
  br label %95

95:                                               ; preds = %94
  %96 = or disjoint i64 %indvars.iv51, 104
  %97 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %96
  store i32 0, ptr %97, align 4
  br label %98

98:                                               ; preds = %95
  %99 = or disjoint i64 %indvars.iv51, 168
  %100 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %99
  store i32 0, ptr %100, align 4
  br label %101

101:                                              ; preds = %98
  %102 = or disjoint i64 %indvars.iv51, 232
  %103 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %102
  store i32 0, ptr %103, align 4
  br label %104

104:                                              ; preds = %101
  %105 = or disjoint i64 %indvars.iv51, 296
  %106 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %105
  store i32 0, ptr %106, align 4
  br label %107

107:                                              ; preds = %104
  %108 = or disjoint i64 %indvars.iv51, 360
  %109 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %108
  store i32 0, ptr %109, align 4
  br i1 false, label %.loopexit, label %110

110:                                              ; preds = %107
  br i1 false, label %111, label %135

111:                                              ; preds = %110
  %112 = trunc nuw nsw i64 6 to i32
  br label %113

113:                                              ; preds = %111
  br label %114

114:                                              ; preds = %113
  %115 = or disjoint i32 %112, 112
  %116 = zext nneg i32 %115 to i64
  %117 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %116
  store i32 0, ptr %117, align 4
  br label %118

118:                                              ; preds = %114
  %119 = or disjoint i32 %112, 176
  %120 = zext nneg i32 %119 to i64
  %121 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %120
  store i32 0, ptr %121, align 4
  br label %122

122:                                              ; preds = %118
  %123 = or disjoint i32 %112, 240
  %124 = zext nneg i32 %123 to i64
  %125 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %124
  store i32 0, ptr %125, align 4
  br label %126

126:                                              ; preds = %122
  %127 = or disjoint i32 %112, 304
  %128 = zext nneg i32 %127 to i64
  %129 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %128
  store i32 0, ptr %129, align 4
  br label %130

130:                                              ; preds = %126
  %131 = or disjoint i32 %112, 368
  %132 = zext nneg i32 %131 to i64
  %133 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %132
  store i32 0, ptr %133, align 4
  br i1 false, label %32, label %134

134:                                              ; preds = %130
  unreachable

135:                                              ; preds = %110
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1
  br label %12, !llvm.loop !14

136:                                              ; preds = %12
  br label %137

137:                                              ; preds = %152, %136
  %indvars.iv57 = phi i64 [ %indvars.iv.next58, %152 ], [ 0, %136 ]
  %exitcond60 = icmp ne i64 %indvars.iv57, 13
  br i1 %exitcond60, label %138, label %153

138:                                              ; preds = %137
  %139 = getelementptr inbounds nuw [2048 x i8], ptr @p, i64 %indvars.iv57
  br label %140

140:                                              ; preds = %149, %138
  %indvars.iv54 = phi i64 [ %indvars.iv.next55, %149 ], [ 0, %138 ]
  br label %141

141:                                              ; preds = %140
  %142 = getelementptr inbounds nuw [2048 x i8], ptr @p, i64 %indvars.iv57
  %143 = getelementptr inbounds nuw [4 x i8], ptr %142, i64 %indvars.iv54
  store i32 0, ptr %143, align 4
  %144 = add nuw nsw i64 %indvars.iv54, 1
  br label %145

145:                                              ; preds = %141
  %146 = getelementptr inbounds nuw [4 x i8], ptr %139, i64 %144
  store i32 0, ptr %146, align 4
  %147 = add nuw nsw i64 %indvars.iv54, 2
  %148 = icmp samesign ult i64 %147, 512
  br i1 %148, label %149, label %152

149:                                              ; preds = %145
  %150 = getelementptr inbounds nuw [2048 x i8], ptr @p, i64 %indvars.iv57
  %151 = getelementptr inbounds nuw [4 x i8], ptr %150, i64 %147
  store i32 0, ptr %151, align 4
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 3
  br label %140, !llvm.loop !15

152:                                              ; preds = %145
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1
  br label %137, !llvm.loop !16

153:                                              ; preds = %137
  br label %154

154:                                              ; preds = %153
  br label %155

155:                                              ; preds = %154
  br label %156

156:                                              ; preds = %155
  br label %157

157:                                              ; preds = %156
  br label %158

158:                                              ; preds = %157
  br label %159

159:                                              ; preds = %158
  store i32 1, ptr @p, align 4
  br i1 false, label %.loopexit9, label %165

.loopexit9:                                       ; preds = %219, %215, %208, %204, %197, %193, %186, %182, %159, %168
  %.lcssa6.ph = phi i32 [ 0, %168 ], [ 0, %159 ], [ 1, %182 ], [ 1, %186 ], [ 2, %193 ], [ 2, %197 ], [ 3, %204 ], [ 3, %208 ], [ 4, %215 ], [ 4, %219 ]
  %.lcssa5.ph = phi i32 [ 1, %168 ], [ 0, %159 ], [ 0, %182 ], [ 1, %186 ], [ 0, %193 ], [ 1, %197 ], [ 0, %204 ], [ 1, %208 ], [ 0, %215 ], [ 1, %219 ]
  br label %160

160:                                              ; preds = %.loopexit9, %172
  %.lcssa6 = phi i32 [ %.lcssa8, %172 ], [ %.lcssa6.ph, %.loopexit9 ]
  %.lcssa5 = phi i32 [ 2, %172 ], [ %.lcssa5.ph, %.loopexit9 ]
  %161 = shl nuw nsw i32 %.lcssa5, 3
  %162 = or disjoint i32 %.lcssa6, %161
  %163 = zext nneg i32 %162 to i64
  %164 = getelementptr inbounds nuw [4 x i8], ptr @p, i64 %163
  store i32 1, ptr %164, align 4
  unreachable

165:                                              ; preds = %159
  br label %166

166:                                              ; preds = %165
  br label %167

167:                                              ; preds = %166
  br label %168

168:                                              ; preds = %167
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 32), align 4
  br i1 false, label %.loopexit9, label %169

169:                                              ; preds = %168
  br i1 false, label %170, label %177

170:                                              ; preds = %220, %209, %198, %187, %169
  %.lcssa8 = phi i32 [ 0, %169 ], [ 1, %187 ], [ 2, %198 ], [ 3, %209 ], [ 4, %220 ]
  br label %171

171:                                              ; preds = %170
  br label %172

172:                                              ; preds = %171
  %173 = or disjoint i32 %.lcssa8, 16
  %174 = zext nneg i32 %173 to i64
  %175 = getelementptr inbounds nuw [4 x i8], ptr @p, i64 %174
  store i32 1, ptr %175, align 4
  br i1 false, label %160, label %176

176:                                              ; preds = %172
  unreachable

177:                                              ; preds = %169
  br label %178

178:                                              ; preds = %177
  br label %179

179:                                              ; preds = %178
  br label %180

180:                                              ; preds = %179
  br label %181

181:                                              ; preds = %180
  br label %182

182:                                              ; preds = %181
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4), align 4
  br i1 false, label %.loopexit9, label %183

183:                                              ; preds = %182
  br label %184

184:                                              ; preds = %183
  br label %185

185:                                              ; preds = %184
  br label %186

186:                                              ; preds = %185
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 36), align 4
  br i1 false, label %.loopexit9, label %187

187:                                              ; preds = %186
  br i1 false, label %170, label %188

188:                                              ; preds = %187
  br label %189

189:                                              ; preds = %188
  br label %190

190:                                              ; preds = %189
  br label %191

191:                                              ; preds = %190
  br label %192

192:                                              ; preds = %191
  br label %193

193:                                              ; preds = %192
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8), align 4
  br i1 false, label %.loopexit9, label %194

194:                                              ; preds = %193
  br label %195

195:                                              ; preds = %194
  br label %196

196:                                              ; preds = %195
  br label %197

197:                                              ; preds = %196
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 40), align 4
  br i1 false, label %.loopexit9, label %198

198:                                              ; preds = %197
  br i1 false, label %170, label %199

199:                                              ; preds = %198
  br label %200

200:                                              ; preds = %199
  br label %201

201:                                              ; preds = %200
  br label %202

202:                                              ; preds = %201
  br label %203

203:                                              ; preds = %202
  br label %204

204:                                              ; preds = %203
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12), align 4
  br i1 false, label %.loopexit9, label %205

205:                                              ; preds = %204
  br label %206

206:                                              ; preds = %205
  br label %207

207:                                              ; preds = %206
  br label %208

208:                                              ; preds = %207
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 44), align 4
  br i1 false, label %.loopexit9, label %209

209:                                              ; preds = %208
  br i1 false, label %170, label %210

210:                                              ; preds = %209
  br i1 false, label %211, label %222

211:                                              ; preds = %210
  br label %212

212:                                              ; preds = %211
  br label %213

213:                                              ; preds = %212
  br label %214

214:                                              ; preds = %213
  br label %215

215:                                              ; preds = %214
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16), align 4
  br i1 false, label %.loopexit9, label %216

216:                                              ; preds = %215
  br label %217

217:                                              ; preds = %216
  br label %218

218:                                              ; preds = %217
  br label %219

219:                                              ; preds = %218
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 48), align 4
  br i1 false, label %.loopexit9, label %220

220:                                              ; preds = %219
  br i1 false, label %170, label %221

221:                                              ; preds = %220
  unreachable

222:                                              ; preds = %210
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %223

223:                                              ; preds = %222
  br label %224

224:                                              ; preds = %223
  br label %225

225:                                              ; preds = %224
  br label %226

226:                                              ; preds = %225
  br label %227

227:                                              ; preds = %226
  br label %228

228:                                              ; preds = %227
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), align 4
  br label %229

229:                                              ; preds = %228
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2304), align 4
  br label %230

230:                                              ; preds = %229
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2560), align 4
  br label %231

231:                                              ; preds = %230
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2816), align 4
  br i1 false, label %.loopexit13, label %236

.loopexit13:                                      ; preds = %273, %263, %231
  %.lcssa10.ph = phi i32 [ 0, %231 ], [ 1, %263 ], [ 2, %273 ]
  br label %232

232:                                              ; preds = %.loopexit13, %250
  %.lcssa10 = phi i32 [ %.lcssa11, %250 ], [ %.lcssa10.ph, %.loopexit13 ]
  %233 = or disjoint i32 %.lcssa10, 256
  %234 = zext nneg i32 %233 to i64
  %235 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %234
  store i32 1, ptr %235, align 4
  unreachable

236:                                              ; preds = %231
  br i1 false, label %237, label %255

237:                                              ; preds = %274, %264, %236
  %.lcssa11 = phi i32 [ 0, %236 ], [ 1, %264 ], [ 2, %274 ]
  br label %238

238:                                              ; preds = %237
  br label %239

239:                                              ; preds = %238
  %240 = zext nneg i32 %.lcssa11 to i64
  %241 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %240
  store i32 1, ptr %241, align 4
  br label %242

242:                                              ; preds = %239
  %243 = or disjoint i32 %.lcssa11, 64
  %244 = zext nneg i32 %243 to i64
  %245 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %244
  store i32 1, ptr %245, align 4
  br label %246

246:                                              ; preds = %242
  %247 = or disjoint i32 %.lcssa11, 128
  %248 = zext nneg i32 %247 to i64
  %249 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %248
  store i32 1, ptr %249, align 4
  br label %250

250:                                              ; preds = %246
  %251 = or disjoint i32 %.lcssa11, 192
  %252 = zext nneg i32 %251 to i64
  %253 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %252
  store i32 1, ptr %253, align 4
  br i1 false, label %232, label %254

254:                                              ; preds = %250
  unreachable

255:                                              ; preds = %236
  br label %256

256:                                              ; preds = %255
  br label %257

257:                                              ; preds = %256
  br label %258

258:                                              ; preds = %257
  br label %259

259:                                              ; preds = %258
  br label %260

260:                                              ; preds = %259
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2052), align 4
  br label %261

261:                                              ; preds = %260
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2308), align 4
  br label %262

262:                                              ; preds = %261
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2564), align 4
  br label %263

263:                                              ; preds = %262
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2820), align 4
  br i1 false, label %.loopexit13, label %264

264:                                              ; preds = %263
  br i1 false, label %237, label %265

265:                                              ; preds = %264
  br i1 false, label %266, label %276

266:                                              ; preds = %265
  br label %267

267:                                              ; preds = %266
  br label %268

268:                                              ; preds = %267
  br label %269

269:                                              ; preds = %268
  br label %270

270:                                              ; preds = %269
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2056), align 4
  br label %271

271:                                              ; preds = %270
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2312), align 4
  br label %272

272:                                              ; preds = %271
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2568), align 4
  br label %273

273:                                              ; preds = %272
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2824), align 4
  br i1 false, label %.loopexit13, label %274

274:                                              ; preds = %273
  br i1 false, label %237, label %275

275:                                              ; preds = %274
  unreachable

276:                                              ; preds = %265
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %277

277:                                              ; preds = %276
  br label %278

278:                                              ; preds = %277
  br label %279

279:                                              ; preds = %278
  br label %280

280:                                              ; preds = %279
  br label %281

281:                                              ; preds = %280
  br label %282

282:                                              ; preds = %281
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), align 4
  br label %283

283:                                              ; preds = %282
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4352), align 4
  br i1 false, label %.loopexit15, label %289

.loopexit15:                                      ; preds = %331, %326, %321, %316, %283, %293, %298, %303
  %.lcssa14.ph = phi i32 [ 3, %303 ], [ 2, %298 ], [ 1, %293 ], [ 0, %283 ], [ 0, %316 ], [ 1, %321 ], [ 2, %326 ], [ 3, %331 ]
  br label %284

284:                                              ; preds = %.loopexit15, %308
  %.lcssa14 = phi i32 [ 4, %308 ], [ %.lcssa14.ph, %.loopexit15 ]
  %285 = shl nuw nsw i32 %.lcssa14, 3
  %286 = or disjoint i32 128, %285
  %287 = zext nneg i32 %286 to i64
  %288 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %287
  store i32 1, ptr %288, align 4
  unreachable

289:                                              ; preds = %283
  br label %290

290:                                              ; preds = %289
  br label %291

291:                                              ; preds = %290
  br label %292

292:                                              ; preds = %291
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4128), align 4
  br label %293

293:                                              ; preds = %292
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4384), align 4
  br i1 false, label %.loopexit15, label %294

294:                                              ; preds = %293
  br label %295

295:                                              ; preds = %294
  br label %296

296:                                              ; preds = %295
  br label %297

297:                                              ; preds = %296
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4160), align 4
  br label %298

298:                                              ; preds = %297
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4416), align 4
  br i1 false, label %.loopexit15, label %299

299:                                              ; preds = %298
  br label %300

300:                                              ; preds = %299
  br label %301

301:                                              ; preds = %300
  br label %302

302:                                              ; preds = %301
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4192), align 4
  br label %303

303:                                              ; preds = %302
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4448), align 4
  br i1 false, label %.loopexit15, label %304

304:                                              ; preds = %303
  br i1 false, label %305, label %310

305:                                              ; preds = %332, %304
  br label %306

306:                                              ; preds = %305
  br label %307

307:                                              ; preds = %306
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4224), align 4
  br label %308

308:                                              ; preds = %307
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4480), align 4
  br i1 false, label %284, label %309

309:                                              ; preds = %308
  unreachable

310:                                              ; preds = %304
  br i1 false, label %311, label %334

311:                                              ; preds = %310
  br label %312

312:                                              ; preds = %311
  br label %313

313:                                              ; preds = %312
  br label %314

314:                                              ; preds = %313
  br label %315

315:                                              ; preds = %314
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), align 4
  br label %316

316:                                              ; preds = %315
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4352), align 4
  br i1 false, label %.loopexit15, label %317

317:                                              ; preds = %316
  br label %318

318:                                              ; preds = %317
  br label %319

319:                                              ; preds = %318
  br label %320

320:                                              ; preds = %319
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4128), align 4
  br label %321

321:                                              ; preds = %320
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4384), align 4
  br i1 false, label %.loopexit15, label %322

322:                                              ; preds = %321
  br label %323

323:                                              ; preds = %322
  br label %324

324:                                              ; preds = %323
  br label %325

325:                                              ; preds = %324
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4160), align 4
  br label %326

326:                                              ; preds = %325
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4416), align 4
  br i1 false, label %.loopexit15, label %327

327:                                              ; preds = %326
  br label %328

328:                                              ; preds = %327
  br label %329

329:                                              ; preds = %328
  br label %330

330:                                              ; preds = %329
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4192), align 4
  br label %331

331:                                              ; preds = %330
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4448), align 4
  br i1 false, label %.loopexit15, label %332

332:                                              ; preds = %331
  br i1 false, label %305, label %333

333:                                              ; preds = %332
  unreachable

334:                                              ; preds = %310
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %335

335:                                              ; preds = %334
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
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), align 4
  br i1 false, label %.loopexit20, label %346

.loopexit20:                                      ; preds = %402, %398, %394, %390, %383, %379, %375, %371, %340, %349, %353, %357
  %.lcssa17.ph = phi i32 [ 0, %357 ], [ 0, %353 ], [ 0, %349 ], [ 0, %340 ], [ 1, %371 ], [ 1, %375 ], [ 1, %379 ], [ 1, %383 ], [ 2, %390 ], [ 2, %394 ], [ 2, %398 ], [ 2, %402 ]
  %.lcssa16.ph = phi i32 [ 3, %357 ], [ 2, %353 ], [ 1, %349 ], [ 0, %340 ], [ 0, %371 ], [ 1, %375 ], [ 2, %379 ], [ 3, %383 ], [ 0, %390 ], [ 1, %394 ], [ 2, %398 ], [ 3, %402 ]
  br label %341

341:                                              ; preds = %.loopexit20, %361
  %.lcssa17 = phi i32 [ %.lcssa19, %361 ], [ %.lcssa17.ph, %.loopexit20 ]
  %.lcssa16 = phi i32 [ 4, %361 ], [ %.lcssa16.ph, %.loopexit20 ]
  %342 = shl nuw nsw i32 %.lcssa16, 3
  %343 = or disjoint i32 %.lcssa17, %342
  %344 = zext nneg i32 %343 to i64
  %345 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %344
  store i32 1, ptr %345, align 4
  unreachable

346:                                              ; preds = %340
  br label %347

347:                                              ; preds = %346
  br label %348

348:                                              ; preds = %347
  br label %349

349:                                              ; preds = %348
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6176), align 4
  br i1 false, label %.loopexit20, label %350

350:                                              ; preds = %349
  br label %351

351:                                              ; preds = %350
  br label %352

352:                                              ; preds = %351
  br label %353

353:                                              ; preds = %352
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6208), align 4
  br i1 false, label %.loopexit20, label %354

354:                                              ; preds = %353
  br label %355

355:                                              ; preds = %354
  br label %356

356:                                              ; preds = %355
  br label %357

357:                                              ; preds = %356
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6240), align 4
  br i1 false, label %.loopexit20, label %358

358:                                              ; preds = %357
  br i1 false, label %359, label %366

359:                                              ; preds = %403, %384, %358
  %.lcssa19 = phi i32 [ 0, %358 ], [ 1, %384 ], [ 2, %403 ]
  br label %360

360:                                              ; preds = %359
  br label %361

361:                                              ; preds = %360
  %362 = or disjoint i32 %.lcssa19, 32
  %363 = zext nneg i32 %362 to i64
  %364 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %363
  store i32 1, ptr %364, align 4
  br i1 false, label %341, label %365

365:                                              ; preds = %361
  unreachable

366:                                              ; preds = %358
  br label %367

367:                                              ; preds = %366
  br label %368

368:                                              ; preds = %367
  br label %369

369:                                              ; preds = %368
  br label %370

370:                                              ; preds = %369
  br label %371

371:                                              ; preds = %370
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6148), align 4
  br i1 false, label %.loopexit20, label %372

372:                                              ; preds = %371
  br label %373

373:                                              ; preds = %372
  br label %374

374:                                              ; preds = %373
  br label %375

375:                                              ; preds = %374
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6180), align 4
  br i1 false, label %.loopexit20, label %376

376:                                              ; preds = %375
  br label %377

377:                                              ; preds = %376
  br label %378

378:                                              ; preds = %377
  br label %379

379:                                              ; preds = %378
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6212), align 4
  br i1 false, label %.loopexit20, label %380

380:                                              ; preds = %379
  br label %381

381:                                              ; preds = %380
  br label %382

382:                                              ; preds = %381
  br label %383

383:                                              ; preds = %382
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6244), align 4
  br i1 false, label %.loopexit20, label %384

384:                                              ; preds = %383
  br i1 false, label %359, label %385

385:                                              ; preds = %384
  br i1 false, label %386, label %405

386:                                              ; preds = %385
  br label %387

387:                                              ; preds = %386
  br label %388

388:                                              ; preds = %387
  br label %389

389:                                              ; preds = %388
  br label %390

390:                                              ; preds = %389
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6152), align 4
  br i1 false, label %.loopexit20, label %391

391:                                              ; preds = %390
  br label %392

392:                                              ; preds = %391
  br label %393

393:                                              ; preds = %392
  br label %394

394:                                              ; preds = %393
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6184), align 4
  br i1 false, label %.loopexit20, label %395

395:                                              ; preds = %394
  br label %396

396:                                              ; preds = %395
  br label %397

397:                                              ; preds = %396
  br label %398

398:                                              ; preds = %397
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6216), align 4
  br i1 false, label %.loopexit20, label %399

399:                                              ; preds = %398
  br label %400

400:                                              ; preds = %399
  br label %401

401:                                              ; preds = %400
  br label %402

402:                                              ; preds = %401
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6248), align 4
  br i1 false, label %.loopexit20, label %403

403:                                              ; preds = %402
  br i1 false, label %359, label %404

404:                                              ; preds = %403
  unreachable

405:                                              ; preds = %385
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
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
  br label %411

411:                                              ; preds = %410
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), align 4
  br label %412

412:                                              ; preds = %411
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8448), align 4
  br i1 false, label %.loopexit24, label %417

.loopexit24:                                      ; preds = %458, %450, %442, %434, %412
  %.lcssa21.ph = phi i32 [ 0, %412 ], [ 1, %434 ], [ 2, %442 ], [ 3, %450 ], [ 4, %458 ]
  br label %413

413:                                              ; preds = %.loopexit24, %423
  %.lcssa21 = phi i32 [ %.lcssa22, %423 ], [ %.lcssa21.ph, %.loopexit24 ]
  %414 = or disjoint i32 %.lcssa21, 128
  %415 = zext nneg i32 %414 to i64
  %416 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %415
  store i32 1, ptr %416, align 4
  unreachable

417:                                              ; preds = %412
  br i1 false, label %418, label %428

418:                                              ; preds = %459, %451, %443, %435, %417
  %.lcssa22 = phi i32 [ 0, %417 ], [ 1, %435 ], [ 2, %443 ], [ 3, %451 ], [ 4, %459 ]
  br label %419

419:                                              ; preds = %418
  br label %420

420:                                              ; preds = %419
  %421 = zext nneg i32 %.lcssa22 to i64
  %422 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %421
  store i32 1, ptr %422, align 4
  br label %423

423:                                              ; preds = %420
  %424 = or disjoint i32 %.lcssa22, 64
  %425 = zext nneg i32 %424 to i64
  %426 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %425
  store i32 1, ptr %426, align 4
  br i1 false, label %413, label %427

427:                                              ; preds = %423
  unreachable

428:                                              ; preds = %417
  br label %429

429:                                              ; preds = %428
  br label %430

430:                                              ; preds = %429
  br label %431

431:                                              ; preds = %430
  br label %432

432:                                              ; preds = %431
  br label %433

433:                                              ; preds = %432
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8196), align 4
  br label %434

434:                                              ; preds = %433
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8452), align 4
  br i1 false, label %.loopexit24, label %435

435:                                              ; preds = %434
  br i1 false, label %418, label %436

436:                                              ; preds = %435
  br label %437

437:                                              ; preds = %436
  br label %438

438:                                              ; preds = %437
  br label %439

439:                                              ; preds = %438
  br label %440

440:                                              ; preds = %439
  br label %441

441:                                              ; preds = %440
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8200), align 4
  br label %442

442:                                              ; preds = %441
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8456), align 4
  br i1 false, label %.loopexit24, label %443

443:                                              ; preds = %442
  br i1 false, label %418, label %444

444:                                              ; preds = %443
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
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8204), align 4
  br label %450

450:                                              ; preds = %449
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8460), align 4
  br i1 false, label %.loopexit24, label %451

451:                                              ; preds = %450
  br i1 false, label %418, label %452

452:                                              ; preds = %451
  br i1 false, label %453, label %461

453:                                              ; preds = %452
  br label %454

454:                                              ; preds = %453
  br label %455

455:                                              ; preds = %454
  br label %456

456:                                              ; preds = %455
  br label %457

457:                                              ; preds = %456
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8208), align 4
  br label %458

458:                                              ; preds = %457
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8464), align 4
  br i1 false, label %.loopexit24, label %459

459:                                              ; preds = %458
  br i1 false, label %418, label %460

460:                                              ; preds = %459
  unreachable

461:                                              ; preds = %452
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %462

462:                                              ; preds = %461
  br label %463

463:                                              ; preds = %462
  br label %464

464:                                              ; preds = %463
  br label %465

465:                                              ; preds = %464
  br label %466

466:                                              ; preds = %465
  br label %467

467:                                              ; preds = %466
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), align 4
  br label %468

468:                                              ; preds = %467
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10496), align 4
  br label %469

469:                                              ; preds = %468
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10752), align 4
  br label %470

470:                                              ; preds = %469
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 11008), align 4
  br i1 false, label %.loopexit26, label %476

.loopexit26:                                      ; preds = %506, %499, %470, %482
  %.lcssa25.ph = phi i32 [ 1, %482 ], [ 0, %470 ], [ 0, %499 ], [ 1, %506 ]
  br label %471

471:                                              ; preds = %.loopexit26, %489
  %.lcssa25 = phi i32 [ 2, %489 ], [ %.lcssa25.ph, %.loopexit26 ]
  %472 = shl nuw nsw i32 %.lcssa25, 3
  %473 = or disjoint i32 256, %472
  %474 = zext nneg i32 %473 to i64
  %475 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %474
  store i32 1, ptr %475, align 4
  unreachable

476:                                              ; preds = %470
  br label %477

477:                                              ; preds = %476
  br label %478

478:                                              ; preds = %477
  br label %479

479:                                              ; preds = %478
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10272), align 4
  br label %480

480:                                              ; preds = %479
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10528), align 4
  br label %481

481:                                              ; preds = %480
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10784), align 4
  br label %482

482:                                              ; preds = %481
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 11040), align 4
  br i1 false, label %.loopexit26, label %483

483:                                              ; preds = %482
  br i1 false, label %484, label %491

484:                                              ; preds = %507, %483
  br label %485

485:                                              ; preds = %484
  br label %486

486:                                              ; preds = %485
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10304), align 4
  br label %487

487:                                              ; preds = %486
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10560), align 4
  br label %488

488:                                              ; preds = %487
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10816), align 4
  br label %489

489:                                              ; preds = %488
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 11072), align 4
  br i1 false, label %471, label %490

490:                                              ; preds = %489
  unreachable

491:                                              ; preds = %483
  br i1 false, label %492, label %509

492:                                              ; preds = %491
  br label %493

493:                                              ; preds = %492
  br label %494

494:                                              ; preds = %493
  br label %495

495:                                              ; preds = %494
  br label %496

496:                                              ; preds = %495
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), align 4
  br label %497

497:                                              ; preds = %496
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10496), align 4
  br label %498

498:                                              ; preds = %497
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10752), align 4
  br label %499

499:                                              ; preds = %498
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 11008), align 4
  br i1 false, label %.loopexit26, label %500

500:                                              ; preds = %499
  br label %501

501:                                              ; preds = %500
  br label %502

502:                                              ; preds = %501
  br label %503

503:                                              ; preds = %502
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10272), align 4
  br label %504

504:                                              ; preds = %503
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10528), align 4
  br label %505

505:                                              ; preds = %504
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10784), align 4
  br label %506

506:                                              ; preds = %505
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 11040), align 4
  br i1 false, label %.loopexit26, label %507

507:                                              ; preds = %506
  br i1 false, label %484, label %508

508:                                              ; preds = %507
  unreachable

509:                                              ; preds = %491
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %510

510:                                              ; preds = %509
  br label %511

511:                                              ; preds = %510
  br label %512

512:                                              ; preds = %511
  br label %513

513:                                              ; preds = %512
  br label %514

514:                                              ; preds = %513
  br label %515

515:                                              ; preds = %514
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), align 4
  br i1 false, label %.loopexit30, label %519

.loopexit30:                                      ; preds = %545, %538, %531, %515
  %.lcssa27.ph = phi i32 [ 0, %515 ], [ 1, %531 ], [ 2, %538 ], [ 3, %545 ]
  br label %516

516:                                              ; preds = %.loopexit30, %522
  %.lcssa27 = phi i32 [ %.lcssa28, %522 ], [ %.lcssa27.ph, %.loopexit30 ]
  %517 = zext nneg i32 %.lcssa27 to i64
  %518 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %517
  store i32 1, ptr %518, align 4
  unreachable

519:                                              ; preds = %515
  br i1 false, label %520, label %526

520:                                              ; preds = %546, %539, %532, %519
  %.lcssa28 = phi i32 [ 0, %519 ], [ 1, %532 ], [ 2, %539 ], [ 3, %546 ]
  br label %521

521:                                              ; preds = %520
  br label %522

522:                                              ; preds = %521
  %523 = zext nneg i32 %.lcssa28 to i64
  %524 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %523
  store i32 1, ptr %524, align 4
  br i1 false, label %516, label %525

525:                                              ; preds = %522
  unreachable

526:                                              ; preds = %519
  br label %527

527:                                              ; preds = %526
  br label %528

528:                                              ; preds = %527
  br label %529

529:                                              ; preds = %528
  br label %530

530:                                              ; preds = %529
  br label %531

531:                                              ; preds = %530
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12292), align 4
  br i1 false, label %.loopexit30, label %532

532:                                              ; preds = %531
  br i1 false, label %520, label %533

533:                                              ; preds = %532
  br label %534

534:                                              ; preds = %533
  br label %535

535:                                              ; preds = %534
  br label %536

536:                                              ; preds = %535
  br label %537

537:                                              ; preds = %536
  br label %538

538:                                              ; preds = %537
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12296), align 4
  br i1 false, label %.loopexit30, label %539

539:                                              ; preds = %538
  br i1 false, label %520, label %540

540:                                              ; preds = %539
  br i1 false, label %541, label %548

541:                                              ; preds = %540
  br label %542

542:                                              ; preds = %541
  br label %543

543:                                              ; preds = %542
  br label %544

544:                                              ; preds = %543
  br label %545

545:                                              ; preds = %544
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12300), align 4
  br i1 false, label %.loopexit30, label %546

546:                                              ; preds = %545
  br i1 false, label %520, label %547

547:                                              ; preds = %546
  unreachable

548:                                              ; preds = %540
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
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
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), align 4
  br i1 false, label %.loopexit32, label %559

.loopexit32:                                      ; preds = %585, %581, %577, %554, %562, %566
  %.lcssa31.ph = phi i32 [ 2, %566 ], [ 1, %562 ], [ 0, %554 ], [ 0, %577 ], [ 1, %581 ], [ 2, %585 ]
  br label %555

555:                                              ; preds = %.loopexit32, %570
  %.lcssa31 = phi i32 [ 3, %570 ], [ %.lcssa31.ph, %.loopexit32 ]
  %556 = shl nuw nsw i32 %.lcssa31, 3
  %557 = zext nneg i32 %556 to i64
  %558 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %557
  store i32 1, ptr %558, align 4
  unreachable

559:                                              ; preds = %554
  br label %560

560:                                              ; preds = %559
  br label %561

561:                                              ; preds = %560
  br label %562

562:                                              ; preds = %561
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14368), align 4
  br i1 false, label %.loopexit32, label %563

563:                                              ; preds = %562
  br label %564

564:                                              ; preds = %563
  br label %565

565:                                              ; preds = %564
  br label %566

566:                                              ; preds = %565
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14400), align 4
  br i1 false, label %.loopexit32, label %567

567:                                              ; preds = %566
  br i1 false, label %568, label %572

568:                                              ; preds = %586, %567
  br label %569

569:                                              ; preds = %568
  br label %570

570:                                              ; preds = %569
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14432), align 4
  br i1 false, label %555, label %571

571:                                              ; preds = %570
  unreachable

572:                                              ; preds = %567
  br i1 false, label %573, label %588

573:                                              ; preds = %572
  br label %574

574:                                              ; preds = %573
  br label %575

575:                                              ; preds = %574
  br label %576

576:                                              ; preds = %575
  br label %577

577:                                              ; preds = %576
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), align 4
  br i1 false, label %.loopexit32, label %578

578:                                              ; preds = %577
  br label %579

579:                                              ; preds = %578
  br label %580

580:                                              ; preds = %579
  br label %581

581:                                              ; preds = %580
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14368), align 4
  br i1 false, label %.loopexit32, label %582

582:                                              ; preds = %581
  br label %583

583:                                              ; preds = %582
  br label %584

584:                                              ; preds = %583
  br label %585

585:                                              ; preds = %584
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14400), align 4
  br i1 false, label %.loopexit32, label %586

586:                                              ; preds = %585
  br i1 false, label %568, label %587

587:                                              ; preds = %586
  unreachable

588:                                              ; preds = %572
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
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
  br label %594

594:                                              ; preds = %593
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), align 4
  br label %595

595:                                              ; preds = %594
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16640), align 4
  br label %596

596:                                              ; preds = %595
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16896), align 4
  br i1 false, label %.loopexit33, label %598

.loopexit33:                                      ; preds = %612, %596
  br label %597

597:                                              ; preds = %.loopexit33, %603
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 17152), align 4
  unreachable

598:                                              ; preds = %596
  br i1 false, label %599, label %605

599:                                              ; preds = %613, %598
  br label %600

600:                                              ; preds = %599
  br label %601

601:                                              ; preds = %600
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), align 4
  br label %602

602:                                              ; preds = %601
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16640), align 4
  br label %603

603:                                              ; preds = %602
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16896), align 4
  br i1 false, label %597, label %604

604:                                              ; preds = %603
  unreachable

605:                                              ; preds = %598
  br i1 false, label %606, label %615

606:                                              ; preds = %605
  br label %607

607:                                              ; preds = %606
  br label %608

608:                                              ; preds = %607
  br label %609

609:                                              ; preds = %608
  br label %610

610:                                              ; preds = %609
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), align 4
  br label %611

611:                                              ; preds = %610
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16640), align 4
  br label %612

612:                                              ; preds = %611
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16896), align 4
  br i1 false, label %.loopexit33, label %613

613:                                              ; preds = %612
  br i1 false, label %599, label %614

614:                                              ; preds = %613
  unreachable

615:                                              ; preds = %605
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %616

616:                                              ; preds = %615
  br label %617

617:                                              ; preds = %616
  br label %618

618:                                              ; preds = %617
  br label %619

619:                                              ; preds = %618
  br label %620

620:                                              ; preds = %619
  br label %621

621:                                              ; preds = %620
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), align 4
  br i1 false, label %.loopexit38, label %627

.loopexit38:                                      ; preds = %659, %655, %648, %644, %621, %630
  %.lcssa35.ph = phi i32 [ 0, %630 ], [ 0, %621 ], [ 1, %644 ], [ 1, %648 ], [ 2, %655 ], [ 2, %659 ]
  %.lcssa34.ph = phi i32 [ 1, %630 ], [ 0, %621 ], [ 0, %644 ], [ 1, %648 ], [ 0, %655 ], [ 1, %659 ]
  br label %622

622:                                              ; preds = %.loopexit38, %634
  %.lcssa35 = phi i32 [ %.lcssa37, %634 ], [ %.lcssa35.ph, %.loopexit38 ]
  %.lcssa34 = phi i32 [ 2, %634 ], [ %.lcssa34.ph, %.loopexit38 ]
  %623 = shl nuw nsw i32 %.lcssa34, 3
  %624 = or disjoint i32 %.lcssa35, %623
  %625 = zext nneg i32 %624 to i64
  %626 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %625
  store i32 1, ptr %626, align 4
  unreachable

627:                                              ; preds = %621
  br label %628

628:                                              ; preds = %627
  br label %629

629:                                              ; preds = %628
  br label %630

630:                                              ; preds = %629
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18464), align 4
  br i1 false, label %.loopexit38, label %631

631:                                              ; preds = %630
  br i1 false, label %632, label %639

632:                                              ; preds = %660, %649, %631
  %.lcssa37 = phi i32 [ 0, %631 ], [ 1, %649 ], [ 2, %660 ]
  br label %633

633:                                              ; preds = %632
  br label %634

634:                                              ; preds = %633
  %635 = or disjoint i32 %.lcssa37, 16
  %636 = zext nneg i32 %635 to i64
  %637 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %636
  store i32 1, ptr %637, align 4
  br i1 false, label %622, label %638

638:                                              ; preds = %634
  unreachable

639:                                              ; preds = %631
  br label %640

640:                                              ; preds = %639
  br label %641

641:                                              ; preds = %640
  br label %642

642:                                              ; preds = %641
  br label %643

643:                                              ; preds = %642
  br label %644

644:                                              ; preds = %643
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18436), align 4
  br i1 false, label %.loopexit38, label %645

645:                                              ; preds = %644
  br label %646

646:                                              ; preds = %645
  br label %647

647:                                              ; preds = %646
  br label %648

648:                                              ; preds = %647
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18468), align 4
  br i1 false, label %.loopexit38, label %649

649:                                              ; preds = %648
  br i1 false, label %632, label %650

650:                                              ; preds = %649
  br i1 false, label %651, label %662

651:                                              ; preds = %650
  br label %652

652:                                              ; preds = %651
  br label %653

653:                                              ; preds = %652
  br label %654

654:                                              ; preds = %653
  br label %655

655:                                              ; preds = %654
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18440), align 4
  br i1 false, label %.loopexit38, label %656

656:                                              ; preds = %655
  br label %657

657:                                              ; preds = %656
  br label %658

658:                                              ; preds = %657
  br label %659

659:                                              ; preds = %658
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18472), align 4
  br i1 false, label %.loopexit38, label %660

660:                                              ; preds = %659
  br i1 false, label %632, label %661

661:                                              ; preds = %660
  unreachable

662:                                              ; preds = %650
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %663

663:                                              ; preds = %662
  br label %664

664:                                              ; preds = %663
  br label %665

665:                                              ; preds = %664
  br label %666

666:                                              ; preds = %665
  br label %667

667:                                              ; preds = %666
  br label %668

668:                                              ; preds = %667
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), align 4
  br label %669

669:                                              ; preds = %668
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20736), align 4
  br i1 false, label %.loopexit42, label %674

.loopexit42:                                      ; preds = %699, %691, %669
  %.lcssa39.ph = phi i32 [ 0, %669 ], [ 1, %691 ], [ 2, %699 ]
  br label %670

670:                                              ; preds = %.loopexit42, %680
  %.lcssa39 = phi i32 [ %.lcssa40, %680 ], [ %.lcssa39.ph, %.loopexit42 ]
  %671 = or disjoint i32 %.lcssa39, 128
  %672 = zext nneg i32 %671 to i64
  %673 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %672
  store i32 1, ptr %673, align 4
  unreachable

674:                                              ; preds = %669
  br i1 false, label %675, label %685

675:                                              ; preds = %700, %692, %674
  %.lcssa40 = phi i32 [ 0, %674 ], [ 1, %692 ], [ 2, %700 ]
  br label %676

676:                                              ; preds = %675
  br label %677

677:                                              ; preds = %676
  %678 = zext nneg i32 %.lcssa40 to i64
  %679 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %678
  store i32 1, ptr %679, align 4
  br label %680

680:                                              ; preds = %677
  %681 = or disjoint i32 %.lcssa40, 64
  %682 = zext nneg i32 %681 to i64
  %683 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %682
  store i32 1, ptr %683, align 4
  br i1 false, label %670, label %684

684:                                              ; preds = %680
  unreachable

685:                                              ; preds = %674
  br label %686

686:                                              ; preds = %685
  br label %687

687:                                              ; preds = %686
  br label %688

688:                                              ; preds = %687
  br label %689

689:                                              ; preds = %688
  br label %690

690:                                              ; preds = %689
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20484), align 4
  br label %691

691:                                              ; preds = %690
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20740), align 4
  br i1 false, label %.loopexit42, label %692

692:                                              ; preds = %691
  br i1 false, label %675, label %693

693:                                              ; preds = %692
  br i1 false, label %694, label %702

694:                                              ; preds = %693
  br label %695

695:                                              ; preds = %694
  br label %696

696:                                              ; preds = %695
  br label %697

697:                                              ; preds = %696
  br label %698

698:                                              ; preds = %697
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20488), align 4
  br label %699

699:                                              ; preds = %698
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20744), align 4
  br i1 false, label %.loopexit42, label %700

700:                                              ; preds = %699
  br i1 false, label %675, label %701

701:                                              ; preds = %700
  unreachable

702:                                              ; preds = %693
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
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
  br label %708

708:                                              ; preds = %707
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), align 4
  br label %709

709:                                              ; preds = %708
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22784), align 4
  br i1 false, label %.loopexit44, label %715

.loopexit44:                                      ; preds = %737, %732, %709, %719
  %.lcssa43.ph = phi i32 [ 1, %719 ], [ 0, %709 ], [ 0, %732 ], [ 1, %737 ]
  br label %710

710:                                              ; preds = %.loopexit44, %724
  %.lcssa43 = phi i32 [ 2, %724 ], [ %.lcssa43.ph, %.loopexit44 ]
  %711 = shl nuw nsw i32 %.lcssa43, 3
  %712 = or disjoint i32 128, %711
  %713 = zext nneg i32 %712 to i64
  %714 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %713
  store i32 1, ptr %714, align 4
  unreachable

715:                                              ; preds = %709
  br label %716

716:                                              ; preds = %715
  br label %717

717:                                              ; preds = %716
  br label %718

718:                                              ; preds = %717
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22560), align 4
  br label %719

719:                                              ; preds = %718
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22816), align 4
  br i1 false, label %.loopexit44, label %720

720:                                              ; preds = %719
  br i1 false, label %721, label %726

721:                                              ; preds = %738, %720
  br label %722

722:                                              ; preds = %721
  br label %723

723:                                              ; preds = %722
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22592), align 4
  br label %724

724:                                              ; preds = %723
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22848), align 4
  br i1 false, label %710, label %725

725:                                              ; preds = %724
  unreachable

726:                                              ; preds = %720
  br i1 false, label %727, label %740

727:                                              ; preds = %726
  br label %728

728:                                              ; preds = %727
  br label %729

729:                                              ; preds = %728
  br label %730

730:                                              ; preds = %729
  br label %731

731:                                              ; preds = %730
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), align 4
  br label %732

732:                                              ; preds = %731
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22784), align 4
  br i1 false, label %.loopexit44, label %733

733:                                              ; preds = %732
  br label %734

734:                                              ; preds = %733
  br label %735

735:                                              ; preds = %734
  br label %736

736:                                              ; preds = %735
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22560), align 4
  br label %737

737:                                              ; preds = %736
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22816), align 4
  br i1 false, label %.loopexit44, label %738

738:                                              ; preds = %737
  br i1 false, label %721, label %739

739:                                              ; preds = %738
  unreachable

740:                                              ; preds = %726
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %741

741:                                              ; preds = %740
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
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), align 4
  br label %747

747:                                              ; preds = %746
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24832), align 4
  br i1 false, label %.loopexit49, label %754

.loopexit49:                                      ; preds = %795, %790, %782, %777, %747, %758
  %.lcssa46.ph = phi i32 [ 0, %758 ], [ 0, %747 ], [ 1, %777 ], [ 1, %782 ], [ 2, %790 ], [ 2, %795 ]
  %.lcssa45.ph = phi i32 [ 1, %758 ], [ 0, %747 ], [ 0, %777 ], [ 1, %782 ], [ 0, %790 ], [ 1, %795 ]
  br label %748

748:                                              ; preds = %.loopexit49, %766
  %.lcssa46 = phi i32 [ %.lcssa48, %766 ], [ %.lcssa46.ph, %.loopexit49 ]
  %.lcssa45 = phi i32 [ 2, %766 ], [ %.lcssa45.ph, %.loopexit49 ]
  %749 = shl nuw nsw i32 %.lcssa45, 3
  %750 = or disjoint i32 128, %749
  %751 = or disjoint i32 %.lcssa46, %750
  %752 = zext nneg i32 %751 to i64
  %753 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %752
  store i32 1, ptr %753, align 4
  unreachable

754:                                              ; preds = %747
  br label %755

755:                                              ; preds = %754
  br label %756

756:                                              ; preds = %755
  br label %757

757:                                              ; preds = %756
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24608), align 4
  br label %758

758:                                              ; preds = %757
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24864), align 4
  br i1 false, label %.loopexit49, label %759

759:                                              ; preds = %758
  br i1 false, label %760, label %771

760:                                              ; preds = %796, %783, %759
  %.lcssa48 = phi i32 [ 0, %759 ], [ 1, %783 ], [ 2, %796 ]
  br label %761

761:                                              ; preds = %760
  br label %762

762:                                              ; preds = %761
  %763 = or disjoint i32 %.lcssa48, 16
  %764 = zext nneg i32 %763 to i64
  %765 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %764
  store i32 1, ptr %765, align 4
  br label %766

766:                                              ; preds = %762
  %767 = or disjoint i32 %.lcssa48, 80
  %768 = zext nneg i32 %767 to i64
  %769 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %768
  store i32 1, ptr %769, align 4
  br i1 false, label %748, label %770

770:                                              ; preds = %766
  unreachable

771:                                              ; preds = %759
  br label %772

772:                                              ; preds = %771
  br label %773

773:                                              ; preds = %772
  br label %774

774:                                              ; preds = %773
  br label %775

775:                                              ; preds = %774
  br label %776

776:                                              ; preds = %775
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24580), align 4
  br label %777

777:                                              ; preds = %776
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24836), align 4
  br i1 false, label %.loopexit49, label %778

778:                                              ; preds = %777
  br label %779

779:                                              ; preds = %778
  br label %780

780:                                              ; preds = %779
  br label %781

781:                                              ; preds = %780
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24612), align 4
  br label %782

782:                                              ; preds = %781
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24868), align 4
  br i1 false, label %.loopexit49, label %783

783:                                              ; preds = %782
  br i1 false, label %760, label %784

784:                                              ; preds = %783
  br i1 false, label %785, label %798

785:                                              ; preds = %784
  br label %786

786:                                              ; preds = %785
  br label %787

787:                                              ; preds = %786
  br label %788

788:                                              ; preds = %787
  br label %789

789:                                              ; preds = %788
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24584), align 4
  br label %790

790:                                              ; preds = %789
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24840), align 4
  br i1 false, label %.loopexit49, label %791

791:                                              ; preds = %790
  br label %792

792:                                              ; preds = %791
  br label %793

793:                                              ; preds = %792
  br label %794

794:                                              ; preds = %793
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24616), align 4
  br label %795

795:                                              ; preds = %794
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24872), align 4
  br i1 false, label %.loopexit49, label %796

796:                                              ; preds = %795
  br i1 false, label %760, label %797

797:                                              ; preds = %796
  unreachable

798:                                              ; preds = %784
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 0, ptr @kount, align 4
  %799 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %799, 0
  br i1 %.not, label %802, label %800

800:                                              ; preds = %798
  %801 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %801, ptr @n, align 4
  br label %803

802:                                              ; preds = %798
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %.pre = load i32, ptr @n, align 4
  br label %803

803:                                              ; preds = %802, %800
  %804 = phi i32 [ %.pre, %802 ], [ %801, %800 ]
  %805 = call i32 @Trial(i32 noundef %804)
  %.not1 = icmp eq i32 %805, 0
  br i1 %.not1, label %806, label %807

806:                                              ; preds = %803
  %puts2 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %811

807:                                              ; preds = %803
  %808 = load i32, ptr @kount, align 4
  %.not3 = icmp eq i32 %808, 2005
  br i1 %.not3, label %810, label %809

809:                                              ; preds = %807
  %puts4 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %810

810:                                              ; preds = %809, %807
  br label %811

811:                                              ; preds = %810, %806
  %812 = load i32, ptr @n, align 4
  %813 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %812) #4
  %814 = load i32, ptr @kount, align 4
  %815 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %814) #4
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %3, %0
  %2 = phi i32 [ %4, %3 ], [ 0, %0 ]
  %exitcond = icmp ne i32 %2, 100
  br i1 %exitcond, label %3, label %5

3:                                                ; preds = %1
  call void @Puzzle()
  %4 = add nuw nsw i32 %2, 1
  br label %1, !llvm.loop !17

5:                                                ; preds = %1
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

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
