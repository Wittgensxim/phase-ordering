; ModuleID = 'results\test_rule2\Stanford_Puzzle\round_002\output.ll'
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
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  %.phi.trans.insert = sext i32 %0 to i64
  %.phi.trans.insert1 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert1, align 4
  br label %6

6:                                                ; preds = %20, %2
  %7 = phi i32 [ 0, %2 ], [ %21, %20 ]
  store i32 %7, ptr %5, align 4
  %.not = icmp sgt i32 %7, %.pre
  br i1 %.not, label %22, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  %10 = sext i32 %7 to i64
  %11 = getelementptr inbounds [4 x i8], ptr %9, i64 %10
  %12 = load i32, ptr %11, align 4
  %.not2 = icmp eq i32 %12, 0
  br i1 %.not2, label %20, label %13

13:                                               ; preds = %8
  %14 = add nsw i32 %1, %7
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %15
  %17 = load i32, ptr %16, align 4
  %.not3 = icmp eq i32 %17, 0
  br i1 %.not3, label %19, label %18

18:                                               ; preds = %13
  br label %23

19:                                               ; preds = %13
  br label %20

20:                                               ; preds = %19, %8
  %21 = add nsw i32 %7, 1
  br label %6, !llvm.loop !7

22:                                               ; preds = %6
  br label %23

23:                                               ; preds = %22, %18
  %storemerge1 = phi i32 [ 1, %22 ], [ 0, %18 ]
  ret i32 %storemerge1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Place(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  %.phi.trans.insert = sext i32 %0 to i64
  %.phi.trans.insert1 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert1, align 4
  br label %6

6:                                                ; preds = %17, %2
  %7 = phi i32 [ 0, %2 ], [ %18, %17 ]
  store i32 %7, ptr %5, align 4
  %.not = icmp sgt i32 %7, %.pre
  br i1 %.not, label %19, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  %10 = sext i32 %7 to i64
  %11 = getelementptr inbounds [4 x i8], ptr %9, i64 %10
  %12 = load i32, ptr %11, align 4
  %.not4 = icmp eq i32 %12, 0
  br i1 %.not4, label %17, label %13

13:                                               ; preds = %8
  %14 = add nsw i32 %1, %7
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %15
  store i32 1, ptr %16, align 4
  br label %17

17:                                               ; preds = %13, %8
  %18 = add nsw i32 %7, 1
  br label %6, !llvm.loop !9

19:                                               ; preds = %6
  %20 = getelementptr inbounds [4 x i8], ptr @class, i64 %.phi.trans.insert
  %21 = load i32, ptr %20, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %22
  %24 = load i32, ptr %23, align 4
  %25 = add nsw i32 %24, -1
  store i32 %25, ptr %23, align 4
  %26 = sext i32 %1 to i64
  %smax = call i32 @llvm.smax.i32(i32 %1, i32 512)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %27

27:                                               ; preds = %33, %19
  %indvars.iv = phi i64 [ %indvars.iv.next, %33 ], [ %26, %19 ]
  %28 = trunc nsw i64 %indvars.iv to i32
  store i32 %28, ptr %5, align 4
  %exitcond = icmp ne i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %29, label %34

29:                                               ; preds = %27
  %30 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %indvars.iv
  %31 = load i32, ptr %30, align 4
  %.not3 = icmp eq i32 %31, 0
  br i1 %.not3, label %32, label %33

32:                                               ; preds = %29
  br label %35

33:                                               ; preds = %29
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %27, !llvm.loop !10

34:                                               ; preds = %27
  br label %35

35:                                               ; preds = %34, %32
  %storemerge2 = phi i32 [ 0, %34 ], [ %28, %32 ]
  ret i32 %storemerge2
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Remove(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  %.phi.trans.insert = sext i32 %0 to i64
  %.phi.trans.insert1 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert1, align 4
  br label %6

6:                                                ; preds = %17, %2
  %7 = phi i32 [ 0, %2 ], [ %18, %17 ]
  store i32 %7, ptr %5, align 4
  %.not = icmp sgt i32 %7, %.pre
  br i1 %.not, label %19, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  %10 = sext i32 %7 to i64
  %11 = getelementptr inbounds [4 x i8], ptr %9, i64 %10
  %12 = load i32, ptr %11, align 4
  %.not1 = icmp eq i32 %12, 0
  br i1 %.not1, label %17, label %13

13:                                               ; preds = %8
  %14 = add nsw i32 %1, %7
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %15
  store i32 0, ptr %16, align 4
  br label %17

17:                                               ; preds = %13, %8
  %18 = add nsw i32 %7, 1
  br label %6, !llvm.loop !11

19:                                               ; preds = %6
  %20 = getelementptr inbounds [4 x i8], ptr @class, i64 %.phi.trans.insert
  %21 = load i32, ptr %20, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %22
  %24 = load i32, ptr %23, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, ptr %23, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local range(i32 0, 2) i32 @Trial(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %5 = load i32, ptr @kount, align 4
  %6 = add nsw i32 %5, 1
  store i32 %6, ptr @kount, align 4
  br label %7

7:                                                ; preds = %29, %1
  %8 = phi i32 [ %0, %1 ], [ %30, %29 ]
  %9 = phi i32 [ 0, %1 ], [ %31, %29 ]
  store i32 %9, ptr %3, align 4
  %10 = icmp slt i32 %9, 13
  br i1 %10, label %11, label %32

11:                                               ; preds = %7
  %12 = sext i32 %9 to i64
  %13 = getelementptr inbounds [4 x i8], ptr @class, i64 %12
  %14 = load i32, ptr %13, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %15
  %17 = load i32, ptr %16, align 4
  %.not = icmp eq i32 %17, 0
  br i1 %.not, label %29, label %18

18:                                               ; preds = %11
  %19 = call i32 @Fit(i32 noundef %9, i32 noundef %8)
  %.not2 = icmp eq i32 %19, 0
  br i1 %.not2, label %27, label %20

20:                                               ; preds = %18
  %21 = call i32 @Place(i32 noundef %9, i32 noundef %8)
  store i32 %21, ptr %4, align 4
  %22 = call i32 @Trial(i32 noundef %21)
  %.not3 = icmp eq i32 %22, 0
  br i1 %.not3, label %23, label %25

23:                                               ; preds = %20
  %24 = icmp eq i32 %21, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %23, %20
  br label %33

26:                                               ; preds = %23
  call void @Remove(i32 noundef %9, i32 noundef %0)
  br label %27

27:                                               ; preds = %26, %18
  %28 = phi i32 [ %0, %26 ], [ %8, %18 ]
  br label %29

29:                                               ; preds = %27, %11
  %30 = phi i32 [ %28, %27 ], [ %8, %11 ]
  %31 = add nsw i32 %9, 1
  br label %7, !llvm.loop !12

32:                                               ; preds = %7
  br label %33

33:                                               ; preds = %32, %25
  %storemerge1 = phi i32 [ 0, %32 ], [ 1, %25 ]
  ret i32 %storemerge1
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Puzzle() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  br label %5

5:                                                ; preds = %8, %0
  %6 = phi i32 [ 0, %0 ], [ %11, %8 ]
  store i32 %6, ptr %4, align 4
  %7 = icmp slt i32 %6, 512
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = sext i32 %6 to i64
  %10 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %9
  store i32 1, ptr %10, align 4
  %11 = add nsw i32 %6, 1
  br label %5, !llvm.loop !13

12:                                               ; preds = %5
  br label %13

13:                                               ; preds = %36, %12
  %14 = phi i32 [ 1, %12 ], [ %37, %36 ]
  store i32 %14, ptr %1, align 4
  %15 = icmp slt i32 %14, 6
  br i1 %15, label %16, label %38

16:                                               ; preds = %13
  br label %17

17:                                               ; preds = %34, %16
  %18 = phi i32 [ %14, %16 ], [ %23, %34 ]
  %19 = phi i32 [ 1, %16 ], [ %35, %34 ]
  store i32 %19, ptr %2, align 4
  %20 = icmp slt i32 %19, 6
  br i1 %20, label %21, label %36

21:                                               ; preds = %17
  br label %22

22:                                               ; preds = %26, %21
  %23 = phi i32 [ %18, %21 ], [ %14, %26 ]
  %24 = phi i32 [ 1, %21 ], [ %33, %26 ]
  store i32 %24, ptr %3, align 4
  %25 = icmp slt i32 %24, 6
  br i1 %25, label %26, label %34

26:                                               ; preds = %22
  %27 = shl i32 %24, 6
  %28 = shl i32 %19, 3
  %29 = add i32 %27, %28
  %30 = add nsw i32 %14, %29
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %31
  store i32 0, ptr %32, align 4
  %33 = add nsw i32 %24, 1
  br label %22, !llvm.loop !14

34:                                               ; preds = %22
  %35 = add nsw i32 %19, 1
  br label %17, !llvm.loop !15

36:                                               ; preds = %17
  %37 = add nsw i32 %18, 1
  br label %13, !llvm.loop !16

38:                                               ; preds = %13
  br label %39

39:                                               ; preds = %52, %38
  %40 = phi i32 [ 0, %38 ], [ %53, %52 ]
  store i32 %40, ptr %1, align 4
  %41 = icmp slt i32 %40, 13
  br i1 %41, label %42, label %54

42:                                               ; preds = %39
  br label %43

43:                                               ; preds = %46, %42
  %44 = phi i32 [ 0, %42 ], [ %51, %46 ]
  store i32 %44, ptr %4, align 4
  %45 = icmp slt i32 %44, 512
  br i1 %45, label %46, label %52

46:                                               ; preds = %43
  %47 = sext i32 %40 to i64
  %48 = getelementptr inbounds [2048 x i8], ptr @p, i64 %47
  %49 = sext i32 %44 to i64
  %50 = getelementptr inbounds [4 x i8], ptr %48, i64 %49
  store i32 0, ptr %50, align 4
  %51 = add nsw i32 %44, 1
  br label %43, !llvm.loop !17

52:                                               ; preds = %43
  %53 = add nsw i32 %40, 1
  br label %39, !llvm.loop !18

54:                                               ; preds = %39
  br label %55

55:                                               ; preds = %76, %54
  %56 = phi i32 [ 0, %54 ], [ %77, %76 ]
  store i32 %56, ptr %1, align 4
  %57 = icmp slt i32 %56, 4
  br i1 %57, label %58, label %78

58:                                               ; preds = %55
  br label %59

59:                                               ; preds = %74, %58
  %60 = phi i32 [ %56, %58 ], [ %65, %74 ]
  %61 = phi i32 [ 0, %58 ], [ %75, %74 ]
  store i32 %61, ptr %2, align 4
  %62 = icmp slt i32 %61, 2
  br i1 %62, label %63, label %76

63:                                               ; preds = %59
  br label %64

64:                                               ; preds = %68, %63
  %65 = phi i32 [ %60, %63 ], [ %56, %68 ]
  %66 = phi i32 [ 0, %63 ], [ 1, %68 ]
  store i32 %66, ptr %3, align 4
  %67 = icmp slt i32 %66, 1
  br i1 %67, label %68, label %74

68:                                               ; preds = %64
  %69 = shl nuw nsw i32 %61, 3
  %70 = add nuw nsw i32 0, %69
  %71 = add nsw i32 %56, %70
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [4 x i8], ptr @p, i64 %72
  store i32 1, ptr %73, align 4
  br label %64, !llvm.loop !19

74:                                               ; preds = %64
  %75 = add nuw nsw i32 %61, 1
  br label %59, !llvm.loop !20

76:                                               ; preds = %59
  %77 = add nsw i32 %60, 1
  br label %55, !llvm.loop !21

78:                                               ; preds = %55
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %79

79:                                               ; preds = %100, %78
  %80 = phi i32 [ 0, %78 ], [ %101, %100 ]
  store i32 %80, ptr %1, align 4
  %81 = icmp slt i32 %80, 2
  br i1 %81, label %82, label %102

82:                                               ; preds = %79
  br label %83

83:                                               ; preds = %99, %82
  %84 = phi i32 [ %80, %82 ], [ %89, %99 ]
  %85 = phi i32 [ 0, %82 ], [ 1, %99 ]
  store i32 %85, ptr %2, align 4
  %86 = icmp slt i32 %85, 1
  br i1 %86, label %87, label %100

87:                                               ; preds = %83
  br label %88

88:                                               ; preds = %92, %87
  %89 = phi i32 [ %84, %87 ], [ %80, %92 ]
  %90 = phi i32 [ 0, %87 ], [ %98, %92 ]
  store i32 %90, ptr %3, align 4
  %91 = icmp slt i32 %90, 4
  br i1 %91, label %92, label %99

92:                                               ; preds = %88
  %93 = shl i32 %90, 6
  %94 = add nuw nsw i32 %93, 0
  %95 = add nuw nsw i32 %80, %94
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %96
  store i32 1, ptr %97, align 4
  %98 = add nsw i32 %90, 1
  br label %88, !llvm.loop !22

99:                                               ; preds = %88
  br label %83, !llvm.loop !23

100:                                              ; preds = %83
  %101 = add nuw nsw i32 %84, 1
  br label %79, !llvm.loop !24

102:                                              ; preds = %79
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %103

103:                                              ; preds = %124, %102
  %104 = phi i32 [ 0, %102 ], [ 1, %124 ]
  store i32 %104, ptr %1, align 4
  %105 = icmp slt i32 %104, 1
  br i1 %105, label %106, label %125

106:                                              ; preds = %103
  br label %107

107:                                              ; preds = %122, %106
  %108 = phi i32 [ 0, %106 ], [ %123, %122 ]
  store i32 %108, ptr %2, align 4
  %109 = icmp slt i32 %108, 4
  br i1 %109, label %110, label %124

110:                                              ; preds = %107
  br label %111

111:                                              ; preds = %114, %110
  %112 = phi i32 [ 0, %110 ], [ %121, %114 ]
  store i32 %112, ptr %3, align 4
  %113 = icmp slt i32 %112, 2
  br i1 %113, label %114, label %122

114:                                              ; preds = %111
  %115 = shl nuw nsw i32 %112, 6
  %116 = shl i32 %108, 3
  %117 = add i32 %115, %116
  %118 = add nuw nsw i32 0, %117
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %119
  store i32 1, ptr %120, align 4
  %121 = add nuw nsw i32 %112, 1
  br label %111, !llvm.loop !25

122:                                              ; preds = %111
  %123 = add nsw i32 %108, 1
  br label %107, !llvm.loop !26

124:                                              ; preds = %107
  br label %103, !llvm.loop !27

125:                                              ; preds = %103
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %126

126:                                              ; preds = %147, %125
  %127 = phi i32 [ 0, %125 ], [ %148, %147 ]
  store i32 %127, ptr %1, align 4
  %128 = icmp slt i32 %127, 2
  br i1 %128, label %129, label %149

129:                                              ; preds = %126
  br label %130

130:                                              ; preds = %145, %129
  %131 = phi i32 [ %127, %129 ], [ %136, %145 ]
  %132 = phi i32 [ 0, %129 ], [ %146, %145 ]
  store i32 %132, ptr %2, align 4
  %133 = icmp slt i32 %132, 4
  br i1 %133, label %134, label %147

134:                                              ; preds = %130
  br label %135

135:                                              ; preds = %139, %134
  %136 = phi i32 [ %131, %134 ], [ %127, %139 ]
  %137 = phi i32 [ 0, %134 ], [ 1, %139 ]
  store i32 %137, ptr %3, align 4
  %138 = icmp slt i32 %137, 1
  br i1 %138, label %139, label %145

139:                                              ; preds = %135
  %140 = shl i32 %132, 3
  %141 = add nuw nsw i32 0, %140
  %142 = add nuw nsw i32 %127, %141
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %143
  store i32 1, ptr %144, align 4
  br label %135, !llvm.loop !28

145:                                              ; preds = %135
  %146 = add nsw i32 %132, 1
  br label %130, !llvm.loop !29

147:                                              ; preds = %130
  %148 = add nuw nsw i32 %131, 1
  br label %126, !llvm.loop !30

149:                                              ; preds = %126
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %150

150:                                              ; preds = %171, %149
  %151 = phi i32 [ 0, %149 ], [ %172, %171 ]
  store i32 %151, ptr %1, align 4
  %152 = icmp slt i32 %151, 4
  br i1 %152, label %153, label %173

153:                                              ; preds = %150
  br label %154

154:                                              ; preds = %170, %153
  %155 = phi i32 [ %151, %153 ], [ %160, %170 ]
  %156 = phi i32 [ 0, %153 ], [ 1, %170 ]
  store i32 %156, ptr %2, align 4
  %157 = icmp slt i32 %156, 1
  br i1 %157, label %158, label %171

158:                                              ; preds = %154
  br label %159

159:                                              ; preds = %163, %158
  %160 = phi i32 [ %155, %158 ], [ %151, %163 ]
  %161 = phi i32 [ 0, %158 ], [ %169, %163 ]
  store i32 %161, ptr %3, align 4
  %162 = icmp slt i32 %161, 2
  br i1 %162, label %163, label %170

163:                                              ; preds = %159
  %164 = shl nuw nsw i32 %161, 6
  %165 = add nuw nsw i32 %164, 0
  %166 = add nsw i32 %151, %165
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %167
  store i32 1, ptr %168, align 4
  %169 = add nuw nsw i32 %161, 1
  br label %159, !llvm.loop !31

170:                                              ; preds = %159
  br label %154, !llvm.loop !32

171:                                              ; preds = %154
  %172 = add nsw i32 %155, 1
  br label %150, !llvm.loop !33

173:                                              ; preds = %150
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %174

174:                                              ; preds = %195, %173
  %175 = phi i32 [ 0, %173 ], [ 1, %195 ]
  store i32 %175, ptr %1, align 4
  %176 = icmp slt i32 %175, 1
  br i1 %176, label %177, label %196

177:                                              ; preds = %174
  br label %178

178:                                              ; preds = %193, %177
  %179 = phi i32 [ 0, %177 ], [ %194, %193 ]
  store i32 %179, ptr %2, align 4
  %180 = icmp slt i32 %179, 2
  br i1 %180, label %181, label %195

181:                                              ; preds = %178
  br label %182

182:                                              ; preds = %185, %181
  %183 = phi i32 [ 0, %181 ], [ %192, %185 ]
  store i32 %183, ptr %3, align 4
  %184 = icmp slt i32 %183, 4
  br i1 %184, label %185, label %193

185:                                              ; preds = %182
  %186 = shl i32 %183, 6
  %187 = shl nuw nsw i32 %179, 3
  %188 = add nuw i32 %186, %187
  %189 = add nuw nsw i32 0, %188
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %190
  store i32 1, ptr %191, align 4
  %192 = add nsw i32 %183, 1
  br label %182, !llvm.loop !34

193:                                              ; preds = %182
  %194 = add nuw nsw i32 %179, 1
  br label %178, !llvm.loop !35

195:                                              ; preds = %178
  br label %174, !llvm.loop !36

196:                                              ; preds = %174
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %197

197:                                              ; preds = %215, %196
  %198 = phi i32 [ 0, %196 ], [ %216, %215 ]
  store i32 %198, ptr %1, align 4
  %199 = icmp slt i32 %198, 3
  br i1 %199, label %200, label %217

200:                                              ; preds = %197
  br label %201

201:                                              ; preds = %214, %200
  %202 = phi i32 [ %198, %200 ], [ %207, %214 ]
  %203 = phi i32 [ 0, %200 ], [ 1, %214 ]
  store i32 %203, ptr %2, align 4
  %204 = icmp slt i32 %203, 1
  br i1 %204, label %205, label %215

205:                                              ; preds = %201
  br label %206

206:                                              ; preds = %210, %205
  %207 = phi i32 [ %202, %205 ], [ %198, %210 ]
  %208 = phi i32 [ 0, %205 ], [ 1, %210 ]
  store i32 %208, ptr %3, align 4
  %209 = icmp slt i32 %208, 1
  br i1 %209, label %210, label %214

210:                                              ; preds = %206
  %211 = add nuw nsw i32 %198, 0
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %212
  store i32 1, ptr %213, align 4
  br label %206, !llvm.loop !37

214:                                              ; preds = %206
  br label %201, !llvm.loop !38

215:                                              ; preds = %201
  %216 = add nsw i32 %202, 1
  br label %197, !llvm.loop !39

217:                                              ; preds = %197
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %218

218:                                              ; preds = %237, %217
  %219 = phi i32 [ 0, %217 ], [ 1, %237 ]
  store i32 %219, ptr %1, align 4
  %220 = icmp slt i32 %219, 1
  br i1 %220, label %221, label %238

221:                                              ; preds = %218
  br label %222

222:                                              ; preds = %235, %221
  %223 = phi i32 [ 0, %221 ], [ %236, %235 ]
  store i32 %223, ptr %2, align 4
  %224 = icmp slt i32 %223, 3
  br i1 %224, label %225, label %237

225:                                              ; preds = %222
  br label %226

226:                                              ; preds = %229, %225
  %227 = phi i32 [ 0, %225 ], [ 1, %229 ]
  store i32 %227, ptr %3, align 4
  %228 = icmp slt i32 %227, 1
  br i1 %228, label %229, label %235

229:                                              ; preds = %226
  %230 = shl i32 %223, 3
  %231 = add nuw nsw i32 0, %230
  %232 = add nuw nsw i32 0, %231
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %233
  store i32 1, ptr %234, align 4
  br label %226, !llvm.loop !40

235:                                              ; preds = %226
  %236 = add nsw i32 %223, 1
  br label %222, !llvm.loop !41

237:                                              ; preds = %222
  br label %218, !llvm.loop !42

238:                                              ; preds = %218
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %239

239:                                              ; preds = %258, %238
  %240 = phi i32 [ 0, %238 ], [ 1, %258 ]
  store i32 %240, ptr %1, align 4
  %241 = icmp slt i32 %240, 1
  br i1 %241, label %242, label %259

242:                                              ; preds = %239
  br label %243

243:                                              ; preds = %257, %242
  %244 = phi i32 [ 0, %242 ], [ 1, %257 ]
  store i32 %244, ptr %2, align 4
  %245 = icmp slt i32 %244, 1
  br i1 %245, label %246, label %258

246:                                              ; preds = %243
  br label %247

247:                                              ; preds = %250, %246
  %248 = phi i32 [ 0, %246 ], [ %256, %250 ]
  store i32 %248, ptr %3, align 4
  %249 = icmp slt i32 %248, 3
  br i1 %249, label %250, label %257

250:                                              ; preds = %247
  %251 = shl i32 %248, 6
  %252 = add nuw nsw i32 %251, 0
  %253 = add nuw nsw i32 0, %252
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %254
  store i32 1, ptr %255, align 4
  %256 = add nsw i32 %248, 1
  br label %247, !llvm.loop !43

257:                                              ; preds = %247
  br label %243, !llvm.loop !44

258:                                              ; preds = %243
  br label %239, !llvm.loop !45

259:                                              ; preds = %239
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %260

260:                                              ; preds = %281, %259
  %261 = phi i32 [ 0, %259 ], [ %282, %281 ]
  store i32 %261, ptr %1, align 4
  %262 = icmp slt i32 %261, 2
  br i1 %262, label %263, label %283

263:                                              ; preds = %260
  br label %264

264:                                              ; preds = %279, %263
  %265 = phi i32 [ %261, %263 ], [ %270, %279 ]
  %266 = phi i32 [ 0, %263 ], [ %280, %279 ]
  store i32 %266, ptr %2, align 4
  %267 = icmp slt i32 %266, 2
  br i1 %267, label %268, label %281

268:                                              ; preds = %264
  br label %269

269:                                              ; preds = %273, %268
  %270 = phi i32 [ %265, %268 ], [ %261, %273 ]
  %271 = phi i32 [ 0, %268 ], [ 1, %273 ]
  store i32 %271, ptr %3, align 4
  %272 = icmp slt i32 %271, 1
  br i1 %272, label %273, label %279

273:                                              ; preds = %269
  %274 = shl nuw nsw i32 %266, 3
  %275 = add nuw nsw i32 0, %274
  %276 = add nuw nsw i32 %261, %275
  %277 = zext nneg i32 %276 to i64
  %278 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %277
  store i32 1, ptr %278, align 4
  br label %269, !llvm.loop !46

279:                                              ; preds = %269
  %280 = add nuw nsw i32 %266, 1
  br label %264, !llvm.loop !47

281:                                              ; preds = %264
  %282 = add nuw nsw i32 %265, 1
  br label %260, !llvm.loop !48

283:                                              ; preds = %260
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %284

284:                                              ; preds = %305, %283
  %285 = phi i32 [ 0, %283 ], [ %306, %305 ]
  store i32 %285, ptr %1, align 4
  %286 = icmp slt i32 %285, 2
  br i1 %286, label %287, label %307

287:                                              ; preds = %284
  br label %288

288:                                              ; preds = %304, %287
  %289 = phi i32 [ %285, %287 ], [ %294, %304 ]
  %290 = phi i32 [ 0, %287 ], [ 1, %304 ]
  store i32 %290, ptr %2, align 4
  %291 = icmp slt i32 %290, 1
  br i1 %291, label %292, label %305

292:                                              ; preds = %288
  br label %293

293:                                              ; preds = %297, %292
  %294 = phi i32 [ %289, %292 ], [ %285, %297 ]
  %295 = phi i32 [ 0, %292 ], [ %303, %297 ]
  store i32 %295, ptr %3, align 4
  %296 = icmp slt i32 %295, 2
  br i1 %296, label %297, label %304

297:                                              ; preds = %293
  %298 = shl nuw nsw i32 %295, 6
  %299 = add nuw nsw i32 %298, 0
  %300 = add nuw nsw i32 %285, %299
  %301 = zext nneg i32 %300 to i64
  %302 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %301
  store i32 1, ptr %302, align 4
  %303 = add nuw nsw i32 %295, 1
  br label %293, !llvm.loop !49

304:                                              ; preds = %293
  br label %288, !llvm.loop !50

305:                                              ; preds = %288
  %306 = add nuw nsw i32 %289, 1
  br label %284, !llvm.loop !51

307:                                              ; preds = %284
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %308

308:                                              ; preds = %329, %307
  %309 = phi i32 [ 0, %307 ], [ 1, %329 ]
  store i32 %309, ptr %1, align 4
  %310 = icmp slt i32 %309, 1
  br i1 %310, label %311, label %330

311:                                              ; preds = %308
  br label %312

312:                                              ; preds = %327, %311
  %313 = phi i32 [ 0, %311 ], [ %328, %327 ]
  store i32 %313, ptr %2, align 4
  %314 = icmp slt i32 %313, 2
  br i1 %314, label %315, label %329

315:                                              ; preds = %312
  br label %316

316:                                              ; preds = %319, %315
  %317 = phi i32 [ 0, %315 ], [ %326, %319 ]
  store i32 %317, ptr %3, align 4
  %318 = icmp slt i32 %317, 2
  br i1 %318, label %319, label %327

319:                                              ; preds = %316
  %320 = shl nuw nsw i32 %317, 6
  %321 = shl nuw nsw i32 %313, 3
  %322 = add nuw nsw i32 %320, %321
  %323 = add nuw nsw i32 0, %322
  %324 = zext nneg i32 %323 to i64
  %325 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %324
  store i32 1, ptr %325, align 4
  %326 = add nuw nsw i32 %317, 1
  br label %316, !llvm.loop !52

327:                                              ; preds = %316
  %328 = add nuw nsw i32 %313, 1
  br label %312, !llvm.loop !53

329:                                              ; preds = %312
  br label %308, !llvm.loop !54

330:                                              ; preds = %308
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %331

331:                                              ; preds = %354, %330
  %332 = phi i32 [ 0, %330 ], [ %355, %354 ]
  store i32 %332, ptr %1, align 4
  %333 = icmp slt i32 %332, 2
  br i1 %333, label %334, label %356

334:                                              ; preds = %331
  br label %335

335:                                              ; preds = %352, %334
  %336 = phi i32 [ %332, %334 ], [ %341, %352 ]
  %337 = phi i32 [ 0, %334 ], [ %353, %352 ]
  store i32 %337, ptr %2, align 4
  %338 = icmp slt i32 %337, 2
  br i1 %338, label %339, label %354

339:                                              ; preds = %335
  br label %340

340:                                              ; preds = %344, %339
  %341 = phi i32 [ %336, %339 ], [ %332, %344 ]
  %342 = phi i32 [ 0, %339 ], [ %351, %344 ]
  store i32 %342, ptr %3, align 4
  %343 = icmp slt i32 %342, 2
  br i1 %343, label %344, label %352

344:                                              ; preds = %340
  %345 = shl nuw nsw i32 %342, 6
  %346 = shl nuw nsw i32 %337, 3
  %347 = add nuw nsw i32 %345, %346
  %348 = add nuw nsw i32 %332, %347
  %349 = zext nneg i32 %348 to i64
  %350 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %349
  store i32 1, ptr %350, align 4
  %351 = add nuw nsw i32 %342, 1
  br label %340, !llvm.loop !55

352:                                              ; preds = %340
  %353 = add nuw nsw i32 %337, 1
  br label %335, !llvm.loop !56

354:                                              ; preds = %335
  %355 = add nuw nsw i32 %336, 1
  br label %331, !llvm.loop !57

356:                                              ; preds = %331
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 73, ptr %4, align 4
  store i32 0, ptr @kount, align 4
  %357 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %357, 0
  br i1 %.not, label %360, label %358

358:                                              ; preds = %356
  %359 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %359, ptr @n, align 4
  br label %361

360:                                              ; preds = %356
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %.pre = load i32, ptr @n, align 4
  br label %361

361:                                              ; preds = %360, %358
  %362 = phi i32 [ %.pre, %360 ], [ %359, %358 ]
  %363 = call i32 @Trial(i32 noundef %362)
  %.not16 = icmp eq i32 %363, 0
  br i1 %.not16, label %364, label %365

364:                                              ; preds = %361
  %puts17 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %369

365:                                              ; preds = %361
  %366 = load i32, ptr @kount, align 4
  %.not18 = icmp eq i32 %366, 2005
  br i1 %.not18, label %368, label %367

367:                                              ; preds = %365
  %puts19 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %368

368:                                              ; preds = %367, %365
  br label %369

369:                                              ; preds = %368, %364
  %370 = load i32, ptr @n, align 4
  %371 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %370) #4
  %372 = load i32, ptr @kount, align 4
  %373 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %372) #4
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  br label %2

2:                                                ; preds = %5, %0
  %3 = phi i32 [ 0, %0 ], [ %6, %5 ]
  store i32 %3, ptr %1, align 4
  %4 = icmp slt i32 %3, 100
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  call void @Puzzle()
  %6 = add nsw i32 %3, 1
  br label %2, !llvm.loop !58

7:                                                ; preds = %2
  ret i32 0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) #3

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nofree nounwind }
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
