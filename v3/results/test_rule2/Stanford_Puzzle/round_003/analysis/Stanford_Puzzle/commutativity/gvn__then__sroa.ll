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

3:                                                ; preds = %17, %2
  %4 = phi i32 [ 0, %2 ], [ %18, %17 ]
  %.not = icmp sgt i32 %4, %.pre
  br i1 %.not, label %19, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  %7 = sext i32 %4 to i64
  %8 = getelementptr inbounds [4 x i8], ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4
  %.not2 = icmp eq i32 %9, 0
  br i1 %.not2, label %17, label %10

10:                                               ; preds = %5
  %11 = add nsw i32 %1, %4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %12
  %14 = load i32, ptr %13, align 4
  %.not3 = icmp eq i32 %14, 0
  br i1 %.not3, label %16, label %15

15:                                               ; preds = %10
  br label %20

16:                                               ; preds = %10
  br label %17

17:                                               ; preds = %16, %5
  %18 = add nsw i32 %4, 1
  br label %3, !llvm.loop !7

19:                                               ; preds = %3
  br label %20

20:                                               ; preds = %19, %15
  %storemerge1 = phi i32 [ 1, %19 ], [ 0, %15 ]
  ret i32 %storemerge1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Place(i32 noundef %0, i32 noundef %1) #0 {
  %.phi.trans.insert = sext i32 %0 to i64
  %.phi.trans.insert1 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert1, align 4
  br label %3

3:                                                ; preds = %14, %2
  %4 = phi i32 [ 0, %2 ], [ %15, %14 ]
  %.not = icmp sgt i32 %4, %.pre
  br i1 %.not, label %16, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  %7 = sext i32 %4 to i64
  %8 = getelementptr inbounds [4 x i8], ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4
  %.not4 = icmp eq i32 %9, 0
  br i1 %.not4, label %14, label %10

10:                                               ; preds = %5
  %11 = add nsw i32 %1, %4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %12
  store i32 1, ptr %13, align 4
  br label %14

14:                                               ; preds = %10, %5
  %15 = add nsw i32 %4, 1
  br label %3, !llvm.loop !9

16:                                               ; preds = %3
  %17 = getelementptr inbounds [4 x i8], ptr @class, i64 %.phi.trans.insert
  %18 = load i32, ptr %17, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %19
  %21 = load i32, ptr %20, align 4
  %22 = add nsw i32 %21, -1
  store i32 %22, ptr %20, align 4
  %23 = sext i32 %1 to i64
  %smax = call i32 @llvm.smax.i32(i32 %1, i32 512)
  %wide.trip.count = sext i32 %smax to i64
  br label %24

24:                                               ; preds = %30, %16
  %indvars.iv = phi i64 [ %indvars.iv.next, %30 ], [ %23, %16 ]
  %25 = trunc nsw i64 %indvars.iv to i32
  %exitcond = icmp ne i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %26, label %31

26:                                               ; preds = %24
  %27 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %indvars.iv
  %28 = load i32, ptr %27, align 4
  %.not3 = icmp eq i32 %28, 0
  br i1 %.not3, label %29, label %30

29:                                               ; preds = %26
  br label %32

30:                                               ; preds = %26
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %24, !llvm.loop !10

31:                                               ; preds = %24
  br label %32

32:                                               ; preds = %31, %29
  %storemerge2 = phi i32 [ 0, %31 ], [ %25, %29 ]
  ret i32 %storemerge2
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Remove(i32 noundef %0, i32 noundef %1) #0 {
  %.phi.trans.insert = sext i32 %0 to i64
  %.phi.trans.insert1 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert1, align 4
  br label %3

3:                                                ; preds = %14, %2
  %4 = phi i32 [ 0, %2 ], [ %15, %14 ]
  %.not = icmp sgt i32 %4, %.pre
  br i1 %.not, label %16, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  %7 = sext i32 %4 to i64
  %8 = getelementptr inbounds [4 x i8], ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4
  %.not1 = icmp eq i32 %9, 0
  br i1 %.not1, label %14, label %10

10:                                               ; preds = %5
  %11 = add nsw i32 %1, %4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %12
  store i32 0, ptr %13, align 4
  br label %14

14:                                               ; preds = %10, %5
  %15 = add nsw i32 %4, 1
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

4:                                                ; preds = %26, %1
  %5 = phi i32 [ %0, %1 ], [ %27, %26 ]
  %6 = phi i32 [ 0, %1 ], [ %28, %26 ]
  %7 = icmp slt i32 %6, 13
  br i1 %7, label %8, label %29

8:                                                ; preds = %4
  %9 = sext i32 %6 to i64
  %10 = getelementptr inbounds [4 x i8], ptr @class, i64 %9
  %11 = load i32, ptr %10, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %12
  %14 = load i32, ptr %13, align 4
  %.not = icmp eq i32 %14, 0
  br i1 %.not, label %26, label %15

15:                                               ; preds = %8
  %16 = call i32 @Fit(i32 noundef %6, i32 noundef %5)
  %.not2 = icmp eq i32 %16, 0
  br i1 %.not2, label %24, label %17

17:                                               ; preds = %15
  %18 = call i32 @Place(i32 noundef %6, i32 noundef %5)
  %19 = call i32 @Trial(i32 noundef %18)
  %.not3 = icmp eq i32 %19, 0
  br i1 %.not3, label %20, label %22

20:                                               ; preds = %17
  %21 = icmp eq i32 %18, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %20, %17
  br label %30

23:                                               ; preds = %20
  call void @Remove(i32 noundef %6, i32 noundef %0)
  br label %24

24:                                               ; preds = %23, %15
  %25 = phi i32 [ %0, %23 ], [ %5, %15 ]
  br label %26

26:                                               ; preds = %24, %8
  %27 = phi i32 [ %25, %24 ], [ %5, %8 ]
  %28 = add nsw i32 %6, 1
  br label %4, !llvm.loop !12

29:                                               ; preds = %4
  br label %30

30:                                               ; preds = %29, %22
  %storemerge1 = phi i32 [ 0, %29 ], [ 1, %22 ]
  ret i32 %storemerge1
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Puzzle() #0 {
  br label %1

1:                                                ; preds = %4, %0
  %2 = phi i32 [ 0, %0 ], [ %7, %4 ]
  %3 = icmp slt i32 %2, 512
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = sext i32 %2 to i64
  %6 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %5
  store i32 1, ptr %6, align 4
  %7 = add nsw i32 %2, 1
  br label %1, !llvm.loop !13

8:                                                ; preds = %1
  br label %9

9:                                                ; preds = %32, %8
  %10 = phi i32 [ 1, %8 ], [ %33, %32 ]
  %11 = icmp slt i32 %10, 6
  br i1 %11, label %12, label %34

12:                                               ; preds = %9
  br label %13

13:                                               ; preds = %30, %12
  %14 = phi i32 [ %10, %12 ], [ %19, %30 ]
  %15 = phi i32 [ 1, %12 ], [ %31, %30 ]
  %16 = icmp slt i32 %15, 6
  br i1 %16, label %17, label %32

17:                                               ; preds = %13
  br label %18

18:                                               ; preds = %22, %17
  %19 = phi i32 [ %14, %17 ], [ %10, %22 ]
  %20 = phi i32 [ 1, %17 ], [ %29, %22 ]
  %21 = icmp slt i32 %20, 6
  br i1 %21, label %22, label %30

22:                                               ; preds = %18
  %23 = shl i32 %20, 6
  %24 = shl i32 %15, 3
  %25 = add i32 %23, %24
  %26 = add nsw i32 %10, %25
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %27
  store i32 0, ptr %28, align 4
  %29 = add nsw i32 %20, 1
  br label %18, !llvm.loop !14

30:                                               ; preds = %18
  %31 = add nsw i32 %15, 1
  br label %13, !llvm.loop !15

32:                                               ; preds = %13
  %33 = add nsw i32 %14, 1
  br label %9, !llvm.loop !16

34:                                               ; preds = %9
  br label %35

35:                                               ; preds = %48, %34
  %36 = phi i32 [ 0, %34 ], [ %49, %48 ]
  %37 = icmp slt i32 %36, 13
  br i1 %37, label %38, label %50

38:                                               ; preds = %35
  br label %39

39:                                               ; preds = %42, %38
  %40 = phi i32 [ 0, %38 ], [ %47, %42 ]
  %41 = icmp slt i32 %40, 512
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  %43 = sext i32 %36 to i64
  %44 = getelementptr inbounds [2048 x i8], ptr @p, i64 %43
  %45 = sext i32 %40 to i64
  %46 = getelementptr inbounds [4 x i8], ptr %44, i64 %45
  store i32 0, ptr %46, align 4
  %47 = add nsw i32 %40, 1
  br label %39, !llvm.loop !17

48:                                               ; preds = %39
  %49 = add nsw i32 %36, 1
  br label %35, !llvm.loop !18

50:                                               ; preds = %35
  br label %51

51:                                               ; preds = %74, %50
  %52 = phi i32 [ 0, %50 ], [ %75, %74 ]
  %53 = icmp slt i32 %52, 4
  br i1 %53, label %54, label %76

54:                                               ; preds = %51
  br label %55

55:                                               ; preds = %72, %54
  %56 = phi i32 [ %52, %54 ], [ %61, %72 ]
  %57 = phi i32 [ 0, %54 ], [ %73, %72 ]
  %58 = icmp slt i32 %57, 2
  br i1 %58, label %59, label %74

59:                                               ; preds = %55
  br label %60

60:                                               ; preds = %64, %59
  %61 = phi i32 [ %56, %59 ], [ %52, %64 ]
  %62 = phi i32 [ 0, %59 ], [ %71, %64 ]
  %63 = icmp slt i32 %62, 1
  br i1 %63, label %64, label %72

64:                                               ; preds = %60
  %65 = shl i32 %62, 6
  %66 = shl i32 %57, 3
  %67 = add i32 %65, %66
  %68 = add nsw i32 %52, %67
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [4 x i8], ptr @p, i64 %69
  store i32 1, ptr %70, align 4
  %71 = add nsw i32 %62, 1
  br label %60, !llvm.loop !19

72:                                               ; preds = %60
  %73 = add nsw i32 %57, 1
  br label %55, !llvm.loop !20

74:                                               ; preds = %55
  %75 = add nsw i32 %56, 1
  br label %51, !llvm.loop !21

76:                                               ; preds = %51
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %77

77:                                               ; preds = %100, %76
  %78 = phi i32 [ 0, %76 ], [ %101, %100 ]
  %79 = icmp slt i32 %78, 2
  br i1 %79, label %80, label %102

80:                                               ; preds = %77
  br label %81

81:                                               ; preds = %98, %80
  %82 = phi i32 [ %78, %80 ], [ %87, %98 ]
  %83 = phi i32 [ 0, %80 ], [ %99, %98 ]
  %84 = icmp slt i32 %83, 1
  br i1 %84, label %85, label %100

85:                                               ; preds = %81
  br label %86

86:                                               ; preds = %90, %85
  %87 = phi i32 [ %82, %85 ], [ %78, %90 ]
  %88 = phi i32 [ 0, %85 ], [ %97, %90 ]
  %89 = icmp slt i32 %88, 4
  br i1 %89, label %90, label %98

90:                                               ; preds = %86
  %91 = shl i32 %88, 6
  %92 = shl i32 %83, 3
  %93 = add i32 %91, %92
  %94 = add nsw i32 %78, %93
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %95
  store i32 1, ptr %96, align 4
  %97 = add nsw i32 %88, 1
  br label %86, !llvm.loop !22

98:                                               ; preds = %86
  %99 = add nsw i32 %83, 1
  br label %81, !llvm.loop !23

100:                                              ; preds = %81
  %101 = add nsw i32 %82, 1
  br label %77, !llvm.loop !24

102:                                              ; preds = %77
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %103

103:                                              ; preds = %126, %102
  %104 = phi i32 [ 0, %102 ], [ %127, %126 ]
  %105 = icmp slt i32 %104, 1
  br i1 %105, label %106, label %128

106:                                              ; preds = %103
  br label %107

107:                                              ; preds = %124, %106
  %108 = phi i32 [ %104, %106 ], [ %113, %124 ]
  %109 = phi i32 [ 0, %106 ], [ %125, %124 ]
  %110 = icmp slt i32 %109, 4
  br i1 %110, label %111, label %126

111:                                              ; preds = %107
  br label %112

112:                                              ; preds = %116, %111
  %113 = phi i32 [ %108, %111 ], [ %104, %116 ]
  %114 = phi i32 [ 0, %111 ], [ %123, %116 ]
  %115 = icmp slt i32 %114, 2
  br i1 %115, label %116, label %124

116:                                              ; preds = %112
  %117 = shl i32 %114, 6
  %118 = shl i32 %109, 3
  %119 = add i32 %117, %118
  %120 = add nsw i32 %104, %119
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %121
  store i32 1, ptr %122, align 4
  %123 = add nsw i32 %114, 1
  br label %112, !llvm.loop !25

124:                                              ; preds = %112
  %125 = add nsw i32 %109, 1
  br label %107, !llvm.loop !26

126:                                              ; preds = %107
  %127 = add nsw i32 %108, 1
  br label %103, !llvm.loop !27

128:                                              ; preds = %103
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %129

129:                                              ; preds = %152, %128
  %130 = phi i32 [ 0, %128 ], [ %153, %152 ]
  %131 = icmp slt i32 %130, 2
  br i1 %131, label %132, label %154

132:                                              ; preds = %129
  br label %133

133:                                              ; preds = %150, %132
  %134 = phi i32 [ %130, %132 ], [ %139, %150 ]
  %135 = phi i32 [ 0, %132 ], [ %151, %150 ]
  %136 = icmp slt i32 %135, 4
  br i1 %136, label %137, label %152

137:                                              ; preds = %133
  br label %138

138:                                              ; preds = %142, %137
  %139 = phi i32 [ %134, %137 ], [ %130, %142 ]
  %140 = phi i32 [ 0, %137 ], [ %149, %142 ]
  %141 = icmp slt i32 %140, 1
  br i1 %141, label %142, label %150

142:                                              ; preds = %138
  %143 = shl i32 %140, 6
  %144 = shl i32 %135, 3
  %145 = add i32 %143, %144
  %146 = add nsw i32 %130, %145
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %147
  store i32 1, ptr %148, align 4
  %149 = add nsw i32 %140, 1
  br label %138, !llvm.loop !28

150:                                              ; preds = %138
  %151 = add nsw i32 %135, 1
  br label %133, !llvm.loop !29

152:                                              ; preds = %133
  %153 = add nsw i32 %134, 1
  br label %129, !llvm.loop !30

154:                                              ; preds = %129
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %155

155:                                              ; preds = %178, %154
  %156 = phi i32 [ 0, %154 ], [ %179, %178 ]
  %157 = icmp slt i32 %156, 4
  br i1 %157, label %158, label %180

158:                                              ; preds = %155
  br label %159

159:                                              ; preds = %176, %158
  %160 = phi i32 [ %156, %158 ], [ %165, %176 ]
  %161 = phi i32 [ 0, %158 ], [ %177, %176 ]
  %162 = icmp slt i32 %161, 1
  br i1 %162, label %163, label %178

163:                                              ; preds = %159
  br label %164

164:                                              ; preds = %168, %163
  %165 = phi i32 [ %160, %163 ], [ %156, %168 ]
  %166 = phi i32 [ 0, %163 ], [ %175, %168 ]
  %167 = icmp slt i32 %166, 2
  br i1 %167, label %168, label %176

168:                                              ; preds = %164
  %169 = shl i32 %166, 6
  %170 = shl i32 %161, 3
  %171 = add i32 %169, %170
  %172 = add nsw i32 %156, %171
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %173
  store i32 1, ptr %174, align 4
  %175 = add nsw i32 %166, 1
  br label %164, !llvm.loop !31

176:                                              ; preds = %164
  %177 = add nsw i32 %161, 1
  br label %159, !llvm.loop !32

178:                                              ; preds = %159
  %179 = add nsw i32 %160, 1
  br label %155, !llvm.loop !33

180:                                              ; preds = %155
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %181

181:                                              ; preds = %204, %180
  %182 = phi i32 [ 0, %180 ], [ %205, %204 ]
  %183 = icmp slt i32 %182, 1
  br i1 %183, label %184, label %206

184:                                              ; preds = %181
  br label %185

185:                                              ; preds = %202, %184
  %186 = phi i32 [ %182, %184 ], [ %191, %202 ]
  %187 = phi i32 [ 0, %184 ], [ %203, %202 ]
  %188 = icmp slt i32 %187, 2
  br i1 %188, label %189, label %204

189:                                              ; preds = %185
  br label %190

190:                                              ; preds = %194, %189
  %191 = phi i32 [ %186, %189 ], [ %182, %194 ]
  %192 = phi i32 [ 0, %189 ], [ %201, %194 ]
  %193 = icmp slt i32 %192, 4
  br i1 %193, label %194, label %202

194:                                              ; preds = %190
  %195 = shl i32 %192, 6
  %196 = shl i32 %187, 3
  %197 = add i32 %195, %196
  %198 = add nsw i32 %182, %197
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %199
  store i32 1, ptr %200, align 4
  %201 = add nsw i32 %192, 1
  br label %190, !llvm.loop !34

202:                                              ; preds = %190
  %203 = add nsw i32 %187, 1
  br label %185, !llvm.loop !35

204:                                              ; preds = %185
  %205 = add nsw i32 %186, 1
  br label %181, !llvm.loop !36

206:                                              ; preds = %181
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %207

207:                                              ; preds = %230, %206
  %208 = phi i32 [ 0, %206 ], [ %231, %230 ]
  %209 = icmp slt i32 %208, 3
  br i1 %209, label %210, label %232

210:                                              ; preds = %207
  br label %211

211:                                              ; preds = %228, %210
  %212 = phi i32 [ %208, %210 ], [ %217, %228 ]
  %213 = phi i32 [ 0, %210 ], [ %229, %228 ]
  %214 = icmp slt i32 %213, 1
  br i1 %214, label %215, label %230

215:                                              ; preds = %211
  br label %216

216:                                              ; preds = %220, %215
  %217 = phi i32 [ %212, %215 ], [ %208, %220 ]
  %218 = phi i32 [ 0, %215 ], [ %227, %220 ]
  %219 = icmp slt i32 %218, 1
  br i1 %219, label %220, label %228

220:                                              ; preds = %216
  %221 = shl i32 %218, 6
  %222 = shl i32 %213, 3
  %223 = add i32 %221, %222
  %224 = add nsw i32 %208, %223
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %225
  store i32 1, ptr %226, align 4
  %227 = add nsw i32 %218, 1
  br label %216, !llvm.loop !37

228:                                              ; preds = %216
  %229 = add nsw i32 %213, 1
  br label %211, !llvm.loop !38

230:                                              ; preds = %211
  %231 = add nsw i32 %212, 1
  br label %207, !llvm.loop !39

232:                                              ; preds = %207
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %233

233:                                              ; preds = %256, %232
  %234 = phi i32 [ 0, %232 ], [ %257, %256 ]
  %235 = icmp slt i32 %234, 1
  br i1 %235, label %236, label %258

236:                                              ; preds = %233
  br label %237

237:                                              ; preds = %254, %236
  %238 = phi i32 [ %234, %236 ], [ %243, %254 ]
  %239 = phi i32 [ 0, %236 ], [ %255, %254 ]
  %240 = icmp slt i32 %239, 3
  br i1 %240, label %241, label %256

241:                                              ; preds = %237
  br label %242

242:                                              ; preds = %246, %241
  %243 = phi i32 [ %238, %241 ], [ %234, %246 ]
  %244 = phi i32 [ 0, %241 ], [ %253, %246 ]
  %245 = icmp slt i32 %244, 1
  br i1 %245, label %246, label %254

246:                                              ; preds = %242
  %247 = shl i32 %244, 6
  %248 = shl i32 %239, 3
  %249 = add i32 %247, %248
  %250 = add nsw i32 %234, %249
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %251
  store i32 1, ptr %252, align 4
  %253 = add nsw i32 %244, 1
  br label %242, !llvm.loop !40

254:                                              ; preds = %242
  %255 = add nsw i32 %239, 1
  br label %237, !llvm.loop !41

256:                                              ; preds = %237
  %257 = add nsw i32 %238, 1
  br label %233, !llvm.loop !42

258:                                              ; preds = %233
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %259

259:                                              ; preds = %282, %258
  %260 = phi i32 [ 0, %258 ], [ %283, %282 ]
  %261 = icmp slt i32 %260, 1
  br i1 %261, label %262, label %284

262:                                              ; preds = %259
  br label %263

263:                                              ; preds = %280, %262
  %264 = phi i32 [ %260, %262 ], [ %269, %280 ]
  %265 = phi i32 [ 0, %262 ], [ %281, %280 ]
  %266 = icmp slt i32 %265, 1
  br i1 %266, label %267, label %282

267:                                              ; preds = %263
  br label %268

268:                                              ; preds = %272, %267
  %269 = phi i32 [ %264, %267 ], [ %260, %272 ]
  %270 = phi i32 [ 0, %267 ], [ %279, %272 ]
  %271 = icmp slt i32 %270, 3
  br i1 %271, label %272, label %280

272:                                              ; preds = %268
  %273 = shl i32 %270, 6
  %274 = shl i32 %265, 3
  %275 = add i32 %273, %274
  %276 = add nsw i32 %260, %275
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %277
  store i32 1, ptr %278, align 4
  %279 = add nsw i32 %270, 1
  br label %268, !llvm.loop !43

280:                                              ; preds = %268
  %281 = add nsw i32 %265, 1
  br label %263, !llvm.loop !44

282:                                              ; preds = %263
  %283 = add nsw i32 %264, 1
  br label %259, !llvm.loop !45

284:                                              ; preds = %259
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %285

285:                                              ; preds = %308, %284
  %286 = phi i32 [ 0, %284 ], [ %309, %308 ]
  %287 = icmp slt i32 %286, 2
  br i1 %287, label %288, label %310

288:                                              ; preds = %285
  br label %289

289:                                              ; preds = %306, %288
  %290 = phi i32 [ %286, %288 ], [ %295, %306 ]
  %291 = phi i32 [ 0, %288 ], [ %307, %306 ]
  %292 = icmp slt i32 %291, 2
  br i1 %292, label %293, label %308

293:                                              ; preds = %289
  br label %294

294:                                              ; preds = %298, %293
  %295 = phi i32 [ %290, %293 ], [ %286, %298 ]
  %296 = phi i32 [ 0, %293 ], [ %305, %298 ]
  %297 = icmp slt i32 %296, 1
  br i1 %297, label %298, label %306

298:                                              ; preds = %294
  %299 = shl i32 %296, 6
  %300 = shl i32 %291, 3
  %301 = add i32 %299, %300
  %302 = add nsw i32 %286, %301
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %303
  store i32 1, ptr %304, align 4
  %305 = add nsw i32 %296, 1
  br label %294, !llvm.loop !46

306:                                              ; preds = %294
  %307 = add nsw i32 %291, 1
  br label %289, !llvm.loop !47

308:                                              ; preds = %289
  %309 = add nsw i32 %290, 1
  br label %285, !llvm.loop !48

310:                                              ; preds = %285
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %311

311:                                              ; preds = %334, %310
  %312 = phi i32 [ 0, %310 ], [ %335, %334 ]
  %313 = icmp slt i32 %312, 2
  br i1 %313, label %314, label %336

314:                                              ; preds = %311
  br label %315

315:                                              ; preds = %332, %314
  %316 = phi i32 [ %312, %314 ], [ %321, %332 ]
  %317 = phi i32 [ 0, %314 ], [ %333, %332 ]
  %318 = icmp slt i32 %317, 1
  br i1 %318, label %319, label %334

319:                                              ; preds = %315
  br label %320

320:                                              ; preds = %324, %319
  %321 = phi i32 [ %316, %319 ], [ %312, %324 ]
  %322 = phi i32 [ 0, %319 ], [ %331, %324 ]
  %323 = icmp slt i32 %322, 2
  br i1 %323, label %324, label %332

324:                                              ; preds = %320
  %325 = shl i32 %322, 6
  %326 = shl i32 %317, 3
  %327 = add i32 %325, %326
  %328 = add nsw i32 %312, %327
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %329
  store i32 1, ptr %330, align 4
  %331 = add nsw i32 %322, 1
  br label %320, !llvm.loop !49

332:                                              ; preds = %320
  %333 = add nsw i32 %317, 1
  br label %315, !llvm.loop !50

334:                                              ; preds = %315
  %335 = add nsw i32 %316, 1
  br label %311, !llvm.loop !51

336:                                              ; preds = %311
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %337

337:                                              ; preds = %360, %336
  %338 = phi i32 [ 0, %336 ], [ %361, %360 ]
  %339 = icmp slt i32 %338, 1
  br i1 %339, label %340, label %362

340:                                              ; preds = %337
  br label %341

341:                                              ; preds = %358, %340
  %342 = phi i32 [ %338, %340 ], [ %347, %358 ]
  %343 = phi i32 [ 0, %340 ], [ %359, %358 ]
  %344 = icmp slt i32 %343, 2
  br i1 %344, label %345, label %360

345:                                              ; preds = %341
  br label %346

346:                                              ; preds = %350, %345
  %347 = phi i32 [ %342, %345 ], [ %338, %350 ]
  %348 = phi i32 [ 0, %345 ], [ %357, %350 ]
  %349 = icmp slt i32 %348, 2
  br i1 %349, label %350, label %358

350:                                              ; preds = %346
  %351 = shl i32 %348, 6
  %352 = shl i32 %343, 3
  %353 = add i32 %351, %352
  %354 = add nsw i32 %338, %353
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %355
  store i32 1, ptr %356, align 4
  %357 = add nsw i32 %348, 1
  br label %346, !llvm.loop !52

358:                                              ; preds = %346
  %359 = add nsw i32 %343, 1
  br label %341, !llvm.loop !53

360:                                              ; preds = %341
  %361 = add nsw i32 %342, 1
  br label %337, !llvm.loop !54

362:                                              ; preds = %337
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %363

363:                                              ; preds = %386, %362
  %364 = phi i32 [ 0, %362 ], [ %387, %386 ]
  %365 = icmp slt i32 %364, 2
  br i1 %365, label %366, label %388

366:                                              ; preds = %363
  br label %367

367:                                              ; preds = %384, %366
  %368 = phi i32 [ %364, %366 ], [ %373, %384 ]
  %369 = phi i32 [ 0, %366 ], [ %385, %384 ]
  %370 = icmp slt i32 %369, 2
  br i1 %370, label %371, label %386

371:                                              ; preds = %367
  br label %372

372:                                              ; preds = %376, %371
  %373 = phi i32 [ %368, %371 ], [ %364, %376 ]
  %374 = phi i32 [ 0, %371 ], [ %383, %376 ]
  %375 = icmp slt i32 %374, 2
  br i1 %375, label %376, label %384

376:                                              ; preds = %372
  %377 = shl i32 %374, 6
  %378 = shl i32 %369, 3
  %379 = add i32 %377, %378
  %380 = add nsw i32 %364, %379
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %381
  store i32 1, ptr %382, align 4
  %383 = add nsw i32 %374, 1
  br label %372, !llvm.loop !55

384:                                              ; preds = %372
  %385 = add nsw i32 %369, 1
  br label %367, !llvm.loop !56

386:                                              ; preds = %367
  %387 = add nsw i32 %368, 1
  br label %363, !llvm.loop !57

388:                                              ; preds = %363
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 0, ptr @kount, align 4
  %389 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %389, 0
  br i1 %.not, label %392, label %390

390:                                              ; preds = %388
  %391 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %391, ptr @n, align 4
  br label %393

392:                                              ; preds = %388
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %.pre = load i32, ptr @n, align 4
  br label %393

393:                                              ; preds = %392, %390
  %394 = phi i32 [ %.pre, %392 ], [ %391, %390 ]
  %395 = call i32 @Trial(i32 noundef %394)
  %.not16 = icmp eq i32 %395, 0
  br i1 %.not16, label %396, label %397

396:                                              ; preds = %393
  %puts17 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %401

397:                                              ; preds = %393
  %398 = load i32, ptr @kount, align 4
  %.not18 = icmp eq i32 %398, 2005
  br i1 %.not18, label %400, label %399

399:                                              ; preds = %397
  %puts19 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %400

400:                                              ; preds = %399, %397
  br label %401

401:                                              ; preds = %400, %396
  %402 = load i32, ptr @n, align 4
  %403 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %402) #4
  %404 = load i32, ptr @kount, align 4
  %405 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %404) #4
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %4, %0
  %2 = phi i32 [ 0, %0 ], [ %5, %4 ]
  %3 = icmp slt i32 %2, 100
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  call void @Puzzle()
  %5 = add nsw i32 %2, 1
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
