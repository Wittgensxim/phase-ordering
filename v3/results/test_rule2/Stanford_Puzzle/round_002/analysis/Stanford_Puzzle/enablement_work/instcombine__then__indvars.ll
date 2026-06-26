; ModuleID = 'results\test_rule2\Stanford_Puzzle\round_001\output.ll'
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
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  br label %6

6:                                                ; preds = %25, %2
  %storemerge = phi i32 [ 0, %2 ], [ %27, %25 ]
  store i32 %storemerge, ptr %5, align 4
  %7 = load i32, ptr %3, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %8
  %10 = load i32, ptr %9, align 4
  %.not = icmp sgt i32 %storemerge, %10
  br i1 %.not, label %28, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds [2048 x i8], ptr @p, i64 %8
  %13 = sext i32 %storemerge to i64
  %14 = getelementptr inbounds [4 x i8], ptr %12, i64 %13
  %15 = load i32, ptr %14, align 4
  %.not2 = icmp eq i32 %15, 0
  br i1 %.not2, label %24, label %16

16:                                               ; preds = %11
  %17 = load i32, ptr %4, align 4
  %18 = add nsw i32 %17, %storemerge
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %19
  %21 = load i32, ptr %20, align 4
  %.not3 = icmp eq i32 %21, 0
  br i1 %.not3, label %23, label %22

22:                                               ; preds = %16
  br label %29

23:                                               ; preds = %16
  br label %24

24:                                               ; preds = %23, %11
  br label %25

25:                                               ; preds = %24
  %26 = load i32, ptr %5, align 4
  %27 = add nsw i32 %26, 1
  br label %6, !llvm.loop !7

28:                                               ; preds = %6
  br label %29

29:                                               ; preds = %28, %22
  %storemerge1 = phi i32 [ 1, %28 ], [ 0, %22 ]
  ret i32 %storemerge1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Place(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  br label %6

6:                                                ; preds = %22, %2
  %storemerge = phi i32 [ 0, %2 ], [ %24, %22 ]
  store i32 %storemerge, ptr %5, align 4
  %7 = load i32, ptr %3, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %8
  %10 = load i32, ptr %9, align 4
  %.not = icmp sgt i32 %storemerge, %10
  br i1 %.not, label %25, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds [2048 x i8], ptr @p, i64 %8
  %13 = sext i32 %storemerge to i64
  %14 = getelementptr inbounds [4 x i8], ptr %12, i64 %13
  %15 = load i32, ptr %14, align 4
  %.not4 = icmp eq i32 %15, 0
  br i1 %.not4, label %21, label %16

16:                                               ; preds = %11
  %17 = load i32, ptr %4, align 4
  %18 = add nsw i32 %17, %storemerge
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %19
  store i32 1, ptr %20, align 4
  br label %21

21:                                               ; preds = %16, %11
  br label %22

22:                                               ; preds = %21
  %23 = load i32, ptr %5, align 4
  %24 = add nsw i32 %23, 1
  br label %6, !llvm.loop !9

25:                                               ; preds = %6
  %.lcssa = phi i64 [ %8, %6 ]
  %26 = getelementptr inbounds [4 x i8], ptr @class, i64 %.lcssa
  %27 = load i32, ptr %26, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %28
  %30 = load i32, ptr %29, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, ptr %29, align 4
  %32 = load i32, ptr %4, align 4
  %33 = sext i32 %32 to i64
  %smax = call i32 @llvm.smax.i32(i32 %32, i32 512)
  %wide.trip.count = sext i32 %smax to i64
  br label %34

34:                                               ; preds = %42, %25
  %indvars.iv = phi i64 [ %indvars.iv.next, %42 ], [ %33, %25 ]
  %35 = trunc nsw i64 %indvars.iv to i32
  store i32 %35, ptr %5, align 4
  %exitcond = icmp ne i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %36, label %43

36:                                               ; preds = %34
  %37 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %indvars.iv
  %38 = load i32, ptr %37, align 4
  %.not3 = icmp eq i32 %38, 0
  br i1 %.not3, label %39, label %41

39:                                               ; preds = %36
  %storemerge1.lcssa5.wide = phi i64 [ %indvars.iv, %36 ]
  %40 = trunc nsw i64 %storemerge1.lcssa5.wide to i32
  br label %44

41:                                               ; preds = %36
  br label %42

42:                                               ; preds = %41
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %34, !llvm.loop !10

43:                                               ; preds = %34
  br label %44

44:                                               ; preds = %43, %39
  %storemerge2 = phi i32 [ 0, %43 ], [ %40, %39 ]
  ret i32 %storemerge2
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Remove(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  br label %6

6:                                                ; preds = %22, %2
  %storemerge = phi i32 [ 0, %2 ], [ %24, %22 ]
  store i32 %storemerge, ptr %5, align 4
  %7 = load i32, ptr %3, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %8
  %10 = load i32, ptr %9, align 4
  %.not = icmp sgt i32 %storemerge, %10
  br i1 %.not, label %25, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds [2048 x i8], ptr @p, i64 %8
  %13 = sext i32 %storemerge to i64
  %14 = getelementptr inbounds [4 x i8], ptr %12, i64 %13
  %15 = load i32, ptr %14, align 4
  %.not1 = icmp eq i32 %15, 0
  br i1 %.not1, label %21, label %16

16:                                               ; preds = %11
  %17 = load i32, ptr %4, align 4
  %18 = add nsw i32 %17, %storemerge
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %19
  store i32 0, ptr %20, align 4
  br label %21

21:                                               ; preds = %16, %11
  br label %22

22:                                               ; preds = %21
  %23 = load i32, ptr %5, align 4
  %24 = add nsw i32 %23, 1
  br label %6, !llvm.loop !11

25:                                               ; preds = %6
  %.lcssa = phi i64 [ %8, %6 ]
  %26 = getelementptr inbounds [4 x i8], ptr @class, i64 %.lcssa
  %27 = load i32, ptr %26, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %28
  %30 = load i32, ptr %29, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, ptr %29, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Trial(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %5 = load i32, ptr @kount, align 4
  %6 = add nsw i32 %5, 1
  store i32 %6, ptr @kount, align 4
  br label %7

7:                                                ; preds = %34, %1
  %storemerge = phi i32 [ 0, %1 ], [ %36, %34 ]
  store i32 %storemerge, ptr %3, align 4
  %8 = icmp slt i32 %storemerge, 13
  br i1 %8, label %9, label %37

9:                                                ; preds = %7
  %10 = sext i32 %storemerge to i64
  %11 = getelementptr inbounds [4 x i8], ptr @class, i64 %10
  %12 = load i32, ptr %11, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %13
  %15 = load i32, ptr %14, align 4
  %.not = icmp eq i32 %15, 0
  br i1 %.not, label %33, label %16

16:                                               ; preds = %9
  %17 = load i32, ptr %2, align 4
  %18 = call i32 @Fit(i32 noundef %storemerge, i32 noundef %17)
  %.not2 = icmp eq i32 %18, 0
  br i1 %.not2, label %32, label %19

19:                                               ; preds = %16
  %20 = load i32, ptr %3, align 4
  %21 = load i32, ptr %2, align 4
  %22 = call i32 @Place(i32 noundef %20, i32 noundef %21)
  store i32 %22, ptr %4, align 4
  %23 = call i32 @Trial(i32 noundef %22)
  %.not3 = icmp eq i32 %23, 0
  br i1 %.not3, label %24, label %27

24:                                               ; preds = %19
  %25 = load i32, ptr %4, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %24, %19
  br label %38

28:                                               ; preds = %24
  %29 = load i32, ptr %3, align 4
  %30 = load i32, ptr %2, align 4
  call void @Remove(i32 noundef %29, i32 noundef %30)
  br label %31

31:                                               ; preds = %28
  br label %32

32:                                               ; preds = %31, %16
  br label %33

33:                                               ; preds = %32, %9
  br label %34

34:                                               ; preds = %33
  %35 = load i32, ptr %3, align 4
  %36 = add nsw i32 %35, 1
  br label %7, !llvm.loop !12

37:                                               ; preds = %7
  br label %38

38:                                               ; preds = %37, %27
  %storemerge1 = phi i32 [ 0, %37 ], [ 1, %27 ]
  ret i32 %storemerge1
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Puzzle() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  br label %5

5:                                                ; preds = %10, %0
  %storemerge = phi i32 [ 0, %0 ], [ %12, %10 ]
  store i32 %storemerge, ptr %4, align 4
  %6 = icmp slt i32 %storemerge, 512
  br i1 %6, label %7, label %13

7:                                                ; preds = %5
  %8 = sext i32 %storemerge to i64
  %9 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %8
  store i32 1, ptr %9, align 4
  br label %10

10:                                               ; preds = %7
  %11 = load i32, ptr %4, align 4
  %12 = add nsw i32 %11, 1
  br label %5, !llvm.loop !13

13:                                               ; preds = %5
  br label %14

14:                                               ; preds = %39, %13
  %storemerge1 = phi i32 [ 1, %13 ], [ %41, %39 ]
  store i32 %storemerge1, ptr %1, align 4
  %15 = icmp slt i32 %storemerge1, 6
  br i1 %15, label %16, label %42

16:                                               ; preds = %14
  br label %17

17:                                               ; preds = %35, %16
  %storemerge47 = phi i32 [ 1, %16 ], [ %37, %35 ]
  store i32 %storemerge47, ptr %2, align 4
  %18 = icmp slt i32 %storemerge47, 6
  br i1 %18, label %19, label %38

19:                                               ; preds = %17
  br label %20

20:                                               ; preds = %31, %19
  %storemerge48 = phi i32 [ 1, %19 ], [ %33, %31 ]
  store i32 %storemerge48, ptr %3, align 4
  %21 = icmp slt i32 %storemerge48, 6
  br i1 %21, label %22, label %34

22:                                               ; preds = %20
  %23 = load i32, ptr %1, align 4
  %24 = load i32, ptr %2, align 4
  %25 = shl i32 %storemerge48, 6
  %26 = shl i32 %24, 3
  %27 = add i32 %25, %26
  %28 = add nsw i32 %23, %27
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %29
  store i32 0, ptr %30, align 4
  br label %31

31:                                               ; preds = %22
  %32 = load i32, ptr %3, align 4
  %33 = add nsw i32 %32, 1
  br label %20, !llvm.loop !14

34:                                               ; preds = %20
  br label %35

35:                                               ; preds = %34
  %36 = load i32, ptr %2, align 4
  %37 = add nsw i32 %36, 1
  br label %17, !llvm.loop !15

38:                                               ; preds = %17
  br label %39

39:                                               ; preds = %38
  %40 = load i32, ptr %1, align 4
  %41 = add nsw i32 %40, 1
  br label %14, !llvm.loop !16

42:                                               ; preds = %14
  br label %43

43:                                               ; preds = %58, %42
  %storemerge2 = phi i32 [ 0, %42 ], [ %60, %58 ]
  store i32 %storemerge2, ptr %1, align 4
  %44 = icmp slt i32 %storemerge2, 13
  br i1 %44, label %45, label %61

45:                                               ; preds = %43
  br label %46

46:                                               ; preds = %54, %45
  %storemerge46 = phi i32 [ 0, %45 ], [ %56, %54 ]
  store i32 %storemerge46, ptr %4, align 4
  %47 = icmp slt i32 %storemerge46, 512
  br i1 %47, label %48, label %57

48:                                               ; preds = %46
  %49 = load i32, ptr %1, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [2048 x i8], ptr @p, i64 %50
  %52 = sext i32 %storemerge46 to i64
  %53 = getelementptr inbounds [4 x i8], ptr %51, i64 %52
  store i32 0, ptr %53, align 4
  br label %54

54:                                               ; preds = %48
  %55 = load i32, ptr %4, align 4
  %56 = add nsw i32 %55, 1
  br label %46, !llvm.loop !17

57:                                               ; preds = %46
  br label %58

58:                                               ; preds = %57
  %59 = load i32, ptr %1, align 4
  %60 = add nsw i32 %59, 1
  br label %43, !llvm.loop !18

61:                                               ; preds = %43
  br label %62

62:                                               ; preds = %87, %61
  %storemerge3 = phi i32 [ 0, %61 ], [ %89, %87 ]
  store i32 %storemerge3, ptr %1, align 4
  %63 = icmp slt i32 %storemerge3, 4
  br i1 %63, label %64, label %90

64:                                               ; preds = %62
  br label %65

65:                                               ; preds = %83, %64
  %storemerge44 = phi i32 [ 0, %64 ], [ %85, %83 ]
  store i32 %storemerge44, ptr %2, align 4
  %66 = icmp slt i32 %storemerge44, 2
  br i1 %66, label %67, label %86

67:                                               ; preds = %65
  br label %68

68:                                               ; preds = %79, %67
  %storemerge45 = phi i32 [ 0, %67 ], [ %81, %79 ]
  store i32 %storemerge45, ptr %3, align 4
  %69 = icmp slt i32 %storemerge45, 1
  br i1 %69, label %70, label %82

70:                                               ; preds = %68
  %71 = load i32, ptr %1, align 4
  %72 = load i32, ptr %2, align 4
  %73 = shl i32 %storemerge45, 6
  %74 = shl i32 %72, 3
  %75 = add i32 %73, %74
  %76 = add nsw i32 %71, %75
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [4 x i8], ptr @p, i64 %77
  store i32 1, ptr %78, align 4
  br label %79

79:                                               ; preds = %70
  %80 = load i32, ptr %3, align 4
  %81 = add nsw i32 %80, 1
  br label %68, !llvm.loop !19

82:                                               ; preds = %68
  br label %83

83:                                               ; preds = %82
  %84 = load i32, ptr %2, align 4
  %85 = add nsw i32 %84, 1
  br label %65, !llvm.loop !20

86:                                               ; preds = %65
  br label %87

87:                                               ; preds = %86
  %88 = load i32, ptr %1, align 4
  %89 = add nsw i32 %88, 1
  br label %62, !llvm.loop !21

90:                                               ; preds = %62
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %91

91:                                               ; preds = %116, %90
  %storemerge4 = phi i32 [ 0, %90 ], [ %118, %116 ]
  store i32 %storemerge4, ptr %1, align 4
  %92 = icmp slt i32 %storemerge4, 2
  br i1 %92, label %93, label %119

93:                                               ; preds = %91
  br label %94

94:                                               ; preds = %112, %93
  %storemerge42 = phi i32 [ 0, %93 ], [ %114, %112 ]
  store i32 %storemerge42, ptr %2, align 4
  %95 = icmp slt i32 %storemerge42, 1
  br i1 %95, label %96, label %115

96:                                               ; preds = %94
  br label %97

97:                                               ; preds = %108, %96
  %storemerge43 = phi i32 [ 0, %96 ], [ %110, %108 ]
  store i32 %storemerge43, ptr %3, align 4
  %98 = icmp slt i32 %storemerge43, 4
  br i1 %98, label %99, label %111

99:                                               ; preds = %97
  %100 = load i32, ptr %1, align 4
  %101 = load i32, ptr %2, align 4
  %102 = shl i32 %storemerge43, 6
  %103 = shl i32 %101, 3
  %104 = add i32 %102, %103
  %105 = add nsw i32 %100, %104
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %106
  store i32 1, ptr %107, align 4
  br label %108

108:                                              ; preds = %99
  %109 = load i32, ptr %3, align 4
  %110 = add nsw i32 %109, 1
  br label %97, !llvm.loop !22

111:                                              ; preds = %97
  br label %112

112:                                              ; preds = %111
  %113 = load i32, ptr %2, align 4
  %114 = add nsw i32 %113, 1
  br label %94, !llvm.loop !23

115:                                              ; preds = %94
  br label %116

116:                                              ; preds = %115
  %117 = load i32, ptr %1, align 4
  %118 = add nsw i32 %117, 1
  br label %91, !llvm.loop !24

119:                                              ; preds = %91
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %120

120:                                              ; preds = %145, %119
  %storemerge5 = phi i32 [ 0, %119 ], [ %147, %145 ]
  store i32 %storemerge5, ptr %1, align 4
  %121 = icmp slt i32 %storemerge5, 1
  br i1 %121, label %122, label %148

122:                                              ; preds = %120
  br label %123

123:                                              ; preds = %141, %122
  %storemerge40 = phi i32 [ 0, %122 ], [ %143, %141 ]
  store i32 %storemerge40, ptr %2, align 4
  %124 = icmp slt i32 %storemerge40, 4
  br i1 %124, label %125, label %144

125:                                              ; preds = %123
  br label %126

126:                                              ; preds = %137, %125
  %storemerge41 = phi i32 [ 0, %125 ], [ %139, %137 ]
  store i32 %storemerge41, ptr %3, align 4
  %127 = icmp slt i32 %storemerge41, 2
  br i1 %127, label %128, label %140

128:                                              ; preds = %126
  %129 = load i32, ptr %1, align 4
  %130 = load i32, ptr %2, align 4
  %131 = shl i32 %storemerge41, 6
  %132 = shl i32 %130, 3
  %133 = add i32 %131, %132
  %134 = add nsw i32 %129, %133
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %135
  store i32 1, ptr %136, align 4
  br label %137

137:                                              ; preds = %128
  %138 = load i32, ptr %3, align 4
  %139 = add nsw i32 %138, 1
  br label %126, !llvm.loop !25

140:                                              ; preds = %126
  br label %141

141:                                              ; preds = %140
  %142 = load i32, ptr %2, align 4
  %143 = add nsw i32 %142, 1
  br label %123, !llvm.loop !26

144:                                              ; preds = %123
  br label %145

145:                                              ; preds = %144
  %146 = load i32, ptr %1, align 4
  %147 = add nsw i32 %146, 1
  br label %120, !llvm.loop !27

148:                                              ; preds = %120
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %149

149:                                              ; preds = %174, %148
  %storemerge6 = phi i32 [ 0, %148 ], [ %176, %174 ]
  store i32 %storemerge6, ptr %1, align 4
  %150 = icmp slt i32 %storemerge6, 2
  br i1 %150, label %151, label %177

151:                                              ; preds = %149
  br label %152

152:                                              ; preds = %170, %151
  %storemerge38 = phi i32 [ 0, %151 ], [ %172, %170 ]
  store i32 %storemerge38, ptr %2, align 4
  %153 = icmp slt i32 %storemerge38, 4
  br i1 %153, label %154, label %173

154:                                              ; preds = %152
  br label %155

155:                                              ; preds = %166, %154
  %storemerge39 = phi i32 [ 0, %154 ], [ %168, %166 ]
  store i32 %storemerge39, ptr %3, align 4
  %156 = icmp slt i32 %storemerge39, 1
  br i1 %156, label %157, label %169

157:                                              ; preds = %155
  %158 = load i32, ptr %1, align 4
  %159 = load i32, ptr %2, align 4
  %160 = shl i32 %storemerge39, 6
  %161 = shl i32 %159, 3
  %162 = add i32 %160, %161
  %163 = add nsw i32 %158, %162
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %164
  store i32 1, ptr %165, align 4
  br label %166

166:                                              ; preds = %157
  %167 = load i32, ptr %3, align 4
  %168 = add nsw i32 %167, 1
  br label %155, !llvm.loop !28

169:                                              ; preds = %155
  br label %170

170:                                              ; preds = %169
  %171 = load i32, ptr %2, align 4
  %172 = add nsw i32 %171, 1
  br label %152, !llvm.loop !29

173:                                              ; preds = %152
  br label %174

174:                                              ; preds = %173
  %175 = load i32, ptr %1, align 4
  %176 = add nsw i32 %175, 1
  br label %149, !llvm.loop !30

177:                                              ; preds = %149
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %178

178:                                              ; preds = %203, %177
  %storemerge7 = phi i32 [ 0, %177 ], [ %205, %203 ]
  store i32 %storemerge7, ptr %1, align 4
  %179 = icmp slt i32 %storemerge7, 4
  br i1 %179, label %180, label %206

180:                                              ; preds = %178
  br label %181

181:                                              ; preds = %199, %180
  %storemerge36 = phi i32 [ 0, %180 ], [ %201, %199 ]
  store i32 %storemerge36, ptr %2, align 4
  %182 = icmp slt i32 %storemerge36, 1
  br i1 %182, label %183, label %202

183:                                              ; preds = %181
  br label %184

184:                                              ; preds = %195, %183
  %storemerge37 = phi i32 [ 0, %183 ], [ %197, %195 ]
  store i32 %storemerge37, ptr %3, align 4
  %185 = icmp slt i32 %storemerge37, 2
  br i1 %185, label %186, label %198

186:                                              ; preds = %184
  %187 = load i32, ptr %1, align 4
  %188 = load i32, ptr %2, align 4
  %189 = shl i32 %storemerge37, 6
  %190 = shl i32 %188, 3
  %191 = add i32 %189, %190
  %192 = add nsw i32 %187, %191
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %193
  store i32 1, ptr %194, align 4
  br label %195

195:                                              ; preds = %186
  %196 = load i32, ptr %3, align 4
  %197 = add nsw i32 %196, 1
  br label %184, !llvm.loop !31

198:                                              ; preds = %184
  br label %199

199:                                              ; preds = %198
  %200 = load i32, ptr %2, align 4
  %201 = add nsw i32 %200, 1
  br label %181, !llvm.loop !32

202:                                              ; preds = %181
  br label %203

203:                                              ; preds = %202
  %204 = load i32, ptr %1, align 4
  %205 = add nsw i32 %204, 1
  br label %178, !llvm.loop !33

206:                                              ; preds = %178
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %207

207:                                              ; preds = %232, %206
  %storemerge8 = phi i32 [ 0, %206 ], [ %234, %232 ]
  store i32 %storemerge8, ptr %1, align 4
  %208 = icmp slt i32 %storemerge8, 1
  br i1 %208, label %209, label %235

209:                                              ; preds = %207
  br label %210

210:                                              ; preds = %228, %209
  %storemerge34 = phi i32 [ 0, %209 ], [ %230, %228 ]
  store i32 %storemerge34, ptr %2, align 4
  %211 = icmp slt i32 %storemerge34, 2
  br i1 %211, label %212, label %231

212:                                              ; preds = %210
  br label %213

213:                                              ; preds = %224, %212
  %storemerge35 = phi i32 [ 0, %212 ], [ %226, %224 ]
  store i32 %storemerge35, ptr %3, align 4
  %214 = icmp slt i32 %storemerge35, 4
  br i1 %214, label %215, label %227

215:                                              ; preds = %213
  %216 = load i32, ptr %1, align 4
  %217 = load i32, ptr %2, align 4
  %218 = shl i32 %storemerge35, 6
  %219 = shl i32 %217, 3
  %220 = add i32 %218, %219
  %221 = add nsw i32 %216, %220
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %222
  store i32 1, ptr %223, align 4
  br label %224

224:                                              ; preds = %215
  %225 = load i32, ptr %3, align 4
  %226 = add nsw i32 %225, 1
  br label %213, !llvm.loop !34

227:                                              ; preds = %213
  br label %228

228:                                              ; preds = %227
  %229 = load i32, ptr %2, align 4
  %230 = add nsw i32 %229, 1
  br label %210, !llvm.loop !35

231:                                              ; preds = %210
  br label %232

232:                                              ; preds = %231
  %233 = load i32, ptr %1, align 4
  %234 = add nsw i32 %233, 1
  br label %207, !llvm.loop !36

235:                                              ; preds = %207
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %236

236:                                              ; preds = %261, %235
  %storemerge9 = phi i32 [ 0, %235 ], [ %263, %261 ]
  store i32 %storemerge9, ptr %1, align 4
  %237 = icmp slt i32 %storemerge9, 3
  br i1 %237, label %238, label %264

238:                                              ; preds = %236
  br label %239

239:                                              ; preds = %257, %238
  %storemerge32 = phi i32 [ 0, %238 ], [ %259, %257 ]
  store i32 %storemerge32, ptr %2, align 4
  %240 = icmp slt i32 %storemerge32, 1
  br i1 %240, label %241, label %260

241:                                              ; preds = %239
  br label %242

242:                                              ; preds = %253, %241
  %storemerge33 = phi i32 [ 0, %241 ], [ %255, %253 ]
  store i32 %storemerge33, ptr %3, align 4
  %243 = icmp slt i32 %storemerge33, 1
  br i1 %243, label %244, label %256

244:                                              ; preds = %242
  %245 = load i32, ptr %1, align 4
  %246 = load i32, ptr %2, align 4
  %247 = shl i32 %storemerge33, 6
  %248 = shl i32 %246, 3
  %249 = add i32 %247, %248
  %250 = add nsw i32 %245, %249
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %251
  store i32 1, ptr %252, align 4
  br label %253

253:                                              ; preds = %244
  %254 = load i32, ptr %3, align 4
  %255 = add nsw i32 %254, 1
  br label %242, !llvm.loop !37

256:                                              ; preds = %242
  br label %257

257:                                              ; preds = %256
  %258 = load i32, ptr %2, align 4
  %259 = add nsw i32 %258, 1
  br label %239, !llvm.loop !38

260:                                              ; preds = %239
  br label %261

261:                                              ; preds = %260
  %262 = load i32, ptr %1, align 4
  %263 = add nsw i32 %262, 1
  br label %236, !llvm.loop !39

264:                                              ; preds = %236
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %265

265:                                              ; preds = %290, %264
  %storemerge10 = phi i32 [ 0, %264 ], [ %292, %290 ]
  store i32 %storemerge10, ptr %1, align 4
  %266 = icmp slt i32 %storemerge10, 1
  br i1 %266, label %267, label %293

267:                                              ; preds = %265
  br label %268

268:                                              ; preds = %286, %267
  %storemerge30 = phi i32 [ 0, %267 ], [ %288, %286 ]
  store i32 %storemerge30, ptr %2, align 4
  %269 = icmp slt i32 %storemerge30, 3
  br i1 %269, label %270, label %289

270:                                              ; preds = %268
  br label %271

271:                                              ; preds = %282, %270
  %storemerge31 = phi i32 [ 0, %270 ], [ %284, %282 ]
  store i32 %storemerge31, ptr %3, align 4
  %272 = icmp slt i32 %storemerge31, 1
  br i1 %272, label %273, label %285

273:                                              ; preds = %271
  %274 = load i32, ptr %1, align 4
  %275 = load i32, ptr %2, align 4
  %276 = shl i32 %storemerge31, 6
  %277 = shl i32 %275, 3
  %278 = add i32 %276, %277
  %279 = add nsw i32 %274, %278
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %280
  store i32 1, ptr %281, align 4
  br label %282

282:                                              ; preds = %273
  %283 = load i32, ptr %3, align 4
  %284 = add nsw i32 %283, 1
  br label %271, !llvm.loop !40

285:                                              ; preds = %271
  br label %286

286:                                              ; preds = %285
  %287 = load i32, ptr %2, align 4
  %288 = add nsw i32 %287, 1
  br label %268, !llvm.loop !41

289:                                              ; preds = %268
  br label %290

290:                                              ; preds = %289
  %291 = load i32, ptr %1, align 4
  %292 = add nsw i32 %291, 1
  br label %265, !llvm.loop !42

293:                                              ; preds = %265
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %294

294:                                              ; preds = %319, %293
  %storemerge11 = phi i32 [ 0, %293 ], [ %321, %319 ]
  store i32 %storemerge11, ptr %1, align 4
  %295 = icmp slt i32 %storemerge11, 1
  br i1 %295, label %296, label %322

296:                                              ; preds = %294
  br label %297

297:                                              ; preds = %315, %296
  %storemerge28 = phi i32 [ 0, %296 ], [ %317, %315 ]
  store i32 %storemerge28, ptr %2, align 4
  %298 = icmp slt i32 %storemerge28, 1
  br i1 %298, label %299, label %318

299:                                              ; preds = %297
  br label %300

300:                                              ; preds = %311, %299
  %storemerge29 = phi i32 [ 0, %299 ], [ %313, %311 ]
  store i32 %storemerge29, ptr %3, align 4
  %301 = icmp slt i32 %storemerge29, 3
  br i1 %301, label %302, label %314

302:                                              ; preds = %300
  %303 = load i32, ptr %1, align 4
  %304 = load i32, ptr %2, align 4
  %305 = shl i32 %storemerge29, 6
  %306 = shl i32 %304, 3
  %307 = add i32 %305, %306
  %308 = add nsw i32 %303, %307
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %309
  store i32 1, ptr %310, align 4
  br label %311

311:                                              ; preds = %302
  %312 = load i32, ptr %3, align 4
  %313 = add nsw i32 %312, 1
  br label %300, !llvm.loop !43

314:                                              ; preds = %300
  br label %315

315:                                              ; preds = %314
  %316 = load i32, ptr %2, align 4
  %317 = add nsw i32 %316, 1
  br label %297, !llvm.loop !44

318:                                              ; preds = %297
  br label %319

319:                                              ; preds = %318
  %320 = load i32, ptr %1, align 4
  %321 = add nsw i32 %320, 1
  br label %294, !llvm.loop !45

322:                                              ; preds = %294
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %323

323:                                              ; preds = %348, %322
  %storemerge12 = phi i32 [ 0, %322 ], [ %350, %348 ]
  store i32 %storemerge12, ptr %1, align 4
  %324 = icmp slt i32 %storemerge12, 2
  br i1 %324, label %325, label %351

325:                                              ; preds = %323
  br label %326

326:                                              ; preds = %344, %325
  %storemerge26 = phi i32 [ 0, %325 ], [ %346, %344 ]
  store i32 %storemerge26, ptr %2, align 4
  %327 = icmp slt i32 %storemerge26, 2
  br i1 %327, label %328, label %347

328:                                              ; preds = %326
  br label %329

329:                                              ; preds = %340, %328
  %storemerge27 = phi i32 [ 0, %328 ], [ %342, %340 ]
  store i32 %storemerge27, ptr %3, align 4
  %330 = icmp slt i32 %storemerge27, 1
  br i1 %330, label %331, label %343

331:                                              ; preds = %329
  %332 = load i32, ptr %1, align 4
  %333 = load i32, ptr %2, align 4
  %334 = shl i32 %storemerge27, 6
  %335 = shl i32 %333, 3
  %336 = add i32 %334, %335
  %337 = add nsw i32 %332, %336
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %338
  store i32 1, ptr %339, align 4
  br label %340

340:                                              ; preds = %331
  %341 = load i32, ptr %3, align 4
  %342 = add nsw i32 %341, 1
  br label %329, !llvm.loop !46

343:                                              ; preds = %329
  br label %344

344:                                              ; preds = %343
  %345 = load i32, ptr %2, align 4
  %346 = add nsw i32 %345, 1
  br label %326, !llvm.loop !47

347:                                              ; preds = %326
  br label %348

348:                                              ; preds = %347
  %349 = load i32, ptr %1, align 4
  %350 = add nsw i32 %349, 1
  br label %323, !llvm.loop !48

351:                                              ; preds = %323
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %352

352:                                              ; preds = %377, %351
  %storemerge13 = phi i32 [ 0, %351 ], [ %379, %377 ]
  store i32 %storemerge13, ptr %1, align 4
  %353 = icmp slt i32 %storemerge13, 2
  br i1 %353, label %354, label %380

354:                                              ; preds = %352
  br label %355

355:                                              ; preds = %373, %354
  %storemerge24 = phi i32 [ 0, %354 ], [ %375, %373 ]
  store i32 %storemerge24, ptr %2, align 4
  %356 = icmp slt i32 %storemerge24, 1
  br i1 %356, label %357, label %376

357:                                              ; preds = %355
  br label %358

358:                                              ; preds = %369, %357
  %storemerge25 = phi i32 [ 0, %357 ], [ %371, %369 ]
  store i32 %storemerge25, ptr %3, align 4
  %359 = icmp slt i32 %storemerge25, 2
  br i1 %359, label %360, label %372

360:                                              ; preds = %358
  %361 = load i32, ptr %1, align 4
  %362 = load i32, ptr %2, align 4
  %363 = shl i32 %storemerge25, 6
  %364 = shl i32 %362, 3
  %365 = add i32 %363, %364
  %366 = add nsw i32 %361, %365
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %367
  store i32 1, ptr %368, align 4
  br label %369

369:                                              ; preds = %360
  %370 = load i32, ptr %3, align 4
  %371 = add nsw i32 %370, 1
  br label %358, !llvm.loop !49

372:                                              ; preds = %358
  br label %373

373:                                              ; preds = %372
  %374 = load i32, ptr %2, align 4
  %375 = add nsw i32 %374, 1
  br label %355, !llvm.loop !50

376:                                              ; preds = %355
  br label %377

377:                                              ; preds = %376
  %378 = load i32, ptr %1, align 4
  %379 = add nsw i32 %378, 1
  br label %352, !llvm.loop !51

380:                                              ; preds = %352
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %381

381:                                              ; preds = %406, %380
  %storemerge14 = phi i32 [ 0, %380 ], [ %408, %406 ]
  store i32 %storemerge14, ptr %1, align 4
  %382 = icmp slt i32 %storemerge14, 1
  br i1 %382, label %383, label %409

383:                                              ; preds = %381
  br label %384

384:                                              ; preds = %402, %383
  %storemerge22 = phi i32 [ 0, %383 ], [ %404, %402 ]
  store i32 %storemerge22, ptr %2, align 4
  %385 = icmp slt i32 %storemerge22, 2
  br i1 %385, label %386, label %405

386:                                              ; preds = %384
  br label %387

387:                                              ; preds = %398, %386
  %storemerge23 = phi i32 [ 0, %386 ], [ %400, %398 ]
  store i32 %storemerge23, ptr %3, align 4
  %388 = icmp slt i32 %storemerge23, 2
  br i1 %388, label %389, label %401

389:                                              ; preds = %387
  %390 = load i32, ptr %1, align 4
  %391 = load i32, ptr %2, align 4
  %392 = shl i32 %storemerge23, 6
  %393 = shl i32 %391, 3
  %394 = add i32 %392, %393
  %395 = add nsw i32 %390, %394
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %396
  store i32 1, ptr %397, align 4
  br label %398

398:                                              ; preds = %389
  %399 = load i32, ptr %3, align 4
  %400 = add nsw i32 %399, 1
  br label %387, !llvm.loop !52

401:                                              ; preds = %387
  br label %402

402:                                              ; preds = %401
  %403 = load i32, ptr %2, align 4
  %404 = add nsw i32 %403, 1
  br label %384, !llvm.loop !53

405:                                              ; preds = %384
  br label %406

406:                                              ; preds = %405
  %407 = load i32, ptr %1, align 4
  %408 = add nsw i32 %407, 1
  br label %381, !llvm.loop !54

409:                                              ; preds = %381
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %410

410:                                              ; preds = %435, %409
  %storemerge15 = phi i32 [ 0, %409 ], [ %437, %435 ]
  store i32 %storemerge15, ptr %1, align 4
  %411 = icmp slt i32 %storemerge15, 2
  br i1 %411, label %412, label %438

412:                                              ; preds = %410
  br label %413

413:                                              ; preds = %431, %412
  %storemerge20 = phi i32 [ 0, %412 ], [ %433, %431 ]
  store i32 %storemerge20, ptr %2, align 4
  %414 = icmp slt i32 %storemerge20, 2
  br i1 %414, label %415, label %434

415:                                              ; preds = %413
  br label %416

416:                                              ; preds = %427, %415
  %storemerge21 = phi i32 [ 0, %415 ], [ %429, %427 ]
  store i32 %storemerge21, ptr %3, align 4
  %417 = icmp slt i32 %storemerge21, 2
  br i1 %417, label %418, label %430

418:                                              ; preds = %416
  %419 = load i32, ptr %1, align 4
  %420 = load i32, ptr %2, align 4
  %421 = shl i32 %storemerge21, 6
  %422 = shl i32 %420, 3
  %423 = add i32 %421, %422
  %424 = add nsw i32 %419, %423
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %425
  store i32 1, ptr %426, align 4
  br label %427

427:                                              ; preds = %418
  %428 = load i32, ptr %3, align 4
  %429 = add nsw i32 %428, 1
  br label %416, !llvm.loop !55

430:                                              ; preds = %416
  br label %431

431:                                              ; preds = %430
  %432 = load i32, ptr %2, align 4
  %433 = add nsw i32 %432, 1
  br label %413, !llvm.loop !56

434:                                              ; preds = %413
  br label %435

435:                                              ; preds = %434
  %436 = load i32, ptr %1, align 4
  %437 = add nsw i32 %436, 1
  br label %410, !llvm.loop !57

438:                                              ; preds = %410
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 73, ptr %4, align 4
  store i32 0, ptr @kount, align 4
  %439 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %439, 0
  br i1 %.not, label %443, label %440

440:                                              ; preds = %438
  %441 = load i32, ptr %4, align 4
  %442 = call i32 @Place(i32 noundef 0, i32 noundef %441)
  store i32 %442, ptr @n, align 4
  br label %444

443:                                              ; preds = %438
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %444

444:                                              ; preds = %443, %440
  %445 = load i32, ptr @n, align 4
  %446 = call i32 @Trial(i32 noundef %445)
  %.not16 = icmp eq i32 %446, 0
  br i1 %.not16, label %447, label %448

447:                                              ; preds = %444
  %puts17 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %452

448:                                              ; preds = %444
  %449 = load i32, ptr @kount, align 4
  %.not18 = icmp eq i32 %449, 2005
  br i1 %.not18, label %451, label %450

450:                                              ; preds = %448
  %puts19 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %451

451:                                              ; preds = %450, %448
  br label %452

452:                                              ; preds = %451, %447
  %453 = load i32, ptr @n, align 4
  %454 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %453) #4
  %455 = load i32, ptr @kount, align 4
  %456 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %455) #4
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  br label %2

2:                                                ; preds = %5, %0
  %storemerge = phi i32 [ 0, %0 ], [ %7, %5 ]
  store i32 %storemerge, ptr %1, align 4
  %3 = icmp slt i32 %storemerge, 100
  br i1 %3, label %4, label %8

4:                                                ; preds = %2
  call void @Puzzle()
  br label %5

5:                                                ; preds = %4
  %6 = load i32, ptr %1, align 4
  %7 = add nsw i32 %6, 1
  br label %2, !llvm.loop !58

8:                                                ; preds = %2
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
