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

6:                                                ; preds = %27, %2
  %storemerge = phi i32 [ 0, %2 ], [ %29, %27 ]
  store i32 %storemerge, ptr %5, align 4
  %7 = load i32, ptr %3, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %8
  %10 = load i32, ptr %9, align 4
  %.not = icmp sgt i32 %storemerge, %10
  br i1 %.not, label %30, label %11

11:                                               ; preds = %6
  %12 = load i32, ptr %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [2048 x i8], ptr @p, i64 %13
  %15 = load i32, ptr %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [4 x i8], ptr %14, i64 %16
  %18 = load i32, ptr %17, align 4
  %.not2 = icmp eq i32 %18, 0
  br i1 %.not2, label %27, label %19

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
  br label %31

27:                                               ; preds = %11, %19
  %28 = load i32, ptr %5, align 4
  %29 = add nsw i32 %28, 1
  br label %6, !llvm.loop !7

30:                                               ; preds = %6
  br label %31

31:                                               ; preds = %30, %26
  %storemerge1 = phi i32 [ 1, %30 ], [ 0, %26 ]
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

25:                                               ; preds = %11, %19
  %26 = load i32, ptr %5, align 4
  %27 = add nsw i32 %26, 1
  br label %6, !llvm.loop !9

28:                                               ; preds = %6
  %29 = load i32, ptr %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [4 x i8], ptr @class, i64 %30
  %32 = load i32, ptr %31, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %33
  %35 = load i32, ptr %34, align 4
  %36 = add nsw i32 %35, -1
  %37 = load i32, ptr %3, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [4 x i8], ptr @class, i64 %38
  %40 = load i32, ptr %39, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %41
  store i32 %36, ptr %42, align 4
  %43 = load i32, ptr %4, align 4
  br label %44

44:                                               ; preds = %53, %28
  %storemerge1 = phi i32 [ %43, %28 ], [ %55, %53 ]
  store i32 %storemerge1, ptr %5, align 4
  %45 = icmp slt i32 %storemerge1, 512
  br i1 %45, label %46, label %56

46:                                               ; preds = %44
  %47 = load i32, ptr %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %48
  %50 = load i32, ptr %49, align 4
  %.not3 = icmp eq i32 %50, 0
  br i1 %.not3, label %51, label %53

51:                                               ; preds = %46
  %52 = load i32, ptr %5, align 4
  br label %57

53:                                               ; preds = %46
  %54 = load i32, ptr %5, align 4
  %55 = add nsw i32 %54, 1
  br label %44, !llvm.loop !10

56:                                               ; preds = %44
  br label %57

57:                                               ; preds = %56, %51
  %storemerge2 = phi i32 [ 0, %56 ], [ %52, %51 ]
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

25:                                               ; preds = %11, %19
  %26 = load i32, ptr %5, align 4
  %27 = add nsw i32 %26, 1
  br label %6, !llvm.loop !11

28:                                               ; preds = %6
  %29 = load i32, ptr %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [4 x i8], ptr @class, i64 %30
  %32 = load i32, ptr %31, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %33
  %35 = load i32, ptr %34, align 4
  %36 = add nsw i32 %35, 1
  %37 = load i32, ptr %3, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [4 x i8], ptr @class, i64 %38
  %40 = load i32, ptr %39, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %41
  store i32 %36, ptr %42, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Trial(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %4 = load i32, ptr @kount, align 4
  %5 = add nsw i32 %4, 1
  store i32 %5, ptr @kount, align 4
  br label %6

6:                                                ; preds = %31, %1
  %storemerge = phi i32 [ 0, %1 ], [ %33, %31 ]
  store i32 %storemerge, ptr %3, align 4
  %7 = icmp slt i32 %storemerge, 13
  br i1 %7, label %8, label %34

8:                                                ; preds = %6
  %9 = load i32, ptr %3, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [4 x i8], ptr @class, i64 %10
  %12 = load i32, ptr %11, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %13
  %15 = load i32, ptr %14, align 4
  %.not = icmp eq i32 %15, 0
  br i1 %.not, label %31, label %16

16:                                               ; preds = %8
  %17 = load i32, ptr %3, align 4
  %18 = load i32, ptr %2, align 4
  %19 = call i32 @Fit(i32 noundef %17, i32 noundef %18)
  %.not3 = icmp eq i32 %19, 0
  br i1 %.not3, label %31, label %20

20:                                               ; preds = %16
  %21 = load i32, ptr %3, align 4
  %22 = load i32, ptr %2, align 4
  %23 = call i32 @Place(i32 noundef %21, i32 noundef %22)
  %24 = call i32 @Trial(i32 noundef %23)
  %25 = icmp ne i32 %24, 0
  %26 = icmp eq i32 %23, 0
  %or.cond = or i1 %25, %26
  br i1 %or.cond, label %27, label %28

27:                                               ; preds = %20
  br label %35

28:                                               ; preds = %20
  %29 = load i32, ptr %3, align 4
  %30 = load i32, ptr %2, align 4
  call void @Remove(i32 noundef %29, i32 noundef %30)
  br label %31

31:                                               ; preds = %8, %28, %16
  %32 = load i32, ptr %3, align 4
  %33 = add nsw i32 %32, 1
  br label %6, !llvm.loop !12

34:                                               ; preds = %6
  br label %35

35:                                               ; preds = %34, %27
  %storemerge2 = phi i32 [ 0, %34 ], [ 1, %27 ]
  ret i32 %storemerge2
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Puzzle() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  br label %5

5:                                                ; preds = %7, %0
  %storemerge = phi i32 [ 0, %0 ], [ %11, %7 ]
  store i32 %storemerge, ptr %4, align 4
  %6 = icmp slt i32 %storemerge, 512
  br i1 %6, label %7, label %12

7:                                                ; preds = %5
  %8 = load i32, ptr %4, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %9
  store i32 1, ptr %10, align 4
  %11 = add nsw i32 %8, 1
  br label %5, !llvm.loop !13

12:                                               ; preds = %5
  br label %13

13:                                               ; preds = %36, %12
  %storemerge1 = phi i32 [ 1, %12 ], [ %38, %36 ]
  store i32 %storemerge1, ptr %1, align 4
  %14 = icmp slt i32 %storemerge1, 6
  br i1 %14, label %15, label %39

15:                                               ; preds = %13
  br label %16

16:                                               ; preds = %33, %15
  %storemerge47 = phi i32 [ 1, %15 ], [ %35, %33 ]
  store i32 %storemerge47, ptr %2, align 4
  %17 = icmp slt i32 %storemerge47, 6
  br i1 %17, label %18, label %36

18:                                               ; preds = %16
  br label %19

19:                                               ; preds = %21, %18
  %storemerge48 = phi i32 [ 1, %18 ], [ %32, %21 ]
  store i32 %storemerge48, ptr %3, align 4
  %20 = icmp slt i32 %storemerge48, 6
  br i1 %20, label %21, label %33

21:                                               ; preds = %19
  %22 = load i32, ptr %1, align 4
  %23 = load i32, ptr %2, align 4
  %24 = load i32, ptr %3, align 4
  %25 = shl i32 %24, 6
  %26 = shl i32 %23, 3
  %27 = add i32 %25, %26
  %28 = add nsw i32 %22, %27
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %29
  store i32 0, ptr %30, align 4
  %31 = load i32, ptr %3, align 4
  %32 = add nsw i32 %31, 1
  br label %19, !llvm.loop !14

33:                                               ; preds = %19
  %34 = load i32, ptr %2, align 4
  %35 = add nsw i32 %34, 1
  br label %16, !llvm.loop !15

36:                                               ; preds = %16
  %37 = load i32, ptr %1, align 4
  %38 = add nsw i32 %37, 1
  br label %13, !llvm.loop !16

39:                                               ; preds = %13
  br label %40

40:                                               ; preds = %53, %39
  %storemerge2 = phi i32 [ 0, %39 ], [ %55, %53 ]
  store i32 %storemerge2, ptr %1, align 4
  %41 = icmp slt i32 %storemerge2, 13
  br i1 %41, label %42, label %56

42:                                               ; preds = %40
  br label %43

43:                                               ; preds = %45, %42
  %storemerge46 = phi i32 [ 0, %42 ], [ %52, %45 ]
  store i32 %storemerge46, ptr %4, align 4
  %44 = icmp slt i32 %storemerge46, 512
  br i1 %44, label %45, label %53

45:                                               ; preds = %43
  %46 = load i32, ptr %1, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [2048 x i8], ptr @p, i64 %47
  %49 = load i32, ptr %4, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [4 x i8], ptr %48, i64 %50
  store i32 0, ptr %51, align 4
  %52 = add nsw i32 %49, 1
  br label %43, !llvm.loop !17

53:                                               ; preds = %43
  %54 = load i32, ptr %1, align 4
  %55 = add nsw i32 %54, 1
  br label %40, !llvm.loop !18

56:                                               ; preds = %40
  br label %57

57:                                               ; preds = %80, %56
  %storemerge3 = phi i32 [ 0, %56 ], [ %82, %80 ]
  store i32 %storemerge3, ptr %1, align 4
  %58 = icmp slt i32 %storemerge3, 4
  br i1 %58, label %59, label %83

59:                                               ; preds = %57
  br label %60

60:                                               ; preds = %77, %59
  %storemerge44 = phi i32 [ 0, %59 ], [ %79, %77 ]
  store i32 %storemerge44, ptr %2, align 4
  %61 = icmp slt i32 %storemerge44, 2
  br i1 %61, label %62, label %80

62:                                               ; preds = %60
  br label %63

63:                                               ; preds = %65, %62
  %storemerge45 = phi i32 [ 0, %62 ], [ %76, %65 ]
  store i32 %storemerge45, ptr %3, align 4
  %64 = icmp slt i32 %storemerge45, 1
  br i1 %64, label %65, label %77

65:                                               ; preds = %63
  %66 = load i32, ptr %1, align 4
  %67 = load i32, ptr %2, align 4
  %68 = load i32, ptr %3, align 4
  %69 = shl i32 %68, 6
  %70 = shl i32 %67, 3
  %71 = add i32 %69, %70
  %72 = add nsw i32 %66, %71
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [4 x i8], ptr @p, i64 %73
  store i32 1, ptr %74, align 4
  %75 = load i32, ptr %3, align 4
  %76 = add nsw i32 %75, 1
  br label %63, !llvm.loop !19

77:                                               ; preds = %63
  %78 = load i32, ptr %2, align 4
  %79 = add nsw i32 %78, 1
  br label %60, !llvm.loop !20

80:                                               ; preds = %60
  %81 = load i32, ptr %1, align 4
  %82 = add nsw i32 %81, 1
  br label %57, !llvm.loop !21

83:                                               ; preds = %57
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %84

84:                                               ; preds = %107, %83
  %storemerge4 = phi i32 [ 0, %83 ], [ %109, %107 ]
  store i32 %storemerge4, ptr %1, align 4
  %85 = icmp slt i32 %storemerge4, 2
  br i1 %85, label %86, label %110

86:                                               ; preds = %84
  br label %87

87:                                               ; preds = %104, %86
  %storemerge42 = phi i32 [ 0, %86 ], [ %106, %104 ]
  store i32 %storemerge42, ptr %2, align 4
  %88 = icmp slt i32 %storemerge42, 1
  br i1 %88, label %89, label %107

89:                                               ; preds = %87
  br label %90

90:                                               ; preds = %92, %89
  %storemerge43 = phi i32 [ 0, %89 ], [ %103, %92 ]
  store i32 %storemerge43, ptr %3, align 4
  %91 = icmp slt i32 %storemerge43, 4
  br i1 %91, label %92, label %104

92:                                               ; preds = %90
  %93 = load i32, ptr %1, align 4
  %94 = load i32, ptr %2, align 4
  %95 = load i32, ptr %3, align 4
  %96 = shl i32 %95, 6
  %97 = shl i32 %94, 3
  %98 = add i32 %96, %97
  %99 = add nsw i32 %93, %98
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %100
  store i32 1, ptr %101, align 4
  %102 = load i32, ptr %3, align 4
  %103 = add nsw i32 %102, 1
  br label %90, !llvm.loop !22

104:                                              ; preds = %90
  %105 = load i32, ptr %2, align 4
  %106 = add nsw i32 %105, 1
  br label %87, !llvm.loop !23

107:                                              ; preds = %87
  %108 = load i32, ptr %1, align 4
  %109 = add nsw i32 %108, 1
  br label %84, !llvm.loop !24

110:                                              ; preds = %84
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %111

111:                                              ; preds = %134, %110
  %storemerge5 = phi i32 [ 0, %110 ], [ %136, %134 ]
  store i32 %storemerge5, ptr %1, align 4
  %112 = icmp slt i32 %storemerge5, 1
  br i1 %112, label %113, label %137

113:                                              ; preds = %111
  br label %114

114:                                              ; preds = %131, %113
  %storemerge40 = phi i32 [ 0, %113 ], [ %133, %131 ]
  store i32 %storemerge40, ptr %2, align 4
  %115 = icmp slt i32 %storemerge40, 4
  br i1 %115, label %116, label %134

116:                                              ; preds = %114
  br label %117

117:                                              ; preds = %119, %116
  %storemerge41 = phi i32 [ 0, %116 ], [ %130, %119 ]
  store i32 %storemerge41, ptr %3, align 4
  %118 = icmp slt i32 %storemerge41, 2
  br i1 %118, label %119, label %131

119:                                              ; preds = %117
  %120 = load i32, ptr %1, align 4
  %121 = load i32, ptr %2, align 4
  %122 = load i32, ptr %3, align 4
  %123 = shl i32 %122, 6
  %124 = shl i32 %121, 3
  %125 = add i32 %123, %124
  %126 = add nsw i32 %120, %125
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %127
  store i32 1, ptr %128, align 4
  %129 = load i32, ptr %3, align 4
  %130 = add nsw i32 %129, 1
  br label %117, !llvm.loop !25

131:                                              ; preds = %117
  %132 = load i32, ptr %2, align 4
  %133 = add nsw i32 %132, 1
  br label %114, !llvm.loop !26

134:                                              ; preds = %114
  %135 = load i32, ptr %1, align 4
  %136 = add nsw i32 %135, 1
  br label %111, !llvm.loop !27

137:                                              ; preds = %111
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %138

138:                                              ; preds = %161, %137
  %storemerge6 = phi i32 [ 0, %137 ], [ %163, %161 ]
  store i32 %storemerge6, ptr %1, align 4
  %139 = icmp slt i32 %storemerge6, 2
  br i1 %139, label %140, label %164

140:                                              ; preds = %138
  br label %141

141:                                              ; preds = %158, %140
  %storemerge38 = phi i32 [ 0, %140 ], [ %160, %158 ]
  store i32 %storemerge38, ptr %2, align 4
  %142 = icmp slt i32 %storemerge38, 4
  br i1 %142, label %143, label %161

143:                                              ; preds = %141
  br label %144

144:                                              ; preds = %146, %143
  %storemerge39 = phi i32 [ 0, %143 ], [ %157, %146 ]
  store i32 %storemerge39, ptr %3, align 4
  %145 = icmp slt i32 %storemerge39, 1
  br i1 %145, label %146, label %158

146:                                              ; preds = %144
  %147 = load i32, ptr %1, align 4
  %148 = load i32, ptr %2, align 4
  %149 = load i32, ptr %3, align 4
  %150 = shl i32 %149, 6
  %151 = shl i32 %148, 3
  %152 = add i32 %150, %151
  %153 = add nsw i32 %147, %152
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %154
  store i32 1, ptr %155, align 4
  %156 = load i32, ptr %3, align 4
  %157 = add nsw i32 %156, 1
  br label %144, !llvm.loop !28

158:                                              ; preds = %144
  %159 = load i32, ptr %2, align 4
  %160 = add nsw i32 %159, 1
  br label %141, !llvm.loop !29

161:                                              ; preds = %141
  %162 = load i32, ptr %1, align 4
  %163 = add nsw i32 %162, 1
  br label %138, !llvm.loop !30

164:                                              ; preds = %138
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %165

165:                                              ; preds = %188, %164
  %storemerge7 = phi i32 [ 0, %164 ], [ %190, %188 ]
  store i32 %storemerge7, ptr %1, align 4
  %166 = icmp slt i32 %storemerge7, 4
  br i1 %166, label %167, label %191

167:                                              ; preds = %165
  br label %168

168:                                              ; preds = %185, %167
  %storemerge36 = phi i32 [ 0, %167 ], [ %187, %185 ]
  store i32 %storemerge36, ptr %2, align 4
  %169 = icmp slt i32 %storemerge36, 1
  br i1 %169, label %170, label %188

170:                                              ; preds = %168
  br label %171

171:                                              ; preds = %173, %170
  %storemerge37 = phi i32 [ 0, %170 ], [ %184, %173 ]
  store i32 %storemerge37, ptr %3, align 4
  %172 = icmp slt i32 %storemerge37, 2
  br i1 %172, label %173, label %185

173:                                              ; preds = %171
  %174 = load i32, ptr %1, align 4
  %175 = load i32, ptr %2, align 4
  %176 = load i32, ptr %3, align 4
  %177 = shl i32 %176, 6
  %178 = shl i32 %175, 3
  %179 = add i32 %177, %178
  %180 = add nsw i32 %174, %179
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %181
  store i32 1, ptr %182, align 4
  %183 = load i32, ptr %3, align 4
  %184 = add nsw i32 %183, 1
  br label %171, !llvm.loop !31

185:                                              ; preds = %171
  %186 = load i32, ptr %2, align 4
  %187 = add nsw i32 %186, 1
  br label %168, !llvm.loop !32

188:                                              ; preds = %168
  %189 = load i32, ptr %1, align 4
  %190 = add nsw i32 %189, 1
  br label %165, !llvm.loop !33

191:                                              ; preds = %165
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %192

192:                                              ; preds = %215, %191
  %storemerge8 = phi i32 [ 0, %191 ], [ %217, %215 ]
  store i32 %storemerge8, ptr %1, align 4
  %193 = icmp slt i32 %storemerge8, 1
  br i1 %193, label %194, label %218

194:                                              ; preds = %192
  br label %195

195:                                              ; preds = %212, %194
  %storemerge34 = phi i32 [ 0, %194 ], [ %214, %212 ]
  store i32 %storemerge34, ptr %2, align 4
  %196 = icmp slt i32 %storemerge34, 2
  br i1 %196, label %197, label %215

197:                                              ; preds = %195
  br label %198

198:                                              ; preds = %200, %197
  %storemerge35 = phi i32 [ 0, %197 ], [ %211, %200 ]
  store i32 %storemerge35, ptr %3, align 4
  %199 = icmp slt i32 %storemerge35, 4
  br i1 %199, label %200, label %212

200:                                              ; preds = %198
  %201 = load i32, ptr %1, align 4
  %202 = load i32, ptr %2, align 4
  %203 = load i32, ptr %3, align 4
  %204 = shl i32 %203, 6
  %205 = shl i32 %202, 3
  %206 = add i32 %204, %205
  %207 = add nsw i32 %201, %206
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %208
  store i32 1, ptr %209, align 4
  %210 = load i32, ptr %3, align 4
  %211 = add nsw i32 %210, 1
  br label %198, !llvm.loop !34

212:                                              ; preds = %198
  %213 = load i32, ptr %2, align 4
  %214 = add nsw i32 %213, 1
  br label %195, !llvm.loop !35

215:                                              ; preds = %195
  %216 = load i32, ptr %1, align 4
  %217 = add nsw i32 %216, 1
  br label %192, !llvm.loop !36

218:                                              ; preds = %192
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %219

219:                                              ; preds = %242, %218
  %storemerge9 = phi i32 [ 0, %218 ], [ %244, %242 ]
  store i32 %storemerge9, ptr %1, align 4
  %220 = icmp slt i32 %storemerge9, 3
  br i1 %220, label %221, label %245

221:                                              ; preds = %219
  br label %222

222:                                              ; preds = %239, %221
  %storemerge32 = phi i32 [ 0, %221 ], [ %241, %239 ]
  store i32 %storemerge32, ptr %2, align 4
  %223 = icmp slt i32 %storemerge32, 1
  br i1 %223, label %224, label %242

224:                                              ; preds = %222
  br label %225

225:                                              ; preds = %227, %224
  %storemerge33 = phi i32 [ 0, %224 ], [ %238, %227 ]
  store i32 %storemerge33, ptr %3, align 4
  %226 = icmp slt i32 %storemerge33, 1
  br i1 %226, label %227, label %239

227:                                              ; preds = %225
  %228 = load i32, ptr %1, align 4
  %229 = load i32, ptr %2, align 4
  %230 = load i32, ptr %3, align 4
  %231 = shl i32 %230, 6
  %232 = shl i32 %229, 3
  %233 = add i32 %231, %232
  %234 = add nsw i32 %228, %233
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %235
  store i32 1, ptr %236, align 4
  %237 = load i32, ptr %3, align 4
  %238 = add nsw i32 %237, 1
  br label %225, !llvm.loop !37

239:                                              ; preds = %225
  %240 = load i32, ptr %2, align 4
  %241 = add nsw i32 %240, 1
  br label %222, !llvm.loop !38

242:                                              ; preds = %222
  %243 = load i32, ptr %1, align 4
  %244 = add nsw i32 %243, 1
  br label %219, !llvm.loop !39

245:                                              ; preds = %219
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %246

246:                                              ; preds = %269, %245
  %storemerge10 = phi i32 [ 0, %245 ], [ %271, %269 ]
  store i32 %storemerge10, ptr %1, align 4
  %247 = icmp slt i32 %storemerge10, 1
  br i1 %247, label %248, label %272

248:                                              ; preds = %246
  br label %249

249:                                              ; preds = %266, %248
  %storemerge30 = phi i32 [ 0, %248 ], [ %268, %266 ]
  store i32 %storemerge30, ptr %2, align 4
  %250 = icmp slt i32 %storemerge30, 3
  br i1 %250, label %251, label %269

251:                                              ; preds = %249
  br label %252

252:                                              ; preds = %254, %251
  %storemerge31 = phi i32 [ 0, %251 ], [ %265, %254 ]
  store i32 %storemerge31, ptr %3, align 4
  %253 = icmp slt i32 %storemerge31, 1
  br i1 %253, label %254, label %266

254:                                              ; preds = %252
  %255 = load i32, ptr %1, align 4
  %256 = load i32, ptr %2, align 4
  %257 = load i32, ptr %3, align 4
  %258 = shl i32 %257, 6
  %259 = shl i32 %256, 3
  %260 = add i32 %258, %259
  %261 = add nsw i32 %255, %260
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %262
  store i32 1, ptr %263, align 4
  %264 = load i32, ptr %3, align 4
  %265 = add nsw i32 %264, 1
  br label %252, !llvm.loop !40

266:                                              ; preds = %252
  %267 = load i32, ptr %2, align 4
  %268 = add nsw i32 %267, 1
  br label %249, !llvm.loop !41

269:                                              ; preds = %249
  %270 = load i32, ptr %1, align 4
  %271 = add nsw i32 %270, 1
  br label %246, !llvm.loop !42

272:                                              ; preds = %246
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %273

273:                                              ; preds = %296, %272
  %storemerge11 = phi i32 [ 0, %272 ], [ %298, %296 ]
  store i32 %storemerge11, ptr %1, align 4
  %274 = icmp slt i32 %storemerge11, 1
  br i1 %274, label %275, label %299

275:                                              ; preds = %273
  br label %276

276:                                              ; preds = %293, %275
  %storemerge28 = phi i32 [ 0, %275 ], [ %295, %293 ]
  store i32 %storemerge28, ptr %2, align 4
  %277 = icmp slt i32 %storemerge28, 1
  br i1 %277, label %278, label %296

278:                                              ; preds = %276
  br label %279

279:                                              ; preds = %281, %278
  %storemerge29 = phi i32 [ 0, %278 ], [ %292, %281 ]
  store i32 %storemerge29, ptr %3, align 4
  %280 = icmp slt i32 %storemerge29, 3
  br i1 %280, label %281, label %293

281:                                              ; preds = %279
  %282 = load i32, ptr %1, align 4
  %283 = load i32, ptr %2, align 4
  %284 = load i32, ptr %3, align 4
  %285 = shl i32 %284, 6
  %286 = shl i32 %283, 3
  %287 = add i32 %285, %286
  %288 = add nsw i32 %282, %287
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %289
  store i32 1, ptr %290, align 4
  %291 = load i32, ptr %3, align 4
  %292 = add nsw i32 %291, 1
  br label %279, !llvm.loop !43

293:                                              ; preds = %279
  %294 = load i32, ptr %2, align 4
  %295 = add nsw i32 %294, 1
  br label %276, !llvm.loop !44

296:                                              ; preds = %276
  %297 = load i32, ptr %1, align 4
  %298 = add nsw i32 %297, 1
  br label %273, !llvm.loop !45

299:                                              ; preds = %273
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %300

300:                                              ; preds = %323, %299
  %storemerge12 = phi i32 [ 0, %299 ], [ %325, %323 ]
  store i32 %storemerge12, ptr %1, align 4
  %301 = icmp slt i32 %storemerge12, 2
  br i1 %301, label %302, label %326

302:                                              ; preds = %300
  br label %303

303:                                              ; preds = %320, %302
  %storemerge26 = phi i32 [ 0, %302 ], [ %322, %320 ]
  store i32 %storemerge26, ptr %2, align 4
  %304 = icmp slt i32 %storemerge26, 2
  br i1 %304, label %305, label %323

305:                                              ; preds = %303
  br label %306

306:                                              ; preds = %308, %305
  %storemerge27 = phi i32 [ 0, %305 ], [ %319, %308 ]
  store i32 %storemerge27, ptr %3, align 4
  %307 = icmp slt i32 %storemerge27, 1
  br i1 %307, label %308, label %320

308:                                              ; preds = %306
  %309 = load i32, ptr %1, align 4
  %310 = load i32, ptr %2, align 4
  %311 = load i32, ptr %3, align 4
  %312 = shl i32 %311, 6
  %313 = shl i32 %310, 3
  %314 = add i32 %312, %313
  %315 = add nsw i32 %309, %314
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %316
  store i32 1, ptr %317, align 4
  %318 = load i32, ptr %3, align 4
  %319 = add nsw i32 %318, 1
  br label %306, !llvm.loop !46

320:                                              ; preds = %306
  %321 = load i32, ptr %2, align 4
  %322 = add nsw i32 %321, 1
  br label %303, !llvm.loop !47

323:                                              ; preds = %303
  %324 = load i32, ptr %1, align 4
  %325 = add nsw i32 %324, 1
  br label %300, !llvm.loop !48

326:                                              ; preds = %300
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %327

327:                                              ; preds = %350, %326
  %storemerge13 = phi i32 [ 0, %326 ], [ %352, %350 ]
  store i32 %storemerge13, ptr %1, align 4
  %328 = icmp slt i32 %storemerge13, 2
  br i1 %328, label %329, label %353

329:                                              ; preds = %327
  br label %330

330:                                              ; preds = %347, %329
  %storemerge24 = phi i32 [ 0, %329 ], [ %349, %347 ]
  store i32 %storemerge24, ptr %2, align 4
  %331 = icmp slt i32 %storemerge24, 1
  br i1 %331, label %332, label %350

332:                                              ; preds = %330
  br label %333

333:                                              ; preds = %335, %332
  %storemerge25 = phi i32 [ 0, %332 ], [ %346, %335 ]
  store i32 %storemerge25, ptr %3, align 4
  %334 = icmp slt i32 %storemerge25, 2
  br i1 %334, label %335, label %347

335:                                              ; preds = %333
  %336 = load i32, ptr %1, align 4
  %337 = load i32, ptr %2, align 4
  %338 = load i32, ptr %3, align 4
  %339 = shl i32 %338, 6
  %340 = shl i32 %337, 3
  %341 = add i32 %339, %340
  %342 = add nsw i32 %336, %341
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %343
  store i32 1, ptr %344, align 4
  %345 = load i32, ptr %3, align 4
  %346 = add nsw i32 %345, 1
  br label %333, !llvm.loop !49

347:                                              ; preds = %333
  %348 = load i32, ptr %2, align 4
  %349 = add nsw i32 %348, 1
  br label %330, !llvm.loop !50

350:                                              ; preds = %330
  %351 = load i32, ptr %1, align 4
  %352 = add nsw i32 %351, 1
  br label %327, !llvm.loop !51

353:                                              ; preds = %327
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %354

354:                                              ; preds = %377, %353
  %storemerge14 = phi i32 [ 0, %353 ], [ %379, %377 ]
  store i32 %storemerge14, ptr %1, align 4
  %355 = icmp slt i32 %storemerge14, 1
  br i1 %355, label %356, label %380

356:                                              ; preds = %354
  br label %357

357:                                              ; preds = %374, %356
  %storemerge22 = phi i32 [ 0, %356 ], [ %376, %374 ]
  store i32 %storemerge22, ptr %2, align 4
  %358 = icmp slt i32 %storemerge22, 2
  br i1 %358, label %359, label %377

359:                                              ; preds = %357
  br label %360

360:                                              ; preds = %362, %359
  %storemerge23 = phi i32 [ 0, %359 ], [ %373, %362 ]
  store i32 %storemerge23, ptr %3, align 4
  %361 = icmp slt i32 %storemerge23, 2
  br i1 %361, label %362, label %374

362:                                              ; preds = %360
  %363 = load i32, ptr %1, align 4
  %364 = load i32, ptr %2, align 4
  %365 = load i32, ptr %3, align 4
  %366 = shl i32 %365, 6
  %367 = shl i32 %364, 3
  %368 = add i32 %366, %367
  %369 = add nsw i32 %363, %368
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %370
  store i32 1, ptr %371, align 4
  %372 = load i32, ptr %3, align 4
  %373 = add nsw i32 %372, 1
  br label %360, !llvm.loop !52

374:                                              ; preds = %360
  %375 = load i32, ptr %2, align 4
  %376 = add nsw i32 %375, 1
  br label %357, !llvm.loop !53

377:                                              ; preds = %357
  %378 = load i32, ptr %1, align 4
  %379 = add nsw i32 %378, 1
  br label %354, !llvm.loop !54

380:                                              ; preds = %354
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %381

381:                                              ; preds = %404, %380
  %storemerge15 = phi i32 [ 0, %380 ], [ %406, %404 ]
  store i32 %storemerge15, ptr %1, align 4
  %382 = icmp slt i32 %storemerge15, 2
  br i1 %382, label %383, label %407

383:                                              ; preds = %381
  br label %384

384:                                              ; preds = %401, %383
  %storemerge20 = phi i32 [ 0, %383 ], [ %403, %401 ]
  store i32 %storemerge20, ptr %2, align 4
  %385 = icmp slt i32 %storemerge20, 2
  br i1 %385, label %386, label %404

386:                                              ; preds = %384
  br label %387

387:                                              ; preds = %389, %386
  %storemerge21 = phi i32 [ 0, %386 ], [ %400, %389 ]
  store i32 %storemerge21, ptr %3, align 4
  %388 = icmp slt i32 %storemerge21, 2
  br i1 %388, label %389, label %401

389:                                              ; preds = %387
  %390 = load i32, ptr %1, align 4
  %391 = load i32, ptr %2, align 4
  %392 = load i32, ptr %3, align 4
  %393 = shl i32 %392, 6
  %394 = shl i32 %391, 3
  %395 = add i32 %393, %394
  %396 = add nsw i32 %390, %395
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %397
  store i32 1, ptr %398, align 4
  %399 = load i32, ptr %3, align 4
  %400 = add nsw i32 %399, 1
  br label %387, !llvm.loop !55

401:                                              ; preds = %387
  %402 = load i32, ptr %2, align 4
  %403 = add nsw i32 %402, 1
  br label %384, !llvm.loop !56

404:                                              ; preds = %384
  %405 = load i32, ptr %1, align 4
  %406 = add nsw i32 %405, 1
  br label %381, !llvm.loop !57

407:                                              ; preds = %381
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 73, ptr %4, align 4
  store i32 0, ptr @kount, align 4
  %408 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %408, 0
  br i1 %.not, label %412, label %409

409:                                              ; preds = %407
  %410 = load i32, ptr %4, align 4
  %411 = call i32 @Place(i32 noundef 0, i32 noundef %410)
  store i32 %411, ptr @n, align 4
  br label %413

412:                                              ; preds = %407
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %413

413:                                              ; preds = %412, %409
  %414 = load i32, ptr @n, align 4
  %415 = call i32 @Trial(i32 noundef %414)
  %.not16 = icmp eq i32 %415, 0
  br i1 %.not16, label %416, label %417

416:                                              ; preds = %413
  %puts17 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %420

417:                                              ; preds = %413
  %418 = load i32, ptr @kount, align 4
  %.not18 = icmp eq i32 %418, 2005
  br i1 %.not18, label %420, label %419

419:                                              ; preds = %417
  %puts19 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %420

420:                                              ; preds = %417, %419, %416
  %421 = load i32, ptr @n, align 4
  %422 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %421) #3
  %423 = load i32, ptr @kount, align 4
  %424 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %423) #3
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  br label %2

2:                                                ; preds = %4, %0
  %storemerge = phi i32 [ 0, %0 ], [ %6, %4 ]
  store i32 %storemerge, ptr %1, align 4
  %3 = icmp slt i32 %storemerge, 100
  br i1 %3, label %4, label %7

4:                                                ; preds = %2
  call void @Puzzle()
  %5 = load i32, ptr %1, align 4
  %6 = add nsw i32 %5, 1
  br label %2, !llvm.loop !58

7:                                                ; preds = %2
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
