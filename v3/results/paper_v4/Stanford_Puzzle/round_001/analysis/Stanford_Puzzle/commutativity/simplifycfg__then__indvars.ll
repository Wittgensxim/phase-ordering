; ModuleID = 'results\paper_v4\Stanford_Puzzle\round_000\output.ll'
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
  %.phi.trans.insert = sext i32 %0 to i64
  %.phi.trans.insert1 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert1, align 4
  %3 = sext i32 %1 to i64
  %smax = call i32 @llvm.smax.i32(i32 %.pre, i32 -1)
  %4 = add i32 %smax, 1
  %wide.trip.count = zext i32 %4 to i64
  br label %5

5:                                                ; preds = %14, %2
  %indvars.iv = phi i64 [ %indvars.iv.next, %14 ], [ 0, %2 ]
  %exitcond = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %15, label %6

6:                                                ; preds = %5
  %7 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  %8 = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv
  %9 = load i32, ptr %8, align 4
  %.not2 = icmp eq i32 %9, 0
  br i1 %.not2, label %14, label %10

10:                                               ; preds = %6
  %11 = add nsw i64 %3, %indvars.iv
  %12 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %11
  %13 = load i32, ptr %12, align 4
  %.not3 = icmp eq i32 %13, 0
  br i1 %.not3, label %14, label %15

14:                                               ; preds = %10, %6
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %5, !llvm.loop !7

15:                                               ; preds = %5, %10
  %16 = phi i32 [ 0, %10 ], [ 1, %5 ]
  ret i32 %16
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Place(i32 noundef %0, i32 noundef %1) #0 {
  %.phi.trans.insert = sext i32 %0 to i64
  %.phi.trans.insert1 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert1, align 4
  %3 = sext i32 %1 to i64
  %smax = call i32 @llvm.smax.i32(i32 %.pre, i32 -1)
  %4 = add i32 %smax, 1
  %wide.trip.count = zext i32 %4 to i64
  br label %5

5:                                                ; preds = %13, %2
  %indvars.iv = phi i64 [ %indvars.iv.next, %13 ], [ 0, %2 ]
  %exitcond = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %14, label %6

6:                                                ; preds = %5
  %7 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  %8 = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv
  %9 = load i32, ptr %8, align 4
  %.not3 = icmp eq i32 %9, 0
  br i1 %.not3, label %13, label %10

10:                                               ; preds = %6
  %11 = add nsw i64 %3, %indvars.iv
  %12 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %11
  store i32 1, ptr %12, align 4
  br label %13

13:                                               ; preds = %10, %6
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %5, !llvm.loop !9

14:                                               ; preds = %5
  %15 = getelementptr inbounds [4 x i8], ptr @class, i64 %.phi.trans.insert
  %16 = load i32, ptr %15, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %17
  %19 = load i32, ptr %18, align 4
  %20 = add nsw i32 %19, -1
  store i32 %20, ptr %18, align 4
  %smax5 = call i32 @llvm.smax.i32(i32 %1, i32 512)
  %wide.trip.count6 = sext i32 %smax5 to i64
  br label %21

21:                                               ; preds = %26, %14
  %indvars.iv2 = phi i64 [ %indvars.iv.next3, %26 ], [ %3, %14 ]
  %exitcond7 = icmp ne i64 %indvars.iv2, %wide.trip.count6
  br i1 %exitcond7, label %22, label %27

22:                                               ; preds = %21
  %23 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %indvars.iv2
  %24 = load i32, ptr %23, align 4
  %.not2 = icmp eq i32 %24, 0
  %25 = trunc nsw i64 %indvars.iv2 to i32
  br i1 %.not2, label %27, label %26

26:                                               ; preds = %22
  %indvars.iv.next3 = add nsw i64 %indvars.iv2, 1
  br label %21, !llvm.loop !10

27:                                               ; preds = %21, %22
  %28 = phi i32 [ %25, %22 ], [ 0, %21 ]
  ret i32 %28
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Remove(i32 noundef %0, i32 noundef %1) #0 {
  %.phi.trans.insert = sext i32 %0 to i64
  %.phi.trans.insert1 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert1, align 4
  %3 = sext i32 %1 to i64
  %smax = call i32 @llvm.smax.i32(i32 %.pre, i32 -1)
  %4 = add i32 %smax, 1
  %wide.trip.count = zext i32 %4 to i64
  br label %5

5:                                                ; preds = %13, %2
  %indvars.iv = phi i64 [ %indvars.iv.next, %13 ], [ 0, %2 ]
  %exitcond = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %14, label %6

6:                                                ; preds = %5
  %7 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  %8 = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv
  %9 = load i32, ptr %8, align 4
  %.not2 = icmp eq i32 %9, 0
  br i1 %.not2, label %13, label %10

10:                                               ; preds = %6
  %11 = add nsw i64 %3, %indvars.iv
  %12 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %11
  store i32 0, ptr %12, align 4
  br label %13

13:                                               ; preds = %10, %6
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %5, !llvm.loop !11

14:                                               ; preds = %5
  %15 = getelementptr inbounds [4 x i8], ptr @class, i64 %.phi.trans.insert
  %16 = load i32, ptr %15, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %17
  %19 = load i32, ptr %18, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, ptr %18, align 4
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
  %.not1 = icmp eq i32 %13, 0
  br i1 %.not1, label %21, label %14

14:                                               ; preds = %11
  %15 = trunc nuw nsw i64 %indvars.iv to i32
  %16 = call i32 @Place(i32 noundef %15, i32 noundef %0)
  %17 = call i32 @Trial(i32 noundef %16)
  %.not2 = icmp ne i32 %17, 0
  %18 = icmp eq i32 %16, 0
  %or.cond = or i1 %.not2, %18
  br i1 %or.cond, label %22, label %19

19:                                               ; preds = %14
  %20 = trunc nuw nsw i64 %indvars.iv to i32
  call void @Remove(i32 noundef %20, i32 noundef %0)
  br label %21

21:                                               ; preds = %11, %19, %5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %4, !llvm.loop !12

22:                                               ; preds = %4, %14
  %23 = phi i32 [ 1, %14 ], [ 0, %4 ]
  ret i32 %23
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Puzzle() #0 {
  br label %1

1:                                                ; preds = %2, %0
  %indvars.iv = phi i64 [ %indvars.iv.next, %2 ], [ 0, %0 ]
  %exitcond = icmp ne i64 %indvars.iv, 512
  br i1 %exitcond, label %2, label %.preheader40

.preheader40:                                     ; preds = %1
  br label %4

2:                                                ; preds = %1
  %3 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %indvars.iv
  store i32 1, ptr %3, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %1, !llvm.loop !13

4:                                                ; preds = %.preheader40, %14
  %indvars.iv50 = phi i64 [ 1, %.preheader40 ], [ %indvars.iv.next51, %14 ]
  %exitcond53 = icmp ne i64 %indvars.iv50, 6
  br i1 %exitcond53, label %.preheader39, label %.preheader37

.preheader39:                                     ; preds = %4
  br label %5

.preheader37:                                     ; preds = %4
  br label %15

5:                                                ; preds = %.preheader39, %13
  %indvars.iv46 = phi i64 [ 1, %.preheader39 ], [ %indvars.iv.next47, %13 ]
  %exitcond49 = icmp ne i64 %indvars.iv46, 6
  br i1 %exitcond49, label %.preheader38, label %14

.preheader38:                                     ; preds = %5
  br label %6

6:                                                ; preds = %.preheader38, %7
  %indvars.iv42 = phi i64 [ 1, %.preheader38 ], [ %indvars.iv.next43, %7 ]
  %exitcond45 = icmp ne i64 %indvars.iv42, 6
  br i1 %exitcond45, label %7, label %13

7:                                                ; preds = %6
  %8 = shl nuw nsw i64 %indvars.iv42, 6
  %9 = shl nuw nsw i64 %indvars.iv46, 3
  %10 = or disjoint i64 %8, %9
  %11 = or disjoint i64 %indvars.iv50, %10
  %12 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %11
  store i32 0, ptr %12, align 4
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1
  br label %6, !llvm.loop !14

13:                                               ; preds = %6
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1
  br label %5, !llvm.loop !15

14:                                               ; preds = %5
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1
  br label %4, !llvm.loop !16

15:                                               ; preds = %.preheader37, %20
  %indvars.iv58 = phi i64 [ 0, %.preheader37 ], [ %indvars.iv.next59, %20 ]
  %exitcond61 = icmp ne i64 %indvars.iv58, 13
  br i1 %exitcond61, label %.preheader36, label %.preheader35

.preheader36:                                     ; preds = %15
  br label %16

.preheader35:                                     ; preds = %15
  br label %21

16:                                               ; preds = %.preheader36, %17
  %indvars.iv54 = phi i64 [ 0, %.preheader36 ], [ %indvars.iv.next55, %17 ]
  %exitcond57 = icmp ne i64 %indvars.iv54, 512
  br i1 %exitcond57, label %17, label %20

17:                                               ; preds = %16
  %18 = getelementptr inbounds nuw [2048 x i8], ptr @p, i64 %indvars.iv58
  %19 = getelementptr inbounds nuw [4 x i8], ptr %18, i64 %indvars.iv54
  store i32 0, ptr %19, align 4
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1
  br label %16, !llvm.loop !17

20:                                               ; preds = %16
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1
  br label %15, !llvm.loop !18

21:                                               ; preds = %.preheader35, %30
  %indvars.iv66 = phi i64 [ 0, %.preheader35 ], [ %indvars.iv.next67, %30 ]
  %exitcond69 = icmp ne i64 %indvars.iv66, 4
  br i1 %exitcond69, label %.preheader34, label %31

.preheader34:                                     ; preds = %21
  br label %22

22:                                               ; preds = %.preheader34, %29
  %indvars.iv62 = phi i64 [ 0, %.preheader34 ], [ %indvars.iv.next63, %29 ]
  %exitcond65 = icmp ne i64 %indvars.iv62, 2
  br i1 %exitcond65, label %.preheader33, label %30

.preheader33:                                     ; preds = %22
  br label %23

23:                                               ; preds = %.preheader33, %25
  %24 = phi i1 [ false, %25 ], [ true, %.preheader33 ]
  br i1 %24, label %25, label %29

25:                                               ; preds = %23
  %26 = shl nuw nsw i64 %indvars.iv62, 3
  %27 = or disjoint i64 %indvars.iv66, %26
  %28 = getelementptr inbounds nuw [4 x i8], ptr @p, i64 %27
  store i32 1, ptr %28, align 4
  br label %23, !llvm.loop !19

29:                                               ; preds = %23
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 1
  br label %22, !llvm.loop !20

30:                                               ; preds = %22
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1
  br label %21, !llvm.loop !21

31:                                               ; preds = %21
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %32

32:                                               ; preds = %40, %31
  %indvars.iv74 = phi i64 [ %indvars.iv.next75, %40 ], [ 0, %31 ]
  %exitcond77 = icmp ne i64 %indvars.iv74, 2
  br i1 %exitcond77, label %.preheader32, label %41

.preheader32:                                     ; preds = %32
  br label %33

.loopexit31:                                      ; preds = %35
  br label %33, !llvm.loop !22

33:                                               ; preds = %.preheader32, %.loopexit31
  %34 = phi i1 [ false, %.loopexit31 ], [ true, %.preheader32 ]
  br i1 %34, label %.preheader30, label %40

.preheader30:                                     ; preds = %33
  br label %35

35:                                               ; preds = %.preheader30, %36
  %indvars.iv70 = phi i64 [ 0, %.preheader30 ], [ %indvars.iv.next71, %36 ]
  %exitcond73 = icmp ne i64 %indvars.iv70, 4
  br i1 %exitcond73, label %36, label %.loopexit31

36:                                               ; preds = %35
  %37 = shl nuw nsw i64 %indvars.iv70, 6
  %38 = or disjoint i64 %indvars.iv74, %37
  %39 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %38
  store i32 1, ptr %39, align 4
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70, 1
  br label %35, !llvm.loop !23

40:                                               ; preds = %33
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1
  br label %32, !llvm.loop !24

41:                                               ; preds = %32
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %42

.loopexit29:                                      ; preds = %44
  br label %42, !llvm.loop !25

42:                                               ; preds = %.loopexit29, %41
  %43 = phi i1 [ true, %41 ], [ false, %.loopexit29 ]
  br i1 %43, label %.preheader28, label %52

.preheader28:                                     ; preds = %42
  br label %44

44:                                               ; preds = %.preheader28, %51
  %indvars.iv82 = phi i64 [ 0, %.preheader28 ], [ %indvars.iv.next83, %51 ]
  %exitcond85 = icmp ne i64 %indvars.iv82, 4
  br i1 %exitcond85, label %.preheader27, label %.loopexit29

.preheader27:                                     ; preds = %44
  br label %45

45:                                               ; preds = %.preheader27, %46
  %indvars.iv78 = phi i64 [ 0, %.preheader27 ], [ %indvars.iv.next79, %46 ]
  %exitcond81 = icmp ne i64 %indvars.iv78, 2
  br i1 %exitcond81, label %46, label %51

46:                                               ; preds = %45
  %47 = shl nuw nsw i64 %indvars.iv78, 6
  %48 = shl nuw nsw i64 %indvars.iv82, 3
  %49 = or disjoint i64 %47, %48
  %50 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %49
  store i32 1, ptr %50, align 4
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1
  br label %45, !llvm.loop !26

51:                                               ; preds = %45
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 1
  br label %44, !llvm.loop !27

52:                                               ; preds = %42
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %53

53:                                               ; preds = %62, %52
  %indvars.iv90 = phi i64 [ %indvars.iv.next91, %62 ], [ 0, %52 ]
  %exitcond93 = icmp ne i64 %indvars.iv90, 2
  br i1 %exitcond93, label %.preheader26, label %63

.preheader26:                                     ; preds = %53
  br label %54

54:                                               ; preds = %.preheader26, %61
  %indvars.iv86 = phi i64 [ 0, %.preheader26 ], [ %indvars.iv.next87, %61 ]
  %exitcond89 = icmp ne i64 %indvars.iv86, 4
  br i1 %exitcond89, label %.preheader25, label %62

.preheader25:                                     ; preds = %54
  br label %55

55:                                               ; preds = %.preheader25, %57
  %56 = phi i1 [ false, %57 ], [ true, %.preheader25 ]
  br i1 %56, label %57, label %61

57:                                               ; preds = %55
  %58 = shl nuw nsw i64 %indvars.iv86, 3
  %59 = or disjoint i64 %indvars.iv90, %58
  %60 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %59
  store i32 1, ptr %60, align 4
  br label %55, !llvm.loop !28

61:                                               ; preds = %55
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1
  br label %54, !llvm.loop !29

62:                                               ; preds = %54
  %indvars.iv.next91 = add nuw nsw i64 %indvars.iv90, 1
  br label %53, !llvm.loop !30

63:                                               ; preds = %53
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %64

64:                                               ; preds = %72, %63
  %indvars.iv98 = phi i64 [ %indvars.iv.next99, %72 ], [ 0, %63 ]
  %exitcond101 = icmp ne i64 %indvars.iv98, 4
  br i1 %exitcond101, label %.preheader24, label %73

.preheader24:                                     ; preds = %64
  br label %65

.loopexit23:                                      ; preds = %67
  br label %65, !llvm.loop !31

65:                                               ; preds = %.preheader24, %.loopexit23
  %66 = phi i1 [ false, %.loopexit23 ], [ true, %.preheader24 ]
  br i1 %66, label %.preheader22, label %72

.preheader22:                                     ; preds = %65
  br label %67

67:                                               ; preds = %.preheader22, %68
  %indvars.iv94 = phi i64 [ 0, %.preheader22 ], [ %indvars.iv.next95, %68 ]
  %exitcond97 = icmp ne i64 %indvars.iv94, 2
  br i1 %exitcond97, label %68, label %.loopexit23

68:                                               ; preds = %67
  %69 = shl nuw nsw i64 %indvars.iv94, 6
  %70 = or disjoint i64 %indvars.iv98, %69
  %71 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %70
  store i32 1, ptr %71, align 4
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 1
  br label %67, !llvm.loop !32

72:                                               ; preds = %65
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1
  br label %64, !llvm.loop !33

73:                                               ; preds = %64
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %74

.loopexit21:                                      ; preds = %76
  br label %74, !llvm.loop !34

74:                                               ; preds = %.loopexit21, %73
  %75 = phi i1 [ true, %73 ], [ false, %.loopexit21 ]
  br i1 %75, label %.preheader20, label %84

.preheader20:                                     ; preds = %74
  br label %76

76:                                               ; preds = %.preheader20, %83
  %indvars.iv106 = phi i64 [ 0, %.preheader20 ], [ %indvars.iv.next107, %83 ]
  %exitcond109 = icmp ne i64 %indvars.iv106, 2
  br i1 %exitcond109, label %.preheader19, label %.loopexit21

.preheader19:                                     ; preds = %76
  br label %77

77:                                               ; preds = %.preheader19, %78
  %indvars.iv102 = phi i64 [ 0, %.preheader19 ], [ %indvars.iv.next103, %78 ]
  %exitcond105 = icmp ne i64 %indvars.iv102, 4
  br i1 %exitcond105, label %78, label %83

78:                                               ; preds = %77
  %79 = shl nuw nsw i64 %indvars.iv102, 6
  %80 = shl nuw nsw i64 %indvars.iv106, 3
  %81 = or disjoint i64 %79, %80
  %82 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %81
  store i32 1, ptr %82, align 4
  %indvars.iv.next103 = add nuw nsw i64 %indvars.iv102, 1
  br label %77, !llvm.loop !35

83:                                               ; preds = %77
  %indvars.iv.next107 = add nuw nsw i64 %indvars.iv106, 1
  br label %76, !llvm.loop !36

84:                                               ; preds = %74
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %85

85:                                               ; preds = %92, %84
  %indvars.iv110 = phi i64 [ %indvars.iv.next111, %92 ], [ 0, %84 ]
  %exitcond113 = icmp ne i64 %indvars.iv110, 3
  br i1 %exitcond113, label %.preheader18, label %93

.preheader18:                                     ; preds = %85
  br label %86

.loopexit17:                                      ; preds = %88
  br label %86, !llvm.loop !37

86:                                               ; preds = %.preheader18, %.loopexit17
  %87 = phi i1 [ false, %.loopexit17 ], [ true, %.preheader18 ]
  br i1 %87, label %.preheader16, label %92

.preheader16:                                     ; preds = %86
  br label %88

88:                                               ; preds = %.preheader16, %90
  %89 = phi i1 [ false, %90 ], [ true, %.preheader16 ]
  br i1 %89, label %90, label %.loopexit17

90:                                               ; preds = %88
  %91 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %indvars.iv110
  store i32 1, ptr %91, align 4
  br label %88, !llvm.loop !38

92:                                               ; preds = %86
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110, 1
  br label %85, !llvm.loop !39

93:                                               ; preds = %85
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %94

.loopexit15:                                      ; preds = %96
  br label %94, !llvm.loop !40

94:                                               ; preds = %.loopexit15, %93
  %95 = phi i1 [ true, %93 ], [ false, %.loopexit15 ]
  br i1 %95, label %.preheader14, label %103

.preheader14:                                     ; preds = %94
  br label %96

96:                                               ; preds = %.preheader14, %102
  %indvars.iv114 = phi i64 [ 0, %.preheader14 ], [ %indvars.iv.next115, %102 ]
  %exitcond117 = icmp ne i64 %indvars.iv114, 3
  br i1 %exitcond117, label %.preheader13, label %.loopexit15

.preheader13:                                     ; preds = %96
  br label %97

97:                                               ; preds = %.preheader13, %99
  %98 = phi i1 [ false, %99 ], [ true, %.preheader13 ]
  br i1 %98, label %99, label %102

99:                                               ; preds = %97
  %100 = shl nuw nsw i64 %indvars.iv114, 3
  %101 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %100
  store i32 1, ptr %101, align 4
  br label %97, !llvm.loop !41

102:                                              ; preds = %97
  %indvars.iv.next115 = add nuw nsw i64 %indvars.iv114, 1
  br label %96, !llvm.loop !42

103:                                              ; preds = %94
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %104

.loopexit12:                                      ; preds = %106
  br label %104, !llvm.loop !43

104:                                              ; preds = %.loopexit12, %103
  %105 = phi i1 [ true, %103 ], [ false, %.loopexit12 ]
  br i1 %105, label %.preheader11, label %112

.preheader11:                                     ; preds = %104
  br label %106

.loopexit10:                                      ; preds = %108
  br label %106, !llvm.loop !44

106:                                              ; preds = %.preheader11, %.loopexit10
  %107 = phi i1 [ false, %.loopexit10 ], [ true, %.preheader11 ]
  br i1 %107, label %.preheader9, label %.loopexit12

.preheader9:                                      ; preds = %106
  br label %108

108:                                              ; preds = %.preheader9, %109
  %indvars.iv118 = phi i64 [ 0, %.preheader9 ], [ %indvars.iv.next119, %109 ]
  %exitcond121 = icmp ne i64 %indvars.iv118, 3
  br i1 %exitcond121, label %109, label %.loopexit10

109:                                              ; preds = %108
  %110 = shl nuw nsw i64 %indvars.iv118, 6
  %111 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %110
  store i32 1, ptr %111, align 4
  %indvars.iv.next119 = add nuw nsw i64 %indvars.iv118, 1
  br label %108, !llvm.loop !45

112:                                              ; preds = %104
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %113

113:                                              ; preds = %122, %112
  %indvars.iv126 = phi i64 [ %indvars.iv.next127, %122 ], [ 0, %112 ]
  %exitcond129 = icmp ne i64 %indvars.iv126, 2
  br i1 %exitcond129, label %.preheader8, label %123

.preheader8:                                      ; preds = %113
  br label %114

114:                                              ; preds = %.preheader8, %121
  %indvars.iv122 = phi i64 [ 0, %.preheader8 ], [ %indvars.iv.next123, %121 ]
  %exitcond125 = icmp ne i64 %indvars.iv122, 2
  br i1 %exitcond125, label %.preheader7, label %122

.preheader7:                                      ; preds = %114
  br label %115

115:                                              ; preds = %.preheader7, %117
  %116 = phi i1 [ false, %117 ], [ true, %.preheader7 ]
  br i1 %116, label %117, label %121

117:                                              ; preds = %115
  %118 = shl nuw nsw i64 %indvars.iv122, 3
  %119 = or disjoint i64 %indvars.iv126, %118
  %120 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %119
  store i32 1, ptr %120, align 4
  br label %115, !llvm.loop !46

121:                                              ; preds = %115
  %indvars.iv.next123 = add nuw nsw i64 %indvars.iv122, 1
  br label %114, !llvm.loop !47

122:                                              ; preds = %114
  %indvars.iv.next127 = add nuw nsw i64 %indvars.iv126, 1
  br label %113, !llvm.loop !48

123:                                              ; preds = %113
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %124

124:                                              ; preds = %132, %123
  %indvars.iv134 = phi i64 [ %indvars.iv.next135, %132 ], [ 0, %123 ]
  %exitcond137 = icmp ne i64 %indvars.iv134, 2
  br i1 %exitcond137, label %.preheader6, label %133

.preheader6:                                      ; preds = %124
  br label %125

.loopexit5:                                       ; preds = %127
  br label %125, !llvm.loop !49

125:                                              ; preds = %.preheader6, %.loopexit5
  %126 = phi i1 [ false, %.loopexit5 ], [ true, %.preheader6 ]
  br i1 %126, label %.preheader4, label %132

.preheader4:                                      ; preds = %125
  br label %127

127:                                              ; preds = %.preheader4, %128
  %indvars.iv130 = phi i64 [ 0, %.preheader4 ], [ %indvars.iv.next131, %128 ]
  %exitcond133 = icmp ne i64 %indvars.iv130, 2
  br i1 %exitcond133, label %128, label %.loopexit5

128:                                              ; preds = %127
  %129 = shl nuw nsw i64 %indvars.iv130, 6
  %130 = or disjoint i64 %indvars.iv134, %129
  %131 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %130
  store i32 1, ptr %131, align 4
  %indvars.iv.next131 = add nuw nsw i64 %indvars.iv130, 1
  br label %127, !llvm.loop !50

132:                                              ; preds = %125
  %indvars.iv.next135 = add nuw nsw i64 %indvars.iv134, 1
  br label %124, !llvm.loop !51

133:                                              ; preds = %124
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %134

.loopexit:                                        ; preds = %136
  br label %134, !llvm.loop !52

134:                                              ; preds = %.loopexit, %133
  %135 = phi i1 [ true, %133 ], [ false, %.loopexit ]
  br i1 %135, label %.preheader3, label %144

.preheader3:                                      ; preds = %134
  br label %136

136:                                              ; preds = %.preheader3, %143
  %indvars.iv142 = phi i64 [ 0, %.preheader3 ], [ %indvars.iv.next143, %143 ]
  %exitcond145 = icmp ne i64 %indvars.iv142, 2
  br i1 %exitcond145, label %.preheader2, label %.loopexit

.preheader2:                                      ; preds = %136
  br label %137

137:                                              ; preds = %.preheader2, %138
  %indvars.iv138 = phi i64 [ 0, %.preheader2 ], [ %indvars.iv.next139, %138 ]
  %exitcond141 = icmp ne i64 %indvars.iv138, 2
  br i1 %exitcond141, label %138, label %143

138:                                              ; preds = %137
  %139 = shl nuw nsw i64 %indvars.iv138, 6
  %140 = shl nuw nsw i64 %indvars.iv142, 3
  %141 = or disjoint i64 %139, %140
  %142 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %141
  store i32 1, ptr %142, align 4
  %indvars.iv.next139 = add nuw nsw i64 %indvars.iv138, 1
  br label %137, !llvm.loop !53

143:                                              ; preds = %137
  %indvars.iv.next143 = add nuw nsw i64 %indvars.iv142, 1
  br label %136, !llvm.loop !54

144:                                              ; preds = %134
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %145

145:                                              ; preds = %155, %144
  %indvars.iv154 = phi i64 [ %indvars.iv.next155, %155 ], [ 0, %144 ]
  %exitcond157 = icmp ne i64 %indvars.iv154, 2
  br i1 %exitcond157, label %.preheader1, label %156

.preheader1:                                      ; preds = %145
  br label %146

146:                                              ; preds = %.preheader1, %154
  %indvars.iv150 = phi i64 [ 0, %.preheader1 ], [ %indvars.iv.next151, %154 ]
  %exitcond153 = icmp ne i64 %indvars.iv150, 2
  br i1 %exitcond153, label %.preheader, label %155

.preheader:                                       ; preds = %146
  br label %147

147:                                              ; preds = %.preheader, %148
  %indvars.iv146 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next147, %148 ]
  %exitcond149 = icmp ne i64 %indvars.iv146, 2
  br i1 %exitcond149, label %148, label %154

148:                                              ; preds = %147
  %149 = shl nuw nsw i64 %indvars.iv146, 6
  %150 = shl nuw nsw i64 %indvars.iv150, 3
  %151 = or disjoint i64 %149, %150
  %152 = or disjoint i64 %indvars.iv154, %151
  %153 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %152
  store i32 1, ptr %153, align 4
  %indvars.iv.next147 = add nuw nsw i64 %indvars.iv146, 1
  br label %147, !llvm.loop !55

154:                                              ; preds = %147
  %indvars.iv.next151 = add nuw nsw i64 %indvars.iv150, 1
  br label %146, !llvm.loop !56

155:                                              ; preds = %146
  %indvars.iv.next155 = add nuw nsw i64 %indvars.iv154, 1
  br label %145, !llvm.loop !57

156:                                              ; preds = %145
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 0, ptr @kount, align 4
  %157 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %157, 0
  br i1 %.not, label %160, label %158

158:                                              ; preds = %156
  %159 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %159, ptr @n, align 4
  br label %161

160:                                              ; preds = %156
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %.pre = load i32, ptr @n, align 4
  br label %161

161:                                              ; preds = %160, %158
  %162 = phi i32 [ %.pre, %160 ], [ %159, %158 ]
  %163 = call i32 @Trial(i32 noundef %162)
  %.not1 = icmp eq i32 %163, 0
  br i1 %.not1, label %164, label %165

164:                                              ; preds = %161
  %puts2 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %168

165:                                              ; preds = %161
  %166 = load i32, ptr @kount, align 4
  %.not3 = icmp eq i32 %166, 2005
  br i1 %.not3, label %168, label %167

167:                                              ; preds = %165
  %puts4 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %168

168:                                              ; preds = %165, %167, %164
  %169 = load i32, ptr @n, align 4
  %170 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %169) #4
  %171 = load i32, ptr @kount, align 4
  %172 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %171) #4
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %3, %0
  %2 = phi i32 [ %4, %3 ], [ 0, %0 ]
  %exitcond = icmp ne i32 %2, 100
  br i1 %exitcond, label %3, label %5

3:                                                ; preds = %1
  call void @Puzzle()
  %4 = add nuw nsw i32 %2, 1
  br label %1, !llvm.loop !58

5:                                                ; preds = %1
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
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
