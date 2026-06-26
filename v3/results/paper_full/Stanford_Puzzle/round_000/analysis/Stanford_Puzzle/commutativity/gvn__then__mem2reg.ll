; ModuleID = 'results\paper_full\Stanford_Puzzle\Stanford_Puzzle.ll'
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
  %.phi.trans.insert1 = getelementptr inbounds [13 x i32], ptr @piecemax, i64 0, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert1, align 4
  br label %3

3:                                                ; preds = %20, %2
  %4 = phi i32 [ %21, %20 ], [ 0, %2 ]
  %5 = icmp sle i32 %4, %.pre
  br i1 %5, label %6, label %22

6:                                                ; preds = %3
  %7 = getelementptr inbounds [13 x [512 x i32]], ptr @p, i64 0, i64 %.phi.trans.insert
  %8 = sext i32 %4 to i64
  %9 = getelementptr inbounds [512 x i32], ptr %7, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %6
  %13 = add nsw i32 %1, %4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %14
  %16 = load i32, ptr %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  br label %23

19:                                               ; preds = %12
  br label %20

20:                                               ; preds = %19, %6
  %21 = add nsw i32 %4, 1
  br label %3, !llvm.loop !7

22:                                               ; preds = %3
  br label %23

23:                                               ; preds = %22, %18
  %24 = phi i32 [ 1, %22 ], [ 0, %18 ]
  ret i32 %24
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Place(i32 noundef %0, i32 noundef %1) #0 {
  %.phi.trans.insert = sext i32 %0 to i64
  %.phi.trans.insert1 = getelementptr inbounds [13 x i32], ptr @piecemax, i64 0, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert1, align 4
  br label %3

3:                                                ; preds = %17, %2
  %4 = phi i32 [ %18, %17 ], [ %1, %2 ]
  %5 = phi i32 [ %19, %17 ], [ 0, %2 ]
  %6 = icmp sle i32 %5, %.pre
  br i1 %6, label %7, label %20

7:                                                ; preds = %3
  %8 = getelementptr inbounds [13 x [512 x i32]], ptr @p, i64 0, i64 %.phi.trans.insert
  %9 = sext i32 %5 to i64
  %10 = getelementptr inbounds [512 x i32], ptr %8, i64 0, i64 %9
  %11 = load i32, ptr %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %7
  %14 = add nsw i32 %1, %5
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %15
  store i32 1, ptr %16, align 4
  br label %17

17:                                               ; preds = %13, %7
  %18 = phi i32 [ %1, %13 ], [ %4, %7 ]
  %19 = add nsw i32 %5, 1
  br label %3, !llvm.loop !9

20:                                               ; preds = %3
  %21 = getelementptr inbounds [13 x i32], ptr @class, i64 0, i64 %.phi.trans.insert
  %22 = load i32, ptr %21, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [4 x i32], ptr @piececount, i64 0, i64 %23
  %25 = load i32, ptr %24, align 4
  %26 = sub nsw i32 %25, 1
  store i32 %26, ptr %24, align 4
  br label %27

27:                                               ; preds = %36, %20
  %28 = phi i32 [ %37, %36 ], [ %4, %20 ]
  %29 = icmp sle i32 %28, 511
  br i1 %29, label %30, label %38

30:                                               ; preds = %27
  %31 = sext i32 %28 to i64
  %32 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %31
  %33 = load i32, ptr %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  br label %39

36:                                               ; preds = %30
  %37 = add nsw i32 %28, 1
  br label %27, !llvm.loop !10

38:                                               ; preds = %27
  br label %39

39:                                               ; preds = %38, %35
  %40 = phi i32 [ 0, %38 ], [ %28, %35 ]
  ret i32 %40
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Remove(i32 noundef %0, i32 noundef %1) #0 {
  %.phi.trans.insert = sext i32 %0 to i64
  %.phi.trans.insert1 = getelementptr inbounds [13 x i32], ptr @piecemax, i64 0, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert1, align 4
  br label %3

3:                                                ; preds = %16, %2
  %4 = phi i32 [ %17, %16 ], [ 0, %2 ]
  %5 = icmp sle i32 %4, %.pre
  br i1 %5, label %6, label %18

6:                                                ; preds = %3
  %7 = getelementptr inbounds [13 x [512 x i32]], ptr @p, i64 0, i64 %.phi.trans.insert
  %8 = sext i32 %4 to i64
  %9 = getelementptr inbounds [512 x i32], ptr %7, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %6
  %13 = add nsw i32 %1, %4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %14
  store i32 0, ptr %15, align 4
  br label %16

16:                                               ; preds = %12, %6
  %17 = add nsw i32 %4, 1
  br label %3, !llvm.loop !11

18:                                               ; preds = %3
  %19 = getelementptr inbounds [13 x i32], ptr @class, i64 0, i64 %.phi.trans.insert
  %20 = load i32, ptr %19, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [4 x i32], ptr @piececount, i64 0, i64 %21
  %23 = load i32, ptr %22, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, ptr %22, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Trial(i32 noundef %0) #0 {
  %2 = load i32, ptr @kount, align 4
  %3 = add nsw i32 %2, 1
  store i32 %3, ptr @kount, align 4
  br label %4

4:                                                ; preds = %29, %1
  %5 = phi i32 [ %30, %29 ], [ %0, %1 ]
  %6 = phi i32 [ %31, %29 ], [ 0, %1 ]
  %7 = icmp sle i32 %6, 12
  br i1 %7, label %8, label %32

8:                                                ; preds = %4
  %9 = sext i32 %6 to i64
  %10 = getelementptr inbounds [13 x i32], ptr @class, i64 0, i64 %9
  %11 = load i32, ptr %10, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [4 x i32], ptr @piececount, i64 0, i64 %12
  %14 = load i32, ptr %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %29

16:                                               ; preds = %8
  %17 = call i32 @Fit(i32 noundef %6, i32 noundef %5)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %16
  %20 = call i32 @Place(i32 noundef %6, i32 noundef %5)
  %21 = call i32 @Trial(i32 noundef %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = icmp eq i32 %20, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %23, %19
  br label %33

26:                                               ; preds = %23
  call void @Remove(i32 noundef %6, i32 noundef %0)
  br label %27

27:                                               ; preds = %26, %16
  %28 = phi i32 [ %0, %26 ], [ %5, %16 ]
  br label %29

29:                                               ; preds = %27, %8
  %30 = phi i32 [ %28, %27 ], [ %5, %8 ]
  %31 = add nsw i32 %6, 1
  br label %4, !llvm.loop !12

32:                                               ; preds = %4
  br label %33

33:                                               ; preds = %32, %25
  %34 = phi i32 [ 0, %32 ], [ 1, %25 ]
  ret i32 %34
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Puzzle() #0 {
  br label %1

1:                                                ; preds = %4, %0
  %2 = phi i32 [ %7, %4 ], [ 0, %0 ]
  %3 = icmp sle i32 %2, 511
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = sext i32 %2 to i64
  %6 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %5
  store i32 1, ptr %6, align 4
  %7 = add nsw i32 %2, 1
  br label %1, !llvm.loop !13

8:                                                ; preds = %1
  br label %9

9:                                                ; preds = %32, %8
  %10 = phi i32 [ %33, %32 ], [ 1, %8 ]
  %11 = icmp sle i32 %10, 5
  br i1 %11, label %12, label %34

12:                                               ; preds = %9
  br label %13

13:                                               ; preds = %30, %12
  %14 = phi i32 [ %20, %30 ], [ %10, %12 ]
  %15 = phi i32 [ %31, %30 ], [ 1, %12 ]
  %16 = icmp sle i32 %15, 5
  br i1 %16, label %17, label %32

17:                                               ; preds = %13
  br label %18

18:                                               ; preds = %22, %17
  %19 = phi i32 [ %29, %22 ], [ 1, %17 ]
  %20 = phi i32 [ %10, %22 ], [ %14, %17 ]
  %21 = icmp sle i32 %19, 5
  br i1 %21, label %22, label %30

22:                                               ; preds = %18
  %23 = mul nsw i32 8, %19
  %24 = add nsw i32 %15, %23
  %25 = mul nsw i32 8, %24
  %26 = add nsw i32 %10, %25
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %27
  store i32 0, ptr %28, align 4
  %29 = add nsw i32 %19, 1
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
  %36 = phi i32 [ %49, %48 ], [ 0, %34 ]
  %37 = icmp sle i32 %36, 12
  br i1 %37, label %38, label %50

38:                                               ; preds = %35
  br label %39

39:                                               ; preds = %42, %38
  %40 = phi i32 [ %47, %42 ], [ 0, %38 ]
  %41 = icmp sle i32 %40, 511
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  %43 = sext i32 %36 to i64
  %44 = getelementptr inbounds [13 x [512 x i32]], ptr @p, i64 0, i64 %43
  %45 = sext i32 %40 to i64
  %46 = getelementptr inbounds [512 x i32], ptr %44, i64 0, i64 %45
  store i32 0, ptr %46, align 4
  %47 = add nsw i32 %40, 1
  br label %39, !llvm.loop !17

48:                                               ; preds = %39
  %49 = add nsw i32 %36, 1
  br label %35, !llvm.loop !18

50:                                               ; preds = %35
  br label %51

51:                                               ; preds = %74, %50
  %52 = phi i32 [ %75, %74 ], [ 0, %50 ]
  %53 = icmp sle i32 %52, 3
  br i1 %53, label %54, label %76

54:                                               ; preds = %51
  br label %55

55:                                               ; preds = %72, %54
  %56 = phi i32 [ %62, %72 ], [ %52, %54 ]
  %57 = phi i32 [ %73, %72 ], [ 0, %54 ]
  %58 = icmp sle i32 %57, 1
  br i1 %58, label %59, label %74

59:                                               ; preds = %55
  br label %60

60:                                               ; preds = %64, %59
  %61 = phi i32 [ %71, %64 ], [ 0, %59 ]
  %62 = phi i32 [ %52, %64 ], [ %56, %59 ]
  %63 = icmp sle i32 %61, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %60
  %65 = mul nsw i32 8, %61
  %66 = add nsw i32 %57, %65
  %67 = mul nsw i32 8, %66
  %68 = add nsw i32 %52, %67
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [512 x i32], ptr @p, i64 0, i64 %69
  store i32 1, ptr %70, align 4
  %71 = add nsw i32 %61, 1
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
  %78 = phi i32 [ %101, %100 ], [ 0, %76 ]
  %79 = icmp sle i32 %78, 1
  br i1 %79, label %80, label %102

80:                                               ; preds = %77
  br label %81

81:                                               ; preds = %98, %80
  %82 = phi i32 [ %88, %98 ], [ %78, %80 ]
  %83 = phi i32 [ %99, %98 ], [ 0, %80 ]
  %84 = icmp sle i32 %83, 0
  br i1 %84, label %85, label %100

85:                                               ; preds = %81
  br label %86

86:                                               ; preds = %90, %85
  %87 = phi i32 [ %97, %90 ], [ 0, %85 ]
  %88 = phi i32 [ %78, %90 ], [ %82, %85 ]
  %89 = icmp sle i32 %87, 3
  br i1 %89, label %90, label %98

90:                                               ; preds = %86
  %91 = mul nsw i32 8, %87
  %92 = add nsw i32 %83, %91
  %93 = mul nsw i32 8, %92
  %94 = add nsw i32 %78, %93
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 0, i64 %95
  store i32 1, ptr %96, align 4
  %97 = add nsw i32 %87, 1
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
  %104 = phi i32 [ %127, %126 ], [ 0, %102 ]
  %105 = icmp sle i32 %104, 0
  br i1 %105, label %106, label %128

106:                                              ; preds = %103
  br label %107

107:                                              ; preds = %124, %106
  %108 = phi i32 [ %114, %124 ], [ %104, %106 ]
  %109 = phi i32 [ %125, %124 ], [ 0, %106 ]
  %110 = icmp sle i32 %109, 3
  br i1 %110, label %111, label %126

111:                                              ; preds = %107
  br label %112

112:                                              ; preds = %116, %111
  %113 = phi i32 [ %123, %116 ], [ 0, %111 ]
  %114 = phi i32 [ %104, %116 ], [ %108, %111 ]
  %115 = icmp sle i32 %113, 1
  br i1 %115, label %116, label %124

116:                                              ; preds = %112
  %117 = mul nsw i32 8, %113
  %118 = add nsw i32 %109, %117
  %119 = mul nsw i32 8, %118
  %120 = add nsw i32 %104, %119
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 0, i64 %121
  store i32 1, ptr %122, align 4
  %123 = add nsw i32 %113, 1
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
  %130 = phi i32 [ %153, %152 ], [ 0, %128 ]
  %131 = icmp sle i32 %130, 1
  br i1 %131, label %132, label %154

132:                                              ; preds = %129
  br label %133

133:                                              ; preds = %150, %132
  %134 = phi i32 [ %140, %150 ], [ %130, %132 ]
  %135 = phi i32 [ %151, %150 ], [ 0, %132 ]
  %136 = icmp sle i32 %135, 3
  br i1 %136, label %137, label %152

137:                                              ; preds = %133
  br label %138

138:                                              ; preds = %142, %137
  %139 = phi i32 [ %149, %142 ], [ 0, %137 ]
  %140 = phi i32 [ %130, %142 ], [ %134, %137 ]
  %141 = icmp sle i32 %139, 0
  br i1 %141, label %142, label %150

142:                                              ; preds = %138
  %143 = mul nsw i32 8, %139
  %144 = add nsw i32 %135, %143
  %145 = mul nsw i32 8, %144
  %146 = add nsw i32 %130, %145
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 0, i64 %147
  store i32 1, ptr %148, align 4
  %149 = add nsw i32 %139, 1
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
  %156 = phi i32 [ %179, %178 ], [ 0, %154 ]
  %157 = icmp sle i32 %156, 3
  br i1 %157, label %158, label %180

158:                                              ; preds = %155
  br label %159

159:                                              ; preds = %176, %158
  %160 = phi i32 [ %166, %176 ], [ %156, %158 ]
  %161 = phi i32 [ %177, %176 ], [ 0, %158 ]
  %162 = icmp sle i32 %161, 0
  br i1 %162, label %163, label %178

163:                                              ; preds = %159
  br label %164

164:                                              ; preds = %168, %163
  %165 = phi i32 [ %175, %168 ], [ 0, %163 ]
  %166 = phi i32 [ %156, %168 ], [ %160, %163 ]
  %167 = icmp sle i32 %165, 1
  br i1 %167, label %168, label %176

168:                                              ; preds = %164
  %169 = mul nsw i32 8, %165
  %170 = add nsw i32 %161, %169
  %171 = mul nsw i32 8, %170
  %172 = add nsw i32 %156, %171
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 0, i64 %173
  store i32 1, ptr %174, align 4
  %175 = add nsw i32 %165, 1
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
  %182 = phi i32 [ %205, %204 ], [ 0, %180 ]
  %183 = icmp sle i32 %182, 0
  br i1 %183, label %184, label %206

184:                                              ; preds = %181
  br label %185

185:                                              ; preds = %202, %184
  %186 = phi i32 [ %192, %202 ], [ %182, %184 ]
  %187 = phi i32 [ %203, %202 ], [ 0, %184 ]
  %188 = icmp sle i32 %187, 1
  br i1 %188, label %189, label %204

189:                                              ; preds = %185
  br label %190

190:                                              ; preds = %194, %189
  %191 = phi i32 [ %201, %194 ], [ 0, %189 ]
  %192 = phi i32 [ %182, %194 ], [ %186, %189 ]
  %193 = icmp sle i32 %191, 3
  br i1 %193, label %194, label %202

194:                                              ; preds = %190
  %195 = mul nsw i32 8, %191
  %196 = add nsw i32 %187, %195
  %197 = mul nsw i32 8, %196
  %198 = add nsw i32 %182, %197
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 0, i64 %199
  store i32 1, ptr %200, align 4
  %201 = add nsw i32 %191, 1
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
  %208 = phi i32 [ %231, %230 ], [ 0, %206 ]
  %209 = icmp sle i32 %208, 2
  br i1 %209, label %210, label %232

210:                                              ; preds = %207
  br label %211

211:                                              ; preds = %228, %210
  %212 = phi i32 [ %218, %228 ], [ %208, %210 ]
  %213 = phi i32 [ %229, %228 ], [ 0, %210 ]
  %214 = icmp sle i32 %213, 0
  br i1 %214, label %215, label %230

215:                                              ; preds = %211
  br label %216

216:                                              ; preds = %220, %215
  %217 = phi i32 [ %227, %220 ], [ 0, %215 ]
  %218 = phi i32 [ %208, %220 ], [ %212, %215 ]
  %219 = icmp sle i32 %217, 0
  br i1 %219, label %220, label %228

220:                                              ; preds = %216
  %221 = mul nsw i32 8, %217
  %222 = add nsw i32 %213, %221
  %223 = mul nsw i32 8, %222
  %224 = add nsw i32 %208, %223
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 0, i64 %225
  store i32 1, ptr %226, align 4
  %227 = add nsw i32 %217, 1
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
  %234 = phi i32 [ %257, %256 ], [ 0, %232 ]
  %235 = icmp sle i32 %234, 0
  br i1 %235, label %236, label %258

236:                                              ; preds = %233
  br label %237

237:                                              ; preds = %254, %236
  %238 = phi i32 [ %244, %254 ], [ %234, %236 ]
  %239 = phi i32 [ %255, %254 ], [ 0, %236 ]
  %240 = icmp sle i32 %239, 2
  br i1 %240, label %241, label %256

241:                                              ; preds = %237
  br label %242

242:                                              ; preds = %246, %241
  %243 = phi i32 [ %253, %246 ], [ 0, %241 ]
  %244 = phi i32 [ %234, %246 ], [ %238, %241 ]
  %245 = icmp sle i32 %243, 0
  br i1 %245, label %246, label %254

246:                                              ; preds = %242
  %247 = mul nsw i32 8, %243
  %248 = add nsw i32 %239, %247
  %249 = mul nsw i32 8, %248
  %250 = add nsw i32 %234, %249
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 0, i64 %251
  store i32 1, ptr %252, align 4
  %253 = add nsw i32 %243, 1
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
  %260 = phi i32 [ %283, %282 ], [ 0, %258 ]
  %261 = icmp sle i32 %260, 0
  br i1 %261, label %262, label %284

262:                                              ; preds = %259
  br label %263

263:                                              ; preds = %280, %262
  %264 = phi i32 [ %270, %280 ], [ %260, %262 ]
  %265 = phi i32 [ %281, %280 ], [ 0, %262 ]
  %266 = icmp sle i32 %265, 0
  br i1 %266, label %267, label %282

267:                                              ; preds = %263
  br label %268

268:                                              ; preds = %272, %267
  %269 = phi i32 [ %279, %272 ], [ 0, %267 ]
  %270 = phi i32 [ %260, %272 ], [ %264, %267 ]
  %271 = icmp sle i32 %269, 2
  br i1 %271, label %272, label %280

272:                                              ; preds = %268
  %273 = mul nsw i32 8, %269
  %274 = add nsw i32 %265, %273
  %275 = mul nsw i32 8, %274
  %276 = add nsw i32 %260, %275
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 0, i64 %277
  store i32 1, ptr %278, align 4
  %279 = add nsw i32 %269, 1
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
  %286 = phi i32 [ %309, %308 ], [ 0, %284 ]
  %287 = icmp sle i32 %286, 1
  br i1 %287, label %288, label %310

288:                                              ; preds = %285
  br label %289

289:                                              ; preds = %306, %288
  %290 = phi i32 [ %296, %306 ], [ %286, %288 ]
  %291 = phi i32 [ %307, %306 ], [ 0, %288 ]
  %292 = icmp sle i32 %291, 1
  br i1 %292, label %293, label %308

293:                                              ; preds = %289
  br label %294

294:                                              ; preds = %298, %293
  %295 = phi i32 [ %305, %298 ], [ 0, %293 ]
  %296 = phi i32 [ %286, %298 ], [ %290, %293 ]
  %297 = icmp sle i32 %295, 0
  br i1 %297, label %298, label %306

298:                                              ; preds = %294
  %299 = mul nsw i32 8, %295
  %300 = add nsw i32 %291, %299
  %301 = mul nsw i32 8, %300
  %302 = add nsw i32 %286, %301
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 0, i64 %303
  store i32 1, ptr %304, align 4
  %305 = add nsw i32 %295, 1
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
  %312 = phi i32 [ %335, %334 ], [ 0, %310 ]
  %313 = icmp sle i32 %312, 1
  br i1 %313, label %314, label %336

314:                                              ; preds = %311
  br label %315

315:                                              ; preds = %332, %314
  %316 = phi i32 [ %322, %332 ], [ %312, %314 ]
  %317 = phi i32 [ %333, %332 ], [ 0, %314 ]
  %318 = icmp sle i32 %317, 0
  br i1 %318, label %319, label %334

319:                                              ; preds = %315
  br label %320

320:                                              ; preds = %324, %319
  %321 = phi i32 [ %331, %324 ], [ 0, %319 ]
  %322 = phi i32 [ %312, %324 ], [ %316, %319 ]
  %323 = icmp sle i32 %321, 1
  br i1 %323, label %324, label %332

324:                                              ; preds = %320
  %325 = mul nsw i32 8, %321
  %326 = add nsw i32 %317, %325
  %327 = mul nsw i32 8, %326
  %328 = add nsw i32 %312, %327
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 0, i64 %329
  store i32 1, ptr %330, align 4
  %331 = add nsw i32 %321, 1
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
  %338 = phi i32 [ %361, %360 ], [ 0, %336 ]
  %339 = icmp sle i32 %338, 0
  br i1 %339, label %340, label %362

340:                                              ; preds = %337
  br label %341

341:                                              ; preds = %358, %340
  %342 = phi i32 [ %348, %358 ], [ %338, %340 ]
  %343 = phi i32 [ %359, %358 ], [ 0, %340 ]
  %344 = icmp sle i32 %343, 1
  br i1 %344, label %345, label %360

345:                                              ; preds = %341
  br label %346

346:                                              ; preds = %350, %345
  %347 = phi i32 [ %357, %350 ], [ 0, %345 ]
  %348 = phi i32 [ %338, %350 ], [ %342, %345 ]
  %349 = icmp sle i32 %347, 1
  br i1 %349, label %350, label %358

350:                                              ; preds = %346
  %351 = mul nsw i32 8, %347
  %352 = add nsw i32 %343, %351
  %353 = mul nsw i32 8, %352
  %354 = add nsw i32 %338, %353
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 0, i64 %355
  store i32 1, ptr %356, align 4
  %357 = add nsw i32 %347, 1
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
  %364 = phi i32 [ %387, %386 ], [ 0, %362 ]
  %365 = icmp sle i32 %364, 1
  br i1 %365, label %366, label %388

366:                                              ; preds = %363
  br label %367

367:                                              ; preds = %384, %366
  %368 = phi i32 [ %374, %384 ], [ %364, %366 ]
  %369 = phi i32 [ %385, %384 ], [ 0, %366 ]
  %370 = icmp sle i32 %369, 1
  br i1 %370, label %371, label %386

371:                                              ; preds = %367
  br label %372

372:                                              ; preds = %376, %371
  %373 = phi i32 [ %383, %376 ], [ 0, %371 ]
  %374 = phi i32 [ %364, %376 ], [ %368, %371 ]
  %375 = icmp sle i32 %373, 1
  br i1 %375, label %376, label %384

376:                                              ; preds = %372
  %377 = mul nsw i32 8, %373
  %378 = add nsw i32 %369, %377
  %379 = mul nsw i32 8, %378
  %380 = add nsw i32 %364, %379
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 0, i64 %381
  store i32 1, ptr %382, align 4
  %383 = add nsw i32 %373, 1
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
  %390 = icmp ne i32 %389, 0
  br i1 %390, label %391, label %393

391:                                              ; preds = %388
  %392 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %392, ptr @n, align 4
  br label %395

393:                                              ; preds = %388
  %394 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %.pre = load i32, ptr @n, align 4
  br label %395

395:                                              ; preds = %393, %391
  %396 = phi i32 [ %.pre, %393 ], [ %392, %391 ]
  %397 = call i32 @Trial(i32 noundef %396)
  %398 = icmp ne i32 %397, 0
  br i1 %398, label %401, label %399

399:                                              ; preds = %395
  %400 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  br label %407

401:                                              ; preds = %395
  %402 = load i32, ptr @kount, align 4
  %403 = icmp ne i32 %402, 2005
  br i1 %403, label %404, label %406

404:                                              ; preds = %401
  %405 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %406

406:                                              ; preds = %404, %401
  br label %407

407:                                              ; preds = %406, %399
  %408 = load i32, ptr @n, align 4
  %409 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %408)
  %410 = load i32, ptr @kount, align 4
  %411 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %410)
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %4, %0
  %2 = phi i32 [ %5, %4 ], [ 0, %0 ]
  %3 = icmp slt i32 %2, 100
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  call void @Puzzle()
  %5 = add nsw i32 %2, 1
  br label %1, !llvm.loop !58

6:                                                ; preds = %1
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
