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
  %.phi.trans.insert = sext i32 %0 to i64
  %.phi.trans.insert1 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert1, align 4
  br label %3

3:                                                ; preds = %16, %2
  %storemerge = phi i32 [ 0, %2 ], [ %17, %16 ]
  %.not = icmp sgt i32 %storemerge, %.pre
  br i1 %.not, label %18, label %4

4:                                                ; preds = %3
  %5 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  %6 = sext i32 %storemerge to i64
  %7 = getelementptr inbounds [4 x i8], ptr %5, i64 %6
  %8 = load i32, ptr %7, align 4
  %.not2 = icmp eq i32 %8, 0
  br i1 %.not2, label %16, label %9

9:                                                ; preds = %4
  %10 = add nsw i32 %1, %storemerge
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %11
  %13 = load i32, ptr %12, align 4
  %.not3 = icmp eq i32 %13, 0
  br i1 %.not3, label %15, label %14

14:                                               ; preds = %9
  br label %19

15:                                               ; preds = %9
  br label %16

16:                                               ; preds = %15, %4
  %17 = add nsw i32 %storemerge, 1
  br label %3, !llvm.loop !7

18:                                               ; preds = %3
  br label %19

19:                                               ; preds = %18, %14
  %storemerge1 = phi i32 [ 1, %18 ], [ 0, %14 ]
  ret i32 %storemerge1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Place(i32 noundef %0, i32 noundef %1) #0 {
  %.phi.trans.insert = sext i32 %0 to i64
  %.phi.trans.insert1 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert1, align 4
  br label %3

3:                                                ; preds = %13, %2
  %storemerge = phi i32 [ 0, %2 ], [ %14, %13 ]
  %.not = icmp sgt i32 %storemerge, %.pre
  br i1 %.not, label %15, label %4

4:                                                ; preds = %3
  %5 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  %6 = sext i32 %storemerge to i64
  %7 = getelementptr inbounds [4 x i8], ptr %5, i64 %6
  %8 = load i32, ptr %7, align 4
  %.not4 = icmp eq i32 %8, 0
  br i1 %.not4, label %13, label %9

9:                                                ; preds = %4
  %10 = add nsw i32 %1, %storemerge
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %11
  store i32 1, ptr %12, align 4
  br label %13

13:                                               ; preds = %9, %4
  %14 = add nsw i32 %storemerge, 1
  br label %3, !llvm.loop !9

15:                                               ; preds = %3
  %16 = getelementptr inbounds [4 x i8], ptr @class, i64 %.phi.trans.insert
  %17 = load i32, ptr %16, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %18
  %20 = load i32, ptr %19, align 4
  %21 = add nsw i32 %20, -1
  store i32 %21, ptr %19, align 4
  %22 = sext i32 %1 to i64
  %smax = call i32 @llvm.smax.i32(i32 %1, i32 512)
  %wide.trip.count = sext i32 %smax to i64
  br label %23

23:                                               ; preds = %29, %15
  %indvars.iv = phi i64 [ %indvars.iv.next, %29 ], [ %22, %15 ]
  %24 = trunc nsw i64 %indvars.iv to i32
  %exitcond = icmp ne i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %25, label %30

25:                                               ; preds = %23
  %26 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %indvars.iv
  %27 = load i32, ptr %26, align 4
  %.not3 = icmp eq i32 %27, 0
  br i1 %.not3, label %28, label %29

28:                                               ; preds = %25
  br label %31

29:                                               ; preds = %25
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %23, !llvm.loop !10

30:                                               ; preds = %23
  br label %31

31:                                               ; preds = %30, %28
  %storemerge2 = phi i32 [ 0, %30 ], [ %24, %28 ]
  ret i32 %storemerge2
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Remove(i32 noundef %0, i32 noundef %1) #0 {
  %.phi.trans.insert = sext i32 %0 to i64
  %.phi.trans.insert1 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert1, align 4
  br label %3

3:                                                ; preds = %13, %2
  %storemerge = phi i32 [ 0, %2 ], [ %14, %13 ]
  %.not = icmp sgt i32 %storemerge, %.pre
  br i1 %.not, label %15, label %4

4:                                                ; preds = %3
  %5 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  %6 = sext i32 %storemerge to i64
  %7 = getelementptr inbounds [4 x i8], ptr %5, i64 %6
  %8 = load i32, ptr %7, align 4
  %.not1 = icmp eq i32 %8, 0
  br i1 %.not1, label %13, label %9

9:                                                ; preds = %4
  %10 = add nsw i32 %1, %storemerge
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %11
  store i32 0, ptr %12, align 4
  br label %13

13:                                               ; preds = %9, %4
  %14 = add nsw i32 %storemerge, 1
  br label %3, !llvm.loop !11

15:                                               ; preds = %3
  %16 = getelementptr inbounds [4 x i8], ptr @class, i64 %.phi.trans.insert
  %17 = load i32, ptr %16, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %18
  %20 = load i32, ptr %19, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, ptr %19, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Trial(i32 noundef %0) #0 {
  %2 = load i32, ptr @kount, align 4
  %3 = add nsw i32 %2, 1
  store i32 %3, ptr @kount, align 4
  br label %4

4:                                                ; preds = %23, %1
  %storemerge = phi i32 [ 0, %1 ], [ %24, %23 ]
  %5 = icmp slt i32 %storemerge, 13
  br i1 %5, label %6, label %25

6:                                                ; preds = %4
  %7 = sext i32 %storemerge to i64
  %8 = getelementptr inbounds [4 x i8], ptr @class, i64 %7
  %9 = load i32, ptr %8, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %10
  %12 = load i32, ptr %11, align 4
  %.not = icmp eq i32 %12, 0
  br i1 %.not, label %23, label %13

13:                                               ; preds = %6
  %14 = call i32 @Fit(i32 noundef %storemerge, i32 noundef %0)
  %.not2 = icmp eq i32 %14, 0
  br i1 %.not2, label %22, label %15

15:                                               ; preds = %13
  %16 = call i32 @Place(i32 noundef %storemerge, i32 noundef %0)
  %17 = call i32 @Trial(i32 noundef %16)
  %.not3 = icmp eq i32 %17, 0
  br i1 %.not3, label %18, label %20

18:                                               ; preds = %15
  %19 = icmp eq i32 %16, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %18, %15
  br label %26

21:                                               ; preds = %18
  call void @Remove(i32 noundef %storemerge, i32 noundef %0)
  br label %22

22:                                               ; preds = %21, %13
  br label %23

23:                                               ; preds = %22, %6
  %24 = add nsw i32 %storemerge, 1
  br label %4, !llvm.loop !12

25:                                               ; preds = %4
  br label %26

26:                                               ; preds = %25, %20
  %storemerge1 = phi i32 [ 0, %25 ], [ 1, %20 ]
  ret i32 %storemerge1
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Puzzle() #0 {
  br label %1

1:                                                ; preds = %3, %0
  %storemerge = phi i32 [ 0, %0 ], [ %6, %3 ]
  %2 = icmp slt i32 %storemerge, 512
  br i1 %2, label %3, label %7

3:                                                ; preds = %1
  %4 = sext i32 %storemerge to i64
  %5 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %4
  store i32 1, ptr %5, align 4
  %6 = add nsw i32 %storemerge, 1
  br label %1, !llvm.loop !13

7:                                                ; preds = %1
  br label %8

8:                                                ; preds = %26, %7
  %storemerge1 = phi i32 [ 1, %7 ], [ %27, %26 ]
  %9 = icmp slt i32 %storemerge1, 6
  br i1 %9, label %10, label %28

10:                                               ; preds = %8
  br label %11

11:                                               ; preds = %24, %10
  %storemerge47 = phi i32 [ 1, %10 ], [ %25, %24 ]
  %12 = icmp slt i32 %storemerge47, 6
  br i1 %12, label %13, label %26

13:                                               ; preds = %11
  br label %14

14:                                               ; preds = %16, %13
  %storemerge48 = phi i32 [ 1, %13 ], [ %23, %16 ]
  %15 = icmp slt i32 %storemerge48, 6
  br i1 %15, label %16, label %24

16:                                               ; preds = %14
  %17 = shl i32 %storemerge48, 6
  %18 = shl i32 %storemerge47, 3
  %19 = add i32 %17, %18
  %20 = add nsw i32 %storemerge1, %19
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %21
  store i32 0, ptr %22, align 4
  %23 = add nsw i32 %storemerge48, 1
  br label %14, !llvm.loop !14

24:                                               ; preds = %14
  %25 = add nsw i32 %storemerge47, 1
  br label %11, !llvm.loop !15

26:                                               ; preds = %11
  %27 = add nsw i32 %storemerge1, 1
  br label %8, !llvm.loop !16

28:                                               ; preds = %8
  br label %29

29:                                               ; preds = %40, %28
  %storemerge2 = phi i32 [ 0, %28 ], [ %41, %40 ]
  %30 = icmp slt i32 %storemerge2, 13
  br i1 %30, label %31, label %42

31:                                               ; preds = %29
  br label %32

32:                                               ; preds = %34, %31
  %storemerge46 = phi i32 [ 0, %31 ], [ %39, %34 ]
  %33 = icmp slt i32 %storemerge46, 512
  br i1 %33, label %34, label %40

34:                                               ; preds = %32
  %35 = sext i32 %storemerge2 to i64
  %36 = getelementptr inbounds [2048 x i8], ptr @p, i64 %35
  %37 = sext i32 %storemerge46 to i64
  %38 = getelementptr inbounds [4 x i8], ptr %36, i64 %37
  store i32 0, ptr %38, align 4
  %39 = add nsw i32 %storemerge46, 1
  br label %32, !llvm.loop !17

40:                                               ; preds = %32
  %41 = add nsw i32 %storemerge2, 1
  br label %29, !llvm.loop !18

42:                                               ; preds = %29
  br label %43

43:                                               ; preds = %61, %42
  %storemerge3 = phi i32 [ 0, %42 ], [ %62, %61 ]
  %44 = icmp slt i32 %storemerge3, 4
  br i1 %44, label %45, label %63

45:                                               ; preds = %43
  br label %46

46:                                               ; preds = %59, %45
  %storemerge44 = phi i32 [ 0, %45 ], [ %60, %59 ]
  %47 = icmp slt i32 %storemerge44, 2
  br i1 %47, label %48, label %61

48:                                               ; preds = %46
  br label %49

49:                                               ; preds = %51, %48
  %storemerge45 = phi i32 [ 0, %48 ], [ %58, %51 ]
  %50 = icmp slt i32 %storemerge45, 1
  br i1 %50, label %51, label %59

51:                                               ; preds = %49
  %52 = shl i32 %storemerge45, 6
  %53 = shl i32 %storemerge44, 3
  %54 = add i32 %52, %53
  %55 = add nsw i32 %storemerge3, %54
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [4 x i8], ptr @p, i64 %56
  store i32 1, ptr %57, align 4
  %58 = add nsw i32 %storemerge45, 1
  br label %49, !llvm.loop !19

59:                                               ; preds = %49
  %60 = add nsw i32 %storemerge44, 1
  br label %46, !llvm.loop !20

61:                                               ; preds = %46
  %62 = add nsw i32 %storemerge3, 1
  br label %43, !llvm.loop !21

63:                                               ; preds = %43
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %64

64:                                               ; preds = %82, %63
  %storemerge4 = phi i32 [ 0, %63 ], [ %83, %82 ]
  %65 = icmp slt i32 %storemerge4, 2
  br i1 %65, label %66, label %84

66:                                               ; preds = %64
  br label %67

67:                                               ; preds = %80, %66
  %storemerge42 = phi i32 [ 0, %66 ], [ %81, %80 ]
  %68 = icmp slt i32 %storemerge42, 1
  br i1 %68, label %69, label %82

69:                                               ; preds = %67
  br label %70

70:                                               ; preds = %72, %69
  %storemerge43 = phi i32 [ 0, %69 ], [ %79, %72 ]
  %71 = icmp slt i32 %storemerge43, 4
  br i1 %71, label %72, label %80

72:                                               ; preds = %70
  %73 = shl i32 %storemerge43, 6
  %74 = shl i32 %storemerge42, 3
  %75 = add i32 %73, %74
  %76 = add nsw i32 %storemerge4, %75
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %77
  store i32 1, ptr %78, align 4
  %79 = add nsw i32 %storemerge43, 1
  br label %70, !llvm.loop !22

80:                                               ; preds = %70
  %81 = add nsw i32 %storemerge42, 1
  br label %67, !llvm.loop !23

82:                                               ; preds = %67
  %83 = add nsw i32 %storemerge4, 1
  br label %64, !llvm.loop !24

84:                                               ; preds = %64
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %85

85:                                               ; preds = %103, %84
  %storemerge5 = phi i32 [ 0, %84 ], [ %104, %103 ]
  %86 = icmp slt i32 %storemerge5, 1
  br i1 %86, label %87, label %105

87:                                               ; preds = %85
  br label %88

88:                                               ; preds = %101, %87
  %storemerge40 = phi i32 [ 0, %87 ], [ %102, %101 ]
  %89 = icmp slt i32 %storemerge40, 4
  br i1 %89, label %90, label %103

90:                                               ; preds = %88
  br label %91

91:                                               ; preds = %93, %90
  %storemerge41 = phi i32 [ 0, %90 ], [ %100, %93 ]
  %92 = icmp slt i32 %storemerge41, 2
  br i1 %92, label %93, label %101

93:                                               ; preds = %91
  %94 = shl i32 %storemerge41, 6
  %95 = shl i32 %storemerge40, 3
  %96 = add i32 %94, %95
  %97 = add nsw i32 %storemerge5, %96
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %98
  store i32 1, ptr %99, align 4
  %100 = add nsw i32 %storemerge41, 1
  br label %91, !llvm.loop !25

101:                                              ; preds = %91
  %102 = add nsw i32 %storemerge40, 1
  br label %88, !llvm.loop !26

103:                                              ; preds = %88
  %104 = add nsw i32 %storemerge5, 1
  br label %85, !llvm.loop !27

105:                                              ; preds = %85
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %106

106:                                              ; preds = %124, %105
  %storemerge6 = phi i32 [ 0, %105 ], [ %125, %124 ]
  %107 = icmp slt i32 %storemerge6, 2
  br i1 %107, label %108, label %126

108:                                              ; preds = %106
  br label %109

109:                                              ; preds = %122, %108
  %storemerge38 = phi i32 [ 0, %108 ], [ %123, %122 ]
  %110 = icmp slt i32 %storemerge38, 4
  br i1 %110, label %111, label %124

111:                                              ; preds = %109
  br label %112

112:                                              ; preds = %114, %111
  %storemerge39 = phi i32 [ 0, %111 ], [ %121, %114 ]
  %113 = icmp slt i32 %storemerge39, 1
  br i1 %113, label %114, label %122

114:                                              ; preds = %112
  %115 = shl i32 %storemerge39, 6
  %116 = shl i32 %storemerge38, 3
  %117 = add i32 %115, %116
  %118 = add nsw i32 %storemerge6, %117
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %119
  store i32 1, ptr %120, align 4
  %121 = add nsw i32 %storemerge39, 1
  br label %112, !llvm.loop !28

122:                                              ; preds = %112
  %123 = add nsw i32 %storemerge38, 1
  br label %109, !llvm.loop !29

124:                                              ; preds = %109
  %125 = add nsw i32 %storemerge6, 1
  br label %106, !llvm.loop !30

126:                                              ; preds = %106
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %127

127:                                              ; preds = %145, %126
  %storemerge7 = phi i32 [ 0, %126 ], [ %146, %145 ]
  %128 = icmp slt i32 %storemerge7, 4
  br i1 %128, label %129, label %147

129:                                              ; preds = %127
  br label %130

130:                                              ; preds = %143, %129
  %storemerge36 = phi i32 [ 0, %129 ], [ %144, %143 ]
  %131 = icmp slt i32 %storemerge36, 1
  br i1 %131, label %132, label %145

132:                                              ; preds = %130
  br label %133

133:                                              ; preds = %135, %132
  %storemerge37 = phi i32 [ 0, %132 ], [ %142, %135 ]
  %134 = icmp slt i32 %storemerge37, 2
  br i1 %134, label %135, label %143

135:                                              ; preds = %133
  %136 = shl i32 %storemerge37, 6
  %137 = shl i32 %storemerge36, 3
  %138 = add i32 %136, %137
  %139 = add nsw i32 %storemerge7, %138
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %140
  store i32 1, ptr %141, align 4
  %142 = add nsw i32 %storemerge37, 1
  br label %133, !llvm.loop !31

143:                                              ; preds = %133
  %144 = add nsw i32 %storemerge36, 1
  br label %130, !llvm.loop !32

145:                                              ; preds = %130
  %146 = add nsw i32 %storemerge7, 1
  br label %127, !llvm.loop !33

147:                                              ; preds = %127
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %148

148:                                              ; preds = %166, %147
  %storemerge8 = phi i32 [ 0, %147 ], [ %167, %166 ]
  %149 = icmp slt i32 %storemerge8, 1
  br i1 %149, label %150, label %168

150:                                              ; preds = %148
  br label %151

151:                                              ; preds = %164, %150
  %storemerge34 = phi i32 [ 0, %150 ], [ %165, %164 ]
  %152 = icmp slt i32 %storemerge34, 2
  br i1 %152, label %153, label %166

153:                                              ; preds = %151
  br label %154

154:                                              ; preds = %156, %153
  %storemerge35 = phi i32 [ 0, %153 ], [ %163, %156 ]
  %155 = icmp slt i32 %storemerge35, 4
  br i1 %155, label %156, label %164

156:                                              ; preds = %154
  %157 = shl i32 %storemerge35, 6
  %158 = shl i32 %storemerge34, 3
  %159 = add i32 %157, %158
  %160 = add nsw i32 %storemerge8, %159
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %161
  store i32 1, ptr %162, align 4
  %163 = add nsw i32 %storemerge35, 1
  br label %154, !llvm.loop !34

164:                                              ; preds = %154
  %165 = add nsw i32 %storemerge34, 1
  br label %151, !llvm.loop !35

166:                                              ; preds = %151
  %167 = add nsw i32 %storemerge8, 1
  br label %148, !llvm.loop !36

168:                                              ; preds = %148
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %169

169:                                              ; preds = %187, %168
  %storemerge9 = phi i32 [ 0, %168 ], [ %188, %187 ]
  %170 = icmp slt i32 %storemerge9, 3
  br i1 %170, label %171, label %189

171:                                              ; preds = %169
  br label %172

172:                                              ; preds = %185, %171
  %storemerge32 = phi i32 [ 0, %171 ], [ %186, %185 ]
  %173 = icmp slt i32 %storemerge32, 1
  br i1 %173, label %174, label %187

174:                                              ; preds = %172
  br label %175

175:                                              ; preds = %177, %174
  %storemerge33 = phi i32 [ 0, %174 ], [ %184, %177 ]
  %176 = icmp slt i32 %storemerge33, 1
  br i1 %176, label %177, label %185

177:                                              ; preds = %175
  %178 = shl i32 %storemerge33, 6
  %179 = shl i32 %storemerge32, 3
  %180 = add i32 %178, %179
  %181 = add nsw i32 %storemerge9, %180
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %182
  store i32 1, ptr %183, align 4
  %184 = add nsw i32 %storemerge33, 1
  br label %175, !llvm.loop !37

185:                                              ; preds = %175
  %186 = add nsw i32 %storemerge32, 1
  br label %172, !llvm.loop !38

187:                                              ; preds = %172
  %188 = add nsw i32 %storemerge9, 1
  br label %169, !llvm.loop !39

189:                                              ; preds = %169
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %190

190:                                              ; preds = %208, %189
  %storemerge10 = phi i32 [ 0, %189 ], [ %209, %208 ]
  %191 = icmp slt i32 %storemerge10, 1
  br i1 %191, label %192, label %210

192:                                              ; preds = %190
  br label %193

193:                                              ; preds = %206, %192
  %storemerge30 = phi i32 [ 0, %192 ], [ %207, %206 ]
  %194 = icmp slt i32 %storemerge30, 3
  br i1 %194, label %195, label %208

195:                                              ; preds = %193
  br label %196

196:                                              ; preds = %198, %195
  %storemerge31 = phi i32 [ 0, %195 ], [ %205, %198 ]
  %197 = icmp slt i32 %storemerge31, 1
  br i1 %197, label %198, label %206

198:                                              ; preds = %196
  %199 = shl i32 %storemerge31, 6
  %200 = shl i32 %storemerge30, 3
  %201 = add i32 %199, %200
  %202 = add nsw i32 %storemerge10, %201
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %203
  store i32 1, ptr %204, align 4
  %205 = add nsw i32 %storemerge31, 1
  br label %196, !llvm.loop !40

206:                                              ; preds = %196
  %207 = add nsw i32 %storemerge30, 1
  br label %193, !llvm.loop !41

208:                                              ; preds = %193
  %209 = add nsw i32 %storemerge10, 1
  br label %190, !llvm.loop !42

210:                                              ; preds = %190
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %211

211:                                              ; preds = %229, %210
  %storemerge11 = phi i32 [ 0, %210 ], [ %230, %229 ]
  %212 = icmp slt i32 %storemerge11, 1
  br i1 %212, label %213, label %231

213:                                              ; preds = %211
  br label %214

214:                                              ; preds = %227, %213
  %storemerge28 = phi i32 [ 0, %213 ], [ %228, %227 ]
  %215 = icmp slt i32 %storemerge28, 1
  br i1 %215, label %216, label %229

216:                                              ; preds = %214
  br label %217

217:                                              ; preds = %219, %216
  %storemerge29 = phi i32 [ 0, %216 ], [ %226, %219 ]
  %218 = icmp slt i32 %storemerge29, 3
  br i1 %218, label %219, label %227

219:                                              ; preds = %217
  %220 = shl i32 %storemerge29, 6
  %221 = shl i32 %storemerge28, 3
  %222 = add i32 %220, %221
  %223 = add nsw i32 %storemerge11, %222
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %224
  store i32 1, ptr %225, align 4
  %226 = add nsw i32 %storemerge29, 1
  br label %217, !llvm.loop !43

227:                                              ; preds = %217
  %228 = add nsw i32 %storemerge28, 1
  br label %214, !llvm.loop !44

229:                                              ; preds = %214
  %230 = add nsw i32 %storemerge11, 1
  br label %211, !llvm.loop !45

231:                                              ; preds = %211
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %232

232:                                              ; preds = %250, %231
  %storemerge12 = phi i32 [ 0, %231 ], [ %251, %250 ]
  %233 = icmp slt i32 %storemerge12, 2
  br i1 %233, label %234, label %252

234:                                              ; preds = %232
  br label %235

235:                                              ; preds = %248, %234
  %storemerge26 = phi i32 [ 0, %234 ], [ %249, %248 ]
  %236 = icmp slt i32 %storemerge26, 2
  br i1 %236, label %237, label %250

237:                                              ; preds = %235
  br label %238

238:                                              ; preds = %240, %237
  %storemerge27 = phi i32 [ 0, %237 ], [ %247, %240 ]
  %239 = icmp slt i32 %storemerge27, 1
  br i1 %239, label %240, label %248

240:                                              ; preds = %238
  %241 = shl i32 %storemerge27, 6
  %242 = shl i32 %storemerge26, 3
  %243 = add i32 %241, %242
  %244 = add nsw i32 %storemerge12, %243
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %245
  store i32 1, ptr %246, align 4
  %247 = add nsw i32 %storemerge27, 1
  br label %238, !llvm.loop !46

248:                                              ; preds = %238
  %249 = add nsw i32 %storemerge26, 1
  br label %235, !llvm.loop !47

250:                                              ; preds = %235
  %251 = add nsw i32 %storemerge12, 1
  br label %232, !llvm.loop !48

252:                                              ; preds = %232
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %253

253:                                              ; preds = %271, %252
  %storemerge13 = phi i32 [ 0, %252 ], [ %272, %271 ]
  %254 = icmp slt i32 %storemerge13, 2
  br i1 %254, label %255, label %273

255:                                              ; preds = %253
  br label %256

256:                                              ; preds = %269, %255
  %storemerge24 = phi i32 [ 0, %255 ], [ %270, %269 ]
  %257 = icmp slt i32 %storemerge24, 1
  br i1 %257, label %258, label %271

258:                                              ; preds = %256
  br label %259

259:                                              ; preds = %261, %258
  %storemerge25 = phi i32 [ 0, %258 ], [ %268, %261 ]
  %260 = icmp slt i32 %storemerge25, 2
  br i1 %260, label %261, label %269

261:                                              ; preds = %259
  %262 = shl i32 %storemerge25, 6
  %263 = shl i32 %storemerge24, 3
  %264 = add i32 %262, %263
  %265 = add nsw i32 %storemerge13, %264
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %266
  store i32 1, ptr %267, align 4
  %268 = add nsw i32 %storemerge25, 1
  br label %259, !llvm.loop !49

269:                                              ; preds = %259
  %270 = add nsw i32 %storemerge24, 1
  br label %256, !llvm.loop !50

271:                                              ; preds = %256
  %272 = add nsw i32 %storemerge13, 1
  br label %253, !llvm.loop !51

273:                                              ; preds = %253
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %274

274:                                              ; preds = %292, %273
  %storemerge14 = phi i32 [ 0, %273 ], [ %293, %292 ]
  %275 = icmp slt i32 %storemerge14, 1
  br i1 %275, label %276, label %294

276:                                              ; preds = %274
  br label %277

277:                                              ; preds = %290, %276
  %storemerge22 = phi i32 [ 0, %276 ], [ %291, %290 ]
  %278 = icmp slt i32 %storemerge22, 2
  br i1 %278, label %279, label %292

279:                                              ; preds = %277
  br label %280

280:                                              ; preds = %282, %279
  %storemerge23 = phi i32 [ 0, %279 ], [ %289, %282 ]
  %281 = icmp slt i32 %storemerge23, 2
  br i1 %281, label %282, label %290

282:                                              ; preds = %280
  %283 = shl i32 %storemerge23, 6
  %284 = shl i32 %storemerge22, 3
  %285 = add i32 %283, %284
  %286 = add nsw i32 %storemerge14, %285
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %287
  store i32 1, ptr %288, align 4
  %289 = add nsw i32 %storemerge23, 1
  br label %280, !llvm.loop !52

290:                                              ; preds = %280
  %291 = add nsw i32 %storemerge22, 1
  br label %277, !llvm.loop !53

292:                                              ; preds = %277
  %293 = add nsw i32 %storemerge14, 1
  br label %274, !llvm.loop !54

294:                                              ; preds = %274
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %295

295:                                              ; preds = %313, %294
  %storemerge15 = phi i32 [ 0, %294 ], [ %314, %313 ]
  %296 = icmp slt i32 %storemerge15, 2
  br i1 %296, label %297, label %315

297:                                              ; preds = %295
  br label %298

298:                                              ; preds = %311, %297
  %storemerge20 = phi i32 [ 0, %297 ], [ %312, %311 ]
  %299 = icmp slt i32 %storemerge20, 2
  br i1 %299, label %300, label %313

300:                                              ; preds = %298
  br label %301

301:                                              ; preds = %303, %300
  %storemerge21 = phi i32 [ 0, %300 ], [ %310, %303 ]
  %302 = icmp slt i32 %storemerge21, 2
  br i1 %302, label %303, label %311

303:                                              ; preds = %301
  %304 = shl i32 %storemerge21, 6
  %305 = shl i32 %storemerge20, 3
  %306 = add i32 %304, %305
  %307 = add nsw i32 %storemerge15, %306
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %308
  store i32 1, ptr %309, align 4
  %310 = add nsw i32 %storemerge21, 1
  br label %301, !llvm.loop !55

311:                                              ; preds = %301
  %312 = add nsw i32 %storemerge20, 1
  br label %298, !llvm.loop !56

313:                                              ; preds = %298
  %314 = add nsw i32 %storemerge15, 1
  br label %295, !llvm.loop !57

315:                                              ; preds = %295
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 0, ptr @kount, align 4
  %316 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %316, 0
  br i1 %.not, label %319, label %317

317:                                              ; preds = %315
  %318 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %318, ptr @n, align 4
  br label %320

319:                                              ; preds = %315
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %.pre = load i32, ptr @n, align 4
  br label %320

320:                                              ; preds = %319, %317
  %321 = phi i32 [ %.pre, %319 ], [ %318, %317 ]
  %322 = call i32 @Trial(i32 noundef %321)
  %.not16 = icmp eq i32 %322, 0
  br i1 %.not16, label %323, label %324

323:                                              ; preds = %320
  %puts17 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %328

324:                                              ; preds = %320
  %325 = load i32, ptr @kount, align 4
  %.not18 = icmp eq i32 %325, 2005
  br i1 %.not18, label %327, label %326

326:                                              ; preds = %324
  %puts19 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %327

327:                                              ; preds = %326, %324
  br label %328

328:                                              ; preds = %327, %323
  %329 = load i32, ptr @n, align 4
  %330 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %329) #4
  %331 = load i32, ptr @kount, align 4
  %332 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %331) #4
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %3, %0
  %storemerge = phi i32 [ 0, %0 ], [ %4, %3 ]
  %2 = icmp slt i32 %storemerge, 100
  br i1 %2, label %3, label %5

3:                                                ; preds = %1
  call void @Puzzle()
  %4 = add nsw i32 %storemerge, 1
  br label %1, !llvm.loop !58

5:                                                ; preds = %1
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
