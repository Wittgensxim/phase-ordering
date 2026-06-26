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

1:                                                ; preds = %6, %0
  %indvars.iv = phi i64 [ 0, %0 ], [ %indvars.iv.next.2, %6 ]
  br label %2

2:                                                ; preds = %1
  %3 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %indvars.iv
  store i32 1, ptr %3, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %indvars.iv.next
  store i32 1, ptr %5, align 4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %exitcond.2 = icmp ne i64 %indvars.iv.next.1, 512
  br i1 %exitcond.2, label %6, label %8

6:                                                ; preds = %4
  %7 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %indvars.iv.next.1
  store i32 1, ptr %7, align 4
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3
  br label %1, !llvm.loop !13

8:                                                ; preds = %4
  br label %9

9:                                                ; preds = %125, %8
  %indvars.iv10 = phi i64 [ %indvars.iv.next11, %125 ], [ 1, %8 ]
  %exitcond13 = icmp ne i64 %indvars.iv10, 6
  br i1 %exitcond13, label %10, label %126

10:                                               ; preds = %9
  br label %11

11:                                               ; preds = %10
  br label %12

12:                                               ; preds = %11
  br label %13

13:                                               ; preds = %12
  br label %14

14:                                               ; preds = %13
  %15 = or disjoint i64 %indvars.iv10, 72
  %16 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %15
  store i32 0, ptr %16, align 4
  br label %17

17:                                               ; preds = %14
  %18 = or disjoint i64 %indvars.iv10, 136
  %19 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %18
  store i32 0, ptr %19, align 4
  br label %20

20:                                               ; preds = %17
  %21 = or disjoint i64 %indvars.iv10, 200
  %22 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %21
  store i32 0, ptr %22, align 4
  br label %23

23:                                               ; preds = %20
  %24 = or disjoint i64 %indvars.iv10, 264
  %25 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %24
  store i32 0, ptr %25, align 4
  br label %26

26:                                               ; preds = %23
  %27 = or disjoint i64 %indvars.iv10, 328
  %28 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %27
  store i32 0, ptr %28, align 4
  br i1 false, label %.loopexit, label %34

.loopexit:                                        ; preds = %26, %49, %67, %85, %103
  %indvars.iv10.lcssa119.ph = phi i64 [ %indvars.iv10, %103 ], [ %indvars.iv10, %85 ], [ %indvars.iv10, %67 ], [ %indvars.iv10, %49 ], [ %indvars.iv10, %26 ]
  %indvars.iv6.lcssa118.ph = phi i64 [ 5, %103 ], [ 4, %85 ], [ 3, %67 ], [ 2, %49 ], [ 1, %26 ]
  br label %29

29:                                               ; preds = %.loopexit, %121
  %indvars.iv10.lcssa119 = phi i64 [ %indvars.iv10.lcssa121, %121 ], [ %indvars.iv10.lcssa119.ph, %.loopexit ]
  %indvars.iv6.lcssa118 = phi i64 [ 6, %121 ], [ %indvars.iv6.lcssa118.ph, %.loopexit ]
  %30 = shl nuw nsw i64 %indvars.iv6.lcssa118, 3
  %31 = or disjoint i64 384, %30
  %32 = or disjoint i64 %indvars.iv10.lcssa119, %31
  %33 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %32
  store i32 0, ptr %33, align 4
  unreachable

34:                                               ; preds = %26
  br label %35

35:                                               ; preds = %34
  br label %36

36:                                               ; preds = %35
  br label %37

37:                                               ; preds = %36
  %38 = or disjoint i64 %indvars.iv10, 80
  %39 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %38
  store i32 0, ptr %39, align 4
  br label %40

40:                                               ; preds = %37
  %41 = or disjoint i64 %indvars.iv10, 144
  %42 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %41
  store i32 0, ptr %42, align 4
  br label %43

43:                                               ; preds = %40
  %44 = or disjoint i64 %indvars.iv10, 208
  %45 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %44
  store i32 0, ptr %45, align 4
  br label %46

46:                                               ; preds = %43
  %47 = or disjoint i64 %indvars.iv10, 272
  %48 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %47
  store i32 0, ptr %48, align 4
  br label %49

49:                                               ; preds = %46
  %50 = or disjoint i64 %indvars.iv10, 336
  %51 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %50
  store i32 0, ptr %51, align 4
  br i1 false, label %.loopexit, label %52

52:                                               ; preds = %49
  br label %53

53:                                               ; preds = %52
  br label %54

54:                                               ; preds = %53
  br label %55

55:                                               ; preds = %54
  %56 = or disjoint i64 %indvars.iv10, 88
  %57 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %56
  store i32 0, ptr %57, align 4
  br label %58

58:                                               ; preds = %55
  %59 = or disjoint i64 %indvars.iv10, 152
  %60 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %59
  store i32 0, ptr %60, align 4
  br label %61

61:                                               ; preds = %58
  %62 = or disjoint i64 %indvars.iv10, 216
  %63 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %62
  store i32 0, ptr %63, align 4
  br label %64

64:                                               ; preds = %61
  %65 = or disjoint i64 %indvars.iv10, 280
  %66 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %65
  store i32 0, ptr %66, align 4
  br label %67

67:                                               ; preds = %64
  %68 = or disjoint i64 %indvars.iv10, 344
  %69 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %68
  store i32 0, ptr %69, align 4
  br i1 false, label %.loopexit, label %70

70:                                               ; preds = %67
  br label %71

71:                                               ; preds = %70
  br label %72

72:                                               ; preds = %71
  br label %73

73:                                               ; preds = %72
  %74 = or disjoint i64 %indvars.iv10, 96
  %75 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %74
  store i32 0, ptr %75, align 4
  br label %76

76:                                               ; preds = %73
  %77 = or disjoint i64 %indvars.iv10, 160
  %78 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %77
  store i32 0, ptr %78, align 4
  br label %79

79:                                               ; preds = %76
  %80 = or disjoint i64 %indvars.iv10, 224
  %81 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %80
  store i32 0, ptr %81, align 4
  br label %82

82:                                               ; preds = %79
  %83 = or disjoint i64 %indvars.iv10, 288
  %84 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %83
  store i32 0, ptr %84, align 4
  br label %85

85:                                               ; preds = %82
  %86 = or disjoint i64 %indvars.iv10, 352
  %87 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %86
  store i32 0, ptr %87, align 4
  br i1 false, label %.loopexit, label %88

88:                                               ; preds = %85
  br label %89

89:                                               ; preds = %88
  br label %90

90:                                               ; preds = %89
  br label %91

91:                                               ; preds = %90
  %92 = or disjoint i64 %indvars.iv10, 104
  %93 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %92
  store i32 0, ptr %93, align 4
  br label %94

94:                                               ; preds = %91
  %95 = or disjoint i64 %indvars.iv10, 168
  %96 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %95
  store i32 0, ptr %96, align 4
  br label %97

97:                                               ; preds = %94
  %98 = or disjoint i64 %indvars.iv10, 232
  %99 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %98
  store i32 0, ptr %99, align 4
  br label %100

100:                                              ; preds = %97
  %101 = or disjoint i64 %indvars.iv10, 296
  %102 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %101
  store i32 0, ptr %102, align 4
  br label %103

103:                                              ; preds = %100
  %104 = or disjoint i64 %indvars.iv10, 360
  %105 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %104
  store i32 0, ptr %105, align 4
  br i1 false, label %.loopexit, label %106

106:                                              ; preds = %103
  br i1 false, label %107, label %125

107:                                              ; preds = %106
  %indvars.iv10.lcssa121 = phi i64 [ %indvars.iv10, %106 ]
  br label %108

108:                                              ; preds = %107
  br label %109

109:                                              ; preds = %108
  %110 = or disjoint i64 %indvars.iv10.lcssa121, 112
  %111 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %110
  store i32 0, ptr %111, align 4
  br label %112

112:                                              ; preds = %109
  %113 = or disjoint i64 %indvars.iv10.lcssa121, 176
  %114 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %113
  store i32 0, ptr %114, align 4
  br label %115

115:                                              ; preds = %112
  %116 = or disjoint i64 %indvars.iv10.lcssa121, 240
  %117 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %116
  store i32 0, ptr %117, align 4
  br label %118

118:                                              ; preds = %115
  %119 = or disjoint i64 %indvars.iv10.lcssa121, 304
  %120 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %119
  store i32 0, ptr %120, align 4
  br label %121

121:                                              ; preds = %118
  %122 = or disjoint i64 %indvars.iv10.lcssa121, 368
  %123 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %122
  store i32 0, ptr %123, align 4
  br i1 false, label %29, label %124

124:                                              ; preds = %121
  unreachable

125:                                              ; preds = %106
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1
  br label %9, !llvm.loop !14

126:                                              ; preds = %9
  br label %127

127:                                              ; preds = %139, %126
  %indvars.iv18 = phi i64 [ %indvars.iv.next19, %139 ], [ 0, %126 ]
  %exitcond21 = icmp ne i64 %indvars.iv18, 13
  br i1 %exitcond21, label %128, label %140

128:                                              ; preds = %127
  %129 = getelementptr inbounds nuw [2048 x i8], ptr @p, i64 %indvars.iv18
  br label %130

130:                                              ; preds = %136, %128
  %indvars.iv14 = phi i64 [ 0, %128 ], [ %indvars.iv.next15.2, %136 ]
  br label %131

131:                                              ; preds = %130
  %132 = getelementptr inbounds nuw [2048 x i8], ptr @p, i64 %indvars.iv18
  %133 = getelementptr inbounds nuw [4 x i8], ptr %132, i64 %indvars.iv14
  store i32 0, ptr %133, align 4
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14, 1
  br label %134

134:                                              ; preds = %131
  %135 = getelementptr inbounds nuw [4 x i8], ptr %129, i64 %indvars.iv.next15
  store i32 0, ptr %135, align 4
  %indvars.iv.next15.1 = add nuw nsw i64 %indvars.iv14, 2
  %exitcond17.2 = icmp ne i64 %indvars.iv.next15.1, 512
  br i1 %exitcond17.2, label %136, label %139

136:                                              ; preds = %134
  %137 = getelementptr inbounds nuw [2048 x i8], ptr @p, i64 %indvars.iv18
  %138 = getelementptr inbounds nuw [4 x i8], ptr %137, i64 %indvars.iv.next15.1
  store i32 0, ptr %138, align 4
  %indvars.iv.next15.2 = add nuw nsw i64 %indvars.iv14, 3
  br label %130, !llvm.loop !15

139:                                              ; preds = %134
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1
  br label %127, !llvm.loop !16

140:                                              ; preds = %127
  br label %141

141:                                              ; preds = %140
  br label %142

142:                                              ; preds = %141
  br label %143

143:                                              ; preds = %142
  br label %144

144:                                              ; preds = %143
  br label %145

145:                                              ; preds = %144
  br label %146

146:                                              ; preds = %145
  store i32 1, ptr @p, align 4
  br i1 false, label %.loopexit126, label %151

.loopexit126:                                     ; preds = %204, %200, %193, %189, %182, %178, %171, %167, %146, %154
  %indvars.iv26.lcssa123.ph = phi i64 [ 0, %154 ], [ 0, %146 ], [ 1, %167 ], [ 1, %171 ], [ 2, %178 ], [ 2, %182 ], [ 3, %189 ], [ 3, %193 ], [ 4, %200 ], [ 4, %204 ]
  %indvars.iv22.lcssa122.ph = phi i64 [ 1, %154 ], [ 0, %146 ], [ 0, %167 ], [ 1, %171 ], [ 0, %178 ], [ 1, %182 ], [ 0, %189 ], [ 1, %193 ], [ 0, %200 ], [ 1, %204 ]
  br label %147

147:                                              ; preds = %.loopexit126, %158
  %indvars.iv26.lcssa123 = phi i64 [ %indvars.iv26.lcssa125, %158 ], [ %indvars.iv26.lcssa123.ph, %.loopexit126 ]
  %indvars.iv22.lcssa122 = phi i64 [ 2, %158 ], [ %indvars.iv22.lcssa122.ph, %.loopexit126 ]
  %148 = shl nuw nsw i64 %indvars.iv22.lcssa122, 3
  %149 = or disjoint i64 %indvars.iv26.lcssa123, %148
  %150 = getelementptr inbounds nuw [4 x i8], ptr @p, i64 %149
  store i32 1, ptr %150, align 4
  unreachable

151:                                              ; preds = %146
  br label %152

152:                                              ; preds = %151
  br label %153

153:                                              ; preds = %152
  br label %154

154:                                              ; preds = %153
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 32), align 4
  br i1 false, label %.loopexit126, label %155

155:                                              ; preds = %154
  br i1 false, label %156, label %162

156:                                              ; preds = %205, %194, %183, %172, %155
  %indvars.iv26.lcssa125 = phi i64 [ 0, %155 ], [ 1, %172 ], [ 2, %183 ], [ 3, %194 ], [ 4, %205 ]
  br label %157

157:                                              ; preds = %156
  br label %158

158:                                              ; preds = %157
  %159 = or disjoint i64 %indvars.iv26.lcssa125, 16
  %160 = getelementptr inbounds nuw [4 x i8], ptr @p, i64 %159
  store i32 1, ptr %160, align 4
  br i1 false, label %147, label %161

161:                                              ; preds = %158
  unreachable

162:                                              ; preds = %155
  br label %163

163:                                              ; preds = %162
  br label %164

164:                                              ; preds = %163
  br label %165

165:                                              ; preds = %164
  br label %166

166:                                              ; preds = %165
  br label %167

167:                                              ; preds = %166
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4), align 4
  br i1 false, label %.loopexit126, label %168

168:                                              ; preds = %167
  br label %169

169:                                              ; preds = %168
  br label %170

170:                                              ; preds = %169
  br label %171

171:                                              ; preds = %170
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 36), align 4
  br i1 false, label %.loopexit126, label %172

172:                                              ; preds = %171
  br i1 false, label %156, label %173

173:                                              ; preds = %172
  br label %174

174:                                              ; preds = %173
  br label %175

175:                                              ; preds = %174
  br label %176

176:                                              ; preds = %175
  br label %177

177:                                              ; preds = %176
  br label %178

178:                                              ; preds = %177
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8), align 4
  br i1 false, label %.loopexit126, label %179

179:                                              ; preds = %178
  br label %180

180:                                              ; preds = %179
  br label %181

181:                                              ; preds = %180
  br label %182

182:                                              ; preds = %181
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 40), align 4
  br i1 false, label %.loopexit126, label %183

183:                                              ; preds = %182
  br i1 false, label %156, label %184

184:                                              ; preds = %183
  br label %185

185:                                              ; preds = %184
  br label %186

186:                                              ; preds = %185
  br label %187

187:                                              ; preds = %186
  br label %188

188:                                              ; preds = %187
  br label %189

189:                                              ; preds = %188
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12), align 4
  br i1 false, label %.loopexit126, label %190

190:                                              ; preds = %189
  br label %191

191:                                              ; preds = %190
  br label %192

192:                                              ; preds = %191
  br label %193

193:                                              ; preds = %192
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 44), align 4
  br i1 false, label %.loopexit126, label %194

194:                                              ; preds = %193
  br i1 false, label %156, label %195

195:                                              ; preds = %194
  br i1 false, label %196, label %207

196:                                              ; preds = %195
  br label %197

197:                                              ; preds = %196
  br label %198

198:                                              ; preds = %197
  br label %199

199:                                              ; preds = %198
  br label %200

200:                                              ; preds = %199
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16), align 4
  br i1 false, label %.loopexit126, label %201

201:                                              ; preds = %200
  br label %202

202:                                              ; preds = %201
  br label %203

203:                                              ; preds = %202
  br label %204

204:                                              ; preds = %203
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 48), align 4
  br i1 false, label %.loopexit126, label %205

205:                                              ; preds = %204
  br i1 false, label %156, label %206

206:                                              ; preds = %205
  unreachable

207:                                              ; preds = %195
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %208

208:                                              ; preds = %207
  br label %209

209:                                              ; preds = %208
  br label %210

210:                                              ; preds = %209
  br label %211

211:                                              ; preds = %210
  br label %212

212:                                              ; preds = %211
  br label %213

213:                                              ; preds = %212
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), align 4
  br label %214

214:                                              ; preds = %213
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2304), align 4
  br label %215

215:                                              ; preds = %214
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2560), align 4
  br label %216

216:                                              ; preds = %215
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2816), align 4
  br i1 false, label %.loopexit130, label %220

.loopexit130:                                     ; preds = %253, %243, %216
  %indvars.iv34.lcssa127.ph = phi i64 [ 0, %216 ], [ 1, %243 ], [ 2, %253 ]
  br label %217

217:                                              ; preds = %.loopexit130, %231
  %indvars.iv34.lcssa127 = phi i64 [ %indvars.iv34.lcssa128, %231 ], [ %indvars.iv34.lcssa127.ph, %.loopexit130 ]
  %218 = or disjoint i64 %indvars.iv34.lcssa127, 256
  %219 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %218
  store i32 1, ptr %219, align 4
  unreachable

220:                                              ; preds = %216
  br i1 false, label %221, label %235

221:                                              ; preds = %254, %244, %220
  %indvars.iv34.lcssa128 = phi i64 [ 0, %220 ], [ 1, %244 ], [ 2, %254 ]
  br label %222

222:                                              ; preds = %221
  br label %223

223:                                              ; preds = %222
  %224 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %indvars.iv34.lcssa128
  store i32 1, ptr %224, align 4
  br label %225

225:                                              ; preds = %223
  %226 = or disjoint i64 %indvars.iv34.lcssa128, 64
  %227 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %226
  store i32 1, ptr %227, align 4
  br label %228

228:                                              ; preds = %225
  %229 = or disjoint i64 %indvars.iv34.lcssa128, 128
  %230 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %229
  store i32 1, ptr %230, align 4
  br label %231

231:                                              ; preds = %228
  %232 = or disjoint i64 %indvars.iv34.lcssa128, 192
  %233 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %232
  store i32 1, ptr %233, align 4
  br i1 false, label %217, label %234

234:                                              ; preds = %231
  unreachable

235:                                              ; preds = %220
  br label %236

236:                                              ; preds = %235
  br label %237

237:                                              ; preds = %236
  br label %238

238:                                              ; preds = %237
  br label %239

239:                                              ; preds = %238
  br label %240

240:                                              ; preds = %239
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2052), align 4
  br label %241

241:                                              ; preds = %240
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2308), align 4
  br label %242

242:                                              ; preds = %241
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2564), align 4
  br label %243

243:                                              ; preds = %242
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2820), align 4
  br i1 false, label %.loopexit130, label %244

244:                                              ; preds = %243
  br i1 false, label %221, label %245

245:                                              ; preds = %244
  br i1 false, label %246, label %256

246:                                              ; preds = %245
  br label %247

247:                                              ; preds = %246
  br label %248

248:                                              ; preds = %247
  br label %249

249:                                              ; preds = %248
  br label %250

250:                                              ; preds = %249
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2056), align 4
  br label %251

251:                                              ; preds = %250
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2312), align 4
  br label %252

252:                                              ; preds = %251
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2568), align 4
  br label %253

253:                                              ; preds = %252
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 2824), align 4
  br i1 false, label %.loopexit130, label %254

254:                                              ; preds = %253
  br i1 false, label %221, label %255

255:                                              ; preds = %254
  unreachable

256:                                              ; preds = %245
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %257

257:                                              ; preds = %256
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
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), align 4
  br label %263

263:                                              ; preds = %262
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4352), align 4
  br i1 false, label %.loopexit132, label %268

.loopexit132:                                     ; preds = %310, %305, %300, %295, %263, %272, %277, %282
  %indvars.iv42.lcssa131.ph = phi i64 [ 3, %282 ], [ 2, %277 ], [ 1, %272 ], [ 0, %263 ], [ 0, %295 ], [ 1, %300 ], [ 2, %305 ], [ 3, %310 ]
  br label %264

264:                                              ; preds = %.loopexit132, %287
  %indvars.iv42.lcssa131 = phi i64 [ 4, %287 ], [ %indvars.iv42.lcssa131.ph, %.loopexit132 ]
  %265 = shl nuw nsw i64 %indvars.iv42.lcssa131, 3
  %266 = or disjoint i64 128, %265
  %267 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %266
  store i32 1, ptr %267, align 4
  unreachable

268:                                              ; preds = %263
  br label %269

269:                                              ; preds = %268
  br label %270

270:                                              ; preds = %269
  br label %271

271:                                              ; preds = %270
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4128), align 4
  br label %272

272:                                              ; preds = %271
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4384), align 4
  br i1 false, label %.loopexit132, label %273

273:                                              ; preds = %272
  br label %274

274:                                              ; preds = %273
  br label %275

275:                                              ; preds = %274
  br label %276

276:                                              ; preds = %275
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4160), align 4
  br label %277

277:                                              ; preds = %276
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4416), align 4
  br i1 false, label %.loopexit132, label %278

278:                                              ; preds = %277
  br label %279

279:                                              ; preds = %278
  br label %280

280:                                              ; preds = %279
  br label %281

281:                                              ; preds = %280
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4192), align 4
  br label %282

282:                                              ; preds = %281
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4448), align 4
  br i1 false, label %.loopexit132, label %283

283:                                              ; preds = %282
  br i1 false, label %284, label %289

284:                                              ; preds = %311, %283
  br label %285

285:                                              ; preds = %284
  br label %286

286:                                              ; preds = %285
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4224), align 4
  br label %287

287:                                              ; preds = %286
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4480), align 4
  br i1 false, label %264, label %288

288:                                              ; preds = %287
  unreachable

289:                                              ; preds = %283
  br i1 false, label %290, label %313

290:                                              ; preds = %289
  br label %291

291:                                              ; preds = %290
  br label %292

292:                                              ; preds = %291
  br label %293

293:                                              ; preds = %292
  br label %294

294:                                              ; preds = %293
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), align 4
  br label %295

295:                                              ; preds = %294
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4352), align 4
  br i1 false, label %.loopexit132, label %296

296:                                              ; preds = %295
  br label %297

297:                                              ; preds = %296
  br label %298

298:                                              ; preds = %297
  br label %299

299:                                              ; preds = %298
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4128), align 4
  br label %300

300:                                              ; preds = %299
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4384), align 4
  br i1 false, label %.loopexit132, label %301

301:                                              ; preds = %300
  br label %302

302:                                              ; preds = %301
  br label %303

303:                                              ; preds = %302
  br label %304

304:                                              ; preds = %303
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4160), align 4
  br label %305

305:                                              ; preds = %304
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4416), align 4
  br i1 false, label %.loopexit132, label %306

306:                                              ; preds = %305
  br label %307

307:                                              ; preds = %306
  br label %308

308:                                              ; preds = %307
  br label %309

309:                                              ; preds = %308
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4192), align 4
  br label %310

310:                                              ; preds = %309
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 4448), align 4
  br i1 false, label %.loopexit132, label %311

311:                                              ; preds = %310
  br i1 false, label %284, label %312

312:                                              ; preds = %311
  unreachable

313:                                              ; preds = %289
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %314

314:                                              ; preds = %313
  br label %315

315:                                              ; preds = %314
  br label %316

316:                                              ; preds = %315
  br label %317

317:                                              ; preds = %316
  br label %318

318:                                              ; preds = %317
  br label %319

319:                                              ; preds = %318
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), align 4
  br i1 false, label %.loopexit137, label %324

.loopexit137:                                     ; preds = %379, %375, %371, %367, %360, %356, %352, %348, %319, %327, %331, %335
  %indvars.iv50.lcssa134.ph = phi i64 [ 0, %335 ], [ 0, %331 ], [ 0, %327 ], [ 0, %319 ], [ 1, %348 ], [ 1, %352 ], [ 1, %356 ], [ 1, %360 ], [ 2, %367 ], [ 2, %371 ], [ 2, %375 ], [ 2, %379 ]
  %indvars.iv46.lcssa133.ph = phi i64 [ 3, %335 ], [ 2, %331 ], [ 1, %327 ], [ 0, %319 ], [ 0, %348 ], [ 1, %352 ], [ 2, %356 ], [ 3, %360 ], [ 0, %367 ], [ 1, %371 ], [ 2, %375 ], [ 3, %379 ]
  br label %320

320:                                              ; preds = %.loopexit137, %339
  %indvars.iv50.lcssa134 = phi i64 [ %indvars.iv50.lcssa136, %339 ], [ %indvars.iv50.lcssa134.ph, %.loopexit137 ]
  %indvars.iv46.lcssa133 = phi i64 [ 4, %339 ], [ %indvars.iv46.lcssa133.ph, %.loopexit137 ]
  %321 = shl nuw nsw i64 %indvars.iv46.lcssa133, 3
  %322 = or disjoint i64 %indvars.iv50.lcssa134, %321
  %323 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %322
  store i32 1, ptr %323, align 4
  unreachable

324:                                              ; preds = %319
  br label %325

325:                                              ; preds = %324
  br label %326

326:                                              ; preds = %325
  br label %327

327:                                              ; preds = %326
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6176), align 4
  br i1 false, label %.loopexit137, label %328

328:                                              ; preds = %327
  br label %329

329:                                              ; preds = %328
  br label %330

330:                                              ; preds = %329
  br label %331

331:                                              ; preds = %330
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6208), align 4
  br i1 false, label %.loopexit137, label %332

332:                                              ; preds = %331
  br label %333

333:                                              ; preds = %332
  br label %334

334:                                              ; preds = %333
  br label %335

335:                                              ; preds = %334
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6240), align 4
  br i1 false, label %.loopexit137, label %336

336:                                              ; preds = %335
  br i1 false, label %337, label %343

337:                                              ; preds = %380, %361, %336
  %indvars.iv50.lcssa136 = phi i64 [ 0, %336 ], [ 1, %361 ], [ 2, %380 ]
  br label %338

338:                                              ; preds = %337
  br label %339

339:                                              ; preds = %338
  %340 = or disjoint i64 %indvars.iv50.lcssa136, 32
  %341 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %340
  store i32 1, ptr %341, align 4
  br i1 false, label %320, label %342

342:                                              ; preds = %339
  unreachable

343:                                              ; preds = %336
  br label %344

344:                                              ; preds = %343
  br label %345

345:                                              ; preds = %344
  br label %346

346:                                              ; preds = %345
  br label %347

347:                                              ; preds = %346
  br label %348

348:                                              ; preds = %347
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6148), align 4
  br i1 false, label %.loopexit137, label %349

349:                                              ; preds = %348
  br label %350

350:                                              ; preds = %349
  br label %351

351:                                              ; preds = %350
  br label %352

352:                                              ; preds = %351
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6180), align 4
  br i1 false, label %.loopexit137, label %353

353:                                              ; preds = %352
  br label %354

354:                                              ; preds = %353
  br label %355

355:                                              ; preds = %354
  br label %356

356:                                              ; preds = %355
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6212), align 4
  br i1 false, label %.loopexit137, label %357

357:                                              ; preds = %356
  br label %358

358:                                              ; preds = %357
  br label %359

359:                                              ; preds = %358
  br label %360

360:                                              ; preds = %359
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6244), align 4
  br i1 false, label %.loopexit137, label %361

361:                                              ; preds = %360
  br i1 false, label %337, label %362

362:                                              ; preds = %361
  br i1 false, label %363, label %382

363:                                              ; preds = %362
  br label %364

364:                                              ; preds = %363
  br label %365

365:                                              ; preds = %364
  br label %366

366:                                              ; preds = %365
  br label %367

367:                                              ; preds = %366
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6152), align 4
  br i1 false, label %.loopexit137, label %368

368:                                              ; preds = %367
  br label %369

369:                                              ; preds = %368
  br label %370

370:                                              ; preds = %369
  br label %371

371:                                              ; preds = %370
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6184), align 4
  br i1 false, label %.loopexit137, label %372

372:                                              ; preds = %371
  br label %373

373:                                              ; preds = %372
  br label %374

374:                                              ; preds = %373
  br label %375

375:                                              ; preds = %374
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6216), align 4
  br i1 false, label %.loopexit137, label %376

376:                                              ; preds = %375
  br label %377

377:                                              ; preds = %376
  br label %378

378:                                              ; preds = %377
  br label %379

379:                                              ; preds = %378
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 6248), align 4
  br i1 false, label %.loopexit137, label %380

380:                                              ; preds = %379
  br i1 false, label %337, label %381

381:                                              ; preds = %380
  unreachable

382:                                              ; preds = %362
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %383

383:                                              ; preds = %382
  br label %384

384:                                              ; preds = %383
  br label %385

385:                                              ; preds = %384
  br label %386

386:                                              ; preds = %385
  br label %387

387:                                              ; preds = %386
  br label %388

388:                                              ; preds = %387
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), align 4
  br label %389

389:                                              ; preds = %388
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8448), align 4
  br i1 false, label %.loopexit141, label %393

.loopexit141:                                     ; preds = %432, %424, %416, %408, %389
  %indvars.iv58.lcssa138.ph = phi i64 [ 0, %389 ], [ 1, %408 ], [ 2, %416 ], [ 3, %424 ], [ 4, %432 ]
  br label %390

390:                                              ; preds = %.loopexit141, %398
  %indvars.iv58.lcssa138 = phi i64 [ %indvars.iv58.lcssa139, %398 ], [ %indvars.iv58.lcssa138.ph, %.loopexit141 ]
  %391 = or disjoint i64 %indvars.iv58.lcssa138, 128
  %392 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %391
  store i32 1, ptr %392, align 4
  unreachable

393:                                              ; preds = %389
  br i1 false, label %394, label %402

394:                                              ; preds = %433, %425, %417, %409, %393
  %indvars.iv58.lcssa139 = phi i64 [ 0, %393 ], [ 1, %409 ], [ 2, %417 ], [ 3, %425 ], [ 4, %433 ]
  br label %395

395:                                              ; preds = %394
  br label %396

396:                                              ; preds = %395
  %397 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %indvars.iv58.lcssa139
  store i32 1, ptr %397, align 4
  br label %398

398:                                              ; preds = %396
  %399 = or disjoint i64 %indvars.iv58.lcssa139, 64
  %400 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %399
  store i32 1, ptr %400, align 4
  br i1 false, label %390, label %401

401:                                              ; preds = %398
  unreachable

402:                                              ; preds = %393
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
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8196), align 4
  br label %408

408:                                              ; preds = %407
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8452), align 4
  br i1 false, label %.loopexit141, label %409

409:                                              ; preds = %408
  br i1 false, label %394, label %410

410:                                              ; preds = %409
  br label %411

411:                                              ; preds = %410
  br label %412

412:                                              ; preds = %411
  br label %413

413:                                              ; preds = %412
  br label %414

414:                                              ; preds = %413
  br label %415

415:                                              ; preds = %414
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8200), align 4
  br label %416

416:                                              ; preds = %415
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8456), align 4
  br i1 false, label %.loopexit141, label %417

417:                                              ; preds = %416
  br i1 false, label %394, label %418

418:                                              ; preds = %417
  br label %419

419:                                              ; preds = %418
  br label %420

420:                                              ; preds = %419
  br label %421

421:                                              ; preds = %420
  br label %422

422:                                              ; preds = %421
  br label %423

423:                                              ; preds = %422
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8204), align 4
  br label %424

424:                                              ; preds = %423
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8460), align 4
  br i1 false, label %.loopexit141, label %425

425:                                              ; preds = %424
  br i1 false, label %394, label %426

426:                                              ; preds = %425
  br i1 false, label %427, label %435

427:                                              ; preds = %426
  br label %428

428:                                              ; preds = %427
  br label %429

429:                                              ; preds = %428
  br label %430

430:                                              ; preds = %429
  br label %431

431:                                              ; preds = %430
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8208), align 4
  br label %432

432:                                              ; preds = %431
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 8464), align 4
  br i1 false, label %.loopexit141, label %433

433:                                              ; preds = %432
  br i1 false, label %394, label %434

434:                                              ; preds = %433
  unreachable

435:                                              ; preds = %426
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %436

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
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), align 4
  br label %442

442:                                              ; preds = %441
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10496), align 4
  br label %443

443:                                              ; preds = %442
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10752), align 4
  br label %444

444:                                              ; preds = %443
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 11008), align 4
  br i1 false, label %.loopexit143, label %449

.loopexit143:                                     ; preds = %479, %472, %444, %455
  %indvars.iv66.lcssa142.ph = phi i64 [ 1, %455 ], [ 0, %444 ], [ 0, %472 ], [ 1, %479 ]
  br label %445

445:                                              ; preds = %.loopexit143, %462
  %indvars.iv66.lcssa142 = phi i64 [ 2, %462 ], [ %indvars.iv66.lcssa142.ph, %.loopexit143 ]
  %446 = shl nuw nsw i64 %indvars.iv66.lcssa142, 3
  %447 = or disjoint i64 256, %446
  %448 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %447
  store i32 1, ptr %448, align 4
  unreachable

449:                                              ; preds = %444
  br label %450

450:                                              ; preds = %449
  br label %451

451:                                              ; preds = %450
  br label %452

452:                                              ; preds = %451
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10272), align 4
  br label %453

453:                                              ; preds = %452
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10528), align 4
  br label %454

454:                                              ; preds = %453
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10784), align 4
  br label %455

455:                                              ; preds = %454
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 11040), align 4
  br i1 false, label %.loopexit143, label %456

456:                                              ; preds = %455
  br i1 false, label %457, label %464

457:                                              ; preds = %480, %456
  br label %458

458:                                              ; preds = %457
  br label %459

459:                                              ; preds = %458
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10304), align 4
  br label %460

460:                                              ; preds = %459
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10560), align 4
  br label %461

461:                                              ; preds = %460
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10816), align 4
  br label %462

462:                                              ; preds = %461
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 11072), align 4
  br i1 false, label %445, label %463

463:                                              ; preds = %462
  unreachable

464:                                              ; preds = %456
  br i1 false, label %465, label %482

465:                                              ; preds = %464
  br label %466

466:                                              ; preds = %465
  br label %467

467:                                              ; preds = %466
  br label %468

468:                                              ; preds = %467
  br label %469

469:                                              ; preds = %468
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), align 4
  br label %470

470:                                              ; preds = %469
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10496), align 4
  br label %471

471:                                              ; preds = %470
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10752), align 4
  br label %472

472:                                              ; preds = %471
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 11008), align 4
  br i1 false, label %.loopexit143, label %473

473:                                              ; preds = %472
  br label %474

474:                                              ; preds = %473
  br label %475

475:                                              ; preds = %474
  br label %476

476:                                              ; preds = %475
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10272), align 4
  br label %477

477:                                              ; preds = %476
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10528), align 4
  br label %478

478:                                              ; preds = %477
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 10784), align 4
  br label %479

479:                                              ; preds = %478
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 11040), align 4
  br i1 false, label %.loopexit143, label %480

480:                                              ; preds = %479
  br i1 false, label %457, label %481

481:                                              ; preds = %480
  unreachable

482:                                              ; preds = %464
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %483

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
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), align 4
  br i1 false, label %.loopexit147, label %491

.loopexit147:                                     ; preds = %516, %509, %502, %488
  %indvars.iv70.lcssa144.ph = phi i64 [ 0, %488 ], [ 1, %502 ], [ 2, %509 ], [ 3, %516 ]
  br label %489

489:                                              ; preds = %.loopexit147, %494
  %indvars.iv70.lcssa144 = phi i64 [ %indvars.iv70.lcssa145, %494 ], [ %indvars.iv70.lcssa144.ph, %.loopexit147 ]
  %490 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %indvars.iv70.lcssa144
  store i32 1, ptr %490, align 4
  unreachable

491:                                              ; preds = %488
  br i1 false, label %492, label %497

492:                                              ; preds = %517, %510, %503, %491
  %indvars.iv70.lcssa145 = phi i64 [ 0, %491 ], [ 1, %503 ], [ 2, %510 ], [ 3, %517 ]
  br label %493

493:                                              ; preds = %492
  br label %494

494:                                              ; preds = %493
  %495 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %indvars.iv70.lcssa145
  store i32 1, ptr %495, align 4
  br i1 false, label %489, label %496

496:                                              ; preds = %494
  unreachable

497:                                              ; preds = %491
  br label %498

498:                                              ; preds = %497
  br label %499

499:                                              ; preds = %498
  br label %500

500:                                              ; preds = %499
  br label %501

501:                                              ; preds = %500
  br label %502

502:                                              ; preds = %501
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12292), align 4
  br i1 false, label %.loopexit147, label %503

503:                                              ; preds = %502
  br i1 false, label %492, label %504

504:                                              ; preds = %503
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
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12296), align 4
  br i1 false, label %.loopexit147, label %510

510:                                              ; preds = %509
  br i1 false, label %492, label %511

511:                                              ; preds = %510
  br i1 false, label %512, label %519

512:                                              ; preds = %511
  br label %513

513:                                              ; preds = %512
  br label %514

514:                                              ; preds = %513
  br label %515

515:                                              ; preds = %514
  br label %516

516:                                              ; preds = %515
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 12300), align 4
  br i1 false, label %.loopexit147, label %517

517:                                              ; preds = %516
  br i1 false, label %492, label %518

518:                                              ; preds = %517
  unreachable

519:                                              ; preds = %511
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %520

520:                                              ; preds = %519
  br label %521

521:                                              ; preds = %520
  br label %522

522:                                              ; preds = %521
  br label %523

523:                                              ; preds = %522
  br label %524

524:                                              ; preds = %523
  br label %525

525:                                              ; preds = %524
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), align 4
  br i1 false, label %.loopexit149, label %529

.loopexit149:                                     ; preds = %555, %551, %547, %525, %532, %536
  %indvars.iv74.lcssa148.ph = phi i64 [ 2, %536 ], [ 1, %532 ], [ 0, %525 ], [ 0, %547 ], [ 1, %551 ], [ 2, %555 ]
  br label %526

526:                                              ; preds = %.loopexit149, %540
  %indvars.iv74.lcssa148 = phi i64 [ 3, %540 ], [ %indvars.iv74.lcssa148.ph, %.loopexit149 ]
  %527 = shl nuw nsw i64 %indvars.iv74.lcssa148, 3
  %528 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %527
  store i32 1, ptr %528, align 4
  unreachable

529:                                              ; preds = %525
  br label %530

530:                                              ; preds = %529
  br label %531

531:                                              ; preds = %530
  br label %532

532:                                              ; preds = %531
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14368), align 4
  br i1 false, label %.loopexit149, label %533

533:                                              ; preds = %532
  br label %534

534:                                              ; preds = %533
  br label %535

535:                                              ; preds = %534
  br label %536

536:                                              ; preds = %535
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14400), align 4
  br i1 false, label %.loopexit149, label %537

537:                                              ; preds = %536
  br i1 false, label %538, label %542

538:                                              ; preds = %556, %537
  br label %539

539:                                              ; preds = %538
  br label %540

540:                                              ; preds = %539
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14432), align 4
  br i1 false, label %526, label %541

541:                                              ; preds = %540
  unreachable

542:                                              ; preds = %537
  br i1 false, label %543, label %558

543:                                              ; preds = %542
  br label %544

544:                                              ; preds = %543
  br label %545

545:                                              ; preds = %544
  br label %546

546:                                              ; preds = %545
  br label %547

547:                                              ; preds = %546
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), align 4
  br i1 false, label %.loopexit149, label %548

548:                                              ; preds = %547
  br label %549

549:                                              ; preds = %548
  br label %550

550:                                              ; preds = %549
  br label %551

551:                                              ; preds = %550
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14368), align 4
  br i1 false, label %.loopexit149, label %552

552:                                              ; preds = %551
  br label %553

553:                                              ; preds = %552
  br label %554

554:                                              ; preds = %553
  br label %555

555:                                              ; preds = %554
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 14400), align 4
  br i1 false, label %.loopexit149, label %556

556:                                              ; preds = %555
  br i1 false, label %538, label %557

557:                                              ; preds = %556
  unreachable

558:                                              ; preds = %542
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %559

559:                                              ; preds = %558
  br label %560

560:                                              ; preds = %559
  br label %561

561:                                              ; preds = %560
  br label %562

562:                                              ; preds = %561
  br label %563

563:                                              ; preds = %562
  br label %564

564:                                              ; preds = %563
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), align 4
  br label %565

565:                                              ; preds = %564
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16640), align 4
  br label %566

566:                                              ; preds = %565
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16896), align 4
  br i1 false, label %.loopexit150, label %568

.loopexit150:                                     ; preds = %582, %566
  br label %567

567:                                              ; preds = %.loopexit150, %573
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 17152), align 4
  unreachable

568:                                              ; preds = %566
  br i1 false, label %569, label %575

569:                                              ; preds = %583, %568
  br label %570

570:                                              ; preds = %569
  br label %571

571:                                              ; preds = %570
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), align 4
  br label %572

572:                                              ; preds = %571
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16640), align 4
  br label %573

573:                                              ; preds = %572
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16896), align 4
  br i1 false, label %567, label %574

574:                                              ; preds = %573
  unreachable

575:                                              ; preds = %568
  br i1 false, label %576, label %585

576:                                              ; preds = %575
  br label %577

577:                                              ; preds = %576
  br label %578

578:                                              ; preds = %577
  br label %579

579:                                              ; preds = %578
  br label %580

580:                                              ; preds = %579
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), align 4
  br label %581

581:                                              ; preds = %580
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16640), align 4
  br label %582

582:                                              ; preds = %581
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 16896), align 4
  br i1 false, label %.loopexit150, label %583

583:                                              ; preds = %582
  br i1 false, label %569, label %584

584:                                              ; preds = %583
  unreachable

585:                                              ; preds = %575
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %586

586:                                              ; preds = %585
  br label %587

587:                                              ; preds = %586
  br label %588

588:                                              ; preds = %587
  br label %589

589:                                              ; preds = %588
  br label %590

590:                                              ; preds = %589
  br label %591

591:                                              ; preds = %590
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), align 4
  br i1 false, label %.loopexit155, label %596

.loopexit155:                                     ; preds = %627, %623, %616, %612, %591, %599
  %indvars.iv86.lcssa152.ph = phi i64 [ 0, %599 ], [ 0, %591 ], [ 1, %612 ], [ 1, %616 ], [ 2, %623 ], [ 2, %627 ]
  %indvars.iv82.lcssa151.ph = phi i64 [ 1, %599 ], [ 0, %591 ], [ 0, %612 ], [ 1, %616 ], [ 0, %623 ], [ 1, %627 ]
  br label %592

592:                                              ; preds = %.loopexit155, %603
  %indvars.iv86.lcssa152 = phi i64 [ %indvars.iv86.lcssa154, %603 ], [ %indvars.iv86.lcssa152.ph, %.loopexit155 ]
  %indvars.iv82.lcssa151 = phi i64 [ 2, %603 ], [ %indvars.iv82.lcssa151.ph, %.loopexit155 ]
  %593 = shl nuw nsw i64 %indvars.iv82.lcssa151, 3
  %594 = or disjoint i64 %indvars.iv86.lcssa152, %593
  %595 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %594
  store i32 1, ptr %595, align 4
  unreachable

596:                                              ; preds = %591
  br label %597

597:                                              ; preds = %596
  br label %598

598:                                              ; preds = %597
  br label %599

599:                                              ; preds = %598
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18464), align 4
  br i1 false, label %.loopexit155, label %600

600:                                              ; preds = %599
  br i1 false, label %601, label %607

601:                                              ; preds = %628, %617, %600
  %indvars.iv86.lcssa154 = phi i64 [ 0, %600 ], [ 1, %617 ], [ 2, %628 ]
  br label %602

602:                                              ; preds = %601
  br label %603

603:                                              ; preds = %602
  %604 = or disjoint i64 %indvars.iv86.lcssa154, 16
  %605 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %604
  store i32 1, ptr %605, align 4
  br i1 false, label %592, label %606

606:                                              ; preds = %603
  unreachable

607:                                              ; preds = %600
  br label %608

608:                                              ; preds = %607
  br label %609

609:                                              ; preds = %608
  br label %610

610:                                              ; preds = %609
  br label %611

611:                                              ; preds = %610
  br label %612

612:                                              ; preds = %611
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18436), align 4
  br i1 false, label %.loopexit155, label %613

613:                                              ; preds = %612
  br label %614

614:                                              ; preds = %613
  br label %615

615:                                              ; preds = %614
  br label %616

616:                                              ; preds = %615
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18468), align 4
  br i1 false, label %.loopexit155, label %617

617:                                              ; preds = %616
  br i1 false, label %601, label %618

618:                                              ; preds = %617
  br i1 false, label %619, label %630

619:                                              ; preds = %618
  br label %620

620:                                              ; preds = %619
  br label %621

621:                                              ; preds = %620
  br label %622

622:                                              ; preds = %621
  br label %623

623:                                              ; preds = %622
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18440), align 4
  br i1 false, label %.loopexit155, label %624

624:                                              ; preds = %623
  br label %625

625:                                              ; preds = %624
  br label %626

626:                                              ; preds = %625
  br label %627

627:                                              ; preds = %626
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 18472), align 4
  br i1 false, label %.loopexit155, label %628

628:                                              ; preds = %627
  br i1 false, label %601, label %629

629:                                              ; preds = %628
  unreachable

630:                                              ; preds = %618
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
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
  br label %636

636:                                              ; preds = %635
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), align 4
  br label %637

637:                                              ; preds = %636
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20736), align 4
  br i1 false, label %.loopexit159, label %641

.loopexit159:                                     ; preds = %664, %656, %637
  %indvars.iv94.lcssa156.ph = phi i64 [ 0, %637 ], [ 1, %656 ], [ 2, %664 ]
  br label %638

638:                                              ; preds = %.loopexit159, %646
  %indvars.iv94.lcssa156 = phi i64 [ %indvars.iv94.lcssa157, %646 ], [ %indvars.iv94.lcssa156.ph, %.loopexit159 ]
  %639 = or disjoint i64 %indvars.iv94.lcssa156, 128
  %640 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %639
  store i32 1, ptr %640, align 4
  unreachable

641:                                              ; preds = %637
  br i1 false, label %642, label %650

642:                                              ; preds = %665, %657, %641
  %indvars.iv94.lcssa157 = phi i64 [ 0, %641 ], [ 1, %657 ], [ 2, %665 ]
  br label %643

643:                                              ; preds = %642
  br label %644

644:                                              ; preds = %643
  %645 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %indvars.iv94.lcssa157
  store i32 1, ptr %645, align 4
  br label %646

646:                                              ; preds = %644
  %647 = or disjoint i64 %indvars.iv94.lcssa157, 64
  %648 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %647
  store i32 1, ptr %648, align 4
  br i1 false, label %638, label %649

649:                                              ; preds = %646
  unreachable

650:                                              ; preds = %641
  br label %651

651:                                              ; preds = %650
  br label %652

652:                                              ; preds = %651
  br label %653

653:                                              ; preds = %652
  br label %654

654:                                              ; preds = %653
  br label %655

655:                                              ; preds = %654
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20484), align 4
  br label %656

656:                                              ; preds = %655
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20740), align 4
  br i1 false, label %.loopexit159, label %657

657:                                              ; preds = %656
  br i1 false, label %642, label %658

658:                                              ; preds = %657
  br i1 false, label %659, label %667

659:                                              ; preds = %658
  br label %660

660:                                              ; preds = %659
  br label %661

661:                                              ; preds = %660
  br label %662

662:                                              ; preds = %661
  br label %663

663:                                              ; preds = %662
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20488), align 4
  br label %664

664:                                              ; preds = %663
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 20744), align 4
  br i1 false, label %.loopexit159, label %665

665:                                              ; preds = %664
  br i1 false, label %642, label %666

666:                                              ; preds = %665
  unreachable

667:                                              ; preds = %658
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %668

668:                                              ; preds = %667
  br label %669

669:                                              ; preds = %668
  br label %670

670:                                              ; preds = %669
  br label %671

671:                                              ; preds = %670
  br label %672

672:                                              ; preds = %671
  br label %673

673:                                              ; preds = %672
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), align 4
  br label %674

674:                                              ; preds = %673
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22784), align 4
  br i1 false, label %.loopexit161, label %679

.loopexit161:                                     ; preds = %701, %696, %674, %683
  %indvars.iv102.lcssa160.ph = phi i64 [ 1, %683 ], [ 0, %674 ], [ 0, %696 ], [ 1, %701 ]
  br label %675

675:                                              ; preds = %.loopexit161, %688
  %indvars.iv102.lcssa160 = phi i64 [ 2, %688 ], [ %indvars.iv102.lcssa160.ph, %.loopexit161 ]
  %676 = shl nuw nsw i64 %indvars.iv102.lcssa160, 3
  %677 = or disjoint i64 128, %676
  %678 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %677
  store i32 1, ptr %678, align 4
  unreachable

679:                                              ; preds = %674
  br label %680

680:                                              ; preds = %679
  br label %681

681:                                              ; preds = %680
  br label %682

682:                                              ; preds = %681
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22560), align 4
  br label %683

683:                                              ; preds = %682
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22816), align 4
  br i1 false, label %.loopexit161, label %684

684:                                              ; preds = %683
  br i1 false, label %685, label %690

685:                                              ; preds = %702, %684
  br label %686

686:                                              ; preds = %685
  br label %687

687:                                              ; preds = %686
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22592), align 4
  br label %688

688:                                              ; preds = %687
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22848), align 4
  br i1 false, label %675, label %689

689:                                              ; preds = %688
  unreachable

690:                                              ; preds = %684
  br i1 false, label %691, label %704

691:                                              ; preds = %690
  br label %692

692:                                              ; preds = %691
  br label %693

693:                                              ; preds = %692
  br label %694

694:                                              ; preds = %693
  br label %695

695:                                              ; preds = %694
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), align 4
  br label %696

696:                                              ; preds = %695
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22784), align 4
  br i1 false, label %.loopexit161, label %697

697:                                              ; preds = %696
  br label %698

698:                                              ; preds = %697
  br label %699

699:                                              ; preds = %698
  br label %700

700:                                              ; preds = %699
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22560), align 4
  br label %701

701:                                              ; preds = %700
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 22816), align 4
  br i1 false, label %.loopexit161, label %702

702:                                              ; preds = %701
  br i1 false, label %685, label %703

703:                                              ; preds = %702
  unreachable

704:                                              ; preds = %690
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
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
  br label %710

710:                                              ; preds = %709
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), align 4
  br label %711

711:                                              ; preds = %710
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24832), align 4
  br i1 false, label %.loopexit166, label %717

.loopexit166:                                     ; preds = %756, %751, %743, %738, %711, %721
  %indvars.iv114.lcssa163.ph = phi i64 [ 0, %721 ], [ 0, %711 ], [ 1, %738 ], [ 1, %743 ], [ 2, %751 ], [ 2, %756 ]
  %indvars.iv110.lcssa162.ph = phi i64 [ 1, %721 ], [ 0, %711 ], [ 0, %738 ], [ 1, %743 ], [ 0, %751 ], [ 1, %756 ]
  br label %712

712:                                              ; preds = %.loopexit166, %728
  %indvars.iv114.lcssa163 = phi i64 [ %indvars.iv114.lcssa165, %728 ], [ %indvars.iv114.lcssa163.ph, %.loopexit166 ]
  %indvars.iv110.lcssa162 = phi i64 [ 2, %728 ], [ %indvars.iv110.lcssa162.ph, %.loopexit166 ]
  %713 = shl nuw nsw i64 %indvars.iv110.lcssa162, 3
  %714 = or disjoint i64 128, %713
  %715 = or disjoint i64 %indvars.iv114.lcssa163, %714
  %716 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %715
  store i32 1, ptr %716, align 4
  unreachable

717:                                              ; preds = %711
  br label %718

718:                                              ; preds = %717
  br label %719

719:                                              ; preds = %718
  br label %720

720:                                              ; preds = %719
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24608), align 4
  br label %721

721:                                              ; preds = %720
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24864), align 4
  br i1 false, label %.loopexit166, label %722

722:                                              ; preds = %721
  br i1 false, label %723, label %732

723:                                              ; preds = %757, %744, %722
  %indvars.iv114.lcssa165 = phi i64 [ 0, %722 ], [ 1, %744 ], [ 2, %757 ]
  br label %724

724:                                              ; preds = %723
  br label %725

725:                                              ; preds = %724
  %726 = or disjoint i64 %indvars.iv114.lcssa165, 16
  %727 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %726
  store i32 1, ptr %727, align 4
  br label %728

728:                                              ; preds = %725
  %729 = or disjoint i64 %indvars.iv114.lcssa165, 80
  %730 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %729
  store i32 1, ptr %730, align 4
  br i1 false, label %712, label %731

731:                                              ; preds = %728
  unreachable

732:                                              ; preds = %722
  br label %733

733:                                              ; preds = %732
  br label %734

734:                                              ; preds = %733
  br label %735

735:                                              ; preds = %734
  br label %736

736:                                              ; preds = %735
  br label %737

737:                                              ; preds = %736
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24580), align 4
  br label %738

738:                                              ; preds = %737
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24836), align 4
  br i1 false, label %.loopexit166, label %739

739:                                              ; preds = %738
  br label %740

740:                                              ; preds = %739
  br label %741

741:                                              ; preds = %740
  br label %742

742:                                              ; preds = %741
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24612), align 4
  br label %743

743:                                              ; preds = %742
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24868), align 4
  br i1 false, label %.loopexit166, label %744

744:                                              ; preds = %743
  br i1 false, label %723, label %745

745:                                              ; preds = %744
  br i1 false, label %746, label %759

746:                                              ; preds = %745
  br label %747

747:                                              ; preds = %746
  br label %748

748:                                              ; preds = %747
  br label %749

749:                                              ; preds = %748
  br label %750

750:                                              ; preds = %749
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24584), align 4
  br label %751

751:                                              ; preds = %750
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24840), align 4
  br i1 false, label %.loopexit166, label %752

752:                                              ; preds = %751
  br label %753

753:                                              ; preds = %752
  br label %754

754:                                              ; preds = %753
  br label %755

755:                                              ; preds = %754
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24616), align 4
  br label %756

756:                                              ; preds = %755
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @p, i64 24872), align 4
  br i1 false, label %.loopexit166, label %757

757:                                              ; preds = %756
  br i1 false, label %723, label %758

758:                                              ; preds = %757
  unreachable

759:                                              ; preds = %745
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 0, ptr @kount, align 4
  %760 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %760, 0
  br i1 %.not, label %763, label %761

761:                                              ; preds = %759
  %762 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %762, ptr @n, align 4
  br label %764

763:                                              ; preds = %759
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %.pre = load i32, ptr @n, align 4
  br label %764

764:                                              ; preds = %763, %761
  %765 = phi i32 [ %.pre, %763 ], [ %762, %761 ]
  %766 = call i32 @Trial(i32 noundef %765)
  %.not1 = icmp eq i32 %766, 0
  br i1 %.not1, label %767, label %768

767:                                              ; preds = %764
  %puts2 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %772

768:                                              ; preds = %764
  %769 = load i32, ptr @kount, align 4
  %.not3 = icmp eq i32 %769, 2005
  br i1 %.not3, label %771, label %770

770:                                              ; preds = %768
  %puts4 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %771

771:                                              ; preds = %770, %768
  br label %772

772:                                              ; preds = %771, %767
  %773 = load i32, ptr @n, align 4
  %774 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %773) #4
  %775 = load i32, ptr @kount, align 4
  %776 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %775) #4
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
