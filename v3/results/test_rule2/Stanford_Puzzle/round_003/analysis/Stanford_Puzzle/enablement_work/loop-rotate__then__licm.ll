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
  %10 = load i32, ptr %4, align 4
  %11 = load i32, ptr %3, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %12
  %.promoted = load i32, ptr %5, align 4
  br label %14

14:                                               ; preds = %.lr.ph, %29
  %15 = phi i32 [ %.promoted, %.lr.ph ], [ %30, %29 ]
  %16 = phi i64 [ %7, %.lr.ph ], [ %12, %29 ]
  %storemerge2 = phi i32 [ 0, %.lr.ph ], [ %30, %29 ]
  %17 = getelementptr inbounds [2048 x i8], ptr @p, i64 %16
  %18 = sext i32 %storemerge2 to i64
  %19 = getelementptr inbounds [4 x i8], ptr %17, i64 %18
  %20 = load i32, ptr %19, align 4
  %.not2 = icmp eq i32 %20, 0
  br i1 %.not2, label %28, label %21

21:                                               ; preds = %14
  %22 = add nsw i32 %10, %storemerge2
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %23
  %25 = load i32, ptr %24, align 4
  %.not3 = icmp eq i32 %25, 0
  br i1 %.not3, label %27, label %26

26:                                               ; preds = %21
  %.lcssa = phi i32 [ %15, %21 ]
  store i32 %.lcssa, ptr %5, align 4
  br label %33

27:                                               ; preds = %21
  br label %28

28:                                               ; preds = %27, %14
  br label %29

29:                                               ; preds = %28
  %30 = add nsw i32 %15, 1
  %31 = load i32, ptr %13, align 4
  %.not = icmp sgt i32 %30, %31
  br i1 %.not, label %._crit_edge, label %14, !llvm.loop !7

._crit_edge:                                      ; preds = %29
  %.lcssa3 = phi i32 [ %30, %29 ]
  store i32 %.lcssa3, ptr %5, align 4
  br label %32

32:                                               ; preds = %._crit_edge, %2
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
  store i32 0, ptr %5, align 4
  %6 = load i32, ptr %3, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %7
  %9 = load i32, ptr %8, align 4
  %.not1 = icmp sgt i32 0, %9
  br i1 %.not1, label %29, label %.lr.ph

.lr.ph:                                           ; preds = %2
  %10 = load i32, ptr %4, align 4
  %11 = load i32, ptr %3, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %12
  %14 = load i32, ptr %13, align 4
  %.promoted = load i32, ptr %5, align 4
  br label %15

15:                                               ; preds = %.lr.ph, %27
  %16 = phi i32 [ %.promoted, %.lr.ph ], [ %28, %27 ]
  %17 = phi i64 [ %7, %.lr.ph ], [ %12, %27 ]
  %storemerge3 = phi i32 [ 0, %.lr.ph ], [ %28, %27 ]
  %18 = getelementptr inbounds [2048 x i8], ptr @p, i64 %17
  %19 = sext i32 %storemerge3 to i64
  %20 = getelementptr inbounds [4 x i8], ptr %18, i64 %19
  %21 = load i32, ptr %20, align 4
  %.not4 = icmp eq i32 %21, 0
  br i1 %.not4, label %26, label %22

22:                                               ; preds = %15
  %23 = add nsw i32 %10, %storemerge3
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %24
  store i32 1, ptr %25, align 4
  br label %26

26:                                               ; preds = %22, %15
  br label %27

27:                                               ; preds = %26
  %28 = add nsw i32 %16, 1
  %.not = icmp sgt i32 %28, %14
  br i1 %.not, label %._crit_edge, label %15, !llvm.loop !9

._crit_edge:                                      ; preds = %27
  %.lcssa9 = phi i32 [ %28, %27 ]
  %split = phi i64 [ %12, %27 ]
  store i32 %.lcssa9, ptr %5, align 4
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
  %wide.trip.count = sext i32 %smax to i64
  store i32 %36, ptr %5, align 4
  %exitcond4 = icmp ne i64 %37, %wide.trip.count
  br i1 %exitcond4, label %.lr.ph7, label %47

.lr.ph7:                                          ; preds = %29
  %.promoted10 = load i32, ptr %5, align 1
  br label %38

38:                                               ; preds = %.lr.ph7, %45
  %39 = phi i32 [ %.promoted10, %.lr.ph7 ], [ %46, %45 ]
  %indvars.iv5 = phi i64 [ %37, %.lr.ph7 ], [ %indvars.iv.next, %45 ]
  %40 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %indvars.iv5
  %41 = load i32, ptr %40, align 4
  %.not3 = icmp eq i32 %41, 0
  br i1 %.not3, label %42, label %44

42:                                               ; preds = %38
  %.lcssa11 = phi i32 [ %39, %38 ]
  %storemerge1.lcssa5.wide = phi i64 [ %indvars.iv5, %38 ]
  store i32 %.lcssa11, ptr %5, align 1
  %43 = trunc nsw i64 %storemerge1.lcssa5.wide to i32
  br label %48

44:                                               ; preds = %38
  br label %45

45:                                               ; preds = %44
  %indvars.iv.next = add nsw i64 %indvars.iv5, 1
  %46 = trunc nsw i64 %indvars.iv.next to i32
  %exitcond = icmp ne i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %38, label %._crit_edge8, !llvm.loop !10

._crit_edge8:                                     ; preds = %45
  %.lcssa12 = phi i32 [ %46, %45 ]
  store i32 %.lcssa12, ptr %5, align 1
  br label %47

47:                                               ; preds = %._crit_edge8, %29
  br label %48

48:                                               ; preds = %47, %42
  %storemerge2 = phi i32 [ 0, %47 ], [ %43, %42 ]
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
  %10 = load i32, ptr %4, align 4
  %11 = load i32, ptr %3, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %12
  %14 = load i32, ptr %13, align 4
  %.promoted = load i32, ptr %5, align 4
  br label %15

15:                                               ; preds = %.lr.ph, %27
  %16 = phi i32 [ %.promoted, %.lr.ph ], [ %28, %27 ]
  %17 = phi i64 [ %7, %.lr.ph ], [ %12, %27 ]
  %storemerge3 = phi i32 [ 0, %.lr.ph ], [ %28, %27 ]
  %18 = getelementptr inbounds [2048 x i8], ptr @p, i64 %17
  %19 = sext i32 %storemerge3 to i64
  %20 = getelementptr inbounds [4 x i8], ptr %18, i64 %19
  %21 = load i32, ptr %20, align 4
  %.not1 = icmp eq i32 %21, 0
  br i1 %.not1, label %26, label %22

22:                                               ; preds = %15
  %23 = add nsw i32 %10, %storemerge3
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %24
  store i32 0, ptr %25, align 4
  br label %26

26:                                               ; preds = %22, %15
  br label %27

27:                                               ; preds = %26
  %28 = add nsw i32 %16, 1
  %.not = icmp sgt i32 %28, %14
  br i1 %.not, label %._crit_edge, label %15, !llvm.loop !11

._crit_edge:                                      ; preds = %27
  %.lcssa4 = phi i32 [ %28, %27 ]
  %split = phi i64 [ %12, %27 ]
  store i32 %.lcssa4, ptr %5, align 4
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
  %7 = load i32, ptr %2, align 4
  %8 = load i32, ptr %2, align 4
  %9 = load i32, ptr %2, align 4
  %.promoted = load i32, ptr %3, align 4
  %.promoted4 = load i32, ptr %4, align 4
  br label %10

10:                                               ; preds = %1, %33
  %11 = phi i32 [ %.promoted4, %1 ], [ %32, %33 ]
  %12 = phi i32 [ %.promoted, %1 ], [ %34, %33 ]
  %storemerge2 = phi i32 [ 0, %1 ], [ %34, %33 ]
  %13 = sext i32 %storemerge2 to i64
  %14 = getelementptr inbounds [4 x i8], ptr @class, i64 %13
  %15 = load i32, ptr %14, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %16
  %18 = load i32, ptr %17, align 4
  %.not = icmp eq i32 %18, 0
  br i1 %.not, label %31, label %19

19:                                               ; preds = %10
  %20 = call i32 @Fit(i32 noundef %storemerge2, i32 noundef %7)
  %.not2 = icmp eq i32 %20, 0
  br i1 %.not2, label %29, label %21

21:                                               ; preds = %19
  %22 = call i32 @Place(i32 noundef %12, i32 noundef %8)
  %23 = call i32 @Trial(i32 noundef %22)
  %.not3 = icmp eq i32 %23, 0
  br i1 %.not3, label %24, label %26

24:                                               ; preds = %21
  %25 = icmp eq i32 %22, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %24, %21
  %.lcssa5 = phi i32 [ %22, %24 ], [ %22, %21 ]
  %.lcssa = phi i32 [ %12, %24 ], [ %12, %21 ]
  store i32 %.lcssa, ptr %3, align 4
  store i32 %.lcssa5, ptr %4, align 4
  br label %37

27:                                               ; preds = %24
  call void @Remove(i32 noundef %12, i32 noundef %9)
  br label %28

28:                                               ; preds = %27
  br label %29

29:                                               ; preds = %28, %19
  %30 = phi i32 [ %22, %28 ], [ %11, %19 ]
  br label %31

31:                                               ; preds = %29, %10
  %32 = phi i32 [ %30, %29 ], [ %11, %10 ]
  br label %33

33:                                               ; preds = %31
  %34 = add nsw i32 %12, 1
  %35 = icmp slt i32 %34, 13
  br i1 %35, label %10, label %36, !llvm.loop !12

36:                                               ; preds = %33
  %.lcssa6 = phi i32 [ %32, %33 ]
  %.lcssa3 = phi i32 [ %34, %33 ]
  store i32 %.lcssa3, ptr %3, align 4
  store i32 %.lcssa6, ptr %4, align 4
  br label %37

37:                                               ; preds = %36, %26
  %storemerge1 = phi i32 [ 0, %36 ], [ 1, %26 ]
  ret i32 %storemerge1
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Puzzle() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, ptr %4, align 4
  %.promoted = load i32, ptr %4, align 4
  br label %5

5:                                                ; preds = %0, %9
  %6 = phi i32 [ %.promoted, %0 ], [ %10, %9 ]
  %storemerge16 = phi i32 [ 0, %0 ], [ %10, %9 ]
  %7 = sext i32 %storemerge16 to i64
  %8 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %7
  store i32 1, ptr %8, align 4
  br label %9

9:                                                ; preds = %5
  %10 = add nsw i32 %6, 1
  %11 = icmp slt i32 %10, 512
  br i1 %11, label %5, label %12, !llvm.loop !13

12:                                               ; preds = %9
  %.lcssa = phi i32 [ %10, %9 ]
  store i32 %.lcssa, ptr %4, align 4
  store i32 1, ptr %1, align 4
  %.promoted38 = load i32, ptr %1, align 4
  br label %13

13:                                               ; preds = %12, %31
  %14 = phi i32 [ %.promoted38, %12 ], [ %32, %31 ]
  br label %15

15:                                               ; preds = %13, %27
  %16 = phi i32 [ 1, %13 ], [ %28, %27 ]
  %17 = shl i32 %16, 3
  %invariant.op = add i32 %17, %14
  br label %18

18:                                               ; preds = %15, %23
  %19 = phi i32 [ 1, %15 ], [ %24, %23 ]
  %storemerge4817 = phi i32 [ 1, %15 ], [ %24, %23 ]
  %20 = shl i32 %storemerge4817, 6
  %.reass = add i32 %20, %invariant.op
  %21 = sext i32 %.reass to i64
  %22 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %21
  store i32 0, ptr %22, align 4
  br label %23

23:                                               ; preds = %18
  %24 = add nsw i32 %19, 1
  %25 = icmp slt i32 %24, 6
  br i1 %25, label %18, label %26, !llvm.loop !14

26:                                               ; preds = %23
  %.lcssa33 = phi i32 [ %24, %23 ]
  br label %27

27:                                               ; preds = %26
  %28 = add nsw i32 %16, 1
  %29 = icmp slt i32 %28, 6
  br i1 %29, label %15, label %30, !llvm.loop !15

30:                                               ; preds = %27
  %.lcssa36 = phi i32 [ %28, %27 ]
  %.lcssa33.lcssa = phi i32 [ %.lcssa33, %27 ]
  br label %31

31:                                               ; preds = %30
  %32 = add nsw i32 %14, 1
  %33 = icmp slt i32 %32, 6
  br i1 %33, label %13, label %34, !llvm.loop !16

34:                                               ; preds = %31
  %.lcssa33.lcssa.lcssa = phi i32 [ %.lcssa33.lcssa, %31 ]
  %.lcssa39 = phi i32 [ %32, %31 ]
  %.lcssa36.lcssa = phi i32 [ %.lcssa36, %31 ]
  store i32 %.lcssa36.lcssa, ptr %2, align 4
  store i32 %.lcssa39, ptr %1, align 4
  store i32 %.lcssa33.lcssa.lcssa, ptr %3, align 4
  store i32 0, ptr %1, align 4
  %.promoted43 = load i32, ptr %1, align 4
  br label %35

35:                                               ; preds = %34, %47
  %36 = phi i32 [ %.promoted43, %34 ], [ %48, %47 ]
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [2048 x i8], ptr @p, i64 %37
  br label %39

39:                                               ; preds = %35, %43
  %40 = phi i32 [ 0, %35 ], [ %44, %43 ]
  %storemerge4618 = phi i32 [ 0, %35 ], [ %44, %43 ]
  %41 = sext i32 %storemerge4618 to i64
  %42 = getelementptr inbounds [4 x i8], ptr %38, i64 %41
  store i32 0, ptr %42, align 4
  br label %43

43:                                               ; preds = %39
  %44 = add nsw i32 %40, 1
  %45 = icmp slt i32 %44, 512
  br i1 %45, label %39, label %46, !llvm.loop !17

46:                                               ; preds = %43
  %.lcssa41 = phi i32 [ %44, %43 ]
  br label %47

47:                                               ; preds = %46
  %48 = add nsw i32 %36, 1
  %49 = icmp slt i32 %48, 13
  br i1 %49, label %35, label %50, !llvm.loop !18

50:                                               ; preds = %47
  %.lcssa44 = phi i32 [ %48, %47 ]
  %.lcssa41.lcssa = phi i32 [ %.lcssa41, %47 ]
  store i32 %.lcssa41.lcssa, ptr %4, align 4
  store i32 %.lcssa44, ptr %1, align 4
  store i32 0, ptr %1, align 4
  %.promoted53 = load i32, ptr %1, align 4
  br label %51

51:                                               ; preds = %50, %69
  %52 = phi i32 [ %.promoted53, %50 ], [ %70, %69 ]
  br label %53

53:                                               ; preds = %51, %65
  %54 = phi i32 [ 0, %51 ], [ %66, %65 ]
  %55 = shl i32 %54, 3
  %invariant.op45 = add i32 %55, %52
  br label %56

56:                                               ; preds = %53, %61
  %57 = phi i32 [ 0, %53 ], [ %62, %61 ]
  %storemerge4519 = phi i32 [ 0, %53 ], [ %62, %61 ]
  %58 = shl i32 %storemerge4519, 6
  %.reass46 = add i32 %58, %invariant.op45
  %59 = sext i32 %.reass46 to i64
  %60 = getelementptr inbounds [4 x i8], ptr @p, i64 %59
  store i32 1, ptr %60, align 4
  br label %61

61:                                               ; preds = %56
  %62 = add nsw i32 %57, 1
  %63 = icmp slt i32 %62, 1
  br i1 %63, label %56, label %64, !llvm.loop !19

64:                                               ; preds = %61
  %.lcssa48 = phi i32 [ %62, %61 ]
  br label %65

65:                                               ; preds = %64
  %66 = add nsw i32 %54, 1
  %67 = icmp slt i32 %66, 2
  br i1 %67, label %53, label %68, !llvm.loop !20

68:                                               ; preds = %65
  %.lcssa51 = phi i32 [ %66, %65 ]
  %.lcssa48.lcssa = phi i32 [ %.lcssa48, %65 ]
  br label %69

69:                                               ; preds = %68
  %70 = add nsw i32 %52, 1
  %71 = icmp slt i32 %70, 4
  br i1 %71, label %51, label %72, !llvm.loop !21

72:                                               ; preds = %69
  %.lcssa48.lcssa.lcssa = phi i32 [ %.lcssa48.lcssa, %69 ]
  %.lcssa54 = phi i32 [ %70, %69 ]
  %.lcssa51.lcssa = phi i32 [ %.lcssa51, %69 ]
  store i32 %.lcssa51.lcssa, ptr %2, align 4
  store i32 %.lcssa54, ptr %1, align 4
  store i32 %.lcssa48.lcssa.lcssa, ptr %3, align 4
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  store i32 0, ptr %1, align 4
  %.promoted63 = load i32, ptr %1, align 4
  br label %73

73:                                               ; preds = %72, %91
  %74 = phi i32 [ %.promoted63, %72 ], [ %92, %91 ]
  br label %75

75:                                               ; preds = %73, %87
  %76 = phi i32 [ 0, %73 ], [ %88, %87 ]
  %77 = shl i32 %76, 3
  %invariant.op55 = add i32 %77, %74
  br label %78

78:                                               ; preds = %75, %83
  %79 = phi i32 [ 0, %75 ], [ %84, %83 ]
  %storemerge4320 = phi i32 [ 0, %75 ], [ %84, %83 ]
  %80 = shl i32 %storemerge4320, 6
  %.reass56 = add i32 %80, %invariant.op55
  %81 = sext i32 %.reass56 to i64
  %82 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %81
  store i32 1, ptr %82, align 4
  br label %83

83:                                               ; preds = %78
  %84 = add nsw i32 %79, 1
  %85 = icmp slt i32 %84, 4
  br i1 %85, label %78, label %86, !llvm.loop !22

86:                                               ; preds = %83
  %.lcssa58 = phi i32 [ %84, %83 ]
  br label %87

87:                                               ; preds = %86
  %88 = add nsw i32 %76, 1
  %89 = icmp slt i32 %88, 1
  br i1 %89, label %75, label %90, !llvm.loop !23

90:                                               ; preds = %87
  %.lcssa61 = phi i32 [ %88, %87 ]
  %.lcssa58.lcssa = phi i32 [ %.lcssa58, %87 ]
  br label %91

91:                                               ; preds = %90
  %92 = add nsw i32 %74, 1
  %93 = icmp slt i32 %92, 2
  br i1 %93, label %73, label %94, !llvm.loop !24

94:                                               ; preds = %91
  %.lcssa58.lcssa.lcssa = phi i32 [ %.lcssa58.lcssa, %91 ]
  %.lcssa64 = phi i32 [ %92, %91 ]
  %.lcssa61.lcssa = phi i32 [ %.lcssa61, %91 ]
  store i32 %.lcssa61.lcssa, ptr %2, align 4
  store i32 %.lcssa64, ptr %1, align 4
  store i32 %.lcssa58.lcssa.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  store i32 0, ptr %1, align 4
  %.promoted73 = load i32, ptr %1, align 4
  br label %95

95:                                               ; preds = %94, %113
  %96 = phi i32 [ %.promoted73, %94 ], [ %114, %113 ]
  br label %97

97:                                               ; preds = %95, %109
  %98 = phi i32 [ 0, %95 ], [ %110, %109 ]
  %99 = shl i32 %98, 3
  %invariant.op65 = add i32 %99, %96
  br label %100

100:                                              ; preds = %97, %105
  %101 = phi i32 [ 0, %97 ], [ %106, %105 ]
  %storemerge4121 = phi i32 [ 0, %97 ], [ %106, %105 ]
  %102 = shl i32 %storemerge4121, 6
  %.reass66 = add i32 %102, %invariant.op65
  %103 = sext i32 %.reass66 to i64
  %104 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %103
  store i32 1, ptr %104, align 4
  br label %105

105:                                              ; preds = %100
  %106 = add nsw i32 %101, 1
  %107 = icmp slt i32 %106, 2
  br i1 %107, label %100, label %108, !llvm.loop !25

108:                                              ; preds = %105
  %.lcssa68 = phi i32 [ %106, %105 ]
  br label %109

109:                                              ; preds = %108
  %110 = add nsw i32 %98, 1
  %111 = icmp slt i32 %110, 4
  br i1 %111, label %97, label %112, !llvm.loop !26

112:                                              ; preds = %109
  %.lcssa71 = phi i32 [ %110, %109 ]
  %.lcssa68.lcssa = phi i32 [ %.lcssa68, %109 ]
  br label %113

113:                                              ; preds = %112
  %114 = add nsw i32 %96, 1
  %115 = icmp slt i32 %114, 1
  br i1 %115, label %95, label %116, !llvm.loop !27

116:                                              ; preds = %113
  %.lcssa68.lcssa.lcssa = phi i32 [ %.lcssa68.lcssa, %113 ]
  %.lcssa74 = phi i32 [ %114, %113 ]
  %.lcssa71.lcssa = phi i32 [ %.lcssa71, %113 ]
  store i32 %.lcssa71.lcssa, ptr %2, align 4
  store i32 %.lcssa74, ptr %1, align 4
  store i32 %.lcssa68.lcssa.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  store i32 0, ptr %1, align 4
  %.promoted83 = load i32, ptr %1, align 4
  br label %117

117:                                              ; preds = %116, %135
  %118 = phi i32 [ %.promoted83, %116 ], [ %136, %135 ]
  br label %119

119:                                              ; preds = %117, %131
  %120 = phi i32 [ 0, %117 ], [ %132, %131 ]
  %121 = shl i32 %120, 3
  %invariant.op75 = add i32 %121, %118
  br label %122

122:                                              ; preds = %119, %127
  %123 = phi i32 [ 0, %119 ], [ %128, %127 ]
  %storemerge3922 = phi i32 [ 0, %119 ], [ %128, %127 ]
  %124 = shl i32 %storemerge3922, 6
  %.reass76 = add i32 %124, %invariant.op75
  %125 = sext i32 %.reass76 to i64
  %126 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %125
  store i32 1, ptr %126, align 4
  br label %127

127:                                              ; preds = %122
  %128 = add nsw i32 %123, 1
  %129 = icmp slt i32 %128, 1
  br i1 %129, label %122, label %130, !llvm.loop !28

130:                                              ; preds = %127
  %.lcssa78 = phi i32 [ %128, %127 ]
  br label %131

131:                                              ; preds = %130
  %132 = add nsw i32 %120, 1
  %133 = icmp slt i32 %132, 4
  br i1 %133, label %119, label %134, !llvm.loop !29

134:                                              ; preds = %131
  %.lcssa81 = phi i32 [ %132, %131 ]
  %.lcssa78.lcssa = phi i32 [ %.lcssa78, %131 ]
  br label %135

135:                                              ; preds = %134
  %136 = add nsw i32 %118, 1
  %137 = icmp slt i32 %136, 2
  br i1 %137, label %117, label %138, !llvm.loop !30

138:                                              ; preds = %135
  %.lcssa78.lcssa.lcssa = phi i32 [ %.lcssa78.lcssa, %135 ]
  %.lcssa84 = phi i32 [ %136, %135 ]
  %.lcssa81.lcssa = phi i32 [ %.lcssa81, %135 ]
  store i32 %.lcssa81.lcssa, ptr %2, align 4
  store i32 %.lcssa84, ptr %1, align 4
  store i32 %.lcssa78.lcssa.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  store i32 0, ptr %1, align 4
  %.promoted93 = load i32, ptr %1, align 4
  br label %139

139:                                              ; preds = %138, %157
  %140 = phi i32 [ %.promoted93, %138 ], [ %158, %157 ]
  br label %141

141:                                              ; preds = %139, %153
  %142 = phi i32 [ 0, %139 ], [ %154, %153 ]
  %143 = shl i32 %142, 3
  %invariant.op85 = add i32 %143, %140
  br label %144

144:                                              ; preds = %141, %149
  %145 = phi i32 [ 0, %141 ], [ %150, %149 ]
  %storemerge3723 = phi i32 [ 0, %141 ], [ %150, %149 ]
  %146 = shl i32 %storemerge3723, 6
  %.reass86 = add i32 %146, %invariant.op85
  %147 = sext i32 %.reass86 to i64
  %148 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %147
  store i32 1, ptr %148, align 4
  br label %149

149:                                              ; preds = %144
  %150 = add nsw i32 %145, 1
  %151 = icmp slt i32 %150, 2
  br i1 %151, label %144, label %152, !llvm.loop !31

152:                                              ; preds = %149
  %.lcssa88 = phi i32 [ %150, %149 ]
  br label %153

153:                                              ; preds = %152
  %154 = add nsw i32 %142, 1
  %155 = icmp slt i32 %154, 1
  br i1 %155, label %141, label %156, !llvm.loop !32

156:                                              ; preds = %153
  %.lcssa91 = phi i32 [ %154, %153 ]
  %.lcssa88.lcssa = phi i32 [ %.lcssa88, %153 ]
  br label %157

157:                                              ; preds = %156
  %158 = add nsw i32 %140, 1
  %159 = icmp slt i32 %158, 4
  br i1 %159, label %139, label %160, !llvm.loop !33

160:                                              ; preds = %157
  %.lcssa88.lcssa.lcssa = phi i32 [ %.lcssa88.lcssa, %157 ]
  %.lcssa94 = phi i32 [ %158, %157 ]
  %.lcssa91.lcssa = phi i32 [ %.lcssa91, %157 ]
  store i32 %.lcssa91.lcssa, ptr %2, align 4
  store i32 %.lcssa94, ptr %1, align 4
  store i32 %.lcssa88.lcssa.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  store i32 0, ptr %1, align 4
  %.promoted103 = load i32, ptr %1, align 4
  br label %161

161:                                              ; preds = %160, %179
  %162 = phi i32 [ %.promoted103, %160 ], [ %180, %179 ]
  br label %163

163:                                              ; preds = %161, %175
  %164 = phi i32 [ 0, %161 ], [ %176, %175 ]
  %165 = shl i32 %164, 3
  %invariant.op95 = add i32 %165, %162
  br label %166

166:                                              ; preds = %163, %171
  %167 = phi i32 [ 0, %163 ], [ %172, %171 ]
  %storemerge3524 = phi i32 [ 0, %163 ], [ %172, %171 ]
  %168 = shl i32 %storemerge3524, 6
  %.reass96 = add i32 %168, %invariant.op95
  %169 = sext i32 %.reass96 to i64
  %170 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %169
  store i32 1, ptr %170, align 4
  br label %171

171:                                              ; preds = %166
  %172 = add nsw i32 %167, 1
  %173 = icmp slt i32 %172, 4
  br i1 %173, label %166, label %174, !llvm.loop !34

174:                                              ; preds = %171
  %.lcssa98 = phi i32 [ %172, %171 ]
  br label %175

175:                                              ; preds = %174
  %176 = add nsw i32 %164, 1
  %177 = icmp slt i32 %176, 2
  br i1 %177, label %163, label %178, !llvm.loop !35

178:                                              ; preds = %175
  %.lcssa101 = phi i32 [ %176, %175 ]
  %.lcssa98.lcssa = phi i32 [ %.lcssa98, %175 ]
  br label %179

179:                                              ; preds = %178
  %180 = add nsw i32 %162, 1
  %181 = icmp slt i32 %180, 1
  br i1 %181, label %161, label %182, !llvm.loop !36

182:                                              ; preds = %179
  %.lcssa98.lcssa.lcssa = phi i32 [ %.lcssa98.lcssa, %179 ]
  %.lcssa104 = phi i32 [ %180, %179 ]
  %.lcssa101.lcssa = phi i32 [ %.lcssa101, %179 ]
  store i32 %.lcssa101.lcssa, ptr %2, align 4
  store i32 %.lcssa104, ptr %1, align 4
  store i32 %.lcssa98.lcssa.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  store i32 0, ptr %1, align 4
  %.promoted113 = load i32, ptr %1, align 4
  br label %183

183:                                              ; preds = %182, %201
  %184 = phi i32 [ %.promoted113, %182 ], [ %202, %201 ]
  br label %185

185:                                              ; preds = %183, %197
  %186 = phi i32 [ 0, %183 ], [ %198, %197 ]
  %187 = shl i32 %186, 3
  %invariant.op105 = add i32 %187, %184
  br label %188

188:                                              ; preds = %185, %193
  %189 = phi i32 [ 0, %185 ], [ %194, %193 ]
  %storemerge3325 = phi i32 [ 0, %185 ], [ %194, %193 ]
  %190 = shl i32 %storemerge3325, 6
  %.reass106 = add i32 %190, %invariant.op105
  %191 = sext i32 %.reass106 to i64
  %192 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %191
  store i32 1, ptr %192, align 4
  br label %193

193:                                              ; preds = %188
  %194 = add nsw i32 %189, 1
  %195 = icmp slt i32 %194, 1
  br i1 %195, label %188, label %196, !llvm.loop !37

196:                                              ; preds = %193
  %.lcssa108 = phi i32 [ %194, %193 ]
  br label %197

197:                                              ; preds = %196
  %198 = add nsw i32 %186, 1
  %199 = icmp slt i32 %198, 1
  br i1 %199, label %185, label %200, !llvm.loop !38

200:                                              ; preds = %197
  %.lcssa111 = phi i32 [ %198, %197 ]
  %.lcssa108.lcssa = phi i32 [ %.lcssa108, %197 ]
  br label %201

201:                                              ; preds = %200
  %202 = add nsw i32 %184, 1
  %203 = icmp slt i32 %202, 3
  br i1 %203, label %183, label %204, !llvm.loop !39

204:                                              ; preds = %201
  %.lcssa108.lcssa.lcssa = phi i32 [ %.lcssa108.lcssa, %201 ]
  %.lcssa114 = phi i32 [ %202, %201 ]
  %.lcssa111.lcssa = phi i32 [ %.lcssa111, %201 ]
  store i32 %.lcssa111.lcssa, ptr %2, align 4
  store i32 %.lcssa114, ptr %1, align 4
  store i32 %.lcssa108.lcssa.lcssa, ptr %3, align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  store i32 0, ptr %1, align 4
  %.promoted123 = load i32, ptr %1, align 4
  br label %205

205:                                              ; preds = %204, %223
  %206 = phi i32 [ %.promoted123, %204 ], [ %224, %223 ]
  br label %207

207:                                              ; preds = %205, %219
  %208 = phi i32 [ 0, %205 ], [ %220, %219 ]
  %209 = shl i32 %208, 3
  %invariant.op115 = add i32 %209, %206
  br label %210

210:                                              ; preds = %207, %215
  %211 = phi i32 [ 0, %207 ], [ %216, %215 ]
  %storemerge3126 = phi i32 [ 0, %207 ], [ %216, %215 ]
  %212 = shl i32 %storemerge3126, 6
  %.reass116 = add i32 %212, %invariant.op115
  %213 = sext i32 %.reass116 to i64
  %214 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %213
  store i32 1, ptr %214, align 4
  br label %215

215:                                              ; preds = %210
  %216 = add nsw i32 %211, 1
  %217 = icmp slt i32 %216, 1
  br i1 %217, label %210, label %218, !llvm.loop !40

218:                                              ; preds = %215
  %.lcssa118 = phi i32 [ %216, %215 ]
  br label %219

219:                                              ; preds = %218
  %220 = add nsw i32 %208, 1
  %221 = icmp slt i32 %220, 3
  br i1 %221, label %207, label %222, !llvm.loop !41

222:                                              ; preds = %219
  %.lcssa121 = phi i32 [ %220, %219 ]
  %.lcssa118.lcssa = phi i32 [ %.lcssa118, %219 ]
  br label %223

223:                                              ; preds = %222
  %224 = add nsw i32 %206, 1
  %225 = icmp slt i32 %224, 1
  br i1 %225, label %205, label %226, !llvm.loop !42

226:                                              ; preds = %223
  %.lcssa118.lcssa.lcssa = phi i32 [ %.lcssa118.lcssa, %223 ]
  %.lcssa124 = phi i32 [ %224, %223 ]
  %.lcssa121.lcssa = phi i32 [ %.lcssa121, %223 ]
  store i32 %.lcssa121.lcssa, ptr %2, align 4
  store i32 %.lcssa124, ptr %1, align 4
  store i32 %.lcssa118.lcssa.lcssa, ptr %3, align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  store i32 0, ptr %1, align 4
  %.promoted133 = load i32, ptr %1, align 4
  br label %227

227:                                              ; preds = %226, %245
  %228 = phi i32 [ %.promoted133, %226 ], [ %246, %245 ]
  br label %229

229:                                              ; preds = %227, %241
  %230 = phi i32 [ 0, %227 ], [ %242, %241 ]
  %231 = shl i32 %230, 3
  %invariant.op125 = add i32 %231, %228
  br label %232

232:                                              ; preds = %229, %237
  %233 = phi i32 [ 0, %229 ], [ %238, %237 ]
  %storemerge2927 = phi i32 [ 0, %229 ], [ %238, %237 ]
  %234 = shl i32 %storemerge2927, 6
  %.reass126 = add i32 %234, %invariant.op125
  %235 = sext i32 %.reass126 to i64
  %236 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %235
  store i32 1, ptr %236, align 4
  br label %237

237:                                              ; preds = %232
  %238 = add nsw i32 %233, 1
  %239 = icmp slt i32 %238, 3
  br i1 %239, label %232, label %240, !llvm.loop !43

240:                                              ; preds = %237
  %.lcssa128 = phi i32 [ %238, %237 ]
  br label %241

241:                                              ; preds = %240
  %242 = add nsw i32 %230, 1
  %243 = icmp slt i32 %242, 1
  br i1 %243, label %229, label %244, !llvm.loop !44

244:                                              ; preds = %241
  %.lcssa131 = phi i32 [ %242, %241 ]
  %.lcssa128.lcssa = phi i32 [ %.lcssa128, %241 ]
  br label %245

245:                                              ; preds = %244
  %246 = add nsw i32 %228, 1
  %247 = icmp slt i32 %246, 1
  br i1 %247, label %227, label %248, !llvm.loop !45

248:                                              ; preds = %245
  %.lcssa128.lcssa.lcssa = phi i32 [ %.lcssa128.lcssa, %245 ]
  %.lcssa134 = phi i32 [ %246, %245 ]
  %.lcssa131.lcssa = phi i32 [ %.lcssa131, %245 ]
  store i32 %.lcssa131.lcssa, ptr %2, align 4
  store i32 %.lcssa134, ptr %1, align 4
  store i32 %.lcssa128.lcssa.lcssa, ptr %3, align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  store i32 0, ptr %1, align 4
  %.promoted143 = load i32, ptr %1, align 4
  br label %249

249:                                              ; preds = %248, %267
  %250 = phi i32 [ %.promoted143, %248 ], [ %268, %267 ]
  br label %251

251:                                              ; preds = %249, %263
  %252 = phi i32 [ 0, %249 ], [ %264, %263 ]
  %253 = shl i32 %252, 3
  %invariant.op135 = add i32 %253, %250
  br label %254

254:                                              ; preds = %251, %259
  %255 = phi i32 [ 0, %251 ], [ %260, %259 ]
  %storemerge2728 = phi i32 [ 0, %251 ], [ %260, %259 ]
  %256 = shl i32 %storemerge2728, 6
  %.reass136 = add i32 %256, %invariant.op135
  %257 = sext i32 %.reass136 to i64
  %258 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %257
  store i32 1, ptr %258, align 4
  br label %259

259:                                              ; preds = %254
  %260 = add nsw i32 %255, 1
  %261 = icmp slt i32 %260, 1
  br i1 %261, label %254, label %262, !llvm.loop !46

262:                                              ; preds = %259
  %.lcssa138 = phi i32 [ %260, %259 ]
  br label %263

263:                                              ; preds = %262
  %264 = add nsw i32 %252, 1
  %265 = icmp slt i32 %264, 2
  br i1 %265, label %251, label %266, !llvm.loop !47

266:                                              ; preds = %263
  %.lcssa141 = phi i32 [ %264, %263 ]
  %.lcssa138.lcssa = phi i32 [ %.lcssa138, %263 ]
  br label %267

267:                                              ; preds = %266
  %268 = add nsw i32 %250, 1
  %269 = icmp slt i32 %268, 2
  br i1 %269, label %249, label %270, !llvm.loop !48

270:                                              ; preds = %267
  %.lcssa138.lcssa.lcssa = phi i32 [ %.lcssa138.lcssa, %267 ]
  %.lcssa144 = phi i32 [ %268, %267 ]
  %.lcssa141.lcssa = phi i32 [ %.lcssa141, %267 ]
  store i32 %.lcssa141.lcssa, ptr %2, align 4
  store i32 %.lcssa144, ptr %1, align 4
  store i32 %.lcssa138.lcssa.lcssa, ptr %3, align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  store i32 0, ptr %1, align 4
  %.promoted153 = load i32, ptr %1, align 4
  br label %271

271:                                              ; preds = %270, %289
  %272 = phi i32 [ %.promoted153, %270 ], [ %290, %289 ]
  br label %273

273:                                              ; preds = %271, %285
  %274 = phi i32 [ 0, %271 ], [ %286, %285 ]
  %275 = shl i32 %274, 3
  %invariant.op145 = add i32 %275, %272
  br label %276

276:                                              ; preds = %273, %281
  %277 = phi i32 [ 0, %273 ], [ %282, %281 ]
  %storemerge2529 = phi i32 [ 0, %273 ], [ %282, %281 ]
  %278 = shl i32 %storemerge2529, 6
  %.reass146 = add i32 %278, %invariant.op145
  %279 = sext i32 %.reass146 to i64
  %280 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %279
  store i32 1, ptr %280, align 4
  br label %281

281:                                              ; preds = %276
  %282 = add nsw i32 %277, 1
  %283 = icmp slt i32 %282, 2
  br i1 %283, label %276, label %284, !llvm.loop !49

284:                                              ; preds = %281
  %.lcssa148 = phi i32 [ %282, %281 ]
  br label %285

285:                                              ; preds = %284
  %286 = add nsw i32 %274, 1
  %287 = icmp slt i32 %286, 1
  br i1 %287, label %273, label %288, !llvm.loop !50

288:                                              ; preds = %285
  %.lcssa151 = phi i32 [ %286, %285 ]
  %.lcssa148.lcssa = phi i32 [ %.lcssa148, %285 ]
  br label %289

289:                                              ; preds = %288
  %290 = add nsw i32 %272, 1
  %291 = icmp slt i32 %290, 2
  br i1 %291, label %271, label %292, !llvm.loop !51

292:                                              ; preds = %289
  %.lcssa148.lcssa.lcssa = phi i32 [ %.lcssa148.lcssa, %289 ]
  %.lcssa154 = phi i32 [ %290, %289 ]
  %.lcssa151.lcssa = phi i32 [ %.lcssa151, %289 ]
  store i32 %.lcssa151.lcssa, ptr %2, align 4
  store i32 %.lcssa154, ptr %1, align 4
  store i32 %.lcssa148.lcssa.lcssa, ptr %3, align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  store i32 0, ptr %1, align 4
  %.promoted163 = load i32, ptr %1, align 4
  br label %293

293:                                              ; preds = %292, %311
  %294 = phi i32 [ %.promoted163, %292 ], [ %312, %311 ]
  br label %295

295:                                              ; preds = %293, %307
  %296 = phi i32 [ 0, %293 ], [ %308, %307 ]
  %297 = shl i32 %296, 3
  %invariant.op155 = add i32 %297, %294
  br label %298

298:                                              ; preds = %295, %303
  %299 = phi i32 [ 0, %295 ], [ %304, %303 ]
  %storemerge2330 = phi i32 [ 0, %295 ], [ %304, %303 ]
  %300 = shl i32 %storemerge2330, 6
  %.reass156 = add i32 %300, %invariant.op155
  %301 = sext i32 %.reass156 to i64
  %302 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %301
  store i32 1, ptr %302, align 4
  br label %303

303:                                              ; preds = %298
  %304 = add nsw i32 %299, 1
  %305 = icmp slt i32 %304, 2
  br i1 %305, label %298, label %306, !llvm.loop !52

306:                                              ; preds = %303
  %.lcssa158 = phi i32 [ %304, %303 ]
  br label %307

307:                                              ; preds = %306
  %308 = add nsw i32 %296, 1
  %309 = icmp slt i32 %308, 2
  br i1 %309, label %295, label %310, !llvm.loop !53

310:                                              ; preds = %307
  %.lcssa161 = phi i32 [ %308, %307 ]
  %.lcssa158.lcssa = phi i32 [ %.lcssa158, %307 ]
  br label %311

311:                                              ; preds = %310
  %312 = add nsw i32 %294, 1
  %313 = icmp slt i32 %312, 1
  br i1 %313, label %293, label %314, !llvm.loop !54

314:                                              ; preds = %311
  %.lcssa158.lcssa.lcssa = phi i32 [ %.lcssa158.lcssa, %311 ]
  %.lcssa164 = phi i32 [ %312, %311 ]
  %.lcssa161.lcssa = phi i32 [ %.lcssa161, %311 ]
  store i32 %.lcssa161.lcssa, ptr %2, align 4
  store i32 %.lcssa164, ptr %1, align 4
  store i32 %.lcssa158.lcssa.lcssa, ptr %3, align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  store i32 0, ptr %1, align 4
  %.promoted173 = load i32, ptr %1, align 4
  br label %315

315:                                              ; preds = %314, %333
  %316 = phi i32 [ %.promoted173, %314 ], [ %334, %333 ]
  br label %317

317:                                              ; preds = %315, %329
  %318 = phi i32 [ 0, %315 ], [ %330, %329 ]
  %319 = shl i32 %318, 3
  %invariant.op165 = add i32 %319, %316
  br label %320

320:                                              ; preds = %317, %325
  %321 = phi i32 [ 0, %317 ], [ %326, %325 ]
  %storemerge2131 = phi i32 [ 0, %317 ], [ %326, %325 ]
  %322 = shl i32 %storemerge2131, 6
  %.reass166 = add i32 %322, %invariant.op165
  %323 = sext i32 %.reass166 to i64
  %324 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %323
  store i32 1, ptr %324, align 4
  br label %325

325:                                              ; preds = %320
  %326 = add nsw i32 %321, 1
  %327 = icmp slt i32 %326, 2
  br i1 %327, label %320, label %328, !llvm.loop !55

328:                                              ; preds = %325
  %.lcssa168 = phi i32 [ %326, %325 ]
  br label %329

329:                                              ; preds = %328
  %330 = add nsw i32 %318, 1
  %331 = icmp slt i32 %330, 2
  br i1 %331, label %317, label %332, !llvm.loop !56

332:                                              ; preds = %329
  %.lcssa171 = phi i32 [ %330, %329 ]
  %.lcssa168.lcssa = phi i32 [ %.lcssa168, %329 ]
  br label %333

333:                                              ; preds = %332
  %334 = add nsw i32 %316, 1
  %335 = icmp slt i32 %334, 2
  br i1 %335, label %315, label %336, !llvm.loop !57

336:                                              ; preds = %333
  %.lcssa168.lcssa.lcssa = phi i32 [ %.lcssa168.lcssa, %333 ]
  %.lcssa174 = phi i32 [ %334, %333 ]
  %.lcssa171.lcssa = phi i32 [ %.lcssa171, %333 ]
  store i32 %.lcssa171.lcssa, ptr %2, align 4
  store i32 %.lcssa174, ptr %1, align 4
  store i32 %.lcssa168.lcssa.lcssa, ptr %3, align 4
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 73, ptr %4, align 4
  store i32 0, ptr @kount, align 4
  %337 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %337, 0
  br i1 %.not, label %341, label %338

338:                                              ; preds = %336
  %339 = load i32, ptr %4, align 4
  %340 = call i32 @Place(i32 noundef 0, i32 noundef %339)
  store i32 %340, ptr @n, align 4
  br label %342

341:                                              ; preds = %336
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %342

342:                                              ; preds = %341, %338
  %343 = load i32, ptr @n, align 4
  %344 = call i32 @Trial(i32 noundef %343)
  %.not16 = icmp eq i32 %344, 0
  br i1 %.not16, label %345, label %346

345:                                              ; preds = %342
  %puts17 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %350

346:                                              ; preds = %342
  %347 = load i32, ptr @kount, align 4
  %.not18 = icmp eq i32 %347, 2005
  br i1 %.not18, label %349, label %348

348:                                              ; preds = %346
  %puts19 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %349

349:                                              ; preds = %348, %346
  br label %350

350:                                              ; preds = %349, %345
  %351 = load i32, ptr @n, align 4
  %352 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %351) #4
  %353 = load i32, ptr @kount, align 4
  %354 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %353) #4
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  %.promoted = load i32, ptr %1, align 4
  br label %2

2:                                                ; preds = %0, %4
  %3 = phi i32 [ %.promoted, %0 ], [ %5, %4 ]
  call void @Puzzle()
  br label %4

4:                                                ; preds = %2
  %5 = add nsw i32 %3, 1
  %6 = icmp slt i32 %5, 100
  br i1 %6, label %2, label %7, !llvm.loop !58

7:                                                ; preds = %4
  %.lcssa = phi i32 [ %5, %4 ]
  store i32 %.lcssa, ptr %1, align 4
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
