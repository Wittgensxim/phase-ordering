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
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %3
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds [2048 x i8], ptr @p, i64 %3
  br label %7

7:                                                ; preds = %20, %2
  %storemerge = phi i32 [ 0, %2 ], [ %21, %20 ]
  %.not = icmp sgt i32 %storemerge, %5
  br i1 %.not, label %22, label %8

8:                                                ; preds = %7
  %9 = zext nneg i32 %storemerge to i64
  %10 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %9
  %11 = load i32, ptr %10, align 4
  %.not2 = icmp eq i32 %11, 0
  br i1 %.not2, label %19, label %12

12:                                               ; preds = %8
  %13 = add nsw i32 %1, %storemerge
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %14
  %16 = load i32, ptr %15, align 4
  %.not3 = icmp eq i32 %16, 0
  br i1 %.not3, label %18, label %17

17:                                               ; preds = %12
  br label %23

18:                                               ; preds = %12
  br label %19

19:                                               ; preds = %18, %8
  br label %20

20:                                               ; preds = %19
  %21 = add nuw nsw i32 %storemerge, 1
  br label %7, !llvm.loop !7

22:                                               ; preds = %7
  br label %23

23:                                               ; preds = %22, %17
  %storemerge1 = phi i32 [ 1, %22 ], [ 0, %17 ]
  ret i32 %storemerge1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Place(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  store i32 %1, ptr %3, align 4
  %4 = sext i32 %0 to i64
  %5 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %4
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds [2048 x i8], ptr @p, i64 %4
  br label %8

8:                                                ; preds = %18, %2
  %storemerge = phi i32 [ 0, %2 ], [ %19, %18 ]
  %.not = icmp sgt i32 %storemerge, %6
  br i1 %.not, label %20, label %9

9:                                                ; preds = %8
  %10 = zext nneg i32 %storemerge to i64
  %11 = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %10
  %12 = load i32, ptr %11, align 4
  %.not4 = icmp eq i32 %12, 0
  br i1 %.not4, label %17, label %13

13:                                               ; preds = %9
  %14 = add nsw i32 %1, %storemerge
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %15
  store i32 1, ptr %16, align 4
  br label %17

17:                                               ; preds = %13, %9
  br label %18

18:                                               ; preds = %17
  %19 = add nuw nsw i32 %storemerge, 1
  br label %8, !llvm.loop !9

20:                                               ; preds = %8
  %21 = getelementptr inbounds [4 x i8], ptr @class, i64 %4
  %22 = load i32, ptr %21, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %23
  %25 = load i32, ptr %24, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, ptr %24, align 4
  %27 = load i32, ptr %3, align 4
  %28 = sext i32 %27 to i64
  %smax = call i32 @llvm.smax.i32(i32 %27, i32 512)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %29

29:                                               ; preds = %36, %20
  %indvars.iv = phi i64 [ %indvars.iv.next, %36 ], [ %28, %20 ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %37, label %30

30:                                               ; preds = %29
  %31 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %indvars.iv
  %32 = load i32, ptr %31, align 4
  %.not3 = icmp eq i32 %32, 0
  br i1 %.not3, label %33, label %35

33:                                               ; preds = %30
  %34 = trunc nsw i64 %indvars.iv to i32
  br label %38

35:                                               ; preds = %30
  br label %36

36:                                               ; preds = %35
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %29, !llvm.loop !10

37:                                               ; preds = %29
  br label %38

38:                                               ; preds = %37, %33
  %storemerge2 = phi i32 [ 0, %37 ], [ %34, %33 ]
  ret i32 %storemerge2
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Remove(i32 noundef %0, i32 noundef %1) #0 {
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %3
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds [2048 x i8], ptr @p, i64 %3
  br label %7

7:                                                ; preds = %17, %2
  %storemerge = phi i32 [ 0, %2 ], [ %18, %17 ]
  %.not = icmp sgt i32 %storemerge, %5
  br i1 %.not, label %19, label %8

8:                                                ; preds = %7
  %9 = zext nneg i32 %storemerge to i64
  %10 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %9
  %11 = load i32, ptr %10, align 4
  %.not1 = icmp eq i32 %11, 0
  br i1 %.not1, label %16, label %12

12:                                               ; preds = %8
  %13 = add nsw i32 %1, %storemerge
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %14
  store i32 0, ptr %15, align 4
  br label %16

16:                                               ; preds = %12, %8
  br label %17

17:                                               ; preds = %16
  %18 = add nuw nsw i32 %storemerge, 1
  br label %7, !llvm.loop !11

19:                                               ; preds = %7
  %20 = getelementptr inbounds [4 x i8], ptr @class, i64 %3
  %21 = load i32, ptr %20, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %22
  %24 = load i32, ptr %23, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, ptr %23, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Trial(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = load i32, ptr @kount, align 4
  %4 = add nsw i32 %3, 1
  store i32 %4, ptr @kount, align 4
  %.promoted = load i32, ptr %2, align 4
  br label %5

5:                                                ; preds = %29, %1
  %6 = phi i32 [ %.promoted, %1 ], [ %28, %29 ]
  %storemerge = phi i32 [ 0, %1 ], [ %30, %29 ]
  %7 = icmp samesign ult i32 %storemerge, 13
  br i1 %7, label %8, label %31

8:                                                ; preds = %5
  %9 = zext nneg i32 %storemerge to i64
  %10 = getelementptr inbounds nuw [4 x i8], ptr @class, i64 %9
  %11 = load i32, ptr %10, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %12
  %14 = load i32, ptr %13, align 4
  %.not = icmp eq i32 %14, 0
  br i1 %.not, label %27, label %15

15:                                               ; preds = %8
  %16 = call i32 @Fit(i32 noundef %storemerge, i32 noundef %0)
  %.not2 = icmp eq i32 %16, 0
  br i1 %.not2, label %25, label %17

17:                                               ; preds = %15
  %18 = call i32 @Place(i32 noundef %storemerge, i32 noundef %0)
  %19 = call i32 @Trial(i32 noundef %18)
  %.not3 = icmp eq i32 %19, 0
  br i1 %.not3, label %20, label %22

20:                                               ; preds = %17
  %21 = icmp eq i32 %18, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %20, %17
  br label %32

23:                                               ; preds = %20
  call void @Remove(i32 noundef %storemerge, i32 noundef %0)
  br label %24

24:                                               ; preds = %23
  br label %25

25:                                               ; preds = %24, %15
  %26 = phi i32 [ %18, %24 ], [ %6, %15 ]
  br label %27

27:                                               ; preds = %25, %8
  %28 = phi i32 [ %26, %25 ], [ %6, %8 ]
  br label %29

29:                                               ; preds = %27
  %30 = add nuw nsw i32 %storemerge, 1
  br label %5, !llvm.loop !12

31:                                               ; preds = %5
  br label %32

32:                                               ; preds = %31, %22
  %storemerge3 = phi i32 [ %6, %31 ], [ %18, %22 ]
  %storemerge1 = phi i32 [ 0, %31 ], [ 1, %22 ]
  store i32 %storemerge3, ptr %2, align 4
  ret i32 %storemerge1
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Puzzle() #0 {
  %1 = alloca i32, align 4
  br label %2

2:                                                ; preds = %7, %0
  %storemerge = phi i32 [ 0, %0 ], [ %8, %7 ]
  %3 = icmp samesign ult i32 %storemerge, 512
  br i1 %3, label %4, label %9

4:                                                ; preds = %2
  %5 = zext nneg i32 %storemerge to i64
  %6 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %5
  store i32 1, ptr %6, align 4
  br label %7

7:                                                ; preds = %4
  %8 = add nuw nsw i32 %storemerge, 1
  br label %2, !llvm.loop !13

9:                                                ; preds = %2
  store i32 %storemerge, ptr %1, align 4
  br label %10

10:                                               ; preds = %30, %9
  %storemerge1 = phi i32 [ 1, %9 ], [ %31, %30 ]
  %11 = icmp samesign ult i32 %storemerge1, 6
  br i1 %11, label %12, label %32

12:                                               ; preds = %10
  br label %13

13:                                               ; preds = %27, %12
  %storemerge47 = phi i32 [ 1, %12 ], [ %28, %27 ]
  %14 = icmp samesign ult i32 %storemerge47, 6
  br i1 %14, label %15, label %29

15:                                               ; preds = %13
  %16 = shl nuw nsw i32 %storemerge47, 3
  br label %17

17:                                               ; preds = %24, %15
  %storemerge48 = phi i32 [ 1, %15 ], [ %25, %24 ]
  %18 = icmp samesign ult i32 %storemerge48, 6
  br i1 %18, label %19, label %26

19:                                               ; preds = %17
  %20 = shl nuw nsw i32 %storemerge48, 6
  %21 = or disjoint i32 %16, %20
  %.reass = or disjoint i32 %21, %storemerge1
  %22 = zext nneg i32 %.reass to i64
  %23 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %22
  store i32 0, ptr %23, align 4
  br label %24

24:                                               ; preds = %19
  %25 = add nuw nsw i32 %storemerge48, 1
  br label %17, !llvm.loop !14

26:                                               ; preds = %17
  br label %27

27:                                               ; preds = %26
  %28 = add nuw nsw i32 %storemerge47, 1
  br label %13, !llvm.loop !15

29:                                               ; preds = %13
  br label %30

30:                                               ; preds = %29
  %31 = add nuw nsw i32 %storemerge1, 1
  br label %10, !llvm.loop !16

32:                                               ; preds = %10
  br label %33

33:                                               ; preds = %46, %32
  %storemerge46.lcssa4 = phi i32 [ poison, %32 ], [ %storemerge46, %46 ]
  %storemerge2 = phi i32 [ 0, %32 ], [ %47, %46 ]
  %34 = icmp samesign ult i32 %storemerge2, 13
  br i1 %34, label %35, label %48

35:                                               ; preds = %33
  %36 = zext nneg i32 %storemerge2 to i64
  %37 = getelementptr inbounds nuw [2048 x i8], ptr @p, i64 %36
  br label %38

38:                                               ; preds = %43, %35
  %storemerge46 = phi i32 [ 0, %35 ], [ %44, %43 ]
  %39 = icmp samesign ult i32 %storemerge46, 512
  br i1 %39, label %40, label %45

40:                                               ; preds = %38
  %41 = zext nneg i32 %storemerge46 to i64
  %42 = getelementptr inbounds nuw [4 x i8], ptr %37, i64 %41
  store i32 0, ptr %42, align 4
  br label %43

43:                                               ; preds = %40
  %44 = add nuw nsw i32 %storemerge46, 1
  br label %38, !llvm.loop !17

45:                                               ; preds = %38
  br label %46

46:                                               ; preds = %45
  %47 = add nuw nsw i32 %storemerge2, 1
  br label %33, !llvm.loop !18

48:                                               ; preds = %33
  store i32 %storemerge46.lcssa4, ptr %1, align 4
  br label %49

49:                                               ; preds = %65, %48
  %storemerge3 = phi i32 [ 0, %48 ], [ %66, %65 ]
  %50 = icmp samesign ult i32 %storemerge3, 4
  br i1 %50, label %51, label %67

51:                                               ; preds = %49
  br label %52

52:                                               ; preds = %62, %51
  %storemerge44 = phi i32 [ 0, %51 ], [ %63, %62 ]
  %53 = icmp samesign ult i32 %storemerge44, 2
  br i1 %53, label %54, label %64

54:                                               ; preds = %52
  %55 = shl nuw nsw i32 %storemerge44, 3
  %invariant.op5 = or disjoint i32 %55, %storemerge3
  br label %56

56:                                               ; preds = %60, %54
  %storemerge45 = phi i1 [ true, %54 ], [ false, %60 ]
  br i1 %storemerge45, label %57, label %61

57:                                               ; preds = %56
  %58 = zext nneg i32 %invariant.op5 to i64
  %59 = getelementptr inbounds nuw [4 x i8], ptr @p, i64 %58
  store i32 1, ptr %59, align 4
  br label %60

60:                                               ; preds = %57
  br label %56, !llvm.loop !19

61:                                               ; preds = %56
  br label %62

62:                                               ; preds = %61
  %63 = add nuw nsw i32 %storemerge44, 1
  br label %52, !llvm.loop !20

64:                                               ; preds = %52
  br label %65

65:                                               ; preds = %64
  %66 = add nuw nsw i32 %storemerge3, 1
  br label %49, !llvm.loop !21

67:                                               ; preds = %49
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %68

68:                                               ; preds = %84, %67
  %storemerge4 = phi i32 [ 0, %67 ], [ %85, %84 ]
  %69 = icmp samesign ult i32 %storemerge4, 2
  br i1 %69, label %70, label %86

70:                                               ; preds = %68
  br label %71

71:                                               ; preds = %82, %70
  %storemerge42 = phi i1 [ true, %70 ], [ false, %82 ]
  br i1 %storemerge42, label %72, label %83

72:                                               ; preds = %71
  br label %73

73:                                               ; preds = %79, %72
  %storemerge43 = phi i32 [ 0, %72 ], [ %80, %79 ]
  %74 = icmp samesign ult i32 %storemerge43, 4
  br i1 %74, label %75, label %81

75:                                               ; preds = %73
  %76 = shl nuw nsw i32 %storemerge43, 6
  %.reass11 = or disjoint i32 %76, %storemerge4
  %77 = zext nneg i32 %.reass11 to i64
  %78 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %77
  store i32 1, ptr %78, align 4
  br label %79

79:                                               ; preds = %75
  %80 = add nuw nsw i32 %storemerge43, 1
  br label %73, !llvm.loop !22

81:                                               ; preds = %73
  br label %82

82:                                               ; preds = %81
  br label %71, !llvm.loop !23

83:                                               ; preds = %71
  br label %84

84:                                               ; preds = %83
  %85 = add nuw nsw i32 %storemerge4, 1
  br label %68, !llvm.loop !24

86:                                               ; preds = %68
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %87

87:                                               ; preds = %106, %86
  %88 = phi i1 [ true, %86 ], [ false, %106 ]
  br i1 %88, label %89, label %107

89:                                               ; preds = %87
  br label %90

90:                                               ; preds = %103, %89
  %storemerge40 = phi i32 [ 0, %89 ], [ %104, %103 ]
  %91 = icmp samesign ult i32 %storemerge40, 4
  br i1 %91, label %92, label %105

92:                                               ; preds = %90
  %93 = shl nuw nsw i32 %storemerge40, 3
  br label %94

94:                                               ; preds = %100, %92
  %storemerge41 = phi i32 [ 0, %92 ], [ %101, %100 ]
  %95 = icmp samesign ult i32 %storemerge41, 2
  br i1 %95, label %96, label %102

96:                                               ; preds = %94
  %97 = shl nuw nsw i32 %storemerge41, 6
  %.reass16 = or disjoint i32 %97, %93
  %98 = zext nneg i32 %.reass16 to i64
  %99 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %98
  store i32 1, ptr %99, align 4
  br label %100

100:                                              ; preds = %96
  %101 = add nuw nsw i32 %storemerge41, 1
  br label %94, !llvm.loop !25

102:                                              ; preds = %94
  br label %103

103:                                              ; preds = %102
  %104 = add nuw nsw i32 %storemerge40, 1
  br label %90, !llvm.loop !26

105:                                              ; preds = %90
  br label %106

106:                                              ; preds = %105
  br label %87, !llvm.loop !27

107:                                              ; preds = %87
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %108

108:                                              ; preds = %124, %107
  %storemerge6 = phi i32 [ 0, %107 ], [ %125, %124 ]
  %109 = icmp samesign ult i32 %storemerge6, 2
  br i1 %109, label %110, label %126

110:                                              ; preds = %108
  br label %111

111:                                              ; preds = %121, %110
  %storemerge38 = phi i32 [ 0, %110 ], [ %122, %121 ]
  %112 = icmp samesign ult i32 %storemerge38, 4
  br i1 %112, label %113, label %123

113:                                              ; preds = %111
  %114 = shl nuw nsw i32 %storemerge38, 3
  %invariant.op20 = or disjoint i32 %114, %storemerge6
  br label %115

115:                                              ; preds = %119, %113
  %storemerge39 = phi i1 [ true, %113 ], [ false, %119 ]
  br i1 %storemerge39, label %116, label %120

116:                                              ; preds = %115
  %117 = zext nneg i32 %invariant.op20 to i64
  %118 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %117
  store i32 1, ptr %118, align 4
  br label %119

119:                                              ; preds = %116
  br label %115, !llvm.loop !28

120:                                              ; preds = %115
  br label %121

121:                                              ; preds = %120
  %122 = add nuw nsw i32 %storemerge38, 1
  br label %111, !llvm.loop !29

123:                                              ; preds = %111
  br label %124

124:                                              ; preds = %123
  %125 = add nuw nsw i32 %storemerge6, 1
  br label %108, !llvm.loop !30

126:                                              ; preds = %108
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %127

127:                                              ; preds = %143, %126
  %storemerge7 = phi i32 [ 0, %126 ], [ %144, %143 ]
  %128 = icmp samesign ult i32 %storemerge7, 4
  br i1 %128, label %129, label %145

129:                                              ; preds = %127
  br label %130

130:                                              ; preds = %141, %129
  %storemerge36 = phi i1 [ true, %129 ], [ false, %141 ]
  br i1 %storemerge36, label %131, label %142

131:                                              ; preds = %130
  br label %132

132:                                              ; preds = %138, %131
  %storemerge37 = phi i32 [ 0, %131 ], [ %139, %138 ]
  %133 = icmp samesign ult i32 %storemerge37, 2
  br i1 %133, label %134, label %140

134:                                              ; preds = %132
  %135 = shl nuw nsw i32 %storemerge37, 6
  %.reass26 = or disjoint i32 %135, %storemerge7
  %136 = zext nneg i32 %.reass26 to i64
  %137 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %136
  store i32 1, ptr %137, align 4
  br label %138

138:                                              ; preds = %134
  %139 = add nuw nsw i32 %storemerge37, 1
  br label %132, !llvm.loop !31

140:                                              ; preds = %132
  br label %141

141:                                              ; preds = %140
  br label %130, !llvm.loop !32

142:                                              ; preds = %130
  br label %143

143:                                              ; preds = %142
  %144 = add nuw nsw i32 %storemerge7, 1
  br label %127, !llvm.loop !33

145:                                              ; preds = %127
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %146

146:                                              ; preds = %165, %145
  %147 = phi i1 [ true, %145 ], [ false, %165 ]
  br i1 %147, label %148, label %166

148:                                              ; preds = %146
  br label %149

149:                                              ; preds = %162, %148
  %storemerge34 = phi i32 [ 0, %148 ], [ %163, %162 ]
  %150 = icmp samesign ult i32 %storemerge34, 2
  br i1 %150, label %151, label %164

151:                                              ; preds = %149
  %152 = shl nuw nsw i32 %storemerge34, 3
  br label %153

153:                                              ; preds = %159, %151
  %storemerge35 = phi i32 [ 0, %151 ], [ %160, %159 ]
  %154 = icmp samesign ult i32 %storemerge35, 4
  br i1 %154, label %155, label %161

155:                                              ; preds = %153
  %156 = shl nuw nsw i32 %storemerge35, 6
  %.reass31 = or disjoint i32 %156, %152
  %157 = zext nneg i32 %.reass31 to i64
  %158 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %157
  store i32 1, ptr %158, align 4
  br label %159

159:                                              ; preds = %155
  %160 = add nuw nsw i32 %storemerge35, 1
  br label %153, !llvm.loop !34

161:                                              ; preds = %153
  br label %162

162:                                              ; preds = %161
  %163 = add nuw nsw i32 %storemerge34, 1
  br label %149, !llvm.loop !35

164:                                              ; preds = %149
  br label %165

165:                                              ; preds = %164
  br label %146, !llvm.loop !36

166:                                              ; preds = %146
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %167

167:                                              ; preds = %180, %166
  %storemerge9 = phi i32 [ 0, %166 ], [ %181, %180 ]
  %168 = icmp samesign ult i32 %storemerge9, 3
  br i1 %168, label %169, label %182

169:                                              ; preds = %167
  br label %170

170:                                              ; preds = %178, %169
  %storemerge32 = phi i1 [ true, %169 ], [ false, %178 ]
  br i1 %storemerge32, label %171, label %179

171:                                              ; preds = %170
  br label %172

172:                                              ; preds = %176, %171
  %storemerge33 = phi i1 [ true, %171 ], [ false, %176 ]
  br i1 %storemerge33, label %173, label %177

173:                                              ; preds = %172
  %174 = zext nneg i32 %storemerge9 to i64
  %175 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %174
  store i32 1, ptr %175, align 4
  br label %176

176:                                              ; preds = %173
  br label %172, !llvm.loop !37

177:                                              ; preds = %172
  br label %178

178:                                              ; preds = %177
  br label %170, !llvm.loop !38

179:                                              ; preds = %170
  br label %180

180:                                              ; preds = %179
  %181 = add nuw nsw i32 %storemerge9, 1
  br label %167, !llvm.loop !39

182:                                              ; preds = %167
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %183

183:                                              ; preds = %199, %182
  %184 = phi i1 [ true, %182 ], [ false, %199 ]
  br i1 %184, label %185, label %200

185:                                              ; preds = %183
  br label %186

186:                                              ; preds = %196, %185
  %storemerge30 = phi i32 [ 0, %185 ], [ %197, %196 ]
  %187 = icmp samesign ult i32 %storemerge30, 3
  br i1 %187, label %188, label %198

188:                                              ; preds = %186
  %189 = shl nuw nsw i32 %storemerge30, 3
  br label %190

190:                                              ; preds = %194, %188
  %storemerge31 = phi i1 [ true, %188 ], [ false, %194 ]
  br i1 %storemerge31, label %191, label %195

191:                                              ; preds = %190
  %192 = zext nneg i32 %189 to i64
  %193 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %192
  store i32 1, ptr %193, align 4
  br label %194

194:                                              ; preds = %191
  br label %190, !llvm.loop !40

195:                                              ; preds = %190
  br label %196

196:                                              ; preds = %195
  %197 = add nuw nsw i32 %storemerge30, 1
  br label %186, !llvm.loop !41

198:                                              ; preds = %186
  br label %199

199:                                              ; preds = %198
  br label %183, !llvm.loop !42

200:                                              ; preds = %183
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %201

201:                                              ; preds = %217, %200
  %202 = phi i1 [ true, %200 ], [ false, %217 ]
  br i1 %202, label %203, label %218

203:                                              ; preds = %201
  br label %204

204:                                              ; preds = %215, %203
  %storemerge28 = phi i1 [ true, %203 ], [ false, %215 ]
  br i1 %storemerge28, label %205, label %216

205:                                              ; preds = %204
  br label %206

206:                                              ; preds = %212, %205
  %storemerge29 = phi i32 [ 0, %205 ], [ %213, %212 ]
  %207 = icmp samesign ult i32 %storemerge29, 3
  br i1 %207, label %208, label %214

208:                                              ; preds = %206
  %209 = shl nuw nsw i32 %storemerge29, 6
  %210 = zext nneg i32 %209 to i64
  %211 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %210
  store i32 1, ptr %211, align 4
  br label %212

212:                                              ; preds = %208
  %213 = add nuw nsw i32 %storemerge29, 1
  br label %206, !llvm.loop !43

214:                                              ; preds = %206
  br label %215

215:                                              ; preds = %214
  br label %204, !llvm.loop !44

216:                                              ; preds = %204
  br label %217

217:                                              ; preds = %216
  br label %201, !llvm.loop !45

218:                                              ; preds = %201
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %219

219:                                              ; preds = %235, %218
  %storemerge12 = phi i32 [ 0, %218 ], [ %236, %235 ]
  %220 = icmp samesign ult i32 %storemerge12, 2
  br i1 %220, label %221, label %237

221:                                              ; preds = %219
  br label %222

222:                                              ; preds = %232, %221
  %storemerge26 = phi i32 [ 0, %221 ], [ %233, %232 ]
  %223 = icmp samesign ult i32 %storemerge26, 2
  br i1 %223, label %224, label %234

224:                                              ; preds = %222
  %225 = shl nuw nsw i32 %storemerge26, 3
  %invariant.op50 = or disjoint i32 %225, %storemerge12
  br label %226

226:                                              ; preds = %230, %224
  %storemerge27 = phi i1 [ true, %224 ], [ false, %230 ]
  br i1 %storemerge27, label %227, label %231

227:                                              ; preds = %226
  %228 = zext nneg i32 %invariant.op50 to i64
  %229 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %228
  store i32 1, ptr %229, align 4
  br label %230

230:                                              ; preds = %227
  br label %226, !llvm.loop !46

231:                                              ; preds = %226
  br label %232

232:                                              ; preds = %231
  %233 = add nuw nsw i32 %storemerge26, 1
  br label %222, !llvm.loop !47

234:                                              ; preds = %222
  br label %235

235:                                              ; preds = %234
  %236 = add nuw nsw i32 %storemerge12, 1
  br label %219, !llvm.loop !48

237:                                              ; preds = %219
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %238

238:                                              ; preds = %254, %237
  %storemerge13 = phi i32 [ 0, %237 ], [ %255, %254 ]
  %239 = icmp samesign ult i32 %storemerge13, 2
  br i1 %239, label %240, label %256

240:                                              ; preds = %238
  br label %241

241:                                              ; preds = %252, %240
  %storemerge24 = phi i1 [ true, %240 ], [ false, %252 ]
  br i1 %storemerge24, label %242, label %253

242:                                              ; preds = %241
  br label %243

243:                                              ; preds = %249, %242
  %storemerge25 = phi i32 [ 0, %242 ], [ %250, %249 ]
  %244 = icmp samesign ult i32 %storemerge25, 2
  br i1 %244, label %245, label %251

245:                                              ; preds = %243
  %246 = shl nuw nsw i32 %storemerge25, 6
  %.reass56 = or disjoint i32 %246, %storemerge13
  %247 = zext nneg i32 %.reass56 to i64
  %248 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %247
  store i32 1, ptr %248, align 4
  br label %249

249:                                              ; preds = %245
  %250 = add nuw nsw i32 %storemerge25, 1
  br label %243, !llvm.loop !49

251:                                              ; preds = %243
  br label %252

252:                                              ; preds = %251
  br label %241, !llvm.loop !50

253:                                              ; preds = %241
  br label %254

254:                                              ; preds = %253
  %255 = add nuw nsw i32 %storemerge13, 1
  br label %238, !llvm.loop !51

256:                                              ; preds = %238
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %257

257:                                              ; preds = %276, %256
  %258 = phi i1 [ true, %256 ], [ false, %276 ]
  br i1 %258, label %259, label %277

259:                                              ; preds = %257
  br label %260

260:                                              ; preds = %273, %259
  %storemerge22 = phi i32 [ 0, %259 ], [ %274, %273 ]
  %261 = icmp samesign ult i32 %storemerge22, 2
  br i1 %261, label %262, label %275

262:                                              ; preds = %260
  %263 = shl nuw nsw i32 %storemerge22, 3
  br label %264

264:                                              ; preds = %270, %262
  %storemerge23 = phi i32 [ 0, %262 ], [ %271, %270 ]
  %265 = icmp samesign ult i32 %storemerge23, 2
  br i1 %265, label %266, label %272

266:                                              ; preds = %264
  %267 = shl nuw nsw i32 %storemerge23, 6
  %.reass61 = or disjoint i32 %267, %263
  %268 = zext nneg i32 %.reass61 to i64
  %269 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %268
  store i32 1, ptr %269, align 4
  br label %270

270:                                              ; preds = %266
  %271 = add nuw nsw i32 %storemerge23, 1
  br label %264, !llvm.loop !52

272:                                              ; preds = %264
  br label %273

273:                                              ; preds = %272
  %274 = add nuw nsw i32 %storemerge22, 1
  br label %260, !llvm.loop !53

275:                                              ; preds = %260
  br label %276

276:                                              ; preds = %275
  br label %257, !llvm.loop !54

277:                                              ; preds = %257
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %278

278:                                              ; preds = %298, %277
  %storemerge15 = phi i32 [ 0, %277 ], [ %299, %298 ]
  %279 = icmp samesign ult i32 %storemerge15, 2
  br i1 %279, label %280, label %300

280:                                              ; preds = %278
  br label %281

281:                                              ; preds = %295, %280
  %storemerge20 = phi i32 [ 0, %280 ], [ %296, %295 ]
  %282 = icmp samesign ult i32 %storemerge20, 2
  br i1 %282, label %283, label %297

283:                                              ; preds = %281
  %284 = shl nuw nsw i32 %storemerge20, 3
  br label %285

285:                                              ; preds = %292, %283
  %storemerge21 = phi i32 [ 0, %283 ], [ %293, %292 ]
  %286 = icmp samesign ult i32 %storemerge21, 2
  br i1 %286, label %287, label %294

287:                                              ; preds = %285
  %288 = shl nuw nsw i32 %storemerge21, 6
  %289 = or disjoint i32 %284, %288
  %.reass66 = or disjoint i32 %289, %storemerge15
  %290 = zext nneg i32 %.reass66 to i64
  %291 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %290
  store i32 1, ptr %291, align 4
  br label %292

292:                                              ; preds = %287
  %293 = add nuw nsw i32 %storemerge21, 1
  br label %285, !llvm.loop !55

294:                                              ; preds = %285
  br label %295

295:                                              ; preds = %294
  %296 = add nuw nsw i32 %storemerge20, 1
  br label %281, !llvm.loop !56

297:                                              ; preds = %281
  br label %298

298:                                              ; preds = %297
  %299 = add nuw nsw i32 %storemerge15, 1
  br label %278, !llvm.loop !57

300:                                              ; preds = %278
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 73, ptr %1, align 4
  store i32 0, ptr @kount, align 4
  %301 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %301, 0
  br i1 %.not, label %305, label %302

302:                                              ; preds = %300
  %303 = load i32, ptr %1, align 4
  %304 = call i32 @Place(i32 noundef 0, i32 noundef %303)
  store i32 %304, ptr @n, align 4
  br label %306

305:                                              ; preds = %300
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %306

306:                                              ; preds = %305, %302
  %307 = load i32, ptr @n, align 4
  %308 = call i32 @Trial(i32 noundef %307)
  %.not16 = icmp eq i32 %308, 0
  br i1 %.not16, label %309, label %310

309:                                              ; preds = %306
  %puts17 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %314

310:                                              ; preds = %306
  %311 = load i32, ptr @kount, align 4
  %.not18 = icmp eq i32 %311, 2005
  br i1 %.not18, label %313, label %312

312:                                              ; preds = %310
  %puts19 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %313

313:                                              ; preds = %312, %310
  br label %314

314:                                              ; preds = %313, %309
  %315 = load i32, ptr @n, align 4
  %316 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %315) #4
  %317 = load i32, ptr @kount, align 4
  %318 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %317) #4
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %4, %0
  %storemerge = phi i32 [ 0, %0 ], [ %5, %4 ]
  %2 = icmp samesign ult i32 %storemerge, 100
  br i1 %2, label %3, label %6

3:                                                ; preds = %1
  call void @Puzzle()
  br label %4

4:                                                ; preds = %3
  %5 = add nuw nsw i32 %storemerge, 1
  br label %1, !llvm.loop !58

6:                                                ; preds = %1
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
