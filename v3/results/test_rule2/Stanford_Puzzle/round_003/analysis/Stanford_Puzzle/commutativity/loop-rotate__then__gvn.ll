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
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  store i32 0, ptr %5, align 4
  %6 = sext i32 %0 to i64
  %7 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %6
  %8 = load i32, ptr %7, align 4
  %.not1 = icmp sgt i32 0, %8
  br i1 %.not1, label %24, label %.lr.ph

.lr.ph:                                           ; preds = %2
  br label %9

9:                                                ; preds = %.lr.ph, %22
  %10 = phi i32 [ 0, %.lr.ph ], [ %23, %22 ]
  %11 = getelementptr inbounds [2048 x i8], ptr @p, i64 %6
  %12 = sext i32 %10 to i64
  %13 = getelementptr inbounds [4 x i8], ptr %11, i64 %12
  %14 = load i32, ptr %13, align 4
  %.not2 = icmp eq i32 %14, 0
  br i1 %.not2, label %22, label %15

15:                                               ; preds = %9
  %16 = add nsw i32 %1, %10
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %17
  %19 = load i32, ptr %18, align 4
  %.not3 = icmp eq i32 %19, 0
  br i1 %.not3, label %21, label %20

20:                                               ; preds = %15
  br label %25

21:                                               ; preds = %15
  br label %22

22:                                               ; preds = %21, %9
  %23 = add nsw i32 %10, 1
  store i32 %23, ptr %5, align 4
  %.not = icmp sgt i32 %23, %8
  br i1 %.not, label %._crit_edge, label %9, !llvm.loop !7

._crit_edge:                                      ; preds = %22
  br label %24

24:                                               ; preds = %._crit_edge, %2
  br label %25

25:                                               ; preds = %24, %20
  %storemerge1 = phi i32 [ 1, %24 ], [ 0, %20 ]
  ret i32 %storemerge1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Place(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  store i32 0, ptr %5, align 4
  %6 = sext i32 %0 to i64
  %7 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %6
  %8 = load i32, ptr %7, align 4
  %.not1 = icmp sgt i32 0, %8
  br i1 %.not1, label %21, label %.lr.ph

.lr.ph:                                           ; preds = %2
  br label %9

9:                                                ; preds = %.lr.ph, %19
  %10 = phi i32 [ 0, %.lr.ph ], [ %20, %19 ]
  %11 = getelementptr inbounds [2048 x i8], ptr @p, i64 %6
  %12 = sext i32 %10 to i64
  %13 = getelementptr inbounds [4 x i8], ptr %11, i64 %12
  %14 = load i32, ptr %13, align 4
  %.not4 = icmp eq i32 %14, 0
  br i1 %.not4, label %19, label %15

15:                                               ; preds = %9
  %16 = add nsw i32 %1, %10
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %17
  store i32 1, ptr %18, align 4
  br label %19

19:                                               ; preds = %15, %9
  %20 = add nsw i32 %10, 1
  store i32 %20, ptr %5, align 4
  %.not = icmp sgt i32 %20, %8
  br i1 %.not, label %._crit_edge, label %9, !llvm.loop !9

._crit_edge:                                      ; preds = %19
  br label %21

21:                                               ; preds = %._crit_edge, %2
  %22 = getelementptr inbounds [4 x i8], ptr @class, i64 %6
  %23 = load i32, ptr %22, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %24
  %26 = load i32, ptr %25, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, ptr %25, align 4
  %28 = sext i32 %1 to i64
  %smax = call i32 @llvm.smax.i32(i32 %1, i32 512)
  %wide.trip.count = sext i32 %smax to i64
  store i32 %1, ptr %5, align 4
  %exitcond4 = icmp ne i64 %28, %wide.trip.count
  br i1 %exitcond4, label %.lr.ph7, label %36

.lr.ph7:                                          ; preds = %21
  br label %29

29:                                               ; preds = %.lr.ph7, %34
  %indvars.iv5 = phi i64 [ %28, %.lr.ph7 ], [ %indvars.iv.next, %34 ]
  %30 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %indvars.iv5
  %31 = load i32, ptr %30, align 4
  %.not3 = icmp eq i32 %31, 0
  br i1 %.not3, label %32, label %34

32:                                               ; preds = %29
  %33 = trunc nsw i64 %indvars.iv5 to i32
  br label %37

34:                                               ; preds = %29
  %indvars.iv.next = add nsw i64 %indvars.iv5, 1
  %35 = trunc nsw i64 %indvars.iv.next to i32
  store i32 %35, ptr %5, align 4
  %exitcond = icmp ne i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %29, label %._crit_edge8, !llvm.loop !10

._crit_edge8:                                     ; preds = %34
  br label %36

36:                                               ; preds = %._crit_edge8, %21
  br label %37

37:                                               ; preds = %36, %32
  %storemerge2 = phi i32 [ 0, %36 ], [ %33, %32 ]
  ret i32 %storemerge2
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Remove(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  store i32 0, ptr %5, align 4
  %6 = sext i32 %0 to i64
  %7 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %6
  %8 = load i32, ptr %7, align 4
  %.not2 = icmp sgt i32 0, %8
  br i1 %.not2, label %21, label %.lr.ph

.lr.ph:                                           ; preds = %2
  br label %9

9:                                                ; preds = %.lr.ph, %19
  %10 = phi i32 [ 0, %.lr.ph ], [ %20, %19 ]
  %11 = getelementptr inbounds [2048 x i8], ptr @p, i64 %6
  %12 = sext i32 %10 to i64
  %13 = getelementptr inbounds [4 x i8], ptr %11, i64 %12
  %14 = load i32, ptr %13, align 4
  %.not1 = icmp eq i32 %14, 0
  br i1 %.not1, label %19, label %15

15:                                               ; preds = %9
  %16 = add nsw i32 %1, %10
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %17
  store i32 0, ptr %18, align 4
  br label %19

19:                                               ; preds = %15, %9
  %20 = add nsw i32 %10, 1
  store i32 %20, ptr %5, align 4
  %.not = icmp sgt i32 %20, %8
  br i1 %.not, label %._crit_edge, label %9, !llvm.loop !11

._crit_edge:                                      ; preds = %19
  br label %21

21:                                               ; preds = %._crit_edge, %2
  %22 = getelementptr inbounds [4 x i8], ptr @class, i64 %6
  %23 = load i32, ptr %22, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %24
  %26 = load i32, ptr %25, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, ptr %25, align 4
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
  store i32 0, ptr %3, align 4
  br label %7

7:                                                ; preds = %1, %27
  %8 = phi i32 [ %0, %1 ], [ %28, %27 ]
  %9 = phi i32 [ 0, %1 ], [ %29, %27 ]
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [4 x i8], ptr @class, i64 %10
  %12 = load i32, ptr %11, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %13
  %15 = load i32, ptr %14, align 4
  %.not = icmp eq i32 %15, 0
  br i1 %.not, label %27, label %16

16:                                               ; preds = %7
  %17 = call i32 @Fit(i32 noundef %9, i32 noundef %8)
  %.not2 = icmp eq i32 %17, 0
  br i1 %.not2, label %25, label %18

18:                                               ; preds = %16
  %19 = call i32 @Place(i32 noundef %9, i32 noundef %8)
  store i32 %19, ptr %4, align 4
  %20 = call i32 @Trial(i32 noundef %19)
  %.not3 = icmp eq i32 %20, 0
  br i1 %.not3, label %21, label %23

21:                                               ; preds = %18
  %22 = icmp eq i32 %19, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %21, %18
  br label %32

24:                                               ; preds = %21
  call void @Remove(i32 noundef %9, i32 noundef %0)
  br label %25

25:                                               ; preds = %24, %16
  %26 = phi i32 [ %0, %24 ], [ %8, %16 ]
  br label %27

27:                                               ; preds = %25, %7
  %28 = phi i32 [ %26, %25 ], [ %8, %7 ]
  %29 = add nsw i32 %9, 1
  store i32 %29, ptr %3, align 4
  %30 = icmp slt i32 %29, 13
  br i1 %30, label %7, label %31, !llvm.loop !12

31:                                               ; preds = %27
  br label %32

32:                                               ; preds = %31, %23
  %storemerge1 = phi i32 [ 0, %31 ], [ 1, %23 ]
  ret i32 %storemerge1
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Puzzle() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, ptr %4, align 4
  br label %5

5:                                                ; preds = %0, %5
  %6 = phi i32 [ 0, %0 ], [ %9, %5 ]
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %7
  store i32 1, ptr %8, align 4
  %9 = add nsw i32 %6, 1
  store i32 %9, ptr %4, align 4
  %10 = icmp slt i32 %9, 512
  br i1 %10, label %5, label %11, !llvm.loop !13

11:                                               ; preds = %5
  store i32 1, ptr %1, align 4
  br label %12

12:                                               ; preds = %11, %29
  %13 = phi i32 [ 1, %11 ], [ %30, %29 ]
  store i32 1, ptr %2, align 4
  br label %14

14:                                               ; preds = %12, %26
  %15 = phi i32 [ 1, %12 ], [ %27, %26 ]
  store i32 1, ptr %3, align 4
  br label %16

16:                                               ; preds = %14, %16
  %17 = phi i32 [ 1, %14 ], [ %24, %16 ]
  %18 = shl i32 %17, 6
  %19 = shl i32 %15, 3
  %20 = add i32 %18, %19
  %21 = add nsw i32 %13, %20
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %22
  store i32 0, ptr %23, align 4
  %24 = add nsw i32 %17, 1
  store i32 %24, ptr %3, align 4
  %25 = icmp slt i32 %24, 6
  br i1 %25, label %16, label %26, !llvm.loop !14

26:                                               ; preds = %16
  %27 = add nsw i32 %15, 1
  store i32 %27, ptr %2, align 4
  %28 = icmp slt i32 %27, 6
  br i1 %28, label %14, label %29, !llvm.loop !15

29:                                               ; preds = %26
  %30 = add nsw i32 %13, 1
  store i32 %30, ptr %1, align 4
  %31 = icmp slt i32 %30, 6
  br i1 %31, label %12, label %32, !llvm.loop !16

32:                                               ; preds = %29
  store i32 0, ptr %1, align 4
  br label %33

33:                                               ; preds = %32, %43
  %34 = phi i32 [ 0, %32 ], [ %44, %43 ]
  store i32 0, ptr %4, align 4
  br label %35

35:                                               ; preds = %33, %35
  %36 = phi i32 [ 0, %33 ], [ %41, %35 ]
  %37 = sext i32 %34 to i64
  %38 = getelementptr inbounds [2048 x i8], ptr @p, i64 %37
  %39 = sext i32 %36 to i64
  %40 = getelementptr inbounds [4 x i8], ptr %38, i64 %39
  store i32 0, ptr %40, align 4
  %41 = add nsw i32 %36, 1
  store i32 %41, ptr %4, align 4
  %42 = icmp slt i32 %41, 512
  br i1 %42, label %35, label %43, !llvm.loop !17

43:                                               ; preds = %35
  %44 = add nsw i32 %34, 1
  store i32 %44, ptr %1, align 4
  %45 = icmp slt i32 %44, 13
  br i1 %45, label %33, label %46, !llvm.loop !18

46:                                               ; preds = %43
  store i32 0, ptr %1, align 4
  br label %47

47:                                               ; preds = %46, %59
  %48 = phi i32 [ 0, %46 ], [ %60, %59 ]
  store i32 0, ptr %2, align 4
  br label %49

49:                                               ; preds = %47, %56
  %50 = phi i32 [ 0, %47 ], [ %57, %56 ]
  store i32 0, ptr %3, align 4
  br label %51

51:                                               ; preds = %._crit_edge, %49
  %52 = shl i32 %50, 3
  %53 = add nsw i32 %48, %52
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [4 x i8], ptr @p, i64 %54
  store i32 1, ptr %55, align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %._crit_edge, label %56, !llvm.loop !19

._crit_edge:                                      ; preds = %51
  br label %51, !llvm.loop !19

56:                                               ; preds = %51
  %57 = add nsw i32 %50, 1
  store i32 %57, ptr %2, align 4
  %58 = icmp slt i32 %57, 2
  br i1 %58, label %49, label %59, !llvm.loop !20

59:                                               ; preds = %56
  %60 = add nsw i32 %48, 1
  store i32 %60, ptr %1, align 4
  %61 = icmp slt i32 %60, 4
  br i1 %61, label %47, label %62, !llvm.loop !21

62:                                               ; preds = %59
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  store i32 0, ptr %1, align 4
  br label %63

63:                                               ; preds = %62, %75
  %64 = phi i32 [ 0, %62 ], [ %76, %75 ]
  store i32 0, ptr %2, align 4
  br label %65

65:                                               ; preds = %._crit_edge32, %63
  store i32 0, ptr %3, align 4
  br label %66

66:                                               ; preds = %65, %66
  %67 = phi i32 [ 0, %65 ], [ %72, %66 ]
  %68 = shl i32 %67, 6
  %69 = add nsw i32 %64, %68
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %70
  store i32 1, ptr %71, align 4
  %72 = add nsw i32 %67, 1
  store i32 %72, ptr %3, align 4
  %73 = icmp slt i32 %72, 4
  br i1 %73, label %66, label %74, !llvm.loop !22

74:                                               ; preds = %66
  store i32 1, ptr %2, align 4
  br i1 false, label %._crit_edge32, label %75, !llvm.loop !23

._crit_edge32:                                    ; preds = %74
  br label %65, !llvm.loop !23

75:                                               ; preds = %74
  %76 = add nsw i32 %64, 1
  store i32 %76, ptr %1, align 4
  %77 = icmp slt i32 %76, 2
  br i1 %77, label %63, label %78, !llvm.loop !24

78:                                               ; preds = %75
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  store i32 0, ptr %1, align 4
  br label %79

79:                                               ; preds = %._crit_edge33, %78
  store i32 0, ptr %2, align 4
  br label %80

80:                                               ; preds = %79, %91
  %81 = phi i32 [ 0, %79 ], [ %92, %91 ]
  store i32 0, ptr %3, align 4
  br label %82

82:                                               ; preds = %80, %82
  %83 = phi i32 [ 0, %80 ], [ %89, %82 ]
  %84 = shl i32 %83, 6
  %85 = shl i32 %81, 3
  %86 = add i32 %84, %85
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %87
  store i32 1, ptr %88, align 4
  %89 = add nsw i32 %83, 1
  store i32 %89, ptr %3, align 4
  %90 = icmp slt i32 %89, 2
  br i1 %90, label %82, label %91, !llvm.loop !25

91:                                               ; preds = %82
  %92 = add nsw i32 %81, 1
  store i32 %92, ptr %2, align 4
  %93 = icmp slt i32 %92, 4
  br i1 %93, label %80, label %94, !llvm.loop !26

94:                                               ; preds = %91
  store i32 1, ptr %1, align 4
  br i1 false, label %._crit_edge33, label %95, !llvm.loop !27

._crit_edge33:                                    ; preds = %94
  br label %79, !llvm.loop !27

95:                                               ; preds = %94
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  store i32 0, ptr %1, align 4
  br label %96

96:                                               ; preds = %95, %108
  %97 = phi i32 [ 0, %95 ], [ %109, %108 ]
  store i32 0, ptr %2, align 4
  br label %98

98:                                               ; preds = %96, %105
  %99 = phi i32 [ 0, %96 ], [ %106, %105 ]
  store i32 0, ptr %3, align 4
  br label %100

100:                                              ; preds = %._crit_edge34, %98
  %101 = shl i32 %99, 3
  %102 = add nsw i32 %97, %101
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %103
  store i32 1, ptr %104, align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %._crit_edge34, label %105, !llvm.loop !28

._crit_edge34:                                    ; preds = %100
  br label %100, !llvm.loop !28

105:                                              ; preds = %100
  %106 = add nsw i32 %99, 1
  store i32 %106, ptr %2, align 4
  %107 = icmp slt i32 %106, 4
  br i1 %107, label %98, label %108, !llvm.loop !29

108:                                              ; preds = %105
  %109 = add nsw i32 %97, 1
  store i32 %109, ptr %1, align 4
  %110 = icmp slt i32 %109, 2
  br i1 %110, label %96, label %111, !llvm.loop !30

111:                                              ; preds = %108
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  store i32 0, ptr %1, align 4
  br label %112

112:                                              ; preds = %111, %124
  %113 = phi i32 [ 0, %111 ], [ %125, %124 ]
  store i32 0, ptr %2, align 4
  br label %114

114:                                              ; preds = %._crit_edge35, %112
  store i32 0, ptr %3, align 4
  br label %115

115:                                              ; preds = %114, %115
  %116 = phi i32 [ 0, %114 ], [ %121, %115 ]
  %117 = shl i32 %116, 6
  %118 = add nsw i32 %113, %117
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %119
  store i32 1, ptr %120, align 4
  %121 = add nsw i32 %116, 1
  store i32 %121, ptr %3, align 4
  %122 = icmp slt i32 %121, 2
  br i1 %122, label %115, label %123, !llvm.loop !31

123:                                              ; preds = %115
  store i32 1, ptr %2, align 4
  br i1 false, label %._crit_edge35, label %124, !llvm.loop !32

._crit_edge35:                                    ; preds = %123
  br label %114, !llvm.loop !32

124:                                              ; preds = %123
  %125 = add nsw i32 %113, 1
  store i32 %125, ptr %1, align 4
  %126 = icmp slt i32 %125, 4
  br i1 %126, label %112, label %127, !llvm.loop !33

127:                                              ; preds = %124
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  store i32 0, ptr %1, align 4
  br label %128

128:                                              ; preds = %._crit_edge36, %127
  store i32 0, ptr %2, align 4
  br label %129

129:                                              ; preds = %128, %140
  %130 = phi i32 [ 0, %128 ], [ %141, %140 ]
  store i32 0, ptr %3, align 4
  br label %131

131:                                              ; preds = %129, %131
  %132 = phi i32 [ 0, %129 ], [ %138, %131 ]
  %133 = shl i32 %132, 6
  %134 = shl i32 %130, 3
  %135 = add i32 %133, %134
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %136
  store i32 1, ptr %137, align 4
  %138 = add nsw i32 %132, 1
  store i32 %138, ptr %3, align 4
  %139 = icmp slt i32 %138, 4
  br i1 %139, label %131, label %140, !llvm.loop !34

140:                                              ; preds = %131
  %141 = add nsw i32 %130, 1
  store i32 %141, ptr %2, align 4
  %142 = icmp slt i32 %141, 2
  br i1 %142, label %129, label %143, !llvm.loop !35

143:                                              ; preds = %140
  store i32 1, ptr %1, align 4
  br i1 false, label %._crit_edge36, label %144, !llvm.loop !36

._crit_edge36:                                    ; preds = %143
  br label %128, !llvm.loop !36

144:                                              ; preds = %143
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  store i32 0, ptr %1, align 4
  br label %145

145:                                              ; preds = %144, %152
  %146 = phi i32 [ 0, %144 ], [ %153, %152 ]
  store i32 0, ptr %2, align 4
  br label %147

147:                                              ; preds = %._crit_edge38, %145
  store i32 0, ptr %3, align 4
  br label %148

148:                                              ; preds = %._crit_edge37, %147
  %149 = sext i32 %146 to i64
  %150 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %149
  store i32 1, ptr %150, align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %._crit_edge37, label %151, !llvm.loop !37

._crit_edge37:                                    ; preds = %148
  br label %148, !llvm.loop !37

151:                                              ; preds = %148
  store i32 1, ptr %2, align 4
  br i1 false, label %._crit_edge38, label %152, !llvm.loop !38

._crit_edge38:                                    ; preds = %151
  br label %147, !llvm.loop !38

152:                                              ; preds = %151
  %153 = add nsw i32 %146, 1
  store i32 %153, ptr %1, align 4
  %154 = icmp slt i32 %153, 3
  br i1 %154, label %145, label %155, !llvm.loop !39

155:                                              ; preds = %152
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  store i32 0, ptr %1, align 4
  br label %156

156:                                              ; preds = %._crit_edge40, %155
  store i32 0, ptr %2, align 4
  br label %157

157:                                              ; preds = %156, %163
  %158 = phi i32 [ 0, %156 ], [ %164, %163 ]
  store i32 0, ptr %3, align 4
  br label %159

159:                                              ; preds = %._crit_edge39, %157
  %160 = shl i32 %158, 3
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %161
  store i32 1, ptr %162, align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %._crit_edge39, label %163, !llvm.loop !40

._crit_edge39:                                    ; preds = %159
  br label %159, !llvm.loop !40

163:                                              ; preds = %159
  %164 = add nsw i32 %158, 1
  store i32 %164, ptr %2, align 4
  %165 = icmp slt i32 %164, 3
  br i1 %165, label %157, label %166, !llvm.loop !41

166:                                              ; preds = %163
  store i32 1, ptr %1, align 4
  br i1 false, label %._crit_edge40, label %167, !llvm.loop !42

._crit_edge40:                                    ; preds = %166
  br label %156, !llvm.loop !42

167:                                              ; preds = %166
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  store i32 0, ptr %1, align 4
  br label %168

168:                                              ; preds = %._crit_edge42, %167
  store i32 0, ptr %2, align 4
  br label %169

169:                                              ; preds = %._crit_edge41, %168
  store i32 0, ptr %3, align 4
  br label %170

170:                                              ; preds = %169, %170
  %171 = phi i32 [ 0, %169 ], [ %175, %170 ]
  %172 = shl i32 %171, 6
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %173
  store i32 1, ptr %174, align 4
  %175 = add nsw i32 %171, 1
  store i32 %175, ptr %3, align 4
  %176 = icmp slt i32 %175, 3
  br i1 %176, label %170, label %177, !llvm.loop !43

177:                                              ; preds = %170
  store i32 1, ptr %2, align 4
  br i1 false, label %._crit_edge41, label %178, !llvm.loop !44

._crit_edge41:                                    ; preds = %177
  br label %169, !llvm.loop !44

178:                                              ; preds = %177
  store i32 1, ptr %1, align 4
  br i1 false, label %._crit_edge42, label %179, !llvm.loop !45

._crit_edge42:                                    ; preds = %178
  br label %168, !llvm.loop !45

179:                                              ; preds = %178
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  store i32 0, ptr %1, align 4
  br label %180

180:                                              ; preds = %179, %192
  %181 = phi i32 [ 0, %179 ], [ %193, %192 ]
  store i32 0, ptr %2, align 4
  br label %182

182:                                              ; preds = %180, %189
  %183 = phi i32 [ 0, %180 ], [ %190, %189 ]
  store i32 0, ptr %3, align 4
  br label %184

184:                                              ; preds = %._crit_edge43, %182
  %185 = shl i32 %183, 3
  %186 = add nsw i32 %181, %185
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %187
  store i32 1, ptr %188, align 4
  store i32 1, ptr %3, align 4
  br i1 false, label %._crit_edge43, label %189, !llvm.loop !46

._crit_edge43:                                    ; preds = %184
  br label %184, !llvm.loop !46

189:                                              ; preds = %184
  %190 = add nsw i32 %183, 1
  store i32 %190, ptr %2, align 4
  %191 = icmp slt i32 %190, 2
  br i1 %191, label %182, label %192, !llvm.loop !47

192:                                              ; preds = %189
  %193 = add nsw i32 %181, 1
  store i32 %193, ptr %1, align 4
  %194 = icmp slt i32 %193, 2
  br i1 %194, label %180, label %195, !llvm.loop !48

195:                                              ; preds = %192
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  store i32 0, ptr %1, align 4
  br label %196

196:                                              ; preds = %195, %208
  %197 = phi i32 [ 0, %195 ], [ %209, %208 ]
  store i32 0, ptr %2, align 4
  br label %198

198:                                              ; preds = %._crit_edge44, %196
  store i32 0, ptr %3, align 4
  br label %199

199:                                              ; preds = %198, %199
  %200 = phi i32 [ 0, %198 ], [ %205, %199 ]
  %201 = shl i32 %200, 6
  %202 = add nsw i32 %197, %201
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %203
  store i32 1, ptr %204, align 4
  %205 = add nsw i32 %200, 1
  store i32 %205, ptr %3, align 4
  %206 = icmp slt i32 %205, 2
  br i1 %206, label %199, label %207, !llvm.loop !49

207:                                              ; preds = %199
  store i32 1, ptr %2, align 4
  br i1 false, label %._crit_edge44, label %208, !llvm.loop !50

._crit_edge44:                                    ; preds = %207
  br label %198, !llvm.loop !50

208:                                              ; preds = %207
  %209 = add nsw i32 %197, 1
  store i32 %209, ptr %1, align 4
  %210 = icmp slt i32 %209, 2
  br i1 %210, label %196, label %211, !llvm.loop !51

211:                                              ; preds = %208
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  store i32 0, ptr %1, align 4
  br label %212

212:                                              ; preds = %._crit_edge45, %211
  store i32 0, ptr %2, align 4
  br label %213

213:                                              ; preds = %212, %224
  %214 = phi i32 [ 0, %212 ], [ %225, %224 ]
  store i32 0, ptr %3, align 4
  br label %215

215:                                              ; preds = %213, %215
  %216 = phi i32 [ 0, %213 ], [ %222, %215 ]
  %217 = shl i32 %216, 6
  %218 = shl i32 %214, 3
  %219 = add i32 %217, %218
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %220
  store i32 1, ptr %221, align 4
  %222 = add nsw i32 %216, 1
  store i32 %222, ptr %3, align 4
  %223 = icmp slt i32 %222, 2
  br i1 %223, label %215, label %224, !llvm.loop !52

224:                                              ; preds = %215
  %225 = add nsw i32 %214, 1
  store i32 %225, ptr %2, align 4
  %226 = icmp slt i32 %225, 2
  br i1 %226, label %213, label %227, !llvm.loop !53

227:                                              ; preds = %224
  store i32 1, ptr %1, align 4
  br i1 false, label %._crit_edge45, label %228, !llvm.loop !54

._crit_edge45:                                    ; preds = %227
  br label %212, !llvm.loop !54

228:                                              ; preds = %227
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  store i32 0, ptr %1, align 4
  br label %229

229:                                              ; preds = %228, %246
  %230 = phi i32 [ 0, %228 ], [ %247, %246 ]
  store i32 0, ptr %2, align 4
  br label %231

231:                                              ; preds = %229, %243
  %232 = phi i32 [ 0, %229 ], [ %244, %243 ]
  store i32 0, ptr %3, align 4
  br label %233

233:                                              ; preds = %231, %233
  %234 = phi i32 [ 0, %231 ], [ %241, %233 ]
  %235 = shl i32 %234, 6
  %236 = shl i32 %232, 3
  %237 = add i32 %235, %236
  %238 = add nsw i32 %230, %237
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %239
  store i32 1, ptr %240, align 4
  %241 = add nsw i32 %234, 1
  store i32 %241, ptr %3, align 4
  %242 = icmp slt i32 %241, 2
  br i1 %242, label %233, label %243, !llvm.loop !55

243:                                              ; preds = %233
  %244 = add nsw i32 %232, 1
  store i32 %244, ptr %2, align 4
  %245 = icmp slt i32 %244, 2
  br i1 %245, label %231, label %246, !llvm.loop !56

246:                                              ; preds = %243
  %247 = add nsw i32 %230, 1
  store i32 %247, ptr %1, align 4
  %248 = icmp slt i32 %247, 2
  br i1 %248, label %229, label %249, !llvm.loop !57

249:                                              ; preds = %246
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 73, ptr %4, align 4
  store i32 0, ptr @kount, align 4
  %250 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %250, 0
  br i1 %.not, label %253, label %251

251:                                              ; preds = %249
  %252 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %252, ptr @n, align 4
  br label %254

253:                                              ; preds = %249
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %.pre = load i32, ptr @n, align 4
  br label %254

254:                                              ; preds = %253, %251
  %255 = phi i32 [ %.pre, %253 ], [ %252, %251 ]
  %256 = call i32 @Trial(i32 noundef %255)
  %.not16 = icmp eq i32 %256, 0
  br i1 %.not16, label %257, label %258

257:                                              ; preds = %254
  %puts17 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %262

258:                                              ; preds = %254
  %259 = load i32, ptr @kount, align 4
  %.not18 = icmp eq i32 %259, 2005
  br i1 %.not18, label %261, label %260

260:                                              ; preds = %258
  %puts19 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %261

261:                                              ; preds = %260, %258
  br label %262

262:                                              ; preds = %261, %257
  %263 = load i32, ptr @n, align 4
  %264 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %263) #4
  %265 = load i32, ptr @kount, align 4
  %266 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %265) #4
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  br label %2

2:                                                ; preds = %0, %2
  %3 = phi i32 [ 0, %0 ], [ %4, %2 ]
  call void @Puzzle()
  %4 = add nsw i32 %3, 1
  store i32 %4, ptr %1, align 4
  %5 = icmp slt i32 %4, 100
  br i1 %5, label %2, label %6, !llvm.loop !58

6:                                                ; preds = %2
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
