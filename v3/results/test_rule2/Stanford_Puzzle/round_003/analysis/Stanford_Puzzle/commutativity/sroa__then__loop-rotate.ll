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
  %.not4 = icmp sgt i32 0, %5
  br i1 %.not4, label %22, label %.lr.ph

.lr.ph:                                           ; preds = %2
  br label %6

6:                                                ; preds = %.lr.ph, %19
  %storemerge5 = phi i32 [ 0, %.lr.ph ], [ %20, %19 ]
  %7 = getelementptr inbounds [2048 x i8], ptr @p, i64 %3
  %8 = sext i32 %storemerge5 to i64
  %9 = getelementptr inbounds [4 x i8], ptr %7, i64 %8
  %10 = load i32, ptr %9, align 4
  %.not2 = icmp eq i32 %10, 0
  br i1 %.not2, label %18, label %11

11:                                               ; preds = %6
  %12 = add nsw i32 %1, %storemerge5
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %13
  %15 = load i32, ptr %14, align 4
  %.not3 = icmp eq i32 %15, 0
  br i1 %.not3, label %17, label %16

16:                                               ; preds = %11
  br label %23

17:                                               ; preds = %11
  br label %18

18:                                               ; preds = %17, %6
  br label %19

19:                                               ; preds = %18
  %20 = add nsw i32 %storemerge5, 1
  %21 = load i32, ptr %4, align 4
  %.not = icmp sgt i32 %20, %21
  br i1 %.not, label %._crit_edge, label %6, !llvm.loop !7

._crit_edge:                                      ; preds = %19
  br label %22

22:                                               ; preds = %._crit_edge, %2
  br label %23

23:                                               ; preds = %22, %16
  %storemerge1 = phi i32 [ 1, %22 ], [ 0, %16 ]
  ret i32 %storemerge1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Place(i32 noundef %0, i32 noundef %1) #0 {
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %3
  %5 = load i32, ptr %4, align 4
  %.not5 = icmp sgt i32 0, %5
  br i1 %.not5, label %19, label %.lr.ph

.lr.ph:                                           ; preds = %2
  br label %6

6:                                                ; preds = %.lr.ph, %16
  %storemerge6 = phi i32 [ 0, %.lr.ph ], [ %17, %16 ]
  %7 = getelementptr inbounds [2048 x i8], ptr @p, i64 %3
  %8 = sext i32 %storemerge6 to i64
  %9 = getelementptr inbounds [4 x i8], ptr %7, i64 %8
  %10 = load i32, ptr %9, align 4
  %.not4 = icmp eq i32 %10, 0
  br i1 %.not4, label %15, label %11

11:                                               ; preds = %6
  %12 = add nsw i32 %1, %storemerge6
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %13
  store i32 1, ptr %14, align 4
  br label %15

15:                                               ; preds = %11, %6
  br label %16

16:                                               ; preds = %15
  %17 = add nsw i32 %storemerge6, 1
  %18 = load i32, ptr %4, align 4
  %.not = icmp sgt i32 %17, %18
  br i1 %.not, label %._crit_edge, label %6, !llvm.loop !9

._crit_edge:                                      ; preds = %16
  %split = phi i64 [ %3, %16 ]
  br label %19

19:                                               ; preds = %._crit_edge, %2
  %.lcssa = phi i64 [ %split, %._crit_edge ], [ %3, %2 ]
  %20 = getelementptr inbounds [4 x i8], ptr @class, i64 %.lcssa
  %21 = load i32, ptr %20, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %22
  %24 = load i32, ptr %23, align 4
  %25 = add nsw i32 %24, -1
  store i32 %25, ptr %23, align 4
  %26 = sext i32 %1 to i64
  %smax = call i32 @llvm.smax.i32(i32 %1, i32 512)
  %wide.trip.count = sext i32 %smax to i64
  %exitcond7 = icmp ne i64 %26, %wide.trip.count
  br i1 %exitcond7, label %.lr.ph10, label %35

.lr.ph10:                                         ; preds = %19
  br label %27

27:                                               ; preds = %.lr.ph10, %33
  %indvars.iv8 = phi i64 [ %26, %.lr.ph10 ], [ %indvars.iv.next, %33 ]
  %28 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %indvars.iv8
  %29 = load i32, ptr %28, align 4
  %.not3 = icmp eq i32 %29, 0
  br i1 %.not3, label %30, label %32

30:                                               ; preds = %27
  %storemerge1.lcssa5.wide = phi i64 [ %indvars.iv8, %27 ]
  %31 = trunc nsw i64 %storemerge1.lcssa5.wide to i32
  br label %36

32:                                               ; preds = %27
  br label %33

33:                                               ; preds = %32
  %indvars.iv.next = add nsw i64 %indvars.iv8, 1
  %34 = trunc nsw i64 %indvars.iv.next to i32
  %exitcond = icmp ne i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %27, label %._crit_edge11, !llvm.loop !10

._crit_edge11:                                    ; preds = %33
  br label %35

35:                                               ; preds = %._crit_edge11, %19
  br label %36

36:                                               ; preds = %35, %30
  %storemerge2 = phi i32 [ 0, %35 ], [ %31, %30 ]
  ret i32 %storemerge2
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Remove(i32 noundef %0, i32 noundef %1) #0 {
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %3
  %5 = load i32, ptr %4, align 4
  %.not3 = icmp sgt i32 0, %5
  br i1 %.not3, label %19, label %.lr.ph

.lr.ph:                                           ; preds = %2
  br label %6

6:                                                ; preds = %.lr.ph, %16
  %storemerge4 = phi i32 [ 0, %.lr.ph ], [ %17, %16 ]
  %7 = getelementptr inbounds [2048 x i8], ptr @p, i64 %3
  %8 = sext i32 %storemerge4 to i64
  %9 = getelementptr inbounds [4 x i8], ptr %7, i64 %8
  %10 = load i32, ptr %9, align 4
  %.not1 = icmp eq i32 %10, 0
  br i1 %.not1, label %15, label %11

11:                                               ; preds = %6
  %12 = add nsw i32 %1, %storemerge4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %13
  store i32 0, ptr %14, align 4
  br label %15

15:                                               ; preds = %11, %6
  br label %16

16:                                               ; preds = %15
  %17 = add nsw i32 %storemerge4, 1
  %18 = load i32, ptr %4, align 4
  %.not = icmp sgt i32 %17, %18
  br i1 %.not, label %._crit_edge, label %6, !llvm.loop !11

._crit_edge:                                      ; preds = %16
  %split = phi i64 [ %3, %16 ]
  br label %19

19:                                               ; preds = %._crit_edge, %2
  %.lcssa = phi i64 [ %split, %._crit_edge ], [ %3, %2 ]
  %20 = getelementptr inbounds [4 x i8], ptr @class, i64 %.lcssa
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
  %2 = load i32, ptr @kount, align 4
  %3 = add nsw i32 %2, 1
  store i32 %3, ptr @kount, align 4
  br label %4

4:                                                ; preds = %1, %23
  %storemerge7 = phi i32 [ 0, %1 ], [ %24, %23 ]
  %5 = sext i32 %storemerge7 to i64
  %6 = getelementptr inbounds [4 x i8], ptr @class, i64 %5
  %7 = load i32, ptr %6, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %8
  %10 = load i32, ptr %9, align 4
  %.not = icmp eq i32 %10, 0
  br i1 %.not, label %22, label %11

11:                                               ; preds = %4
  %12 = call i32 @Fit(i32 noundef %storemerge7, i32 noundef %0)
  %.not2 = icmp eq i32 %12, 0
  br i1 %.not2, label %21, label %13

13:                                               ; preds = %11
  %14 = call i32 @Place(i32 noundef %storemerge7, i32 noundef %0)
  %15 = call i32 @Trial(i32 noundef %14)
  %.not3 = icmp eq i32 %15, 0
  br i1 %.not3, label %16, label %18

16:                                               ; preds = %13
  %17 = icmp eq i32 %14, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %16, %13
  br label %27

19:                                               ; preds = %16
  call void @Remove(i32 noundef %storemerge7, i32 noundef %0)
  br label %20

20:                                               ; preds = %19
  br label %21

21:                                               ; preds = %20, %11
  br label %22

22:                                               ; preds = %21, %4
  %storemerge8 = phi i32 [ %storemerge7, %21 ], [ %storemerge7, %4 ]
  br label %23

23:                                               ; preds = %22
  %24 = add nsw i32 %storemerge8, 1
  %25 = icmp slt i32 %24, 13
  br i1 %25, label %4, label %26, !llvm.loop !12

26:                                               ; preds = %23
  br label %27

27:                                               ; preds = %26, %18
  %storemerge1 = phi i32 [ 0, %26 ], [ 1, %18 ]
  ret i32 %storemerge1
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Puzzle() #0 {
  br label %1

1:                                                ; preds = %0, %4
  %storemerge75 = phi i32 [ 0, %0 ], [ %5, %4 ]
  %2 = sext i32 %storemerge75 to i64
  %3 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %2
  store i32 1, ptr %3, align 4
  br label %4

4:                                                ; preds = %1
  %5 = add nsw i32 %storemerge75, 1
  %6 = icmp slt i32 %5, 512
  br i1 %6, label %1, label %7, !llvm.loop !13

7:                                                ; preds = %4
  br label %8

8:                                                ; preds = %7, %25
  %storemerge178 = phi i32 [ 1, %7 ], [ %26, %25 ]
  br label %9

9:                                                ; preds = %8, %21
  %storemerge4777 = phi i32 [ 1, %8 ], [ %22, %21 ]
  br label %10

10:                                               ; preds = %9, %17
  %storemerge4876 = phi i32 [ 1, %9 ], [ %18, %17 ]
  %11 = shl i32 %storemerge4876, 6
  %12 = shl i32 %storemerge4777, 3
  %13 = add i32 %11, %12
  %14 = add nsw i32 %storemerge178, %13
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %15
  store i32 0, ptr %16, align 4
  br label %17

17:                                               ; preds = %10
  %18 = add nsw i32 %storemerge4876, 1
  %19 = icmp slt i32 %18, 6
  br i1 %19, label %10, label %20, !llvm.loop !14

20:                                               ; preds = %17
  br label %21

21:                                               ; preds = %20
  %22 = add nsw i32 %storemerge4777, 1
  %23 = icmp slt i32 %22, 6
  br i1 %23, label %9, label %24, !llvm.loop !15

24:                                               ; preds = %21
  br label %25

25:                                               ; preds = %24
  %26 = add nsw i32 %storemerge178, 1
  %27 = icmp slt i32 %26, 6
  br i1 %27, label %8, label %28, !llvm.loop !16

28:                                               ; preds = %25
  br label %29

29:                                               ; preds = %28, %39
  %storemerge280 = phi i32 [ 0, %28 ], [ %40, %39 ]
  br label %30

30:                                               ; preds = %29, %35
  %storemerge4679 = phi i32 [ 0, %29 ], [ %36, %35 ]
  %31 = sext i32 %storemerge280 to i64
  %32 = getelementptr inbounds [2048 x i8], ptr @p, i64 %31
  %33 = sext i32 %storemerge4679 to i64
  %34 = getelementptr inbounds [4 x i8], ptr %32, i64 %33
  store i32 0, ptr %34, align 4
  br label %35

35:                                               ; preds = %30
  %36 = add nsw i32 %storemerge4679, 1
  %37 = icmp slt i32 %36, 512
  br i1 %37, label %30, label %38, !llvm.loop !17

38:                                               ; preds = %35
  br label %39

39:                                               ; preds = %38
  %40 = add nsw i32 %storemerge280, 1
  %41 = icmp slt i32 %40, 13
  br i1 %41, label %29, label %42, !llvm.loop !18

42:                                               ; preds = %39
  br label %43

43:                                               ; preds = %42, %60
  %storemerge383 = phi i32 [ 0, %42 ], [ %61, %60 ]
  br label %44

44:                                               ; preds = %43, %56
  %storemerge4482 = phi i32 [ 0, %43 ], [ %57, %56 ]
  br label %45

45:                                               ; preds = %44, %52
  %storemerge4581 = phi i32 [ 0, %44 ], [ %53, %52 ]
  %46 = shl i32 %storemerge4581, 6
  %47 = shl i32 %storemerge4482, 3
  %48 = add i32 %46, %47
  %49 = add nsw i32 %storemerge383, %48
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [4 x i8], ptr @p, i64 %50
  store i32 1, ptr %51, align 4
  br label %52

52:                                               ; preds = %45
  %53 = add nsw i32 %storemerge4581, 1
  %54 = icmp slt i32 %53, 1
  br i1 %54, label %45, label %55, !llvm.loop !19

55:                                               ; preds = %52
  br label %56

56:                                               ; preds = %55
  %57 = add nsw i32 %storemerge4482, 1
  %58 = icmp slt i32 %57, 2
  br i1 %58, label %44, label %59, !llvm.loop !20

59:                                               ; preds = %56
  br label %60

60:                                               ; preds = %59
  %61 = add nsw i32 %storemerge383, 1
  %62 = icmp slt i32 %61, 4
  br i1 %62, label %43, label %63, !llvm.loop !21

63:                                               ; preds = %60
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %64

64:                                               ; preds = %63, %81
  %storemerge486 = phi i32 [ 0, %63 ], [ %82, %81 ]
  br label %65

65:                                               ; preds = %64, %77
  %storemerge4285 = phi i32 [ 0, %64 ], [ %78, %77 ]
  br label %66

66:                                               ; preds = %65, %73
  %storemerge4384 = phi i32 [ 0, %65 ], [ %74, %73 ]
  %67 = shl i32 %storemerge4384, 6
  %68 = shl i32 %storemerge4285, 3
  %69 = add i32 %67, %68
  %70 = add nsw i32 %storemerge486, %69
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %71
  store i32 1, ptr %72, align 4
  br label %73

73:                                               ; preds = %66
  %74 = add nsw i32 %storemerge4384, 1
  %75 = icmp slt i32 %74, 4
  br i1 %75, label %66, label %76, !llvm.loop !22

76:                                               ; preds = %73
  br label %77

77:                                               ; preds = %76
  %78 = add nsw i32 %storemerge4285, 1
  %79 = icmp slt i32 %78, 1
  br i1 %79, label %65, label %80, !llvm.loop !23

80:                                               ; preds = %77
  br label %81

81:                                               ; preds = %80
  %82 = add nsw i32 %storemerge486, 1
  %83 = icmp slt i32 %82, 2
  br i1 %83, label %64, label %84, !llvm.loop !24

84:                                               ; preds = %81
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %85

85:                                               ; preds = %84, %102
  %storemerge589 = phi i32 [ 0, %84 ], [ %103, %102 ]
  br label %86

86:                                               ; preds = %85, %98
  %storemerge4088 = phi i32 [ 0, %85 ], [ %99, %98 ]
  br label %87

87:                                               ; preds = %86, %94
  %storemerge4187 = phi i32 [ 0, %86 ], [ %95, %94 ]
  %88 = shl i32 %storemerge4187, 6
  %89 = shl i32 %storemerge4088, 3
  %90 = add i32 %88, %89
  %91 = add nsw i32 %storemerge589, %90
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %92
  store i32 1, ptr %93, align 4
  br label %94

94:                                               ; preds = %87
  %95 = add nsw i32 %storemerge4187, 1
  %96 = icmp slt i32 %95, 2
  br i1 %96, label %87, label %97, !llvm.loop !25

97:                                               ; preds = %94
  br label %98

98:                                               ; preds = %97
  %99 = add nsw i32 %storemerge4088, 1
  %100 = icmp slt i32 %99, 4
  br i1 %100, label %86, label %101, !llvm.loop !26

101:                                              ; preds = %98
  br label %102

102:                                              ; preds = %101
  %103 = add nsw i32 %storemerge589, 1
  %104 = icmp slt i32 %103, 1
  br i1 %104, label %85, label %105, !llvm.loop !27

105:                                              ; preds = %102
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %106

106:                                              ; preds = %105, %123
  %storemerge692 = phi i32 [ 0, %105 ], [ %124, %123 ]
  br label %107

107:                                              ; preds = %106, %119
  %storemerge3891 = phi i32 [ 0, %106 ], [ %120, %119 ]
  br label %108

108:                                              ; preds = %107, %115
  %storemerge3990 = phi i32 [ 0, %107 ], [ %116, %115 ]
  %109 = shl i32 %storemerge3990, 6
  %110 = shl i32 %storemerge3891, 3
  %111 = add i32 %109, %110
  %112 = add nsw i32 %storemerge692, %111
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %113
  store i32 1, ptr %114, align 4
  br label %115

115:                                              ; preds = %108
  %116 = add nsw i32 %storemerge3990, 1
  %117 = icmp slt i32 %116, 1
  br i1 %117, label %108, label %118, !llvm.loop !28

118:                                              ; preds = %115
  br label %119

119:                                              ; preds = %118
  %120 = add nsw i32 %storemerge3891, 1
  %121 = icmp slt i32 %120, 4
  br i1 %121, label %107, label %122, !llvm.loop !29

122:                                              ; preds = %119
  br label %123

123:                                              ; preds = %122
  %124 = add nsw i32 %storemerge692, 1
  %125 = icmp slt i32 %124, 2
  br i1 %125, label %106, label %126, !llvm.loop !30

126:                                              ; preds = %123
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %127

127:                                              ; preds = %126, %144
  %storemerge795 = phi i32 [ 0, %126 ], [ %145, %144 ]
  br label %128

128:                                              ; preds = %127, %140
  %storemerge3694 = phi i32 [ 0, %127 ], [ %141, %140 ]
  br label %129

129:                                              ; preds = %128, %136
  %storemerge3793 = phi i32 [ 0, %128 ], [ %137, %136 ]
  %130 = shl i32 %storemerge3793, 6
  %131 = shl i32 %storemerge3694, 3
  %132 = add i32 %130, %131
  %133 = add nsw i32 %storemerge795, %132
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %134
  store i32 1, ptr %135, align 4
  br label %136

136:                                              ; preds = %129
  %137 = add nsw i32 %storemerge3793, 1
  %138 = icmp slt i32 %137, 2
  br i1 %138, label %129, label %139, !llvm.loop !31

139:                                              ; preds = %136
  br label %140

140:                                              ; preds = %139
  %141 = add nsw i32 %storemerge3694, 1
  %142 = icmp slt i32 %141, 1
  br i1 %142, label %128, label %143, !llvm.loop !32

143:                                              ; preds = %140
  br label %144

144:                                              ; preds = %143
  %145 = add nsw i32 %storemerge795, 1
  %146 = icmp slt i32 %145, 4
  br i1 %146, label %127, label %147, !llvm.loop !33

147:                                              ; preds = %144
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %148

148:                                              ; preds = %147, %165
  %storemerge898 = phi i32 [ 0, %147 ], [ %166, %165 ]
  br label %149

149:                                              ; preds = %148, %161
  %storemerge3497 = phi i32 [ 0, %148 ], [ %162, %161 ]
  br label %150

150:                                              ; preds = %149, %157
  %storemerge3596 = phi i32 [ 0, %149 ], [ %158, %157 ]
  %151 = shl i32 %storemerge3596, 6
  %152 = shl i32 %storemerge3497, 3
  %153 = add i32 %151, %152
  %154 = add nsw i32 %storemerge898, %153
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %155
  store i32 1, ptr %156, align 4
  br label %157

157:                                              ; preds = %150
  %158 = add nsw i32 %storemerge3596, 1
  %159 = icmp slt i32 %158, 4
  br i1 %159, label %150, label %160, !llvm.loop !34

160:                                              ; preds = %157
  br label %161

161:                                              ; preds = %160
  %162 = add nsw i32 %storemerge3497, 1
  %163 = icmp slt i32 %162, 2
  br i1 %163, label %149, label %164, !llvm.loop !35

164:                                              ; preds = %161
  br label %165

165:                                              ; preds = %164
  %166 = add nsw i32 %storemerge898, 1
  %167 = icmp slt i32 %166, 1
  br i1 %167, label %148, label %168, !llvm.loop !36

168:                                              ; preds = %165
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %169

169:                                              ; preds = %168, %186
  %storemerge9101 = phi i32 [ 0, %168 ], [ %187, %186 ]
  br label %170

170:                                              ; preds = %169, %182
  %storemerge32100 = phi i32 [ 0, %169 ], [ %183, %182 ]
  br label %171

171:                                              ; preds = %170, %178
  %storemerge3399 = phi i32 [ 0, %170 ], [ %179, %178 ]
  %172 = shl i32 %storemerge3399, 6
  %173 = shl i32 %storemerge32100, 3
  %174 = add i32 %172, %173
  %175 = add nsw i32 %storemerge9101, %174
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %176
  store i32 1, ptr %177, align 4
  br label %178

178:                                              ; preds = %171
  %179 = add nsw i32 %storemerge3399, 1
  %180 = icmp slt i32 %179, 1
  br i1 %180, label %171, label %181, !llvm.loop !37

181:                                              ; preds = %178
  br label %182

182:                                              ; preds = %181
  %183 = add nsw i32 %storemerge32100, 1
  %184 = icmp slt i32 %183, 1
  br i1 %184, label %170, label %185, !llvm.loop !38

185:                                              ; preds = %182
  br label %186

186:                                              ; preds = %185
  %187 = add nsw i32 %storemerge9101, 1
  %188 = icmp slt i32 %187, 3
  br i1 %188, label %169, label %189, !llvm.loop !39

189:                                              ; preds = %186
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %190

190:                                              ; preds = %189, %207
  %storemerge10104 = phi i32 [ 0, %189 ], [ %208, %207 ]
  br label %191

191:                                              ; preds = %190, %203
  %storemerge30103 = phi i32 [ 0, %190 ], [ %204, %203 ]
  br label %192

192:                                              ; preds = %191, %199
  %storemerge31102 = phi i32 [ 0, %191 ], [ %200, %199 ]
  %193 = shl i32 %storemerge31102, 6
  %194 = shl i32 %storemerge30103, 3
  %195 = add i32 %193, %194
  %196 = add nsw i32 %storemerge10104, %195
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %197
  store i32 1, ptr %198, align 4
  br label %199

199:                                              ; preds = %192
  %200 = add nsw i32 %storemerge31102, 1
  %201 = icmp slt i32 %200, 1
  br i1 %201, label %192, label %202, !llvm.loop !40

202:                                              ; preds = %199
  br label %203

203:                                              ; preds = %202
  %204 = add nsw i32 %storemerge30103, 1
  %205 = icmp slt i32 %204, 3
  br i1 %205, label %191, label %206, !llvm.loop !41

206:                                              ; preds = %203
  br label %207

207:                                              ; preds = %206
  %208 = add nsw i32 %storemerge10104, 1
  %209 = icmp slt i32 %208, 1
  br i1 %209, label %190, label %210, !llvm.loop !42

210:                                              ; preds = %207
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %211

211:                                              ; preds = %210, %228
  %storemerge11107 = phi i32 [ 0, %210 ], [ %229, %228 ]
  br label %212

212:                                              ; preds = %211, %224
  %storemerge28106 = phi i32 [ 0, %211 ], [ %225, %224 ]
  br label %213

213:                                              ; preds = %212, %220
  %storemerge29105 = phi i32 [ 0, %212 ], [ %221, %220 ]
  %214 = shl i32 %storemerge29105, 6
  %215 = shl i32 %storemerge28106, 3
  %216 = add i32 %214, %215
  %217 = add nsw i32 %storemerge11107, %216
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %218
  store i32 1, ptr %219, align 4
  br label %220

220:                                              ; preds = %213
  %221 = add nsw i32 %storemerge29105, 1
  %222 = icmp slt i32 %221, 3
  br i1 %222, label %213, label %223, !llvm.loop !43

223:                                              ; preds = %220
  br label %224

224:                                              ; preds = %223
  %225 = add nsw i32 %storemerge28106, 1
  %226 = icmp slt i32 %225, 1
  br i1 %226, label %212, label %227, !llvm.loop !44

227:                                              ; preds = %224
  br label %228

228:                                              ; preds = %227
  %229 = add nsw i32 %storemerge11107, 1
  %230 = icmp slt i32 %229, 1
  br i1 %230, label %211, label %231, !llvm.loop !45

231:                                              ; preds = %228
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %232

232:                                              ; preds = %231, %249
  %storemerge12110 = phi i32 [ 0, %231 ], [ %250, %249 ]
  br label %233

233:                                              ; preds = %232, %245
  %storemerge26109 = phi i32 [ 0, %232 ], [ %246, %245 ]
  br label %234

234:                                              ; preds = %233, %241
  %storemerge27108 = phi i32 [ 0, %233 ], [ %242, %241 ]
  %235 = shl i32 %storemerge27108, 6
  %236 = shl i32 %storemerge26109, 3
  %237 = add i32 %235, %236
  %238 = add nsw i32 %storemerge12110, %237
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %239
  store i32 1, ptr %240, align 4
  br label %241

241:                                              ; preds = %234
  %242 = add nsw i32 %storemerge27108, 1
  %243 = icmp slt i32 %242, 1
  br i1 %243, label %234, label %244, !llvm.loop !46

244:                                              ; preds = %241
  br label %245

245:                                              ; preds = %244
  %246 = add nsw i32 %storemerge26109, 1
  %247 = icmp slt i32 %246, 2
  br i1 %247, label %233, label %248, !llvm.loop !47

248:                                              ; preds = %245
  br label %249

249:                                              ; preds = %248
  %250 = add nsw i32 %storemerge12110, 1
  %251 = icmp slt i32 %250, 2
  br i1 %251, label %232, label %252, !llvm.loop !48

252:                                              ; preds = %249
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %253

253:                                              ; preds = %252, %270
  %storemerge13113 = phi i32 [ 0, %252 ], [ %271, %270 ]
  br label %254

254:                                              ; preds = %253, %266
  %storemerge24112 = phi i32 [ 0, %253 ], [ %267, %266 ]
  br label %255

255:                                              ; preds = %254, %262
  %storemerge25111 = phi i32 [ 0, %254 ], [ %263, %262 ]
  %256 = shl i32 %storemerge25111, 6
  %257 = shl i32 %storemerge24112, 3
  %258 = add i32 %256, %257
  %259 = add nsw i32 %storemerge13113, %258
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %260
  store i32 1, ptr %261, align 4
  br label %262

262:                                              ; preds = %255
  %263 = add nsw i32 %storemerge25111, 1
  %264 = icmp slt i32 %263, 2
  br i1 %264, label %255, label %265, !llvm.loop !49

265:                                              ; preds = %262
  br label %266

266:                                              ; preds = %265
  %267 = add nsw i32 %storemerge24112, 1
  %268 = icmp slt i32 %267, 1
  br i1 %268, label %254, label %269, !llvm.loop !50

269:                                              ; preds = %266
  br label %270

270:                                              ; preds = %269
  %271 = add nsw i32 %storemerge13113, 1
  %272 = icmp slt i32 %271, 2
  br i1 %272, label %253, label %273, !llvm.loop !51

273:                                              ; preds = %270
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %274

274:                                              ; preds = %273, %291
  %storemerge14116 = phi i32 [ 0, %273 ], [ %292, %291 ]
  br label %275

275:                                              ; preds = %274, %287
  %storemerge22115 = phi i32 [ 0, %274 ], [ %288, %287 ]
  br label %276

276:                                              ; preds = %275, %283
  %storemerge23114 = phi i32 [ 0, %275 ], [ %284, %283 ]
  %277 = shl i32 %storemerge23114, 6
  %278 = shl i32 %storemerge22115, 3
  %279 = add i32 %277, %278
  %280 = add nsw i32 %storemerge14116, %279
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %281
  store i32 1, ptr %282, align 4
  br label %283

283:                                              ; preds = %276
  %284 = add nsw i32 %storemerge23114, 1
  %285 = icmp slt i32 %284, 2
  br i1 %285, label %276, label %286, !llvm.loop !52

286:                                              ; preds = %283
  br label %287

287:                                              ; preds = %286
  %288 = add nsw i32 %storemerge22115, 1
  %289 = icmp slt i32 %288, 2
  br i1 %289, label %275, label %290, !llvm.loop !53

290:                                              ; preds = %287
  br label %291

291:                                              ; preds = %290
  %292 = add nsw i32 %storemerge14116, 1
  %293 = icmp slt i32 %292, 1
  br i1 %293, label %274, label %294, !llvm.loop !54

294:                                              ; preds = %291
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %295

295:                                              ; preds = %294, %312
  %storemerge15119 = phi i32 [ 0, %294 ], [ %313, %312 ]
  br label %296

296:                                              ; preds = %295, %308
  %storemerge20118 = phi i32 [ 0, %295 ], [ %309, %308 ]
  br label %297

297:                                              ; preds = %296, %304
  %storemerge21117 = phi i32 [ 0, %296 ], [ %305, %304 ]
  %298 = shl i32 %storemerge21117, 6
  %299 = shl i32 %storemerge20118, 3
  %300 = add i32 %298, %299
  %301 = add nsw i32 %storemerge15119, %300
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %302
  store i32 1, ptr %303, align 4
  br label %304

304:                                              ; preds = %297
  %305 = add nsw i32 %storemerge21117, 1
  %306 = icmp slt i32 %305, 2
  br i1 %306, label %297, label %307, !llvm.loop !55

307:                                              ; preds = %304
  br label %308

308:                                              ; preds = %307
  %309 = add nsw i32 %storemerge20118, 1
  %310 = icmp slt i32 %309, 2
  br i1 %310, label %296, label %311, !llvm.loop !56

311:                                              ; preds = %308
  br label %312

312:                                              ; preds = %311
  %313 = add nsw i32 %storemerge15119, 1
  %314 = icmp slt i32 %313, 2
  br i1 %314, label %295, label %315, !llvm.loop !57

315:                                              ; preds = %312
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
  br label %320

320:                                              ; preds = %319, %317
  %321 = load i32, ptr @n, align 4
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

1:                                                ; preds = %0, %2
  %storemerge1 = phi i32 [ 0, %0 ], [ %3, %2 ]
  call void @Puzzle()
  br label %2

2:                                                ; preds = %1
  %3 = add nsw i32 %storemerge1, 1
  %4 = icmp slt i32 %3, 100
  br i1 %4, label %1, label %5, !llvm.loop !58

5:                                                ; preds = %2
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
