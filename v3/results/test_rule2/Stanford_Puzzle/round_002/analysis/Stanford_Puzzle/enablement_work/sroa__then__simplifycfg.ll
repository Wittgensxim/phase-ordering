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
  br label %3

3:                                                ; preds = %20, %2
  %.0 = phi i32 [ 0, %2 ], [ %21, %20 ]
  %4 = sext i32 %0 to i64
  %5 = getelementptr inbounds [13 x i32], ptr @piecemax, i64 0, i64 %4
  %6 = load i32, ptr %5, align 4
  %7 = icmp sle i32 %.0, %6
  br i1 %7, label %8, label %22

8:                                                ; preds = %3
  %9 = getelementptr inbounds [13 x [512 x i32]], ptr @p, i64 0, i64 %4
  %10 = sext i32 %.0 to i64
  %11 = getelementptr inbounds [512 x i32], ptr %9, i64 0, i64 %10
  %12 = load i32, ptr %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %8
  %15 = add nsw i32 %1, %.0
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %16
  %18 = load i32, ptr %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %8, %14
  %21 = add nsw i32 %.0, 1
  br label %3, !llvm.loop !7

22:                                               ; preds = %3, %14
  %.05 = phi i32 [ 0, %14 ], [ 1, %3 ]
  ret i32 %.05
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Place(i32 noundef %0, i32 noundef %1) #0 {
  br label %3

3:                                                ; preds = %18, %2
  %.0 = phi i32 [ 0, %2 ], [ %19, %18 ]
  %4 = sext i32 %0 to i64
  %5 = getelementptr inbounds [13 x i32], ptr @piecemax, i64 0, i64 %4
  %6 = load i32, ptr %5, align 4
  %7 = icmp sle i32 %.0, %6
  br i1 %7, label %8, label %20

8:                                                ; preds = %3
  %9 = getelementptr inbounds [13 x [512 x i32]], ptr @p, i64 0, i64 %4
  %10 = sext i32 %.0 to i64
  %11 = getelementptr inbounds [512 x i32], ptr %9, i64 0, i64 %10
  %12 = load i32, ptr %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %8
  %15 = add nsw i32 %1, %.0
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %16
  store i32 1, ptr %17, align 4
  br label %18

18:                                               ; preds = %8, %14
  %19 = add nsw i32 %.0, 1
  br label %3, !llvm.loop !9

20:                                               ; preds = %3
  %.lcssa = phi i64 [ %4, %3 ]
  %21 = getelementptr inbounds [13 x i32], ptr @class, i64 0, i64 %.lcssa
  %22 = load i32, ptr %21, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [4 x i32], ptr @piececount, i64 0, i64 %23
  %25 = load i32, ptr %24, align 4
  %26 = sub nsw i32 %25, 1
  store i32 %26, ptr %24, align 4
  br label %27

27:                                               ; preds = %34, %20
  %.1 = phi i32 [ %1, %20 ], [ %35, %34 ]
  %28 = icmp sle i32 %.1, 511
  br i1 %28, label %29, label %36

29:                                               ; preds = %27
  %30 = sext i32 %.1 to i64
  %31 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %30
  %32 = load i32, ptr %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = add nsw i32 %.1, 1
  br label %27, !llvm.loop !10

36:                                               ; preds = %27, %29
  %.07 = phi i32 [ %.1, %29 ], [ 0, %27 ]
  ret i32 %.07
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Remove(i32 noundef %0, i32 noundef %1) #0 {
  br label %3

3:                                                ; preds = %18, %2
  %.0 = phi i32 [ 0, %2 ], [ %19, %18 ]
  %4 = sext i32 %0 to i64
  %5 = getelementptr inbounds [13 x i32], ptr @piecemax, i64 0, i64 %4
  %6 = load i32, ptr %5, align 4
  %7 = icmp sle i32 %.0, %6
  br i1 %7, label %8, label %20

8:                                                ; preds = %3
  %9 = getelementptr inbounds [13 x [512 x i32]], ptr @p, i64 0, i64 %4
  %10 = sext i32 %.0 to i64
  %11 = getelementptr inbounds [512 x i32], ptr %9, i64 0, i64 %10
  %12 = load i32, ptr %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %8
  %15 = add nsw i32 %1, %.0
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %16
  store i32 0, ptr %17, align 4
  br label %18

18:                                               ; preds = %8, %14
  %19 = add nsw i32 %.0, 1
  br label %3, !llvm.loop !11

20:                                               ; preds = %3
  %.lcssa = phi i64 [ %4, %3 ]
  %21 = getelementptr inbounds [13 x i32], ptr @class, i64 0, i64 %.lcssa
  %22 = load i32, ptr %21, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [4 x i32], ptr @piececount, i64 0, i64 %23
  %25 = load i32, ptr %24, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, ptr %24, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Trial(i32 noundef %0) #0 {
  %2 = load i32, ptr @kount, align 4
  %3 = add nsw i32 %2, 1
  store i32 %3, ptr @kount, align 4
  br label %4

4:                                                ; preds = %23, %1
  %.09 = phi i32 [ 0, %1 ], [ %24, %23 ]
  %5 = icmp sle i32 %.09, 12
  br i1 %5, label %6, label %25

6:                                                ; preds = %4
  %7 = sext i32 %.09 to i64
  %8 = getelementptr inbounds [13 x i32], ptr @class, i64 0, i64 %7
  %9 = load i32, ptr %8, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [4 x i32], ptr @piececount, i64 0, i64 %10
  %12 = load i32, ptr %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %6
  %15 = call i32 @Fit(i32 noundef %.09, i32 noundef %0)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %14
  %18 = call i32 @Place(i32 noundef %.09, i32 noundef %0)
  %19 = call i32 @Trial(i32 noundef %18)
  %20 = icmp ne i32 %19, 0
  %21 = icmp eq i32 %18, 0
  %or.cond = or i1 %20, %21
  br i1 %or.cond, label %25, label %22

22:                                               ; preds = %17
  call void @Remove(i32 noundef %.09, i32 noundef %0)
  br label %23

23:                                               ; preds = %6, %22, %14
  %24 = add nsw i32 %.09, 1
  br label %4, !llvm.loop !12

25:                                               ; preds = %4, %17
  %.0 = phi i32 [ 1, %17 ], [ 0, %4 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Puzzle() #0 {
  br label %1

1:                                                ; preds = %3, %0
  %.0 = phi i32 [ 0, %0 ], [ %6, %3 ]
  %2 = icmp sle i32 %.0, 511
  br i1 %2, label %3, label %7

3:                                                ; preds = %1
  %4 = sext i32 %.0 to i64
  %5 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %4
  store i32 1, ptr %5, align 4
  %6 = add nsw i32 %.0, 1
  br label %1, !llvm.loop !13

7:                                                ; preds = %1, %23
  %.0137 = phi i32 [ %24, %23 ], [ 1, %1 ]
  %8 = icmp sle i32 %.0137, 5
  br i1 %8, label %9, label %25

9:                                                ; preds = %7, %21
  %.0123 = phi i32 [ %22, %21 ], [ 1, %7 ]
  %10 = icmp sle i32 %.0123, 5
  br i1 %10, label %11, label %23

11:                                               ; preds = %9, %13
  %.0121 = phi i32 [ %20, %13 ], [ 1, %9 ]
  %12 = icmp sle i32 %.0121, 5
  br i1 %12, label %13, label %21

13:                                               ; preds = %11
  %14 = mul nsw i32 8, %.0121
  %15 = add nsw i32 %.0123, %14
  %16 = mul nsw i32 8, %15
  %17 = add nsw i32 %.0137, %16
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %18
  store i32 0, ptr %19, align 4
  %20 = add nsw i32 %.0121, 1
  br label %11, !llvm.loop !14

21:                                               ; preds = %11
  %22 = add nsw i32 %.0123, 1
  br label %9, !llvm.loop !15

23:                                               ; preds = %9
  %24 = add nsw i32 %.0137, 1
  br label %7, !llvm.loop !16

25:                                               ; preds = %7, %35
  %.1138 = phi i32 [ %36, %35 ], [ 0, %7 ]
  %26 = icmp sle i32 %.1138, 12
  br i1 %26, label %27, label %37

27:                                               ; preds = %25, %29
  %.1 = phi i32 [ %34, %29 ], [ 0, %25 ]
  %28 = icmp sle i32 %.1, 511
  br i1 %28, label %29, label %35

29:                                               ; preds = %27
  %30 = sext i32 %.1138 to i64
  %31 = getelementptr inbounds [13 x [512 x i32]], ptr @p, i64 0, i64 %30
  %32 = sext i32 %.1 to i64
  %33 = getelementptr inbounds [512 x i32], ptr %31, i64 0, i64 %32
  store i32 0, ptr %33, align 4
  %34 = add nsw i32 %.1, 1
  br label %27, !llvm.loop !17

35:                                               ; preds = %27
  %36 = add nsw i32 %.1138, 1
  br label %25, !llvm.loop !18

37:                                               ; preds = %25, %53
  %.2139 = phi i32 [ %54, %53 ], [ 0, %25 ]
  %38 = icmp sle i32 %.2139, 3
  br i1 %38, label %39, label %55

39:                                               ; preds = %37, %51
  %.1124 = phi i32 [ %52, %51 ], [ 0, %37 ]
  %40 = icmp sle i32 %.1124, 1
  br i1 %40, label %41, label %53

41:                                               ; preds = %39, %43
  %.1122 = phi i32 [ %50, %43 ], [ 0, %39 ]
  %42 = icmp sle i32 %.1122, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %41
  %44 = mul nsw i32 8, %.1122
  %45 = add nsw i32 %.1124, %44
  %46 = mul nsw i32 8, %45
  %47 = add nsw i32 %.2139, %46
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [512 x i32], ptr @p, i64 0, i64 %48
  store i32 1, ptr %49, align 4
  %50 = add nsw i32 %.1122, 1
  br label %41, !llvm.loop !19

51:                                               ; preds = %41
  %52 = add nsw i32 %.1124, 1
  br label %39, !llvm.loop !20

53:                                               ; preds = %39
  %54 = add nsw i32 %.2139, 1
  br label %37, !llvm.loop !21

55:                                               ; preds = %37
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %56

56:                                               ; preds = %72, %55
  %.3140 = phi i32 [ 0, %55 ], [ %73, %72 ]
  %57 = icmp sle i32 %.3140, 1
  br i1 %57, label %58, label %74

58:                                               ; preds = %56, %70
  %.2125 = phi i32 [ %71, %70 ], [ 0, %56 ]
  %59 = icmp sle i32 %.2125, 0
  br i1 %59, label %60, label %72

60:                                               ; preds = %58, %62
  %.2 = phi i32 [ %69, %62 ], [ 0, %58 ]
  %61 = icmp sle i32 %.2, 3
  br i1 %61, label %62, label %70

62:                                               ; preds = %60
  %63 = mul nsw i32 8, %.2
  %64 = add nsw i32 %.2125, %63
  %65 = mul nsw i32 8, %64
  %66 = add nsw i32 %.3140, %65
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 0, i64 %67
  store i32 1, ptr %68, align 4
  %69 = add nsw i32 %.2, 1
  br label %60, !llvm.loop !22

70:                                               ; preds = %60
  %71 = add nsw i32 %.2125, 1
  br label %58, !llvm.loop !23

72:                                               ; preds = %58
  %73 = add nsw i32 %.3140, 1
  br label %56, !llvm.loop !24

74:                                               ; preds = %56
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %75

75:                                               ; preds = %91, %74
  %.4141 = phi i32 [ 0, %74 ], [ %92, %91 ]
  %76 = icmp sle i32 %.4141, 0
  br i1 %76, label %77, label %93

77:                                               ; preds = %75, %89
  %.3126 = phi i32 [ %90, %89 ], [ 0, %75 ]
  %78 = icmp sle i32 %.3126, 3
  br i1 %78, label %79, label %91

79:                                               ; preds = %77, %81
  %.3 = phi i32 [ %88, %81 ], [ 0, %77 ]
  %80 = icmp sle i32 %.3, 1
  br i1 %80, label %81, label %89

81:                                               ; preds = %79
  %82 = mul nsw i32 8, %.3
  %83 = add nsw i32 %.3126, %82
  %84 = mul nsw i32 8, %83
  %85 = add nsw i32 %.4141, %84
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 0, i64 %86
  store i32 1, ptr %87, align 4
  %88 = add nsw i32 %.3, 1
  br label %79, !llvm.loop !25

89:                                               ; preds = %79
  %90 = add nsw i32 %.3126, 1
  br label %77, !llvm.loop !26

91:                                               ; preds = %77
  %92 = add nsw i32 %.4141, 1
  br label %75, !llvm.loop !27

93:                                               ; preds = %75
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %94

94:                                               ; preds = %110, %93
  %.5142 = phi i32 [ 0, %93 ], [ %111, %110 ]
  %95 = icmp sle i32 %.5142, 1
  br i1 %95, label %96, label %112

96:                                               ; preds = %94, %108
  %.4127 = phi i32 [ %109, %108 ], [ 0, %94 ]
  %97 = icmp sle i32 %.4127, 3
  br i1 %97, label %98, label %110

98:                                               ; preds = %96, %100
  %.4 = phi i32 [ %107, %100 ], [ 0, %96 ]
  %99 = icmp sle i32 %.4, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %98
  %101 = mul nsw i32 8, %.4
  %102 = add nsw i32 %.4127, %101
  %103 = mul nsw i32 8, %102
  %104 = add nsw i32 %.5142, %103
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 0, i64 %105
  store i32 1, ptr %106, align 4
  %107 = add nsw i32 %.4, 1
  br label %98, !llvm.loop !28

108:                                              ; preds = %98
  %109 = add nsw i32 %.4127, 1
  br label %96, !llvm.loop !29

110:                                              ; preds = %96
  %111 = add nsw i32 %.5142, 1
  br label %94, !llvm.loop !30

112:                                              ; preds = %94
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %113

113:                                              ; preds = %129, %112
  %.6143 = phi i32 [ 0, %112 ], [ %130, %129 ]
  %114 = icmp sle i32 %.6143, 3
  br i1 %114, label %115, label %131

115:                                              ; preds = %113, %127
  %.5128 = phi i32 [ %128, %127 ], [ 0, %113 ]
  %116 = icmp sle i32 %.5128, 0
  br i1 %116, label %117, label %129

117:                                              ; preds = %115, %119
  %.5 = phi i32 [ %126, %119 ], [ 0, %115 ]
  %118 = icmp sle i32 %.5, 1
  br i1 %118, label %119, label %127

119:                                              ; preds = %117
  %120 = mul nsw i32 8, %.5
  %121 = add nsw i32 %.5128, %120
  %122 = mul nsw i32 8, %121
  %123 = add nsw i32 %.6143, %122
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 0, i64 %124
  store i32 1, ptr %125, align 4
  %126 = add nsw i32 %.5, 1
  br label %117, !llvm.loop !31

127:                                              ; preds = %117
  %128 = add nsw i32 %.5128, 1
  br label %115, !llvm.loop !32

129:                                              ; preds = %115
  %130 = add nsw i32 %.6143, 1
  br label %113, !llvm.loop !33

131:                                              ; preds = %113
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %132

132:                                              ; preds = %148, %131
  %.7144 = phi i32 [ 0, %131 ], [ %149, %148 ]
  %133 = icmp sle i32 %.7144, 0
  br i1 %133, label %134, label %150

134:                                              ; preds = %132, %146
  %.6129 = phi i32 [ %147, %146 ], [ 0, %132 ]
  %135 = icmp sle i32 %.6129, 1
  br i1 %135, label %136, label %148

136:                                              ; preds = %134, %138
  %.6 = phi i32 [ %145, %138 ], [ 0, %134 ]
  %137 = icmp sle i32 %.6, 3
  br i1 %137, label %138, label %146

138:                                              ; preds = %136
  %139 = mul nsw i32 8, %.6
  %140 = add nsw i32 %.6129, %139
  %141 = mul nsw i32 8, %140
  %142 = add nsw i32 %.7144, %141
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 0, i64 %143
  store i32 1, ptr %144, align 4
  %145 = add nsw i32 %.6, 1
  br label %136, !llvm.loop !34

146:                                              ; preds = %136
  %147 = add nsw i32 %.6129, 1
  br label %134, !llvm.loop !35

148:                                              ; preds = %134
  %149 = add nsw i32 %.7144, 1
  br label %132, !llvm.loop !36

150:                                              ; preds = %132
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %151

151:                                              ; preds = %167, %150
  %.8145 = phi i32 [ 0, %150 ], [ %168, %167 ]
  %152 = icmp sle i32 %.8145, 2
  br i1 %152, label %153, label %169

153:                                              ; preds = %151, %165
  %.7130 = phi i32 [ %166, %165 ], [ 0, %151 ]
  %154 = icmp sle i32 %.7130, 0
  br i1 %154, label %155, label %167

155:                                              ; preds = %153, %157
  %.7 = phi i32 [ %164, %157 ], [ 0, %153 ]
  %156 = icmp sle i32 %.7, 0
  br i1 %156, label %157, label %165

157:                                              ; preds = %155
  %158 = mul nsw i32 8, %.7
  %159 = add nsw i32 %.7130, %158
  %160 = mul nsw i32 8, %159
  %161 = add nsw i32 %.8145, %160
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 0, i64 %162
  store i32 1, ptr %163, align 4
  %164 = add nsw i32 %.7, 1
  br label %155, !llvm.loop !37

165:                                              ; preds = %155
  %166 = add nsw i32 %.7130, 1
  br label %153, !llvm.loop !38

167:                                              ; preds = %153
  %168 = add nsw i32 %.8145, 1
  br label %151, !llvm.loop !39

169:                                              ; preds = %151
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %170

170:                                              ; preds = %186, %169
  %.9146 = phi i32 [ 0, %169 ], [ %187, %186 ]
  %171 = icmp sle i32 %.9146, 0
  br i1 %171, label %172, label %188

172:                                              ; preds = %170, %184
  %.8131 = phi i32 [ %185, %184 ], [ 0, %170 ]
  %173 = icmp sle i32 %.8131, 2
  br i1 %173, label %174, label %186

174:                                              ; preds = %172, %176
  %.8 = phi i32 [ %183, %176 ], [ 0, %172 ]
  %175 = icmp sle i32 %.8, 0
  br i1 %175, label %176, label %184

176:                                              ; preds = %174
  %177 = mul nsw i32 8, %.8
  %178 = add nsw i32 %.8131, %177
  %179 = mul nsw i32 8, %178
  %180 = add nsw i32 %.9146, %179
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 0, i64 %181
  store i32 1, ptr %182, align 4
  %183 = add nsw i32 %.8, 1
  br label %174, !llvm.loop !40

184:                                              ; preds = %174
  %185 = add nsw i32 %.8131, 1
  br label %172, !llvm.loop !41

186:                                              ; preds = %172
  %187 = add nsw i32 %.9146, 1
  br label %170, !llvm.loop !42

188:                                              ; preds = %170
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %189

189:                                              ; preds = %205, %188
  %.10147 = phi i32 [ 0, %188 ], [ %206, %205 ]
  %190 = icmp sle i32 %.10147, 0
  br i1 %190, label %191, label %207

191:                                              ; preds = %189, %203
  %.9132 = phi i32 [ %204, %203 ], [ 0, %189 ]
  %192 = icmp sle i32 %.9132, 0
  br i1 %192, label %193, label %205

193:                                              ; preds = %191, %195
  %.9 = phi i32 [ %202, %195 ], [ 0, %191 ]
  %194 = icmp sle i32 %.9, 2
  br i1 %194, label %195, label %203

195:                                              ; preds = %193
  %196 = mul nsw i32 8, %.9
  %197 = add nsw i32 %.9132, %196
  %198 = mul nsw i32 8, %197
  %199 = add nsw i32 %.10147, %198
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 0, i64 %200
  store i32 1, ptr %201, align 4
  %202 = add nsw i32 %.9, 1
  br label %193, !llvm.loop !43

203:                                              ; preds = %193
  %204 = add nsw i32 %.9132, 1
  br label %191, !llvm.loop !44

205:                                              ; preds = %191
  %206 = add nsw i32 %.10147, 1
  br label %189, !llvm.loop !45

207:                                              ; preds = %189
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %208

208:                                              ; preds = %224, %207
  %.11148 = phi i32 [ 0, %207 ], [ %225, %224 ]
  %209 = icmp sle i32 %.11148, 1
  br i1 %209, label %210, label %226

210:                                              ; preds = %208, %222
  %.10133 = phi i32 [ %223, %222 ], [ 0, %208 ]
  %211 = icmp sle i32 %.10133, 1
  br i1 %211, label %212, label %224

212:                                              ; preds = %210, %214
  %.10 = phi i32 [ %221, %214 ], [ 0, %210 ]
  %213 = icmp sle i32 %.10, 0
  br i1 %213, label %214, label %222

214:                                              ; preds = %212
  %215 = mul nsw i32 8, %.10
  %216 = add nsw i32 %.10133, %215
  %217 = mul nsw i32 8, %216
  %218 = add nsw i32 %.11148, %217
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 0, i64 %219
  store i32 1, ptr %220, align 4
  %221 = add nsw i32 %.10, 1
  br label %212, !llvm.loop !46

222:                                              ; preds = %212
  %223 = add nsw i32 %.10133, 1
  br label %210, !llvm.loop !47

224:                                              ; preds = %210
  %225 = add nsw i32 %.11148, 1
  br label %208, !llvm.loop !48

226:                                              ; preds = %208
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %227

227:                                              ; preds = %243, %226
  %.12149 = phi i32 [ 0, %226 ], [ %244, %243 ]
  %228 = icmp sle i32 %.12149, 1
  br i1 %228, label %229, label %245

229:                                              ; preds = %227, %241
  %.11134 = phi i32 [ %242, %241 ], [ 0, %227 ]
  %230 = icmp sle i32 %.11134, 0
  br i1 %230, label %231, label %243

231:                                              ; preds = %229, %233
  %.11 = phi i32 [ %240, %233 ], [ 0, %229 ]
  %232 = icmp sle i32 %.11, 1
  br i1 %232, label %233, label %241

233:                                              ; preds = %231
  %234 = mul nsw i32 8, %.11
  %235 = add nsw i32 %.11134, %234
  %236 = mul nsw i32 8, %235
  %237 = add nsw i32 %.12149, %236
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 0, i64 %238
  store i32 1, ptr %239, align 4
  %240 = add nsw i32 %.11, 1
  br label %231, !llvm.loop !49

241:                                              ; preds = %231
  %242 = add nsw i32 %.11134, 1
  br label %229, !llvm.loop !50

243:                                              ; preds = %229
  %244 = add nsw i32 %.12149, 1
  br label %227, !llvm.loop !51

245:                                              ; preds = %227
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %246

246:                                              ; preds = %262, %245
  %.13150 = phi i32 [ 0, %245 ], [ %263, %262 ]
  %247 = icmp sle i32 %.13150, 0
  br i1 %247, label %248, label %264

248:                                              ; preds = %246, %260
  %.12135 = phi i32 [ %261, %260 ], [ 0, %246 ]
  %249 = icmp sle i32 %.12135, 1
  br i1 %249, label %250, label %262

250:                                              ; preds = %248, %252
  %.12 = phi i32 [ %259, %252 ], [ 0, %248 ]
  %251 = icmp sle i32 %.12, 1
  br i1 %251, label %252, label %260

252:                                              ; preds = %250
  %253 = mul nsw i32 8, %.12
  %254 = add nsw i32 %.12135, %253
  %255 = mul nsw i32 8, %254
  %256 = add nsw i32 %.13150, %255
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 0, i64 %257
  store i32 1, ptr %258, align 4
  %259 = add nsw i32 %.12, 1
  br label %250, !llvm.loop !52

260:                                              ; preds = %250
  %261 = add nsw i32 %.12135, 1
  br label %248, !llvm.loop !53

262:                                              ; preds = %248
  %263 = add nsw i32 %.13150, 1
  br label %246, !llvm.loop !54

264:                                              ; preds = %246
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %265

265:                                              ; preds = %281, %264
  %.14 = phi i32 [ 0, %264 ], [ %282, %281 ]
  %266 = icmp sle i32 %.14, 1
  br i1 %266, label %267, label %283

267:                                              ; preds = %265, %279
  %.13136 = phi i32 [ %280, %279 ], [ 0, %265 ]
  %268 = icmp sle i32 %.13136, 1
  br i1 %268, label %269, label %281

269:                                              ; preds = %267, %271
  %.13 = phi i32 [ %278, %271 ], [ 0, %267 ]
  %270 = icmp sle i32 %.13, 1
  br i1 %270, label %271, label %279

271:                                              ; preds = %269
  %272 = mul nsw i32 8, %.13
  %273 = add nsw i32 %.13136, %272
  %274 = mul nsw i32 8, %273
  %275 = add nsw i32 %.14, %274
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 0, i64 %276
  store i32 1, ptr %277, align 4
  %278 = add nsw i32 %.13, 1
  br label %269, !llvm.loop !55

279:                                              ; preds = %269
  %280 = add nsw i32 %.13136, 1
  br label %267, !llvm.loop !56

281:                                              ; preds = %267
  %282 = add nsw i32 %.14, 1
  br label %265, !llvm.loop !57

283:                                              ; preds = %265
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 0, ptr @kount, align 4
  %284 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %288

286:                                              ; preds = %283
  %287 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %287, ptr @n, align 4
  br label %290

288:                                              ; preds = %283
  %289 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  br label %290

290:                                              ; preds = %288, %286
  %291 = load i32, ptr @n, align 4
  %292 = call i32 @Trial(i32 noundef %291)
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %296, label %294

294:                                              ; preds = %290
  %295 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  br label %301

296:                                              ; preds = %290
  %297 = load i32, ptr @kount, align 4
  %298 = icmp ne i32 %297, 2005
  br i1 %298, label %299, label %301

299:                                              ; preds = %296
  %300 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %301

301:                                              ; preds = %296, %299, %294
  %302 = load i32, ptr @n, align 4
  %303 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %302)
  %304 = load i32, ptr @kount, align 4
  %305 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %304)
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %3, %0
  %.0 = phi i32 [ 0, %0 ], [ %4, %3 ]
  %2 = icmp slt i32 %.0, 100
  br i1 %2, label %3, label %5

3:                                                ; preds = %1
  call void @Puzzle()
  %4 = add nsw i32 %.0, 1
  br label %1, !llvm.loop !58

5:                                                ; preds = %1
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
