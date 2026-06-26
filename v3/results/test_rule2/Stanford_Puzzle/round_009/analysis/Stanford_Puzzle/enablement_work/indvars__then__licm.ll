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
  %4 = sext i32 %0 to i64
  %5 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %4
  %6 = load i32, ptr %5, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [2048 x i8], ptr @p, i64 %4
  br label %9

9:                                                ; preds = %17, %2
  %indvars.iv = phi i64 [ %indvars.iv.next, %17 ], [ 0, %2 ]
  %.not = icmp sgt i64 %indvars.iv, %7
  br i1 %.not, label %18, label %10

10:                                               ; preds = %9
  %11 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv
  %12 = load i32, ptr %11, align 4
  %.not2 = icmp eq i32 %12, 0
  br i1 %.not2, label %17, label %13

13:                                               ; preds = %10
  %14 = add nsw i64 %3, %indvars.iv
  %15 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %14
  %16 = load i32, ptr %15, align 4
  %.not3 = icmp eq i32 %16, 0
  br i1 %.not3, label %17, label %18

17:                                               ; preds = %13, %10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %9, !llvm.loop !7

18:                                               ; preds = %13, %9
  %storemerge1 = phi i32 [ 0, %13 ], [ 1, %9 ]
  ret i32 %storemerge1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Place(i32 noundef %0, i32 noundef %1) #0 {
  %3 = sext i32 %1 to i64
  %4 = sext i32 %0 to i64
  %5 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %4
  %6 = load i32, ptr %5, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [2048 x i8], ptr @p, i64 %4
  br label %9

9:                                                ; preds = %16, %2
  %indvars.iv2 = phi i64 [ %indvars.iv.next3, %16 ], [ 0, %2 ]
  %.not = icmp sgt i64 %indvars.iv2, %7
  br i1 %.not, label %17, label %10

10:                                               ; preds = %9
  %11 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv2
  %12 = load i32, ptr %11, align 4
  %.not4 = icmp eq i32 %12, 0
  br i1 %.not4, label %16, label %13

13:                                               ; preds = %10
  %14 = add nsw i64 %3, %indvars.iv2
  %15 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %14
  store i32 1, ptr %15, align 4
  br label %16

16:                                               ; preds = %13, %10
  %indvars.iv.next3 = add nuw nsw i64 %indvars.iv2, 1
  br label %9, !llvm.loop !9

17:                                               ; preds = %9
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
  br i1 %exitcond.not, label %.loopexit.loopexit, label %27

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

.loopexit.loopexit:                               ; preds = %26
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %30
  %storemerge2 = phi i32 [ %31, %30 ], [ 0, %.loopexit.loopexit ]
  ret i32 %storemerge2
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Remove(i32 noundef %0, i32 noundef %1) #0 {
  %3 = sext i32 %1 to i64
  %4 = sext i32 %0 to i64
  %5 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %4
  %6 = load i32, ptr %5, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [2048 x i8], ptr @p, i64 %4
  br label %9

9:                                                ; preds = %16, %2
  %indvars.iv = phi i64 [ %indvars.iv.next, %16 ], [ 0, %2 ]
  %.not = icmp sgt i64 %indvars.iv, %7
  br i1 %.not, label %17, label %10

10:                                               ; preds = %9
  %11 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv
  %12 = load i32, ptr %11, align 4
  %.not1 = icmp eq i32 %12, 0
  br i1 %.not1, label %16, label %13

13:                                               ; preds = %10
  %14 = add nsw i64 %3, %indvars.iv
  %15 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %14
  store i32 0, ptr %15, align 4
  br label %16

16:                                               ; preds = %13, %10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %9, !llvm.loop !11

17:                                               ; preds = %9
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
  br i1 %exitcond, label %2, label %.preheader31.preheader

.preheader31.preheader:                           ; preds = %1
  br label %.preheader31

2:                                                ; preds = %1
  %3 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %indvars.iv
  store i32 1, ptr %3, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %1, !llvm.loop !13

.preheader31:                                     ; preds = %.preheader31.preheader, %9
  %indvars.iv14 = phi i64 [ 1, %.preheader31.preheader ], [ %indvars.iv.next15, %9 ]
  %exitcond17 = icmp ne i64 %indvars.iv14, 6
  br i1 %exitcond17, label %.preheader30.preheader, label %.preheader28.preheader

.preheader30.preheader:                           ; preds = %.preheader31
  br label %.preheader30

.preheader28.preheader:                           ; preds = %.preheader31
  br label %.preheader28

.preheader30:                                     ; preds = %.preheader30.preheader, %8
  %indvars.iv10 = phi i64 [ 1, %.preheader30.preheader ], [ %indvars.iv.next11, %8 ]
  %exitcond13 = icmp ne i64 %indvars.iv10, 6
  br i1 %exitcond13, label %.preheader29.preheader, label %9

.preheader29.preheader:                           ; preds = %.preheader30
  %4 = shl nuw nsw i64 %indvars.iv10, 3
  %invariant.op = or disjoint i64 %4, %indvars.iv14
  br label %.preheader29

.preheader29:                                     ; preds = %.preheader29.preheader, %5
  %indvars.iv6 = phi i64 [ 1, %.preheader29.preheader ], [ %indvars.iv.next7, %5 ]
  %exitcond9 = icmp ne i64 %indvars.iv6, 6
  br i1 %exitcond9, label %5, label %8

5:                                                ; preds = %.preheader29
  %6 = shl nuw nsw i64 %indvars.iv6, 6
  %.reass = or disjoint i64 %6, %invariant.op
  %7 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %.reass
  store i32 0, ptr %7, align 4
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1
  br label %.preheader29, !llvm.loop !14

8:                                                ; preds = %.preheader29
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1
  br label %.preheader30, !llvm.loop !15

9:                                                ; preds = %.preheader30
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14, 1
  br label %.preheader31, !llvm.loop !16

.preheader28:                                     ; preds = %.preheader28.preheader, %13
  %indvars.iv22 = phi i64 [ 0, %.preheader28.preheader ], [ %indvars.iv.next23, %13 ]
  %exitcond25 = icmp ne i64 %indvars.iv22, 13
  br i1 %exitcond25, label %.preheader27.preheader, label %.preheader26.preheader

.preheader27.preheader:                           ; preds = %.preheader28
  %10 = getelementptr inbounds nuw [2048 x i8], ptr @p, i64 %indvars.iv22
  br label %.preheader27

.preheader26.preheader:                           ; preds = %.preheader28
  br label %.preheader26

.preheader27:                                     ; preds = %.preheader27.preheader, %11
  %indvars.iv18 = phi i64 [ 0, %.preheader27.preheader ], [ %indvars.iv.next19, %11 ]
  %exitcond21 = icmp ne i64 %indvars.iv18, 512
  br i1 %exitcond21, label %11, label %13

11:                                               ; preds = %.preheader27
  %12 = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %indvars.iv18
  store i32 0, ptr %12, align 4
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1
  br label %.preheader27, !llvm.loop !17

13:                                               ; preds = %.preheader27
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1
  br label %.preheader28, !llvm.loop !18

.preheader26:                                     ; preds = %.preheader26.preheader, %19
  %indvars.iv30 = phi i64 [ 0, %.preheader26.preheader ], [ %indvars.iv.next31, %19 ]
  %exitcond33 = icmp ne i64 %indvars.iv30, 4
  br i1 %exitcond33, label %.preheader25.preheader, label %20

.preheader25.preheader:                           ; preds = %.preheader26
  br label %.preheader25

.preheader25:                                     ; preds = %.preheader25.preheader, %18
  %indvars.iv26 = phi i64 [ 0, %.preheader25.preheader ], [ %indvars.iv.next27, %18 ]
  %exitcond29 = icmp ne i64 %indvars.iv26, 2
  br i1 %exitcond29, label %.preheader24.preheader, label %19

.preheader24.preheader:                           ; preds = %.preheader25
  %14 = shl nuw nsw i64 %indvars.iv26, 3
  %15 = or disjoint i64 %indvars.iv30, %14
  %16 = getelementptr inbounds nuw [4 x i8], ptr @p, i64 %15
  br label %.preheader24

.preheader24:                                     ; preds = %.preheader24.preheader, %17
  %storemerge45 = phi i1 [ false, %17 ], [ true, %.preheader24.preheader ]
  br i1 %storemerge45, label %17, label %18

17:                                               ; preds = %.preheader24
  store i32 1, ptr %16, align 4
  br label %.preheader24, !llvm.loop !19

18:                                               ; preds = %.preheader24
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1
  br label %.preheader25, !llvm.loop !20

19:                                               ; preds = %.preheader25
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1
  br label %.preheader26, !llvm.loop !21

20:                                               ; preds = %.preheader26
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %21

21:                                               ; preds = %27, %20
  %indvars.iv38 = phi i64 [ %indvars.iv.next39, %27 ], [ 0, %20 ]
  %exitcond41 = icmp ne i64 %indvars.iv38, 2
  br i1 %exitcond41, label %.preheader23.preheader, label %28

.preheader23.preheader:                           ; preds = %21
  br label %.preheader23

.preheader23.loopexit:                            ; preds = %.preheader22
  br label %.preheader23, !llvm.loop !22

.preheader23:                                     ; preds = %.preheader23.preheader, %.preheader23.loopexit
  %22 = phi i1 [ false, %.preheader23.loopexit ], [ true, %.preheader23.preheader ]
  br i1 %22, label %.preheader22.preheader, label %27

.preheader22.preheader:                           ; preds = %.preheader23
  br label %.preheader22

.preheader22:                                     ; preds = %.preheader22.preheader, %23
  %indvars.iv34 = phi i64 [ 0, %.preheader22.preheader ], [ %indvars.iv.next35, %23 ]
  %exitcond37 = icmp ne i64 %indvars.iv34, 4
  br i1 %exitcond37, label %23, label %.preheader23.loopexit

23:                                               ; preds = %.preheader22
  %24 = shl nuw nsw i64 %indvars.iv34, 6
  %25 = or disjoint i64 %indvars.iv38, %24
  %26 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %25
  store i32 1, ptr %26, align 4
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1
  br label %.preheader22, !llvm.loop !23

27:                                               ; preds = %.preheader23
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1
  br label %21, !llvm.loop !24

28:                                               ; preds = %21
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %29

.loopexit4:                                       ; preds = %.preheader21
  br label %29, !llvm.loop !25

29:                                               ; preds = %.loopexit4, %28
  %30 = phi i1 [ true, %28 ], [ false, %.loopexit4 ]
  br i1 %30, label %.preheader21.preheader, label %37

.preheader21.preheader:                           ; preds = %29
  br label %.preheader21

.preheader21:                                     ; preds = %.preheader21.preheader, %36
  %indvars.iv46 = phi i64 [ 0, %.preheader21.preheader ], [ %indvars.iv.next47, %36 ]
  %exitcond49 = icmp ne i64 %indvars.iv46, 4
  br i1 %exitcond49, label %.preheader20.preheader, label %.loopexit4

.preheader20.preheader:                           ; preds = %.preheader21
  %31 = shl nuw nsw i64 %indvars.iv46, 3
  br label %.preheader20

.preheader20:                                     ; preds = %.preheader20.preheader, %32
  %indvars.iv42 = phi i64 [ 0, %.preheader20.preheader ], [ %indvars.iv.next43, %32 ]
  %exitcond45 = icmp ne i64 %indvars.iv42, 2
  br i1 %exitcond45, label %32, label %36

32:                                               ; preds = %.preheader20
  %33 = shl nuw nsw i64 %indvars.iv42, 6
  %34 = or disjoint i64 %33, %31
  %35 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %34
  store i32 1, ptr %35, align 4
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1
  br label %.preheader20, !llvm.loop !26

36:                                               ; preds = %.preheader20
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1
  br label %.preheader21, !llvm.loop !27

37:                                               ; preds = %29
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %38

38:                                               ; preds = %44, %37
  %indvars.iv54 = phi i64 [ %indvars.iv.next55, %44 ], [ 0, %37 ]
  %exitcond57 = icmp ne i64 %indvars.iv54, 2
  br i1 %exitcond57, label %.preheader19.preheader, label %45

.preheader19.preheader:                           ; preds = %38
  br label %.preheader19

.preheader19:                                     ; preds = %.preheader19.preheader, %43
  %indvars.iv50 = phi i64 [ 0, %.preheader19.preheader ], [ %indvars.iv.next51, %43 ]
  %exitcond53 = icmp ne i64 %indvars.iv50, 4
  br i1 %exitcond53, label %.preheader18.preheader, label %44

.preheader18.preheader:                           ; preds = %.preheader19
  %39 = shl nuw nsw i64 %indvars.iv50, 3
  %40 = or disjoint i64 %indvars.iv54, %39
  %41 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %40
  br label %.preheader18

.preheader18:                                     ; preds = %.preheader18.preheader, %42
  %storemerge39 = phi i1 [ false, %42 ], [ true, %.preheader18.preheader ]
  br i1 %storemerge39, label %42, label %43

42:                                               ; preds = %.preheader18
  store i32 1, ptr %41, align 4
  br label %.preheader18, !llvm.loop !28

43:                                               ; preds = %.preheader18
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1
  br label %.preheader19, !llvm.loop !29

44:                                               ; preds = %.preheader19
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1
  br label %38, !llvm.loop !30

45:                                               ; preds = %38
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %46

46:                                               ; preds = %52, %45
  %indvars.iv62 = phi i64 [ %indvars.iv.next63, %52 ], [ 0, %45 ]
  %exitcond65 = icmp ne i64 %indvars.iv62, 4
  br i1 %exitcond65, label %.preheader17.preheader, label %53

.preheader17.preheader:                           ; preds = %46
  br label %.preheader17

.preheader17.loopexit:                            ; preds = %.preheader16
  br label %.preheader17, !llvm.loop !31

.preheader17:                                     ; preds = %.preheader17.preheader, %.preheader17.loopexit
  %47 = phi i1 [ false, %.preheader17.loopexit ], [ true, %.preheader17.preheader ]
  br i1 %47, label %.preheader16.preheader, label %52

.preheader16.preheader:                           ; preds = %.preheader17
  br label %.preheader16

.preheader16:                                     ; preds = %.preheader16.preheader, %48
  %indvars.iv58 = phi i64 [ 0, %.preheader16.preheader ], [ %indvars.iv.next59, %48 ]
  %exitcond61 = icmp ne i64 %indvars.iv58, 2
  br i1 %exitcond61, label %48, label %.preheader17.loopexit

48:                                               ; preds = %.preheader16
  %49 = shl nuw nsw i64 %indvars.iv58, 6
  %50 = or disjoint i64 %indvars.iv62, %49
  %51 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %50
  store i32 1, ptr %51, align 4
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1
  br label %.preheader16, !llvm.loop !32

52:                                               ; preds = %.preheader17
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 1
  br label %46, !llvm.loop !33

53:                                               ; preds = %46
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %54

.loopexit3:                                       ; preds = %.preheader15
  br label %54, !llvm.loop !34

54:                                               ; preds = %.loopexit3, %53
  %55 = phi i1 [ true, %53 ], [ false, %.loopexit3 ]
  br i1 %55, label %.preheader15.preheader, label %62

.preheader15.preheader:                           ; preds = %54
  br label %.preheader15

.preheader15:                                     ; preds = %.preheader15.preheader, %61
  %indvars.iv70 = phi i64 [ 0, %.preheader15.preheader ], [ %indvars.iv.next71, %61 ]
  %exitcond73 = icmp ne i64 %indvars.iv70, 2
  br i1 %exitcond73, label %.preheader14.preheader, label %.loopexit3

.preheader14.preheader:                           ; preds = %.preheader15
  %56 = shl nuw nsw i64 %indvars.iv70, 3
  br label %.preheader14

.preheader14:                                     ; preds = %.preheader14.preheader, %57
  %indvars.iv66 = phi i64 [ 0, %.preheader14.preheader ], [ %indvars.iv.next67, %57 ]
  %exitcond69 = icmp ne i64 %indvars.iv66, 4
  br i1 %exitcond69, label %57, label %61

57:                                               ; preds = %.preheader14
  %58 = shl nuw nsw i64 %indvars.iv66, 6
  %59 = or disjoint i64 %58, %56
  %60 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %59
  store i32 1, ptr %60, align 4
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1
  br label %.preheader14, !llvm.loop !35

61:                                               ; preds = %.preheader14
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70, 1
  br label %.preheader15, !llvm.loop !36

62:                                               ; preds = %54
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %63

63:                                               ; preds = %67, %62
  %indvars.iv74 = phi i64 [ %indvars.iv.next75, %67 ], [ 0, %62 ]
  %exitcond77 = icmp ne i64 %indvars.iv74, 3
  br i1 %exitcond77, label %.preheader13.preheader, label %68

.preheader13.preheader:                           ; preds = %63
  %64 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %indvars.iv74
  br label %.preheader13

.preheader13.loopexit:                            ; preds = %.preheader12
  br label %.preheader13, !llvm.loop !37

.preheader13:                                     ; preds = %.preheader13.preheader, %.preheader13.loopexit
  %65 = phi i1 [ false, %.preheader13.loopexit ], [ true, %.preheader13.preheader ]
  br i1 %65, label %.preheader12.preheader, label %67

.preheader12.preheader:                           ; preds = %.preheader13
  br label %.preheader12

.preheader12:                                     ; preds = %.preheader12.preheader, %66
  %storemerge33 = phi i1 [ false, %66 ], [ true, %.preheader12.preheader ]
  br i1 %storemerge33, label %66, label %.preheader13.loopexit

66:                                               ; preds = %.preheader12
  store i32 1, ptr %64, align 4
  br label %.preheader12, !llvm.loop !38

67:                                               ; preds = %.preheader13
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1
  br label %63, !llvm.loop !39

68:                                               ; preds = %63
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %69

.loopexit2:                                       ; preds = %.preheader11
  br label %69, !llvm.loop !40

69:                                               ; preds = %.loopexit2, %68
  %70 = phi i1 [ true, %68 ], [ false, %.loopexit2 ]
  br i1 %70, label %.preheader11.preheader, label %75

.preheader11.preheader:                           ; preds = %69
  br label %.preheader11

.preheader11:                                     ; preds = %.preheader11.preheader, %74
  %indvars.iv78 = phi i64 [ 0, %.preheader11.preheader ], [ %indvars.iv.next79, %74 ]
  %exitcond81 = icmp ne i64 %indvars.iv78, 3
  br i1 %exitcond81, label %.preheader10.preheader, label %.loopexit2

.preheader10.preheader:                           ; preds = %.preheader11
  %71 = shl nuw nsw i64 %indvars.iv78, 3
  %72 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %71
  br label %.preheader10

.preheader10:                                     ; preds = %.preheader10.preheader, %73
  %storemerge31 = phi i1 [ false, %73 ], [ true, %.preheader10.preheader ]
  br i1 %storemerge31, label %73, label %74

73:                                               ; preds = %.preheader10
  store i32 1, ptr %72, align 4
  br label %.preheader10, !llvm.loop !41

74:                                               ; preds = %.preheader10
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1
  br label %.preheader11, !llvm.loop !42

75:                                               ; preds = %69
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %76

.loopexit1:                                       ; preds = %.preheader9
  br label %76, !llvm.loop !43

76:                                               ; preds = %.loopexit1, %75
  %77 = phi i1 [ true, %75 ], [ false, %.loopexit1 ]
  br i1 %77, label %.preheader9.preheader, label %82

.preheader9.preheader:                            ; preds = %76
  br label %.preheader9

.preheader9.loopexit:                             ; preds = %.preheader8
  br label %.preheader9, !llvm.loop !44

.preheader9:                                      ; preds = %.preheader9.preheader, %.preheader9.loopexit
  %78 = phi i1 [ false, %.preheader9.loopexit ], [ true, %.preheader9.preheader ]
  br i1 %78, label %.preheader8.preheader, label %.loopexit1

.preheader8.preheader:                            ; preds = %.preheader9
  br label %.preheader8

.preheader8:                                      ; preds = %.preheader8.preheader, %79
  %indvars.iv82 = phi i64 [ 0, %.preheader8.preheader ], [ %indvars.iv.next83, %79 ]
  %exitcond85 = icmp ne i64 %indvars.iv82, 3
  br i1 %exitcond85, label %79, label %.preheader9.loopexit

79:                                               ; preds = %.preheader8
  %80 = shl nuw nsw i64 %indvars.iv82, 6
  %81 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %80
  store i32 1, ptr %81, align 4
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 1
  br label %.preheader8, !llvm.loop !45

82:                                               ; preds = %76
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %83

83:                                               ; preds = %89, %82
  %indvars.iv90 = phi i64 [ %indvars.iv.next91, %89 ], [ 0, %82 ]
  %exitcond93 = icmp ne i64 %indvars.iv90, 2
  br i1 %exitcond93, label %.preheader7.preheader, label %90

.preheader7.preheader:                            ; preds = %83
  br label %.preheader7

.preheader7:                                      ; preds = %.preheader7.preheader, %88
  %indvars.iv86 = phi i64 [ 0, %.preheader7.preheader ], [ %indvars.iv.next87, %88 ]
  %exitcond89 = icmp ne i64 %indvars.iv86, 2
  br i1 %exitcond89, label %.preheader6.preheader, label %89

.preheader6.preheader:                            ; preds = %.preheader7
  %84 = shl nuw nsw i64 %indvars.iv86, 3
  %85 = or disjoint i64 %indvars.iv90, %84
  %86 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %85
  br label %.preheader6

.preheader6:                                      ; preds = %.preheader6.preheader, %87
  %storemerge27 = phi i1 [ false, %87 ], [ true, %.preheader6.preheader ]
  br i1 %storemerge27, label %87, label %88

87:                                               ; preds = %.preheader6
  store i32 1, ptr %86, align 4
  br label %.preheader6, !llvm.loop !46

88:                                               ; preds = %.preheader6
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1
  br label %.preheader7, !llvm.loop !47

89:                                               ; preds = %.preheader7
  %indvars.iv.next91 = add nuw nsw i64 %indvars.iv90, 1
  br label %83, !llvm.loop !48

90:                                               ; preds = %83
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %91

91:                                               ; preds = %97, %90
  %indvars.iv98 = phi i64 [ %indvars.iv.next99, %97 ], [ 0, %90 ]
  %exitcond101 = icmp ne i64 %indvars.iv98, 2
  br i1 %exitcond101, label %.preheader5.preheader, label %98

.preheader5.preheader:                            ; preds = %91
  br label %.preheader5

.preheader5.loopexit:                             ; preds = %.preheader4
  br label %.preheader5, !llvm.loop !49

.preheader5:                                      ; preds = %.preheader5.preheader, %.preheader5.loopexit
  %92 = phi i1 [ false, %.preheader5.loopexit ], [ true, %.preheader5.preheader ]
  br i1 %92, label %.preheader4.preheader, label %97

.preheader4.preheader:                            ; preds = %.preheader5
  br label %.preheader4

.preheader4:                                      ; preds = %.preheader4.preheader, %93
  %indvars.iv94 = phi i64 [ 0, %.preheader4.preheader ], [ %indvars.iv.next95, %93 ]
  %exitcond97 = icmp ne i64 %indvars.iv94, 2
  br i1 %exitcond97, label %93, label %.preheader5.loopexit

93:                                               ; preds = %.preheader4
  %94 = shl nuw nsw i64 %indvars.iv94, 6
  %95 = or disjoint i64 %indvars.iv98, %94
  %96 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %95
  store i32 1, ptr %96, align 4
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 1
  br label %.preheader4, !llvm.loop !50

97:                                               ; preds = %.preheader5
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1
  br label %91, !llvm.loop !51

98:                                               ; preds = %91
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %99

.loopexit:                                        ; preds = %.preheader3
  br label %99, !llvm.loop !52

99:                                               ; preds = %.loopexit, %98
  %100 = phi i1 [ true, %98 ], [ false, %.loopexit ]
  br i1 %100, label %.preheader3.preheader, label %107

.preheader3.preheader:                            ; preds = %99
  br label %.preheader3

.preheader3:                                      ; preds = %.preheader3.preheader, %106
  %indvars.iv106 = phi i64 [ 0, %.preheader3.preheader ], [ %indvars.iv.next107, %106 ]
  %exitcond109 = icmp ne i64 %indvars.iv106, 2
  br i1 %exitcond109, label %.preheader2.preheader, label %.loopexit

.preheader2.preheader:                            ; preds = %.preheader3
  %101 = shl nuw nsw i64 %indvars.iv106, 3
  br label %.preheader2

.preheader2:                                      ; preds = %.preheader2.preheader, %102
  %indvars.iv102 = phi i64 [ 0, %.preheader2.preheader ], [ %indvars.iv.next103, %102 ]
  %exitcond105 = icmp ne i64 %indvars.iv102, 2
  br i1 %exitcond105, label %102, label %106

102:                                              ; preds = %.preheader2
  %103 = shl nuw nsw i64 %indvars.iv102, 6
  %104 = or disjoint i64 %103, %101
  %105 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %104
  store i32 1, ptr %105, align 4
  %indvars.iv.next103 = add nuw nsw i64 %indvars.iv102, 1
  br label %.preheader2, !llvm.loop !53

106:                                              ; preds = %.preheader2
  %indvars.iv.next107 = add nuw nsw i64 %indvars.iv106, 1
  br label %.preheader3, !llvm.loop !54

107:                                              ; preds = %99
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %108

108:                                              ; preds = %114, %107
  %indvars.iv118 = phi i64 [ %indvars.iv.next119, %114 ], [ 0, %107 ]
  %exitcond121 = icmp ne i64 %indvars.iv118, 2
  br i1 %exitcond121, label %.preheader1.preheader, label %115

.preheader1.preheader:                            ; preds = %108
  br label %.preheader1

.preheader1:                                      ; preds = %.preheader1.preheader, %113
  %indvars.iv114 = phi i64 [ 0, %.preheader1.preheader ], [ %indvars.iv.next115, %113 ]
  %exitcond117 = icmp ne i64 %indvars.iv114, 2
  br i1 %exitcond117, label %.preheader.preheader, label %114

.preheader.preheader:                             ; preds = %.preheader1
  %109 = shl nuw nsw i64 %indvars.iv114, 3
  %invariant.op122 = or disjoint i64 %109, %indvars.iv118
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %110
  %indvars.iv110 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next111, %110 ]
  %exitcond113 = icmp ne i64 %indvars.iv110, 2
  br i1 %exitcond113, label %110, label %113

110:                                              ; preds = %.preheader
  %111 = shl nuw nsw i64 %indvars.iv110, 6
  %.reass123 = or disjoint i64 %111, %invariant.op122
  %112 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %.reass123
  store i32 1, ptr %112, align 4
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110, 1
  br label %.preheader, !llvm.loop !55

113:                                              ; preds = %.preheader
  %indvars.iv.next115 = add nuw nsw i64 %indvars.iv114, 1
  br label %.preheader1, !llvm.loop !56

114:                                              ; preds = %.preheader1
  %indvars.iv.next119 = add nuw nsw i64 %indvars.iv118, 1
  br label %108, !llvm.loop !57

115:                                              ; preds = %108
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 0, ptr @kount, align 4
  %116 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %116, 0
  br i1 %.not, label %119, label %117

117:                                              ; preds = %115
  %118 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %118, ptr @n, align 4
  br label %120

119:                                              ; preds = %115
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %120

120:                                              ; preds = %119, %117
  %121 = load i32, ptr @n, align 4
  %122 = call i32 @Trial(i32 noundef %121)
  %.not16 = icmp eq i32 %122, 0
  br i1 %.not16, label %123, label %124

123:                                              ; preds = %120
  %puts17 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %127

124:                                              ; preds = %120
  %125 = load i32, ptr @kount, align 4
  %.not18 = icmp eq i32 %125, 2005
  br i1 %.not18, label %127, label %126

126:                                              ; preds = %124
  %puts19 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %127

127:                                              ; preds = %126, %124, %123
  %128 = load i32, ptr @n, align 4
  %129 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %128) #4
  %130 = load i32, ptr @kount, align 4
  %131 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %130) #4
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
