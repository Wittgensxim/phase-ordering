; ModuleID = 'results\test_rule2\Stanford_Puzzle\round_005\output.ll'
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
  br i1 %exitcond.not, label %.loopexit.loopexit, label %28

28:                                               ; preds = %26
  %29 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %indvars.iv
  %30 = load i32, ptr %29, align 4
  %.not3 = icmp eq i32 %30, 0
  br i1 %.not3, label %31, label %32

31:                                               ; preds = %28
  %.lcssa2 = phi i32 [ %27, %28 ]
  br label %.loopexit

32:                                               ; preds = %28
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %26, !llvm.loop !10

.loopexit.loopexit:                               ; preds = %26
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %31
  %storemerge2 = phi i32 [ %.lcssa2, %31 ], [ 0, %.loopexit.loopexit ]
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
  br i1 %exitcond, label %7, label %.preheader31.preheader

.preheader31.preheader:                           ; preds = %5
  br label %.preheader31

7:                                                ; preds = %5
  %8 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %indvars.iv
  store i32 1, ptr %8, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %5, !llvm.loop !13

.preheader31:                                     ; preds = %19, %.preheader31.preheader
  %indvars.iv39 = phi i64 [ %indvars.iv.next40, %19 ], [ 1, %.preheader31.preheader ]
  %9 = trunc nuw nsw i64 %indvars.iv39 to i32
  store i32 %9, ptr %1, align 4
  %exitcond44 = icmp ne i64 %indvars.iv39, 6
  br i1 %exitcond44, label %.preheader30.preheader, label %.preheader28.preheader

.preheader30.preheader:                           ; preds = %.preheader31
  br label %.preheader30

.preheader28.preheader:                           ; preds = %.preheader31
  br label %.preheader28

.preheader30:                                     ; preds = %18, %.preheader30.preheader
  %indvars.iv33 = phi i64 [ %indvars.iv.next34, %18 ], [ 1, %.preheader30.preheader ]
  %10 = trunc nuw nsw i64 %indvars.iv33 to i32
  store i32 %10, ptr %2, align 4
  %exitcond38 = icmp ne i64 %indvars.iv33, 6
  br i1 %exitcond38, label %.preheader29.preheader, label %19

.preheader29.preheader:                           ; preds = %.preheader30
  br label %.preheader29

.preheader29:                                     ; preds = %12, %.preheader29.preheader
  %indvars.iv29 = phi i64 [ %indvars.iv.next30, %12 ], [ 1, %.preheader29.preheader ]
  %11 = trunc nuw nsw i64 %indvars.iv29 to i32
  store i32 %11, ptr %3, align 4
  %exitcond32 = icmp ne i64 %indvars.iv29, 6
  br i1 %exitcond32, label %12, label %18

12:                                               ; preds = %.preheader29
  %13 = shl i64 %indvars.iv29, 6
  %14 = shl i64 %indvars.iv33, 3
  %15 = add nuw nsw i64 %13, %14
  %16 = add nuw nsw i64 %indvars.iv39, %15
  %17 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %16
  store i32 0, ptr %17, align 4
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1
  br label %.preheader29, !llvm.loop !14

18:                                               ; preds = %.preheader29
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1
  br label %.preheader30, !llvm.loop !15

19:                                               ; preds = %.preheader30
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1
  br label %.preheader31, !llvm.loop !16

.preheader28:                                     ; preds = %25, %.preheader28.preheader
  %indvars.iv49 = phi i64 [ %indvars.iv.next50, %25 ], [ 0, %.preheader28.preheader ]
  %20 = trunc nuw nsw i64 %indvars.iv49 to i32
  store i32 %20, ptr %1, align 4
  %exitcond52 = icmp ne i64 %indvars.iv49, 13
  br i1 %exitcond52, label %.preheader27.preheader, label %.preheader26.preheader

.preheader27.preheader:                           ; preds = %.preheader28
  br label %.preheader27

.preheader26.preheader:                           ; preds = %.preheader28
  br label %.preheader26

.preheader27:                                     ; preds = %22, %.preheader27.preheader
  %indvars.iv45 = phi i64 [ %indvars.iv.next46, %22 ], [ 0, %.preheader27.preheader ]
  %21 = trunc nuw nsw i64 %indvars.iv45 to i32
  store i32 %21, ptr %4, align 4
  %exitcond48 = icmp ne i64 %indvars.iv45, 512
  br i1 %exitcond48, label %22, label %25

22:                                               ; preds = %.preheader27
  %23 = getelementptr inbounds [2048 x i8], ptr @p, i64 %indvars.iv49
  %24 = getelementptr inbounds [4 x i8], ptr %23, i64 %indvars.iv45
  store i32 0, ptr %24, align 4
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1
  br label %.preheader27, !llvm.loop !17

25:                                               ; preds = %.preheader27
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1
  br label %.preheader28, !llvm.loop !18

.preheader26:                                     ; preds = %36, %.preheader26.preheader
  %indvars.iv63 = phi i64 [ %indvars.iv.next64, %36 ], [ 0, %.preheader26.preheader ]
  %26 = trunc nuw nsw i64 %indvars.iv63 to i32
  store i32 %26, ptr %1, align 4
  %exitcond68 = icmp ne i64 %indvars.iv63, 4
  br i1 %exitcond68, label %.preheader25.preheader, label %37

.preheader25.preheader:                           ; preds = %.preheader26
  br label %.preheader25

.preheader25:                                     ; preds = %35, %.preheader25.preheader
  %indvars.iv57 = phi i64 [ %indvars.iv.next58, %35 ], [ 0, %.preheader25.preheader ]
  %27 = trunc nuw nsw i64 %indvars.iv57 to i32
  store i32 %27, ptr %2, align 4
  %exitcond62 = icmp ne i64 %indvars.iv57, 2
  br i1 %exitcond62, label %.preheader24.preheader, label %36

.preheader24.preheader:                           ; preds = %.preheader25
  br label %.preheader24

.preheader24:                                     ; preds = %29, %.preheader24.preheader
  %indvars.iv53 = phi i64 [ %indvars.iv.next54, %29 ], [ 0, %.preheader24.preheader ]
  %28 = trunc nuw nsw i64 %indvars.iv53 to i32
  store i32 %28, ptr %3, align 4
  %exitcond56 = icmp ne i64 %indvars.iv53, 1
  br i1 %exitcond56, label %29, label %35

29:                                               ; preds = %.preheader24
  %30 = shl i64 %indvars.iv53, 6
  %31 = shl i64 %indvars.iv57, 3
  %32 = add nuw nsw i64 %30, %31
  %33 = add nuw nsw i64 %indvars.iv63, %32
  %34 = getelementptr inbounds [4 x i8], ptr @p, i64 %33
  store i32 1, ptr %34, align 4
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1
  br label %.preheader24, !llvm.loop !19

35:                                               ; preds = %.preheader24
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1
  br label %.preheader25, !llvm.loop !20

36:                                               ; preds = %.preheader25
  %indvars.iv.next64 = add nuw nsw i64 %indvars.iv63, 1
  br label %.preheader26, !llvm.loop !21

37:                                               ; preds = %.preheader26
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %38

38:                                               ; preds = %49, %37
  %indvars.iv79 = phi i64 [ %indvars.iv.next80, %49 ], [ 0, %37 ]
  %39 = trunc nuw nsw i64 %indvars.iv79 to i32
  store i32 %39, ptr %1, align 4
  %exitcond84 = icmp ne i64 %indvars.iv79, 2
  br i1 %exitcond84, label %.preheader23.preheader, label %50

.preheader23.preheader:                           ; preds = %38
  br label %.preheader23

.preheader23:                                     ; preds = %48, %.preheader23.preheader
  %indvars.iv73 = phi i64 [ %indvars.iv.next74, %48 ], [ 0, %.preheader23.preheader ]
  %40 = trunc nuw nsw i64 %indvars.iv73 to i32
  store i32 %40, ptr %2, align 4
  %exitcond78 = icmp ne i64 %indvars.iv73, 1
  br i1 %exitcond78, label %.preheader22.preheader, label %49

.preheader22.preheader:                           ; preds = %.preheader23
  br label %.preheader22

.preheader22:                                     ; preds = %42, %.preheader22.preheader
  %indvars.iv69 = phi i64 [ %indvars.iv.next70, %42 ], [ 0, %.preheader22.preheader ]
  %41 = trunc nuw nsw i64 %indvars.iv69 to i32
  store i32 %41, ptr %3, align 4
  %exitcond72 = icmp ne i64 %indvars.iv69, 4
  br i1 %exitcond72, label %42, label %48

42:                                               ; preds = %.preheader22
  %43 = shl i64 %indvars.iv69, 6
  %44 = shl i64 %indvars.iv73, 3
  %45 = add nuw nsw i64 %43, %44
  %46 = add nuw nsw i64 %indvars.iv79, %45
  %47 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %46
  store i32 1, ptr %47, align 4
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1
  br label %.preheader22, !llvm.loop !22

48:                                               ; preds = %.preheader22
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1
  br label %.preheader23, !llvm.loop !23

49:                                               ; preds = %.preheader23
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1
  br label %38, !llvm.loop !24

50:                                               ; preds = %38
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %51

51:                                               ; preds = %62, %50
  %indvars.iv95 = phi i64 [ %indvars.iv.next96, %62 ], [ 0, %50 ]
  %52 = trunc nuw nsw i64 %indvars.iv95 to i32
  store i32 %52, ptr %1, align 4
  %exitcond100 = icmp ne i64 %indvars.iv95, 1
  br i1 %exitcond100, label %.preheader21.preheader, label %63

.preheader21.preheader:                           ; preds = %51
  br label %.preheader21

.preheader21:                                     ; preds = %61, %.preheader21.preheader
  %indvars.iv89 = phi i64 [ %indvars.iv.next90, %61 ], [ 0, %.preheader21.preheader ]
  %53 = trunc nuw nsw i64 %indvars.iv89 to i32
  store i32 %53, ptr %2, align 4
  %exitcond94 = icmp ne i64 %indvars.iv89, 4
  br i1 %exitcond94, label %.preheader20.preheader, label %62

.preheader20.preheader:                           ; preds = %.preheader21
  br label %.preheader20

.preheader20:                                     ; preds = %55, %.preheader20.preheader
  %indvars.iv85 = phi i64 [ %indvars.iv.next86, %55 ], [ 0, %.preheader20.preheader ]
  %54 = trunc nuw nsw i64 %indvars.iv85 to i32
  store i32 %54, ptr %3, align 4
  %exitcond88 = icmp ne i64 %indvars.iv85, 2
  br i1 %exitcond88, label %55, label %61

55:                                               ; preds = %.preheader20
  %56 = shl i64 %indvars.iv85, 6
  %57 = shl i64 %indvars.iv89, 3
  %58 = add nuw nsw i64 %56, %57
  %59 = add nuw nsw i64 %indvars.iv95, %58
  %60 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %59
  store i32 1, ptr %60, align 4
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 1
  br label %.preheader20, !llvm.loop !25

61:                                               ; preds = %.preheader20
  %indvars.iv.next90 = add nuw nsw i64 %indvars.iv89, 1
  br label %.preheader21, !llvm.loop !26

62:                                               ; preds = %.preheader21
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, 1
  br label %51, !llvm.loop !27

63:                                               ; preds = %51
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %64

64:                                               ; preds = %75, %63
  %indvars.iv111 = phi i64 [ %indvars.iv.next112, %75 ], [ 0, %63 ]
  %65 = trunc nuw nsw i64 %indvars.iv111 to i32
  store i32 %65, ptr %1, align 4
  %exitcond116 = icmp ne i64 %indvars.iv111, 2
  br i1 %exitcond116, label %.preheader19.preheader, label %76

.preheader19.preheader:                           ; preds = %64
  br label %.preheader19

.preheader19:                                     ; preds = %74, %.preheader19.preheader
  %indvars.iv105 = phi i64 [ %indvars.iv.next106, %74 ], [ 0, %.preheader19.preheader ]
  %66 = trunc nuw nsw i64 %indvars.iv105 to i32
  store i32 %66, ptr %2, align 4
  %exitcond110 = icmp ne i64 %indvars.iv105, 4
  br i1 %exitcond110, label %.preheader18.preheader, label %75

.preheader18.preheader:                           ; preds = %.preheader19
  br label %.preheader18

.preheader18:                                     ; preds = %68, %.preheader18.preheader
  %indvars.iv101 = phi i64 [ %indvars.iv.next102, %68 ], [ 0, %.preheader18.preheader ]
  %67 = trunc nuw nsw i64 %indvars.iv101 to i32
  store i32 %67, ptr %3, align 4
  %exitcond104 = icmp ne i64 %indvars.iv101, 1
  br i1 %exitcond104, label %68, label %74

68:                                               ; preds = %.preheader18
  %69 = shl i64 %indvars.iv101, 6
  %70 = shl i64 %indvars.iv105, 3
  %71 = add nuw nsw i64 %69, %70
  %72 = add nuw nsw i64 %indvars.iv111, %71
  %73 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %72
  store i32 1, ptr %73, align 4
  %indvars.iv.next102 = add nuw nsw i64 %indvars.iv101, 1
  br label %.preheader18, !llvm.loop !28

74:                                               ; preds = %.preheader18
  %indvars.iv.next106 = add nuw nsw i64 %indvars.iv105, 1
  br label %.preheader19, !llvm.loop !29

75:                                               ; preds = %.preheader19
  %indvars.iv.next112 = add nuw nsw i64 %indvars.iv111, 1
  br label %64, !llvm.loop !30

76:                                               ; preds = %64
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %77

77:                                               ; preds = %88, %76
  %indvars.iv127 = phi i64 [ %indvars.iv.next128, %88 ], [ 0, %76 ]
  %78 = trunc nuw nsw i64 %indvars.iv127 to i32
  store i32 %78, ptr %1, align 4
  %exitcond132 = icmp ne i64 %indvars.iv127, 4
  br i1 %exitcond132, label %.preheader17.preheader, label %89

.preheader17.preheader:                           ; preds = %77
  br label %.preheader17

.preheader17:                                     ; preds = %87, %.preheader17.preheader
  %indvars.iv121 = phi i64 [ %indvars.iv.next122, %87 ], [ 0, %.preheader17.preheader ]
  %79 = trunc nuw nsw i64 %indvars.iv121 to i32
  store i32 %79, ptr %2, align 4
  %exitcond126 = icmp ne i64 %indvars.iv121, 1
  br i1 %exitcond126, label %.preheader16.preheader, label %88

.preheader16.preheader:                           ; preds = %.preheader17
  br label %.preheader16

.preheader16:                                     ; preds = %81, %.preheader16.preheader
  %indvars.iv117 = phi i64 [ %indvars.iv.next118, %81 ], [ 0, %.preheader16.preheader ]
  %80 = trunc nuw nsw i64 %indvars.iv117 to i32
  store i32 %80, ptr %3, align 4
  %exitcond120 = icmp ne i64 %indvars.iv117, 2
  br i1 %exitcond120, label %81, label %87

81:                                               ; preds = %.preheader16
  %82 = shl i64 %indvars.iv117, 6
  %83 = shl i64 %indvars.iv121, 3
  %84 = add nuw nsw i64 %82, %83
  %85 = add nuw nsw i64 %indvars.iv127, %84
  %86 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %85
  store i32 1, ptr %86, align 4
  %indvars.iv.next118 = add nuw nsw i64 %indvars.iv117, 1
  br label %.preheader16, !llvm.loop !31

87:                                               ; preds = %.preheader16
  %indvars.iv.next122 = add nuw nsw i64 %indvars.iv121, 1
  br label %.preheader17, !llvm.loop !32

88:                                               ; preds = %.preheader17
  %indvars.iv.next128 = add nuw nsw i64 %indvars.iv127, 1
  br label %77, !llvm.loop !33

89:                                               ; preds = %77
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %90

90:                                               ; preds = %101, %89
  %indvars.iv143 = phi i64 [ %indvars.iv.next144, %101 ], [ 0, %89 ]
  %91 = trunc nuw nsw i64 %indvars.iv143 to i32
  store i32 %91, ptr %1, align 4
  %exitcond148 = icmp ne i64 %indvars.iv143, 1
  br i1 %exitcond148, label %.preheader15.preheader, label %102

.preheader15.preheader:                           ; preds = %90
  br label %.preheader15

.preheader15:                                     ; preds = %100, %.preheader15.preheader
  %indvars.iv137 = phi i64 [ %indvars.iv.next138, %100 ], [ 0, %.preheader15.preheader ]
  %92 = trunc nuw nsw i64 %indvars.iv137 to i32
  store i32 %92, ptr %2, align 4
  %exitcond142 = icmp ne i64 %indvars.iv137, 2
  br i1 %exitcond142, label %.preheader14.preheader, label %101

.preheader14.preheader:                           ; preds = %.preheader15
  br label %.preheader14

.preheader14:                                     ; preds = %94, %.preheader14.preheader
  %indvars.iv133 = phi i64 [ %indvars.iv.next134, %94 ], [ 0, %.preheader14.preheader ]
  %93 = trunc nuw nsw i64 %indvars.iv133 to i32
  store i32 %93, ptr %3, align 4
  %exitcond136 = icmp ne i64 %indvars.iv133, 4
  br i1 %exitcond136, label %94, label %100

94:                                               ; preds = %.preheader14
  %95 = shl i64 %indvars.iv133, 6
  %96 = shl i64 %indvars.iv137, 3
  %97 = add nuw nsw i64 %95, %96
  %98 = add nuw nsw i64 %indvars.iv143, %97
  %99 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %98
  store i32 1, ptr %99, align 4
  %indvars.iv.next134 = add nuw nsw i64 %indvars.iv133, 1
  br label %.preheader14, !llvm.loop !34

100:                                              ; preds = %.preheader14
  %indvars.iv.next138 = add nuw nsw i64 %indvars.iv137, 1
  br label %.preheader15, !llvm.loop !35

101:                                              ; preds = %.preheader15
  %indvars.iv.next144 = add nuw nsw i64 %indvars.iv143, 1
  br label %90, !llvm.loop !36

102:                                              ; preds = %90
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %103

103:                                              ; preds = %114, %102
  %indvars.iv159 = phi i64 [ %indvars.iv.next160, %114 ], [ 0, %102 ]
  %104 = trunc nuw nsw i64 %indvars.iv159 to i32
  store i32 %104, ptr %1, align 4
  %exitcond164 = icmp ne i64 %indvars.iv159, 3
  br i1 %exitcond164, label %.preheader13.preheader, label %115

.preheader13.preheader:                           ; preds = %103
  br label %.preheader13

.preheader13:                                     ; preds = %113, %.preheader13.preheader
  %indvars.iv153 = phi i64 [ %indvars.iv.next154, %113 ], [ 0, %.preheader13.preheader ]
  %105 = trunc nuw nsw i64 %indvars.iv153 to i32
  store i32 %105, ptr %2, align 4
  %exitcond158 = icmp ne i64 %indvars.iv153, 1
  br i1 %exitcond158, label %.preheader12.preheader, label %114

.preheader12.preheader:                           ; preds = %.preheader13
  br label %.preheader12

.preheader12:                                     ; preds = %107, %.preheader12.preheader
  %indvars.iv149 = phi i64 [ %indvars.iv.next150, %107 ], [ 0, %.preheader12.preheader ]
  %106 = trunc nuw nsw i64 %indvars.iv149 to i32
  store i32 %106, ptr %3, align 4
  %exitcond152 = icmp ne i64 %indvars.iv149, 1
  br i1 %exitcond152, label %107, label %113

107:                                              ; preds = %.preheader12
  %108 = shl i64 %indvars.iv149, 6
  %109 = shl i64 %indvars.iv153, 3
  %110 = add nuw nsw i64 %108, %109
  %111 = add nuw nsw i64 %indvars.iv159, %110
  %112 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %111
  store i32 1, ptr %112, align 4
  %indvars.iv.next150 = add nuw nsw i64 %indvars.iv149, 1
  br label %.preheader12, !llvm.loop !37

113:                                              ; preds = %.preheader12
  %indvars.iv.next154 = add nuw nsw i64 %indvars.iv153, 1
  br label %.preheader13, !llvm.loop !38

114:                                              ; preds = %.preheader13
  %indvars.iv.next160 = add nuw nsw i64 %indvars.iv159, 1
  br label %103, !llvm.loop !39

115:                                              ; preds = %103
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %116

116:                                              ; preds = %127, %115
  %indvars.iv175 = phi i64 [ %indvars.iv.next176, %127 ], [ 0, %115 ]
  %117 = trunc nuw nsw i64 %indvars.iv175 to i32
  store i32 %117, ptr %1, align 4
  %exitcond180 = icmp ne i64 %indvars.iv175, 1
  br i1 %exitcond180, label %.preheader11.preheader, label %128

.preheader11.preheader:                           ; preds = %116
  br label %.preheader11

.preheader11:                                     ; preds = %126, %.preheader11.preheader
  %indvars.iv169 = phi i64 [ %indvars.iv.next170, %126 ], [ 0, %.preheader11.preheader ]
  %118 = trunc nuw nsw i64 %indvars.iv169 to i32
  store i32 %118, ptr %2, align 4
  %exitcond174 = icmp ne i64 %indvars.iv169, 3
  br i1 %exitcond174, label %.preheader10.preheader, label %127

.preheader10.preheader:                           ; preds = %.preheader11
  br label %.preheader10

.preheader10:                                     ; preds = %120, %.preheader10.preheader
  %indvars.iv165 = phi i64 [ %indvars.iv.next166, %120 ], [ 0, %.preheader10.preheader ]
  %119 = trunc nuw nsw i64 %indvars.iv165 to i32
  store i32 %119, ptr %3, align 4
  %exitcond168 = icmp ne i64 %indvars.iv165, 1
  br i1 %exitcond168, label %120, label %126

120:                                              ; preds = %.preheader10
  %121 = shl i64 %indvars.iv165, 6
  %122 = shl i64 %indvars.iv169, 3
  %123 = add nuw nsw i64 %121, %122
  %124 = add nuw nsw i64 %indvars.iv175, %123
  %125 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %124
  store i32 1, ptr %125, align 4
  %indvars.iv.next166 = add nuw nsw i64 %indvars.iv165, 1
  br label %.preheader10, !llvm.loop !40

126:                                              ; preds = %.preheader10
  %indvars.iv.next170 = add nuw nsw i64 %indvars.iv169, 1
  br label %.preheader11, !llvm.loop !41

127:                                              ; preds = %.preheader11
  %indvars.iv.next176 = add nuw nsw i64 %indvars.iv175, 1
  br label %116, !llvm.loop !42

128:                                              ; preds = %116
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %129

129:                                              ; preds = %140, %128
  %indvars.iv191 = phi i64 [ %indvars.iv.next192, %140 ], [ 0, %128 ]
  %130 = trunc nuw nsw i64 %indvars.iv191 to i32
  store i32 %130, ptr %1, align 4
  %exitcond196 = icmp ne i64 %indvars.iv191, 1
  br i1 %exitcond196, label %.preheader9.preheader, label %141

.preheader9.preheader:                            ; preds = %129
  br label %.preheader9

.preheader9:                                      ; preds = %139, %.preheader9.preheader
  %indvars.iv185 = phi i64 [ %indvars.iv.next186, %139 ], [ 0, %.preheader9.preheader ]
  %131 = trunc nuw nsw i64 %indvars.iv185 to i32
  store i32 %131, ptr %2, align 4
  %exitcond190 = icmp ne i64 %indvars.iv185, 1
  br i1 %exitcond190, label %.preheader8.preheader, label %140

.preheader8.preheader:                            ; preds = %.preheader9
  br label %.preheader8

.preheader8:                                      ; preds = %133, %.preheader8.preheader
  %indvars.iv181 = phi i64 [ %indvars.iv.next182, %133 ], [ 0, %.preheader8.preheader ]
  %132 = trunc nuw nsw i64 %indvars.iv181 to i32
  store i32 %132, ptr %3, align 4
  %exitcond184 = icmp ne i64 %indvars.iv181, 3
  br i1 %exitcond184, label %133, label %139

133:                                              ; preds = %.preheader8
  %134 = shl i64 %indvars.iv181, 6
  %135 = shl i64 %indvars.iv185, 3
  %136 = add nuw nsw i64 %134, %135
  %137 = add nuw nsw i64 %indvars.iv191, %136
  %138 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %137
  store i32 1, ptr %138, align 4
  %indvars.iv.next182 = add nuw nsw i64 %indvars.iv181, 1
  br label %.preheader8, !llvm.loop !43

139:                                              ; preds = %.preheader8
  %indvars.iv.next186 = add nuw nsw i64 %indvars.iv185, 1
  br label %.preheader9, !llvm.loop !44

140:                                              ; preds = %.preheader9
  %indvars.iv.next192 = add nuw nsw i64 %indvars.iv191, 1
  br label %129, !llvm.loop !45

141:                                              ; preds = %129
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %142

142:                                              ; preds = %153, %141
  %indvars.iv207 = phi i64 [ %indvars.iv.next208, %153 ], [ 0, %141 ]
  %143 = trunc nuw nsw i64 %indvars.iv207 to i32
  store i32 %143, ptr %1, align 4
  %exitcond212 = icmp ne i64 %indvars.iv207, 2
  br i1 %exitcond212, label %.preheader7.preheader, label %154

.preheader7.preheader:                            ; preds = %142
  br label %.preheader7

.preheader7:                                      ; preds = %152, %.preheader7.preheader
  %indvars.iv201 = phi i64 [ %indvars.iv.next202, %152 ], [ 0, %.preheader7.preheader ]
  %144 = trunc nuw nsw i64 %indvars.iv201 to i32
  store i32 %144, ptr %2, align 4
  %exitcond206 = icmp ne i64 %indvars.iv201, 2
  br i1 %exitcond206, label %.preheader6.preheader, label %153

.preheader6.preheader:                            ; preds = %.preheader7
  br label %.preheader6

.preheader6:                                      ; preds = %146, %.preheader6.preheader
  %indvars.iv197 = phi i64 [ %indvars.iv.next198, %146 ], [ 0, %.preheader6.preheader ]
  %145 = trunc nuw nsw i64 %indvars.iv197 to i32
  store i32 %145, ptr %3, align 4
  %exitcond200 = icmp ne i64 %indvars.iv197, 1
  br i1 %exitcond200, label %146, label %152

146:                                              ; preds = %.preheader6
  %147 = shl i64 %indvars.iv197, 6
  %148 = shl i64 %indvars.iv201, 3
  %149 = add nuw nsw i64 %147, %148
  %150 = add nuw nsw i64 %indvars.iv207, %149
  %151 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %150
  store i32 1, ptr %151, align 4
  %indvars.iv.next198 = add nuw nsw i64 %indvars.iv197, 1
  br label %.preheader6, !llvm.loop !46

152:                                              ; preds = %.preheader6
  %indvars.iv.next202 = add nuw nsw i64 %indvars.iv201, 1
  br label %.preheader7, !llvm.loop !47

153:                                              ; preds = %.preheader7
  %indvars.iv.next208 = add nuw nsw i64 %indvars.iv207, 1
  br label %142, !llvm.loop !48

154:                                              ; preds = %142
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %155

155:                                              ; preds = %166, %154
  %indvars.iv223 = phi i64 [ %indvars.iv.next224, %166 ], [ 0, %154 ]
  %156 = trunc nuw nsw i64 %indvars.iv223 to i32
  store i32 %156, ptr %1, align 4
  %exitcond228 = icmp ne i64 %indvars.iv223, 2
  br i1 %exitcond228, label %.preheader5.preheader, label %167

.preheader5.preheader:                            ; preds = %155
  br label %.preheader5

.preheader5:                                      ; preds = %165, %.preheader5.preheader
  %indvars.iv217 = phi i64 [ %indvars.iv.next218, %165 ], [ 0, %.preheader5.preheader ]
  %157 = trunc nuw nsw i64 %indvars.iv217 to i32
  store i32 %157, ptr %2, align 4
  %exitcond222 = icmp ne i64 %indvars.iv217, 1
  br i1 %exitcond222, label %.preheader4.preheader, label %166

.preheader4.preheader:                            ; preds = %.preheader5
  br label %.preheader4

.preheader4:                                      ; preds = %159, %.preheader4.preheader
  %indvars.iv213 = phi i64 [ %indvars.iv.next214, %159 ], [ 0, %.preheader4.preheader ]
  %158 = trunc nuw nsw i64 %indvars.iv213 to i32
  store i32 %158, ptr %3, align 4
  %exitcond216 = icmp ne i64 %indvars.iv213, 2
  br i1 %exitcond216, label %159, label %165

159:                                              ; preds = %.preheader4
  %160 = shl i64 %indvars.iv213, 6
  %161 = shl i64 %indvars.iv217, 3
  %162 = add nuw nsw i64 %160, %161
  %163 = add nuw nsw i64 %indvars.iv223, %162
  %164 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %163
  store i32 1, ptr %164, align 4
  %indvars.iv.next214 = add nuw nsw i64 %indvars.iv213, 1
  br label %.preheader4, !llvm.loop !49

165:                                              ; preds = %.preheader4
  %indvars.iv.next218 = add nuw nsw i64 %indvars.iv217, 1
  br label %.preheader5, !llvm.loop !50

166:                                              ; preds = %.preheader5
  %indvars.iv.next224 = add nuw nsw i64 %indvars.iv223, 1
  br label %155, !llvm.loop !51

167:                                              ; preds = %155
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %168

168:                                              ; preds = %179, %167
  %indvars.iv239 = phi i64 [ %indvars.iv.next240, %179 ], [ 0, %167 ]
  %169 = trunc nuw nsw i64 %indvars.iv239 to i32
  store i32 %169, ptr %1, align 4
  %exitcond244 = icmp ne i64 %indvars.iv239, 1
  br i1 %exitcond244, label %.preheader3.preheader, label %180

.preheader3.preheader:                            ; preds = %168
  br label %.preheader3

.preheader3:                                      ; preds = %178, %.preheader3.preheader
  %indvars.iv233 = phi i64 [ %indvars.iv.next234, %178 ], [ 0, %.preheader3.preheader ]
  %170 = trunc nuw nsw i64 %indvars.iv233 to i32
  store i32 %170, ptr %2, align 4
  %exitcond238 = icmp ne i64 %indvars.iv233, 2
  br i1 %exitcond238, label %.preheader2.preheader, label %179

.preheader2.preheader:                            ; preds = %.preheader3
  br label %.preheader2

.preheader2:                                      ; preds = %172, %.preheader2.preheader
  %indvars.iv229 = phi i64 [ %indvars.iv.next230, %172 ], [ 0, %.preheader2.preheader ]
  %171 = trunc nuw nsw i64 %indvars.iv229 to i32
  store i32 %171, ptr %3, align 4
  %exitcond232 = icmp ne i64 %indvars.iv229, 2
  br i1 %exitcond232, label %172, label %178

172:                                              ; preds = %.preheader2
  %173 = shl i64 %indvars.iv229, 6
  %174 = shl i64 %indvars.iv233, 3
  %175 = add nuw nsw i64 %173, %174
  %176 = add nuw nsw i64 %indvars.iv239, %175
  %177 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %176
  store i32 1, ptr %177, align 4
  %indvars.iv.next230 = add nuw nsw i64 %indvars.iv229, 1
  br label %.preheader2, !llvm.loop !52

178:                                              ; preds = %.preheader2
  %indvars.iv.next234 = add nuw nsw i64 %indvars.iv233, 1
  br label %.preheader3, !llvm.loop !53

179:                                              ; preds = %.preheader3
  %indvars.iv.next240 = add nuw nsw i64 %indvars.iv239, 1
  br label %168, !llvm.loop !54

180:                                              ; preds = %168
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %181

181:                                              ; preds = %192, %180
  %indvars.iv255 = phi i64 [ %indvars.iv.next256, %192 ], [ 0, %180 ]
  %182 = trunc nuw nsw i64 %indvars.iv255 to i32
  store i32 %182, ptr %1, align 4
  %exitcond260 = icmp ne i64 %indvars.iv255, 2
  br i1 %exitcond260, label %.preheader1.preheader, label %193

.preheader1.preheader:                            ; preds = %181
  br label %.preheader1

.preheader1:                                      ; preds = %191, %.preheader1.preheader
  %indvars.iv249 = phi i64 [ %indvars.iv.next250, %191 ], [ 0, %.preheader1.preheader ]
  %183 = trunc nuw nsw i64 %indvars.iv249 to i32
  store i32 %183, ptr %2, align 4
  %exitcond254 = icmp ne i64 %indvars.iv249, 2
  br i1 %exitcond254, label %.preheader.preheader, label %192

.preheader.preheader:                             ; preds = %.preheader1
  br label %.preheader

.preheader:                                       ; preds = %185, %.preheader.preheader
  %indvars.iv245 = phi i64 [ %indvars.iv.next246, %185 ], [ 0, %.preheader.preheader ]
  %184 = trunc nuw nsw i64 %indvars.iv245 to i32
  store i32 %184, ptr %3, align 4
  %exitcond248 = icmp ne i64 %indvars.iv245, 2
  br i1 %exitcond248, label %185, label %191

185:                                              ; preds = %.preheader
  %186 = shl i64 %indvars.iv245, 6
  %187 = shl i64 %indvars.iv249, 3
  %188 = add nuw nsw i64 %186, %187
  %189 = add nuw nsw i64 %indvars.iv255, %188
  %190 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %189
  store i32 1, ptr %190, align 4
  %indvars.iv.next246 = add nuw nsw i64 %indvars.iv245, 1
  br label %.preheader, !llvm.loop !55

191:                                              ; preds = %.preheader
  %indvars.iv.next250 = add nuw nsw i64 %indvars.iv249, 1
  br label %.preheader1, !llvm.loop !56

192:                                              ; preds = %.preheader1
  %indvars.iv.next256 = add nuw nsw i64 %indvars.iv255, 1
  br label %181, !llvm.loop !57

193:                                              ; preds = %181
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 73, ptr %4, align 4
  store i32 0, ptr @kount, align 4
  %194 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %194, 0
  br i1 %.not, label %197, label %195

195:                                              ; preds = %193
  %196 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %196, ptr @n, align 4
  br label %198

197:                                              ; preds = %193
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %.pre = load i32, ptr @n, align 4
  br label %198

198:                                              ; preds = %197, %195
  %199 = phi i32 [ %.pre, %197 ], [ %196, %195 ]
  %200 = call i32 @Trial(i32 noundef %199)
  %.not16 = icmp eq i32 %200, 0
  br i1 %.not16, label %201, label %202

201:                                              ; preds = %198
  %puts17 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %205

202:                                              ; preds = %198
  %203 = load i32, ptr @kount, align 4
  %.not18 = icmp eq i32 %203, 2005
  br i1 %.not18, label %205, label %204

204:                                              ; preds = %202
  %puts19 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %205

205:                                              ; preds = %204, %202, %201
  %206 = load i32, ptr @n, align 4
  %207 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %206) #4
  %208 = load i32, ptr @kount, align 4
  %209 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %208) #4
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
