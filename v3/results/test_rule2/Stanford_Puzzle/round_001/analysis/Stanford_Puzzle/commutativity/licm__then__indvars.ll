; ModuleID = 'results\test_rule2\Stanford_Puzzle\round_000\output.ll'
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
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, ptr %4, align 4
  store i32 %1, ptr %5, align 4
  store i32 0, ptr %6, align 4
  %7 = load i32, ptr %4, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [13 x i32], ptr @piecemax, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds [13 x [512 x i32]], ptr @p, i64 0, i64 %8
  %12 = load i32, ptr %5, align 4
  %.promoted = load i32, ptr %6, align 4
  %13 = sext i32 %.promoted to i64
  %14 = sext i32 %12 to i64
  %15 = sext i32 %10 to i64
  %16 = add nsw i64 %15, 1
  %smax = call i64 @llvm.smax.i64(i64 %16, i64 %13)
  br label %17

17:                                               ; preds = %32, %2
  %indvars.iv = phi i64 [ %indvars.iv.next, %32 ], [ %13, %2 ]
  %18 = icmp sle i64 %indvars.iv, %15
  br i1 %18, label %19, label %33

19:                                               ; preds = %17
  %20 = getelementptr inbounds [512 x i32], ptr %11, i64 0, i64 %indvars.iv
  %21 = load i32, ptr %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %19
  %24 = add nsw i64 %14, %indvars.iv
  %25 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %24
  %26 = load i32, ptr %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %.lcssa1.wide = phi i64 [ %indvars.iv, %23 ]
  %29 = trunc nsw i64 %.lcssa1.wide to i32
  store i32 %29, ptr %6, align 4
  store i32 0, ptr %3, align 4
  br label %35

30:                                               ; preds = %23
  br label %31

31:                                               ; preds = %30, %19
  br label %32

32:                                               ; preds = %31
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %17, !llvm.loop !7

33:                                               ; preds = %17
  %34 = trunc nsw i64 %smax to i32
  store i32 %34, ptr %6, align 4
  store i32 1, ptr %3, align 4
  br label %35

35:                                               ; preds = %33, %28
  %36 = load i32, ptr %3, align 4
  ret i32 %36
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Place(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, ptr %4, align 4
  store i32 %1, ptr %5, align 4
  store i32 0, ptr %6, align 4
  %7 = load i32, ptr %4, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [13 x i32], ptr @piecemax, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds [13 x [512 x i32]], ptr @p, i64 0, i64 %8
  %12 = load i32, ptr %5, align 4
  %.promoted = load i32, ptr %6, align 4
  %13 = sext i32 %.promoted to i64
  %14 = sext i32 %12 to i64
  %15 = sext i32 %10 to i64
  br label %16

16:                                               ; preds = %26, %2
  %indvars.iv = phi i64 [ %indvars.iv.next, %26 ], [ %13, %2 ]
  %17 = icmp sle i64 %indvars.iv, %15
  br i1 %17, label %18, label %27

18:                                               ; preds = %16
  %19 = getelementptr inbounds [512 x i32], ptr %11, i64 0, i64 %indvars.iv
  %20 = load i32, ptr %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = add nsw i64 %14, %indvars.iv
  %24 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %23
  store i32 1, ptr %24, align 4
  br label %25

25:                                               ; preds = %22, %18
  br label %26

26:                                               ; preds = %25
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %16, !llvm.loop !9

27:                                               ; preds = %16
  %.lcssa2.wide = phi i64 [ %indvars.iv, %16 ]
  %.lcssa = phi i64 [ %8, %16 ]
  %28 = trunc nsw i64 %.lcssa2.wide to i32
  store i32 %28, ptr %6, align 4
  %29 = getelementptr inbounds [13 x i32], ptr @class, i64 0, i64 %.lcssa
  %30 = load i32, ptr %29, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [4 x i32], ptr @piececount, i64 0, i64 %31
  %33 = load i32, ptr %32, align 4
  %34 = sub nsw i32 %33, 1
  store i32 %34, ptr %32, align 4
  %35 = load i32, ptr %5, align 4
  store i32 %35, ptr %6, align 4
  %.promoted3 = load i32, ptr %6, align 4
  %36 = sext i32 %.promoted3 to i64
  %smax = call i32 @llvm.smax.i32(i32 %.promoted3, i32 512)
  %wide.trip.count = sext i32 %smax to i64
  br label %37

37:                                               ; preds = %46, %27
  %indvars.iv7 = phi i64 [ %indvars.iv.next8, %46 ], [ %36, %27 ]
  %exitcond = icmp ne i64 %indvars.iv7, %wide.trip.count
  br i1 %exitcond, label %38, label %47

38:                                               ; preds = %37
  %39 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %indvars.iv7
  %40 = load i32, ptr %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %38
  %.lcssa5.wide = phi i64 [ %indvars.iv7, %38 ]
  %.lcssa1.wide = phi i64 [ %indvars.iv7, %38 ]
  %43 = trunc nsw i64 %.lcssa5.wide to i32
  %44 = trunc nsw i64 %.lcssa1.wide to i32
  store i32 %43, ptr %6, align 4
  store i32 %44, ptr %3, align 4
  br label %49

45:                                               ; preds = %38
  br label %46

46:                                               ; preds = %45
  %indvars.iv.next8 = add nsw i64 %indvars.iv7, 1
  br label %37, !llvm.loop !10

47:                                               ; preds = %37
  %.lcssa4.wide = phi i64 [ %indvars.iv7, %37 ]
  %48 = trunc nsw i64 %.lcssa4.wide to i32
  store i32 %48, ptr %6, align 4
  store i32 0, ptr %3, align 4
  br label %49

49:                                               ; preds = %47, %42
  %50 = load i32, ptr %3, align 4
  ret i32 %50
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
  %8 = getelementptr inbounds [13 x i32], ptr @piecemax, i64 0, i64 %7
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds [13 x [512 x i32]], ptr @p, i64 0, i64 %7
  %11 = load i32, ptr %4, align 4
  %.promoted = load i32, ptr %5, align 4
  %12 = sext i32 %.promoted to i64
  %13 = sext i32 %11 to i64
  %14 = sext i32 %9 to i64
  br label %15

15:                                               ; preds = %25, %2
  %indvars.iv = phi i64 [ %indvars.iv.next, %25 ], [ %12, %2 ]
  %16 = icmp sle i64 %indvars.iv, %14
  br i1 %16, label %17, label %26

17:                                               ; preds = %15
  %18 = getelementptr inbounds [512 x i32], ptr %10, i64 0, i64 %indvars.iv
  %19 = load i32, ptr %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = add nsw i64 %13, %indvars.iv
  %23 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %22
  store i32 0, ptr %23, align 4
  br label %24

24:                                               ; preds = %21, %17
  br label %25

25:                                               ; preds = %24
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %15, !llvm.loop !11

26:                                               ; preds = %15
  %.lcssa1.wide = phi i64 [ %indvars.iv, %15 ]
  %.lcssa = phi i64 [ %7, %15 ]
  %27 = trunc nsw i64 %.lcssa1.wide to i32
  store i32 %27, ptr %5, align 4
  %28 = getelementptr inbounds [13 x i32], ptr @class, i64 0, i64 %.lcssa
  %29 = load i32, ptr %28, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [4 x i32], ptr @piececount, i64 0, i64 %30
  %32 = load i32, ptr %31, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, ptr %31, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Trial(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  %6 = load i32, ptr @kount, align 4
  %7 = add nsw i32 %6, 1
  store i32 %7, ptr @kount, align 4
  store i32 0, ptr %4, align 4
  %8 = load i32, ptr %3, align 4
  %9 = load i32, ptr %3, align 4
  %10 = load i32, ptr %3, align 4
  %.promoted = load i32, ptr %4, align 4
  %.promoted2 = load i32, ptr %5, align 4
  %11 = sext i32 %.promoted to i64
  %smax = call i32 @llvm.smax.i32(i32 %.promoted, i32 13)
  %wide.trip.count = sext i32 %smax to i64
  br label %12

12:                                               ; preds = %41, %1
  %indvars.iv = phi i64 [ %indvars.iv.next, %41 ], [ %11, %1 ]
  %13 = phi i32 [ %40, %41 ], [ %.promoted2, %1 ]
  %exitcond = icmp ne i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %14, label %42

14:                                               ; preds = %12
  %15 = getelementptr inbounds [13 x i32], ptr @class, i64 0, i64 %indvars.iv
  %16 = load i32, ptr %15, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [4 x i32], ptr @piececount, i64 0, i64 %17
  %19 = load i32, ptr %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %39

21:                                               ; preds = %14
  %22 = trunc nsw i64 %indvars.iv to i32
  %23 = call i32 @Fit(i32 noundef %22, i32 noundef %8)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %21
  %26 = trunc nsw i64 %indvars.iv to i32
  %27 = call i32 @Place(i32 noundef %26, i32 noundef %9)
  %28 = call i32 @Trial(i32 noundef %27)
  %29 = icmp ne i32 %28, 0
  %30 = trunc nsw i64 %indvars.iv to i32
  br i1 %29, label %33, label %31

31:                                               ; preds = %25
  %32 = icmp eq i32 %27, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %31, %25
  %.lcssa4 = phi i32 [ %27, %31 ], [ %27, %25 ]
  %.lcssa1 = phi i32 [ %30, %31 ], [ %30, %25 ]
  store i32 %.lcssa1, ptr %4, align 4
  store i32 %.lcssa4, ptr %5, align 4
  store i32 1, ptr %2, align 4
  br label %44

34:                                               ; preds = %31
  %35 = trunc nsw i64 %indvars.iv to i32
  call void @Remove(i32 noundef %35, i32 noundef %10)
  br label %36

36:                                               ; preds = %34
  br label %37

37:                                               ; preds = %36, %21
  %38 = phi i32 [ %27, %36 ], [ %13, %21 ]
  br label %39

39:                                               ; preds = %37, %14
  %40 = phi i32 [ %38, %37 ], [ %13, %14 ]
  br label %41

41:                                               ; preds = %39
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %12, !llvm.loop !12

42:                                               ; preds = %12
  %.lcssa3 = phi i32 [ %13, %12 ]
  %.lcssa.wide = phi i64 [ %indvars.iv, %12 ]
  %43 = trunc nsw i64 %.lcssa.wide to i32
  store i32 %43, ptr %4, align 4
  store i32 %.lcssa3, ptr %5, align 4
  store i32 0, ptr %2, align 4
  br label %44

44:                                               ; preds = %42, %33
  %45 = load i32, ptr %2, align 4
  ret i32 %45
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Puzzle() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, ptr %4, align 4
  %.promoted = load i32, ptr %4, align 4
  %5 = sext i32 %.promoted to i64
  %smax = call i32 @llvm.smax.i32(i32 %.promoted, i32 512)
  %wide.trip.count = sext i32 %smax to i64
  br label %6

6:                                                ; preds = %9, %0
  %indvars.iv = phi i64 [ %indvars.iv.next, %9 ], [ %5, %0 ]
  %exitcond = icmp ne i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %7, label %10

7:                                                ; preds = %6
  %8 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %indvars.iv
  store i32 1, ptr %8, align 4
  br label %9

9:                                                ; preds = %7
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %6, !llvm.loop !13

10:                                               ; preds = %6
  %.lcssa.wide = phi i64 [ %indvars.iv, %6 ]
  %11 = trunc nsw i64 %.lcssa.wide to i32
  store i32 %11, ptr %4, align 4
  store i32 1, ptr %1, align 4
  %.promoted7 = load i32, ptr %1, align 4
  %.promoted9 = load i32, ptr %2, align 4
  %.promoted11 = load i32, ptr %3, align 4
  %12 = sext i32 %.promoted7 to i64
  %smax188 = call i32 @llvm.smax.i32(i32 %.promoted7, i32 6)
  %wide.trip.count189 = sext i32 %smax188 to i64
  br label %13

13:                                               ; preds = %30, %10
  %indvars.iv185 = phi i64 [ %indvars.iv.next186, %30 ], [ %12, %10 ]
  %.lcssa26.lcssa12 = phi i32 [ %.lcssa26.lcssa, %30 ], [ %.promoted11, %10 ]
  %.lcssa410 = phi i32 [ %29, %30 ], [ %.promoted9, %10 ]
  %exitcond190 = icmp ne i64 %indvars.iv185, %wide.trip.count189
  br i1 %exitcond190, label %14, label %31

14:                                               ; preds = %13
  br label %15

15:                                               ; preds = %27, %14
  %indvars.iv181 = phi i64 [ %indvars.iv.next182, %27 ], [ 1, %14 ]
  %.lcssa26 = phi i32 [ %26, %27 ], [ %.lcssa26.lcssa12, %14 ]
  %exitcond184 = icmp ne i64 %indvars.iv181, 6
  br i1 %exitcond184, label %16, label %28

16:                                               ; preds = %15
  br label %17

17:                                               ; preds = %24, %16
  %indvars.iv177 = phi i64 [ %indvars.iv.next178, %24 ], [ 1, %16 ]
  %exitcond180 = icmp ne i64 %indvars.iv177, 6
  br i1 %exitcond180, label %18, label %25

18:                                               ; preds = %17
  %19 = mul nuw nsw i64 8, %indvars.iv177
  %20 = add nuw nsw i64 %indvars.iv181, %19
  %21 = mul nuw nsw i64 8, %20
  %22 = add nsw i64 %indvars.iv185, %21
  %23 = getelementptr inbounds [512 x i32], ptr @puzzl, i64 0, i64 %22
  store i32 0, ptr %23, align 4
  br label %24

24:                                               ; preds = %18
  %indvars.iv.next178 = add nuw nsw i64 %indvars.iv177, 1
  br label %17, !llvm.loop !14

25:                                               ; preds = %17
  %26 = trunc nuw nsw i64 6 to i32
  br label %27

27:                                               ; preds = %25
  %indvars.iv.next182 = add nuw nsw i64 %indvars.iv181, 1
  br label %15, !llvm.loop !15

28:                                               ; preds = %15
  %.lcssa26.lcssa = phi i32 [ %.lcssa26, %15 ]
  %29 = trunc nuw nsw i64 6 to i32
  br label %30

30:                                               ; preds = %28
  %indvars.iv.next186 = add nsw i64 %indvars.iv185, 1
  br label %13, !llvm.loop !16

31:                                               ; preds = %13
  %.lcssa26.lcssa12.lcssa = phi i32 [ %.lcssa26.lcssa12, %13 ]
  %.lcssa410.lcssa = phi i32 [ %.lcssa410, %13 ]
  %.lcssa8.wide = phi i64 [ %indvars.iv185, %13 ]
  %32 = trunc nsw i64 %.lcssa8.wide to i32
  store i32 %32, ptr %1, align 4
  store i32 %.lcssa410.lcssa, ptr %2, align 4
  store i32 %.lcssa26.lcssa12.lcssa, ptr %3, align 4
  store i32 0, ptr %1, align 4
  %.promoted15 = load i32, ptr %1, align 4
  %.promoted17 = load i32, ptr %4, align 4
  %33 = sext i32 %.promoted15 to i64
  %smax198 = call i32 @llvm.smax.i32(i32 %.promoted15, i32 13)
  %wide.trip.count199 = sext i32 %smax198 to i64
  br label %34

34:                                               ; preds = %43, %31
  %indvars.iv195 = phi i64 [ %indvars.iv.next196, %43 ], [ %33, %31 ]
  %.lcssa1418 = phi i32 [ %42, %43 ], [ %.promoted17, %31 ]
  %exitcond200 = icmp ne i64 %indvars.iv195, %wide.trip.count199
  br i1 %exitcond200, label %35, label %44

35:                                               ; preds = %34
  %36 = getelementptr inbounds [13 x [512 x i32]], ptr @p, i64 0, i64 %indvars.iv195
  br label %37

37:                                               ; preds = %40, %35
  %indvars.iv191 = phi i64 [ %indvars.iv.next192, %40 ], [ 0, %35 ]
  %exitcond194 = icmp ne i64 %indvars.iv191, 512
  br i1 %exitcond194, label %38, label %41

38:                                               ; preds = %37
  %39 = getelementptr inbounds [512 x i32], ptr %36, i64 0, i64 %indvars.iv191
  store i32 0, ptr %39, align 4
  br label %40

40:                                               ; preds = %38
  %indvars.iv.next192 = add nuw nsw i64 %indvars.iv191, 1
  br label %37, !llvm.loop !17

41:                                               ; preds = %37
  %42 = trunc nuw nsw i64 512 to i32
  br label %43

43:                                               ; preds = %41
  %indvars.iv.next196 = add nsw i64 %indvars.iv195, 1
  br label %34, !llvm.loop !18

44:                                               ; preds = %34
  %.lcssa1418.lcssa = phi i32 [ %.lcssa1418, %34 ]
  %.lcssa16.wide = phi i64 [ %indvars.iv195, %34 ]
  %45 = trunc nsw i64 %.lcssa16.wide to i32
  store i32 %45, ptr %1, align 4
  store i32 %.lcssa1418.lcssa, ptr %4, align 4
  store i32 0, ptr %1, align 4
  %.promoted25 = load i32, ptr %1, align 4
  %.promoted28 = load i32, ptr %2, align 4
  %.promoted30 = load i32, ptr %3, align 4
  %46 = sext i32 %.promoted25 to i64
  %smax212 = call i32 @llvm.smax.i32(i32 %.promoted25, i32 4)
  %wide.trip.count213 = sext i32 %smax212 to i64
  br label %47

47:                                               ; preds = %64, %44
  %indvars.iv209 = phi i64 [ %indvars.iv.next210, %64 ], [ %46, %44 ]
  %.lcssa2024.lcssa31 = phi i32 [ %.lcssa2024.lcssa, %64 ], [ %.promoted30, %44 ]
  %.lcssa2229 = phi i32 [ %63, %64 ], [ %.promoted28, %44 ]
  %exitcond214 = icmp ne i64 %indvars.iv209, %wide.trip.count213
  br i1 %exitcond214, label %48, label %65

48:                                               ; preds = %47
  br label %49

49:                                               ; preds = %61, %48
  %indvars.iv205 = phi i64 [ %indvars.iv.next206, %61 ], [ 0, %48 ]
  %.lcssa2024 = phi i32 [ %60, %61 ], [ %.lcssa2024.lcssa31, %48 ]
  %exitcond208 = icmp ne i64 %indvars.iv205, 2
  br i1 %exitcond208, label %50, label %62

50:                                               ; preds = %49
  br label %51

51:                                               ; preds = %58, %50
  %indvars.iv201 = phi i64 [ %indvars.iv.next202, %58 ], [ 0, %50 ]
  %exitcond204 = icmp ne i64 %indvars.iv201, 1
  br i1 %exitcond204, label %52, label %59

52:                                               ; preds = %51
  %53 = mul nuw nsw i64 8, %indvars.iv201
  %54 = add nuw nsw i64 %indvars.iv205, %53
  %55 = mul nuw nsw i64 8, %54
  %56 = add nsw i64 %indvars.iv209, %55
  %57 = getelementptr inbounds [512 x i32], ptr @p, i64 0, i64 %56
  store i32 1, ptr %57, align 4
  br label %58

58:                                               ; preds = %52
  %indvars.iv.next202 = add nuw nsw i64 %indvars.iv201, 1
  br label %51, !llvm.loop !19

59:                                               ; preds = %51
  %60 = trunc nuw nsw i64 1 to i32
  br label %61

61:                                               ; preds = %59
  %indvars.iv.next206 = add nuw nsw i64 %indvars.iv205, 1
  br label %49, !llvm.loop !20

62:                                               ; preds = %49
  %.lcssa2024.lcssa = phi i32 [ %.lcssa2024, %49 ]
  %63 = trunc nuw nsw i64 2 to i32
  br label %64

64:                                               ; preds = %62
  %indvars.iv.next210 = add nsw i64 %indvars.iv209, 1
  br label %47, !llvm.loop !21

65:                                               ; preds = %47
  %.lcssa2024.lcssa31.lcssa = phi i32 [ %.lcssa2024.lcssa31, %47 ]
  %.lcssa2229.lcssa = phi i32 [ %.lcssa2229, %47 ]
  %.lcssa27.wide = phi i64 [ %indvars.iv209, %47 ]
  %66 = trunc nsw i64 %.lcssa27.wide to i32
  store i32 %66, ptr %1, align 4
  store i32 %.lcssa2229.lcssa, ptr %2, align 4
  store i32 %.lcssa2024.lcssa31.lcssa, ptr %3, align 4
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  store i32 0, ptr %1, align 4
  %.promoted38 = load i32, ptr %1, align 4
  %.promoted40 = load i32, ptr %2, align 4
  %.promoted42 = load i32, ptr %3, align 4
  %67 = sext i32 %.promoted38 to i64
  %smax226 = call i32 @llvm.smax.i32(i32 %.promoted38, i32 2)
  %wide.trip.count227 = sext i32 %smax226 to i64
  br label %68

68:                                               ; preds = %85, %65
  %indvars.iv223 = phi i64 [ %indvars.iv.next224, %85 ], [ %67, %65 ]
  %.lcssa3337.lcssa43 = phi i32 [ %.lcssa3337.lcssa, %85 ], [ %.promoted42, %65 ]
  %.lcssa3541 = phi i32 [ %84, %85 ], [ %.promoted40, %65 ]
  %exitcond228 = icmp ne i64 %indvars.iv223, %wide.trip.count227
  br i1 %exitcond228, label %69, label %86

69:                                               ; preds = %68
  br label %70

70:                                               ; preds = %82, %69
  %indvars.iv219 = phi i64 [ %indvars.iv.next220, %82 ], [ 0, %69 ]
  %.lcssa3337 = phi i32 [ %81, %82 ], [ %.lcssa3337.lcssa43, %69 ]
  %exitcond222 = icmp ne i64 %indvars.iv219, 1
  br i1 %exitcond222, label %71, label %83

71:                                               ; preds = %70
  br label %72

72:                                               ; preds = %79, %71
  %indvars.iv215 = phi i64 [ %indvars.iv.next216, %79 ], [ 0, %71 ]
  %exitcond218 = icmp ne i64 %indvars.iv215, 4
  br i1 %exitcond218, label %73, label %80

73:                                               ; preds = %72
  %74 = mul nuw nsw i64 8, %indvars.iv215
  %75 = add nuw nsw i64 %indvars.iv219, %74
  %76 = mul nuw nsw i64 8, %75
  %77 = add nsw i64 %indvars.iv223, %76
  %78 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 0, i64 %77
  store i32 1, ptr %78, align 4
  br label %79

79:                                               ; preds = %73
  %indvars.iv.next216 = add nuw nsw i64 %indvars.iv215, 1
  br label %72, !llvm.loop !22

80:                                               ; preds = %72
  %81 = trunc nuw nsw i64 4 to i32
  br label %82

82:                                               ; preds = %80
  %indvars.iv.next220 = add nuw nsw i64 %indvars.iv219, 1
  br label %70, !llvm.loop !23

83:                                               ; preds = %70
  %.lcssa3337.lcssa = phi i32 [ %.lcssa3337, %70 ]
  %84 = trunc nuw nsw i64 1 to i32
  br label %85

85:                                               ; preds = %83
  %indvars.iv.next224 = add nsw i64 %indvars.iv223, 1
  br label %68, !llvm.loop !24

86:                                               ; preds = %68
  %.lcssa3337.lcssa43.lcssa = phi i32 [ %.lcssa3337.lcssa43, %68 ]
  %.lcssa3541.lcssa = phi i32 [ %.lcssa3541, %68 ]
  %.lcssa39.wide = phi i64 [ %indvars.iv223, %68 ]
  %87 = trunc nsw i64 %.lcssa39.wide to i32
  store i32 %87, ptr %1, align 4
  store i32 %.lcssa3541.lcssa, ptr %2, align 4
  store i32 %.lcssa3337.lcssa43.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  store i32 0, ptr %1, align 4
  %.promoted50 = load i32, ptr %1, align 4
  %.promoted52 = load i32, ptr %2, align 4
  %.promoted54 = load i32, ptr %3, align 4
  %88 = sext i32 %.promoted50 to i64
  %smax240 = call i32 @llvm.smax.i32(i32 %.promoted50, i32 1)
  %wide.trip.count241 = sext i32 %smax240 to i64
  br label %89

89:                                               ; preds = %106, %86
  %indvars.iv237 = phi i64 [ %indvars.iv.next238, %106 ], [ %88, %86 ]
  %.lcssa4549.lcssa55 = phi i32 [ %.lcssa4549.lcssa, %106 ], [ %.promoted54, %86 ]
  %.lcssa4753 = phi i32 [ %105, %106 ], [ %.promoted52, %86 ]
  %exitcond242 = icmp ne i64 %indvars.iv237, %wide.trip.count241
  br i1 %exitcond242, label %90, label %107

90:                                               ; preds = %89
  br label %91

91:                                               ; preds = %103, %90
  %indvars.iv233 = phi i64 [ %indvars.iv.next234, %103 ], [ 0, %90 ]
  %.lcssa4549 = phi i32 [ %102, %103 ], [ %.lcssa4549.lcssa55, %90 ]
  %exitcond236 = icmp ne i64 %indvars.iv233, 4
  br i1 %exitcond236, label %92, label %104

92:                                               ; preds = %91
  br label %93

93:                                               ; preds = %100, %92
  %indvars.iv229 = phi i64 [ %indvars.iv.next230, %100 ], [ 0, %92 ]
  %exitcond232 = icmp ne i64 %indvars.iv229, 2
  br i1 %exitcond232, label %94, label %101

94:                                               ; preds = %93
  %95 = mul nuw nsw i64 8, %indvars.iv229
  %96 = add nuw nsw i64 %indvars.iv233, %95
  %97 = mul nuw nsw i64 8, %96
  %98 = add nsw i64 %indvars.iv237, %97
  %99 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 0, i64 %98
  store i32 1, ptr %99, align 4
  br label %100

100:                                              ; preds = %94
  %indvars.iv.next230 = add nuw nsw i64 %indvars.iv229, 1
  br label %93, !llvm.loop !25

101:                                              ; preds = %93
  %102 = trunc nuw nsw i64 2 to i32
  br label %103

103:                                              ; preds = %101
  %indvars.iv.next234 = add nuw nsw i64 %indvars.iv233, 1
  br label %91, !llvm.loop !26

104:                                              ; preds = %91
  %.lcssa4549.lcssa = phi i32 [ %.lcssa4549, %91 ]
  %105 = trunc nuw nsw i64 4 to i32
  br label %106

106:                                              ; preds = %104
  %indvars.iv.next238 = add nsw i64 %indvars.iv237, 1
  br label %89, !llvm.loop !27

107:                                              ; preds = %89
  %.lcssa4549.lcssa55.lcssa = phi i32 [ %.lcssa4549.lcssa55, %89 ]
  %.lcssa4753.lcssa = phi i32 [ %.lcssa4753, %89 ]
  %.lcssa51.wide = phi i64 [ %indvars.iv237, %89 ]
  %108 = trunc nsw i64 %.lcssa51.wide to i32
  store i32 %108, ptr %1, align 4
  store i32 %.lcssa4753.lcssa, ptr %2, align 4
  store i32 %.lcssa4549.lcssa55.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  store i32 0, ptr %1, align 4
  %.promoted62 = load i32, ptr %1, align 4
  %.promoted64 = load i32, ptr %2, align 4
  %.promoted66 = load i32, ptr %3, align 4
  %109 = sext i32 %.promoted62 to i64
  %smax254 = call i32 @llvm.smax.i32(i32 %.promoted62, i32 2)
  %wide.trip.count255 = sext i32 %smax254 to i64
  br label %110

110:                                              ; preds = %127, %107
  %indvars.iv251 = phi i64 [ %indvars.iv.next252, %127 ], [ %109, %107 ]
  %.lcssa5761.lcssa67 = phi i32 [ %.lcssa5761.lcssa, %127 ], [ %.promoted66, %107 ]
  %.lcssa5965 = phi i32 [ %126, %127 ], [ %.promoted64, %107 ]
  %exitcond256 = icmp ne i64 %indvars.iv251, %wide.trip.count255
  br i1 %exitcond256, label %111, label %128

111:                                              ; preds = %110
  br label %112

112:                                              ; preds = %124, %111
  %indvars.iv247 = phi i64 [ %indvars.iv.next248, %124 ], [ 0, %111 ]
  %.lcssa5761 = phi i32 [ %123, %124 ], [ %.lcssa5761.lcssa67, %111 ]
  %exitcond250 = icmp ne i64 %indvars.iv247, 4
  br i1 %exitcond250, label %113, label %125

113:                                              ; preds = %112
  br label %114

114:                                              ; preds = %121, %113
  %indvars.iv243 = phi i64 [ %indvars.iv.next244, %121 ], [ 0, %113 ]
  %exitcond246 = icmp ne i64 %indvars.iv243, 1
  br i1 %exitcond246, label %115, label %122

115:                                              ; preds = %114
  %116 = mul nuw nsw i64 8, %indvars.iv243
  %117 = add nuw nsw i64 %indvars.iv247, %116
  %118 = mul nuw nsw i64 8, %117
  %119 = add nsw i64 %indvars.iv251, %118
  %120 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 0, i64 %119
  store i32 1, ptr %120, align 4
  br label %121

121:                                              ; preds = %115
  %indvars.iv.next244 = add nuw nsw i64 %indvars.iv243, 1
  br label %114, !llvm.loop !28

122:                                              ; preds = %114
  %123 = trunc nuw nsw i64 1 to i32
  br label %124

124:                                              ; preds = %122
  %indvars.iv.next248 = add nuw nsw i64 %indvars.iv247, 1
  br label %112, !llvm.loop !29

125:                                              ; preds = %112
  %.lcssa5761.lcssa = phi i32 [ %.lcssa5761, %112 ]
  %126 = trunc nuw nsw i64 4 to i32
  br label %127

127:                                              ; preds = %125
  %indvars.iv.next252 = add nsw i64 %indvars.iv251, 1
  br label %110, !llvm.loop !30

128:                                              ; preds = %110
  %.lcssa5761.lcssa67.lcssa = phi i32 [ %.lcssa5761.lcssa67, %110 ]
  %.lcssa5965.lcssa = phi i32 [ %.lcssa5965, %110 ]
  %.lcssa63.wide = phi i64 [ %indvars.iv251, %110 ]
  %129 = trunc nsw i64 %.lcssa63.wide to i32
  store i32 %129, ptr %1, align 4
  store i32 %.lcssa5965.lcssa, ptr %2, align 4
  store i32 %.lcssa5761.lcssa67.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  store i32 0, ptr %1, align 4
  %.promoted74 = load i32, ptr %1, align 4
  %.promoted76 = load i32, ptr %2, align 4
  %.promoted78 = load i32, ptr %3, align 4
  %130 = sext i32 %.promoted74 to i64
  %smax268 = call i32 @llvm.smax.i32(i32 %.promoted74, i32 4)
  %wide.trip.count269 = sext i32 %smax268 to i64
  br label %131

131:                                              ; preds = %148, %128
  %indvars.iv265 = phi i64 [ %indvars.iv.next266, %148 ], [ %130, %128 ]
  %.lcssa6973.lcssa79 = phi i32 [ %.lcssa6973.lcssa, %148 ], [ %.promoted78, %128 ]
  %.lcssa7177 = phi i32 [ %147, %148 ], [ %.promoted76, %128 ]
  %exitcond270 = icmp ne i64 %indvars.iv265, %wide.trip.count269
  br i1 %exitcond270, label %132, label %149

132:                                              ; preds = %131
  br label %133

133:                                              ; preds = %145, %132
  %indvars.iv261 = phi i64 [ %indvars.iv.next262, %145 ], [ 0, %132 ]
  %.lcssa6973 = phi i32 [ %144, %145 ], [ %.lcssa6973.lcssa79, %132 ]
  %exitcond264 = icmp ne i64 %indvars.iv261, 1
  br i1 %exitcond264, label %134, label %146

134:                                              ; preds = %133
  br label %135

135:                                              ; preds = %142, %134
  %indvars.iv257 = phi i64 [ %indvars.iv.next258, %142 ], [ 0, %134 ]
  %exitcond260 = icmp ne i64 %indvars.iv257, 2
  br i1 %exitcond260, label %136, label %143

136:                                              ; preds = %135
  %137 = mul nuw nsw i64 8, %indvars.iv257
  %138 = add nuw nsw i64 %indvars.iv261, %137
  %139 = mul nuw nsw i64 8, %138
  %140 = add nsw i64 %indvars.iv265, %139
  %141 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 0, i64 %140
  store i32 1, ptr %141, align 4
  br label %142

142:                                              ; preds = %136
  %indvars.iv.next258 = add nuw nsw i64 %indvars.iv257, 1
  br label %135, !llvm.loop !31

143:                                              ; preds = %135
  %144 = trunc nuw nsw i64 2 to i32
  br label %145

145:                                              ; preds = %143
  %indvars.iv.next262 = add nuw nsw i64 %indvars.iv261, 1
  br label %133, !llvm.loop !32

146:                                              ; preds = %133
  %.lcssa6973.lcssa = phi i32 [ %.lcssa6973, %133 ]
  %147 = trunc nuw nsw i64 1 to i32
  br label %148

148:                                              ; preds = %146
  %indvars.iv.next266 = add nsw i64 %indvars.iv265, 1
  br label %131, !llvm.loop !33

149:                                              ; preds = %131
  %.lcssa6973.lcssa79.lcssa = phi i32 [ %.lcssa6973.lcssa79, %131 ]
  %.lcssa7177.lcssa = phi i32 [ %.lcssa7177, %131 ]
  %.lcssa75.wide = phi i64 [ %indvars.iv265, %131 ]
  %150 = trunc nsw i64 %.lcssa75.wide to i32
  store i32 %150, ptr %1, align 4
  store i32 %.lcssa7177.lcssa, ptr %2, align 4
  store i32 %.lcssa6973.lcssa79.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  store i32 0, ptr %1, align 4
  %.promoted86 = load i32, ptr %1, align 4
  %.promoted88 = load i32, ptr %2, align 4
  %.promoted90 = load i32, ptr %3, align 4
  %151 = sext i32 %.promoted86 to i64
  %smax282 = call i32 @llvm.smax.i32(i32 %.promoted86, i32 1)
  %wide.trip.count283 = sext i32 %smax282 to i64
  br label %152

152:                                              ; preds = %169, %149
  %indvars.iv279 = phi i64 [ %indvars.iv.next280, %169 ], [ %151, %149 ]
  %.lcssa8185.lcssa91 = phi i32 [ %.lcssa8185.lcssa, %169 ], [ %.promoted90, %149 ]
  %.lcssa8389 = phi i32 [ %168, %169 ], [ %.promoted88, %149 ]
  %exitcond284 = icmp ne i64 %indvars.iv279, %wide.trip.count283
  br i1 %exitcond284, label %153, label %170

153:                                              ; preds = %152
  br label %154

154:                                              ; preds = %166, %153
  %indvars.iv275 = phi i64 [ %indvars.iv.next276, %166 ], [ 0, %153 ]
  %.lcssa8185 = phi i32 [ %165, %166 ], [ %.lcssa8185.lcssa91, %153 ]
  %exitcond278 = icmp ne i64 %indvars.iv275, 2
  br i1 %exitcond278, label %155, label %167

155:                                              ; preds = %154
  br label %156

156:                                              ; preds = %163, %155
  %indvars.iv271 = phi i64 [ %indvars.iv.next272, %163 ], [ 0, %155 ]
  %exitcond274 = icmp ne i64 %indvars.iv271, 4
  br i1 %exitcond274, label %157, label %164

157:                                              ; preds = %156
  %158 = mul nuw nsw i64 8, %indvars.iv271
  %159 = add nuw nsw i64 %indvars.iv275, %158
  %160 = mul nuw nsw i64 8, %159
  %161 = add nsw i64 %indvars.iv279, %160
  %162 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 0, i64 %161
  store i32 1, ptr %162, align 4
  br label %163

163:                                              ; preds = %157
  %indvars.iv.next272 = add nuw nsw i64 %indvars.iv271, 1
  br label %156, !llvm.loop !34

164:                                              ; preds = %156
  %165 = trunc nuw nsw i64 4 to i32
  br label %166

166:                                              ; preds = %164
  %indvars.iv.next276 = add nuw nsw i64 %indvars.iv275, 1
  br label %154, !llvm.loop !35

167:                                              ; preds = %154
  %.lcssa8185.lcssa = phi i32 [ %.lcssa8185, %154 ]
  %168 = trunc nuw nsw i64 2 to i32
  br label %169

169:                                              ; preds = %167
  %indvars.iv.next280 = add nsw i64 %indvars.iv279, 1
  br label %152, !llvm.loop !36

170:                                              ; preds = %152
  %.lcssa8185.lcssa91.lcssa = phi i32 [ %.lcssa8185.lcssa91, %152 ]
  %.lcssa8389.lcssa = phi i32 [ %.lcssa8389, %152 ]
  %.lcssa87.wide = phi i64 [ %indvars.iv279, %152 ]
  %171 = trunc nsw i64 %.lcssa87.wide to i32
  store i32 %171, ptr %1, align 4
  store i32 %.lcssa8389.lcssa, ptr %2, align 4
  store i32 %.lcssa8185.lcssa91.lcssa, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  store i32 0, ptr %1, align 4
  %.promoted98 = load i32, ptr %1, align 4
  %.promoted100 = load i32, ptr %2, align 4
  %.promoted102 = load i32, ptr %3, align 4
  %172 = sext i32 %.promoted98 to i64
  %smax296 = call i32 @llvm.smax.i32(i32 %.promoted98, i32 3)
  %wide.trip.count297 = sext i32 %smax296 to i64
  br label %173

173:                                              ; preds = %190, %170
  %indvars.iv293 = phi i64 [ %indvars.iv.next294, %190 ], [ %172, %170 ]
  %.lcssa9397.lcssa103 = phi i32 [ %.lcssa9397.lcssa, %190 ], [ %.promoted102, %170 ]
  %.lcssa95101 = phi i32 [ %189, %190 ], [ %.promoted100, %170 ]
  %exitcond298 = icmp ne i64 %indvars.iv293, %wide.trip.count297
  br i1 %exitcond298, label %174, label %191

174:                                              ; preds = %173
  br label %175

175:                                              ; preds = %187, %174
  %indvars.iv289 = phi i64 [ %indvars.iv.next290, %187 ], [ 0, %174 ]
  %.lcssa9397 = phi i32 [ %186, %187 ], [ %.lcssa9397.lcssa103, %174 ]
  %exitcond292 = icmp ne i64 %indvars.iv289, 1
  br i1 %exitcond292, label %176, label %188

176:                                              ; preds = %175
  br label %177

177:                                              ; preds = %184, %176
  %indvars.iv285 = phi i64 [ %indvars.iv.next286, %184 ], [ 0, %176 ]
  %exitcond288 = icmp ne i64 %indvars.iv285, 1
  br i1 %exitcond288, label %178, label %185

178:                                              ; preds = %177
  %179 = mul nuw nsw i64 8, %indvars.iv285
  %180 = add nuw nsw i64 %indvars.iv289, %179
  %181 = mul nuw nsw i64 8, %180
  %182 = add nsw i64 %indvars.iv293, %181
  %183 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 0, i64 %182
  store i32 1, ptr %183, align 4
  br label %184

184:                                              ; preds = %178
  %indvars.iv.next286 = add nuw nsw i64 %indvars.iv285, 1
  br label %177, !llvm.loop !37

185:                                              ; preds = %177
  %186 = trunc nuw nsw i64 1 to i32
  br label %187

187:                                              ; preds = %185
  %indvars.iv.next290 = add nuw nsw i64 %indvars.iv289, 1
  br label %175, !llvm.loop !38

188:                                              ; preds = %175
  %.lcssa9397.lcssa = phi i32 [ %.lcssa9397, %175 ]
  %189 = trunc nuw nsw i64 1 to i32
  br label %190

190:                                              ; preds = %188
  %indvars.iv.next294 = add nsw i64 %indvars.iv293, 1
  br label %173, !llvm.loop !39

191:                                              ; preds = %173
  %.lcssa9397.lcssa103.lcssa = phi i32 [ %.lcssa9397.lcssa103, %173 ]
  %.lcssa95101.lcssa = phi i32 [ %.lcssa95101, %173 ]
  %.lcssa99.wide = phi i64 [ %indvars.iv293, %173 ]
  %192 = trunc nsw i64 %.lcssa99.wide to i32
  store i32 %192, ptr %1, align 4
  store i32 %.lcssa95101.lcssa, ptr %2, align 4
  store i32 %.lcssa9397.lcssa103.lcssa, ptr %3, align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  store i32 0, ptr %1, align 4
  %.promoted110 = load i32, ptr %1, align 4
  %.promoted112 = load i32, ptr %2, align 4
  %.promoted114 = load i32, ptr %3, align 4
  %193 = sext i32 %.promoted110 to i64
  %smax310 = call i32 @llvm.smax.i32(i32 %.promoted110, i32 1)
  %wide.trip.count311 = sext i32 %smax310 to i64
  br label %194

194:                                              ; preds = %211, %191
  %indvars.iv307 = phi i64 [ %indvars.iv.next308, %211 ], [ %193, %191 ]
  %.lcssa105109.lcssa115 = phi i32 [ %.lcssa105109.lcssa, %211 ], [ %.promoted114, %191 ]
  %.lcssa107113 = phi i32 [ %210, %211 ], [ %.promoted112, %191 ]
  %exitcond312 = icmp ne i64 %indvars.iv307, %wide.trip.count311
  br i1 %exitcond312, label %195, label %212

195:                                              ; preds = %194
  br label %196

196:                                              ; preds = %208, %195
  %indvars.iv303 = phi i64 [ %indvars.iv.next304, %208 ], [ 0, %195 ]
  %.lcssa105109 = phi i32 [ %207, %208 ], [ %.lcssa105109.lcssa115, %195 ]
  %exitcond306 = icmp ne i64 %indvars.iv303, 3
  br i1 %exitcond306, label %197, label %209

197:                                              ; preds = %196
  br label %198

198:                                              ; preds = %205, %197
  %indvars.iv299 = phi i64 [ %indvars.iv.next300, %205 ], [ 0, %197 ]
  %exitcond302 = icmp ne i64 %indvars.iv299, 1
  br i1 %exitcond302, label %199, label %206

199:                                              ; preds = %198
  %200 = mul nuw nsw i64 8, %indvars.iv299
  %201 = add nuw nsw i64 %indvars.iv303, %200
  %202 = mul nuw nsw i64 8, %201
  %203 = add nsw i64 %indvars.iv307, %202
  %204 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 0, i64 %203
  store i32 1, ptr %204, align 4
  br label %205

205:                                              ; preds = %199
  %indvars.iv.next300 = add nuw nsw i64 %indvars.iv299, 1
  br label %198, !llvm.loop !40

206:                                              ; preds = %198
  %207 = trunc nuw nsw i64 1 to i32
  br label %208

208:                                              ; preds = %206
  %indvars.iv.next304 = add nuw nsw i64 %indvars.iv303, 1
  br label %196, !llvm.loop !41

209:                                              ; preds = %196
  %.lcssa105109.lcssa = phi i32 [ %.lcssa105109, %196 ]
  %210 = trunc nuw nsw i64 3 to i32
  br label %211

211:                                              ; preds = %209
  %indvars.iv.next308 = add nsw i64 %indvars.iv307, 1
  br label %194, !llvm.loop !42

212:                                              ; preds = %194
  %.lcssa105109.lcssa115.lcssa = phi i32 [ %.lcssa105109.lcssa115, %194 ]
  %.lcssa107113.lcssa = phi i32 [ %.lcssa107113, %194 ]
  %.lcssa111.wide = phi i64 [ %indvars.iv307, %194 ]
  %213 = trunc nsw i64 %.lcssa111.wide to i32
  store i32 %213, ptr %1, align 4
  store i32 %.lcssa107113.lcssa, ptr %2, align 4
  store i32 %.lcssa105109.lcssa115.lcssa, ptr %3, align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  store i32 0, ptr %1, align 4
  %.promoted122 = load i32, ptr %1, align 4
  %.promoted124 = load i32, ptr %2, align 4
  %.promoted126 = load i32, ptr %3, align 4
  %214 = sext i32 %.promoted122 to i64
  %smax324 = call i32 @llvm.smax.i32(i32 %.promoted122, i32 1)
  %wide.trip.count325 = sext i32 %smax324 to i64
  br label %215

215:                                              ; preds = %232, %212
  %indvars.iv321 = phi i64 [ %indvars.iv.next322, %232 ], [ %214, %212 ]
  %.lcssa117121.lcssa127 = phi i32 [ %.lcssa117121.lcssa, %232 ], [ %.promoted126, %212 ]
  %.lcssa119125 = phi i32 [ %231, %232 ], [ %.promoted124, %212 ]
  %exitcond326 = icmp ne i64 %indvars.iv321, %wide.trip.count325
  br i1 %exitcond326, label %216, label %233

216:                                              ; preds = %215
  br label %217

217:                                              ; preds = %229, %216
  %indvars.iv317 = phi i64 [ %indvars.iv.next318, %229 ], [ 0, %216 ]
  %.lcssa117121 = phi i32 [ %228, %229 ], [ %.lcssa117121.lcssa127, %216 ]
  %exitcond320 = icmp ne i64 %indvars.iv317, 1
  br i1 %exitcond320, label %218, label %230

218:                                              ; preds = %217
  br label %219

219:                                              ; preds = %226, %218
  %indvars.iv313 = phi i64 [ %indvars.iv.next314, %226 ], [ 0, %218 ]
  %exitcond316 = icmp ne i64 %indvars.iv313, 3
  br i1 %exitcond316, label %220, label %227

220:                                              ; preds = %219
  %221 = mul nuw nsw i64 8, %indvars.iv313
  %222 = add nuw nsw i64 %indvars.iv317, %221
  %223 = mul nuw nsw i64 8, %222
  %224 = add nsw i64 %indvars.iv321, %223
  %225 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 0, i64 %224
  store i32 1, ptr %225, align 4
  br label %226

226:                                              ; preds = %220
  %indvars.iv.next314 = add nuw nsw i64 %indvars.iv313, 1
  br label %219, !llvm.loop !43

227:                                              ; preds = %219
  %228 = trunc nuw nsw i64 3 to i32
  br label %229

229:                                              ; preds = %227
  %indvars.iv.next318 = add nuw nsw i64 %indvars.iv317, 1
  br label %217, !llvm.loop !44

230:                                              ; preds = %217
  %.lcssa117121.lcssa = phi i32 [ %.lcssa117121, %217 ]
  %231 = trunc nuw nsw i64 1 to i32
  br label %232

232:                                              ; preds = %230
  %indvars.iv.next322 = add nsw i64 %indvars.iv321, 1
  br label %215, !llvm.loop !45

233:                                              ; preds = %215
  %.lcssa117121.lcssa127.lcssa = phi i32 [ %.lcssa117121.lcssa127, %215 ]
  %.lcssa119125.lcssa = phi i32 [ %.lcssa119125, %215 ]
  %.lcssa123.wide = phi i64 [ %indvars.iv321, %215 ]
  %234 = trunc nsw i64 %.lcssa123.wide to i32
  store i32 %234, ptr %1, align 4
  store i32 %.lcssa119125.lcssa, ptr %2, align 4
  store i32 %.lcssa117121.lcssa127.lcssa, ptr %3, align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  store i32 0, ptr %1, align 4
  %.promoted134 = load i32, ptr %1, align 4
  %.promoted136 = load i32, ptr %2, align 4
  %.promoted138 = load i32, ptr %3, align 4
  %235 = sext i32 %.promoted134 to i64
  %smax338 = call i32 @llvm.smax.i32(i32 %.promoted134, i32 2)
  %wide.trip.count339 = sext i32 %smax338 to i64
  br label %236

236:                                              ; preds = %253, %233
  %indvars.iv335 = phi i64 [ %indvars.iv.next336, %253 ], [ %235, %233 ]
  %.lcssa129133.lcssa139 = phi i32 [ %.lcssa129133.lcssa, %253 ], [ %.promoted138, %233 ]
  %.lcssa131137 = phi i32 [ %252, %253 ], [ %.promoted136, %233 ]
  %exitcond340 = icmp ne i64 %indvars.iv335, %wide.trip.count339
  br i1 %exitcond340, label %237, label %254

237:                                              ; preds = %236
  br label %238

238:                                              ; preds = %250, %237
  %indvars.iv331 = phi i64 [ %indvars.iv.next332, %250 ], [ 0, %237 ]
  %.lcssa129133 = phi i32 [ %249, %250 ], [ %.lcssa129133.lcssa139, %237 ]
  %exitcond334 = icmp ne i64 %indvars.iv331, 2
  br i1 %exitcond334, label %239, label %251

239:                                              ; preds = %238
  br label %240

240:                                              ; preds = %247, %239
  %indvars.iv327 = phi i64 [ %indvars.iv.next328, %247 ], [ 0, %239 ]
  %exitcond330 = icmp ne i64 %indvars.iv327, 1
  br i1 %exitcond330, label %241, label %248

241:                                              ; preds = %240
  %242 = mul nuw nsw i64 8, %indvars.iv327
  %243 = add nuw nsw i64 %indvars.iv331, %242
  %244 = mul nuw nsw i64 8, %243
  %245 = add nsw i64 %indvars.iv335, %244
  %246 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 0, i64 %245
  store i32 1, ptr %246, align 4
  br label %247

247:                                              ; preds = %241
  %indvars.iv.next328 = add nuw nsw i64 %indvars.iv327, 1
  br label %240, !llvm.loop !46

248:                                              ; preds = %240
  %249 = trunc nuw nsw i64 1 to i32
  br label %250

250:                                              ; preds = %248
  %indvars.iv.next332 = add nuw nsw i64 %indvars.iv331, 1
  br label %238, !llvm.loop !47

251:                                              ; preds = %238
  %.lcssa129133.lcssa = phi i32 [ %.lcssa129133, %238 ]
  %252 = trunc nuw nsw i64 2 to i32
  br label %253

253:                                              ; preds = %251
  %indvars.iv.next336 = add nsw i64 %indvars.iv335, 1
  br label %236, !llvm.loop !48

254:                                              ; preds = %236
  %.lcssa129133.lcssa139.lcssa = phi i32 [ %.lcssa129133.lcssa139, %236 ]
  %.lcssa131137.lcssa = phi i32 [ %.lcssa131137, %236 ]
  %.lcssa135.wide = phi i64 [ %indvars.iv335, %236 ]
  %255 = trunc nsw i64 %.lcssa135.wide to i32
  store i32 %255, ptr %1, align 4
  store i32 %.lcssa131137.lcssa, ptr %2, align 4
  store i32 %.lcssa129133.lcssa139.lcssa, ptr %3, align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  store i32 0, ptr %1, align 4
  %.promoted146 = load i32, ptr %1, align 4
  %.promoted148 = load i32, ptr %2, align 4
  %.promoted150 = load i32, ptr %3, align 4
  %256 = sext i32 %.promoted146 to i64
  %smax352 = call i32 @llvm.smax.i32(i32 %.promoted146, i32 2)
  %wide.trip.count353 = sext i32 %smax352 to i64
  br label %257

257:                                              ; preds = %274, %254
  %indvars.iv349 = phi i64 [ %indvars.iv.next350, %274 ], [ %256, %254 ]
  %.lcssa141145.lcssa151 = phi i32 [ %.lcssa141145.lcssa, %274 ], [ %.promoted150, %254 ]
  %.lcssa143149 = phi i32 [ %273, %274 ], [ %.promoted148, %254 ]
  %exitcond354 = icmp ne i64 %indvars.iv349, %wide.trip.count353
  br i1 %exitcond354, label %258, label %275

258:                                              ; preds = %257
  br label %259

259:                                              ; preds = %271, %258
  %indvars.iv345 = phi i64 [ %indvars.iv.next346, %271 ], [ 0, %258 ]
  %.lcssa141145 = phi i32 [ %270, %271 ], [ %.lcssa141145.lcssa151, %258 ]
  %exitcond348 = icmp ne i64 %indvars.iv345, 1
  br i1 %exitcond348, label %260, label %272

260:                                              ; preds = %259
  br label %261

261:                                              ; preds = %268, %260
  %indvars.iv341 = phi i64 [ %indvars.iv.next342, %268 ], [ 0, %260 ]
  %exitcond344 = icmp ne i64 %indvars.iv341, 2
  br i1 %exitcond344, label %262, label %269

262:                                              ; preds = %261
  %263 = mul nuw nsw i64 8, %indvars.iv341
  %264 = add nuw nsw i64 %indvars.iv345, %263
  %265 = mul nuw nsw i64 8, %264
  %266 = add nsw i64 %indvars.iv349, %265
  %267 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 0, i64 %266
  store i32 1, ptr %267, align 4
  br label %268

268:                                              ; preds = %262
  %indvars.iv.next342 = add nuw nsw i64 %indvars.iv341, 1
  br label %261, !llvm.loop !49

269:                                              ; preds = %261
  %270 = trunc nuw nsw i64 2 to i32
  br label %271

271:                                              ; preds = %269
  %indvars.iv.next346 = add nuw nsw i64 %indvars.iv345, 1
  br label %259, !llvm.loop !50

272:                                              ; preds = %259
  %.lcssa141145.lcssa = phi i32 [ %.lcssa141145, %259 ]
  %273 = trunc nuw nsw i64 1 to i32
  br label %274

274:                                              ; preds = %272
  %indvars.iv.next350 = add nsw i64 %indvars.iv349, 1
  br label %257, !llvm.loop !51

275:                                              ; preds = %257
  %.lcssa141145.lcssa151.lcssa = phi i32 [ %.lcssa141145.lcssa151, %257 ]
  %.lcssa143149.lcssa = phi i32 [ %.lcssa143149, %257 ]
  %.lcssa147.wide = phi i64 [ %indvars.iv349, %257 ]
  %276 = trunc nsw i64 %.lcssa147.wide to i32
  store i32 %276, ptr %1, align 4
  store i32 %.lcssa143149.lcssa, ptr %2, align 4
  store i32 %.lcssa141145.lcssa151.lcssa, ptr %3, align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  store i32 0, ptr %1, align 4
  %.promoted158 = load i32, ptr %1, align 4
  %.promoted160 = load i32, ptr %2, align 4
  %.promoted162 = load i32, ptr %3, align 4
  %277 = sext i32 %.promoted158 to i64
  %smax366 = call i32 @llvm.smax.i32(i32 %.promoted158, i32 1)
  %wide.trip.count367 = sext i32 %smax366 to i64
  br label %278

278:                                              ; preds = %295, %275
  %indvars.iv363 = phi i64 [ %indvars.iv.next364, %295 ], [ %277, %275 ]
  %.lcssa153157.lcssa163 = phi i32 [ %.lcssa153157.lcssa, %295 ], [ %.promoted162, %275 ]
  %.lcssa155161 = phi i32 [ %294, %295 ], [ %.promoted160, %275 ]
  %exitcond368 = icmp ne i64 %indvars.iv363, %wide.trip.count367
  br i1 %exitcond368, label %279, label %296

279:                                              ; preds = %278
  br label %280

280:                                              ; preds = %292, %279
  %indvars.iv359 = phi i64 [ %indvars.iv.next360, %292 ], [ 0, %279 ]
  %.lcssa153157 = phi i32 [ %291, %292 ], [ %.lcssa153157.lcssa163, %279 ]
  %exitcond362 = icmp ne i64 %indvars.iv359, 2
  br i1 %exitcond362, label %281, label %293

281:                                              ; preds = %280
  br label %282

282:                                              ; preds = %289, %281
  %indvars.iv355 = phi i64 [ %indvars.iv.next356, %289 ], [ 0, %281 ]
  %exitcond358 = icmp ne i64 %indvars.iv355, 2
  br i1 %exitcond358, label %283, label %290

283:                                              ; preds = %282
  %284 = mul nuw nsw i64 8, %indvars.iv355
  %285 = add nuw nsw i64 %indvars.iv359, %284
  %286 = mul nuw nsw i64 8, %285
  %287 = add nsw i64 %indvars.iv363, %286
  %288 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 0, i64 %287
  store i32 1, ptr %288, align 4
  br label %289

289:                                              ; preds = %283
  %indvars.iv.next356 = add nuw nsw i64 %indvars.iv355, 1
  br label %282, !llvm.loop !52

290:                                              ; preds = %282
  %291 = trunc nuw nsw i64 2 to i32
  br label %292

292:                                              ; preds = %290
  %indvars.iv.next360 = add nuw nsw i64 %indvars.iv359, 1
  br label %280, !llvm.loop !53

293:                                              ; preds = %280
  %.lcssa153157.lcssa = phi i32 [ %.lcssa153157, %280 ]
  %294 = trunc nuw nsw i64 2 to i32
  br label %295

295:                                              ; preds = %293
  %indvars.iv.next364 = add nsw i64 %indvars.iv363, 1
  br label %278, !llvm.loop !54

296:                                              ; preds = %278
  %.lcssa153157.lcssa163.lcssa = phi i32 [ %.lcssa153157.lcssa163, %278 ]
  %.lcssa155161.lcssa = phi i32 [ %.lcssa155161, %278 ]
  %.lcssa159.wide = phi i64 [ %indvars.iv363, %278 ]
  %297 = trunc nsw i64 %.lcssa159.wide to i32
  store i32 %297, ptr %1, align 4
  store i32 %.lcssa155161.lcssa, ptr %2, align 4
  store i32 %.lcssa153157.lcssa163.lcssa, ptr %3, align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  store i32 0, ptr %1, align 4
  %.promoted170 = load i32, ptr %1, align 4
  %.promoted172 = load i32, ptr %2, align 4
  %.promoted174 = load i32, ptr %3, align 4
  %298 = sext i32 %.promoted170 to i64
  %smax380 = call i32 @llvm.smax.i32(i32 %.promoted170, i32 2)
  %wide.trip.count381 = sext i32 %smax380 to i64
  br label %299

299:                                              ; preds = %316, %296
  %indvars.iv377 = phi i64 [ %indvars.iv.next378, %316 ], [ %298, %296 ]
  %.lcssa165169.lcssa175 = phi i32 [ %.lcssa165169.lcssa, %316 ], [ %.promoted174, %296 ]
  %.lcssa167173 = phi i32 [ %315, %316 ], [ %.promoted172, %296 ]
  %exitcond382 = icmp ne i64 %indvars.iv377, %wide.trip.count381
  br i1 %exitcond382, label %300, label %317

300:                                              ; preds = %299
  br label %301

301:                                              ; preds = %313, %300
  %indvars.iv373 = phi i64 [ %indvars.iv.next374, %313 ], [ 0, %300 ]
  %.lcssa165169 = phi i32 [ %312, %313 ], [ %.lcssa165169.lcssa175, %300 ]
  %exitcond376 = icmp ne i64 %indvars.iv373, 2
  br i1 %exitcond376, label %302, label %314

302:                                              ; preds = %301
  br label %303

303:                                              ; preds = %310, %302
  %indvars.iv369 = phi i64 [ %indvars.iv.next370, %310 ], [ 0, %302 ]
  %exitcond372 = icmp ne i64 %indvars.iv369, 2
  br i1 %exitcond372, label %304, label %311

304:                                              ; preds = %303
  %305 = mul nuw nsw i64 8, %indvars.iv369
  %306 = add nuw nsw i64 %indvars.iv373, %305
  %307 = mul nuw nsw i64 8, %306
  %308 = add nsw i64 %indvars.iv377, %307
  %309 = getelementptr inbounds [512 x i32], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 0, i64 %308
  store i32 1, ptr %309, align 4
  br label %310

310:                                              ; preds = %304
  %indvars.iv.next370 = add nuw nsw i64 %indvars.iv369, 1
  br label %303, !llvm.loop !55

311:                                              ; preds = %303
  %312 = trunc nuw nsw i64 2 to i32
  br label %313

313:                                              ; preds = %311
  %indvars.iv.next374 = add nuw nsw i64 %indvars.iv373, 1
  br label %301, !llvm.loop !56

314:                                              ; preds = %301
  %.lcssa165169.lcssa = phi i32 [ %.lcssa165169, %301 ]
  %315 = trunc nuw nsw i64 2 to i32
  br label %316

316:                                              ; preds = %314
  %indvars.iv.next378 = add nsw i64 %indvars.iv377, 1
  br label %299, !llvm.loop !57

317:                                              ; preds = %299
  %.lcssa165169.lcssa175.lcssa = phi i32 [ %.lcssa165169.lcssa175, %299 ]
  %.lcssa167173.lcssa = phi i32 [ %.lcssa167173, %299 ]
  %.lcssa171.wide = phi i64 [ %indvars.iv377, %299 ]
  %318 = trunc nsw i64 %.lcssa171.wide to i32
  store i32 %318, ptr %1, align 4
  store i32 %.lcssa167173.lcssa, ptr %2, align 4
  store i32 %.lcssa165169.lcssa175.lcssa, ptr %3, align 4
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 73, ptr %4, align 4
  store i32 0, ptr @kount, align 4
  %319 = load i32, ptr %4, align 4
  %320 = call i32 @Fit(i32 noundef 0, i32 noundef %319)
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %325

322:                                              ; preds = %317
  %323 = load i32, ptr %4, align 4
  %324 = call i32 @Place(i32 noundef 0, i32 noundef %323)
  store i32 %324, ptr @n, align 4
  br label %327

325:                                              ; preds = %317
  %326 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  br label %327

327:                                              ; preds = %325, %322
  %328 = load i32, ptr @n, align 4
  %329 = call i32 @Trial(i32 noundef %328)
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %333, label %331

331:                                              ; preds = %327
  %332 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  br label %339

333:                                              ; preds = %327
  %334 = load i32, ptr @kount, align 4
  %335 = icmp ne i32 %334, 2005
  br i1 %335, label %336, label %338

336:                                              ; preds = %333
  %337 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %338

338:                                              ; preds = %336, %333
  br label %339

339:                                              ; preds = %338, %331
  %340 = load i32, ptr @n, align 4
  %341 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %340)
  %342 = load i32, ptr @kount, align 4
  %343 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %342)
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  store i32 0, ptr %2, align 4
  %.promoted = load i32, ptr %2, align 4
  %smax = call i32 @llvm.smax.i32(i32 %.promoted, i32 100)
  br label %3

3:                                                ; preds = %6, %0
  %4 = phi i32 [ %7, %6 ], [ %.promoted, %0 ]
  %exitcond = icmp ne i32 %4, %smax
  br i1 %exitcond, label %5, label %8

5:                                                ; preds = %3
  call void @Puzzle()
  br label %6

6:                                                ; preds = %5
  %7 = add i32 %4, 1
  br label %3, !llvm.loop !58

8:                                                ; preds = %3
  store i32 %smax, ptr %2, align 4
  ret i32 0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

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
