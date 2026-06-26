; ModuleID = 'results\test_rule2\Stanford_Puzzle\round_008\output.ll'
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
  %3 = sext i32 %1 to i64
  br label %4

4:                                                ; preds = %17, %2
  %indvars.iv = phi i64 [ %indvars.iv.next, %17 ], [ 0, %2 ]
  %5 = sext i32 %0 to i64
  %6 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %5
  %7 = load i32, ptr %6, align 4
  %8 = sext i32 %7 to i64
  %.not = icmp sgt i64 %indvars.iv, %8
  br i1 %.not, label %18, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds [2048 x i8], ptr @p, i64 %5
  %11 = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %indvars.iv
  %12 = load i32, ptr %11, align 4
  %.not2 = icmp eq i32 %12, 0
  br i1 %.not2, label %17, label %13

13:                                               ; preds = %9
  %14 = add nsw i64 %3, %indvars.iv
  %15 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %14
  %16 = load i32, ptr %15, align 4
  %.not3 = icmp eq i32 %16, 0
  br i1 %.not3, label %17, label %18

17:                                               ; preds = %13, %9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %4, !llvm.loop !7

18:                                               ; preds = %13, %4
  %storemerge1 = phi i32 [ 0, %13 ], [ 1, %4 ]
  ret i32 %storemerge1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Place(i32 noundef %0, i32 noundef %1) #0 {
  %3 = sext i32 %1 to i64
  br label %4

4:                                                ; preds = %16, %2
  %indvars.iv2 = phi i64 [ %indvars.iv.next3, %16 ], [ 0, %2 ]
  %5 = sext i32 %0 to i64
  %6 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %5
  %7 = load i32, ptr %6, align 4
  %8 = sext i32 %7 to i64
  %.not = icmp sgt i64 %indvars.iv2, %8
  br i1 %.not, label %17, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds [2048 x i8], ptr @p, i64 %5
  %11 = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %indvars.iv2
  %12 = load i32, ptr %11, align 4
  %.not4 = icmp eq i32 %12, 0
  br i1 %.not4, label %16, label %13

13:                                               ; preds = %9
  %14 = add nsw i64 %3, %indvars.iv2
  %15 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %14
  store i32 1, ptr %15, align 4
  br label %16

16:                                               ; preds = %13, %9
  %indvars.iv.next3 = add nuw nsw i64 %indvars.iv2, 1
  br label %4, !llvm.loop !9

17:                                               ; preds = %4
  %18 = sext i32 %0 to i64
  %19 = getelementptr inbounds [4 x i8], ptr @class, i64 %18
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

26:                                               ; preds = %32, %17
  %indvars.iv = phi i64 [ %indvars.iv.next, %32 ], [ %25, %17 ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %27

27:                                               ; preds = %26
  %28 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %indvars.iv
  %29 = load i32, ptr %28, align 4
  %.not3 = icmp eq i32 %29, 0
  br i1 %.not3, label %30, label %32

30:                                               ; preds = %27
  %indvars.iv.lcssa1 = phi i64 [ %indvars.iv, %27 ]
  %31 = trunc nsw i64 %indvars.iv.lcssa1 to i32
  br label %.loopexit

32:                                               ; preds = %27
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %26, !llvm.loop !10

.loopexit:                                        ; preds = %26, %30
  %storemerge2 = phi i32 [ %31, %30 ], [ 0, %26 ]
  ret i32 %storemerge2
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Remove(i32 noundef %0, i32 noundef %1) #0 {
  %3 = sext i32 %1 to i64
  br label %4

4:                                                ; preds = %16, %2
  %indvars.iv = phi i64 [ %indvars.iv.next, %16 ], [ 0, %2 ]
  %5 = sext i32 %0 to i64
  %6 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %5
  %7 = load i32, ptr %6, align 4
  %8 = sext i32 %7 to i64
  %.not = icmp sgt i64 %indvars.iv, %8
  br i1 %.not, label %17, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds [2048 x i8], ptr @p, i64 %5
  %11 = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %indvars.iv
  %12 = load i32, ptr %11, align 4
  %.not1 = icmp eq i32 %12, 0
  br i1 %.not1, label %16, label %13

13:                                               ; preds = %9
  %14 = add nsw i64 %3, %indvars.iv
  %15 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %14
  store i32 0, ptr %15, align 4
  br label %16

16:                                               ; preds = %13, %9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %4, !llvm.loop !11

17:                                               ; preds = %4
  %18 = sext i32 %0 to i64
  %19 = getelementptr inbounds [4 x i8], ptr @class, i64 %18
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
  %2 = load i32, ptr @kount, align 4
  %3 = add nsw i32 %2, 1
  store i32 %3, ptr @kount, align 4
  br label %4

4:                                                ; preds = %21, %1
  %indvars.iv = phi i64 [ %indvars.iv.next, %21 ], [ 0, %1 ]
  %exitcond = icmp ne i64 %indvars.iv, 13
  br i1 %exitcond, label %5, label %22

5:                                                ; preds = %4
  %6 = getelementptr inbounds nuw [4 x i8], ptr @class, i64 %indvars.iv
  %7 = load i32, ptr %6, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %8
  %10 = load i32, ptr %9, align 4
  %.not = icmp eq i32 %10, 0
  br i1 %.not, label %21, label %11

11:                                               ; preds = %5
  %12 = trunc nuw nsw i64 %indvars.iv to i32
  %13 = call i32 @Fit(i32 noundef %12, i32 noundef %0)
  %.not2 = icmp eq i32 %13, 0
  br i1 %.not2, label %21, label %14

14:                                               ; preds = %11
  %15 = trunc nuw nsw i64 %indvars.iv to i32
  %16 = call i32 @Place(i32 noundef %15, i32 noundef %0)
  %17 = call i32 @Trial(i32 noundef %16)
  %.not3 = icmp ne i32 %17, 0
  %18 = icmp eq i32 %16, 0
  %or.cond = or i1 %.not3, %18
  br i1 %or.cond, label %22, label %19

19:                                               ; preds = %14
  %20 = trunc nuw nsw i64 %indvars.iv to i32
  call void @Remove(i32 noundef %20, i32 noundef %0)
  br label %21

21:                                               ; preds = %19, %11, %5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %4, !llvm.loop !12

22:                                               ; preds = %14, %4
  %storemerge1 = phi i32 [ 1, %14 ], [ 0, %4 ]
  ret i32 %storemerge1
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Puzzle() #0 {
  br label %1

1:                                                ; preds = %2, %0
  %indvars.iv = phi i64 [ %indvars.iv.next, %2 ], [ 0, %0 ]
  %exitcond = icmp ne i64 %indvars.iv, 512
  br i1 %exitcond, label %2, label %.preheader31

2:                                                ; preds = %1
  %3 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %indvars.iv
  store i32 1, ptr %3, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %1, !llvm.loop !13

.preheader31:                                     ; preds = %1, %11
  %indvars.iv14 = phi i64 [ %indvars.iv.next15, %11 ], [ 1, %1 ]
  %exitcond17 = icmp ne i64 %indvars.iv14, 6
  br i1 %exitcond17, label %.preheader30, label %.preheader28

.preheader30:                                     ; preds = %.preheader31, %10
  %indvars.iv10 = phi i64 [ %indvars.iv.next11, %10 ], [ 1, %.preheader31 ]
  %exitcond13 = icmp ne i64 %indvars.iv10, 6
  br i1 %exitcond13, label %.preheader29, label %11

.preheader29:                                     ; preds = %.preheader30, %4
  %indvars.iv6 = phi i64 [ %indvars.iv.next7, %4 ], [ 1, %.preheader30 ]
  %exitcond9 = icmp ne i64 %indvars.iv6, 6
  br i1 %exitcond9, label %4, label %10

4:                                                ; preds = %.preheader29
  %5 = shl nuw nsw i64 %indvars.iv6, 6
  %6 = shl nuw nsw i64 %indvars.iv10, 3
  %7 = or disjoint i64 %5, %6
  %8 = or disjoint i64 %indvars.iv14, %7
  %9 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %8
  store i32 0, ptr %9, align 4
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1
  br label %.preheader29, !llvm.loop !14

10:                                               ; preds = %.preheader29
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1
  br label %.preheader30, !llvm.loop !15

11:                                               ; preds = %.preheader30
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14, 1
  br label %.preheader31, !llvm.loop !16

.preheader28:                                     ; preds = %.preheader31, %15
  %indvars.iv22 = phi i64 [ %indvars.iv.next23, %15 ], [ 0, %.preheader31 ]
  %exitcond25 = icmp ne i64 %indvars.iv22, 13
  br i1 %exitcond25, label %.preheader27, label %.preheader26

.preheader27:                                     ; preds = %.preheader28, %12
  %indvars.iv18 = phi i64 [ %indvars.iv.next19, %12 ], [ 0, %.preheader28 ]
  %exitcond21 = icmp ne i64 %indvars.iv18, 512
  br i1 %exitcond21, label %12, label %15

12:                                               ; preds = %.preheader27
  %13 = getelementptr inbounds nuw [2048 x i8], ptr @p, i64 %indvars.iv22
  %14 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %indvars.iv18
  store i32 0, ptr %14, align 4
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1
  br label %.preheader27, !llvm.loop !17

15:                                               ; preds = %.preheader27
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1
  br label %.preheader28, !llvm.loop !18

.preheader26:                                     ; preds = %.preheader28, %21
  %indvars.iv30 = phi i64 [ %indvars.iv.next31, %21 ], [ 0, %.preheader28 ]
  %exitcond33 = icmp ne i64 %indvars.iv30, 4
  br i1 %exitcond33, label %.preheader25, label %22

.preheader25:                                     ; preds = %.preheader26, %20
  %indvars.iv26 = phi i64 [ %indvars.iv.next27, %20 ], [ 0, %.preheader26 ]
  %exitcond29 = icmp ne i64 %indvars.iv26, 2
  br i1 %exitcond29, label %.preheader24, label %21

.preheader24:                                     ; preds = %.preheader25, %16
  %storemerge45 = phi i1 [ false, %16 ], [ true, %.preheader25 ]
  br i1 %storemerge45, label %16, label %20

16:                                               ; preds = %.preheader24
  %17 = shl nuw nsw i64 %indvars.iv26, 3
  %18 = or disjoint i64 %indvars.iv30, %17
  %19 = getelementptr inbounds nuw [4 x i8], ptr @p, i64 %18
  store i32 1, ptr %19, align 4
  br label %.preheader24, !llvm.loop !19

20:                                               ; preds = %.preheader24
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1
  br label %.preheader25, !llvm.loop !20

21:                                               ; preds = %.preheader25
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1
  br label %.preheader26, !llvm.loop !21

22:                                               ; preds = %.preheader26
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %23

23:                                               ; preds = %29, %22
  %indvars.iv38 = phi i64 [ %indvars.iv.next39, %29 ], [ 0, %22 ]
  %exitcond41 = icmp ne i64 %indvars.iv38, 2
  br i1 %exitcond41, label %.preheader23, label %30

.preheader23:                                     ; preds = %.preheader22, %23
  %24 = phi i1 [ true, %23 ], [ false, %.preheader22 ]
  br i1 %24, label %.preheader22, label %29

.preheader22:                                     ; preds = %.preheader23, %25
  %indvars.iv34 = phi i64 [ %indvars.iv.next35, %25 ], [ 0, %.preheader23 ]
  %exitcond37 = icmp ne i64 %indvars.iv34, 4
  br i1 %exitcond37, label %25, label %.preheader23, !llvm.loop !22

25:                                               ; preds = %.preheader22
  %26 = shl nuw nsw i64 %indvars.iv34, 6
  %27 = or disjoint i64 %indvars.iv38, %26
  %28 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %27
  store i32 1, ptr %28, align 4
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1
  br label %.preheader22, !llvm.loop !23

29:                                               ; preds = %.preheader23
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1
  br label %23, !llvm.loop !24

30:                                               ; preds = %23
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %.loopexit4

.loopexit4:                                       ; preds = %.preheader21, %30
  %31 = phi i1 [ true, %30 ], [ false, %.preheader21 ]
  br i1 %31, label %.preheader21, label %38

.preheader21:                                     ; preds = %.loopexit4, %37
  %indvars.iv46 = phi i64 [ %indvars.iv.next47, %37 ], [ 0, %.loopexit4 ]
  %exitcond49 = icmp ne i64 %indvars.iv46, 4
  br i1 %exitcond49, label %.preheader20, label %.loopexit4, !llvm.loop !25

.preheader20:                                     ; preds = %.preheader21, %32
  %indvars.iv42 = phi i64 [ %indvars.iv.next43, %32 ], [ 0, %.preheader21 ]
  %exitcond45 = icmp ne i64 %indvars.iv42, 2
  br i1 %exitcond45, label %32, label %37

32:                                               ; preds = %.preheader20
  %33 = shl nuw nsw i64 %indvars.iv42, 6
  %34 = shl nuw nsw i64 %indvars.iv46, 3
  %35 = or disjoint i64 %33, %34
  %36 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %35
  store i32 1, ptr %36, align 4
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1
  br label %.preheader20, !llvm.loop !26

37:                                               ; preds = %.preheader20
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1
  br label %.preheader21, !llvm.loop !27

38:                                               ; preds = %.loopexit4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %39

39:                                               ; preds = %45, %38
  %indvars.iv54 = phi i64 [ %indvars.iv.next55, %45 ], [ 0, %38 ]
  %exitcond57 = icmp ne i64 %indvars.iv54, 2
  br i1 %exitcond57, label %.preheader19, label %46

.preheader19:                                     ; preds = %39, %44
  %indvars.iv50 = phi i64 [ %indvars.iv.next51, %44 ], [ 0, %39 ]
  %exitcond53 = icmp ne i64 %indvars.iv50, 4
  br i1 %exitcond53, label %.preheader18, label %45

.preheader18:                                     ; preds = %.preheader19, %40
  %storemerge39 = phi i1 [ false, %40 ], [ true, %.preheader19 ]
  br i1 %storemerge39, label %40, label %44

40:                                               ; preds = %.preheader18
  %41 = shl nuw nsw i64 %indvars.iv50, 3
  %42 = or disjoint i64 %indvars.iv54, %41
  %43 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %42
  store i32 1, ptr %43, align 4
  br label %.preheader18, !llvm.loop !28

44:                                               ; preds = %.preheader18
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1
  br label %.preheader19, !llvm.loop !29

45:                                               ; preds = %.preheader19
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1
  br label %39, !llvm.loop !30

46:                                               ; preds = %39
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %47

47:                                               ; preds = %53, %46
  %indvars.iv62 = phi i64 [ %indvars.iv.next63, %53 ], [ 0, %46 ]
  %exitcond65 = icmp ne i64 %indvars.iv62, 4
  br i1 %exitcond65, label %.preheader17, label %54

.preheader17:                                     ; preds = %.preheader16, %47
  %48 = phi i1 [ true, %47 ], [ false, %.preheader16 ]
  br i1 %48, label %.preheader16, label %53

.preheader16:                                     ; preds = %.preheader17, %49
  %indvars.iv58 = phi i64 [ %indvars.iv.next59, %49 ], [ 0, %.preheader17 ]
  %exitcond61 = icmp ne i64 %indvars.iv58, 2
  br i1 %exitcond61, label %49, label %.preheader17, !llvm.loop !31

49:                                               ; preds = %.preheader16
  %50 = shl nuw nsw i64 %indvars.iv58, 6
  %51 = or disjoint i64 %indvars.iv62, %50
  %52 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %51
  store i32 1, ptr %52, align 4
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1
  br label %.preheader16, !llvm.loop !32

53:                                               ; preds = %.preheader17
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 1
  br label %47, !llvm.loop !33

54:                                               ; preds = %47
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %.loopexit3

.loopexit3:                                       ; preds = %.preheader15, %54
  %55 = phi i1 [ true, %54 ], [ false, %.preheader15 ]
  br i1 %55, label %.preheader15, label %62

.preheader15:                                     ; preds = %.loopexit3, %61
  %indvars.iv70 = phi i64 [ %indvars.iv.next71, %61 ], [ 0, %.loopexit3 ]
  %exitcond73 = icmp ne i64 %indvars.iv70, 2
  br i1 %exitcond73, label %.preheader14, label %.loopexit3, !llvm.loop !34

.preheader14:                                     ; preds = %.preheader15, %56
  %indvars.iv66 = phi i64 [ %indvars.iv.next67, %56 ], [ 0, %.preheader15 ]
  %exitcond69 = icmp ne i64 %indvars.iv66, 4
  br i1 %exitcond69, label %56, label %61

56:                                               ; preds = %.preheader14
  %57 = shl nuw nsw i64 %indvars.iv66, 6
  %58 = shl nuw nsw i64 %indvars.iv70, 3
  %59 = or disjoint i64 %57, %58
  %60 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %59
  store i32 1, ptr %60, align 4
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1
  br label %.preheader14, !llvm.loop !35

61:                                               ; preds = %.preheader14
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70, 1
  br label %.preheader15, !llvm.loop !36

62:                                               ; preds = %.loopexit3
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %63

63:                                               ; preds = %67, %62
  %indvars.iv74 = phi i64 [ %indvars.iv.next75, %67 ], [ 0, %62 ]
  %exitcond77 = icmp ne i64 %indvars.iv74, 3
  br i1 %exitcond77, label %.preheader13, label %68

.preheader13:                                     ; preds = %.preheader12, %63
  %64 = phi i1 [ true, %63 ], [ false, %.preheader12 ]
  br i1 %64, label %.preheader12, label %67

.preheader12:                                     ; preds = %.preheader13, %65
  %storemerge33 = phi i1 [ false, %65 ], [ true, %.preheader13 ]
  br i1 %storemerge33, label %65, label %.preheader13, !llvm.loop !37

65:                                               ; preds = %.preheader12
  %66 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %indvars.iv74
  store i32 1, ptr %66, align 4
  br label %.preheader12, !llvm.loop !38

67:                                               ; preds = %.preheader13
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1
  br label %63, !llvm.loop !39

68:                                               ; preds = %63
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %.loopexit2

.loopexit2:                                       ; preds = %.preheader11, %68
  %69 = phi i1 [ true, %68 ], [ false, %.preheader11 ]
  br i1 %69, label %.preheader11, label %74

.preheader11:                                     ; preds = %.loopexit2, %73
  %indvars.iv78 = phi i64 [ %indvars.iv.next79, %73 ], [ 0, %.loopexit2 ]
  %exitcond81 = icmp ne i64 %indvars.iv78, 3
  br i1 %exitcond81, label %.preheader10, label %.loopexit2, !llvm.loop !40

.preheader10:                                     ; preds = %.preheader11, %70
  %storemerge31 = phi i1 [ false, %70 ], [ true, %.preheader11 ]
  br i1 %storemerge31, label %70, label %73

70:                                               ; preds = %.preheader10
  %71 = shl nuw nsw i64 %indvars.iv78, 3
  %72 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %71
  store i32 1, ptr %72, align 4
  br label %.preheader10, !llvm.loop !41

73:                                               ; preds = %.preheader10
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1
  br label %.preheader11, !llvm.loop !42

74:                                               ; preds = %.loopexit2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %.loopexit1

.loopexit1:                                       ; preds = %.preheader9, %74
  %75 = phi i1 [ true, %74 ], [ false, %.preheader9 ]
  br i1 %75, label %.preheader9, label %80

.preheader9:                                      ; preds = %.preheader8, %.loopexit1
  %76 = phi i1 [ true, %.loopexit1 ], [ false, %.preheader8 ]
  br i1 %76, label %.preheader8, label %.loopexit1, !llvm.loop !43

.preheader8:                                      ; preds = %.preheader9, %77
  %indvars.iv82 = phi i64 [ %indvars.iv.next83, %77 ], [ 0, %.preheader9 ]
  %exitcond85 = icmp ne i64 %indvars.iv82, 3
  br i1 %exitcond85, label %77, label %.preheader9, !llvm.loop !44

77:                                               ; preds = %.preheader8
  %78 = shl nuw nsw i64 %indvars.iv82, 6
  %79 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %78
  store i32 1, ptr %79, align 4
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 1
  br label %.preheader8, !llvm.loop !45

80:                                               ; preds = %.loopexit1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %81

81:                                               ; preds = %87, %80
  %indvars.iv90 = phi i64 [ %indvars.iv.next91, %87 ], [ 0, %80 ]
  %exitcond93 = icmp ne i64 %indvars.iv90, 2
  br i1 %exitcond93, label %.preheader7, label %88

.preheader7:                                      ; preds = %81, %86
  %indvars.iv86 = phi i64 [ %indvars.iv.next87, %86 ], [ 0, %81 ]
  %exitcond89 = icmp ne i64 %indvars.iv86, 2
  br i1 %exitcond89, label %.preheader6, label %87

.preheader6:                                      ; preds = %.preheader7, %82
  %storemerge27 = phi i1 [ false, %82 ], [ true, %.preheader7 ]
  br i1 %storemerge27, label %82, label %86

82:                                               ; preds = %.preheader6
  %83 = shl nuw nsw i64 %indvars.iv86, 3
  %84 = or disjoint i64 %indvars.iv90, %83
  %85 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %84
  store i32 1, ptr %85, align 4
  br label %.preheader6, !llvm.loop !46

86:                                               ; preds = %.preheader6
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1
  br label %.preheader7, !llvm.loop !47

87:                                               ; preds = %.preheader7
  %indvars.iv.next91 = add nuw nsw i64 %indvars.iv90, 1
  br label %81, !llvm.loop !48

88:                                               ; preds = %81
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %89

89:                                               ; preds = %95, %88
  %indvars.iv98 = phi i64 [ %indvars.iv.next99, %95 ], [ 0, %88 ]
  %exitcond101 = icmp ne i64 %indvars.iv98, 2
  br i1 %exitcond101, label %.preheader5, label %96

.preheader5:                                      ; preds = %.preheader4, %89
  %90 = phi i1 [ true, %89 ], [ false, %.preheader4 ]
  br i1 %90, label %.preheader4, label %95

.preheader4:                                      ; preds = %.preheader5, %91
  %indvars.iv94 = phi i64 [ %indvars.iv.next95, %91 ], [ 0, %.preheader5 ]
  %exitcond97 = icmp ne i64 %indvars.iv94, 2
  br i1 %exitcond97, label %91, label %.preheader5, !llvm.loop !49

91:                                               ; preds = %.preheader4
  %92 = shl nuw nsw i64 %indvars.iv94, 6
  %93 = or disjoint i64 %indvars.iv98, %92
  %94 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %93
  store i32 1, ptr %94, align 4
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 1
  br label %.preheader4, !llvm.loop !50

95:                                               ; preds = %.preheader5
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1
  br label %89, !llvm.loop !51

96:                                               ; preds = %89
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader3, %96
  %97 = phi i1 [ true, %96 ], [ false, %.preheader3 ]
  br i1 %97, label %.preheader3, label %104

.preheader3:                                      ; preds = %.loopexit, %103
  %indvars.iv106 = phi i64 [ %indvars.iv.next107, %103 ], [ 0, %.loopexit ]
  %exitcond109 = icmp ne i64 %indvars.iv106, 2
  br i1 %exitcond109, label %.preheader2, label %.loopexit, !llvm.loop !52

.preheader2:                                      ; preds = %.preheader3, %98
  %indvars.iv102 = phi i64 [ %indvars.iv.next103, %98 ], [ 0, %.preheader3 ]
  %exitcond105 = icmp ne i64 %indvars.iv102, 2
  br i1 %exitcond105, label %98, label %103

98:                                               ; preds = %.preheader2
  %99 = shl nuw nsw i64 %indvars.iv102, 6
  %100 = shl nuw nsw i64 %indvars.iv106, 3
  %101 = or disjoint i64 %99, %100
  %102 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %101
  store i32 1, ptr %102, align 4
  %indvars.iv.next103 = add nuw nsw i64 %indvars.iv102, 1
  br label %.preheader2, !llvm.loop !53

103:                                              ; preds = %.preheader2
  %indvars.iv.next107 = add nuw nsw i64 %indvars.iv106, 1
  br label %.preheader3, !llvm.loop !54

104:                                              ; preds = %.loopexit
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %105

105:                                              ; preds = %113, %104
  %indvars.iv118 = phi i64 [ %indvars.iv.next119, %113 ], [ 0, %104 ]
  %exitcond121 = icmp ne i64 %indvars.iv118, 2
  br i1 %exitcond121, label %.preheader1, label %114

.preheader1:                                      ; preds = %105, %112
  %indvars.iv114 = phi i64 [ %indvars.iv.next115, %112 ], [ 0, %105 ]
  %exitcond117 = icmp ne i64 %indvars.iv114, 2
  br i1 %exitcond117, label %.preheader, label %113

.preheader:                                       ; preds = %.preheader1, %106
  %indvars.iv110 = phi i64 [ %indvars.iv.next111, %106 ], [ 0, %.preheader1 ]
  %exitcond113 = icmp ne i64 %indvars.iv110, 2
  br i1 %exitcond113, label %106, label %112

106:                                              ; preds = %.preheader
  %107 = shl nuw nsw i64 %indvars.iv110, 6
  %108 = shl nuw nsw i64 %indvars.iv114, 3
  %109 = or disjoint i64 %107, %108
  %110 = or disjoint i64 %indvars.iv118, %109
  %111 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %110
  store i32 1, ptr %111, align 4
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110, 1
  br label %.preheader, !llvm.loop !55

112:                                              ; preds = %.preheader
  %indvars.iv.next115 = add nuw nsw i64 %indvars.iv114, 1
  br label %.preheader1, !llvm.loop !56

113:                                              ; preds = %.preheader1
  %indvars.iv.next119 = add nuw nsw i64 %indvars.iv118, 1
  br label %105, !llvm.loop !57

114:                                              ; preds = %105
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 0, ptr @kount, align 4
  %115 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %115, 0
  br i1 %.not, label %118, label %116

116:                                              ; preds = %114
  %117 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %117, ptr @n, align 4
  br label %119

118:                                              ; preds = %114
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %119

119:                                              ; preds = %118, %116
  %120 = load i32, ptr @n, align 4
  %121 = call i32 @Trial(i32 noundef %120)
  %.not16 = icmp eq i32 %121, 0
  br i1 %.not16, label %122, label %123

122:                                              ; preds = %119
  %puts17 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %126

123:                                              ; preds = %119
  %124 = load i32, ptr @kount, align 4
  %.not18 = icmp eq i32 %124, 2005
  br i1 %.not18, label %126, label %125

125:                                              ; preds = %123
  %puts19 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %126

126:                                              ; preds = %125, %123, %122
  %127 = load i32, ptr @n, align 4
  %128 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %127) #4
  %129 = load i32, ptr @kount, align 4
  %130 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %129) #4
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %2, %0
  %storemerge = phi i32 [ 0, %0 ], [ %3, %2 ]
  %exitcond = icmp ne i32 %storemerge, 100
  br i1 %exitcond, label %2, label %4

2:                                                ; preds = %1
  call void @Puzzle()
  %3 = add nuw nsw i32 %storemerge, 1
  br label %1, !llvm.loop !58

4:                                                ; preds = %1
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
