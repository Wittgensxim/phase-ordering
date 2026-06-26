; ModuleID = 'results\paper_round2\Stanford_Puzzle\Stanford_Puzzle.ll'
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
  br label %6

6:                                                ; preds = %29, %2
  %storemerge = phi i32 [ 0, %2 ], [ %31, %29 ]
  store i32 %storemerge, ptr %5, align 4
  %7 = load i32, ptr %3, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %8
  %10 = load i32, ptr %9, align 4
  %.not = icmp sgt i32 %storemerge, %10
  br i1 %.not, label %32, label %11

11:                                               ; preds = %6
  %12 = load i32, ptr %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [2048 x i8], ptr @p, i64 %13
  %15 = load i32, ptr %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [4 x i8], ptr %14, i64 %16
  %18 = load i32, ptr %17, align 4
  %.not2 = icmp eq i32 %18, 0
  br i1 %.not2, label %28, label %19

19:                                               ; preds = %11
  %20 = load i32, ptr %4, align 4
  %21 = load i32, ptr %5, align 4
  %22 = add nsw i32 %20, %21
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %23
  %25 = load i32, ptr %24, align 4
  %.not3 = icmp eq i32 %25, 0
  br i1 %.not3, label %27, label %26

26:                                               ; preds = %19
  br label %33

27:                                               ; preds = %19
  br label %28

28:                                               ; preds = %27, %11
  br label %29

29:                                               ; preds = %28
  %30 = load i32, ptr %5, align 4
  %31 = add nsw i32 %30, 1
  br label %6, !llvm.loop !7

32:                                               ; preds = %6
  br label %33

33:                                               ; preds = %32, %26
  %storemerge1 = phi i32 [ 1, %32 ], [ 0, %26 ]
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

6:                                                ; preds = %26, %2
  %storemerge = phi i32 [ 0, %2 ], [ %28, %26 ]
  store i32 %storemerge, ptr %5, align 4
  %7 = load i32, ptr %3, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %8
  %10 = load i32, ptr %9, align 4
  %.not = icmp sgt i32 %storemerge, %10
  br i1 %.not, label %29, label %11

11:                                               ; preds = %6
  %12 = load i32, ptr %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [2048 x i8], ptr @p, i64 %13
  %15 = load i32, ptr %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [4 x i8], ptr %14, i64 %16
  %18 = load i32, ptr %17, align 4
  %.not4 = icmp eq i32 %18, 0
  br i1 %.not4, label %25, label %19

19:                                               ; preds = %11
  %20 = load i32, ptr %4, align 4
  %21 = load i32, ptr %5, align 4
  %22 = add nsw i32 %20, %21
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %23
  store i32 1, ptr %24, align 4
  br label %25

25:                                               ; preds = %19, %11
  br label %26

26:                                               ; preds = %25
  %27 = load i32, ptr %5, align 4
  %28 = add nsw i32 %27, 1
  br label %6, !llvm.loop !9

29:                                               ; preds = %6
  %30 = load i32, ptr %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [4 x i8], ptr @class, i64 %31
  %33 = load i32, ptr %32, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %34
  %36 = load i32, ptr %35, align 4
  %37 = add nsw i32 %36, -1
  %38 = load i32, ptr %3, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [4 x i8], ptr @class, i64 %39
  %41 = load i32, ptr %40, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %42
  store i32 %37, ptr %43, align 4
  %44 = load i32, ptr %4, align 4
  br label %45

45:                                               ; preds = %55, %29
  %storemerge1 = phi i32 [ %44, %29 ], [ %57, %55 ]
  store i32 %storemerge1, ptr %5, align 4
  %46 = icmp slt i32 %storemerge1, 512
  br i1 %46, label %47, label %58

47:                                               ; preds = %45
  %48 = load i32, ptr %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %49
  %51 = load i32, ptr %50, align 4
  %.not3 = icmp eq i32 %51, 0
  br i1 %.not3, label %52, label %54

52:                                               ; preds = %47
  %53 = load i32, ptr %5, align 4
  br label %59

54:                                               ; preds = %47
  br label %55

55:                                               ; preds = %54
  %56 = load i32, ptr %5, align 4
  %57 = add nsw i32 %56, 1
  br label %45, !llvm.loop !10

58:                                               ; preds = %45
  br label %59

59:                                               ; preds = %58, %52
  %storemerge2 = phi i32 [ 0, %58 ], [ %53, %52 ]
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

6:                                                ; preds = %26, %2
  %storemerge = phi i32 [ 0, %2 ], [ %28, %26 ]
  store i32 %storemerge, ptr %5, align 4
  %7 = load i32, ptr %3, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %8
  %10 = load i32, ptr %9, align 4
  %.not = icmp sgt i32 %storemerge, %10
  br i1 %.not, label %29, label %11

11:                                               ; preds = %6
  %12 = load i32, ptr %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [2048 x i8], ptr @p, i64 %13
  %15 = load i32, ptr %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [4 x i8], ptr %14, i64 %16
  %18 = load i32, ptr %17, align 4
  %.not1 = icmp eq i32 %18, 0
  br i1 %.not1, label %25, label %19

19:                                               ; preds = %11
  %20 = load i32, ptr %4, align 4
  %21 = load i32, ptr %5, align 4
  %22 = add nsw i32 %20, %21
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %23
  store i32 0, ptr %24, align 4
  br label %25

25:                                               ; preds = %19, %11
  br label %26

26:                                               ; preds = %25
  %27 = load i32, ptr %5, align 4
  %28 = add nsw i32 %27, 1
  br label %6, !llvm.loop !11

29:                                               ; preds = %6
  %30 = load i32, ptr %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [4 x i8], ptr @class, i64 %31
  %33 = load i32, ptr %32, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %34
  %36 = load i32, ptr %35, align 4
  %37 = add nsw i32 %36, 1
  %38 = load i32, ptr %3, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [4 x i8], ptr @class, i64 %39
  %41 = load i32, ptr %40, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %42
  store i32 %37, ptr %43, align 4
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

7:                                                ; preds = %36, %1
  %storemerge = phi i32 [ 0, %1 ], [ %38, %36 ]
  store i32 %storemerge, ptr %3, align 4
  %8 = icmp slt i32 %storemerge, 13
  br i1 %8, label %9, label %39

9:                                                ; preds = %7
  %10 = load i32, ptr %3, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [4 x i8], ptr @class, i64 %11
  %13 = load i32, ptr %12, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %14
  %16 = load i32, ptr %15, align 4
  %.not = icmp eq i32 %16, 0
  br i1 %.not, label %35, label %17

17:                                               ; preds = %9
  %18 = load i32, ptr %3, align 4
  %19 = load i32, ptr %2, align 4
  %20 = call i32 @Fit(i32 noundef %18, i32 noundef %19)
  %.not2 = icmp eq i32 %20, 0
  br i1 %.not2, label %34, label %21

21:                                               ; preds = %17
  %22 = load i32, ptr %3, align 4
  %23 = load i32, ptr %2, align 4
  %24 = call i32 @Place(i32 noundef %22, i32 noundef %23)
  store i32 %24, ptr %4, align 4
  %25 = call i32 @Trial(i32 noundef %24)
  %.not3 = icmp eq i32 %25, 0
  br i1 %.not3, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, ptr %4, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26, %21
  br label %40

30:                                               ; preds = %26
  %31 = load i32, ptr %3, align 4
  %32 = load i32, ptr %2, align 4
  call void @Remove(i32 noundef %31, i32 noundef %32)
  br label %33

33:                                               ; preds = %30
  br label %34

34:                                               ; preds = %33, %17
  br label %35

35:                                               ; preds = %34, %9
  br label %36

36:                                               ; preds = %35
  %37 = load i32, ptr %3, align 4
  %38 = add nsw i32 %37, 1
  br label %7, !llvm.loop !12

39:                                               ; preds = %7
  br label %40

40:                                               ; preds = %39, %29
  %storemerge1 = phi i32 [ 0, %39 ], [ 1, %29 ]
  ret i32 %storemerge1
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Puzzle() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  br label %5

5:                                                ; preds = %11, %0
  %storemerge = phi i32 [ 0, %0 ], [ %13, %11 ]
  store i32 %storemerge, ptr %4, align 4
  %6 = icmp slt i32 %storemerge, 512
  br i1 %6, label %7, label %14

7:                                                ; preds = %5
  %8 = load i32, ptr %4, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %9
  store i32 1, ptr %10, align 4
  br label %11

11:                                               ; preds = %7
  %12 = load i32, ptr %4, align 4
  %13 = add nsw i32 %12, 1
  br label %5, !llvm.loop !13

14:                                               ; preds = %5
  br label %15

15:                                               ; preds = %41, %14
  %storemerge1 = phi i32 [ 1, %14 ], [ %43, %41 ]
  store i32 %storemerge1, ptr %1, align 4
  %16 = icmp slt i32 %storemerge1, 6
  br i1 %16, label %17, label %44

17:                                               ; preds = %15
  br label %18

18:                                               ; preds = %37, %17
  %storemerge47 = phi i32 [ 1, %17 ], [ %39, %37 ]
  store i32 %storemerge47, ptr %2, align 4
  %19 = icmp slt i32 %storemerge47, 6
  br i1 %19, label %20, label %40

20:                                               ; preds = %18
  br label %21

21:                                               ; preds = %33, %20
  %storemerge48 = phi i32 [ 1, %20 ], [ %35, %33 ]
  store i32 %storemerge48, ptr %3, align 4
  %22 = icmp slt i32 %storemerge48, 6
  br i1 %22, label %23, label %36

23:                                               ; preds = %21
  %24 = load i32, ptr %1, align 4
  %25 = load i32, ptr %2, align 4
  %26 = load i32, ptr %3, align 4
  %27 = shl i32 %26, 6
  %28 = shl i32 %25, 3
  %29 = add i32 %27, %28
  %30 = add nsw i32 %24, %29
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %31
  store i32 0, ptr %32, align 4
  br label %33

33:                                               ; preds = %23
  %34 = load i32, ptr %3, align 4
  %35 = add nsw i32 %34, 1
  br label %21, !llvm.loop !14

36:                                               ; preds = %21
  br label %37

37:                                               ; preds = %36
  %38 = load i32, ptr %2, align 4
  %39 = add nsw i32 %38, 1
  br label %18, !llvm.loop !15

40:                                               ; preds = %18
  br label %41

41:                                               ; preds = %40
  %42 = load i32, ptr %1, align 4
  %43 = add nsw i32 %42, 1
  br label %15, !llvm.loop !16

44:                                               ; preds = %15
  br label %45

45:                                               ; preds = %61, %44
  %storemerge2 = phi i32 [ 0, %44 ], [ %63, %61 ]
  store i32 %storemerge2, ptr %1, align 4
  %46 = icmp slt i32 %storemerge2, 13
  br i1 %46, label %47, label %64

47:                                               ; preds = %45
  br label %48

48:                                               ; preds = %57, %47
  %storemerge46 = phi i32 [ 0, %47 ], [ %59, %57 ]
  store i32 %storemerge46, ptr %4, align 4
  %49 = icmp slt i32 %storemerge46, 512
  br i1 %49, label %50, label %60

50:                                               ; preds = %48
  %51 = load i32, ptr %1, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [2048 x i8], ptr @p, i64 %52
  %54 = load i32, ptr %4, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [4 x i8], ptr %53, i64 %55
  store i32 0, ptr %56, align 4
  br label %57

57:                                               ; preds = %50
  %58 = load i32, ptr %4, align 4
  %59 = add nsw i32 %58, 1
  br label %48, !llvm.loop !17

60:                                               ; preds = %48
  br label %61

61:                                               ; preds = %60
  %62 = load i32, ptr %1, align 4
  %63 = add nsw i32 %62, 1
  br label %45, !llvm.loop !18

64:                                               ; preds = %45
  br label %65

65:                                               ; preds = %91, %64
  %storemerge3 = phi i32 [ 0, %64 ], [ %93, %91 ]
  store i32 %storemerge3, ptr %1, align 4
  %66 = icmp slt i32 %storemerge3, 4
  br i1 %66, label %67, label %94

67:                                               ; preds = %65
  br label %68

68:                                               ; preds = %87, %67
  %storemerge44 = phi i32 [ 0, %67 ], [ %89, %87 ]
  store i32 %storemerge44, ptr %2, align 4
  %69 = icmp slt i32 %storemerge44, 2
  br i1 %69, label %70, label %90

70:                                               ; preds = %68
  br label %71

71:                                               ; preds = %83, %70
  %storemerge45 = phi i32 [ 0, %70 ], [ %85, %83 ]
  store i32 %storemerge45, ptr %3, align 4
  %72 = icmp slt i32 %storemerge45, 1
  br i1 %72, label %73, label %86

73:                                               ; preds = %71
  %74 = load i32, ptr %1, align 4
  %75 = load i32, ptr %2, align 4
  %76 = load i32, ptr %3, align 4
  %77 = shl i32 %76, 6
  %78 = shl i32 %75, 3
  %79 = add i32 %77, %78
  %80 = add nsw i32 %74, %79
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [4 x i8], ptr @p, i64 %81
  store i32 1, ptr %82, align 4
  br label %83

83:                                               ; preds = %73
  %84 = load i32, ptr %3, align 4
  %85 = add nsw i32 %84, 1
  br label %71, !llvm.loop !19

86:                                               ; preds = %71
  br label %87

87:                                               ; preds = %86
  %88 = load i32, ptr %2, align 4
  %89 = add nsw i32 %88, 1
  br label %68, !llvm.loop !20

90:                                               ; preds = %68
  br label %91

91:                                               ; preds = %90
  %92 = load i32, ptr %1, align 4
  %93 = add nsw i32 %92, 1
  br label %65, !llvm.loop !21

94:                                               ; preds = %65
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %95

95:                                               ; preds = %121, %94
  %storemerge4 = phi i32 [ 0, %94 ], [ %123, %121 ]
  store i32 %storemerge4, ptr %1, align 4
  %96 = icmp slt i32 %storemerge4, 2
  br i1 %96, label %97, label %124

97:                                               ; preds = %95
  br label %98

98:                                               ; preds = %117, %97
  %storemerge42 = phi i32 [ 0, %97 ], [ %119, %117 ]
  store i32 %storemerge42, ptr %2, align 4
  %99 = icmp slt i32 %storemerge42, 1
  br i1 %99, label %100, label %120

100:                                              ; preds = %98
  br label %101

101:                                              ; preds = %113, %100
  %storemerge43 = phi i32 [ 0, %100 ], [ %115, %113 ]
  store i32 %storemerge43, ptr %3, align 4
  %102 = icmp slt i32 %storemerge43, 4
  br i1 %102, label %103, label %116

103:                                              ; preds = %101
  %104 = load i32, ptr %1, align 4
  %105 = load i32, ptr %2, align 4
  %106 = load i32, ptr %3, align 4
  %107 = shl i32 %106, 6
  %108 = shl i32 %105, 3
  %109 = add i32 %107, %108
  %110 = add nsw i32 %104, %109
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %111
  store i32 1, ptr %112, align 4
  br label %113

113:                                              ; preds = %103
  %114 = load i32, ptr %3, align 4
  %115 = add nsw i32 %114, 1
  br label %101, !llvm.loop !22

116:                                              ; preds = %101
  br label %117

117:                                              ; preds = %116
  %118 = load i32, ptr %2, align 4
  %119 = add nsw i32 %118, 1
  br label %98, !llvm.loop !23

120:                                              ; preds = %98
  br label %121

121:                                              ; preds = %120
  %122 = load i32, ptr %1, align 4
  %123 = add nsw i32 %122, 1
  br label %95, !llvm.loop !24

124:                                              ; preds = %95
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %125

125:                                              ; preds = %151, %124
  %storemerge5 = phi i32 [ 0, %124 ], [ %153, %151 ]
  store i32 %storemerge5, ptr %1, align 4
  %126 = icmp slt i32 %storemerge5, 1
  br i1 %126, label %127, label %154

127:                                              ; preds = %125
  br label %128

128:                                              ; preds = %147, %127
  %storemerge40 = phi i32 [ 0, %127 ], [ %149, %147 ]
  store i32 %storemerge40, ptr %2, align 4
  %129 = icmp slt i32 %storemerge40, 4
  br i1 %129, label %130, label %150

130:                                              ; preds = %128
  br label %131

131:                                              ; preds = %143, %130
  %storemerge41 = phi i32 [ 0, %130 ], [ %145, %143 ]
  store i32 %storemerge41, ptr %3, align 4
  %132 = icmp slt i32 %storemerge41, 2
  br i1 %132, label %133, label %146

133:                                              ; preds = %131
  %134 = load i32, ptr %1, align 4
  %135 = load i32, ptr %2, align 4
  %136 = load i32, ptr %3, align 4
  %137 = shl i32 %136, 6
  %138 = shl i32 %135, 3
  %139 = add i32 %137, %138
  %140 = add nsw i32 %134, %139
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %141
  store i32 1, ptr %142, align 4
  br label %143

143:                                              ; preds = %133
  %144 = load i32, ptr %3, align 4
  %145 = add nsw i32 %144, 1
  br label %131, !llvm.loop !25

146:                                              ; preds = %131
  br label %147

147:                                              ; preds = %146
  %148 = load i32, ptr %2, align 4
  %149 = add nsw i32 %148, 1
  br label %128, !llvm.loop !26

150:                                              ; preds = %128
  br label %151

151:                                              ; preds = %150
  %152 = load i32, ptr %1, align 4
  %153 = add nsw i32 %152, 1
  br label %125, !llvm.loop !27

154:                                              ; preds = %125
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %155

155:                                              ; preds = %181, %154
  %storemerge6 = phi i32 [ 0, %154 ], [ %183, %181 ]
  store i32 %storemerge6, ptr %1, align 4
  %156 = icmp slt i32 %storemerge6, 2
  br i1 %156, label %157, label %184

157:                                              ; preds = %155
  br label %158

158:                                              ; preds = %177, %157
  %storemerge38 = phi i32 [ 0, %157 ], [ %179, %177 ]
  store i32 %storemerge38, ptr %2, align 4
  %159 = icmp slt i32 %storemerge38, 4
  br i1 %159, label %160, label %180

160:                                              ; preds = %158
  br label %161

161:                                              ; preds = %173, %160
  %storemerge39 = phi i32 [ 0, %160 ], [ %175, %173 ]
  store i32 %storemerge39, ptr %3, align 4
  %162 = icmp slt i32 %storemerge39, 1
  br i1 %162, label %163, label %176

163:                                              ; preds = %161
  %164 = load i32, ptr %1, align 4
  %165 = load i32, ptr %2, align 4
  %166 = load i32, ptr %3, align 4
  %167 = shl i32 %166, 6
  %168 = shl i32 %165, 3
  %169 = add i32 %167, %168
  %170 = add nsw i32 %164, %169
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %171
  store i32 1, ptr %172, align 4
  br label %173

173:                                              ; preds = %163
  %174 = load i32, ptr %3, align 4
  %175 = add nsw i32 %174, 1
  br label %161, !llvm.loop !28

176:                                              ; preds = %161
  br label %177

177:                                              ; preds = %176
  %178 = load i32, ptr %2, align 4
  %179 = add nsw i32 %178, 1
  br label %158, !llvm.loop !29

180:                                              ; preds = %158
  br label %181

181:                                              ; preds = %180
  %182 = load i32, ptr %1, align 4
  %183 = add nsw i32 %182, 1
  br label %155, !llvm.loop !30

184:                                              ; preds = %155
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %185

185:                                              ; preds = %211, %184
  %storemerge7 = phi i32 [ 0, %184 ], [ %213, %211 ]
  store i32 %storemerge7, ptr %1, align 4
  %186 = icmp slt i32 %storemerge7, 4
  br i1 %186, label %187, label %214

187:                                              ; preds = %185
  br label %188

188:                                              ; preds = %207, %187
  %storemerge36 = phi i32 [ 0, %187 ], [ %209, %207 ]
  store i32 %storemerge36, ptr %2, align 4
  %189 = icmp slt i32 %storemerge36, 1
  br i1 %189, label %190, label %210

190:                                              ; preds = %188
  br label %191

191:                                              ; preds = %203, %190
  %storemerge37 = phi i32 [ 0, %190 ], [ %205, %203 ]
  store i32 %storemerge37, ptr %3, align 4
  %192 = icmp slt i32 %storemerge37, 2
  br i1 %192, label %193, label %206

193:                                              ; preds = %191
  %194 = load i32, ptr %1, align 4
  %195 = load i32, ptr %2, align 4
  %196 = load i32, ptr %3, align 4
  %197 = shl i32 %196, 6
  %198 = shl i32 %195, 3
  %199 = add i32 %197, %198
  %200 = add nsw i32 %194, %199
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %201
  store i32 1, ptr %202, align 4
  br label %203

203:                                              ; preds = %193
  %204 = load i32, ptr %3, align 4
  %205 = add nsw i32 %204, 1
  br label %191, !llvm.loop !31

206:                                              ; preds = %191
  br label %207

207:                                              ; preds = %206
  %208 = load i32, ptr %2, align 4
  %209 = add nsw i32 %208, 1
  br label %188, !llvm.loop !32

210:                                              ; preds = %188
  br label %211

211:                                              ; preds = %210
  %212 = load i32, ptr %1, align 4
  %213 = add nsw i32 %212, 1
  br label %185, !llvm.loop !33

214:                                              ; preds = %185
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %215

215:                                              ; preds = %241, %214
  %storemerge8 = phi i32 [ 0, %214 ], [ %243, %241 ]
  store i32 %storemerge8, ptr %1, align 4
  %216 = icmp slt i32 %storemerge8, 1
  br i1 %216, label %217, label %244

217:                                              ; preds = %215
  br label %218

218:                                              ; preds = %237, %217
  %storemerge34 = phi i32 [ 0, %217 ], [ %239, %237 ]
  store i32 %storemerge34, ptr %2, align 4
  %219 = icmp slt i32 %storemerge34, 2
  br i1 %219, label %220, label %240

220:                                              ; preds = %218
  br label %221

221:                                              ; preds = %233, %220
  %storemerge35 = phi i32 [ 0, %220 ], [ %235, %233 ]
  store i32 %storemerge35, ptr %3, align 4
  %222 = icmp slt i32 %storemerge35, 4
  br i1 %222, label %223, label %236

223:                                              ; preds = %221
  %224 = load i32, ptr %1, align 4
  %225 = load i32, ptr %2, align 4
  %226 = load i32, ptr %3, align 4
  %227 = shl i32 %226, 6
  %228 = shl i32 %225, 3
  %229 = add i32 %227, %228
  %230 = add nsw i32 %224, %229
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %231
  store i32 1, ptr %232, align 4
  br label %233

233:                                              ; preds = %223
  %234 = load i32, ptr %3, align 4
  %235 = add nsw i32 %234, 1
  br label %221, !llvm.loop !34

236:                                              ; preds = %221
  br label %237

237:                                              ; preds = %236
  %238 = load i32, ptr %2, align 4
  %239 = add nsw i32 %238, 1
  br label %218, !llvm.loop !35

240:                                              ; preds = %218
  br label %241

241:                                              ; preds = %240
  %242 = load i32, ptr %1, align 4
  %243 = add nsw i32 %242, 1
  br label %215, !llvm.loop !36

244:                                              ; preds = %215
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %245

245:                                              ; preds = %271, %244
  %storemerge9 = phi i32 [ 0, %244 ], [ %273, %271 ]
  store i32 %storemerge9, ptr %1, align 4
  %246 = icmp slt i32 %storemerge9, 3
  br i1 %246, label %247, label %274

247:                                              ; preds = %245
  br label %248

248:                                              ; preds = %267, %247
  %storemerge32 = phi i32 [ 0, %247 ], [ %269, %267 ]
  store i32 %storemerge32, ptr %2, align 4
  %249 = icmp slt i32 %storemerge32, 1
  br i1 %249, label %250, label %270

250:                                              ; preds = %248
  br label %251

251:                                              ; preds = %263, %250
  %storemerge33 = phi i32 [ 0, %250 ], [ %265, %263 ]
  store i32 %storemerge33, ptr %3, align 4
  %252 = icmp slt i32 %storemerge33, 1
  br i1 %252, label %253, label %266

253:                                              ; preds = %251
  %254 = load i32, ptr %1, align 4
  %255 = load i32, ptr %2, align 4
  %256 = load i32, ptr %3, align 4
  %257 = shl i32 %256, 6
  %258 = shl i32 %255, 3
  %259 = add i32 %257, %258
  %260 = add nsw i32 %254, %259
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %261
  store i32 1, ptr %262, align 4
  br label %263

263:                                              ; preds = %253
  %264 = load i32, ptr %3, align 4
  %265 = add nsw i32 %264, 1
  br label %251, !llvm.loop !37

266:                                              ; preds = %251
  br label %267

267:                                              ; preds = %266
  %268 = load i32, ptr %2, align 4
  %269 = add nsw i32 %268, 1
  br label %248, !llvm.loop !38

270:                                              ; preds = %248
  br label %271

271:                                              ; preds = %270
  %272 = load i32, ptr %1, align 4
  %273 = add nsw i32 %272, 1
  br label %245, !llvm.loop !39

274:                                              ; preds = %245
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %275

275:                                              ; preds = %301, %274
  %storemerge10 = phi i32 [ 0, %274 ], [ %303, %301 ]
  store i32 %storemerge10, ptr %1, align 4
  %276 = icmp slt i32 %storemerge10, 1
  br i1 %276, label %277, label %304

277:                                              ; preds = %275
  br label %278

278:                                              ; preds = %297, %277
  %storemerge30 = phi i32 [ 0, %277 ], [ %299, %297 ]
  store i32 %storemerge30, ptr %2, align 4
  %279 = icmp slt i32 %storemerge30, 3
  br i1 %279, label %280, label %300

280:                                              ; preds = %278
  br label %281

281:                                              ; preds = %293, %280
  %storemerge31 = phi i32 [ 0, %280 ], [ %295, %293 ]
  store i32 %storemerge31, ptr %3, align 4
  %282 = icmp slt i32 %storemerge31, 1
  br i1 %282, label %283, label %296

283:                                              ; preds = %281
  %284 = load i32, ptr %1, align 4
  %285 = load i32, ptr %2, align 4
  %286 = load i32, ptr %3, align 4
  %287 = shl i32 %286, 6
  %288 = shl i32 %285, 3
  %289 = add i32 %287, %288
  %290 = add nsw i32 %284, %289
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %291
  store i32 1, ptr %292, align 4
  br label %293

293:                                              ; preds = %283
  %294 = load i32, ptr %3, align 4
  %295 = add nsw i32 %294, 1
  br label %281, !llvm.loop !40

296:                                              ; preds = %281
  br label %297

297:                                              ; preds = %296
  %298 = load i32, ptr %2, align 4
  %299 = add nsw i32 %298, 1
  br label %278, !llvm.loop !41

300:                                              ; preds = %278
  br label %301

301:                                              ; preds = %300
  %302 = load i32, ptr %1, align 4
  %303 = add nsw i32 %302, 1
  br label %275, !llvm.loop !42

304:                                              ; preds = %275
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %305

305:                                              ; preds = %331, %304
  %storemerge11 = phi i32 [ 0, %304 ], [ %333, %331 ]
  store i32 %storemerge11, ptr %1, align 4
  %306 = icmp slt i32 %storemerge11, 1
  br i1 %306, label %307, label %334

307:                                              ; preds = %305
  br label %308

308:                                              ; preds = %327, %307
  %storemerge28 = phi i32 [ 0, %307 ], [ %329, %327 ]
  store i32 %storemerge28, ptr %2, align 4
  %309 = icmp slt i32 %storemerge28, 1
  br i1 %309, label %310, label %330

310:                                              ; preds = %308
  br label %311

311:                                              ; preds = %323, %310
  %storemerge29 = phi i32 [ 0, %310 ], [ %325, %323 ]
  store i32 %storemerge29, ptr %3, align 4
  %312 = icmp slt i32 %storemerge29, 3
  br i1 %312, label %313, label %326

313:                                              ; preds = %311
  %314 = load i32, ptr %1, align 4
  %315 = load i32, ptr %2, align 4
  %316 = load i32, ptr %3, align 4
  %317 = shl i32 %316, 6
  %318 = shl i32 %315, 3
  %319 = add i32 %317, %318
  %320 = add nsw i32 %314, %319
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %321
  store i32 1, ptr %322, align 4
  br label %323

323:                                              ; preds = %313
  %324 = load i32, ptr %3, align 4
  %325 = add nsw i32 %324, 1
  br label %311, !llvm.loop !43

326:                                              ; preds = %311
  br label %327

327:                                              ; preds = %326
  %328 = load i32, ptr %2, align 4
  %329 = add nsw i32 %328, 1
  br label %308, !llvm.loop !44

330:                                              ; preds = %308
  br label %331

331:                                              ; preds = %330
  %332 = load i32, ptr %1, align 4
  %333 = add nsw i32 %332, 1
  br label %305, !llvm.loop !45

334:                                              ; preds = %305
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %335

335:                                              ; preds = %361, %334
  %storemerge12 = phi i32 [ 0, %334 ], [ %363, %361 ]
  store i32 %storemerge12, ptr %1, align 4
  %336 = icmp slt i32 %storemerge12, 2
  br i1 %336, label %337, label %364

337:                                              ; preds = %335
  br label %338

338:                                              ; preds = %357, %337
  %storemerge26 = phi i32 [ 0, %337 ], [ %359, %357 ]
  store i32 %storemerge26, ptr %2, align 4
  %339 = icmp slt i32 %storemerge26, 2
  br i1 %339, label %340, label %360

340:                                              ; preds = %338
  br label %341

341:                                              ; preds = %353, %340
  %storemerge27 = phi i32 [ 0, %340 ], [ %355, %353 ]
  store i32 %storemerge27, ptr %3, align 4
  %342 = icmp slt i32 %storemerge27, 1
  br i1 %342, label %343, label %356

343:                                              ; preds = %341
  %344 = load i32, ptr %1, align 4
  %345 = load i32, ptr %2, align 4
  %346 = load i32, ptr %3, align 4
  %347 = shl i32 %346, 6
  %348 = shl i32 %345, 3
  %349 = add i32 %347, %348
  %350 = add nsw i32 %344, %349
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %351
  store i32 1, ptr %352, align 4
  br label %353

353:                                              ; preds = %343
  %354 = load i32, ptr %3, align 4
  %355 = add nsw i32 %354, 1
  br label %341, !llvm.loop !46

356:                                              ; preds = %341
  br label %357

357:                                              ; preds = %356
  %358 = load i32, ptr %2, align 4
  %359 = add nsw i32 %358, 1
  br label %338, !llvm.loop !47

360:                                              ; preds = %338
  br label %361

361:                                              ; preds = %360
  %362 = load i32, ptr %1, align 4
  %363 = add nsw i32 %362, 1
  br label %335, !llvm.loop !48

364:                                              ; preds = %335
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %365

365:                                              ; preds = %391, %364
  %storemerge13 = phi i32 [ 0, %364 ], [ %393, %391 ]
  store i32 %storemerge13, ptr %1, align 4
  %366 = icmp slt i32 %storemerge13, 2
  br i1 %366, label %367, label %394

367:                                              ; preds = %365
  br label %368

368:                                              ; preds = %387, %367
  %storemerge24 = phi i32 [ 0, %367 ], [ %389, %387 ]
  store i32 %storemerge24, ptr %2, align 4
  %369 = icmp slt i32 %storemerge24, 1
  br i1 %369, label %370, label %390

370:                                              ; preds = %368
  br label %371

371:                                              ; preds = %383, %370
  %storemerge25 = phi i32 [ 0, %370 ], [ %385, %383 ]
  store i32 %storemerge25, ptr %3, align 4
  %372 = icmp slt i32 %storemerge25, 2
  br i1 %372, label %373, label %386

373:                                              ; preds = %371
  %374 = load i32, ptr %1, align 4
  %375 = load i32, ptr %2, align 4
  %376 = load i32, ptr %3, align 4
  %377 = shl i32 %376, 6
  %378 = shl i32 %375, 3
  %379 = add i32 %377, %378
  %380 = add nsw i32 %374, %379
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %381
  store i32 1, ptr %382, align 4
  br label %383

383:                                              ; preds = %373
  %384 = load i32, ptr %3, align 4
  %385 = add nsw i32 %384, 1
  br label %371, !llvm.loop !49

386:                                              ; preds = %371
  br label %387

387:                                              ; preds = %386
  %388 = load i32, ptr %2, align 4
  %389 = add nsw i32 %388, 1
  br label %368, !llvm.loop !50

390:                                              ; preds = %368
  br label %391

391:                                              ; preds = %390
  %392 = load i32, ptr %1, align 4
  %393 = add nsw i32 %392, 1
  br label %365, !llvm.loop !51

394:                                              ; preds = %365
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %395

395:                                              ; preds = %421, %394
  %storemerge14 = phi i32 [ 0, %394 ], [ %423, %421 ]
  store i32 %storemerge14, ptr %1, align 4
  %396 = icmp slt i32 %storemerge14, 1
  br i1 %396, label %397, label %424

397:                                              ; preds = %395
  br label %398

398:                                              ; preds = %417, %397
  %storemerge22 = phi i32 [ 0, %397 ], [ %419, %417 ]
  store i32 %storemerge22, ptr %2, align 4
  %399 = icmp slt i32 %storemerge22, 2
  br i1 %399, label %400, label %420

400:                                              ; preds = %398
  br label %401

401:                                              ; preds = %413, %400
  %storemerge23 = phi i32 [ 0, %400 ], [ %415, %413 ]
  store i32 %storemerge23, ptr %3, align 4
  %402 = icmp slt i32 %storemerge23, 2
  br i1 %402, label %403, label %416

403:                                              ; preds = %401
  %404 = load i32, ptr %1, align 4
  %405 = load i32, ptr %2, align 4
  %406 = load i32, ptr %3, align 4
  %407 = shl i32 %406, 6
  %408 = shl i32 %405, 3
  %409 = add i32 %407, %408
  %410 = add nsw i32 %404, %409
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %411
  store i32 1, ptr %412, align 4
  br label %413

413:                                              ; preds = %403
  %414 = load i32, ptr %3, align 4
  %415 = add nsw i32 %414, 1
  br label %401, !llvm.loop !52

416:                                              ; preds = %401
  br label %417

417:                                              ; preds = %416
  %418 = load i32, ptr %2, align 4
  %419 = add nsw i32 %418, 1
  br label %398, !llvm.loop !53

420:                                              ; preds = %398
  br label %421

421:                                              ; preds = %420
  %422 = load i32, ptr %1, align 4
  %423 = add nsw i32 %422, 1
  br label %395, !llvm.loop !54

424:                                              ; preds = %395
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %425

425:                                              ; preds = %451, %424
  %storemerge15 = phi i32 [ 0, %424 ], [ %453, %451 ]
  store i32 %storemerge15, ptr %1, align 4
  %426 = icmp slt i32 %storemerge15, 2
  br i1 %426, label %427, label %454

427:                                              ; preds = %425
  br label %428

428:                                              ; preds = %447, %427
  %storemerge20 = phi i32 [ 0, %427 ], [ %449, %447 ]
  store i32 %storemerge20, ptr %2, align 4
  %429 = icmp slt i32 %storemerge20, 2
  br i1 %429, label %430, label %450

430:                                              ; preds = %428
  br label %431

431:                                              ; preds = %443, %430
  %storemerge21 = phi i32 [ 0, %430 ], [ %445, %443 ]
  store i32 %storemerge21, ptr %3, align 4
  %432 = icmp slt i32 %storemerge21, 2
  br i1 %432, label %433, label %446

433:                                              ; preds = %431
  %434 = load i32, ptr %1, align 4
  %435 = load i32, ptr %2, align 4
  %436 = load i32, ptr %3, align 4
  %437 = shl i32 %436, 6
  %438 = shl i32 %435, 3
  %439 = add i32 %437, %438
  %440 = add nsw i32 %434, %439
  %441 = sext i32 %440 to i64
  %442 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %441
  store i32 1, ptr %442, align 4
  br label %443

443:                                              ; preds = %433
  %444 = load i32, ptr %3, align 4
  %445 = add nsw i32 %444, 1
  br label %431, !llvm.loop !55

446:                                              ; preds = %431
  br label %447

447:                                              ; preds = %446
  %448 = load i32, ptr %2, align 4
  %449 = add nsw i32 %448, 1
  br label %428, !llvm.loop !56

450:                                              ; preds = %428
  br label %451

451:                                              ; preds = %450
  %452 = load i32, ptr %1, align 4
  %453 = add nsw i32 %452, 1
  br label %425, !llvm.loop !57

454:                                              ; preds = %425
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 73, ptr %4, align 4
  store i32 0, ptr @kount, align 4
  %455 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %455, 0
  br i1 %.not, label %459, label %456

456:                                              ; preds = %454
  %457 = load i32, ptr %4, align 4
  %458 = call i32 @Place(i32 noundef 0, i32 noundef %457)
  store i32 %458, ptr @n, align 4
  br label %460

459:                                              ; preds = %454
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %460

460:                                              ; preds = %459, %456
  %461 = load i32, ptr @n, align 4
  %462 = call i32 @Trial(i32 noundef %461)
  %.not16 = icmp eq i32 %462, 0
  br i1 %.not16, label %463, label %464

463:                                              ; preds = %460
  %puts17 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %468

464:                                              ; preds = %460
  %465 = load i32, ptr @kount, align 4
  %.not18 = icmp eq i32 %465, 2005
  br i1 %.not18, label %467, label %466

466:                                              ; preds = %464
  %puts19 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %467

467:                                              ; preds = %466, %464
  br label %468

468:                                              ; preds = %467, %463
  %469 = load i32, ptr @n, align 4
  %470 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %469) #3
  %471 = load i32, ptr @kount, align 4
  %472 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %471) #3
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
