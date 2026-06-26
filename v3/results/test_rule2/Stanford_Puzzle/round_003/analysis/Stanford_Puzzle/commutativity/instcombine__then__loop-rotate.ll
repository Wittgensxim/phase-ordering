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
  %6 = load i32, ptr %3, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %7
  %9 = load i32, ptr %8, align 4
  %.not1 = icmp sgt i32 0, %9
  br i1 %.not1, label %32, label %.lr.ph

.lr.ph:                                           ; preds = %2
  br label %10

10:                                               ; preds = %.lr.ph, %25
  %11 = phi i64 [ %7, %.lr.ph ], [ %29, %25 ]
  %storemerge2 = phi i32 [ 0, %.lr.ph ], [ %27, %25 ]
  %12 = getelementptr inbounds [2048 x i8], ptr @p, i64 %11
  %13 = sext i32 %storemerge2 to i64
  %14 = getelementptr inbounds [4 x i8], ptr %12, i64 %13
  %15 = load i32, ptr %14, align 4
  %.not2 = icmp eq i32 %15, 0
  br i1 %.not2, label %24, label %16

16:                                               ; preds = %10
  %17 = load i32, ptr %4, align 4
  %18 = add nsw i32 %17, %storemerge2
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %19
  %21 = load i32, ptr %20, align 4
  %.not3 = icmp eq i32 %21, 0
  br i1 %.not3, label %23, label %22

22:                                               ; preds = %16
  br label %33

23:                                               ; preds = %16
  br label %24

24:                                               ; preds = %23, %10
  br label %25

25:                                               ; preds = %24
  %26 = load i32, ptr %5, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, ptr %5, align 4
  %28 = load i32, ptr %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %29
  %31 = load i32, ptr %30, align 4
  %.not = icmp sgt i32 %27, %31
  br i1 %.not, label %._crit_edge, label %10, !llvm.loop !7

._crit_edge:                                      ; preds = %25
  br label %32

32:                                               ; preds = %._crit_edge, %2
  br label %33

33:                                               ; preds = %32, %22
  %storemerge1 = phi i32 [ 1, %32 ], [ 0, %22 ]
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
  %6 = load i32, ptr %3, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %7
  %9 = load i32, ptr %8, align 4
  %.not2 = icmp sgt i32 0, %9
  br i1 %.not2, label %29, label %.lr.ph

.lr.ph:                                           ; preds = %2
  br label %10

10:                                               ; preds = %.lr.ph, %22
  %11 = phi i64 [ %7, %.lr.ph ], [ %26, %22 ]
  %storemerge3 = phi i32 [ 0, %.lr.ph ], [ %24, %22 ]
  %12 = getelementptr inbounds [2048 x i8], ptr @p, i64 %11
  %13 = sext i32 %storemerge3 to i64
  %14 = getelementptr inbounds [4 x i8], ptr %12, i64 %13
  %15 = load i32, ptr %14, align 4
  %.not4 = icmp eq i32 %15, 0
  br i1 %.not4, label %21, label %16

16:                                               ; preds = %10
  %17 = load i32, ptr %4, align 4
  %18 = add nsw i32 %17, %storemerge3
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %19
  store i32 1, ptr %20, align 4
  br label %21

21:                                               ; preds = %16, %10
  br label %22

22:                                               ; preds = %21
  %23 = load i32, ptr %5, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, ptr %5, align 4
  %25 = load i32, ptr %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %26
  %28 = load i32, ptr %27, align 4
  %.not = icmp sgt i32 %24, %28
  br i1 %.not, label %._crit_edge, label %10, !llvm.loop !9

._crit_edge:                                      ; preds = %22
  %split = phi i64 [ %26, %22 ]
  br label %29

29:                                               ; preds = %._crit_edge, %2
  %.lcssa = phi i64 [ %split, %._crit_edge ], [ %7, %2 ]
  %30 = getelementptr inbounds [4 x i8], ptr @class, i64 %.lcssa
  %31 = load i32, ptr %30, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %32
  %34 = load i32, ptr %33, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, ptr %33, align 4
  %36 = load i32, ptr %4, align 4
  %37 = sext i32 %36 to i64
  %smax = call i32 @llvm.smax.i32(i32 %36, i32 512)
  %wide.trip.count = zext nneg i32 %smax to i64
  store i32 %36, ptr %5, align 4
  %exitcond.not4 = icmp eq i64 %37, %wide.trip.count
  br i1 %exitcond.not4, label %46, label %.lr.ph7

.lr.ph7:                                          ; preds = %29
  br label %38

38:                                               ; preds = %.lr.ph7, %44
  %indvars.iv5 = phi i64 [ %37, %.lr.ph7 ], [ %indvars.iv.next, %44 ]
  %39 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %indvars.iv5
  %40 = load i32, ptr %39, align 4
  %.not3 = icmp eq i32 %40, 0
  br i1 %.not3, label %41, label %43

41:                                               ; preds = %38
  %indvars.iv.lcssa1 = phi i64 [ %indvars.iv5, %38 ]
  %42 = trunc nsw i64 %indvars.iv.lcssa1 to i32
  br label %47

43:                                               ; preds = %38
  br label %44

44:                                               ; preds = %43
  %indvars.iv.next = add nsw i64 %indvars.iv5, 1
  %45 = trunc nsw i64 %indvars.iv.next to i32
  store i32 %45, ptr %5, align 4
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge8, label %38, !llvm.loop !10

._crit_edge8:                                     ; preds = %44
  br label %46

46:                                               ; preds = %._crit_edge8, %29
  br label %47

47:                                               ; preds = %46, %41
  %storemerge2 = phi i32 [ 0, %46 ], [ %42, %41 ]
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
  %6 = load i32, ptr %3, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %7
  %9 = load i32, ptr %8, align 4
  %.not2 = icmp sgt i32 0, %9
  br i1 %.not2, label %29, label %.lr.ph

.lr.ph:                                           ; preds = %2
  br label %10

10:                                               ; preds = %.lr.ph, %22
  %11 = phi i64 [ %7, %.lr.ph ], [ %26, %22 ]
  %storemerge3 = phi i32 [ 0, %.lr.ph ], [ %24, %22 ]
  %12 = getelementptr inbounds [2048 x i8], ptr @p, i64 %11
  %13 = sext i32 %storemerge3 to i64
  %14 = getelementptr inbounds [4 x i8], ptr %12, i64 %13
  %15 = load i32, ptr %14, align 4
  %.not1 = icmp eq i32 %15, 0
  br i1 %.not1, label %21, label %16

16:                                               ; preds = %10
  %17 = load i32, ptr %4, align 4
  %18 = add nsw i32 %17, %storemerge3
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %19
  store i32 0, ptr %20, align 4
  br label %21

21:                                               ; preds = %16, %10
  br label %22

22:                                               ; preds = %21
  %23 = load i32, ptr %5, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, ptr %5, align 4
  %25 = load i32, ptr %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %26
  %28 = load i32, ptr %27, align 4
  %.not = icmp sgt i32 %24, %28
  br i1 %.not, label %._crit_edge, label %10, !llvm.loop !11

._crit_edge:                                      ; preds = %22
  %split = phi i64 [ %26, %22 ]
  br label %29

29:                                               ; preds = %._crit_edge, %2
  %.lcssa = phi i64 [ %split, %._crit_edge ], [ %7, %2 ]
  %30 = getelementptr inbounds [4 x i8], ptr @class, i64 %.lcssa
  %31 = load i32, ptr %30, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %32
  %34 = load i32, ptr %33, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, ptr %33, align 4
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

7:                                                ; preds = %1, %32
  %storemerge2 = phi i32 [ 0, %1 ], [ %34, %32 ]
  %8 = sext i32 %storemerge2 to i64
  %9 = getelementptr inbounds [4 x i8], ptr @class, i64 %8
  %10 = load i32, ptr %9, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %11
  %13 = load i32, ptr %12, align 4
  %.not = icmp eq i32 %13, 0
  br i1 %.not, label %31, label %14

14:                                               ; preds = %7
  %15 = load i32, ptr %2, align 4
  %16 = call i32 @Fit(i32 noundef %storemerge2, i32 noundef %15)
  %.not2 = icmp eq i32 %16, 0
  br i1 %.not2, label %30, label %17

17:                                               ; preds = %14
  %18 = load i32, ptr %3, align 4
  %19 = load i32, ptr %2, align 4
  %20 = call i32 @Place(i32 noundef %18, i32 noundef %19)
  store i32 %20, ptr %4, align 4
  %21 = call i32 @Trial(i32 noundef %20)
  %.not3 = icmp eq i32 %21, 0
  br i1 %.not3, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32, ptr %4, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22, %17
  br label %37

26:                                               ; preds = %22
  %27 = load i32, ptr %3, align 4
  %28 = load i32, ptr %2, align 4
  call void @Remove(i32 noundef %27, i32 noundef %28)
  br label %29

29:                                               ; preds = %26
  br label %30

30:                                               ; preds = %29, %14
  br label %31

31:                                               ; preds = %30, %7
  br label %32

32:                                               ; preds = %31
  %33 = load i32, ptr %3, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, ptr %3, align 4
  %35 = icmp slt i32 %34, 13
  br i1 %35, label %7, label %36, !llvm.loop !12

36:                                               ; preds = %32
  br label %37

37:                                               ; preds = %36, %25
  %storemerge1 = phi i32 [ 0, %36 ], [ 1, %25 ]
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

5:                                                ; preds = %0, %8
  %storemerge16 = phi i32 [ 0, %0 ], [ %10, %8 ]
  %6 = sext i32 %storemerge16 to i64
  %7 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %6
  store i32 1, ptr %7, align 4
  br label %8

8:                                                ; preds = %5
  %9 = load i32, ptr %4, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, ptr %4, align 4
  %11 = icmp slt i32 %10, 512
  br i1 %11, label %5, label %12, !llvm.loop !13

12:                                               ; preds = %8
  store i32 1, ptr %1, align 4
  br label %13

13:                                               ; preds = %12, %34
  store i32 1, ptr %2, align 4
  br label %14

14:                                               ; preds = %13, %29
  store i32 1, ptr %3, align 4
  br label %15

15:                                               ; preds = %14, %24
  %storemerge4817 = phi i32 [ 1, %14 ], [ %26, %24 ]
  %16 = load i32, ptr %1, align 4
  %17 = load i32, ptr %2, align 4
  %18 = shl i32 %storemerge4817, 6
  %19 = shl i32 %17, 3
  %20 = add i32 %18, %19
  %21 = add nsw i32 %16, %20
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %22
  store i32 0, ptr %23, align 4
  br label %24

24:                                               ; preds = %15
  %25 = load i32, ptr %3, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, ptr %3, align 4
  %27 = icmp slt i32 %26, 6
  br i1 %27, label %15, label %28, !llvm.loop !14

28:                                               ; preds = %24
  br label %29

29:                                               ; preds = %28
  %30 = load i32, ptr %2, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, ptr %2, align 4
  %32 = icmp slt i32 %31, 6
  br i1 %32, label %14, label %33, !llvm.loop !15

33:                                               ; preds = %29
  br label %34

34:                                               ; preds = %33
  %35 = load i32, ptr %1, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, ptr %1, align 4
  %37 = icmp slt i32 %36, 6
  br i1 %37, label %13, label %38, !llvm.loop !16

38:                                               ; preds = %34
  store i32 0, ptr %1, align 4
  br label %39

39:                                               ; preds = %38, %51
  store i32 0, ptr %4, align 4
  br label %40

40:                                               ; preds = %39, %46
  %storemerge4618 = phi i32 [ 0, %39 ], [ %48, %46 ]
  %41 = load i32, ptr %1, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [2048 x i8], ptr @p, i64 %42
  %44 = sext i32 %storemerge4618 to i64
  %45 = getelementptr inbounds [4 x i8], ptr %43, i64 %44
  store i32 0, ptr %45, align 4
  br label %46

46:                                               ; preds = %40
  %47 = load i32, ptr %4, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, ptr %4, align 4
  %49 = icmp slt i32 %48, 512
  br i1 %49, label %40, label %50, !llvm.loop !17

50:                                               ; preds = %46
  br label %51

51:                                               ; preds = %50
  %52 = load i32, ptr %1, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, ptr %1, align 4
  %54 = icmp slt i32 %53, 13
  br i1 %54, label %39, label %55, !llvm.loop !18

55:                                               ; preds = %51
  store i32 0, ptr %1, align 4
  br label %56

56:                                               ; preds = %55, %77
  store i32 0, ptr %2, align 4
  br label %57

57:                                               ; preds = %56, %72
  store i32 0, ptr %3, align 4
  br label %58

58:                                               ; preds = %57, %67
  %storemerge4519 = phi i32 [ 0, %57 ], [ %69, %67 ]
  %59 = load i32, ptr %1, align 4
  %60 = load i32, ptr %2, align 4
  %61 = shl i32 %storemerge4519, 6
  %62 = shl i32 %60, 3
  %63 = add i32 %61, %62
  %64 = add nsw i32 %59, %63
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [4 x i8], ptr @p, i64 %65
  store i32 1, ptr %66, align 4
  br label %67

67:                                               ; preds = %58
  %68 = load i32, ptr %3, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, ptr %3, align 4
  %70 = icmp slt i32 %69, 1
  br i1 %70, label %58, label %71, !llvm.loop !19

71:                                               ; preds = %67
  br label %72

72:                                               ; preds = %71
  %73 = load i32, ptr %2, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, ptr %2, align 4
  %75 = icmp slt i32 %74, 2
  br i1 %75, label %57, label %76, !llvm.loop !20

76:                                               ; preds = %72
  br label %77

77:                                               ; preds = %76
  %78 = load i32, ptr %1, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, ptr %1, align 4
  %80 = icmp slt i32 %79, 4
  br i1 %80, label %56, label %81, !llvm.loop !21

81:                                               ; preds = %77
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  store i32 0, ptr %1, align 4
  br label %82

82:                                               ; preds = %81, %103
  store i32 0, ptr %2, align 4
  br label %83

83:                                               ; preds = %82, %98
  store i32 0, ptr %3, align 4
  br label %84

84:                                               ; preds = %83, %93
  %storemerge4320 = phi i32 [ 0, %83 ], [ %95, %93 ]
  %85 = load i32, ptr %1, align 4
  %86 = load i32, ptr %2, align 4
  %87 = shl i32 %storemerge4320, 6
  %88 = shl i32 %86, 3
  %89 = add i32 %87, %88
  %90 = add nsw i32 %85, %89
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %91
  store i32 1, ptr %92, align 4
  br label %93

93:                                               ; preds = %84
  %94 = load i32, ptr %3, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, ptr %3, align 4
  %96 = icmp slt i32 %95, 4
  br i1 %96, label %84, label %97, !llvm.loop !22

97:                                               ; preds = %93
  br label %98

98:                                               ; preds = %97
  %99 = load i32, ptr %2, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, ptr %2, align 4
  %101 = icmp slt i32 %100, 1
  br i1 %101, label %83, label %102, !llvm.loop !23

102:                                              ; preds = %98
  br label %103

103:                                              ; preds = %102
  %104 = load i32, ptr %1, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, ptr %1, align 4
  %106 = icmp slt i32 %105, 2
  br i1 %106, label %82, label %107, !llvm.loop !24

107:                                              ; preds = %103
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  store i32 0, ptr %1, align 4
  br label %108

108:                                              ; preds = %107, %129
  store i32 0, ptr %2, align 4
  br label %109

109:                                              ; preds = %108, %124
  store i32 0, ptr %3, align 4
  br label %110

110:                                              ; preds = %109, %119
  %storemerge4121 = phi i32 [ 0, %109 ], [ %121, %119 ]
  %111 = load i32, ptr %1, align 4
  %112 = load i32, ptr %2, align 4
  %113 = shl i32 %storemerge4121, 6
  %114 = shl i32 %112, 3
  %115 = add i32 %113, %114
  %116 = add nsw i32 %111, %115
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %117
  store i32 1, ptr %118, align 4
  br label %119

119:                                              ; preds = %110
  %120 = load i32, ptr %3, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, ptr %3, align 4
  %122 = icmp slt i32 %121, 2
  br i1 %122, label %110, label %123, !llvm.loop !25

123:                                              ; preds = %119
  br label %124

124:                                              ; preds = %123
  %125 = load i32, ptr %2, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, ptr %2, align 4
  %127 = icmp slt i32 %126, 4
  br i1 %127, label %109, label %128, !llvm.loop !26

128:                                              ; preds = %124
  br label %129

129:                                              ; preds = %128
  %130 = load i32, ptr %1, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, ptr %1, align 4
  %132 = icmp slt i32 %131, 1
  br i1 %132, label %108, label %133, !llvm.loop !27

133:                                              ; preds = %129
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  store i32 0, ptr %1, align 4
  br label %134

134:                                              ; preds = %133, %155
  store i32 0, ptr %2, align 4
  br label %135

135:                                              ; preds = %134, %150
  store i32 0, ptr %3, align 4
  br label %136

136:                                              ; preds = %135, %145
  %storemerge3922 = phi i32 [ 0, %135 ], [ %147, %145 ]
  %137 = load i32, ptr %1, align 4
  %138 = load i32, ptr %2, align 4
  %139 = shl i32 %storemerge3922, 6
  %140 = shl i32 %138, 3
  %141 = add i32 %139, %140
  %142 = add nsw i32 %137, %141
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %143
  store i32 1, ptr %144, align 4
  br label %145

145:                                              ; preds = %136
  %146 = load i32, ptr %3, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, ptr %3, align 4
  %148 = icmp slt i32 %147, 1
  br i1 %148, label %136, label %149, !llvm.loop !28

149:                                              ; preds = %145
  br label %150

150:                                              ; preds = %149
  %151 = load i32, ptr %2, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, ptr %2, align 4
  %153 = icmp slt i32 %152, 4
  br i1 %153, label %135, label %154, !llvm.loop !29

154:                                              ; preds = %150
  br label %155

155:                                              ; preds = %154
  %156 = load i32, ptr %1, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, ptr %1, align 4
  %158 = icmp slt i32 %157, 2
  br i1 %158, label %134, label %159, !llvm.loop !30

159:                                              ; preds = %155
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  store i32 0, ptr %1, align 4
  br label %160

160:                                              ; preds = %159, %181
  store i32 0, ptr %2, align 4
  br label %161

161:                                              ; preds = %160, %176
  store i32 0, ptr %3, align 4
  br label %162

162:                                              ; preds = %161, %171
  %storemerge3723 = phi i32 [ 0, %161 ], [ %173, %171 ]
  %163 = load i32, ptr %1, align 4
  %164 = load i32, ptr %2, align 4
  %165 = shl i32 %storemerge3723, 6
  %166 = shl i32 %164, 3
  %167 = add i32 %165, %166
  %168 = add nsw i32 %163, %167
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %169
  store i32 1, ptr %170, align 4
  br label %171

171:                                              ; preds = %162
  %172 = load i32, ptr %3, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, ptr %3, align 4
  %174 = icmp slt i32 %173, 2
  br i1 %174, label %162, label %175, !llvm.loop !31

175:                                              ; preds = %171
  br label %176

176:                                              ; preds = %175
  %177 = load i32, ptr %2, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, ptr %2, align 4
  %179 = icmp slt i32 %178, 1
  br i1 %179, label %161, label %180, !llvm.loop !32

180:                                              ; preds = %176
  br label %181

181:                                              ; preds = %180
  %182 = load i32, ptr %1, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, ptr %1, align 4
  %184 = icmp slt i32 %183, 4
  br i1 %184, label %160, label %185, !llvm.loop !33

185:                                              ; preds = %181
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  store i32 0, ptr %1, align 4
  br label %186

186:                                              ; preds = %185, %207
  store i32 0, ptr %2, align 4
  br label %187

187:                                              ; preds = %186, %202
  store i32 0, ptr %3, align 4
  br label %188

188:                                              ; preds = %187, %197
  %storemerge3524 = phi i32 [ 0, %187 ], [ %199, %197 ]
  %189 = load i32, ptr %1, align 4
  %190 = load i32, ptr %2, align 4
  %191 = shl i32 %storemerge3524, 6
  %192 = shl i32 %190, 3
  %193 = add i32 %191, %192
  %194 = add nsw i32 %189, %193
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %195
  store i32 1, ptr %196, align 4
  br label %197

197:                                              ; preds = %188
  %198 = load i32, ptr %3, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, ptr %3, align 4
  %200 = icmp slt i32 %199, 4
  br i1 %200, label %188, label %201, !llvm.loop !34

201:                                              ; preds = %197
  br label %202

202:                                              ; preds = %201
  %203 = load i32, ptr %2, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, ptr %2, align 4
  %205 = icmp slt i32 %204, 2
  br i1 %205, label %187, label %206, !llvm.loop !35

206:                                              ; preds = %202
  br label %207

207:                                              ; preds = %206
  %208 = load i32, ptr %1, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, ptr %1, align 4
  %210 = icmp slt i32 %209, 1
  br i1 %210, label %186, label %211, !llvm.loop !36

211:                                              ; preds = %207
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  store i32 0, ptr %1, align 4
  br label %212

212:                                              ; preds = %211, %233
  store i32 0, ptr %2, align 4
  br label %213

213:                                              ; preds = %212, %228
  store i32 0, ptr %3, align 4
  br label %214

214:                                              ; preds = %213, %223
  %storemerge3325 = phi i32 [ 0, %213 ], [ %225, %223 ]
  %215 = load i32, ptr %1, align 4
  %216 = load i32, ptr %2, align 4
  %217 = shl i32 %storemerge3325, 6
  %218 = shl i32 %216, 3
  %219 = add i32 %217, %218
  %220 = add nsw i32 %215, %219
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %221
  store i32 1, ptr %222, align 4
  br label %223

223:                                              ; preds = %214
  %224 = load i32, ptr %3, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, ptr %3, align 4
  %226 = icmp slt i32 %225, 1
  br i1 %226, label %214, label %227, !llvm.loop !37

227:                                              ; preds = %223
  br label %228

228:                                              ; preds = %227
  %229 = load i32, ptr %2, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, ptr %2, align 4
  %231 = icmp slt i32 %230, 1
  br i1 %231, label %213, label %232, !llvm.loop !38

232:                                              ; preds = %228
  br label %233

233:                                              ; preds = %232
  %234 = load i32, ptr %1, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, ptr %1, align 4
  %236 = icmp slt i32 %235, 3
  br i1 %236, label %212, label %237, !llvm.loop !39

237:                                              ; preds = %233
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  store i32 0, ptr %1, align 4
  br label %238

238:                                              ; preds = %237, %259
  store i32 0, ptr %2, align 4
  br label %239

239:                                              ; preds = %238, %254
  store i32 0, ptr %3, align 4
  br label %240

240:                                              ; preds = %239, %249
  %storemerge3126 = phi i32 [ 0, %239 ], [ %251, %249 ]
  %241 = load i32, ptr %1, align 4
  %242 = load i32, ptr %2, align 4
  %243 = shl i32 %storemerge3126, 6
  %244 = shl i32 %242, 3
  %245 = add i32 %243, %244
  %246 = add nsw i32 %241, %245
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %247
  store i32 1, ptr %248, align 4
  br label %249

249:                                              ; preds = %240
  %250 = load i32, ptr %3, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, ptr %3, align 4
  %252 = icmp slt i32 %251, 1
  br i1 %252, label %240, label %253, !llvm.loop !40

253:                                              ; preds = %249
  br label %254

254:                                              ; preds = %253
  %255 = load i32, ptr %2, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, ptr %2, align 4
  %257 = icmp slt i32 %256, 3
  br i1 %257, label %239, label %258, !llvm.loop !41

258:                                              ; preds = %254
  br label %259

259:                                              ; preds = %258
  %260 = load i32, ptr %1, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, ptr %1, align 4
  %262 = icmp slt i32 %261, 1
  br i1 %262, label %238, label %263, !llvm.loop !42

263:                                              ; preds = %259
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  store i32 0, ptr %1, align 4
  br label %264

264:                                              ; preds = %263, %285
  store i32 0, ptr %2, align 4
  br label %265

265:                                              ; preds = %264, %280
  store i32 0, ptr %3, align 4
  br label %266

266:                                              ; preds = %265, %275
  %storemerge2927 = phi i32 [ 0, %265 ], [ %277, %275 ]
  %267 = load i32, ptr %1, align 4
  %268 = load i32, ptr %2, align 4
  %269 = shl i32 %storemerge2927, 6
  %270 = shl i32 %268, 3
  %271 = add i32 %269, %270
  %272 = add nsw i32 %267, %271
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %273
  store i32 1, ptr %274, align 4
  br label %275

275:                                              ; preds = %266
  %276 = load i32, ptr %3, align 4
  %277 = add nsw i32 %276, 1
  store i32 %277, ptr %3, align 4
  %278 = icmp slt i32 %277, 3
  br i1 %278, label %266, label %279, !llvm.loop !43

279:                                              ; preds = %275
  br label %280

280:                                              ; preds = %279
  %281 = load i32, ptr %2, align 4
  %282 = add nsw i32 %281, 1
  store i32 %282, ptr %2, align 4
  %283 = icmp slt i32 %282, 1
  br i1 %283, label %265, label %284, !llvm.loop !44

284:                                              ; preds = %280
  br label %285

285:                                              ; preds = %284
  %286 = load i32, ptr %1, align 4
  %287 = add nsw i32 %286, 1
  store i32 %287, ptr %1, align 4
  %288 = icmp slt i32 %287, 1
  br i1 %288, label %264, label %289, !llvm.loop !45

289:                                              ; preds = %285
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  store i32 0, ptr %1, align 4
  br label %290

290:                                              ; preds = %289, %311
  store i32 0, ptr %2, align 4
  br label %291

291:                                              ; preds = %290, %306
  store i32 0, ptr %3, align 4
  br label %292

292:                                              ; preds = %291, %301
  %storemerge2728 = phi i32 [ 0, %291 ], [ %303, %301 ]
  %293 = load i32, ptr %1, align 4
  %294 = load i32, ptr %2, align 4
  %295 = shl i32 %storemerge2728, 6
  %296 = shl i32 %294, 3
  %297 = add i32 %295, %296
  %298 = add nsw i32 %293, %297
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %299
  store i32 1, ptr %300, align 4
  br label %301

301:                                              ; preds = %292
  %302 = load i32, ptr %3, align 4
  %303 = add nsw i32 %302, 1
  store i32 %303, ptr %3, align 4
  %304 = icmp slt i32 %303, 1
  br i1 %304, label %292, label %305, !llvm.loop !46

305:                                              ; preds = %301
  br label %306

306:                                              ; preds = %305
  %307 = load i32, ptr %2, align 4
  %308 = add nsw i32 %307, 1
  store i32 %308, ptr %2, align 4
  %309 = icmp slt i32 %308, 2
  br i1 %309, label %291, label %310, !llvm.loop !47

310:                                              ; preds = %306
  br label %311

311:                                              ; preds = %310
  %312 = load i32, ptr %1, align 4
  %313 = add nsw i32 %312, 1
  store i32 %313, ptr %1, align 4
  %314 = icmp slt i32 %313, 2
  br i1 %314, label %290, label %315, !llvm.loop !48

315:                                              ; preds = %311
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  store i32 0, ptr %1, align 4
  br label %316

316:                                              ; preds = %315, %337
  store i32 0, ptr %2, align 4
  br label %317

317:                                              ; preds = %316, %332
  store i32 0, ptr %3, align 4
  br label %318

318:                                              ; preds = %317, %327
  %storemerge2529 = phi i32 [ 0, %317 ], [ %329, %327 ]
  %319 = load i32, ptr %1, align 4
  %320 = load i32, ptr %2, align 4
  %321 = shl i32 %storemerge2529, 6
  %322 = shl i32 %320, 3
  %323 = add i32 %321, %322
  %324 = add nsw i32 %319, %323
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %325
  store i32 1, ptr %326, align 4
  br label %327

327:                                              ; preds = %318
  %328 = load i32, ptr %3, align 4
  %329 = add nsw i32 %328, 1
  store i32 %329, ptr %3, align 4
  %330 = icmp slt i32 %329, 2
  br i1 %330, label %318, label %331, !llvm.loop !49

331:                                              ; preds = %327
  br label %332

332:                                              ; preds = %331
  %333 = load i32, ptr %2, align 4
  %334 = add nsw i32 %333, 1
  store i32 %334, ptr %2, align 4
  %335 = icmp slt i32 %334, 1
  br i1 %335, label %317, label %336, !llvm.loop !50

336:                                              ; preds = %332
  br label %337

337:                                              ; preds = %336
  %338 = load i32, ptr %1, align 4
  %339 = add nsw i32 %338, 1
  store i32 %339, ptr %1, align 4
  %340 = icmp slt i32 %339, 2
  br i1 %340, label %316, label %341, !llvm.loop !51

341:                                              ; preds = %337
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  store i32 0, ptr %1, align 4
  br label %342

342:                                              ; preds = %341, %363
  store i32 0, ptr %2, align 4
  br label %343

343:                                              ; preds = %342, %358
  store i32 0, ptr %3, align 4
  br label %344

344:                                              ; preds = %343, %353
  %storemerge2330 = phi i32 [ 0, %343 ], [ %355, %353 ]
  %345 = load i32, ptr %1, align 4
  %346 = load i32, ptr %2, align 4
  %347 = shl i32 %storemerge2330, 6
  %348 = shl i32 %346, 3
  %349 = add i32 %347, %348
  %350 = add nsw i32 %345, %349
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %351
  store i32 1, ptr %352, align 4
  br label %353

353:                                              ; preds = %344
  %354 = load i32, ptr %3, align 4
  %355 = add nsw i32 %354, 1
  store i32 %355, ptr %3, align 4
  %356 = icmp slt i32 %355, 2
  br i1 %356, label %344, label %357, !llvm.loop !52

357:                                              ; preds = %353
  br label %358

358:                                              ; preds = %357
  %359 = load i32, ptr %2, align 4
  %360 = add nsw i32 %359, 1
  store i32 %360, ptr %2, align 4
  %361 = icmp slt i32 %360, 2
  br i1 %361, label %343, label %362, !llvm.loop !53

362:                                              ; preds = %358
  br label %363

363:                                              ; preds = %362
  %364 = load i32, ptr %1, align 4
  %365 = add nsw i32 %364, 1
  store i32 %365, ptr %1, align 4
  %366 = icmp slt i32 %365, 1
  br i1 %366, label %342, label %367, !llvm.loop !54

367:                                              ; preds = %363
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  store i32 0, ptr %1, align 4
  br label %368

368:                                              ; preds = %367, %389
  store i32 0, ptr %2, align 4
  br label %369

369:                                              ; preds = %368, %384
  store i32 0, ptr %3, align 4
  br label %370

370:                                              ; preds = %369, %379
  %storemerge2131 = phi i32 [ 0, %369 ], [ %381, %379 ]
  %371 = load i32, ptr %1, align 4
  %372 = load i32, ptr %2, align 4
  %373 = shl i32 %storemerge2131, 6
  %374 = shl i32 %372, 3
  %375 = add i32 %373, %374
  %376 = add nsw i32 %371, %375
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %377
  store i32 1, ptr %378, align 4
  br label %379

379:                                              ; preds = %370
  %380 = load i32, ptr %3, align 4
  %381 = add nsw i32 %380, 1
  store i32 %381, ptr %3, align 4
  %382 = icmp slt i32 %381, 2
  br i1 %382, label %370, label %383, !llvm.loop !55

383:                                              ; preds = %379
  br label %384

384:                                              ; preds = %383
  %385 = load i32, ptr %2, align 4
  %386 = add nsw i32 %385, 1
  store i32 %386, ptr %2, align 4
  %387 = icmp slt i32 %386, 2
  br i1 %387, label %369, label %388, !llvm.loop !56

388:                                              ; preds = %384
  br label %389

389:                                              ; preds = %388
  %390 = load i32, ptr %1, align 4
  %391 = add nsw i32 %390, 1
  store i32 %391, ptr %1, align 4
  %392 = icmp slt i32 %391, 2
  br i1 %392, label %368, label %393, !llvm.loop !57

393:                                              ; preds = %389
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 73, ptr %4, align 4
  store i32 0, ptr @kount, align 4
  %394 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %394, 0
  br i1 %.not, label %398, label %395

395:                                              ; preds = %393
  %396 = load i32, ptr %4, align 4
  %397 = call i32 @Place(i32 noundef 0, i32 noundef %396)
  store i32 %397, ptr @n, align 4
  br label %399

398:                                              ; preds = %393
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %399

399:                                              ; preds = %398, %395
  %400 = load i32, ptr @n, align 4
  %401 = call i32 @Trial(i32 noundef %400)
  %.not16 = icmp eq i32 %401, 0
  br i1 %.not16, label %402, label %403

402:                                              ; preds = %399
  %puts17 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %407

403:                                              ; preds = %399
  %404 = load i32, ptr @kount, align 4
  %.not18 = icmp eq i32 %404, 2005
  br i1 %.not18, label %406, label %405

405:                                              ; preds = %403
  %puts19 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %406

406:                                              ; preds = %405, %403
  br label %407

407:                                              ; preds = %406, %402
  %408 = load i32, ptr @n, align 4
  %409 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %408) #4
  %410 = load i32, ptr @kount, align 4
  %411 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %410) #4
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  br label %2

2:                                                ; preds = %0, %3
  call void @Puzzle()
  br label %3

3:                                                ; preds = %2
  %4 = load i32, ptr %1, align 4
  %5 = add nsw i32 %4, 1
  store i32 %5, ptr %1, align 4
  %6 = icmp slt i32 %5, 100
  br i1 %6, label %2, label %7, !llvm.loop !58

7:                                                ; preds = %3
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
