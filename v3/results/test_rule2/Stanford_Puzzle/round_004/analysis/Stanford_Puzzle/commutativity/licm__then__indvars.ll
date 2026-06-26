; ModuleID = 'results\test_rule2\Stanford_Puzzle\round_003\output.ll'
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
  %wide.trip.count = zext i32 %13 to i64
  br label %14

14:                                               ; preds = %23, %2
  %indvars.iv = phi i64 [ %indvars.iv.next, %23 ], [ 0, %2 ]
  %15 = trunc nuw nsw i64 %indvars.iv to i32
  %exitcond = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %24, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds [4 x i8], ptr %10, i64 %indvars.iv
  %18 = load i32, ptr %17, align 4
  %.not2 = icmp eq i32 %18, 0
  br i1 %.not2, label %23, label %19

19:                                               ; preds = %16
  %20 = add nsw i64 %12, %indvars.iv
  %21 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %20
  %22 = load i32, ptr %21, align 4
  %.not3 = icmp eq i32 %22, 0
  br i1 %.not3, label %23, label %24

23:                                               ; preds = %19, %16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %14, !llvm.loop !7

24:                                               ; preds = %19, %14
  %storemerge.lcssa = phi i32 [ %15, %19 ], [ %13, %14 ]
  %storemerge1 = phi i32 [ 0, %19 ], [ 1, %14 ]
  store i32 %storemerge.lcssa, ptr %5, align 4
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

14:                                               ; preds = %21, %2
  %indvars.iv3 = phi i64 [ %indvars.iv.next4, %21 ], [ 0, %2 ]
  %exitcond8 = icmp eq i64 %indvars.iv3, %wide.trip.count7
  br i1 %exitcond8, label %22, label %15

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
  %indvars.iv.next4 = add nuw nsw i64 %indvars.iv3, 1
  br label %14, !llvm.loop !9

22:                                               ; preds = %14
  %storemerge.lcssa.wide = phi i64 [ %indvars.iv3, %14 ]
  %.lcssa = phi i64 [ %7, %14 ]
  %23 = trunc nuw nsw i64 %storemerge.lcssa.wide to i32
  store i32 %23, ptr %5, align 4
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
  br label %32

32:                                               ; preds = %39, %22
  %indvars.iv = phi i64 [ %indvars.iv.next, %39 ], [ %31, %22 ]
  %33 = trunc nsw i64 %indvars.iv to i32
  %exitcond = icmp ne i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %34, label %.loopexit

34:                                               ; preds = %32
  %35 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %indvars.iv
  %36 = load i32, ptr %35, align 4
  %.not3 = icmp eq i32 %36, 0
  br i1 %.not3, label %37, label %39

37:                                               ; preds = %34
  %.lcssa2 = phi i32 [ %33, %34 ]
  %storemerge1.lcssa5.wide = phi i64 [ %indvars.iv, %34 ]
  store i32 %.lcssa2, ptr %5, align 4
  %38 = trunc nsw i64 %storemerge1.lcssa5.wide to i32
  br label %40

39:                                               ; preds = %34
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %32, !llvm.loop !10

.loopexit:                                        ; preds = %32
  store i32 %smax, ptr %5, align 4
  br label %40

40:                                               ; preds = %.loopexit, %37
  %storemerge2 = phi i32 [ %38, %37 ], [ 0, %.loopexit ]
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

14:                                               ; preds = %21, %2
  %indvars.iv = phi i64 [ %indvars.iv.next, %21 ], [ 0, %2 ]
  %exitcond = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %22, label %15

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
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %14, !llvm.loop !11

22:                                               ; preds = %14
  %storemerge.lcssa.wide = phi i64 [ %indvars.iv, %14 ]
  %.lcssa = phi i64 [ %7, %14 ]
  %23 = trunc nuw nsw i64 %storemerge.lcssa.wide to i32
  store i32 %23, ptr %5, align 4
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

10:                                               ; preds = %29, %1
  %indvars.iv = phi i64 [ %indvars.iv.next, %29 ], [ 0, %1 ]
  %11 = phi i32 [ %.promoted, %1 ], [ %30, %29 ]
  %12 = trunc nuw nsw i64 %indvars.iv to i32
  %exitcond = icmp ne i64 %indvars.iv, 13
  br i1 %exitcond, label %13, label %31

13:                                               ; preds = %10
  %14 = getelementptr inbounds [4 x i8], ptr @class, i64 %indvars.iv
  %15 = load i32, ptr %14, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %16
  %18 = load i32, ptr %17, align 4
  %.not = icmp eq i32 %18, 0
  br i1 %.not, label %29, label %19

19:                                               ; preds = %13
  %20 = trunc nuw nsw i64 %indvars.iv to i32
  %21 = call i32 @Fit(i32 noundef %20, i32 noundef %7)
  %.not2 = icmp eq i32 %21, 0
  br i1 %.not2, label %29, label %22

22:                                               ; preds = %19
  %23 = trunc nuw nsw i64 %indvars.iv to i32
  %24 = call i32 @Place(i32 noundef %23, i32 noundef %8)
  %25 = call i32 @Trial(i32 noundef %24)
  %.not3 = icmp ne i32 %25, 0
  %26 = icmp eq i32 %24, 0
  %or.cond = select i1 %.not3, i1 true, i1 %26
  br i1 %or.cond, label %31, label %27

27:                                               ; preds = %22
  %28 = trunc nuw nsw i64 %indvars.iv to i32
  call void @Remove(i32 noundef %28, i32 noundef %9)
  br label %29

29:                                               ; preds = %27, %19, %13
  %30 = phi i32 [ %24, %27 ], [ %11, %19 ], [ %11, %13 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %10, !llvm.loop !12

31:                                               ; preds = %22, %10
  %32 = phi i32 [ %24, %22 ], [ %11, %10 ]
  %storemerge.lcssa = phi i32 [ %12, %22 ], [ 13, %10 ]
  %storemerge1 = phi i32 [ 1, %22 ], [ 0, %10 ]
  store i32 %storemerge.lcssa, ptr %3, align 4
  store i32 %32, ptr %4, align 4
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
  %exitcond = icmp ne i64 %indvars.iv, 512
  br i1 %exitcond, label %7, label %.preheader31

.preheader31:                                     ; preds = %5
  %6 = trunc nuw nsw i64 512 to i32
  store i32 %6, ptr %4, align 4
  br label %9

7:                                                ; preds = %5
  %8 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %indvars.iv
  store i32 1, ptr %8, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %5, !llvm.loop !13

9:                                                ; preds = %20, %.preheader31
  %indvars.iv81 = phi i64 [ %indvars.iv.next82, %20 ], [ 1, %.preheader31 ]
  %exitcond84 = icmp ne i64 %indvars.iv81, 6
  br i1 %exitcond84, label %.preheader30, label %.preheader28

.preheader30:                                     ; preds = %9
  br label %11

.preheader28:                                     ; preds = %9
  %10 = trunc nuw nsw i64 6 to i32
  store i32 %10, ptr %1, align 4
  store i32 6, ptr %2, align 4
  store i32 6, ptr %3, align 4
  br label %21

11:                                               ; preds = %19, %.preheader30
  %indvars.iv76 = phi i64 [ %indvars.iv.next77, %19 ], [ 1, %.preheader30 ]
  %exitcond80 = icmp ne i64 %indvars.iv76, 6
  br i1 %exitcond80, label %.preheader29, label %20

.preheader29:                                     ; preds = %11
  %12 = shl i64 %indvars.iv76, 3
  %13 = add nuw nsw i64 %12, %indvars.iv81
  br label %14

14:                                               ; preds = %15, %.preheader29
  %indvars.iv71 = phi i64 [ %indvars.iv.next72, %15 ], [ 1, %.preheader29 ]
  %exitcond75 = icmp ne i64 %indvars.iv71, 6
  br i1 %exitcond75, label %15, label %19

15:                                               ; preds = %14
  %16 = shl i64 %indvars.iv71, 6
  %17 = add nuw nsw i64 %16, %13
  %18 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %17
  store i32 0, ptr %18, align 4
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1
  br label %14, !llvm.loop !14

19:                                               ; preds = %14
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv76, 1
  br label %11, !llvm.loop !15

20:                                               ; preds = %11
  %indvars.iv.next82 = add nuw nsw i64 %indvars.iv81, 1
  br label %9, !llvm.loop !16

21:                                               ; preds = %27, %.preheader28
  %indvars.iv89 = phi i64 [ %indvars.iv.next90, %27 ], [ 0, %.preheader28 ]
  %exitcond92 = icmp ne i64 %indvars.iv89, 13
  br i1 %exitcond92, label %.preheader27, label %.preheader26

.preheader27:                                     ; preds = %21
  %22 = getelementptr inbounds [2048 x i8], ptr @p, i64 %indvars.iv89
  br label %24

.preheader26:                                     ; preds = %21
  %23 = trunc nuw nsw i64 13 to i32
  store i32 %23, ptr %1, align 4
  store i32 512, ptr %4, align 4
  br label %28

24:                                               ; preds = %25, %.preheader27
  %indvars.iv85 = phi i64 [ %indvars.iv.next86, %25 ], [ 0, %.preheader27 ]
  %exitcond88 = icmp ne i64 %indvars.iv85, 512
  br i1 %exitcond88, label %25, label %27

25:                                               ; preds = %24
  %26 = getelementptr inbounds [4 x i8], ptr %22, i64 %indvars.iv85
  store i32 0, ptr %26, align 4
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 1
  br label %24, !llvm.loop !17

27:                                               ; preds = %24
  %indvars.iv.next90 = add nuw nsw i64 %indvars.iv89, 1
  br label %21, !llvm.loop !18

28:                                               ; preds = %38, %.preheader26
  %indvars.iv103 = phi i64 [ %indvars.iv.next104, %38 ], [ 0, %.preheader26 ]
  %exitcond106 = icmp ne i64 %indvars.iv103, 4
  br i1 %exitcond106, label %.preheader25, label %39

.preheader25:                                     ; preds = %28
  br label %29

29:                                               ; preds = %37, %.preheader25
  %indvars.iv98 = phi i64 [ %indvars.iv.next99, %37 ], [ 0, %.preheader25 ]
  %exitcond102 = icmp ne i64 %indvars.iv98, 2
  br i1 %exitcond102, label %.preheader24, label %38

.preheader24:                                     ; preds = %29
  %30 = shl i64 %indvars.iv98, 3
  %31 = add nuw nsw i64 %30, %indvars.iv103
  br label %32

32:                                               ; preds = %33, %.preheader24
  %indvars.iv93 = phi i64 [ %indvars.iv.next94, %33 ], [ 0, %.preheader24 ]
  %exitcond97 = icmp ne i64 %indvars.iv93, 1
  br i1 %exitcond97, label %33, label %37

33:                                               ; preds = %32
  %34 = shl i64 %indvars.iv93, 6
  %35 = add nuw nsw i64 %34, %31
  %36 = getelementptr inbounds [4 x i8], ptr @p, i64 %35
  store i32 1, ptr %36, align 4
  %indvars.iv.next94 = add nuw nsw i64 %indvars.iv93, 1
  br label %32, !llvm.loop !19

37:                                               ; preds = %32
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1
  br label %29, !llvm.loop !20

38:                                               ; preds = %29
  %indvars.iv.next104 = add nuw nsw i64 %indvars.iv103, 1
  br label %28, !llvm.loop !21

39:                                               ; preds = %28
  %40 = trunc nuw nsw i64 4 to i32
  store i32 %40, ptr %1, align 4
  store i32 2, ptr %2, align 4
  store i32 1, ptr %3, align 4
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %41

41:                                               ; preds = %51, %39
  %indvars.iv117 = phi i64 [ %indvars.iv.next118, %51 ], [ 0, %39 ]
  %exitcond120 = icmp ne i64 %indvars.iv117, 2
  br i1 %exitcond120, label %.preheader23, label %52

.preheader23:                                     ; preds = %41
  br label %42

42:                                               ; preds = %50, %.preheader23
  %indvars.iv112 = phi i64 [ %indvars.iv.next113, %50 ], [ 0, %.preheader23 ]
  %exitcond116 = icmp ne i64 %indvars.iv112, 1
  br i1 %exitcond116, label %.preheader22, label %51

.preheader22:                                     ; preds = %42
  %43 = shl i64 %indvars.iv112, 3
  %44 = add nuw nsw i64 %43, %indvars.iv117
  br label %45

45:                                               ; preds = %46, %.preheader22
  %indvars.iv107 = phi i64 [ %indvars.iv.next108, %46 ], [ 0, %.preheader22 ]
  %exitcond111 = icmp ne i64 %indvars.iv107, 4
  br i1 %exitcond111, label %46, label %50

46:                                               ; preds = %45
  %47 = shl i64 %indvars.iv107, 6
  %48 = add nuw nsw i64 %47, %44
  %49 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %48
  store i32 1, ptr %49, align 4
  %indvars.iv.next108 = add nuw nsw i64 %indvars.iv107, 1
  br label %45, !llvm.loop !22

50:                                               ; preds = %45
  %indvars.iv.next113 = add nuw nsw i64 %indvars.iv112, 1
  br label %42, !llvm.loop !23

51:                                               ; preds = %42
  %indvars.iv.next118 = add nuw nsw i64 %indvars.iv117, 1
  br label %41, !llvm.loop !24

52:                                               ; preds = %41
  %53 = trunc nuw nsw i64 2 to i32
  store i32 %53, ptr %1, align 4
  store i32 1, ptr %2, align 4
  store i32 4, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %54

54:                                               ; preds = %64, %52
  %indvars.iv131 = phi i64 [ %indvars.iv.next132, %64 ], [ 0, %52 ]
  %exitcond134 = icmp ne i64 %indvars.iv131, 1
  br i1 %exitcond134, label %.preheader21, label %65

.preheader21:                                     ; preds = %54
  br label %55

55:                                               ; preds = %63, %.preheader21
  %indvars.iv126 = phi i64 [ %indvars.iv.next127, %63 ], [ 0, %.preheader21 ]
  %exitcond130 = icmp ne i64 %indvars.iv126, 4
  br i1 %exitcond130, label %.preheader20, label %64

.preheader20:                                     ; preds = %55
  %56 = shl i64 %indvars.iv126, 3
  %57 = add nuw nsw i64 %56, %indvars.iv131
  br label %58

58:                                               ; preds = %59, %.preheader20
  %indvars.iv121 = phi i64 [ %indvars.iv.next122, %59 ], [ 0, %.preheader20 ]
  %exitcond125 = icmp ne i64 %indvars.iv121, 2
  br i1 %exitcond125, label %59, label %63

59:                                               ; preds = %58
  %60 = shl i64 %indvars.iv121, 6
  %61 = add nuw nsw i64 %60, %57
  %62 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %61
  store i32 1, ptr %62, align 4
  %indvars.iv.next122 = add nuw nsw i64 %indvars.iv121, 1
  br label %58, !llvm.loop !25

63:                                               ; preds = %58
  %indvars.iv.next127 = add nuw nsw i64 %indvars.iv126, 1
  br label %55, !llvm.loop !26

64:                                               ; preds = %55
  %indvars.iv.next132 = add nuw nsw i64 %indvars.iv131, 1
  br label %54, !llvm.loop !27

65:                                               ; preds = %54
  %66 = trunc nuw nsw i64 1 to i32
  store i32 %66, ptr %1, align 4
  store i32 4, ptr %2, align 4
  store i32 2, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %67

67:                                               ; preds = %77, %65
  %indvars.iv145 = phi i64 [ %indvars.iv.next146, %77 ], [ 0, %65 ]
  %exitcond148 = icmp ne i64 %indvars.iv145, 2
  br i1 %exitcond148, label %.preheader19, label %78

.preheader19:                                     ; preds = %67
  br label %68

68:                                               ; preds = %76, %.preheader19
  %indvars.iv140 = phi i64 [ %indvars.iv.next141, %76 ], [ 0, %.preheader19 ]
  %exitcond144 = icmp ne i64 %indvars.iv140, 4
  br i1 %exitcond144, label %.preheader18, label %77

.preheader18:                                     ; preds = %68
  %69 = shl i64 %indvars.iv140, 3
  %70 = add nuw nsw i64 %69, %indvars.iv145
  br label %71

71:                                               ; preds = %72, %.preheader18
  %indvars.iv135 = phi i64 [ %indvars.iv.next136, %72 ], [ 0, %.preheader18 ]
  %exitcond139 = icmp ne i64 %indvars.iv135, 1
  br i1 %exitcond139, label %72, label %76

72:                                               ; preds = %71
  %73 = shl i64 %indvars.iv135, 6
  %74 = add nuw nsw i64 %73, %70
  %75 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %74
  store i32 1, ptr %75, align 4
  %indvars.iv.next136 = add nuw nsw i64 %indvars.iv135, 1
  br label %71, !llvm.loop !28

76:                                               ; preds = %71
  %indvars.iv.next141 = add nuw nsw i64 %indvars.iv140, 1
  br label %68, !llvm.loop !29

77:                                               ; preds = %68
  %indvars.iv.next146 = add nuw nsw i64 %indvars.iv145, 1
  br label %67, !llvm.loop !30

78:                                               ; preds = %67
  %79 = trunc nuw nsw i64 2 to i32
  store i32 %79, ptr %1, align 4
  store i32 4, ptr %2, align 4
  store i32 1, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %80

80:                                               ; preds = %90, %78
  %indvars.iv159 = phi i64 [ %indvars.iv.next160, %90 ], [ 0, %78 ]
  %exitcond162 = icmp ne i64 %indvars.iv159, 4
  br i1 %exitcond162, label %.preheader17, label %91

.preheader17:                                     ; preds = %80
  br label %81

81:                                               ; preds = %89, %.preheader17
  %indvars.iv154 = phi i64 [ %indvars.iv.next155, %89 ], [ 0, %.preheader17 ]
  %exitcond158 = icmp ne i64 %indvars.iv154, 1
  br i1 %exitcond158, label %.preheader16, label %90

.preheader16:                                     ; preds = %81
  %82 = shl i64 %indvars.iv154, 3
  %83 = add nuw nsw i64 %82, %indvars.iv159
  br label %84

84:                                               ; preds = %85, %.preheader16
  %indvars.iv149 = phi i64 [ %indvars.iv.next150, %85 ], [ 0, %.preheader16 ]
  %exitcond153 = icmp ne i64 %indvars.iv149, 2
  br i1 %exitcond153, label %85, label %89

85:                                               ; preds = %84
  %86 = shl i64 %indvars.iv149, 6
  %87 = add nuw nsw i64 %86, %83
  %88 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %87
  store i32 1, ptr %88, align 4
  %indvars.iv.next150 = add nuw nsw i64 %indvars.iv149, 1
  br label %84, !llvm.loop !31

89:                                               ; preds = %84
  %indvars.iv.next155 = add nuw nsw i64 %indvars.iv154, 1
  br label %81, !llvm.loop !32

90:                                               ; preds = %81
  %indvars.iv.next160 = add nuw nsw i64 %indvars.iv159, 1
  br label %80, !llvm.loop !33

91:                                               ; preds = %80
  %92 = trunc nuw nsw i64 4 to i32
  store i32 %92, ptr %1, align 4
  store i32 1, ptr %2, align 4
  store i32 2, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %93

93:                                               ; preds = %103, %91
  %indvars.iv173 = phi i64 [ %indvars.iv.next174, %103 ], [ 0, %91 ]
  %exitcond176 = icmp ne i64 %indvars.iv173, 1
  br i1 %exitcond176, label %.preheader15, label %104

.preheader15:                                     ; preds = %93
  br label %94

94:                                               ; preds = %102, %.preheader15
  %indvars.iv168 = phi i64 [ %indvars.iv.next169, %102 ], [ 0, %.preheader15 ]
  %exitcond172 = icmp ne i64 %indvars.iv168, 2
  br i1 %exitcond172, label %.preheader14, label %103

.preheader14:                                     ; preds = %94
  %95 = shl i64 %indvars.iv168, 3
  %96 = add nuw nsw i64 %95, %indvars.iv173
  br label %97

97:                                               ; preds = %98, %.preheader14
  %indvars.iv163 = phi i64 [ %indvars.iv.next164, %98 ], [ 0, %.preheader14 ]
  %exitcond167 = icmp ne i64 %indvars.iv163, 4
  br i1 %exitcond167, label %98, label %102

98:                                               ; preds = %97
  %99 = shl i64 %indvars.iv163, 6
  %100 = add nuw nsw i64 %99, %96
  %101 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %100
  store i32 1, ptr %101, align 4
  %indvars.iv.next164 = add nuw nsw i64 %indvars.iv163, 1
  br label %97, !llvm.loop !34

102:                                              ; preds = %97
  %indvars.iv.next169 = add nuw nsw i64 %indvars.iv168, 1
  br label %94, !llvm.loop !35

103:                                              ; preds = %94
  %indvars.iv.next174 = add nuw nsw i64 %indvars.iv173, 1
  br label %93, !llvm.loop !36

104:                                              ; preds = %93
  %105 = trunc nuw nsw i64 1 to i32
  store i32 %105, ptr %1, align 4
  store i32 2, ptr %2, align 4
  store i32 4, ptr %3, align 4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %106

106:                                              ; preds = %116, %104
  %indvars.iv187 = phi i64 [ %indvars.iv.next188, %116 ], [ 0, %104 ]
  %exitcond190 = icmp ne i64 %indvars.iv187, 3
  br i1 %exitcond190, label %.preheader13, label %117

.preheader13:                                     ; preds = %106
  br label %107

107:                                              ; preds = %115, %.preheader13
  %indvars.iv182 = phi i64 [ %indvars.iv.next183, %115 ], [ 0, %.preheader13 ]
  %exitcond186 = icmp ne i64 %indvars.iv182, 1
  br i1 %exitcond186, label %.preheader12, label %116

.preheader12:                                     ; preds = %107
  %108 = shl i64 %indvars.iv182, 3
  %109 = add nuw nsw i64 %108, %indvars.iv187
  br label %110

110:                                              ; preds = %111, %.preheader12
  %indvars.iv177 = phi i64 [ %indvars.iv.next178, %111 ], [ 0, %.preheader12 ]
  %exitcond181 = icmp ne i64 %indvars.iv177, 1
  br i1 %exitcond181, label %111, label %115

111:                                              ; preds = %110
  %112 = shl i64 %indvars.iv177, 6
  %113 = add nuw nsw i64 %112, %109
  %114 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %113
  store i32 1, ptr %114, align 4
  %indvars.iv.next178 = add nuw nsw i64 %indvars.iv177, 1
  br label %110, !llvm.loop !37

115:                                              ; preds = %110
  %indvars.iv.next183 = add nuw nsw i64 %indvars.iv182, 1
  br label %107, !llvm.loop !38

116:                                              ; preds = %107
  %indvars.iv.next188 = add nuw nsw i64 %indvars.iv187, 1
  br label %106, !llvm.loop !39

117:                                              ; preds = %106
  %118 = trunc nuw nsw i64 3 to i32
  store i32 %118, ptr %1, align 4
  store i32 1, ptr %2, align 4
  store i32 1, ptr %3, align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %119

119:                                              ; preds = %129, %117
  %indvars.iv201 = phi i64 [ %indvars.iv.next202, %129 ], [ 0, %117 ]
  %exitcond204 = icmp ne i64 %indvars.iv201, 1
  br i1 %exitcond204, label %.preheader11, label %130

.preheader11:                                     ; preds = %119
  br label %120

120:                                              ; preds = %128, %.preheader11
  %indvars.iv196 = phi i64 [ %indvars.iv.next197, %128 ], [ 0, %.preheader11 ]
  %exitcond200 = icmp ne i64 %indvars.iv196, 3
  br i1 %exitcond200, label %.preheader10, label %129

.preheader10:                                     ; preds = %120
  %121 = shl i64 %indvars.iv196, 3
  %122 = add nuw nsw i64 %121, %indvars.iv201
  br label %123

123:                                              ; preds = %124, %.preheader10
  %indvars.iv191 = phi i64 [ %indvars.iv.next192, %124 ], [ 0, %.preheader10 ]
  %exitcond195 = icmp ne i64 %indvars.iv191, 1
  br i1 %exitcond195, label %124, label %128

124:                                              ; preds = %123
  %125 = shl i64 %indvars.iv191, 6
  %126 = add nuw nsw i64 %125, %122
  %127 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %126
  store i32 1, ptr %127, align 4
  %indvars.iv.next192 = add nuw nsw i64 %indvars.iv191, 1
  br label %123, !llvm.loop !40

128:                                              ; preds = %123
  %indvars.iv.next197 = add nuw nsw i64 %indvars.iv196, 1
  br label %120, !llvm.loop !41

129:                                              ; preds = %120
  %indvars.iv.next202 = add nuw nsw i64 %indvars.iv201, 1
  br label %119, !llvm.loop !42

130:                                              ; preds = %119
  %131 = trunc nuw nsw i64 1 to i32
  store i32 %131, ptr %1, align 4
  store i32 3, ptr %2, align 4
  store i32 1, ptr %3, align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %132

132:                                              ; preds = %142, %130
  %indvars.iv215 = phi i64 [ %indvars.iv.next216, %142 ], [ 0, %130 ]
  %exitcond218 = icmp ne i64 %indvars.iv215, 1
  br i1 %exitcond218, label %.preheader9, label %143

.preheader9:                                      ; preds = %132
  br label %133

133:                                              ; preds = %141, %.preheader9
  %indvars.iv210 = phi i64 [ %indvars.iv.next211, %141 ], [ 0, %.preheader9 ]
  %exitcond214 = icmp ne i64 %indvars.iv210, 1
  br i1 %exitcond214, label %.preheader8, label %142

.preheader8:                                      ; preds = %133
  %134 = shl i64 %indvars.iv210, 3
  %135 = add nuw nsw i64 %134, %indvars.iv215
  br label %136

136:                                              ; preds = %137, %.preheader8
  %indvars.iv205 = phi i64 [ %indvars.iv.next206, %137 ], [ 0, %.preheader8 ]
  %exitcond209 = icmp ne i64 %indvars.iv205, 3
  br i1 %exitcond209, label %137, label %141

137:                                              ; preds = %136
  %138 = shl i64 %indvars.iv205, 6
  %139 = add nuw nsw i64 %138, %135
  %140 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %139
  store i32 1, ptr %140, align 4
  %indvars.iv.next206 = add nuw nsw i64 %indvars.iv205, 1
  br label %136, !llvm.loop !43

141:                                              ; preds = %136
  %indvars.iv.next211 = add nuw nsw i64 %indvars.iv210, 1
  br label %133, !llvm.loop !44

142:                                              ; preds = %133
  %indvars.iv.next216 = add nuw nsw i64 %indvars.iv215, 1
  br label %132, !llvm.loop !45

143:                                              ; preds = %132
  %144 = trunc nuw nsw i64 1 to i32
  store i32 %144, ptr %1, align 4
  store i32 1, ptr %2, align 4
  store i32 3, ptr %3, align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %145

145:                                              ; preds = %155, %143
  %indvars.iv229 = phi i64 [ %indvars.iv.next230, %155 ], [ 0, %143 ]
  %exitcond232 = icmp ne i64 %indvars.iv229, 2
  br i1 %exitcond232, label %.preheader7, label %156

.preheader7:                                      ; preds = %145
  br label %146

146:                                              ; preds = %154, %.preheader7
  %indvars.iv224 = phi i64 [ %indvars.iv.next225, %154 ], [ 0, %.preheader7 ]
  %exitcond228 = icmp ne i64 %indvars.iv224, 2
  br i1 %exitcond228, label %.preheader6, label %155

.preheader6:                                      ; preds = %146
  %147 = shl i64 %indvars.iv224, 3
  %148 = add nuw nsw i64 %147, %indvars.iv229
  br label %149

149:                                              ; preds = %150, %.preheader6
  %indvars.iv219 = phi i64 [ %indvars.iv.next220, %150 ], [ 0, %.preheader6 ]
  %exitcond223 = icmp ne i64 %indvars.iv219, 1
  br i1 %exitcond223, label %150, label %154

150:                                              ; preds = %149
  %151 = shl i64 %indvars.iv219, 6
  %152 = add nuw nsw i64 %151, %148
  %153 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %152
  store i32 1, ptr %153, align 4
  %indvars.iv.next220 = add nuw nsw i64 %indvars.iv219, 1
  br label %149, !llvm.loop !46

154:                                              ; preds = %149
  %indvars.iv.next225 = add nuw nsw i64 %indvars.iv224, 1
  br label %146, !llvm.loop !47

155:                                              ; preds = %146
  %indvars.iv.next230 = add nuw nsw i64 %indvars.iv229, 1
  br label %145, !llvm.loop !48

156:                                              ; preds = %145
  %157 = trunc nuw nsw i64 2 to i32
  store i32 %157, ptr %1, align 4
  store i32 2, ptr %2, align 4
  store i32 1, ptr %3, align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %158

158:                                              ; preds = %168, %156
  %indvars.iv243 = phi i64 [ %indvars.iv.next244, %168 ], [ 0, %156 ]
  %exitcond246 = icmp ne i64 %indvars.iv243, 2
  br i1 %exitcond246, label %.preheader5, label %169

.preheader5:                                      ; preds = %158
  br label %159

159:                                              ; preds = %167, %.preheader5
  %indvars.iv238 = phi i64 [ %indvars.iv.next239, %167 ], [ 0, %.preheader5 ]
  %exitcond242 = icmp ne i64 %indvars.iv238, 1
  br i1 %exitcond242, label %.preheader4, label %168

.preheader4:                                      ; preds = %159
  %160 = shl i64 %indvars.iv238, 3
  %161 = add nuw nsw i64 %160, %indvars.iv243
  br label %162

162:                                              ; preds = %163, %.preheader4
  %indvars.iv233 = phi i64 [ %indvars.iv.next234, %163 ], [ 0, %.preheader4 ]
  %exitcond237 = icmp ne i64 %indvars.iv233, 2
  br i1 %exitcond237, label %163, label %167

163:                                              ; preds = %162
  %164 = shl i64 %indvars.iv233, 6
  %165 = add nuw nsw i64 %164, %161
  %166 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %165
  store i32 1, ptr %166, align 4
  %indvars.iv.next234 = add nuw nsw i64 %indvars.iv233, 1
  br label %162, !llvm.loop !49

167:                                              ; preds = %162
  %indvars.iv.next239 = add nuw nsw i64 %indvars.iv238, 1
  br label %159, !llvm.loop !50

168:                                              ; preds = %159
  %indvars.iv.next244 = add nuw nsw i64 %indvars.iv243, 1
  br label %158, !llvm.loop !51

169:                                              ; preds = %158
  %170 = trunc nuw nsw i64 2 to i32
  store i32 %170, ptr %1, align 4
  store i32 1, ptr %2, align 4
  store i32 2, ptr %3, align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %171

171:                                              ; preds = %181, %169
  %indvars.iv257 = phi i64 [ %indvars.iv.next258, %181 ], [ 0, %169 ]
  %exitcond260 = icmp ne i64 %indvars.iv257, 1
  br i1 %exitcond260, label %.preheader3, label %182

.preheader3:                                      ; preds = %171
  br label %172

172:                                              ; preds = %180, %.preheader3
  %indvars.iv252 = phi i64 [ %indvars.iv.next253, %180 ], [ 0, %.preheader3 ]
  %exitcond256 = icmp ne i64 %indvars.iv252, 2
  br i1 %exitcond256, label %.preheader2, label %181

.preheader2:                                      ; preds = %172
  %173 = shl i64 %indvars.iv252, 3
  %174 = add nuw nsw i64 %173, %indvars.iv257
  br label %175

175:                                              ; preds = %176, %.preheader2
  %indvars.iv247 = phi i64 [ %indvars.iv.next248, %176 ], [ 0, %.preheader2 ]
  %exitcond251 = icmp ne i64 %indvars.iv247, 2
  br i1 %exitcond251, label %176, label %180

176:                                              ; preds = %175
  %177 = shl i64 %indvars.iv247, 6
  %178 = add nuw nsw i64 %177, %174
  %179 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %178
  store i32 1, ptr %179, align 4
  %indvars.iv.next248 = add nuw nsw i64 %indvars.iv247, 1
  br label %175, !llvm.loop !52

180:                                              ; preds = %175
  %indvars.iv.next253 = add nuw nsw i64 %indvars.iv252, 1
  br label %172, !llvm.loop !53

181:                                              ; preds = %172
  %indvars.iv.next258 = add nuw nsw i64 %indvars.iv257, 1
  br label %171, !llvm.loop !54

182:                                              ; preds = %171
  %183 = trunc nuw nsw i64 1 to i32
  store i32 %183, ptr %1, align 4
  store i32 2, ptr %2, align 4
  store i32 2, ptr %3, align 4
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %184

184:                                              ; preds = %194, %182
  %indvars.iv271 = phi i64 [ %indvars.iv.next272, %194 ], [ 0, %182 ]
  %exitcond274 = icmp ne i64 %indvars.iv271, 2
  br i1 %exitcond274, label %.preheader1, label %195

.preheader1:                                      ; preds = %184
  br label %185

185:                                              ; preds = %193, %.preheader1
  %indvars.iv266 = phi i64 [ %indvars.iv.next267, %193 ], [ 0, %.preheader1 ]
  %exitcond270 = icmp ne i64 %indvars.iv266, 2
  br i1 %exitcond270, label %.preheader, label %194

.preheader:                                       ; preds = %185
  %186 = shl i64 %indvars.iv266, 3
  %187 = add nuw nsw i64 %186, %indvars.iv271
  br label %188

188:                                              ; preds = %189, %.preheader
  %indvars.iv261 = phi i64 [ %indvars.iv.next262, %189 ], [ 0, %.preheader ]
  %exitcond265 = icmp ne i64 %indvars.iv261, 2
  br i1 %exitcond265, label %189, label %193

189:                                              ; preds = %188
  %190 = shl i64 %indvars.iv261, 6
  %191 = add nuw nsw i64 %190, %187
  %192 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %191
  store i32 1, ptr %192, align 4
  %indvars.iv.next262 = add nuw nsw i64 %indvars.iv261, 1
  br label %188, !llvm.loop !55

193:                                              ; preds = %188
  %indvars.iv.next267 = add nuw nsw i64 %indvars.iv266, 1
  br label %185, !llvm.loop !56

194:                                              ; preds = %185
  %indvars.iv.next272 = add nuw nsw i64 %indvars.iv271, 1
  br label %184, !llvm.loop !57

195:                                              ; preds = %184
  %196 = trunc nuw nsw i64 2 to i32
  store i32 %196, ptr %1, align 4
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
  %197 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %197, 0
  br i1 %.not, label %201, label %198

198:                                              ; preds = %195
  %199 = load i32, ptr %4, align 4
  %200 = call i32 @Place(i32 noundef 0, i32 noundef %199)
  store i32 %200, ptr @n, align 4
  br label %202

201:                                              ; preds = %195
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %202

202:                                              ; preds = %201, %198
  %203 = load i32, ptr @n, align 4
  %204 = call i32 @Trial(i32 noundef %203)
  %.not16 = icmp eq i32 %204, 0
  br i1 %.not16, label %205, label %206

205:                                              ; preds = %202
  %puts17 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %209

206:                                              ; preds = %202
  %207 = load i32, ptr @kount, align 4
  %.not18 = icmp eq i32 %207, 2005
  br i1 %.not18, label %209, label %208

208:                                              ; preds = %206
  %puts19 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %209

209:                                              ; preds = %208, %206, %205
  %210 = load i32, ptr @n, align 4
  %211 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %210) #4
  %212 = load i32, ptr @kount, align 4
  %213 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %212) #4
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  br label %2

2:                                                ; preds = %3, %0
  %storemerge = phi i32 [ 0, %0 ], [ %4, %3 ]
  %exitcond = icmp ne i32 %storemerge, 100
  br i1 %exitcond, label %3, label %5

3:                                                ; preds = %2
  call void @Puzzle()
  %4 = add nuw nsw i32 %storemerge, 1
  br label %2, !llvm.loop !58

5:                                                ; preds = %2
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
