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
  %12 = sext i32 %11 to i64
  %smax = call i32 @llvm.smax.i32(i32 %9, i32 -1)
  %13 = add i32 %smax, 1
  %14 = zext i32 %13 to i64
  %wide.trip.count = zext i32 %13 to i64
  br label %15

15:                                               ; preds = %27, %2
  %indvars.iv = phi i64 [ %indvars.iv.next, %27 ], [ 0, %2 ]
  %exitcond = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %28, label %16

16:                                               ; preds = %15
  %17 = getelementptr inbounds [4 x i8], ptr %10, i64 %indvars.iv
  %18 = load i32, ptr %17, align 4
  %.not2 = icmp eq i32 %18, 0
  br i1 %.not2, label %26, label %19

19:                                               ; preds = %16
  %20 = add nsw i64 %12, %indvars.iv
  %21 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %20
  %22 = load i32, ptr %21, align 4
  %.not3 = icmp eq i32 %22, 0
  br i1 %.not3, label %25, label %23

23:                                               ; preds = %19
  %storemerge.lcssa1.wide = phi i64 [ %indvars.iv, %19 ]
  %24 = trunc nuw nsw i64 %storemerge.lcssa1.wide to i32
  store i32 %24, ptr %5, align 4
  br label %30

25:                                               ; preds = %19
  br label %26

26:                                               ; preds = %25, %16
  br label %27

27:                                               ; preds = %26
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %15, !llvm.loop !7

28:                                               ; preds = %15
  %29 = trunc nuw nsw i64 %14 to i32
  store i32 %29, ptr %5, align 4
  br label %30

30:                                               ; preds = %28, %23
  %storemerge1 = phi i32 [ 1, %28 ], [ 0, %23 ]
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
  %12 = sext i32 %11 to i64
  %smax6 = call i32 @llvm.smax.i32(i32 %9, i32 -1)
  %13 = add i32 %smax6, 1
  %wide.trip.count7 = zext i32 %13 to i64
  br label %14

14:                                               ; preds = %22, %2
  %indvars.iv3 = phi i64 [ %indvars.iv.next4, %22 ], [ 0, %2 ]
  %exitcond8 = icmp eq i64 %indvars.iv3, %wide.trip.count7
  br i1 %exitcond8, label %23, label %15

15:                                               ; preds = %14
  %16 = getelementptr inbounds [4 x i8], ptr %10, i64 %indvars.iv3
  %17 = load i32, ptr %16, align 4
  %.not4 = icmp eq i32 %17, 0
  br i1 %.not4, label %21, label %18

18:                                               ; preds = %15
  %19 = add nsw i64 %12, %indvars.iv3
  %20 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %19
  store i32 1, ptr %20, align 4
  br label %21

21:                                               ; preds = %18, %15
  br label %22

22:                                               ; preds = %21
  %indvars.iv.next4 = add nuw nsw i64 %indvars.iv3, 1
  br label %14, !llvm.loop !9

23:                                               ; preds = %14
  %storemerge.lcssa.wide = phi i64 [ %indvars.iv3, %14 ]
  %.lcssa = phi i64 [ %7, %14 ]
  %24 = trunc nuw nsw i64 %storemerge.lcssa.wide to i32
  store i32 %24, ptr %5, align 4
  %25 = getelementptr inbounds [4 x i8], ptr @class, i64 %.lcssa
  %26 = load i32, ptr %25, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %27
  %29 = load i32, ptr %28, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, ptr %28, align 4
  %31 = load i32, ptr %4, align 4
  %32 = sext i32 %31 to i64
  %smax = call i32 @llvm.smax.i32(i32 %31, i32 512)
  %wide.trip.count = sext i32 %smax to i64
  br label %33

33:                                               ; preds = %41, %23
  %indvars.iv = phi i64 [ %indvars.iv.next, %41 ], [ %32, %23 ]
  %34 = trunc nsw i64 %indvars.iv to i32
  %exitcond = icmp ne i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %35, label %42

35:                                               ; preds = %33
  %36 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %indvars.iv
  %37 = load i32, ptr %36, align 4
  %.not3 = icmp eq i32 %37, 0
  br i1 %.not3, label %38, label %40

38:                                               ; preds = %35
  %.lcssa2 = phi i32 [ %34, %35 ]
  %storemerge1.lcssa5.wide = phi i64 [ %indvars.iv, %35 ]
  store i32 %.lcssa2, ptr %5, align 4
  %39 = trunc nsw i64 %storemerge1.lcssa5.wide to i32
  br label %43

40:                                               ; preds = %35
  br label %41

41:                                               ; preds = %40
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %33, !llvm.loop !10

42:                                               ; preds = %33
  store i32 %smax, ptr %5, align 4
  br label %43

43:                                               ; preds = %42, %38
  %storemerge2 = phi i32 [ 0, %42 ], [ %39, %38 ]
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
  %12 = sext i32 %11 to i64
  %smax = call i32 @llvm.smax.i32(i32 %9, i32 -1)
  %13 = add i32 %smax, 1
  %wide.trip.count = zext i32 %13 to i64
  br label %14

14:                                               ; preds = %22, %2
  %indvars.iv = phi i64 [ %indvars.iv.next, %22 ], [ 0, %2 ]
  %exitcond = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %23, label %15

15:                                               ; preds = %14
  %16 = getelementptr inbounds [4 x i8], ptr %10, i64 %indvars.iv
  %17 = load i32, ptr %16, align 4
  %.not1 = icmp eq i32 %17, 0
  br i1 %.not1, label %21, label %18

18:                                               ; preds = %15
  %19 = add nsw i64 %12, %indvars.iv
  %20 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %19
  store i32 0, ptr %20, align 4
  br label %21

21:                                               ; preds = %18, %15
  br label %22

22:                                               ; preds = %21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %14, !llvm.loop !11

23:                                               ; preds = %14
  %storemerge.lcssa.wide = phi i64 [ %indvars.iv, %14 ]
  %.lcssa = phi i64 [ %7, %14 ]
  %24 = trunc nuw nsw i64 %storemerge.lcssa.wide to i32
  store i32 %24, ptr %5, align 4
  %25 = getelementptr inbounds [4 x i8], ptr @class, i64 %.lcssa
  %26 = load i32, ptr %25, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %27
  %29 = load i32, ptr %28, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, ptr %28, align 4
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

10:                                               ; preds = %36, %1
  %indvars.iv = phi i64 [ %indvars.iv.next, %36 ], [ 0, %1 ]
  %11 = phi i32 [ %.promoted, %1 ], [ %35, %36 ]
  %exitcond = icmp ne i64 %indvars.iv, 13
  br i1 %exitcond, label %12, label %37

12:                                               ; preds = %10
  %13 = getelementptr inbounds [4 x i8], ptr @class, i64 %indvars.iv
  %14 = load i32, ptr %13, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %15
  %17 = load i32, ptr %16, align 4
  %.not = icmp eq i32 %17, 0
  br i1 %.not, label %34, label %18

18:                                               ; preds = %12
  %19 = trunc nuw nsw i64 %indvars.iv to i32
  %20 = call i32 @Fit(i32 noundef %19, i32 noundef %7)
  %.not2 = icmp eq i32 %20, 0
  br i1 %.not2, label %32, label %21

21:                                               ; preds = %18
  %22 = trunc nuw nsw i64 %indvars.iv to i32
  %23 = call i32 @Place(i32 noundef %22, i32 noundef %8)
  %24 = call i32 @Trial(i32 noundef %23)
  %.not3 = icmp eq i32 %24, 0
  %25 = trunc nuw nsw i64 %indvars.iv to i32
  br i1 %.not3, label %26, label %28

26:                                               ; preds = %21
  %27 = icmp eq i32 %23, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %26, %21
  %.lcssa2 = phi i32 [ %23, %26 ], [ %23, %21 ]
  %storemerge.lcssa1 = phi i32 [ %25, %26 ], [ %25, %21 ]
  store i32 %storemerge.lcssa1, ptr %3, align 4
  store i32 %.lcssa2, ptr %4, align 4
  br label %39

29:                                               ; preds = %26
  %30 = trunc nuw nsw i64 %indvars.iv to i32
  call void @Remove(i32 noundef %30, i32 noundef %9)
  br label %31

31:                                               ; preds = %29
  br label %32

32:                                               ; preds = %31, %18
  %33 = phi i32 [ %23, %31 ], [ %11, %18 ]
  br label %34

34:                                               ; preds = %32, %12
  %35 = phi i32 [ %33, %32 ], [ %11, %12 ]
  br label %36

36:                                               ; preds = %34
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %10, !llvm.loop !12

37:                                               ; preds = %10
  %.lcssa = phi i32 [ %11, %10 ]
  %38 = trunc nuw nsw i64 13 to i32
  store i32 %38, ptr %3, align 4
  store i32 %.lcssa, ptr %4, align 4
  br label %39

39:                                               ; preds = %37, %28
  %storemerge1 = phi i32 [ 0, %37 ], [ 1, %28 ]
  ret i32 %storemerge1
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Puzzle() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  br label %5

5:                                                ; preds = %8, %0
  %indvars.iv = phi i64 [ %indvars.iv.next, %8 ], [ 0, %0 ]
  %exitcond = icmp ne i64 %indvars.iv, 512
  br i1 %exitcond, label %6, label %9

6:                                                ; preds = %5
  %7 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %indvars.iv
  store i32 1, ptr %7, align 4
  br label %8

8:                                                ; preds = %6
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %5, !llvm.loop !13

9:                                                ; preds = %5
  %10 = trunc nuw nsw i64 512 to i32
  store i32 %10, ptr %4, align 4
  br label %11

11:                                               ; preds = %26, %9
  %indvars.iv81 = phi i64 [ %indvars.iv.next82, %26 ], [ 1, %9 ]
  %exitcond84 = icmp ne i64 %indvars.iv81, 6
  br i1 %exitcond84, label %12, label %27

12:                                               ; preds = %11
  br label %13

13:                                               ; preds = %24, %12
  %indvars.iv76 = phi i64 [ %indvars.iv.next77, %24 ], [ 1, %12 ]
  %exitcond80 = icmp ne i64 %indvars.iv76, 6
  br i1 %exitcond80, label %14, label %25

14:                                               ; preds = %13
  %15 = shl i64 %indvars.iv76, 3
  %16 = add nuw nsw i64 %15, %indvars.iv81
  br label %17

17:                                               ; preds = %22, %14
  %indvars.iv71 = phi i64 [ %indvars.iv.next72, %22 ], [ 1, %14 ]
  %exitcond75 = icmp ne i64 %indvars.iv71, 6
  br i1 %exitcond75, label %18, label %23

18:                                               ; preds = %17
  %19 = shl i64 %indvars.iv71, 6
  %20 = add nuw nsw i64 %19, %16
  %21 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %20
  store i32 0, ptr %21, align 4
  br label %22

22:                                               ; preds = %18
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1
  br label %17, !llvm.loop !14

23:                                               ; preds = %17
  br label %24

24:                                               ; preds = %23
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv76, 1
  br label %13, !llvm.loop !15

25:                                               ; preds = %13
  br label %26

26:                                               ; preds = %25
  %indvars.iv.next82 = add nuw nsw i64 %indvars.iv81, 1
  br label %11, !llvm.loop !16

27:                                               ; preds = %11
  %28 = trunc nuw nsw i64 6 to i32
  store i32 %28, ptr %1, align 4
  store i32 6, ptr %2, align 4
  store i32 6, ptr %3, align 4
  br label %29

29:                                               ; preds = %37, %27
  %indvars.iv89 = phi i64 [ %indvars.iv.next90, %37 ], [ 0, %27 ]
  %exitcond92 = icmp ne i64 %indvars.iv89, 13
  br i1 %exitcond92, label %30, label %38

30:                                               ; preds = %29
  %31 = getelementptr inbounds [2048 x i8], ptr @p, i64 %indvars.iv89
  br label %32

32:                                               ; preds = %35, %30
  %indvars.iv85 = phi i64 [ %indvars.iv.next86, %35 ], [ 0, %30 ]
  %exitcond88 = icmp ne i64 %indvars.iv85, 512
  br i1 %exitcond88, label %33, label %36

33:                                               ; preds = %32
  %34 = getelementptr inbounds [4 x i8], ptr %31, i64 %indvars.iv85
  store i32 0, ptr %34, align 4
  br label %35

35:                                               ; preds = %33
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 1
  br label %32, !llvm.loop !17

36:                                               ; preds = %32
  br label %37

37:                                               ; preds = %36
  %indvars.iv.next90 = add nuw nsw i64 %indvars.iv89, 1
  br label %29, !llvm.loop !18

38:                                               ; preds = %29
  %39 = trunc nuw nsw i64 13 to i32
  store i32 %39, ptr %1, align 4
  store i32 512, ptr %4, align 4
  br label %40

40:                                               ; preds = %55, %38
  %indvars.iv103 = phi i64 [ %indvars.iv.next104, %55 ], [ 0, %38 ]
  %exitcond106 = icmp ne i64 %indvars.iv103, 4
  br i1 %exitcond106, label %41, label %56

41:                                               ; preds = %40
  br label %42

42:                                               ; preds = %53, %41
  %indvars.iv98 = phi i64 [ %indvars.iv.next99, %53 ], [ 0, %41 ]
  %exitcond102 = icmp ne i64 %indvars.iv98, 2
  br i1 %exitcond102, label %43, label %54

43:                                               ; preds = %42
  %44 = shl i64 %indvars.iv98, 3
  %45 = add nuw nsw i64 %44, %indvars.iv103
  br label %46

46:                                               ; preds = %51, %43
  %indvars.iv93 = phi i64 [ %indvars.iv.next94, %51 ], [ 0, %43 ]
  %exitcond97 = icmp ne i64 %indvars.iv93, 1
  br i1 %exitcond97, label %47, label %52

47:                                               ; preds = %46
  %48 = shl i64 %indvars.iv93, 6
  %49 = add nuw nsw i64 %48, %45
  %50 = getelementptr inbounds [4 x i8], ptr @p, i64 %49
  store i32 1, ptr %50, align 4
  br label %51

51:                                               ; preds = %47
  %indvars.iv.next94 = add nuw nsw i64 %indvars.iv93, 1
  br label %46, !llvm.loop !19

52:                                               ; preds = %46
  br label %53

53:                                               ; preds = %52
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1
  br label %42, !llvm.loop !20

54:                                               ; preds = %42
  br label %55

55:                                               ; preds = %54
  %indvars.iv.next104 = add nuw nsw i64 %indvars.iv103, 1
  br label %40, !llvm.loop !21

56:                                               ; preds = %40
  %57 = trunc nuw nsw i64 4 to i32
  store i32 %57, ptr %1, align 4
  store i32 2, ptr %2, align 4
  store i32 1, ptr %3, align 4
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %58

58:                                               ; preds = %73, %56
  %indvars.iv117 = phi i64 [ %indvars.iv.next118, %73 ], [ 0, %56 ]
  %exitcond120 = icmp ne i64 %indvars.iv117, 2
  br i1 %exitcond120, label %59, label %74

59:                                               ; preds = %58
  br label %60

60:                                               ; preds = %71, %59
  %indvars.iv112 = phi i64 [ %indvars.iv.next113, %71 ], [ 0, %59 ]
  %exitcond116 = icmp ne i64 %indvars.iv112, 1
  br i1 %exitcond116, label %61, label %72

61:                                               ; preds = %60
  %62 = shl i64 %indvars.iv112, 3
  %63 = add nuw nsw i64 %62, %indvars.iv117
  br label %64

64:                                               ; preds = %69, %61
  %indvars.iv107 = phi i64 [ %indvars.iv.next108, %69 ], [ 0, %61 ]
  %exitcond111 = icmp ne i64 %indvars.iv107, 4
  br i1 %exitcond111, label %65, label %70

65:                                               ; preds = %64
  %66 = shl i64 %indvars.iv107, 6
  %67 = add nuw nsw i64 %66, %63
  %68 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %67
  store i32 1, ptr %68, align 4
  br label %69

69:                                               ; preds = %65
  %indvars.iv.next108 = add nuw nsw i64 %indvars.iv107, 1
  br label %64, !llvm.loop !22

70:                                               ; preds = %64
  br label %71

71:                                               ; preds = %70
  %indvars.iv.next113 = add nuw nsw i64 %indvars.iv112, 1
  br label %60, !llvm.loop !23

72:                                               ; preds = %60
  br label %73

73:                                               ; preds = %72
  %indvars.iv.next118 = add nuw nsw i64 %indvars.iv117, 1
  br label %58, !llvm.loop !24

74:                                               ; preds = %58
  %75 = trunc nuw nsw i64 2 to i32
  store i32 %75, ptr %1, align 4
  store i32 1, ptr %2, align 4
  store i32 4, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %76

76:                                               ; preds = %91, %74
  %indvars.iv131 = phi i64 [ %indvars.iv.next132, %91 ], [ 0, %74 ]
  %exitcond134 = icmp ne i64 %indvars.iv131, 1
  br i1 %exitcond134, label %77, label %92

77:                                               ; preds = %76
  br label %78

78:                                               ; preds = %89, %77
  %indvars.iv126 = phi i64 [ %indvars.iv.next127, %89 ], [ 0, %77 ]
  %exitcond130 = icmp ne i64 %indvars.iv126, 4
  br i1 %exitcond130, label %79, label %90

79:                                               ; preds = %78
  %80 = shl i64 %indvars.iv126, 3
  %81 = add nuw nsw i64 %80, %indvars.iv131
  br label %82

82:                                               ; preds = %87, %79
  %indvars.iv121 = phi i64 [ %indvars.iv.next122, %87 ], [ 0, %79 ]
  %exitcond125 = icmp ne i64 %indvars.iv121, 2
  br i1 %exitcond125, label %83, label %88

83:                                               ; preds = %82
  %84 = shl i64 %indvars.iv121, 6
  %85 = add nuw nsw i64 %84, %81
  %86 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %85
  store i32 1, ptr %86, align 4
  br label %87

87:                                               ; preds = %83
  %indvars.iv.next122 = add nuw nsw i64 %indvars.iv121, 1
  br label %82, !llvm.loop !25

88:                                               ; preds = %82
  br label %89

89:                                               ; preds = %88
  %indvars.iv.next127 = add nuw nsw i64 %indvars.iv126, 1
  br label %78, !llvm.loop !26

90:                                               ; preds = %78
  br label %91

91:                                               ; preds = %90
  %indvars.iv.next132 = add nuw nsw i64 %indvars.iv131, 1
  br label %76, !llvm.loop !27

92:                                               ; preds = %76
  %93 = trunc nuw nsw i64 1 to i32
  store i32 %93, ptr %1, align 4
  store i32 4, ptr %2, align 4
  store i32 2, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %94

94:                                               ; preds = %109, %92
  %indvars.iv145 = phi i64 [ %indvars.iv.next146, %109 ], [ 0, %92 ]
  %exitcond148 = icmp ne i64 %indvars.iv145, 2
  br i1 %exitcond148, label %95, label %110

95:                                               ; preds = %94
  br label %96

96:                                               ; preds = %107, %95
  %indvars.iv140 = phi i64 [ %indvars.iv.next141, %107 ], [ 0, %95 ]
  %exitcond144 = icmp ne i64 %indvars.iv140, 4
  br i1 %exitcond144, label %97, label %108

97:                                               ; preds = %96
  %98 = shl i64 %indvars.iv140, 3
  %99 = add nuw nsw i64 %98, %indvars.iv145
  br label %100

100:                                              ; preds = %105, %97
  %indvars.iv135 = phi i64 [ %indvars.iv.next136, %105 ], [ 0, %97 ]
  %exitcond139 = icmp ne i64 %indvars.iv135, 1
  br i1 %exitcond139, label %101, label %106

101:                                              ; preds = %100
  %102 = shl i64 %indvars.iv135, 6
  %103 = add nuw nsw i64 %102, %99
  %104 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %103
  store i32 1, ptr %104, align 4
  br label %105

105:                                              ; preds = %101
  %indvars.iv.next136 = add nuw nsw i64 %indvars.iv135, 1
  br label %100, !llvm.loop !28

106:                                              ; preds = %100
  br label %107

107:                                              ; preds = %106
  %indvars.iv.next141 = add nuw nsw i64 %indvars.iv140, 1
  br label %96, !llvm.loop !29

108:                                              ; preds = %96
  br label %109

109:                                              ; preds = %108
  %indvars.iv.next146 = add nuw nsw i64 %indvars.iv145, 1
  br label %94, !llvm.loop !30

110:                                              ; preds = %94
  %111 = trunc nuw nsw i64 2 to i32
  store i32 %111, ptr %1, align 4
  store i32 4, ptr %2, align 4
  store i32 1, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %112

112:                                              ; preds = %127, %110
  %indvars.iv159 = phi i64 [ %indvars.iv.next160, %127 ], [ 0, %110 ]
  %exitcond162 = icmp ne i64 %indvars.iv159, 4
  br i1 %exitcond162, label %113, label %128

113:                                              ; preds = %112
  br label %114

114:                                              ; preds = %125, %113
  %indvars.iv154 = phi i64 [ %indvars.iv.next155, %125 ], [ 0, %113 ]
  %exitcond158 = icmp ne i64 %indvars.iv154, 1
  br i1 %exitcond158, label %115, label %126

115:                                              ; preds = %114
  %116 = shl i64 %indvars.iv154, 3
  %117 = add nuw nsw i64 %116, %indvars.iv159
  br label %118

118:                                              ; preds = %123, %115
  %indvars.iv149 = phi i64 [ %indvars.iv.next150, %123 ], [ 0, %115 ]
  %exitcond153 = icmp ne i64 %indvars.iv149, 2
  br i1 %exitcond153, label %119, label %124

119:                                              ; preds = %118
  %120 = shl i64 %indvars.iv149, 6
  %121 = add nuw nsw i64 %120, %117
  %122 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %121
  store i32 1, ptr %122, align 4
  br label %123

123:                                              ; preds = %119
  %indvars.iv.next150 = add nuw nsw i64 %indvars.iv149, 1
  br label %118, !llvm.loop !31

124:                                              ; preds = %118
  br label %125

125:                                              ; preds = %124
  %indvars.iv.next155 = add nuw nsw i64 %indvars.iv154, 1
  br label %114, !llvm.loop !32

126:                                              ; preds = %114
  br label %127

127:                                              ; preds = %126
  %indvars.iv.next160 = add nuw nsw i64 %indvars.iv159, 1
  br label %112, !llvm.loop !33

128:                                              ; preds = %112
  %129 = trunc nuw nsw i64 4 to i32
  store i32 %129, ptr %1, align 4
  store i32 1, ptr %2, align 4
  store i32 2, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %130

130:                                              ; preds = %145, %128
  %indvars.iv173 = phi i64 [ %indvars.iv.next174, %145 ], [ 0, %128 ]
  %exitcond176 = icmp ne i64 %indvars.iv173, 1
  br i1 %exitcond176, label %131, label %146

131:                                              ; preds = %130
  br label %132

132:                                              ; preds = %143, %131
  %indvars.iv168 = phi i64 [ %indvars.iv.next169, %143 ], [ 0, %131 ]
  %exitcond172 = icmp ne i64 %indvars.iv168, 2
  br i1 %exitcond172, label %133, label %144

133:                                              ; preds = %132
  %134 = shl i64 %indvars.iv168, 3
  %135 = add nuw nsw i64 %134, %indvars.iv173
  br label %136

136:                                              ; preds = %141, %133
  %indvars.iv163 = phi i64 [ %indvars.iv.next164, %141 ], [ 0, %133 ]
  %exitcond167 = icmp ne i64 %indvars.iv163, 4
  br i1 %exitcond167, label %137, label %142

137:                                              ; preds = %136
  %138 = shl i64 %indvars.iv163, 6
  %139 = add nuw nsw i64 %138, %135
  %140 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %139
  store i32 1, ptr %140, align 4
  br label %141

141:                                              ; preds = %137
  %indvars.iv.next164 = add nuw nsw i64 %indvars.iv163, 1
  br label %136, !llvm.loop !34

142:                                              ; preds = %136
  br label %143

143:                                              ; preds = %142
  %indvars.iv.next169 = add nuw nsw i64 %indvars.iv168, 1
  br label %132, !llvm.loop !35

144:                                              ; preds = %132
  br label %145

145:                                              ; preds = %144
  %indvars.iv.next174 = add nuw nsw i64 %indvars.iv173, 1
  br label %130, !llvm.loop !36

146:                                              ; preds = %130
  %147 = trunc nuw nsw i64 1 to i32
  store i32 %147, ptr %1, align 4
  store i32 2, ptr %2, align 4
  store i32 4, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %148

148:                                              ; preds = %163, %146
  %indvars.iv187 = phi i64 [ %indvars.iv.next188, %163 ], [ 0, %146 ]
  %exitcond190 = icmp ne i64 %indvars.iv187, 3
  br i1 %exitcond190, label %149, label %164

149:                                              ; preds = %148
  br label %150

150:                                              ; preds = %161, %149
  %indvars.iv182 = phi i64 [ %indvars.iv.next183, %161 ], [ 0, %149 ]
  %exitcond186 = icmp ne i64 %indvars.iv182, 1
  br i1 %exitcond186, label %151, label %162

151:                                              ; preds = %150
  %152 = shl i64 %indvars.iv182, 3
  %153 = add nuw nsw i64 %152, %indvars.iv187
  br label %154

154:                                              ; preds = %159, %151
  %indvars.iv177 = phi i64 [ %indvars.iv.next178, %159 ], [ 0, %151 ]
  %exitcond181 = icmp ne i64 %indvars.iv177, 1
  br i1 %exitcond181, label %155, label %160

155:                                              ; preds = %154
  %156 = shl i64 %indvars.iv177, 6
  %157 = add nuw nsw i64 %156, %153
  %158 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %157
  store i32 1, ptr %158, align 4
  br label %159

159:                                              ; preds = %155
  %indvars.iv.next178 = add nuw nsw i64 %indvars.iv177, 1
  br label %154, !llvm.loop !37

160:                                              ; preds = %154
  br label %161

161:                                              ; preds = %160
  %indvars.iv.next183 = add nuw nsw i64 %indvars.iv182, 1
  br label %150, !llvm.loop !38

162:                                              ; preds = %150
  br label %163

163:                                              ; preds = %162
  %indvars.iv.next188 = add nuw nsw i64 %indvars.iv187, 1
  br label %148, !llvm.loop !39

164:                                              ; preds = %148
  %165 = trunc nuw nsw i64 3 to i32
  store i32 %165, ptr %1, align 4
  store i32 1, ptr %2, align 4
  store i32 1, ptr %3, align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %166

166:                                              ; preds = %181, %164
  %indvars.iv201 = phi i64 [ %indvars.iv.next202, %181 ], [ 0, %164 ]
  %exitcond204 = icmp ne i64 %indvars.iv201, 1
  br i1 %exitcond204, label %167, label %182

167:                                              ; preds = %166
  br label %168

168:                                              ; preds = %179, %167
  %indvars.iv196 = phi i64 [ %indvars.iv.next197, %179 ], [ 0, %167 ]
  %exitcond200 = icmp ne i64 %indvars.iv196, 3
  br i1 %exitcond200, label %169, label %180

169:                                              ; preds = %168
  %170 = shl i64 %indvars.iv196, 3
  %171 = add nuw nsw i64 %170, %indvars.iv201
  br label %172

172:                                              ; preds = %177, %169
  %indvars.iv191 = phi i64 [ %indvars.iv.next192, %177 ], [ 0, %169 ]
  %exitcond195 = icmp ne i64 %indvars.iv191, 1
  br i1 %exitcond195, label %173, label %178

173:                                              ; preds = %172
  %174 = shl i64 %indvars.iv191, 6
  %175 = add nuw nsw i64 %174, %171
  %176 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %175
  store i32 1, ptr %176, align 4
  br label %177

177:                                              ; preds = %173
  %indvars.iv.next192 = add nuw nsw i64 %indvars.iv191, 1
  br label %172, !llvm.loop !40

178:                                              ; preds = %172
  br label %179

179:                                              ; preds = %178
  %indvars.iv.next197 = add nuw nsw i64 %indvars.iv196, 1
  br label %168, !llvm.loop !41

180:                                              ; preds = %168
  br label %181

181:                                              ; preds = %180
  %indvars.iv.next202 = add nuw nsw i64 %indvars.iv201, 1
  br label %166, !llvm.loop !42

182:                                              ; preds = %166
  %183 = trunc nuw nsw i64 1 to i32
  store i32 %183, ptr %1, align 4
  store i32 3, ptr %2, align 4
  store i32 1, ptr %3, align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %184

184:                                              ; preds = %199, %182
  %indvars.iv215 = phi i64 [ %indvars.iv.next216, %199 ], [ 0, %182 ]
  %exitcond218 = icmp ne i64 %indvars.iv215, 1
  br i1 %exitcond218, label %185, label %200

185:                                              ; preds = %184
  br label %186

186:                                              ; preds = %197, %185
  %indvars.iv210 = phi i64 [ %indvars.iv.next211, %197 ], [ 0, %185 ]
  %exitcond214 = icmp ne i64 %indvars.iv210, 1
  br i1 %exitcond214, label %187, label %198

187:                                              ; preds = %186
  %188 = shl i64 %indvars.iv210, 3
  %189 = add nuw nsw i64 %188, %indvars.iv215
  br label %190

190:                                              ; preds = %195, %187
  %indvars.iv205 = phi i64 [ %indvars.iv.next206, %195 ], [ 0, %187 ]
  %exitcond209 = icmp ne i64 %indvars.iv205, 3
  br i1 %exitcond209, label %191, label %196

191:                                              ; preds = %190
  %192 = shl i64 %indvars.iv205, 6
  %193 = add nuw nsw i64 %192, %189
  %194 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %193
  store i32 1, ptr %194, align 4
  br label %195

195:                                              ; preds = %191
  %indvars.iv.next206 = add nuw nsw i64 %indvars.iv205, 1
  br label %190, !llvm.loop !43

196:                                              ; preds = %190
  br label %197

197:                                              ; preds = %196
  %indvars.iv.next211 = add nuw nsw i64 %indvars.iv210, 1
  br label %186, !llvm.loop !44

198:                                              ; preds = %186
  br label %199

199:                                              ; preds = %198
  %indvars.iv.next216 = add nuw nsw i64 %indvars.iv215, 1
  br label %184, !llvm.loop !45

200:                                              ; preds = %184
  %201 = trunc nuw nsw i64 1 to i32
  store i32 %201, ptr %1, align 4
  store i32 1, ptr %2, align 4
  store i32 3, ptr %3, align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %202

202:                                              ; preds = %217, %200
  %indvars.iv229 = phi i64 [ %indvars.iv.next230, %217 ], [ 0, %200 ]
  %exitcond232 = icmp ne i64 %indvars.iv229, 2
  br i1 %exitcond232, label %203, label %218

203:                                              ; preds = %202
  br label %204

204:                                              ; preds = %215, %203
  %indvars.iv224 = phi i64 [ %indvars.iv.next225, %215 ], [ 0, %203 ]
  %exitcond228 = icmp ne i64 %indvars.iv224, 2
  br i1 %exitcond228, label %205, label %216

205:                                              ; preds = %204
  %206 = shl i64 %indvars.iv224, 3
  %207 = add nuw nsw i64 %206, %indvars.iv229
  br label %208

208:                                              ; preds = %213, %205
  %indvars.iv219 = phi i64 [ %indvars.iv.next220, %213 ], [ 0, %205 ]
  %exitcond223 = icmp ne i64 %indvars.iv219, 1
  br i1 %exitcond223, label %209, label %214

209:                                              ; preds = %208
  %210 = shl i64 %indvars.iv219, 6
  %211 = add nuw nsw i64 %210, %207
  %212 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %211
  store i32 1, ptr %212, align 4
  br label %213

213:                                              ; preds = %209
  %indvars.iv.next220 = add nuw nsw i64 %indvars.iv219, 1
  br label %208, !llvm.loop !46

214:                                              ; preds = %208
  br label %215

215:                                              ; preds = %214
  %indvars.iv.next225 = add nuw nsw i64 %indvars.iv224, 1
  br label %204, !llvm.loop !47

216:                                              ; preds = %204
  br label %217

217:                                              ; preds = %216
  %indvars.iv.next230 = add nuw nsw i64 %indvars.iv229, 1
  br label %202, !llvm.loop !48

218:                                              ; preds = %202
  %219 = trunc nuw nsw i64 2 to i32
  store i32 %219, ptr %1, align 4
  store i32 2, ptr %2, align 4
  store i32 1, ptr %3, align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %220

220:                                              ; preds = %235, %218
  %indvars.iv243 = phi i64 [ %indvars.iv.next244, %235 ], [ 0, %218 ]
  %exitcond246 = icmp ne i64 %indvars.iv243, 2
  br i1 %exitcond246, label %221, label %236

221:                                              ; preds = %220
  br label %222

222:                                              ; preds = %233, %221
  %indvars.iv238 = phi i64 [ %indvars.iv.next239, %233 ], [ 0, %221 ]
  %exitcond242 = icmp ne i64 %indvars.iv238, 1
  br i1 %exitcond242, label %223, label %234

223:                                              ; preds = %222
  %224 = shl i64 %indvars.iv238, 3
  %225 = add nuw nsw i64 %224, %indvars.iv243
  br label %226

226:                                              ; preds = %231, %223
  %indvars.iv233 = phi i64 [ %indvars.iv.next234, %231 ], [ 0, %223 ]
  %exitcond237 = icmp ne i64 %indvars.iv233, 2
  br i1 %exitcond237, label %227, label %232

227:                                              ; preds = %226
  %228 = shl i64 %indvars.iv233, 6
  %229 = add nuw nsw i64 %228, %225
  %230 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %229
  store i32 1, ptr %230, align 4
  br label %231

231:                                              ; preds = %227
  %indvars.iv.next234 = add nuw nsw i64 %indvars.iv233, 1
  br label %226, !llvm.loop !49

232:                                              ; preds = %226
  br label %233

233:                                              ; preds = %232
  %indvars.iv.next239 = add nuw nsw i64 %indvars.iv238, 1
  br label %222, !llvm.loop !50

234:                                              ; preds = %222
  br label %235

235:                                              ; preds = %234
  %indvars.iv.next244 = add nuw nsw i64 %indvars.iv243, 1
  br label %220, !llvm.loop !51

236:                                              ; preds = %220
  %237 = trunc nuw nsw i64 2 to i32
  store i32 %237, ptr %1, align 4
  store i32 1, ptr %2, align 4
  store i32 2, ptr %3, align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %238

238:                                              ; preds = %253, %236
  %indvars.iv257 = phi i64 [ %indvars.iv.next258, %253 ], [ 0, %236 ]
  %exitcond260 = icmp ne i64 %indvars.iv257, 1
  br i1 %exitcond260, label %239, label %254

239:                                              ; preds = %238
  br label %240

240:                                              ; preds = %251, %239
  %indvars.iv252 = phi i64 [ %indvars.iv.next253, %251 ], [ 0, %239 ]
  %exitcond256 = icmp ne i64 %indvars.iv252, 2
  br i1 %exitcond256, label %241, label %252

241:                                              ; preds = %240
  %242 = shl i64 %indvars.iv252, 3
  %243 = add nuw nsw i64 %242, %indvars.iv257
  br label %244

244:                                              ; preds = %249, %241
  %indvars.iv247 = phi i64 [ %indvars.iv.next248, %249 ], [ 0, %241 ]
  %exitcond251 = icmp ne i64 %indvars.iv247, 2
  br i1 %exitcond251, label %245, label %250

245:                                              ; preds = %244
  %246 = shl i64 %indvars.iv247, 6
  %247 = add nuw nsw i64 %246, %243
  %248 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %247
  store i32 1, ptr %248, align 4
  br label %249

249:                                              ; preds = %245
  %indvars.iv.next248 = add nuw nsw i64 %indvars.iv247, 1
  br label %244, !llvm.loop !52

250:                                              ; preds = %244
  br label %251

251:                                              ; preds = %250
  %indvars.iv.next253 = add nuw nsw i64 %indvars.iv252, 1
  br label %240, !llvm.loop !53

252:                                              ; preds = %240
  br label %253

253:                                              ; preds = %252
  %indvars.iv.next258 = add nuw nsw i64 %indvars.iv257, 1
  br label %238, !llvm.loop !54

254:                                              ; preds = %238
  %255 = trunc nuw nsw i64 1 to i32
  store i32 %255, ptr %1, align 4
  store i32 2, ptr %2, align 4
  store i32 2, ptr %3, align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %256

256:                                              ; preds = %271, %254
  %indvars.iv271 = phi i64 [ %indvars.iv.next272, %271 ], [ 0, %254 ]
  %exitcond274 = icmp ne i64 %indvars.iv271, 2
  br i1 %exitcond274, label %257, label %272

257:                                              ; preds = %256
  br label %258

258:                                              ; preds = %269, %257
  %indvars.iv266 = phi i64 [ %indvars.iv.next267, %269 ], [ 0, %257 ]
  %exitcond270 = icmp ne i64 %indvars.iv266, 2
  br i1 %exitcond270, label %259, label %270

259:                                              ; preds = %258
  %260 = shl i64 %indvars.iv266, 3
  %261 = add nuw nsw i64 %260, %indvars.iv271
  br label %262

262:                                              ; preds = %267, %259
  %indvars.iv261 = phi i64 [ %indvars.iv.next262, %267 ], [ 0, %259 ]
  %exitcond265 = icmp ne i64 %indvars.iv261, 2
  br i1 %exitcond265, label %263, label %268

263:                                              ; preds = %262
  %264 = shl i64 %indvars.iv261, 6
  %265 = add nuw nsw i64 %264, %261
  %266 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %265
  store i32 1, ptr %266, align 4
  br label %267

267:                                              ; preds = %263
  %indvars.iv.next262 = add nuw nsw i64 %indvars.iv261, 1
  br label %262, !llvm.loop !55

268:                                              ; preds = %262
  br label %269

269:                                              ; preds = %268
  %indvars.iv.next267 = add nuw nsw i64 %indvars.iv266, 1
  br label %258, !llvm.loop !56

270:                                              ; preds = %258
  br label %271

271:                                              ; preds = %270
  %indvars.iv.next272 = add nuw nsw i64 %indvars.iv271, 1
  br label %256, !llvm.loop !57

272:                                              ; preds = %256
  %273 = trunc nuw nsw i64 2 to i32
  store i32 %273, ptr %1, align 4
  store i32 2, ptr %2, align 4
  store i32 2, ptr %3, align 4
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 73, ptr %4, align 4
  store i32 0, ptr @kount, align 4
  %274 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %274, 0
  br i1 %.not, label %278, label %275

275:                                              ; preds = %272
  %276 = load i32, ptr %4, align 4
  %277 = call i32 @Place(i32 noundef 0, i32 noundef %276)
  store i32 %277, ptr @n, align 4
  br label %279

278:                                              ; preds = %272
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %279

279:                                              ; preds = %278, %275
  %280 = load i32, ptr @n, align 4
  %281 = call i32 @Trial(i32 noundef %280)
  %.not16 = icmp eq i32 %281, 0
  br i1 %.not16, label %282, label %283

282:                                              ; preds = %279
  %puts17 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %287

283:                                              ; preds = %279
  %284 = load i32, ptr @kount, align 4
  %.not18 = icmp eq i32 %284, 2005
  br i1 %.not18, label %286, label %285

285:                                              ; preds = %283
  %puts19 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %286

286:                                              ; preds = %285, %283
  br label %287

287:                                              ; preds = %286, %282
  %288 = load i32, ptr @n, align 4
  %289 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %288) #4
  %290 = load i32, ptr @kount, align 4
  %291 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %290) #4
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  br label %2

2:                                                ; preds = %4, %0
  %storemerge = phi i32 [ 0, %0 ], [ %5, %4 ]
  %exitcond = icmp ne i32 %storemerge, 100
  br i1 %exitcond, label %3, label %6

3:                                                ; preds = %2
  call void @Puzzle()
  br label %4

4:                                                ; preds = %3
  %5 = add nuw nsw i32 %storemerge, 1
  br label %2, !llvm.loop !58

6:                                                ; preds = %2
  store i32 100, ptr %1, align 4
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
