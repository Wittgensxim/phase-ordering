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
  %18 = getelementptr inbounds [4 x i8], ptr @class, i64 %5
  %19 = load i32, ptr %18, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %20
  %22 = load i32, ptr %21, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, ptr %21, align 4
  %smax = call i32 @llvm.smax.i32(i32 %1, i32 512)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %24

24:                                               ; preds = %30, %17
  %indvars.iv = phi i64 [ %indvars.iv.next, %30 ], [ %3, %17 ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit.loopexit, label %25

25:                                               ; preds = %24
  %26 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %indvars.iv
  %27 = load i32, ptr %26, align 4
  %.not3 = icmp eq i32 %27, 0
  br i1 %.not3, label %28, label %30

28:                                               ; preds = %25
  %29 = trunc nsw i64 %indvars.iv to i32
  br label %.loopexit

30:                                               ; preds = %25
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %24, !llvm.loop !10

.loopexit.loopexit:                               ; preds = %24
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %28
  %storemerge2 = phi i32 [ %29, %28 ], [ 0, %.loopexit.loopexit ]
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
  %18 = getelementptr inbounds [4 x i8], ptr @class, i64 %5
  %19 = load i32, ptr %18, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %20
  %22 = load i32, ptr %21, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, ptr %21, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Trial(i32 noundef %0) #0 {
  %2 = load i32, ptr @kount, align 4
  %3 = add nsw i32 %2, 1
  store i32 %3, ptr @kount, align 4
  br label %4

4:                                                ; preds = %19, %1
  %indvars.iv = phi i64 [ %indvars.iv.next, %19 ], [ 0, %1 ]
  %exitcond = icmp ne i64 %indvars.iv, 13
  br i1 %exitcond, label %5, label %20

5:                                                ; preds = %4
  %6 = getelementptr inbounds nuw [4 x i8], ptr @class, i64 %indvars.iv
  %7 = load i32, ptr %6, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %8
  %10 = load i32, ptr %9, align 4
  %.not = icmp eq i32 %10, 0
  br i1 %.not, label %19, label %11

11:                                               ; preds = %5
  %12 = trunc nuw nsw i64 %indvars.iv to i32
  %13 = call i32 @Fit(i32 noundef %12, i32 noundef %0)
  %.not2 = icmp eq i32 %13, 0
  br i1 %.not2, label %19, label %14

14:                                               ; preds = %11
  %15 = call i32 @Place(i32 noundef %12, i32 noundef %0)
  %16 = call i32 @Trial(i32 noundef %15)
  %.not3 = icmp ne i32 %16, 0
  %17 = icmp eq i32 %15, 0
  %or.cond = or i1 %.not3, %17
  br i1 %or.cond, label %20, label %18

18:                                               ; preds = %14
  call void @Remove(i32 noundef %12, i32 noundef %0)
  br label %19

19:                                               ; preds = %18, %11, %5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %4, !llvm.loop !12

20:                                               ; preds = %14, %4
  %storemerge1 = phi i32 [ 1, %14 ], [ 0, %4 ]
  ret i32 %storemerge1
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Puzzle() #0 {
  br label %1

1:                                                ; preds = %2, %0
  %indvars.iv = phi i64 [ %indvars.iv.next, %2 ], [ 0, %0 ]
  %exitcond = icmp ne i64 %indvars.iv, 512
  br i1 %exitcond, label %2, label %.preheader31.preheader

.preheader31.preheader:                           ; preds = %1
  br label %.preheader31

2:                                                ; preds = %1
  %3 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %indvars.iv
  store i32 1, ptr %3, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %1, !llvm.loop !13

.preheader31:                                     ; preds = %.preheader31.preheader, %11
  %indvars.iv14 = phi i64 [ 1, %.preheader31.preheader ], [ %indvars.iv.next15, %11 ]
  %exitcond17 = icmp ne i64 %indvars.iv14, 6
  br i1 %exitcond17, label %.preheader30.preheader, label %.preheader28.preheader

.preheader30.preheader:                           ; preds = %.preheader31
  br label %.preheader30

.preheader28.preheader:                           ; preds = %.preheader31
  br label %.preheader28

.preheader30:                                     ; preds = %.preheader30.preheader, %10
  %indvars.iv10 = phi i64 [ 1, %.preheader30.preheader ], [ %indvars.iv.next11, %10 ]
  %exitcond13 = icmp ne i64 %indvars.iv10, 6
  br i1 %exitcond13, label %.preheader29.preheader, label %11

.preheader29.preheader:                           ; preds = %.preheader30
  br label %.preheader29

.preheader29:                                     ; preds = %.preheader29.preheader, %4
  %indvars.iv6 = phi i64 [ 1, %.preheader29.preheader ], [ %indvars.iv.next7, %4 ]
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

.preheader28:                                     ; preds = %.preheader28.preheader, %15
  %indvars.iv22 = phi i64 [ 0, %.preheader28.preheader ], [ %indvars.iv.next23, %15 ]
  %exitcond25 = icmp ne i64 %indvars.iv22, 13
  br i1 %exitcond25, label %.preheader27.preheader, label %.preheader26.preheader

.preheader27.preheader:                           ; preds = %.preheader28
  br label %.preheader27

.preheader26.preheader:                           ; preds = %.preheader28
  br label %.preheader26

.preheader27:                                     ; preds = %.preheader27.preheader, %12
  %indvars.iv18 = phi i64 [ 0, %.preheader27.preheader ], [ %indvars.iv.next19, %12 ]
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

.preheader26:                                     ; preds = %.preheader26.preheader, %21
  %indvars.iv30 = phi i64 [ 0, %.preheader26.preheader ], [ %indvars.iv.next31, %21 ]
  %exitcond33 = icmp ne i64 %indvars.iv30, 4
  br i1 %exitcond33, label %.preheader25.preheader, label %22

.preheader25.preheader:                           ; preds = %.preheader26
  br label %.preheader25

.preheader25:                                     ; preds = %.preheader25.preheader, %20
  %indvars.iv26 = phi i64 [ 0, %.preheader25.preheader ], [ %indvars.iv.next27, %20 ]
  %exitcond29 = icmp ne i64 %indvars.iv26, 2
  br i1 %exitcond29, label %.preheader24.preheader, label %21

.preheader24.preheader:                           ; preds = %.preheader25
  br label %.preheader24

.preheader24:                                     ; preds = %.preheader24.preheader, %16
  %storemerge45 = phi i1 [ false, %16 ], [ true, %.preheader24.preheader ]
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
  br i1 %exitcond41, label %.preheader23.preheader, label %30

.preheader23.preheader:                           ; preds = %23
  br label %.preheader23

.preheader23.loopexit:                            ; preds = %.preheader22
  br label %.preheader23, !llvm.loop !22

.preheader23:                                     ; preds = %.preheader23.preheader, %.preheader23.loopexit
  %24 = phi i1 [ false, %.preheader23.loopexit ], [ true, %.preheader23.preheader ]
  br i1 %24, label %.preheader22.preheader, label %29

.preheader22.preheader:                           ; preds = %.preheader23
  br label %.preheader22

.preheader22:                                     ; preds = %.preheader22.preheader, %25
  %indvars.iv34 = phi i64 [ 0, %.preheader22.preheader ], [ %indvars.iv.next35, %25 ]
  %exitcond37 = icmp ne i64 %indvars.iv34, 4
  br i1 %exitcond37, label %25, label %.preheader23.loopexit

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
  br label %31

.loopexit4:                                       ; preds = %.preheader21
  br label %31, !llvm.loop !25

31:                                               ; preds = %.loopexit4, %30
  %32 = phi i1 [ true, %30 ], [ false, %.loopexit4 ]
  br i1 %32, label %.preheader21.preheader, label %39

.preheader21.preheader:                           ; preds = %31
  br label %.preheader21

.preheader21:                                     ; preds = %.preheader21.preheader, %38
  %indvars.iv46 = phi i64 [ 0, %.preheader21.preheader ], [ %indvars.iv.next47, %38 ]
  %exitcond49 = icmp ne i64 %indvars.iv46, 4
  br i1 %exitcond49, label %.preheader20.preheader, label %.loopexit4

.preheader20.preheader:                           ; preds = %.preheader21
  br label %.preheader20

.preheader20:                                     ; preds = %.preheader20.preheader, %33
  %indvars.iv42 = phi i64 [ 0, %.preheader20.preheader ], [ %indvars.iv.next43, %33 ]
  %exitcond45 = icmp ne i64 %indvars.iv42, 2
  br i1 %exitcond45, label %33, label %38

33:                                               ; preds = %.preheader20
  %34 = shl nuw nsw i64 %indvars.iv42, 6
  %35 = shl nuw nsw i64 %indvars.iv46, 3
  %36 = or disjoint i64 %34, %35
  %37 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %36
  store i32 1, ptr %37, align 4
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1
  br label %.preheader20, !llvm.loop !26

38:                                               ; preds = %.preheader20
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1
  br label %.preheader21, !llvm.loop !27

39:                                               ; preds = %31
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %40

40:                                               ; preds = %46, %39
  %indvars.iv54 = phi i64 [ %indvars.iv.next55, %46 ], [ 0, %39 ]
  %exitcond57 = icmp ne i64 %indvars.iv54, 2
  br i1 %exitcond57, label %.preheader19.preheader, label %47

.preheader19.preheader:                           ; preds = %40
  br label %.preheader19

.preheader19:                                     ; preds = %.preheader19.preheader, %45
  %indvars.iv50 = phi i64 [ 0, %.preheader19.preheader ], [ %indvars.iv.next51, %45 ]
  %exitcond53 = icmp ne i64 %indvars.iv50, 4
  br i1 %exitcond53, label %.preheader18.preheader, label %46

.preheader18.preheader:                           ; preds = %.preheader19
  br label %.preheader18

.preheader18:                                     ; preds = %.preheader18.preheader, %41
  %storemerge39 = phi i1 [ false, %41 ], [ true, %.preheader18.preheader ]
  br i1 %storemerge39, label %41, label %45

41:                                               ; preds = %.preheader18
  %42 = shl nuw nsw i64 %indvars.iv50, 3
  %43 = or disjoint i64 %indvars.iv54, %42
  %44 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %43
  store i32 1, ptr %44, align 4
  br label %.preheader18, !llvm.loop !28

45:                                               ; preds = %.preheader18
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1
  br label %.preheader19, !llvm.loop !29

46:                                               ; preds = %.preheader19
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1
  br label %40, !llvm.loop !30

47:                                               ; preds = %40
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %48

48:                                               ; preds = %54, %47
  %indvars.iv62 = phi i64 [ %indvars.iv.next63, %54 ], [ 0, %47 ]
  %exitcond65 = icmp ne i64 %indvars.iv62, 4
  br i1 %exitcond65, label %.preheader17.preheader, label %55

.preheader17.preheader:                           ; preds = %48
  br label %.preheader17

.preheader17.loopexit:                            ; preds = %.preheader16
  br label %.preheader17, !llvm.loop !31

.preheader17:                                     ; preds = %.preheader17.preheader, %.preheader17.loopexit
  %49 = phi i1 [ false, %.preheader17.loopexit ], [ true, %.preheader17.preheader ]
  br i1 %49, label %.preheader16.preheader, label %54

.preheader16.preheader:                           ; preds = %.preheader17
  br label %.preheader16

.preheader16:                                     ; preds = %.preheader16.preheader, %50
  %indvars.iv58 = phi i64 [ 0, %.preheader16.preheader ], [ %indvars.iv.next59, %50 ]
  %exitcond61 = icmp ne i64 %indvars.iv58, 2
  br i1 %exitcond61, label %50, label %.preheader17.loopexit

50:                                               ; preds = %.preheader16
  %51 = shl nuw nsw i64 %indvars.iv58, 6
  %52 = or disjoint i64 %indvars.iv62, %51
  %53 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %52
  store i32 1, ptr %53, align 4
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1
  br label %.preheader16, !llvm.loop !32

54:                                               ; preds = %.preheader17
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 1
  br label %48, !llvm.loop !33

55:                                               ; preds = %48
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %56

.loopexit3:                                       ; preds = %.preheader15
  br label %56, !llvm.loop !34

56:                                               ; preds = %.loopexit3, %55
  %57 = phi i1 [ true, %55 ], [ false, %.loopexit3 ]
  br i1 %57, label %.preheader15.preheader, label %64

.preheader15.preheader:                           ; preds = %56
  br label %.preheader15

.preheader15:                                     ; preds = %.preheader15.preheader, %63
  %indvars.iv70 = phi i64 [ 0, %.preheader15.preheader ], [ %indvars.iv.next71, %63 ]
  %exitcond73 = icmp ne i64 %indvars.iv70, 2
  br i1 %exitcond73, label %.preheader14.preheader, label %.loopexit3

.preheader14.preheader:                           ; preds = %.preheader15
  br label %.preheader14

.preheader14:                                     ; preds = %.preheader14.preheader, %58
  %indvars.iv66 = phi i64 [ 0, %.preheader14.preheader ], [ %indvars.iv.next67, %58 ]
  %exitcond69 = icmp ne i64 %indvars.iv66, 4
  br i1 %exitcond69, label %58, label %63

58:                                               ; preds = %.preheader14
  %59 = shl nuw nsw i64 %indvars.iv66, 6
  %60 = shl nuw nsw i64 %indvars.iv70, 3
  %61 = or disjoint i64 %59, %60
  %62 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %61
  store i32 1, ptr %62, align 4
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1
  br label %.preheader14, !llvm.loop !35

63:                                               ; preds = %.preheader14
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70, 1
  br label %.preheader15, !llvm.loop !36

64:                                               ; preds = %56
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %65

65:                                               ; preds = %69, %64
  %indvars.iv74 = phi i64 [ %indvars.iv.next75, %69 ], [ 0, %64 ]
  %exitcond77 = icmp ne i64 %indvars.iv74, 3
  br i1 %exitcond77, label %.preheader13.preheader, label %70

.preheader13.preheader:                           ; preds = %65
  br label %.preheader13

.preheader13.loopexit:                            ; preds = %.preheader12
  br label %.preheader13, !llvm.loop !37

.preheader13:                                     ; preds = %.preheader13.preheader, %.preheader13.loopexit
  %66 = phi i1 [ false, %.preheader13.loopexit ], [ true, %.preheader13.preheader ]
  br i1 %66, label %.preheader12.preheader, label %69

.preheader12.preheader:                           ; preds = %.preheader13
  br label %.preheader12

.preheader12:                                     ; preds = %.preheader12.preheader, %67
  %storemerge33 = phi i1 [ false, %67 ], [ true, %.preheader12.preheader ]
  br i1 %storemerge33, label %67, label %.preheader13.loopexit

67:                                               ; preds = %.preheader12
  %68 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %indvars.iv74
  store i32 1, ptr %68, align 4
  br label %.preheader12, !llvm.loop !38

69:                                               ; preds = %.preheader13
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1
  br label %65, !llvm.loop !39

70:                                               ; preds = %65
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %71

.loopexit2:                                       ; preds = %.preheader11
  br label %71, !llvm.loop !40

71:                                               ; preds = %.loopexit2, %70
  %72 = phi i1 [ true, %70 ], [ false, %.loopexit2 ]
  br i1 %72, label %.preheader11.preheader, label %77

.preheader11.preheader:                           ; preds = %71
  br label %.preheader11

.preheader11:                                     ; preds = %.preheader11.preheader, %76
  %indvars.iv78 = phi i64 [ 0, %.preheader11.preheader ], [ %indvars.iv.next79, %76 ]
  %exitcond81 = icmp ne i64 %indvars.iv78, 3
  br i1 %exitcond81, label %.preheader10.preheader, label %.loopexit2

.preheader10.preheader:                           ; preds = %.preheader11
  br label %.preheader10

.preheader10:                                     ; preds = %.preheader10.preheader, %73
  %storemerge31 = phi i1 [ false, %73 ], [ true, %.preheader10.preheader ]
  br i1 %storemerge31, label %73, label %76

73:                                               ; preds = %.preheader10
  %74 = shl nuw nsw i64 %indvars.iv78, 3
  %75 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %74
  store i32 1, ptr %75, align 4
  br label %.preheader10, !llvm.loop !41

76:                                               ; preds = %.preheader10
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1
  br label %.preheader11, !llvm.loop !42

77:                                               ; preds = %71
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %78

.loopexit1:                                       ; preds = %.preheader9
  br label %78, !llvm.loop !43

78:                                               ; preds = %.loopexit1, %77
  %79 = phi i1 [ true, %77 ], [ false, %.loopexit1 ]
  br i1 %79, label %.preheader9.preheader, label %84

.preheader9.preheader:                            ; preds = %78
  br label %.preheader9

.preheader9.loopexit:                             ; preds = %.preheader8
  br label %.preheader9, !llvm.loop !44

.preheader9:                                      ; preds = %.preheader9.preheader, %.preheader9.loopexit
  %80 = phi i1 [ false, %.preheader9.loopexit ], [ true, %.preheader9.preheader ]
  br i1 %80, label %.preheader8.preheader, label %.loopexit1

.preheader8.preheader:                            ; preds = %.preheader9
  br label %.preheader8

.preheader8:                                      ; preds = %.preheader8.preheader, %81
  %indvars.iv82 = phi i64 [ 0, %.preheader8.preheader ], [ %indvars.iv.next83, %81 ]
  %exitcond85 = icmp ne i64 %indvars.iv82, 3
  br i1 %exitcond85, label %81, label %.preheader9.loopexit

81:                                               ; preds = %.preheader8
  %82 = shl nuw nsw i64 %indvars.iv82, 6
  %83 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %82
  store i32 1, ptr %83, align 4
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 1
  br label %.preheader8, !llvm.loop !45

84:                                               ; preds = %78
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %85

85:                                               ; preds = %91, %84
  %indvars.iv90 = phi i64 [ %indvars.iv.next91, %91 ], [ 0, %84 ]
  %exitcond93 = icmp ne i64 %indvars.iv90, 2
  br i1 %exitcond93, label %.preheader7.preheader, label %92

.preheader7.preheader:                            ; preds = %85
  br label %.preheader7

.preheader7:                                      ; preds = %.preheader7.preheader, %90
  %indvars.iv86 = phi i64 [ 0, %.preheader7.preheader ], [ %indvars.iv.next87, %90 ]
  %exitcond89 = icmp ne i64 %indvars.iv86, 2
  br i1 %exitcond89, label %.preheader6.preheader, label %91

.preheader6.preheader:                            ; preds = %.preheader7
  br label %.preheader6

.preheader6:                                      ; preds = %.preheader6.preheader, %86
  %storemerge27 = phi i1 [ false, %86 ], [ true, %.preheader6.preheader ]
  br i1 %storemerge27, label %86, label %90

86:                                               ; preds = %.preheader6
  %87 = shl nuw nsw i64 %indvars.iv86, 3
  %88 = or disjoint i64 %indvars.iv90, %87
  %89 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %88
  store i32 1, ptr %89, align 4
  br label %.preheader6, !llvm.loop !46

90:                                               ; preds = %.preheader6
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1
  br label %.preheader7, !llvm.loop !47

91:                                               ; preds = %.preheader7
  %indvars.iv.next91 = add nuw nsw i64 %indvars.iv90, 1
  br label %85, !llvm.loop !48

92:                                               ; preds = %85
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %93

93:                                               ; preds = %99, %92
  %indvars.iv98 = phi i64 [ %indvars.iv.next99, %99 ], [ 0, %92 ]
  %exitcond101 = icmp ne i64 %indvars.iv98, 2
  br i1 %exitcond101, label %.preheader5.preheader, label %100

.preheader5.preheader:                            ; preds = %93
  br label %.preheader5

.preheader5.loopexit:                             ; preds = %.preheader4
  br label %.preheader5, !llvm.loop !49

.preheader5:                                      ; preds = %.preheader5.preheader, %.preheader5.loopexit
  %94 = phi i1 [ false, %.preheader5.loopexit ], [ true, %.preheader5.preheader ]
  br i1 %94, label %.preheader4.preheader, label %99

.preheader4.preheader:                            ; preds = %.preheader5
  br label %.preheader4

.preheader4:                                      ; preds = %.preheader4.preheader, %95
  %indvars.iv94 = phi i64 [ 0, %.preheader4.preheader ], [ %indvars.iv.next95, %95 ]
  %exitcond97 = icmp ne i64 %indvars.iv94, 2
  br i1 %exitcond97, label %95, label %.preheader5.loopexit

95:                                               ; preds = %.preheader4
  %96 = shl nuw nsw i64 %indvars.iv94, 6
  %97 = or disjoint i64 %indvars.iv98, %96
  %98 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %97
  store i32 1, ptr %98, align 4
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 1
  br label %.preheader4, !llvm.loop !50

99:                                               ; preds = %.preheader5
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1
  br label %93, !llvm.loop !51

100:                                              ; preds = %93
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %101

.loopexit:                                        ; preds = %.preheader3
  br label %101, !llvm.loop !52

101:                                              ; preds = %.loopexit, %100
  %102 = phi i1 [ true, %100 ], [ false, %.loopexit ]
  br i1 %102, label %.preheader3.preheader, label %109

.preheader3.preheader:                            ; preds = %101
  br label %.preheader3

.preheader3:                                      ; preds = %.preheader3.preheader, %108
  %indvars.iv106 = phi i64 [ 0, %.preheader3.preheader ], [ %indvars.iv.next107, %108 ]
  %exitcond109 = icmp ne i64 %indvars.iv106, 2
  br i1 %exitcond109, label %.preheader2.preheader, label %.loopexit

.preheader2.preheader:                            ; preds = %.preheader3
  br label %.preheader2

.preheader2:                                      ; preds = %.preheader2.preheader, %103
  %indvars.iv102 = phi i64 [ 0, %.preheader2.preheader ], [ %indvars.iv.next103, %103 ]
  %exitcond105 = icmp ne i64 %indvars.iv102, 2
  br i1 %exitcond105, label %103, label %108

103:                                              ; preds = %.preheader2
  %104 = shl nuw nsw i64 %indvars.iv102, 6
  %105 = shl nuw nsw i64 %indvars.iv106, 3
  %106 = or disjoint i64 %104, %105
  %107 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %106
  store i32 1, ptr %107, align 4
  %indvars.iv.next103 = add nuw nsw i64 %indvars.iv102, 1
  br label %.preheader2, !llvm.loop !53

108:                                              ; preds = %.preheader2
  %indvars.iv.next107 = add nuw nsw i64 %indvars.iv106, 1
  br label %.preheader3, !llvm.loop !54

109:                                              ; preds = %101
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %110

110:                                              ; preds = %118, %109
  %indvars.iv118 = phi i64 [ %indvars.iv.next119, %118 ], [ 0, %109 ]
  %exitcond121 = icmp ne i64 %indvars.iv118, 2
  br i1 %exitcond121, label %.preheader1.preheader, label %119

.preheader1.preheader:                            ; preds = %110
  br label %.preheader1

.preheader1:                                      ; preds = %.preheader1.preheader, %117
  %indvars.iv114 = phi i64 [ 0, %.preheader1.preheader ], [ %indvars.iv.next115, %117 ]
  %exitcond117 = icmp ne i64 %indvars.iv114, 2
  br i1 %exitcond117, label %.preheader.preheader, label %118

.preheader.preheader:                             ; preds = %.preheader1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %111
  %indvars.iv110 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next111, %111 ]
  %exitcond113 = icmp ne i64 %indvars.iv110, 2
  br i1 %exitcond113, label %111, label %117

111:                                              ; preds = %.preheader
  %112 = shl nuw nsw i64 %indvars.iv110, 6
  %113 = shl nuw nsw i64 %indvars.iv114, 3
  %114 = or disjoint i64 %112, %113
  %115 = or disjoint i64 %indvars.iv118, %114
  %116 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %115
  store i32 1, ptr %116, align 4
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110, 1
  br label %.preheader, !llvm.loop !55

117:                                              ; preds = %.preheader
  %indvars.iv.next115 = add nuw nsw i64 %indvars.iv114, 1
  br label %.preheader1, !llvm.loop !56

118:                                              ; preds = %.preheader1
  %indvars.iv.next119 = add nuw nsw i64 %indvars.iv118, 1
  br label %110, !llvm.loop !57

119:                                              ; preds = %110
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 0, ptr @kount, align 4
  %120 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %120, 0
  br i1 %.not, label %123, label %121

121:                                              ; preds = %119
  %122 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %122, ptr @n, align 4
  br label %124

123:                                              ; preds = %119
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %124

124:                                              ; preds = %123, %121
  %125 = load i32, ptr @n, align 4
  %126 = call i32 @Trial(i32 noundef %125)
  %.not16 = icmp eq i32 %126, 0
  br i1 %.not16, label %127, label %128

127:                                              ; preds = %124
  %puts17 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %131

128:                                              ; preds = %124
  %129 = load i32, ptr @kount, align 4
  %.not18 = icmp eq i32 %129, 2005
  br i1 %.not18, label %131, label %130

130:                                              ; preds = %128
  %puts19 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %131

131:                                              ; preds = %130, %128, %127
  %132 = load i32, ptr @n, align 4
  %133 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %132) #4
  %134 = load i32, ptr @kount, align 4
  %135 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %134) #4
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
