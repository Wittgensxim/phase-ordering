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
  %6 = load i32, ptr %3, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %7
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds [2048 x i8], ptr @p, i64 %7
  %11 = load i32, ptr %4, align 4
  %.not4 = icmp sgt i32 0, %9
  br i1 %.not4, label %26, label %.lr.ph

.lr.ph:                                           ; preds = %2
  br label %12

12:                                               ; preds = %.lr.ph, %24
  %storemerge5 = phi i32 [ 0, %.lr.ph ], [ %25, %24 ]
  %13 = sext i32 %storemerge5 to i64
  %14 = getelementptr inbounds [4 x i8], ptr %10, i64 %13
  %15 = load i32, ptr %14, align 4
  %.not2 = icmp eq i32 %15, 0
  br i1 %.not2, label %23, label %16

16:                                               ; preds = %12
  %17 = add nsw i32 %11, %storemerge5
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %18
  %20 = load i32, ptr %19, align 4
  %.not3 = icmp eq i32 %20, 0
  br i1 %.not3, label %22, label %21

21:                                               ; preds = %16
  %storemerge.lcssa1 = phi i32 [ %storemerge5, %16 ]
  store i32 %storemerge.lcssa1, ptr %5, align 4
  br label %27

22:                                               ; preds = %16
  br label %23

23:                                               ; preds = %22, %12
  br label %24

24:                                               ; preds = %23
  %25 = add nsw i32 %storemerge5, 1
  %.not = icmp sgt i32 %25, %9
  br i1 %.not, label %._crit_edge, label %12, !llvm.loop !7

._crit_edge:                                      ; preds = %24
  %split = phi i32 [ %25, %24 ]
  br label %26

26:                                               ; preds = %._crit_edge, %2
  %storemerge.lcssa = phi i32 [ %split, %._crit_edge ], [ 0, %2 ]
  store i32 %storemerge.lcssa, ptr %5, align 4
  br label %27

27:                                               ; preds = %26, %21
  %storemerge1 = phi i32 [ 1, %26 ], [ 0, %21 ]
  ret i32 %storemerge1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Place(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  %6 = load i32, ptr %3, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %7
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds [2048 x i8], ptr @p, i64 %7
  %11 = load i32, ptr %4, align 4
  %.not5 = icmp sgt i32 0, %9
  br i1 %.not5, label %23, label %.lr.ph

.lr.ph:                                           ; preds = %2
  br label %12

12:                                               ; preds = %.lr.ph, %21
  %storemerge6 = phi i32 [ 0, %.lr.ph ], [ %22, %21 ]
  %13 = sext i32 %storemerge6 to i64
  %14 = getelementptr inbounds [4 x i8], ptr %10, i64 %13
  %15 = load i32, ptr %14, align 4
  %.not4 = icmp eq i32 %15, 0
  br i1 %.not4, label %20, label %16

16:                                               ; preds = %12
  %17 = add nsw i32 %11, %storemerge6
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %18
  store i32 1, ptr %19, align 4
  br label %20

20:                                               ; preds = %16, %12
  br label %21

21:                                               ; preds = %20
  %22 = add nsw i32 %storemerge6, 1
  %.not = icmp sgt i32 %22, %9
  br i1 %.not, label %._crit_edge, label %12, !llvm.loop !9

._crit_edge:                                      ; preds = %21
  %split = phi i32 [ %22, %21 ]
  %split7 = phi i64 [ %7, %21 ]
  br label %23

23:                                               ; preds = %._crit_edge, %2
  %storemerge.lcssa = phi i32 [ %split, %._crit_edge ], [ 0, %2 ]
  %.lcssa = phi i64 [ %split7, %._crit_edge ], [ %7, %2 ]
  store i32 %storemerge.lcssa, ptr %5, align 4
  %24 = getelementptr inbounds [4 x i8], ptr @class, i64 %.lcssa
  %25 = load i32, ptr %24, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %26
  %28 = load i32, ptr %27, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, ptr %27, align 4
  %30 = load i32, ptr %4, align 4
  %31 = sext i32 %30 to i64
  %smax = call i32 @llvm.smax.i32(i32 %30, i32 512)
  %wide.trip.count = sext i32 %smax to i64
  %exitcond8 = icmp ne i64 %31, %wide.trip.count
  br i1 %exitcond8, label %.lr.ph11, label %41

.lr.ph11:                                         ; preds = %23
  br label %32

32:                                               ; preds = %.lr.ph11, %39
  %33 = phi i32 [ %30, %.lr.ph11 ], [ %40, %39 ]
  %indvars.iv9 = phi i64 [ %31, %.lr.ph11 ], [ %indvars.iv.next, %39 ]
  %34 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %indvars.iv9
  %35 = load i32, ptr %34, align 4
  %.not3 = icmp eq i32 %35, 0
  br i1 %.not3, label %36, label %38

36:                                               ; preds = %32
  %.lcssa2 = phi i32 [ %33, %32 ]
  %storemerge1.lcssa5.wide = phi i64 [ %indvars.iv9, %32 ]
  store i32 %.lcssa2, ptr %5, align 4
  %37 = trunc nsw i64 %storemerge1.lcssa5.wide to i32
  br label %42

38:                                               ; preds = %32
  br label %39

39:                                               ; preds = %38
  %indvars.iv.next = add nsw i64 %indvars.iv9, 1
  %40 = trunc nsw i64 %indvars.iv.next to i32
  %exitcond = icmp ne i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %32, label %._crit_edge12, !llvm.loop !10

._crit_edge12:                                    ; preds = %39
  %split13 = phi i32 [ %40, %39 ]
  br label %41

41:                                               ; preds = %._crit_edge12, %23
  %.lcssa1 = phi i32 [ %split13, %._crit_edge12 ], [ %30, %23 ]
  store i32 %.lcssa1, ptr %5, align 4
  br label %42

42:                                               ; preds = %41, %36
  %storemerge2 = phi i32 [ 0, %41 ], [ %37, %36 ]
  ret i32 %storemerge2
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Remove(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  %6 = load i32, ptr %3, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %7
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds [2048 x i8], ptr @p, i64 %7
  %11 = load i32, ptr %4, align 4
  %.not2 = icmp sgt i32 0, %9
  br i1 %.not2, label %23, label %.lr.ph

.lr.ph:                                           ; preds = %2
  br label %12

12:                                               ; preds = %.lr.ph, %21
  %storemerge3 = phi i32 [ 0, %.lr.ph ], [ %22, %21 ]
  %13 = sext i32 %storemerge3 to i64
  %14 = getelementptr inbounds [4 x i8], ptr %10, i64 %13
  %15 = load i32, ptr %14, align 4
  %.not1 = icmp eq i32 %15, 0
  br i1 %.not1, label %20, label %16

16:                                               ; preds = %12
  %17 = add nsw i32 %11, %storemerge3
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %18
  store i32 0, ptr %19, align 4
  br label %20

20:                                               ; preds = %16, %12
  br label %21

21:                                               ; preds = %20
  %22 = add nsw i32 %storemerge3, 1
  %.not = icmp sgt i32 %22, %9
  br i1 %.not, label %._crit_edge, label %12, !llvm.loop !11

._crit_edge:                                      ; preds = %21
  %split = phi i32 [ %22, %21 ]
  %split4 = phi i64 [ %7, %21 ]
  br label %23

23:                                               ; preds = %._crit_edge, %2
  %storemerge.lcssa = phi i32 [ %split, %._crit_edge ], [ 0, %2 ]
  %.lcssa = phi i64 [ %split4, %._crit_edge ], [ %7, %2 ]
  store i32 %storemerge.lcssa, ptr %5, align 4
  %24 = getelementptr inbounds [4 x i8], ptr @class, i64 %.lcssa
  %25 = load i32, ptr %24, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %26
  %28 = load i32, ptr %27, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, ptr %27, align 4
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
  %7 = load i32, ptr %2, align 4
  %8 = load i32, ptr %2, align 4
  %9 = load i32, ptr %2, align 4
  %.promoted = load i32, ptr %4, align 4
  br label %10

10:                                               ; preds = %1, %32
  %storemerge3 = phi i32 [ 0, %1 ], [ %33, %32 ]
  %11 = phi i32 [ %.promoted, %1 ], [ %31, %32 ]
  %12 = sext i32 %storemerge3 to i64
  %13 = getelementptr inbounds [4 x i8], ptr @class, i64 %12
  %14 = load i32, ptr %13, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %15
  %17 = load i32, ptr %16, align 4
  %.not = icmp eq i32 %17, 0
  br i1 %.not, label %30, label %18

18:                                               ; preds = %10
  %19 = call i32 @Fit(i32 noundef %storemerge3, i32 noundef %7)
  %.not2 = icmp eq i32 %19, 0
  br i1 %.not2, label %28, label %20

20:                                               ; preds = %18
  %21 = call i32 @Place(i32 noundef %storemerge3, i32 noundef %8)
  %22 = call i32 @Trial(i32 noundef %21)
  %.not3 = icmp eq i32 %22, 0
  br i1 %.not3, label %23, label %25

23:                                               ; preds = %20
  %24 = icmp eq i32 %21, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %23, %20
  %.lcssa2 = phi i32 [ %21, %23 ], [ %21, %20 ]
  %storemerge.lcssa1 = phi i32 [ %storemerge3, %23 ], [ %storemerge3, %20 ]
  store i32 %storemerge.lcssa1, ptr %3, align 4
  store i32 %.lcssa2, ptr %4, align 4
  br label %36

26:                                               ; preds = %23
  call void @Remove(i32 noundef %storemerge3, i32 noundef %9)
  br label %27

27:                                               ; preds = %26
  br label %28

28:                                               ; preds = %27, %18
  %29 = phi i32 [ %21, %27 ], [ %11, %18 ]
  br label %30

30:                                               ; preds = %28, %10
  %storemerge4 = phi i32 [ %storemerge3, %28 ], [ %storemerge3, %10 ]
  %31 = phi i32 [ %29, %28 ], [ %11, %10 ]
  br label %32

32:                                               ; preds = %30
  %33 = add nsw i32 %storemerge4, 1
  %34 = icmp slt i32 %33, 13
  br i1 %34, label %10, label %35, !llvm.loop !12

35:                                               ; preds = %32
  %.lcssa = phi i32 [ %31, %32 ]
  %storemerge.lcssa = phi i32 [ %33, %32 ]
  store i32 %storemerge.lcssa, ptr %3, align 4
  store i32 %.lcssa, ptr %4, align 4
  br label %36

36:                                               ; preds = %35, %25
  %storemerge1 = phi i32 [ 0, %35 ], [ 1, %25 ]
  ret i32 %storemerge1
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Puzzle() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  br label %5

5:                                                ; preds = %0, %8
  %storemerge70 = phi i32 [ 0, %0 ], [ %9, %8 ]
  %6 = sext i32 %storemerge70 to i64
  %7 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %6
  store i32 1, ptr %7, align 4
  br label %8

8:                                                ; preds = %5
  %9 = add nsw i32 %storemerge70, 1
  %10 = icmp slt i32 %9, 512
  br i1 %10, label %5, label %11, !llvm.loop !13

11:                                               ; preds = %8
  %storemerge.lcssa = phi i32 [ %9, %8 ]
  store i32 %storemerge.lcssa, ptr %4, align 4
  br label %12

12:                                               ; preds = %11, %27
  %storemerge173 = phi i32 [ 1, %11 ], [ %28, %27 ]
  br label %13

13:                                               ; preds = %12, %23
  %storemerge4772 = phi i32 [ 1, %12 ], [ %24, %23 ]
  %14 = shl i32 %storemerge4772, 3
  %invariant.op = add i32 %14, %storemerge173
  br label %15

15:                                               ; preds = %13, %19
  %storemerge4871 = phi i32 [ 1, %13 ], [ %20, %19 ]
  %16 = shl i32 %storemerge4871, 6
  %.reass = add i32 %16, %invariant.op
  %17 = sext i32 %.reass to i64
  %18 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %17
  store i32 0, ptr %18, align 4
  br label %19

19:                                               ; preds = %15
  %20 = add nsw i32 %storemerge4871, 1
  %21 = icmp slt i32 %20, 6
  br i1 %21, label %15, label %22, !llvm.loop !14

22:                                               ; preds = %19
  %storemerge48.lcssa = phi i32 [ %20, %19 ]
  br label %23

23:                                               ; preds = %22
  %24 = add nsw i32 %storemerge4772, 1
  %25 = icmp slt i32 %24, 6
  br i1 %25, label %13, label %26, !llvm.loop !15

26:                                               ; preds = %23
  %storemerge48.lcssa1.lcssa = phi i32 [ %storemerge48.lcssa, %23 ]
  %storemerge47.lcssa = phi i32 [ %24, %23 ]
  br label %27

27:                                               ; preds = %26
  %28 = add nsw i32 %storemerge173, 1
  %29 = icmp slt i32 %28, 6
  br i1 %29, label %12, label %30, !llvm.loop !16

30:                                               ; preds = %27
  %storemerge48.lcssa1.lcssa3.lcssa = phi i32 [ %storemerge48.lcssa1.lcssa, %27 ]
  %storemerge47.lcssa2.lcssa = phi i32 [ %storemerge47.lcssa, %27 ]
  %storemerge1.lcssa = phi i32 [ %28, %27 ]
  store i32 %storemerge1.lcssa, ptr %1, align 4
  store i32 %storemerge47.lcssa2.lcssa, ptr %2, align 4
  store i32 %storemerge48.lcssa1.lcssa3.lcssa, ptr %3, align 4
  br label %31

31:                                               ; preds = %30, %41
  %storemerge275 = phi i32 [ 0, %30 ], [ %42, %41 ]
  %32 = sext i32 %storemerge275 to i64
  %33 = getelementptr inbounds [2048 x i8], ptr @p, i64 %32
  br label %34

34:                                               ; preds = %31, %37
  %storemerge4674 = phi i32 [ 0, %31 ], [ %38, %37 ]
  %35 = sext i32 %storemerge4674 to i64
  %36 = getelementptr inbounds [4 x i8], ptr %33, i64 %35
  store i32 0, ptr %36, align 4
  br label %37

37:                                               ; preds = %34
  %38 = add nsw i32 %storemerge4674, 1
  %39 = icmp slt i32 %38, 512
  br i1 %39, label %34, label %40, !llvm.loop !17

40:                                               ; preds = %37
  %storemerge46.lcssa = phi i32 [ %38, %37 ]
  br label %41

41:                                               ; preds = %40
  %42 = add nsw i32 %storemerge275, 1
  %43 = icmp slt i32 %42, 13
  br i1 %43, label %31, label %44, !llvm.loop !18

44:                                               ; preds = %41
  %storemerge46.lcssa4.lcssa = phi i32 [ %storemerge46.lcssa, %41 ]
  %storemerge2.lcssa = phi i32 [ %42, %41 ]
  store i32 %storemerge2.lcssa, ptr %1, align 4
  store i32 %storemerge46.lcssa4.lcssa, ptr %4, align 4
  br label %45

45:                                               ; preds = %44, %60
  %storemerge378 = phi i32 [ 0, %44 ], [ %61, %60 ]
  br label %46

46:                                               ; preds = %45, %56
  %storemerge4477 = phi i32 [ 0, %45 ], [ %57, %56 ]
  %47 = shl i32 %storemerge4477, 3
  %invariant.op5 = add i32 %47, %storemerge378
  br label %48

48:                                               ; preds = %46, %52
  %storemerge4576 = phi i32 [ 0, %46 ], [ %53, %52 ]
  %49 = shl i32 %storemerge4576, 6
  %.reass6 = add i32 %49, %invariant.op5
  %50 = sext i32 %.reass6 to i64
  %51 = getelementptr inbounds [4 x i8], ptr @p, i64 %50
  store i32 1, ptr %51, align 4
  br label %52

52:                                               ; preds = %48
  %53 = add nsw i32 %storemerge4576, 1
  %54 = icmp slt i32 %53, 1
  br i1 %54, label %48, label %55, !llvm.loop !19

55:                                               ; preds = %52
  %storemerge45.lcssa = phi i32 [ %53, %52 ]
  br label %56

56:                                               ; preds = %55
  %57 = add nsw i32 %storemerge4477, 1
  %58 = icmp slt i32 %57, 2
  br i1 %58, label %46, label %59, !llvm.loop !20

59:                                               ; preds = %56
  %storemerge45.lcssa7.lcssa = phi i32 [ %storemerge45.lcssa, %56 ]
  %storemerge44.lcssa = phi i32 [ %57, %56 ]
  br label %60

60:                                               ; preds = %59
  %61 = add nsw i32 %storemerge378, 1
  %62 = icmp slt i32 %61, 4
  br i1 %62, label %45, label %63, !llvm.loop !21

63:                                               ; preds = %60
  %storemerge45.lcssa7.lcssa9.lcssa = phi i32 [ %storemerge45.lcssa7.lcssa, %60 ]
  %storemerge44.lcssa8.lcssa = phi i32 [ %storemerge44.lcssa, %60 ]
  %storemerge3.lcssa = phi i32 [ %61, %60 ]
  store i32 %storemerge3.lcssa, ptr %1, align 4
  store i32 %storemerge44.lcssa8.lcssa, ptr %2, align 4
  store i32 %storemerge45.lcssa7.lcssa9.lcssa, ptr %3, align 4
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %64

64:                                               ; preds = %63, %79
  %storemerge481 = phi i32 [ 0, %63 ], [ %80, %79 ]
  br label %65

65:                                               ; preds = %64, %75
  %storemerge4280 = phi i32 [ 0, %64 ], [ %76, %75 ]
  %66 = shl i32 %storemerge4280, 3
  %invariant.op10 = add i32 %66, %storemerge481
  br label %67

67:                                               ; preds = %65, %71
  %storemerge4379 = phi i32 [ 0, %65 ], [ %72, %71 ]
  %68 = shl i32 %storemerge4379, 6
  %.reass11 = add i32 %68, %invariant.op10
  %69 = sext i32 %.reass11 to i64
  %70 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %69
  store i32 1, ptr %70, align 4
  br label %71

71:                                               ; preds = %67
  %72 = add nsw i32 %storemerge4379, 1
  %73 = icmp slt i32 %72, 4
  br i1 %73, label %67, label %74, !llvm.loop !22

74:                                               ; preds = %71
  %storemerge43.lcssa = phi i32 [ %72, %71 ]
  br label %75

75:                                               ; preds = %74
  %76 = add nsw i32 %storemerge4280, 1
  %77 = icmp slt i32 %76, 1
  br i1 %77, label %65, label %78, !llvm.loop !23

78:                                               ; preds = %75
  %storemerge43.lcssa12.lcssa = phi i32 [ %storemerge43.lcssa, %75 ]
  %storemerge42.lcssa = phi i32 [ %76, %75 ]
  br label %79

79:                                               ; preds = %78
  %80 = add nsw i32 %storemerge481, 1
  %81 = icmp slt i32 %80, 2
  br i1 %81, label %64, label %82, !llvm.loop !24

82:                                               ; preds = %79
  %storemerge43.lcssa12.lcssa14.lcssa = phi i32 [ %storemerge43.lcssa12.lcssa, %79 ]
  %storemerge42.lcssa13.lcssa = phi i32 [ %storemerge42.lcssa, %79 ]
  %storemerge4.lcssa = phi i32 [ %80, %79 ]
  store i32 %storemerge4.lcssa, ptr %1, align 4
  store i32 %storemerge42.lcssa13.lcssa, ptr %2, align 4
  store i32 %storemerge43.lcssa12.lcssa14.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %83

83:                                               ; preds = %82, %98
  %storemerge584 = phi i32 [ 0, %82 ], [ %99, %98 ]
  br label %84

84:                                               ; preds = %83, %94
  %storemerge4083 = phi i32 [ 0, %83 ], [ %95, %94 ]
  %85 = shl i32 %storemerge4083, 3
  %invariant.op15 = add i32 %85, %storemerge584
  br label %86

86:                                               ; preds = %84, %90
  %storemerge4182 = phi i32 [ 0, %84 ], [ %91, %90 ]
  %87 = shl i32 %storemerge4182, 6
  %.reass16 = add i32 %87, %invariant.op15
  %88 = sext i32 %.reass16 to i64
  %89 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %88
  store i32 1, ptr %89, align 4
  br label %90

90:                                               ; preds = %86
  %91 = add nsw i32 %storemerge4182, 1
  %92 = icmp slt i32 %91, 2
  br i1 %92, label %86, label %93, !llvm.loop !25

93:                                               ; preds = %90
  %storemerge41.lcssa = phi i32 [ %91, %90 ]
  br label %94

94:                                               ; preds = %93
  %95 = add nsw i32 %storemerge4083, 1
  %96 = icmp slt i32 %95, 4
  br i1 %96, label %84, label %97, !llvm.loop !26

97:                                               ; preds = %94
  %storemerge41.lcssa17.lcssa = phi i32 [ %storemerge41.lcssa, %94 ]
  %storemerge40.lcssa = phi i32 [ %95, %94 ]
  br label %98

98:                                               ; preds = %97
  %99 = add nsw i32 %storemerge584, 1
  %100 = icmp slt i32 %99, 1
  br i1 %100, label %83, label %101, !llvm.loop !27

101:                                              ; preds = %98
  %storemerge41.lcssa17.lcssa19.lcssa = phi i32 [ %storemerge41.lcssa17.lcssa, %98 ]
  %storemerge40.lcssa18.lcssa = phi i32 [ %storemerge40.lcssa, %98 ]
  %storemerge5.lcssa = phi i32 [ %99, %98 ]
  store i32 %storemerge5.lcssa, ptr %1, align 4
  store i32 %storemerge40.lcssa18.lcssa, ptr %2, align 4
  store i32 %storemerge41.lcssa17.lcssa19.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %102

102:                                              ; preds = %101, %117
  %storemerge687 = phi i32 [ 0, %101 ], [ %118, %117 ]
  br label %103

103:                                              ; preds = %102, %113
  %storemerge3886 = phi i32 [ 0, %102 ], [ %114, %113 ]
  %104 = shl i32 %storemerge3886, 3
  %invariant.op20 = add i32 %104, %storemerge687
  br label %105

105:                                              ; preds = %103, %109
  %storemerge3985 = phi i32 [ 0, %103 ], [ %110, %109 ]
  %106 = shl i32 %storemerge3985, 6
  %.reass21 = add i32 %106, %invariant.op20
  %107 = sext i32 %.reass21 to i64
  %108 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %107
  store i32 1, ptr %108, align 4
  br label %109

109:                                              ; preds = %105
  %110 = add nsw i32 %storemerge3985, 1
  %111 = icmp slt i32 %110, 1
  br i1 %111, label %105, label %112, !llvm.loop !28

112:                                              ; preds = %109
  %storemerge39.lcssa = phi i32 [ %110, %109 ]
  br label %113

113:                                              ; preds = %112
  %114 = add nsw i32 %storemerge3886, 1
  %115 = icmp slt i32 %114, 4
  br i1 %115, label %103, label %116, !llvm.loop !29

116:                                              ; preds = %113
  %storemerge39.lcssa22.lcssa = phi i32 [ %storemerge39.lcssa, %113 ]
  %storemerge38.lcssa = phi i32 [ %114, %113 ]
  br label %117

117:                                              ; preds = %116
  %118 = add nsw i32 %storemerge687, 1
  %119 = icmp slt i32 %118, 2
  br i1 %119, label %102, label %120, !llvm.loop !30

120:                                              ; preds = %117
  %storemerge39.lcssa22.lcssa24.lcssa = phi i32 [ %storemerge39.lcssa22.lcssa, %117 ]
  %storemerge38.lcssa23.lcssa = phi i32 [ %storemerge38.lcssa, %117 ]
  %storemerge6.lcssa = phi i32 [ %118, %117 ]
  store i32 %storemerge6.lcssa, ptr %1, align 4
  store i32 %storemerge38.lcssa23.lcssa, ptr %2, align 4
  store i32 %storemerge39.lcssa22.lcssa24.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %121

121:                                              ; preds = %120, %136
  %storemerge790 = phi i32 [ 0, %120 ], [ %137, %136 ]
  br label %122

122:                                              ; preds = %121, %132
  %storemerge3689 = phi i32 [ 0, %121 ], [ %133, %132 ]
  %123 = shl i32 %storemerge3689, 3
  %invariant.op25 = add i32 %123, %storemerge790
  br label %124

124:                                              ; preds = %122, %128
  %storemerge3788 = phi i32 [ 0, %122 ], [ %129, %128 ]
  %125 = shl i32 %storemerge3788, 6
  %.reass26 = add i32 %125, %invariant.op25
  %126 = sext i32 %.reass26 to i64
  %127 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %126
  store i32 1, ptr %127, align 4
  br label %128

128:                                              ; preds = %124
  %129 = add nsw i32 %storemerge3788, 1
  %130 = icmp slt i32 %129, 2
  br i1 %130, label %124, label %131, !llvm.loop !31

131:                                              ; preds = %128
  %storemerge37.lcssa = phi i32 [ %129, %128 ]
  br label %132

132:                                              ; preds = %131
  %133 = add nsw i32 %storemerge3689, 1
  %134 = icmp slt i32 %133, 1
  br i1 %134, label %122, label %135, !llvm.loop !32

135:                                              ; preds = %132
  %storemerge37.lcssa27.lcssa = phi i32 [ %storemerge37.lcssa, %132 ]
  %storemerge36.lcssa = phi i32 [ %133, %132 ]
  br label %136

136:                                              ; preds = %135
  %137 = add nsw i32 %storemerge790, 1
  %138 = icmp slt i32 %137, 4
  br i1 %138, label %121, label %139, !llvm.loop !33

139:                                              ; preds = %136
  %storemerge37.lcssa27.lcssa29.lcssa = phi i32 [ %storemerge37.lcssa27.lcssa, %136 ]
  %storemerge36.lcssa28.lcssa = phi i32 [ %storemerge36.lcssa, %136 ]
  %storemerge7.lcssa = phi i32 [ %137, %136 ]
  store i32 %storemerge7.lcssa, ptr %1, align 4
  store i32 %storemerge36.lcssa28.lcssa, ptr %2, align 4
  store i32 %storemerge37.lcssa27.lcssa29.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %140

140:                                              ; preds = %139, %155
  %storemerge893 = phi i32 [ 0, %139 ], [ %156, %155 ]
  br label %141

141:                                              ; preds = %140, %151
  %storemerge3492 = phi i32 [ 0, %140 ], [ %152, %151 ]
  %142 = shl i32 %storemerge3492, 3
  %invariant.op30 = add i32 %142, %storemerge893
  br label %143

143:                                              ; preds = %141, %147
  %storemerge3591 = phi i32 [ 0, %141 ], [ %148, %147 ]
  %144 = shl i32 %storemerge3591, 6
  %.reass31 = add i32 %144, %invariant.op30
  %145 = sext i32 %.reass31 to i64
  %146 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %145
  store i32 1, ptr %146, align 4
  br label %147

147:                                              ; preds = %143
  %148 = add nsw i32 %storemerge3591, 1
  %149 = icmp slt i32 %148, 4
  br i1 %149, label %143, label %150, !llvm.loop !34

150:                                              ; preds = %147
  %storemerge35.lcssa = phi i32 [ %148, %147 ]
  br label %151

151:                                              ; preds = %150
  %152 = add nsw i32 %storemerge3492, 1
  %153 = icmp slt i32 %152, 2
  br i1 %153, label %141, label %154, !llvm.loop !35

154:                                              ; preds = %151
  %storemerge35.lcssa32.lcssa = phi i32 [ %storemerge35.lcssa, %151 ]
  %storemerge34.lcssa = phi i32 [ %152, %151 ]
  br label %155

155:                                              ; preds = %154
  %156 = add nsw i32 %storemerge893, 1
  %157 = icmp slt i32 %156, 1
  br i1 %157, label %140, label %158, !llvm.loop !36

158:                                              ; preds = %155
  %storemerge35.lcssa32.lcssa34.lcssa = phi i32 [ %storemerge35.lcssa32.lcssa, %155 ]
  %storemerge34.lcssa33.lcssa = phi i32 [ %storemerge34.lcssa, %155 ]
  %storemerge8.lcssa = phi i32 [ %156, %155 ]
  store i32 %storemerge8.lcssa, ptr %1, align 4
  store i32 %storemerge34.lcssa33.lcssa, ptr %2, align 4
  store i32 %storemerge35.lcssa32.lcssa34.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %159

159:                                              ; preds = %158, %174
  %storemerge996 = phi i32 [ 0, %158 ], [ %175, %174 ]
  br label %160

160:                                              ; preds = %159, %170
  %storemerge3295 = phi i32 [ 0, %159 ], [ %171, %170 ]
  %161 = shl i32 %storemerge3295, 3
  %invariant.op35 = add i32 %161, %storemerge996
  br label %162

162:                                              ; preds = %160, %166
  %storemerge3394 = phi i32 [ 0, %160 ], [ %167, %166 ]
  %163 = shl i32 %storemerge3394, 6
  %.reass36 = add i32 %163, %invariant.op35
  %164 = sext i32 %.reass36 to i64
  %165 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %164
  store i32 1, ptr %165, align 4
  br label %166

166:                                              ; preds = %162
  %167 = add nsw i32 %storemerge3394, 1
  %168 = icmp slt i32 %167, 1
  br i1 %168, label %162, label %169, !llvm.loop !37

169:                                              ; preds = %166
  %storemerge33.lcssa = phi i32 [ %167, %166 ]
  br label %170

170:                                              ; preds = %169
  %171 = add nsw i32 %storemerge3295, 1
  %172 = icmp slt i32 %171, 1
  br i1 %172, label %160, label %173, !llvm.loop !38

173:                                              ; preds = %170
  %storemerge33.lcssa37.lcssa = phi i32 [ %storemerge33.lcssa, %170 ]
  %storemerge32.lcssa = phi i32 [ %171, %170 ]
  br label %174

174:                                              ; preds = %173
  %175 = add nsw i32 %storemerge996, 1
  %176 = icmp slt i32 %175, 3
  br i1 %176, label %159, label %177, !llvm.loop !39

177:                                              ; preds = %174
  %storemerge33.lcssa37.lcssa39.lcssa = phi i32 [ %storemerge33.lcssa37.lcssa, %174 ]
  %storemerge32.lcssa38.lcssa = phi i32 [ %storemerge32.lcssa, %174 ]
  %storemerge9.lcssa = phi i32 [ %175, %174 ]
  store i32 %storemerge9.lcssa, ptr %1, align 4
  store i32 %storemerge32.lcssa38.lcssa, ptr %2, align 4
  store i32 %storemerge33.lcssa37.lcssa39.lcssa, ptr %3, align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %178

178:                                              ; preds = %177, %193
  %storemerge1099 = phi i32 [ 0, %177 ], [ %194, %193 ]
  br label %179

179:                                              ; preds = %178, %189
  %storemerge3098 = phi i32 [ 0, %178 ], [ %190, %189 ]
  %180 = shl i32 %storemerge3098, 3
  %invariant.op40 = add i32 %180, %storemerge1099
  br label %181

181:                                              ; preds = %179, %185
  %storemerge3197 = phi i32 [ 0, %179 ], [ %186, %185 ]
  %182 = shl i32 %storemerge3197, 6
  %.reass41 = add i32 %182, %invariant.op40
  %183 = sext i32 %.reass41 to i64
  %184 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %183
  store i32 1, ptr %184, align 4
  br label %185

185:                                              ; preds = %181
  %186 = add nsw i32 %storemerge3197, 1
  %187 = icmp slt i32 %186, 1
  br i1 %187, label %181, label %188, !llvm.loop !40

188:                                              ; preds = %185
  %storemerge31.lcssa = phi i32 [ %186, %185 ]
  br label %189

189:                                              ; preds = %188
  %190 = add nsw i32 %storemerge3098, 1
  %191 = icmp slt i32 %190, 3
  br i1 %191, label %179, label %192, !llvm.loop !41

192:                                              ; preds = %189
  %storemerge31.lcssa42.lcssa = phi i32 [ %storemerge31.lcssa, %189 ]
  %storemerge30.lcssa = phi i32 [ %190, %189 ]
  br label %193

193:                                              ; preds = %192
  %194 = add nsw i32 %storemerge1099, 1
  %195 = icmp slt i32 %194, 1
  br i1 %195, label %178, label %196, !llvm.loop !42

196:                                              ; preds = %193
  %storemerge31.lcssa42.lcssa44.lcssa = phi i32 [ %storemerge31.lcssa42.lcssa, %193 ]
  %storemerge30.lcssa43.lcssa = phi i32 [ %storemerge30.lcssa, %193 ]
  %storemerge10.lcssa = phi i32 [ %194, %193 ]
  store i32 %storemerge10.lcssa, ptr %1, align 4
  store i32 %storemerge30.lcssa43.lcssa, ptr %2, align 4
  store i32 %storemerge31.lcssa42.lcssa44.lcssa, ptr %3, align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %197

197:                                              ; preds = %196, %212
  %storemerge11102 = phi i32 [ 0, %196 ], [ %213, %212 ]
  br label %198

198:                                              ; preds = %197, %208
  %storemerge28101 = phi i32 [ 0, %197 ], [ %209, %208 ]
  %199 = shl i32 %storemerge28101, 3
  %invariant.op45 = add i32 %199, %storemerge11102
  br label %200

200:                                              ; preds = %198, %204
  %storemerge29100 = phi i32 [ 0, %198 ], [ %205, %204 ]
  %201 = shl i32 %storemerge29100, 6
  %.reass46 = add i32 %201, %invariant.op45
  %202 = sext i32 %.reass46 to i64
  %203 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %202
  store i32 1, ptr %203, align 4
  br label %204

204:                                              ; preds = %200
  %205 = add nsw i32 %storemerge29100, 1
  %206 = icmp slt i32 %205, 3
  br i1 %206, label %200, label %207, !llvm.loop !43

207:                                              ; preds = %204
  %storemerge29.lcssa = phi i32 [ %205, %204 ]
  br label %208

208:                                              ; preds = %207
  %209 = add nsw i32 %storemerge28101, 1
  %210 = icmp slt i32 %209, 1
  br i1 %210, label %198, label %211, !llvm.loop !44

211:                                              ; preds = %208
  %storemerge29.lcssa47.lcssa = phi i32 [ %storemerge29.lcssa, %208 ]
  %storemerge28.lcssa = phi i32 [ %209, %208 ]
  br label %212

212:                                              ; preds = %211
  %213 = add nsw i32 %storemerge11102, 1
  %214 = icmp slt i32 %213, 1
  br i1 %214, label %197, label %215, !llvm.loop !45

215:                                              ; preds = %212
  %storemerge29.lcssa47.lcssa49.lcssa = phi i32 [ %storemerge29.lcssa47.lcssa, %212 ]
  %storemerge28.lcssa48.lcssa = phi i32 [ %storemerge28.lcssa, %212 ]
  %storemerge11.lcssa = phi i32 [ %213, %212 ]
  store i32 %storemerge11.lcssa, ptr %1, align 4
  store i32 %storemerge28.lcssa48.lcssa, ptr %2, align 4
  store i32 %storemerge29.lcssa47.lcssa49.lcssa, ptr %3, align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %216

216:                                              ; preds = %215, %231
  %storemerge12105 = phi i32 [ 0, %215 ], [ %232, %231 ]
  br label %217

217:                                              ; preds = %216, %227
  %storemerge26104 = phi i32 [ 0, %216 ], [ %228, %227 ]
  %218 = shl i32 %storemerge26104, 3
  %invariant.op50 = add i32 %218, %storemerge12105
  br label %219

219:                                              ; preds = %217, %223
  %storemerge27103 = phi i32 [ 0, %217 ], [ %224, %223 ]
  %220 = shl i32 %storemerge27103, 6
  %.reass51 = add i32 %220, %invariant.op50
  %221 = sext i32 %.reass51 to i64
  %222 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %221
  store i32 1, ptr %222, align 4
  br label %223

223:                                              ; preds = %219
  %224 = add nsw i32 %storemerge27103, 1
  %225 = icmp slt i32 %224, 1
  br i1 %225, label %219, label %226, !llvm.loop !46

226:                                              ; preds = %223
  %storemerge27.lcssa = phi i32 [ %224, %223 ]
  br label %227

227:                                              ; preds = %226
  %228 = add nsw i32 %storemerge26104, 1
  %229 = icmp slt i32 %228, 2
  br i1 %229, label %217, label %230, !llvm.loop !47

230:                                              ; preds = %227
  %storemerge27.lcssa52.lcssa = phi i32 [ %storemerge27.lcssa, %227 ]
  %storemerge26.lcssa = phi i32 [ %228, %227 ]
  br label %231

231:                                              ; preds = %230
  %232 = add nsw i32 %storemerge12105, 1
  %233 = icmp slt i32 %232, 2
  br i1 %233, label %216, label %234, !llvm.loop !48

234:                                              ; preds = %231
  %storemerge27.lcssa52.lcssa54.lcssa = phi i32 [ %storemerge27.lcssa52.lcssa, %231 ]
  %storemerge26.lcssa53.lcssa = phi i32 [ %storemerge26.lcssa, %231 ]
  %storemerge12.lcssa = phi i32 [ %232, %231 ]
  store i32 %storemerge12.lcssa, ptr %1, align 4
  store i32 %storemerge26.lcssa53.lcssa, ptr %2, align 4
  store i32 %storemerge27.lcssa52.lcssa54.lcssa, ptr %3, align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %235

235:                                              ; preds = %234, %250
  %storemerge13108 = phi i32 [ 0, %234 ], [ %251, %250 ]
  br label %236

236:                                              ; preds = %235, %246
  %storemerge24107 = phi i32 [ 0, %235 ], [ %247, %246 ]
  %237 = shl i32 %storemerge24107, 3
  %invariant.op55 = add i32 %237, %storemerge13108
  br label %238

238:                                              ; preds = %236, %242
  %storemerge25106 = phi i32 [ 0, %236 ], [ %243, %242 ]
  %239 = shl i32 %storemerge25106, 6
  %.reass56 = add i32 %239, %invariant.op55
  %240 = sext i32 %.reass56 to i64
  %241 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %240
  store i32 1, ptr %241, align 4
  br label %242

242:                                              ; preds = %238
  %243 = add nsw i32 %storemerge25106, 1
  %244 = icmp slt i32 %243, 2
  br i1 %244, label %238, label %245, !llvm.loop !49

245:                                              ; preds = %242
  %storemerge25.lcssa = phi i32 [ %243, %242 ]
  br label %246

246:                                              ; preds = %245
  %247 = add nsw i32 %storemerge24107, 1
  %248 = icmp slt i32 %247, 1
  br i1 %248, label %236, label %249, !llvm.loop !50

249:                                              ; preds = %246
  %storemerge25.lcssa57.lcssa = phi i32 [ %storemerge25.lcssa, %246 ]
  %storemerge24.lcssa = phi i32 [ %247, %246 ]
  br label %250

250:                                              ; preds = %249
  %251 = add nsw i32 %storemerge13108, 1
  %252 = icmp slt i32 %251, 2
  br i1 %252, label %235, label %253, !llvm.loop !51

253:                                              ; preds = %250
  %storemerge25.lcssa57.lcssa59.lcssa = phi i32 [ %storemerge25.lcssa57.lcssa, %250 ]
  %storemerge24.lcssa58.lcssa = phi i32 [ %storemerge24.lcssa, %250 ]
  %storemerge13.lcssa = phi i32 [ %251, %250 ]
  store i32 %storemerge13.lcssa, ptr %1, align 4
  store i32 %storemerge24.lcssa58.lcssa, ptr %2, align 4
  store i32 %storemerge25.lcssa57.lcssa59.lcssa, ptr %3, align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %254

254:                                              ; preds = %253, %269
  %storemerge14111 = phi i32 [ 0, %253 ], [ %270, %269 ]
  br label %255

255:                                              ; preds = %254, %265
  %storemerge22110 = phi i32 [ 0, %254 ], [ %266, %265 ]
  %256 = shl i32 %storemerge22110, 3
  %invariant.op60 = add i32 %256, %storemerge14111
  br label %257

257:                                              ; preds = %255, %261
  %storemerge23109 = phi i32 [ 0, %255 ], [ %262, %261 ]
  %258 = shl i32 %storemerge23109, 6
  %.reass61 = add i32 %258, %invariant.op60
  %259 = sext i32 %.reass61 to i64
  %260 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %259
  store i32 1, ptr %260, align 4
  br label %261

261:                                              ; preds = %257
  %262 = add nsw i32 %storemerge23109, 1
  %263 = icmp slt i32 %262, 2
  br i1 %263, label %257, label %264, !llvm.loop !52

264:                                              ; preds = %261
  %storemerge23.lcssa = phi i32 [ %262, %261 ]
  br label %265

265:                                              ; preds = %264
  %266 = add nsw i32 %storemerge22110, 1
  %267 = icmp slt i32 %266, 2
  br i1 %267, label %255, label %268, !llvm.loop !53

268:                                              ; preds = %265
  %storemerge23.lcssa62.lcssa = phi i32 [ %storemerge23.lcssa, %265 ]
  %storemerge22.lcssa = phi i32 [ %266, %265 ]
  br label %269

269:                                              ; preds = %268
  %270 = add nsw i32 %storemerge14111, 1
  %271 = icmp slt i32 %270, 1
  br i1 %271, label %254, label %272, !llvm.loop !54

272:                                              ; preds = %269
  %storemerge23.lcssa62.lcssa64.lcssa = phi i32 [ %storemerge23.lcssa62.lcssa, %269 ]
  %storemerge22.lcssa63.lcssa = phi i32 [ %storemerge22.lcssa, %269 ]
  %storemerge14.lcssa = phi i32 [ %270, %269 ]
  store i32 %storemerge14.lcssa, ptr %1, align 4
  store i32 %storemerge22.lcssa63.lcssa, ptr %2, align 4
  store i32 %storemerge23.lcssa62.lcssa64.lcssa, ptr %3, align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %273

273:                                              ; preds = %272, %288
  %storemerge15114 = phi i32 [ 0, %272 ], [ %289, %288 ]
  br label %274

274:                                              ; preds = %273, %284
  %storemerge20113 = phi i32 [ 0, %273 ], [ %285, %284 ]
  %275 = shl i32 %storemerge20113, 3
  %invariant.op65 = add i32 %275, %storemerge15114
  br label %276

276:                                              ; preds = %274, %280
  %storemerge21112 = phi i32 [ 0, %274 ], [ %281, %280 ]
  %277 = shl i32 %storemerge21112, 6
  %.reass66 = add i32 %277, %invariant.op65
  %278 = sext i32 %.reass66 to i64
  %279 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %278
  store i32 1, ptr %279, align 4
  br label %280

280:                                              ; preds = %276
  %281 = add nsw i32 %storemerge21112, 1
  %282 = icmp slt i32 %281, 2
  br i1 %282, label %276, label %283, !llvm.loop !55

283:                                              ; preds = %280
  %storemerge21.lcssa = phi i32 [ %281, %280 ]
  br label %284

284:                                              ; preds = %283
  %285 = add nsw i32 %storemerge20113, 1
  %286 = icmp slt i32 %285, 2
  br i1 %286, label %274, label %287, !llvm.loop !56

287:                                              ; preds = %284
  %storemerge21.lcssa67.lcssa = phi i32 [ %storemerge21.lcssa, %284 ]
  %storemerge20.lcssa = phi i32 [ %285, %284 ]
  br label %288

288:                                              ; preds = %287
  %289 = add nsw i32 %storemerge15114, 1
  %290 = icmp slt i32 %289, 2
  br i1 %290, label %273, label %291, !llvm.loop !57

291:                                              ; preds = %288
  %storemerge21.lcssa67.lcssa69.lcssa = phi i32 [ %storemerge21.lcssa67.lcssa, %288 ]
  %storemerge20.lcssa68.lcssa = phi i32 [ %storemerge20.lcssa, %288 ]
  %storemerge15.lcssa = phi i32 [ %289, %288 ]
  store i32 %storemerge15.lcssa, ptr %1, align 4
  store i32 %storemerge20.lcssa68.lcssa, ptr %2, align 4
  store i32 %storemerge21.lcssa67.lcssa69.lcssa, ptr %3, align 4
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 73, ptr %4, align 4
  store i32 0, ptr @kount, align 4
  %292 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %292, 0
  br i1 %.not, label %296, label %293

293:                                              ; preds = %291
  %294 = load i32, ptr %4, align 4
  %295 = call i32 @Place(i32 noundef 0, i32 noundef %294)
  store i32 %295, ptr @n, align 4
  br label %297

296:                                              ; preds = %291
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %297

297:                                              ; preds = %296, %293
  %298 = load i32, ptr @n, align 4
  %299 = call i32 @Trial(i32 noundef %298)
  %.not16 = icmp eq i32 %299, 0
  br i1 %.not16, label %300, label %301

300:                                              ; preds = %297
  %puts17 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %305

301:                                              ; preds = %297
  %302 = load i32, ptr @kount, align 4
  %.not18 = icmp eq i32 %302, 2005
  br i1 %.not18, label %304, label %303

303:                                              ; preds = %301
  %puts19 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %304

304:                                              ; preds = %303, %301
  br label %305

305:                                              ; preds = %304, %300
  %306 = load i32, ptr @n, align 4
  %307 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %306) #4
  %308 = load i32, ptr @kount, align 4
  %309 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %308) #4
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  br label %2

2:                                                ; preds = %0, %3
  %storemerge1 = phi i32 [ 0, %0 ], [ %4, %3 ]
  call void @Puzzle()
  br label %3

3:                                                ; preds = %2
  %4 = add nsw i32 %storemerge1, 1
  %5 = icmp slt i32 %4, 100
  br i1 %5, label %2, label %6, !llvm.loop !58

6:                                                ; preds = %3
  %storemerge.lcssa = phi i32 [ %4, %3 ]
  store i32 %storemerge.lcssa, ptr %1, align 4
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
