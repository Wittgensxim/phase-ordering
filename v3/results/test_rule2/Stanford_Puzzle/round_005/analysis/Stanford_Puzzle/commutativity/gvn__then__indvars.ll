; ModuleID = 'results\test_rule2\Stanford_Puzzle\round_004\output.ll'
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
  %.phi.trans.insert = sext i32 %0 to i64
  %.phi.trans.insert1 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert1, align 4
  %6 = sext i32 %1 to i64
  %smax = call i32 @llvm.smax.i32(i32 %.pre, i32 -1)
  %7 = add i32 %smax, 1
  %wide.trip.count = zext i32 %7 to i64
  br label %8

8:                                                ; preds = %18, %2
  %indvars.iv = phi i64 [ %indvars.iv.next, %18 ], [ 0, %2 ]
  %9 = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %9, ptr %5, align 4
  %exitcond = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %19, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  %12 = getelementptr inbounds [4 x i8], ptr %11, i64 %indvars.iv
  %13 = load i32, ptr %12, align 4
  %.not2 = icmp eq i32 %13, 0
  br i1 %.not2, label %18, label %14

14:                                               ; preds = %10
  %15 = add nsw i64 %6, %indvars.iv
  %16 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %15
  %17 = load i32, ptr %16, align 4
  %.not3 = icmp eq i32 %17, 0
  br i1 %.not3, label %18, label %19

18:                                               ; preds = %14, %10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %8, !llvm.loop !7

19:                                               ; preds = %14, %8
  %storemerge1 = phi i32 [ 0, %14 ], [ 1, %8 ]
  ret i32 %storemerge1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Place(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  %.phi.trans.insert = sext i32 %0 to i64
  %.phi.trans.insert1 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert1, align 4
  %6 = sext i32 %1 to i64
  %smax6 = call i32 @llvm.smax.i32(i32 %.pre, i32 -1)
  %7 = add i32 %smax6, 1
  %wide.trip.count7 = zext i32 %7 to i64
  br label %8

8:                                                ; preds = %17, %2
  %indvars.iv3 = phi i64 [ %indvars.iv.next4, %17 ], [ 0, %2 ]
  %9 = trunc nuw nsw i64 %indvars.iv3 to i32
  store i32 %9, ptr %5, align 4
  %exitcond = icmp eq i64 %indvars.iv3, %wide.trip.count7
  br i1 %exitcond, label %18, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  %12 = getelementptr inbounds [4 x i8], ptr %11, i64 %indvars.iv3
  %13 = load i32, ptr %12, align 4
  %.not4 = icmp eq i32 %13, 0
  br i1 %.not4, label %17, label %14

14:                                               ; preds = %10
  %15 = add nsw i64 %6, %indvars.iv3
  %16 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %15
  store i32 1, ptr %16, align 4
  br label %17

17:                                               ; preds = %14, %10
  %indvars.iv.next4 = add nuw nsw i64 %indvars.iv3, 1
  br label %8, !llvm.loop !9

18:                                               ; preds = %8
  %19 = getelementptr inbounds [4 x i8], ptr @class, i64 %.phi.trans.insert
  %20 = load i32, ptr %19, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %21
  %23 = load i32, ptr %22, align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, ptr %22, align 4
  %25 = sext i32 %1 to i64
  %smax = call i32 @llvm.smax.i32(i32 %1, i32 512)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %26

26:                                               ; preds = %32, %18
  %indvars.iv = phi i64 [ %indvars.iv.next, %32 ], [ %25, %18 ]
  %27 = trunc nsw i64 %indvars.iv to i32
  store i32 %27, ptr %5, align 4
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %28

28:                                               ; preds = %26
  %29 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %indvars.iv
  %30 = load i32, ptr %29, align 4
  %.not3 = icmp eq i32 %30, 0
  br i1 %.not3, label %31, label %32

31:                                               ; preds = %28
  %.lcssa2 = phi i32 [ %27, %28 ]
  br label %33

32:                                               ; preds = %28
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %26, !llvm.loop !10

.loopexit:                                        ; preds = %26
  br label %33

33:                                               ; preds = %.loopexit, %31
  %storemerge2 = phi i32 [ %.lcssa2, %31 ], [ 0, %.loopexit ]
  ret i32 %storemerge2
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Remove(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  %.phi.trans.insert = sext i32 %0 to i64
  %.phi.trans.insert1 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert1, align 4
  %6 = sext i32 %1 to i64
  %smax = call i32 @llvm.smax.i32(i32 %.pre, i32 -1)
  %7 = add i32 %smax, 1
  %wide.trip.count = zext i32 %7 to i64
  br label %8

8:                                                ; preds = %17, %2
  %indvars.iv = phi i64 [ %indvars.iv.next, %17 ], [ 0, %2 ]
  %9 = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %9, ptr %5, align 4
  %exitcond = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %18, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  %12 = getelementptr inbounds [4 x i8], ptr %11, i64 %indvars.iv
  %13 = load i32, ptr %12, align 4
  %.not1 = icmp eq i32 %13, 0
  br i1 %.not1, label %17, label %14

14:                                               ; preds = %10
  %15 = add nsw i64 %6, %indvars.iv
  %16 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %15
  store i32 0, ptr %16, align 4
  br label %17

17:                                               ; preds = %14, %10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %8, !llvm.loop !11

18:                                               ; preds = %8
  %19 = getelementptr inbounds [4 x i8], ptr @class, i64 %.phi.trans.insert
  %20 = load i32, ptr %19, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %21
  %23 = load i32, ptr %22, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, ptr %22, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Trial(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %4 = load i32, ptr @kount, align 4
  %5 = add nsw i32 %4, 1
  store i32 %5, ptr @kount, align 4
  br label %6

6:                                                ; preds = %25, %1
  %indvars.iv = phi i64 [ %indvars.iv.next, %25 ], [ 0, %1 ]
  %7 = phi i32 [ %0, %1 ], [ %26, %25 ]
  %8 = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %8, ptr %3, align 4
  %exitcond = icmp ne i64 %indvars.iv, 13
  br i1 %exitcond, label %9, label %27

9:                                                ; preds = %6
  %10 = getelementptr inbounds [4 x i8], ptr @class, i64 %indvars.iv
  %11 = load i32, ptr %10, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %12
  %14 = load i32, ptr %13, align 4
  %.not = icmp eq i32 %14, 0
  br i1 %.not, label %25, label %15

15:                                               ; preds = %9
  %16 = trunc nuw nsw i64 %indvars.iv to i32
  %17 = call i32 @Fit(i32 noundef %16, i32 noundef %7)
  %.not2 = icmp eq i32 %17, 0
  br i1 %.not2, label %25, label %18

18:                                               ; preds = %15
  %19 = trunc nuw nsw i64 %indvars.iv to i32
  %20 = call i32 @Place(i32 noundef %19, i32 noundef %7)
  %21 = call i32 @Trial(i32 noundef %20)
  %.not3 = icmp ne i32 %21, 0
  %22 = icmp eq i32 %20, 0
  %or.cond = or i1 %.not3, %22
  br i1 %or.cond, label %27, label %23

23:                                               ; preds = %18
  %24 = trunc nuw nsw i64 %indvars.iv to i32
  call void @Remove(i32 noundef %24, i32 noundef %0)
  br label %25

25:                                               ; preds = %23, %15, %9
  %26 = phi i32 [ %0, %23 ], [ %7, %15 ], [ %7, %9 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %6, !llvm.loop !12

27:                                               ; preds = %18, %6
  %storemerge1 = phi i32 [ 1, %18 ], [ 0, %6 ]
  ret i32 %storemerge1
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Puzzle() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  br label %5

5:                                                ; preds = %7, %0
  %indvars.iv = phi i64 [ %indvars.iv.next, %7 ], [ 0, %0 ]
  %6 = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %6, ptr %4, align 4
  %exitcond = icmp ne i64 %indvars.iv, 512
  br i1 %exitcond, label %7, label %.preheader31

.preheader31:                                     ; preds = %5
  br label %9

7:                                                ; preds = %5
  %8 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %indvars.iv
  store i32 1, ptr %8, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %5, !llvm.loop !13

9:                                                ; preds = %22, %.preheader31
  %indvars.iv39 = phi i64 [ %indvars.iv.next40, %22 ], [ 1, %.preheader31 ]
  %10 = trunc nuw nsw i64 %indvars.iv39 to i32
  store i32 %10, ptr %1, align 4
  %exitcond44 = icmp ne i64 %indvars.iv39, 6
  br i1 %exitcond44, label %.preheader30, label %.preheader28

.preheader30:                                     ; preds = %9
  br label %11

.preheader28:                                     ; preds = %9
  br label %23

11:                                               ; preds = %21, %.preheader30
  %indvars.iv33 = phi i64 [ %indvars.iv.next34, %21 ], [ 1, %.preheader30 ]
  %12 = trunc nuw nsw i64 %indvars.iv33 to i32
  store i32 %12, ptr %2, align 4
  %exitcond38 = icmp ne i64 %indvars.iv33, 6
  br i1 %exitcond38, label %.preheader29, label %22

.preheader29:                                     ; preds = %11
  br label %13

13:                                               ; preds = %15, %.preheader29
  %indvars.iv29 = phi i64 [ %indvars.iv.next30, %15 ], [ 1, %.preheader29 ]
  %14 = trunc nuw nsw i64 %indvars.iv29 to i32
  store i32 %14, ptr %3, align 4
  %exitcond32 = icmp ne i64 %indvars.iv29, 6
  br i1 %exitcond32, label %15, label %21

15:                                               ; preds = %13
  %16 = shl i64 %indvars.iv29, 6
  %17 = shl i64 %indvars.iv33, 3
  %18 = add nuw nsw i64 %16, %17
  %19 = add nuw nsw i64 %indvars.iv39, %18
  %20 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %19
  store i32 0, ptr %20, align 4
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1
  br label %13, !llvm.loop !14

21:                                               ; preds = %13
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1
  br label %11, !llvm.loop !15

22:                                               ; preds = %11
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1
  br label %9, !llvm.loop !16

23:                                               ; preds = %30, %.preheader28
  %indvars.iv49 = phi i64 [ %indvars.iv.next50, %30 ], [ 0, %.preheader28 ]
  %24 = trunc nuw nsw i64 %indvars.iv49 to i32
  store i32 %24, ptr %1, align 4
  %exitcond52 = icmp ne i64 %indvars.iv49, 13
  br i1 %exitcond52, label %.preheader27, label %.preheader26

.preheader27:                                     ; preds = %23
  br label %25

.preheader26:                                     ; preds = %23
  br label %31

25:                                               ; preds = %27, %.preheader27
  %indvars.iv45 = phi i64 [ %indvars.iv.next46, %27 ], [ 0, %.preheader27 ]
  %26 = trunc nuw nsw i64 %indvars.iv45 to i32
  store i32 %26, ptr %4, align 4
  %exitcond48 = icmp ne i64 %indvars.iv45, 512
  br i1 %exitcond48, label %27, label %30

27:                                               ; preds = %25
  %28 = getelementptr inbounds [2048 x i8], ptr @p, i64 %indvars.iv49
  %29 = getelementptr inbounds [4 x i8], ptr %28, i64 %indvars.iv45
  store i32 0, ptr %29, align 4
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1
  br label %25, !llvm.loop !17

30:                                               ; preds = %25
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1
  br label %23, !llvm.loop !18

31:                                               ; preds = %44, %.preheader26
  %indvars.iv63 = phi i64 [ %indvars.iv.next64, %44 ], [ 0, %.preheader26 ]
  %32 = trunc nuw nsw i64 %indvars.iv63 to i32
  store i32 %32, ptr %1, align 4
  %exitcond68 = icmp ne i64 %indvars.iv63, 4
  br i1 %exitcond68, label %.preheader25, label %45

.preheader25:                                     ; preds = %31
  br label %33

33:                                               ; preds = %43, %.preheader25
  %indvars.iv57 = phi i64 [ %indvars.iv.next58, %43 ], [ 0, %.preheader25 ]
  %34 = trunc nuw nsw i64 %indvars.iv57 to i32
  store i32 %34, ptr %2, align 4
  %exitcond62 = icmp ne i64 %indvars.iv57, 2
  br i1 %exitcond62, label %.preheader24, label %44

.preheader24:                                     ; preds = %33
  br label %35

35:                                               ; preds = %37, %.preheader24
  %indvars.iv53 = phi i64 [ %indvars.iv.next54, %37 ], [ 0, %.preheader24 ]
  %36 = trunc nuw nsw i64 %indvars.iv53 to i32
  store i32 %36, ptr %3, align 4
  %exitcond56 = icmp ne i64 %indvars.iv53, 1
  br i1 %exitcond56, label %37, label %43

37:                                               ; preds = %35
  %38 = shl i64 %indvars.iv53, 6
  %39 = shl i64 %indvars.iv57, 3
  %40 = add nuw nsw i64 %38, %39
  %41 = add nuw nsw i64 %indvars.iv63, %40
  %42 = getelementptr inbounds [4 x i8], ptr @p, i64 %41
  store i32 1, ptr %42, align 4
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1
  br label %35, !llvm.loop !19

43:                                               ; preds = %35
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1
  br label %33, !llvm.loop !20

44:                                               ; preds = %33
  %indvars.iv.next64 = add nuw nsw i64 %indvars.iv63, 1
  br label %31, !llvm.loop !21

45:                                               ; preds = %31
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %46

46:                                               ; preds = %59, %45
  %indvars.iv79 = phi i64 [ %indvars.iv.next80, %59 ], [ 0, %45 ]
  %47 = trunc nuw nsw i64 %indvars.iv79 to i32
  store i32 %47, ptr %1, align 4
  %exitcond84 = icmp ne i64 %indvars.iv79, 2
  br i1 %exitcond84, label %.preheader23, label %60

.preheader23:                                     ; preds = %46
  br label %48

48:                                               ; preds = %58, %.preheader23
  %indvars.iv73 = phi i64 [ %indvars.iv.next74, %58 ], [ 0, %.preheader23 ]
  %49 = trunc nuw nsw i64 %indvars.iv73 to i32
  store i32 %49, ptr %2, align 4
  %exitcond78 = icmp ne i64 %indvars.iv73, 1
  br i1 %exitcond78, label %.preheader22, label %59

.preheader22:                                     ; preds = %48
  br label %50

50:                                               ; preds = %52, %.preheader22
  %indvars.iv69 = phi i64 [ %indvars.iv.next70, %52 ], [ 0, %.preheader22 ]
  %51 = trunc nuw nsw i64 %indvars.iv69 to i32
  store i32 %51, ptr %3, align 4
  %exitcond72 = icmp ne i64 %indvars.iv69, 4
  br i1 %exitcond72, label %52, label %58

52:                                               ; preds = %50
  %53 = shl i64 %indvars.iv69, 6
  %54 = shl i64 %indvars.iv73, 3
  %55 = add nuw nsw i64 %53, %54
  %56 = add nuw nsw i64 %indvars.iv79, %55
  %57 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %56
  store i32 1, ptr %57, align 4
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1
  br label %50, !llvm.loop !22

58:                                               ; preds = %50
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1
  br label %48, !llvm.loop !23

59:                                               ; preds = %48
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1
  br label %46, !llvm.loop !24

60:                                               ; preds = %46
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %61

61:                                               ; preds = %74, %60
  %indvars.iv95 = phi i64 [ %indvars.iv.next96, %74 ], [ 0, %60 ]
  %62 = trunc nuw nsw i64 %indvars.iv95 to i32
  store i32 %62, ptr %1, align 4
  %exitcond100 = icmp ne i64 %indvars.iv95, 1
  br i1 %exitcond100, label %.preheader21, label %75

.preheader21:                                     ; preds = %61
  br label %63

63:                                               ; preds = %73, %.preheader21
  %indvars.iv89 = phi i64 [ %indvars.iv.next90, %73 ], [ 0, %.preheader21 ]
  %64 = trunc nuw nsw i64 %indvars.iv89 to i32
  store i32 %64, ptr %2, align 4
  %exitcond94 = icmp ne i64 %indvars.iv89, 4
  br i1 %exitcond94, label %.preheader20, label %74

.preheader20:                                     ; preds = %63
  br label %65

65:                                               ; preds = %67, %.preheader20
  %indvars.iv85 = phi i64 [ %indvars.iv.next86, %67 ], [ 0, %.preheader20 ]
  %66 = trunc nuw nsw i64 %indvars.iv85 to i32
  store i32 %66, ptr %3, align 4
  %exitcond88 = icmp ne i64 %indvars.iv85, 2
  br i1 %exitcond88, label %67, label %73

67:                                               ; preds = %65
  %68 = shl i64 %indvars.iv85, 6
  %69 = shl i64 %indvars.iv89, 3
  %70 = add nuw nsw i64 %68, %69
  %71 = add nuw nsw i64 %indvars.iv95, %70
  %72 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %71
  store i32 1, ptr %72, align 4
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 1
  br label %65, !llvm.loop !25

73:                                               ; preds = %65
  %indvars.iv.next90 = add nuw nsw i64 %indvars.iv89, 1
  br label %63, !llvm.loop !26

74:                                               ; preds = %63
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, 1
  br label %61, !llvm.loop !27

75:                                               ; preds = %61
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %76

76:                                               ; preds = %89, %75
  %indvars.iv111 = phi i64 [ %indvars.iv.next112, %89 ], [ 0, %75 ]
  %77 = trunc nuw nsw i64 %indvars.iv111 to i32
  store i32 %77, ptr %1, align 4
  %exitcond116 = icmp ne i64 %indvars.iv111, 2
  br i1 %exitcond116, label %.preheader19, label %90

.preheader19:                                     ; preds = %76
  br label %78

78:                                               ; preds = %88, %.preheader19
  %indvars.iv105 = phi i64 [ %indvars.iv.next106, %88 ], [ 0, %.preheader19 ]
  %79 = trunc nuw nsw i64 %indvars.iv105 to i32
  store i32 %79, ptr %2, align 4
  %exitcond110 = icmp ne i64 %indvars.iv105, 4
  br i1 %exitcond110, label %.preheader18, label %89

.preheader18:                                     ; preds = %78
  br label %80

80:                                               ; preds = %82, %.preheader18
  %indvars.iv101 = phi i64 [ %indvars.iv.next102, %82 ], [ 0, %.preheader18 ]
  %81 = trunc nuw nsw i64 %indvars.iv101 to i32
  store i32 %81, ptr %3, align 4
  %exitcond104 = icmp ne i64 %indvars.iv101, 1
  br i1 %exitcond104, label %82, label %88

82:                                               ; preds = %80
  %83 = shl i64 %indvars.iv101, 6
  %84 = shl i64 %indvars.iv105, 3
  %85 = add nuw nsw i64 %83, %84
  %86 = add nuw nsw i64 %indvars.iv111, %85
  %87 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %86
  store i32 1, ptr %87, align 4
  %indvars.iv.next102 = add nuw nsw i64 %indvars.iv101, 1
  br label %80, !llvm.loop !28

88:                                               ; preds = %80
  %indvars.iv.next106 = add nuw nsw i64 %indvars.iv105, 1
  br label %78, !llvm.loop !29

89:                                               ; preds = %78
  %indvars.iv.next112 = add nuw nsw i64 %indvars.iv111, 1
  br label %76, !llvm.loop !30

90:                                               ; preds = %76
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %91

91:                                               ; preds = %104, %90
  %indvars.iv127 = phi i64 [ %indvars.iv.next128, %104 ], [ 0, %90 ]
  %92 = trunc nuw nsw i64 %indvars.iv127 to i32
  store i32 %92, ptr %1, align 4
  %exitcond132 = icmp ne i64 %indvars.iv127, 4
  br i1 %exitcond132, label %.preheader17, label %105

.preheader17:                                     ; preds = %91
  br label %93

93:                                               ; preds = %103, %.preheader17
  %indvars.iv121 = phi i64 [ %indvars.iv.next122, %103 ], [ 0, %.preheader17 ]
  %94 = trunc nuw nsw i64 %indvars.iv121 to i32
  store i32 %94, ptr %2, align 4
  %exitcond126 = icmp ne i64 %indvars.iv121, 1
  br i1 %exitcond126, label %.preheader16, label %104

.preheader16:                                     ; preds = %93
  br label %95

95:                                               ; preds = %97, %.preheader16
  %indvars.iv117 = phi i64 [ %indvars.iv.next118, %97 ], [ 0, %.preheader16 ]
  %96 = trunc nuw nsw i64 %indvars.iv117 to i32
  store i32 %96, ptr %3, align 4
  %exitcond120 = icmp ne i64 %indvars.iv117, 2
  br i1 %exitcond120, label %97, label %103

97:                                               ; preds = %95
  %98 = shl i64 %indvars.iv117, 6
  %99 = shl i64 %indvars.iv121, 3
  %100 = add nuw nsw i64 %98, %99
  %101 = add nuw nsw i64 %indvars.iv127, %100
  %102 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %101
  store i32 1, ptr %102, align 4
  %indvars.iv.next118 = add nuw nsw i64 %indvars.iv117, 1
  br label %95, !llvm.loop !31

103:                                              ; preds = %95
  %indvars.iv.next122 = add nuw nsw i64 %indvars.iv121, 1
  br label %93, !llvm.loop !32

104:                                              ; preds = %93
  %indvars.iv.next128 = add nuw nsw i64 %indvars.iv127, 1
  br label %91, !llvm.loop !33

105:                                              ; preds = %91
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %106

106:                                              ; preds = %119, %105
  %indvars.iv143 = phi i64 [ %indvars.iv.next144, %119 ], [ 0, %105 ]
  %107 = trunc nuw nsw i64 %indvars.iv143 to i32
  store i32 %107, ptr %1, align 4
  %exitcond148 = icmp ne i64 %indvars.iv143, 1
  br i1 %exitcond148, label %.preheader15, label %120

.preheader15:                                     ; preds = %106
  br label %108

108:                                              ; preds = %118, %.preheader15
  %indvars.iv137 = phi i64 [ %indvars.iv.next138, %118 ], [ 0, %.preheader15 ]
  %109 = trunc nuw nsw i64 %indvars.iv137 to i32
  store i32 %109, ptr %2, align 4
  %exitcond142 = icmp ne i64 %indvars.iv137, 2
  br i1 %exitcond142, label %.preheader14, label %119

.preheader14:                                     ; preds = %108
  br label %110

110:                                              ; preds = %112, %.preheader14
  %indvars.iv133 = phi i64 [ %indvars.iv.next134, %112 ], [ 0, %.preheader14 ]
  %111 = trunc nuw nsw i64 %indvars.iv133 to i32
  store i32 %111, ptr %3, align 4
  %exitcond136 = icmp ne i64 %indvars.iv133, 4
  br i1 %exitcond136, label %112, label %118

112:                                              ; preds = %110
  %113 = shl i64 %indvars.iv133, 6
  %114 = shl i64 %indvars.iv137, 3
  %115 = add nuw nsw i64 %113, %114
  %116 = add nuw nsw i64 %indvars.iv143, %115
  %117 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %116
  store i32 1, ptr %117, align 4
  %indvars.iv.next134 = add nuw nsw i64 %indvars.iv133, 1
  br label %110, !llvm.loop !34

118:                                              ; preds = %110
  %indvars.iv.next138 = add nuw nsw i64 %indvars.iv137, 1
  br label %108, !llvm.loop !35

119:                                              ; preds = %108
  %indvars.iv.next144 = add nuw nsw i64 %indvars.iv143, 1
  br label %106, !llvm.loop !36

120:                                              ; preds = %106
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %121

121:                                              ; preds = %134, %120
  %indvars.iv159 = phi i64 [ %indvars.iv.next160, %134 ], [ 0, %120 ]
  %122 = trunc nuw nsw i64 %indvars.iv159 to i32
  store i32 %122, ptr %1, align 4
  %exitcond164 = icmp ne i64 %indvars.iv159, 3
  br i1 %exitcond164, label %.preheader13, label %135

.preheader13:                                     ; preds = %121
  br label %123

123:                                              ; preds = %133, %.preheader13
  %indvars.iv153 = phi i64 [ %indvars.iv.next154, %133 ], [ 0, %.preheader13 ]
  %124 = trunc nuw nsw i64 %indvars.iv153 to i32
  store i32 %124, ptr %2, align 4
  %exitcond158 = icmp ne i64 %indvars.iv153, 1
  br i1 %exitcond158, label %.preheader12, label %134

.preheader12:                                     ; preds = %123
  br label %125

125:                                              ; preds = %127, %.preheader12
  %indvars.iv149 = phi i64 [ %indvars.iv.next150, %127 ], [ 0, %.preheader12 ]
  %126 = trunc nuw nsw i64 %indvars.iv149 to i32
  store i32 %126, ptr %3, align 4
  %exitcond152 = icmp ne i64 %indvars.iv149, 1
  br i1 %exitcond152, label %127, label %133

127:                                              ; preds = %125
  %128 = shl i64 %indvars.iv149, 6
  %129 = shl i64 %indvars.iv153, 3
  %130 = add nuw nsw i64 %128, %129
  %131 = add nuw nsw i64 %indvars.iv159, %130
  %132 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %131
  store i32 1, ptr %132, align 4
  %indvars.iv.next150 = add nuw nsw i64 %indvars.iv149, 1
  br label %125, !llvm.loop !37

133:                                              ; preds = %125
  %indvars.iv.next154 = add nuw nsw i64 %indvars.iv153, 1
  br label %123, !llvm.loop !38

134:                                              ; preds = %123
  %indvars.iv.next160 = add nuw nsw i64 %indvars.iv159, 1
  br label %121, !llvm.loop !39

135:                                              ; preds = %121
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %136

136:                                              ; preds = %149, %135
  %indvars.iv175 = phi i64 [ %indvars.iv.next176, %149 ], [ 0, %135 ]
  %137 = trunc nuw nsw i64 %indvars.iv175 to i32
  store i32 %137, ptr %1, align 4
  %exitcond180 = icmp ne i64 %indvars.iv175, 1
  br i1 %exitcond180, label %.preheader11, label %150

.preheader11:                                     ; preds = %136
  br label %138

138:                                              ; preds = %148, %.preheader11
  %indvars.iv169 = phi i64 [ %indvars.iv.next170, %148 ], [ 0, %.preheader11 ]
  %139 = trunc nuw nsw i64 %indvars.iv169 to i32
  store i32 %139, ptr %2, align 4
  %exitcond174 = icmp ne i64 %indvars.iv169, 3
  br i1 %exitcond174, label %.preheader10, label %149

.preheader10:                                     ; preds = %138
  br label %140

140:                                              ; preds = %142, %.preheader10
  %indvars.iv165 = phi i64 [ %indvars.iv.next166, %142 ], [ 0, %.preheader10 ]
  %141 = trunc nuw nsw i64 %indvars.iv165 to i32
  store i32 %141, ptr %3, align 4
  %exitcond168 = icmp ne i64 %indvars.iv165, 1
  br i1 %exitcond168, label %142, label %148

142:                                              ; preds = %140
  %143 = shl i64 %indvars.iv165, 6
  %144 = shl i64 %indvars.iv169, 3
  %145 = add nuw nsw i64 %143, %144
  %146 = add nuw nsw i64 %indvars.iv175, %145
  %147 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %146
  store i32 1, ptr %147, align 4
  %indvars.iv.next166 = add nuw nsw i64 %indvars.iv165, 1
  br label %140, !llvm.loop !40

148:                                              ; preds = %140
  %indvars.iv.next170 = add nuw nsw i64 %indvars.iv169, 1
  br label %138, !llvm.loop !41

149:                                              ; preds = %138
  %indvars.iv.next176 = add nuw nsw i64 %indvars.iv175, 1
  br label %136, !llvm.loop !42

150:                                              ; preds = %136
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %151

151:                                              ; preds = %164, %150
  %indvars.iv191 = phi i64 [ %indvars.iv.next192, %164 ], [ 0, %150 ]
  %152 = trunc nuw nsw i64 %indvars.iv191 to i32
  store i32 %152, ptr %1, align 4
  %exitcond196 = icmp ne i64 %indvars.iv191, 1
  br i1 %exitcond196, label %.preheader9, label %165

.preheader9:                                      ; preds = %151
  br label %153

153:                                              ; preds = %163, %.preheader9
  %indvars.iv185 = phi i64 [ %indvars.iv.next186, %163 ], [ 0, %.preheader9 ]
  %154 = trunc nuw nsw i64 %indvars.iv185 to i32
  store i32 %154, ptr %2, align 4
  %exitcond190 = icmp ne i64 %indvars.iv185, 1
  br i1 %exitcond190, label %.preheader8, label %164

.preheader8:                                      ; preds = %153
  br label %155

155:                                              ; preds = %157, %.preheader8
  %indvars.iv181 = phi i64 [ %indvars.iv.next182, %157 ], [ 0, %.preheader8 ]
  %156 = trunc nuw nsw i64 %indvars.iv181 to i32
  store i32 %156, ptr %3, align 4
  %exitcond184 = icmp ne i64 %indvars.iv181, 3
  br i1 %exitcond184, label %157, label %163

157:                                              ; preds = %155
  %158 = shl i64 %indvars.iv181, 6
  %159 = shl i64 %indvars.iv185, 3
  %160 = add nuw nsw i64 %158, %159
  %161 = add nuw nsw i64 %indvars.iv191, %160
  %162 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %161
  store i32 1, ptr %162, align 4
  %indvars.iv.next182 = add nuw nsw i64 %indvars.iv181, 1
  br label %155, !llvm.loop !43

163:                                              ; preds = %155
  %indvars.iv.next186 = add nuw nsw i64 %indvars.iv185, 1
  br label %153, !llvm.loop !44

164:                                              ; preds = %153
  %indvars.iv.next192 = add nuw nsw i64 %indvars.iv191, 1
  br label %151, !llvm.loop !45

165:                                              ; preds = %151
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %166

166:                                              ; preds = %179, %165
  %indvars.iv207 = phi i64 [ %indvars.iv.next208, %179 ], [ 0, %165 ]
  %167 = trunc nuw nsw i64 %indvars.iv207 to i32
  store i32 %167, ptr %1, align 4
  %exitcond212 = icmp ne i64 %indvars.iv207, 2
  br i1 %exitcond212, label %.preheader7, label %180

.preheader7:                                      ; preds = %166
  br label %168

168:                                              ; preds = %178, %.preheader7
  %indvars.iv201 = phi i64 [ %indvars.iv.next202, %178 ], [ 0, %.preheader7 ]
  %169 = trunc nuw nsw i64 %indvars.iv201 to i32
  store i32 %169, ptr %2, align 4
  %exitcond206 = icmp ne i64 %indvars.iv201, 2
  br i1 %exitcond206, label %.preheader6, label %179

.preheader6:                                      ; preds = %168
  br label %170

170:                                              ; preds = %172, %.preheader6
  %indvars.iv197 = phi i64 [ %indvars.iv.next198, %172 ], [ 0, %.preheader6 ]
  %171 = trunc nuw nsw i64 %indvars.iv197 to i32
  store i32 %171, ptr %3, align 4
  %exitcond200 = icmp ne i64 %indvars.iv197, 1
  br i1 %exitcond200, label %172, label %178

172:                                              ; preds = %170
  %173 = shl i64 %indvars.iv197, 6
  %174 = shl i64 %indvars.iv201, 3
  %175 = add nuw nsw i64 %173, %174
  %176 = add nuw nsw i64 %indvars.iv207, %175
  %177 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %176
  store i32 1, ptr %177, align 4
  %indvars.iv.next198 = add nuw nsw i64 %indvars.iv197, 1
  br label %170, !llvm.loop !46

178:                                              ; preds = %170
  %indvars.iv.next202 = add nuw nsw i64 %indvars.iv201, 1
  br label %168, !llvm.loop !47

179:                                              ; preds = %168
  %indvars.iv.next208 = add nuw nsw i64 %indvars.iv207, 1
  br label %166, !llvm.loop !48

180:                                              ; preds = %166
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %181

181:                                              ; preds = %194, %180
  %indvars.iv223 = phi i64 [ %indvars.iv.next224, %194 ], [ 0, %180 ]
  %182 = trunc nuw nsw i64 %indvars.iv223 to i32
  store i32 %182, ptr %1, align 4
  %exitcond228 = icmp ne i64 %indvars.iv223, 2
  br i1 %exitcond228, label %.preheader5, label %195

.preheader5:                                      ; preds = %181
  br label %183

183:                                              ; preds = %193, %.preheader5
  %indvars.iv217 = phi i64 [ %indvars.iv.next218, %193 ], [ 0, %.preheader5 ]
  %184 = trunc nuw nsw i64 %indvars.iv217 to i32
  store i32 %184, ptr %2, align 4
  %exitcond222 = icmp ne i64 %indvars.iv217, 1
  br i1 %exitcond222, label %.preheader4, label %194

.preheader4:                                      ; preds = %183
  br label %185

185:                                              ; preds = %187, %.preheader4
  %indvars.iv213 = phi i64 [ %indvars.iv.next214, %187 ], [ 0, %.preheader4 ]
  %186 = trunc nuw nsw i64 %indvars.iv213 to i32
  store i32 %186, ptr %3, align 4
  %exitcond216 = icmp ne i64 %indvars.iv213, 2
  br i1 %exitcond216, label %187, label %193

187:                                              ; preds = %185
  %188 = shl i64 %indvars.iv213, 6
  %189 = shl i64 %indvars.iv217, 3
  %190 = add nuw nsw i64 %188, %189
  %191 = add nuw nsw i64 %indvars.iv223, %190
  %192 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %191
  store i32 1, ptr %192, align 4
  %indvars.iv.next214 = add nuw nsw i64 %indvars.iv213, 1
  br label %185, !llvm.loop !49

193:                                              ; preds = %185
  %indvars.iv.next218 = add nuw nsw i64 %indvars.iv217, 1
  br label %183, !llvm.loop !50

194:                                              ; preds = %183
  %indvars.iv.next224 = add nuw nsw i64 %indvars.iv223, 1
  br label %181, !llvm.loop !51

195:                                              ; preds = %181
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %196

196:                                              ; preds = %209, %195
  %indvars.iv239 = phi i64 [ %indvars.iv.next240, %209 ], [ 0, %195 ]
  %197 = trunc nuw nsw i64 %indvars.iv239 to i32
  store i32 %197, ptr %1, align 4
  %exitcond244 = icmp ne i64 %indvars.iv239, 1
  br i1 %exitcond244, label %.preheader3, label %210

.preheader3:                                      ; preds = %196
  br label %198

198:                                              ; preds = %208, %.preheader3
  %indvars.iv233 = phi i64 [ %indvars.iv.next234, %208 ], [ 0, %.preheader3 ]
  %199 = trunc nuw nsw i64 %indvars.iv233 to i32
  store i32 %199, ptr %2, align 4
  %exitcond238 = icmp ne i64 %indvars.iv233, 2
  br i1 %exitcond238, label %.preheader2, label %209

.preheader2:                                      ; preds = %198
  br label %200

200:                                              ; preds = %202, %.preheader2
  %indvars.iv229 = phi i64 [ %indvars.iv.next230, %202 ], [ 0, %.preheader2 ]
  %201 = trunc nuw nsw i64 %indvars.iv229 to i32
  store i32 %201, ptr %3, align 4
  %exitcond232 = icmp ne i64 %indvars.iv229, 2
  br i1 %exitcond232, label %202, label %208

202:                                              ; preds = %200
  %203 = shl i64 %indvars.iv229, 6
  %204 = shl i64 %indvars.iv233, 3
  %205 = add nuw nsw i64 %203, %204
  %206 = add nuw nsw i64 %indvars.iv239, %205
  %207 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %206
  store i32 1, ptr %207, align 4
  %indvars.iv.next230 = add nuw nsw i64 %indvars.iv229, 1
  br label %200, !llvm.loop !52

208:                                              ; preds = %200
  %indvars.iv.next234 = add nuw nsw i64 %indvars.iv233, 1
  br label %198, !llvm.loop !53

209:                                              ; preds = %198
  %indvars.iv.next240 = add nuw nsw i64 %indvars.iv239, 1
  br label %196, !llvm.loop !54

210:                                              ; preds = %196
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %211

211:                                              ; preds = %224, %210
  %indvars.iv255 = phi i64 [ %indvars.iv.next256, %224 ], [ 0, %210 ]
  %212 = trunc nuw nsw i64 %indvars.iv255 to i32
  store i32 %212, ptr %1, align 4
  %exitcond260 = icmp ne i64 %indvars.iv255, 2
  br i1 %exitcond260, label %.preheader1, label %225

.preheader1:                                      ; preds = %211
  br label %213

213:                                              ; preds = %223, %.preheader1
  %indvars.iv249 = phi i64 [ %indvars.iv.next250, %223 ], [ 0, %.preheader1 ]
  %214 = trunc nuw nsw i64 %indvars.iv249 to i32
  store i32 %214, ptr %2, align 4
  %exitcond254 = icmp ne i64 %indvars.iv249, 2
  br i1 %exitcond254, label %.preheader, label %224

.preheader:                                       ; preds = %213
  br label %215

215:                                              ; preds = %217, %.preheader
  %indvars.iv245 = phi i64 [ %indvars.iv.next246, %217 ], [ 0, %.preheader ]
  %216 = trunc nuw nsw i64 %indvars.iv245 to i32
  store i32 %216, ptr %3, align 4
  %exitcond248 = icmp ne i64 %indvars.iv245, 2
  br i1 %exitcond248, label %217, label %223

217:                                              ; preds = %215
  %218 = shl i64 %indvars.iv245, 6
  %219 = shl i64 %indvars.iv249, 3
  %220 = add nuw nsw i64 %218, %219
  %221 = add nuw nsw i64 %indvars.iv255, %220
  %222 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %221
  store i32 1, ptr %222, align 4
  %indvars.iv.next246 = add nuw nsw i64 %indvars.iv245, 1
  br label %215, !llvm.loop !55

223:                                              ; preds = %215
  %indvars.iv.next250 = add nuw nsw i64 %indvars.iv249, 1
  br label %213, !llvm.loop !56

224:                                              ; preds = %213
  %indvars.iv.next256 = add nuw nsw i64 %indvars.iv255, 1
  br label %211, !llvm.loop !57

225:                                              ; preds = %211
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 73, ptr %4, align 4
  store i32 0, ptr @kount, align 4
  %226 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %226, 0
  br i1 %.not, label %229, label %227

227:                                              ; preds = %225
  %228 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %228, ptr @n, align 4
  br label %230

229:                                              ; preds = %225
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %.pre = load i32, ptr @n, align 4
  br label %230

230:                                              ; preds = %229, %227
  %231 = phi i32 [ %.pre, %229 ], [ %228, %227 ]
  %232 = call i32 @Trial(i32 noundef %231)
  %.not16 = icmp eq i32 %232, 0
  br i1 %.not16, label %233, label %234

233:                                              ; preds = %230
  %puts17 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %237

234:                                              ; preds = %230
  %235 = load i32, ptr @kount, align 4
  %.not18 = icmp eq i32 %235, 2005
  br i1 %.not18, label %237, label %236

236:                                              ; preds = %234
  %puts19 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %237

237:                                              ; preds = %236, %234, %233
  %238 = load i32, ptr @n, align 4
  %239 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %238) #4
  %240 = load i32, ptr @kount, align 4
  %241 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %240) #4
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  br label %2

2:                                                ; preds = %4, %0
  %3 = phi i32 [ 0, %0 ], [ %5, %4 ]
  store i32 %3, ptr %1, align 4
  %exitcond = icmp ne i32 %3, 100
  br i1 %exitcond, label %4, label %6

4:                                                ; preds = %2
  call void @Puzzle()
  %5 = add nuw nsw i32 %3, 1
  br label %2, !llvm.loop !58

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
