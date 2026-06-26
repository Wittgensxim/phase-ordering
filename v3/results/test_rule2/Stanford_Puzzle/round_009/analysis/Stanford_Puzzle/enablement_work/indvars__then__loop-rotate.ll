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
  %.not4 = icmp sgt i64 0, %7
  br i1 %.not4, label %19, label %.lr.ph

.lr.ph:                                           ; preds = %2
  br label %8

8:                                                ; preds = %.lr.ph, %16
  %indvars.iv5 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %16 ]
  %9 = getelementptr inbounds [2048 x i8], ptr @p, i64 %4
  %10 = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %indvars.iv5
  %11 = load i32, ptr %10, align 4
  %.not2 = icmp eq i32 %11, 0
  br i1 %.not2, label %16, label %12

12:                                               ; preds = %8
  %13 = add nsw i64 %3, %indvars.iv5
  %14 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %13
  %15 = load i32, ptr %14, align 4
  %.not3 = icmp eq i32 %15, 0
  br i1 %.not3, label %16, label %._crit_edge

16:                                               ; preds = %12, %8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv5, 1
  %17 = load i32, ptr %5, align 4
  %18 = sext i32 %17 to i64
  %.not = icmp sgt i64 %indvars.iv.next, %18
  br i1 %.not, label %._crit_edge6, label %8, !llvm.loop !7

._crit_edge:                                      ; preds = %12
  %split = phi i32 [ 0, %12 ]
  br label %19

._crit_edge6:                                     ; preds = %16
  %split7 = phi i32 [ 1, %16 ]
  br label %19

19:                                               ; preds = %._crit_edge6, %._crit_edge, %2
  %storemerge1 = phi i32 [ %split, %._crit_edge ], [ %split7, %._crit_edge6 ], [ 1, %2 ]
  ret i32 %storemerge1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Place(i32 noundef %0, i32 noundef %1) #0 {
  %3 = sext i32 %1 to i64
  %4 = sext i32 %0 to i64
  %5 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %4
  %6 = load i32, ptr %5, align 4
  %7 = sext i32 %6 to i64
  %.not5 = icmp sgt i64 0, %7
  br i1 %.not5, label %18, label %.lr.ph

.lr.ph:                                           ; preds = %2
  br label %8

8:                                                ; preds = %.lr.ph, %15
  %indvars.iv26 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next3, %15 ]
  %9 = getelementptr inbounds [2048 x i8], ptr @p, i64 %4
  %10 = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %indvars.iv26
  %11 = load i32, ptr %10, align 4
  %.not4 = icmp eq i32 %11, 0
  br i1 %.not4, label %15, label %12

12:                                               ; preds = %8
  %13 = add nsw i64 %3, %indvars.iv26
  %14 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %13
  store i32 1, ptr %14, align 4
  br label %15

15:                                               ; preds = %12, %8
  %indvars.iv.next3 = add nuw nsw i64 %indvars.iv26, 1
  %16 = load i32, ptr %5, align 4
  %17 = sext i32 %16 to i64
  %.not = icmp sgt i64 %indvars.iv.next3, %17
  br i1 %.not, label %._crit_edge, label %8, !llvm.loop !9

._crit_edge:                                      ; preds = %15
  br label %18

18:                                               ; preds = %._crit_edge, %2
  %19 = sext i32 %0 to i64
  %20 = getelementptr inbounds [4 x i8], ptr @class, i64 %19
  %21 = load i32, ptr %20, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %22
  %24 = load i32, ptr %23, align 4
  %25 = add nsw i32 %24, -1
  store i32 %25, ptr %23, align 4
  %26 = sext i32 %1 to i64
  %smax = call i32 @llvm.smax.i32(i32 %1, i32 512)
  %wide.trip.count = zext nneg i32 %smax to i64
  %exitcond.not7 = icmp eq i64 %26, %wide.trip.count
  br i1 %exitcond.not7, label %.loopexit.loopexit, label %.lr.ph10

.lr.ph10:                                         ; preds = %18
  br label %27

27:                                               ; preds = %.lr.ph10, %32
  %indvars.iv8 = phi i64 [ %26, %.lr.ph10 ], [ %indvars.iv.next, %32 ]
  %28 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %indvars.iv8
  %29 = load i32, ptr %28, align 4
  %.not3 = icmp eq i32 %29, 0
  br i1 %.not3, label %30, label %32

30:                                               ; preds = %27
  %indvars.iv.lcssa1 = phi i64 [ %indvars.iv8, %27 ]
  %31 = trunc nsw i64 %indvars.iv.lcssa1 to i32
  br label %.loopexit

32:                                               ; preds = %27
  %indvars.iv.next = add nsw i64 %indvars.iv8, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %..loopexit.loopexit_crit_edge, label %27, !llvm.loop !10

..loopexit.loopexit_crit_edge:                    ; preds = %32
  br label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %..loopexit.loopexit_crit_edge, %18
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
  %.not2 = icmp sgt i64 0, %7
  br i1 %.not2, label %18, label %.lr.ph

.lr.ph:                                           ; preds = %2
  br label %8

8:                                                ; preds = %.lr.ph, %15
  %indvars.iv3 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %15 ]
  %9 = getelementptr inbounds [2048 x i8], ptr @p, i64 %4
  %10 = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %indvars.iv3
  %11 = load i32, ptr %10, align 4
  %.not1 = icmp eq i32 %11, 0
  br i1 %.not1, label %15, label %12

12:                                               ; preds = %8
  %13 = add nsw i64 %3, %indvars.iv3
  %14 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %13
  store i32 0, ptr %14, align 4
  br label %15

15:                                               ; preds = %12, %8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv3, 1
  %16 = load i32, ptr %5, align 4
  %17 = sext i32 %16 to i64
  %.not = icmp sgt i64 %indvars.iv.next, %17
  br i1 %.not, label %._crit_edge, label %8, !llvm.loop !11

._crit_edge:                                      ; preds = %15
  br label %18

18:                                               ; preds = %._crit_edge, %2
  %19 = sext i32 %0 to i64
  %20 = getelementptr inbounds [4 x i8], ptr @class, i64 %19
  %21 = load i32, ptr %20, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %22
  %24 = load i32, ptr %23, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, ptr %23, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Trial(i32 noundef %0) #0 {
  %2 = load i32, ptr @kount, align 4
  %3 = add nsw i32 %2, 1
  store i32 %3, ptr @kount, align 4
  br label %4

4:                                                ; preds = %1, %20
  %indvars.iv2 = phi i64 [ 0, %1 ], [ %indvars.iv.next, %20 ]
  %5 = getelementptr inbounds nuw [4 x i8], ptr @class, i64 %indvars.iv2
  %6 = load i32, ptr %5, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %7
  %9 = load i32, ptr %8, align 4
  %.not = icmp eq i32 %9, 0
  br i1 %.not, label %20, label %10

10:                                               ; preds = %4
  %11 = trunc nuw nsw i64 %indvars.iv2 to i32
  %12 = call i32 @Fit(i32 noundef %11, i32 noundef %0)
  %.not2 = icmp eq i32 %12, 0
  br i1 %.not2, label %20, label %13

13:                                               ; preds = %10
  %14 = trunc nuw nsw i64 %indvars.iv2 to i32
  %15 = call i32 @Place(i32 noundef %14, i32 noundef %0)
  %16 = call i32 @Trial(i32 noundef %15)
  %.not3 = icmp ne i32 %16, 0
  %17 = icmp eq i32 %15, 0
  %or.cond = or i1 %.not3, %17
  br i1 %or.cond, label %21, label %18

18:                                               ; preds = %13
  %19 = trunc nuw nsw i64 %indvars.iv2 to i32
  call void @Remove(i32 noundef %19, i32 noundef %0)
  br label %20

20:                                               ; preds = %18, %10, %4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv2, 1
  %exitcond = icmp ne i64 %indvars.iv.next, 13
  br i1 %exitcond, label %4, label %21, !llvm.loop !12

21:                                               ; preds = %13, %20
  %storemerge1 = phi i32 [ 1, %13 ], [ 0, %20 ]
  ret i32 %storemerge1
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Puzzle() #0 {
  br label %1

.preheader31.preheader:                           ; preds = %1
  br label %.preheader30.preheader

1:                                                ; preds = %0, %1
  %indvars.iv122 = phi i64 [ 0, %0 ], [ %indvars.iv.next, %1 ]
  %2 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %indvars.iv122
  store i32 1, ptr %2, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv122, 1
  %exitcond = icmp ne i64 %indvars.iv.next, 512
  br i1 %exitcond, label %1, label %.preheader31.preheader, !llvm.loop !13

.preheader30.preheader:                           ; preds = %.preheader31.preheader, %.preheader31
  %indvars.iv14125 = phi i64 [ 1, %.preheader31.preheader ], [ %indvars.iv.next15, %.preheader31 ]
  br label %.preheader29.preheader

.preheader28.preheader:                           ; preds = %.preheader31
  br label %.preheader27.preheader

.preheader29.preheader:                           ; preds = %.preheader30.preheader, %.preheader30
  %indvars.iv10124 = phi i64 [ 1, %.preheader30.preheader ], [ %indvars.iv.next11, %.preheader30 ]
  br label %.preheader29

.preheader29:                                     ; preds = %.preheader29.preheader, %.preheader29
  %indvars.iv6123 = phi i64 [ 1, %.preheader29.preheader ], [ %indvars.iv.next7, %.preheader29 ]
  %3 = shl nuw nsw i64 %indvars.iv6123, 6
  %4 = shl nuw nsw i64 %indvars.iv10124, 3
  %5 = or disjoint i64 %3, %4
  %6 = or disjoint i64 %indvars.iv14125, %5
  %7 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %6
  store i32 0, ptr %7, align 4
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6123, 1
  %exitcond9 = icmp ne i64 %indvars.iv.next7, 6
  br i1 %exitcond9, label %.preheader29, label %.preheader30, !llvm.loop !14

.preheader30:                                     ; preds = %.preheader29
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10124, 1
  %exitcond13 = icmp ne i64 %indvars.iv.next11, 6
  br i1 %exitcond13, label %.preheader29.preheader, label %.preheader31, !llvm.loop !15

.preheader31:                                     ; preds = %.preheader30
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14125, 1
  %exitcond17 = icmp ne i64 %indvars.iv.next15, 6
  br i1 %exitcond17, label %.preheader30.preheader, label %.preheader28.preheader, !llvm.loop !16

.preheader27.preheader:                           ; preds = %.preheader28.preheader, %.preheader28
  %indvars.iv22127 = phi i64 [ 0, %.preheader28.preheader ], [ %indvars.iv.next23, %.preheader28 ]
  br label %.preheader27

.preheader26.preheader:                           ; preds = %.preheader28
  br label %.preheader25.preheader

.preheader27:                                     ; preds = %.preheader27.preheader, %.preheader27
  %indvars.iv18126 = phi i64 [ 0, %.preheader27.preheader ], [ %indvars.iv.next19, %.preheader27 ]
  %8 = getelementptr inbounds nuw [2048 x i8], ptr @p, i64 %indvars.iv22127
  %9 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv18126
  store i32 0, ptr %9, align 4
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18126, 1
  %exitcond21 = icmp ne i64 %indvars.iv.next19, 512
  br i1 %exitcond21, label %.preheader27, label %.preheader28, !llvm.loop !17

.preheader28:                                     ; preds = %.preheader27
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22127, 1
  %exitcond25 = icmp ne i64 %indvars.iv.next23, 13
  br i1 %exitcond25, label %.preheader27.preheader, label %.preheader26.preheader, !llvm.loop !18

.preheader25.preheader:                           ; preds = %.preheader26.preheader, %.preheader26
  %indvars.iv30129 = phi i64 [ 0, %.preheader26.preheader ], [ %indvars.iv.next31, %.preheader26 ]
  br label %.preheader24.preheader

.preheader24.preheader:                           ; preds = %.preheader25.preheader, %.preheader25
  %indvars.iv26128 = phi i64 [ 0, %.preheader25.preheader ], [ %indvars.iv.next27, %.preheader25 ]
  br label %.preheader24

.preheader24:                                     ; preds = %.preheader24.preheader, %.preheader24
  %10 = shl nuw nsw i64 %indvars.iv26128, 3
  %11 = or disjoint i64 %indvars.iv30129, %10
  %12 = getelementptr inbounds nuw [4 x i8], ptr @p, i64 %11
  store i32 1, ptr %12, align 4
  br i1 false, label %.preheader24, label %.preheader25, !llvm.loop !19

.preheader25:                                     ; preds = %.preheader24
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26128, 1
  %exitcond29 = icmp ne i64 %indvars.iv.next27, 2
  br i1 %exitcond29, label %.preheader24.preheader, label %.preheader26, !llvm.loop !20

.preheader26:                                     ; preds = %.preheader25
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30129, 1
  %exitcond33 = icmp ne i64 %indvars.iv.next31, 4
  br i1 %exitcond33, label %.preheader25.preheader, label %13, !llvm.loop !21

13:                                               ; preds = %.preheader26
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %.preheader23.preheader

.preheader23.preheader:                           ; preds = %13, %17
  %indvars.iv38131 = phi i64 [ 0, %13 ], [ %indvars.iv.next39, %17 ]
  br label %.preheader22.preheader

.preheader23.loopexit:                            ; preds = %.preheader22
  br i1 false, label %.preheader22.preheader, label %17, !llvm.loop !22

.preheader22.preheader:                           ; preds = %.preheader23.preheader, %.preheader23.loopexit
  br label %.preheader22

.preheader22:                                     ; preds = %.preheader22.preheader, %.preheader22
  %indvars.iv34130 = phi i64 [ 0, %.preheader22.preheader ], [ %indvars.iv.next35, %.preheader22 ]
  %14 = shl nuw nsw i64 %indvars.iv34130, 6
  %15 = or disjoint i64 %indvars.iv38131, %14
  %16 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %15
  store i32 1, ptr %16, align 4
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34130, 1
  %exitcond37 = icmp ne i64 %indvars.iv.next35, 4
  br i1 %exitcond37, label %.preheader22, label %.preheader23.loopexit, !llvm.loop !23

17:                                               ; preds = %.preheader23.loopexit
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38131, 1
  %exitcond41 = icmp ne i64 %indvars.iv.next39, 2
  br i1 %exitcond41, label %.preheader23.preheader, label %18, !llvm.loop !24

18:                                               ; preds = %17
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %.preheader21.preheader

.loopexit4:                                       ; preds = %.preheader21
  br i1 false, label %.preheader21.preheader, label %23, !llvm.loop !25

.preheader21.preheader:                           ; preds = %18, %.loopexit4
  br label %.preheader20.preheader

.preheader20.preheader:                           ; preds = %.preheader21.preheader, %.preheader21
  %indvars.iv46133 = phi i64 [ 0, %.preheader21.preheader ], [ %indvars.iv.next47, %.preheader21 ]
  br label %.preheader20

.preheader20:                                     ; preds = %.preheader20.preheader, %.preheader20
  %indvars.iv42132 = phi i64 [ 0, %.preheader20.preheader ], [ %indvars.iv.next43, %.preheader20 ]
  %19 = shl nuw nsw i64 %indvars.iv42132, 6
  %20 = shl nuw nsw i64 %indvars.iv46133, 3
  %21 = or disjoint i64 %19, %20
  %22 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %21
  store i32 1, ptr %22, align 4
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42132, 1
  %exitcond45 = icmp ne i64 %indvars.iv.next43, 2
  br i1 %exitcond45, label %.preheader20, label %.preheader21, !llvm.loop !26

.preheader21:                                     ; preds = %.preheader20
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46133, 1
  %exitcond49 = icmp ne i64 %indvars.iv.next47, 4
  br i1 %exitcond49, label %.preheader20.preheader, label %.loopexit4, !llvm.loop !27

23:                                               ; preds = %.loopexit4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %.preheader19.preheader

.preheader19.preheader:                           ; preds = %23, %27
  %indvars.iv54135 = phi i64 [ 0, %23 ], [ %indvars.iv.next55, %27 ]
  br label %.preheader18.preheader

.preheader18.preheader:                           ; preds = %.preheader19.preheader, %.preheader19
  %indvars.iv50134 = phi i64 [ 0, %.preheader19.preheader ], [ %indvars.iv.next51, %.preheader19 ]
  br label %.preheader18

.preheader18:                                     ; preds = %.preheader18.preheader, %.preheader18
  %24 = shl nuw nsw i64 %indvars.iv50134, 3
  %25 = or disjoint i64 %indvars.iv54135, %24
  %26 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %25
  store i32 1, ptr %26, align 4
  br i1 false, label %.preheader18, label %.preheader19, !llvm.loop !28

.preheader19:                                     ; preds = %.preheader18
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50134, 1
  %exitcond53 = icmp ne i64 %indvars.iv.next51, 4
  br i1 %exitcond53, label %.preheader18.preheader, label %27, !llvm.loop !29

27:                                               ; preds = %.preheader19
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54135, 1
  %exitcond57 = icmp ne i64 %indvars.iv.next55, 2
  br i1 %exitcond57, label %.preheader19.preheader, label %28, !llvm.loop !30

28:                                               ; preds = %27
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %.preheader17.preheader

.preheader17.preheader:                           ; preds = %28, %32
  %indvars.iv62137 = phi i64 [ 0, %28 ], [ %indvars.iv.next63, %32 ]
  br label %.preheader16.preheader

.preheader17.loopexit:                            ; preds = %.preheader16
  br i1 false, label %.preheader16.preheader, label %32, !llvm.loop !31

.preheader16.preheader:                           ; preds = %.preheader17.preheader, %.preheader17.loopexit
  br label %.preheader16

.preheader16:                                     ; preds = %.preheader16.preheader, %.preheader16
  %indvars.iv58136 = phi i64 [ 0, %.preheader16.preheader ], [ %indvars.iv.next59, %.preheader16 ]
  %29 = shl nuw nsw i64 %indvars.iv58136, 6
  %30 = or disjoint i64 %indvars.iv62137, %29
  %31 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %30
  store i32 1, ptr %31, align 4
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58136, 1
  %exitcond61 = icmp ne i64 %indvars.iv.next59, 2
  br i1 %exitcond61, label %.preheader16, label %.preheader17.loopexit, !llvm.loop !32

32:                                               ; preds = %.preheader17.loopexit
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62137, 1
  %exitcond65 = icmp ne i64 %indvars.iv.next63, 4
  br i1 %exitcond65, label %.preheader17.preheader, label %33, !llvm.loop !33

33:                                               ; preds = %32
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %.preheader15.preheader

.loopexit3:                                       ; preds = %.preheader15
  br i1 false, label %.preheader15.preheader, label %38, !llvm.loop !34

.preheader15.preheader:                           ; preds = %33, %.loopexit3
  br label %.preheader14.preheader

.preheader14.preheader:                           ; preds = %.preheader15.preheader, %.preheader15
  %indvars.iv70139 = phi i64 [ 0, %.preheader15.preheader ], [ %indvars.iv.next71, %.preheader15 ]
  br label %.preheader14

.preheader14:                                     ; preds = %.preheader14.preheader, %.preheader14
  %indvars.iv66138 = phi i64 [ 0, %.preheader14.preheader ], [ %indvars.iv.next67, %.preheader14 ]
  %34 = shl nuw nsw i64 %indvars.iv66138, 6
  %35 = shl nuw nsw i64 %indvars.iv70139, 3
  %36 = or disjoint i64 %34, %35
  %37 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %36
  store i32 1, ptr %37, align 4
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66138, 1
  %exitcond69 = icmp ne i64 %indvars.iv.next67, 4
  br i1 %exitcond69, label %.preheader14, label %.preheader15, !llvm.loop !35

.preheader15:                                     ; preds = %.preheader14
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70139, 1
  %exitcond73 = icmp ne i64 %indvars.iv.next71, 2
  br i1 %exitcond73, label %.preheader14.preheader, label %.loopexit3, !llvm.loop !36

38:                                               ; preds = %.loopexit3
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %.preheader13.preheader

.preheader13.preheader:                           ; preds = %38, %40
  %indvars.iv74140 = phi i64 [ 0, %38 ], [ %indvars.iv.next75, %40 ]
  br label %.preheader12.preheader

.preheader13.loopexit:                            ; preds = %.preheader12
  br i1 false, label %.preheader12.preheader, label %40, !llvm.loop !37

.preheader12.preheader:                           ; preds = %.preheader13.preheader, %.preheader13.loopexit
  br label %.preheader12

.preheader12:                                     ; preds = %.preheader12.preheader, %.preheader12
  %39 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %indvars.iv74140
  store i32 1, ptr %39, align 4
  br i1 false, label %.preheader12, label %.preheader13.loopexit, !llvm.loop !38

40:                                               ; preds = %.preheader13.loopexit
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74140, 1
  %exitcond77 = icmp ne i64 %indvars.iv.next75, 3
  br i1 %exitcond77, label %.preheader13.preheader, label %41, !llvm.loop !39

41:                                               ; preds = %40
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %.preheader11.preheader

.loopexit2:                                       ; preds = %.preheader11
  br i1 false, label %.preheader11.preheader, label %44, !llvm.loop !40

.preheader11.preheader:                           ; preds = %41, %.loopexit2
  br label %.preheader10.preheader

.preheader10.preheader:                           ; preds = %.preheader11.preheader, %.preheader11
  %indvars.iv78141 = phi i64 [ 0, %.preheader11.preheader ], [ %indvars.iv.next79, %.preheader11 ]
  br label %.preheader10

.preheader10:                                     ; preds = %.preheader10.preheader, %.preheader10
  %42 = shl nuw nsw i64 %indvars.iv78141, 3
  %43 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %42
  store i32 1, ptr %43, align 4
  br i1 false, label %.preheader10, label %.preheader11, !llvm.loop !41

.preheader11:                                     ; preds = %.preheader10
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78141, 1
  %exitcond81 = icmp ne i64 %indvars.iv.next79, 3
  br i1 %exitcond81, label %.preheader10.preheader, label %.loopexit2, !llvm.loop !42

44:                                               ; preds = %.loopexit2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %.preheader9.preheader

.loopexit1:                                       ; preds = %.preheader9.loopexit
  br i1 false, label %.preheader9.preheader, label %47, !llvm.loop !43

.preheader9.preheader:                            ; preds = %44, %.loopexit1
  br label %.preheader8.preheader

.preheader9.loopexit:                             ; preds = %.preheader8
  br i1 false, label %.preheader8.preheader, label %.loopexit1, !llvm.loop !44

.preheader8.preheader:                            ; preds = %.preheader9.preheader, %.preheader9.loopexit
  br label %.preheader8

.preheader8:                                      ; preds = %.preheader8.preheader, %.preheader8
  %indvars.iv82142 = phi i64 [ 0, %.preheader8.preheader ], [ %indvars.iv.next83, %.preheader8 ]
  %45 = shl nuw nsw i64 %indvars.iv82142, 6
  %46 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %45
  store i32 1, ptr %46, align 4
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82142, 1
  %exitcond85 = icmp ne i64 %indvars.iv.next83, 3
  br i1 %exitcond85, label %.preheader8, label %.preheader9.loopexit, !llvm.loop !45

47:                                               ; preds = %.loopexit1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %.preheader7.preheader

.preheader7.preheader:                            ; preds = %47, %51
  %indvars.iv90144 = phi i64 [ 0, %47 ], [ %indvars.iv.next91, %51 ]
  br label %.preheader6.preheader

.preheader6.preheader:                            ; preds = %.preheader7.preheader, %.preheader7
  %indvars.iv86143 = phi i64 [ 0, %.preheader7.preheader ], [ %indvars.iv.next87, %.preheader7 ]
  br label %.preheader6

.preheader6:                                      ; preds = %.preheader6.preheader, %.preheader6
  %48 = shl nuw nsw i64 %indvars.iv86143, 3
  %49 = or disjoint i64 %indvars.iv90144, %48
  %50 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %49
  store i32 1, ptr %50, align 4
  br i1 false, label %.preheader6, label %.preheader7, !llvm.loop !46

.preheader7:                                      ; preds = %.preheader6
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86143, 1
  %exitcond89 = icmp ne i64 %indvars.iv.next87, 2
  br i1 %exitcond89, label %.preheader6.preheader, label %51, !llvm.loop !47

51:                                               ; preds = %.preheader7
  %indvars.iv.next91 = add nuw nsw i64 %indvars.iv90144, 1
  %exitcond93 = icmp ne i64 %indvars.iv.next91, 2
  br i1 %exitcond93, label %.preheader7.preheader, label %52, !llvm.loop !48

52:                                               ; preds = %51
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %.preheader5.preheader

.preheader5.preheader:                            ; preds = %52, %56
  %indvars.iv98146 = phi i64 [ 0, %52 ], [ %indvars.iv.next99, %56 ]
  br label %.preheader4.preheader

.preheader5.loopexit:                             ; preds = %.preheader4
  br i1 false, label %.preheader4.preheader, label %56, !llvm.loop !49

.preheader4.preheader:                            ; preds = %.preheader5.preheader, %.preheader5.loopexit
  br label %.preheader4

.preheader4:                                      ; preds = %.preheader4.preheader, %.preheader4
  %indvars.iv94145 = phi i64 [ 0, %.preheader4.preheader ], [ %indvars.iv.next95, %.preheader4 ]
  %53 = shl nuw nsw i64 %indvars.iv94145, 6
  %54 = or disjoint i64 %indvars.iv98146, %53
  %55 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %54
  store i32 1, ptr %55, align 4
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94145, 1
  %exitcond97 = icmp ne i64 %indvars.iv.next95, 2
  br i1 %exitcond97, label %.preheader4, label %.preheader5.loopexit, !llvm.loop !50

56:                                               ; preds = %.preheader5.loopexit
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98146, 1
  %exitcond101 = icmp ne i64 %indvars.iv.next99, 2
  br i1 %exitcond101, label %.preheader5.preheader, label %57, !llvm.loop !51

57:                                               ; preds = %56
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %.preheader3.preheader

.loopexit:                                        ; preds = %.preheader3
  br i1 false, label %.preheader3.preheader, label %62, !llvm.loop !52

.preheader3.preheader:                            ; preds = %57, %.loopexit
  br label %.preheader2.preheader

.preheader2.preheader:                            ; preds = %.preheader3.preheader, %.preheader3
  %indvars.iv106148 = phi i64 [ 0, %.preheader3.preheader ], [ %indvars.iv.next107, %.preheader3 ]
  br label %.preheader2

.preheader2:                                      ; preds = %.preheader2.preheader, %.preheader2
  %indvars.iv102147 = phi i64 [ 0, %.preheader2.preheader ], [ %indvars.iv.next103, %.preheader2 ]
  %58 = shl nuw nsw i64 %indvars.iv102147, 6
  %59 = shl nuw nsw i64 %indvars.iv106148, 3
  %60 = or disjoint i64 %58, %59
  %61 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %60
  store i32 1, ptr %61, align 4
  %indvars.iv.next103 = add nuw nsw i64 %indvars.iv102147, 1
  %exitcond105 = icmp ne i64 %indvars.iv.next103, 2
  br i1 %exitcond105, label %.preheader2, label %.preheader3, !llvm.loop !53

.preheader3:                                      ; preds = %.preheader2
  %indvars.iv.next107 = add nuw nsw i64 %indvars.iv106148, 1
  %exitcond109 = icmp ne i64 %indvars.iv.next107, 2
  br i1 %exitcond109, label %.preheader2.preheader, label %.loopexit, !llvm.loop !54

62:                                               ; preds = %.loopexit
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %.preheader1.preheader

.preheader1.preheader:                            ; preds = %62, %68
  %indvars.iv118151 = phi i64 [ 0, %62 ], [ %indvars.iv.next119, %68 ]
  br label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader1.preheader, %.preheader1
  %indvars.iv114150 = phi i64 [ 0, %.preheader1.preheader ], [ %indvars.iv.next115, %.preheader1 ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %indvars.iv110149 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next111, %.preheader ]
  %63 = shl nuw nsw i64 %indvars.iv110149, 6
  %64 = shl nuw nsw i64 %indvars.iv114150, 3
  %65 = or disjoint i64 %63, %64
  %66 = or disjoint i64 %indvars.iv118151, %65
  %67 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %66
  store i32 1, ptr %67, align 4
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110149, 1
  %exitcond113 = icmp ne i64 %indvars.iv.next111, 2
  br i1 %exitcond113, label %.preheader, label %.preheader1, !llvm.loop !55

.preheader1:                                      ; preds = %.preheader
  %indvars.iv.next115 = add nuw nsw i64 %indvars.iv114150, 1
  %exitcond117 = icmp ne i64 %indvars.iv.next115, 2
  br i1 %exitcond117, label %.preheader.preheader, label %68, !llvm.loop !56

68:                                               ; preds = %.preheader1
  %indvars.iv.next119 = add nuw nsw i64 %indvars.iv118151, 1
  %exitcond121 = icmp ne i64 %indvars.iv.next119, 2
  br i1 %exitcond121, label %.preheader1.preheader, label %69, !llvm.loop !57

69:                                               ; preds = %68
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 0, ptr @kount, align 4
  %70 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %70, 0
  br i1 %.not, label %73, label %71

71:                                               ; preds = %69
  %72 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %72, ptr @n, align 4
  br label %74

73:                                               ; preds = %69
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %74

74:                                               ; preds = %73, %71
  %75 = load i32, ptr @n, align 4
  %76 = call i32 @Trial(i32 noundef %75)
  %.not16 = icmp eq i32 %76, 0
  br i1 %.not16, label %77, label %78

77:                                               ; preds = %74
  %puts17 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %81

78:                                               ; preds = %74
  %79 = load i32, ptr @kount, align 4
  %.not18 = icmp eq i32 %79, 2005
  br i1 %.not18, label %81, label %80

80:                                               ; preds = %78
  %puts19 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %81

81:                                               ; preds = %80, %78, %77
  %82 = load i32, ptr @n, align 4
  %83 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %82) #4
  %84 = load i32, ptr @kount, align 4
  %85 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %84) #4
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %0, %1
  %storemerge1 = phi i32 [ 0, %0 ], [ %2, %1 ]
  call void @Puzzle()
  %2 = add nuw nsw i32 %storemerge1, 1
  %exitcond = icmp ne i32 %2, 100
  br i1 %exitcond, label %1, label %3, !llvm.loop !58

3:                                                ; preds = %1
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
