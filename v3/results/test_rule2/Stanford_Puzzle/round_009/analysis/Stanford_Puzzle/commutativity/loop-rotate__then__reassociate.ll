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
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %3
  %5 = load i32, ptr %4, align 4
  %.not1 = icmp sgt i32 0, %5
  br i1 %.not1, label %19, label %.lr.ph

.lr.ph:                                           ; preds = %2
  br label %6

6:                                                ; preds = %.lr.ph, %16
  %storemerge2 = phi i32 [ 0, %.lr.ph ], [ %17, %16 ]
  %7 = getelementptr inbounds [2048 x i8], ptr @p, i64 %3
  %8 = zext nneg i32 %storemerge2 to i64
  %9 = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %8
  %10 = load i32, ptr %9, align 4
  %.not2 = icmp eq i32 %10, 0
  br i1 %.not2, label %16, label %11

11:                                               ; preds = %6
  %12 = add nsw i32 %storemerge2, %1
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %13
  %15 = load i32, ptr %14, align 4
  %.not3 = icmp eq i32 %15, 0
  br i1 %.not3, label %16, label %._crit_edge

16:                                               ; preds = %11, %6
  %17 = add nuw nsw i32 %storemerge2, 1
  %18 = load i32, ptr %4, align 4
  %.not = icmp sgt i32 %17, %18
  br i1 %.not, label %._crit_edge3, label %6, !llvm.loop !7

._crit_edge:                                      ; preds = %11
  %split = phi i32 [ 0, %11 ]
  br label %19

._crit_edge3:                                     ; preds = %16
  %split4 = phi i32 [ 1, %16 ]
  br label %19

19:                                               ; preds = %._crit_edge3, %._crit_edge, %2
  %storemerge1 = phi i32 [ %split, %._crit_edge ], [ %split4, %._crit_edge3 ], [ 1, %2 ]
  ret i32 %storemerge1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Place(i32 noundef %0, i32 noundef %1) #0 {
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %3
  %5 = load i32, ptr %4, align 4
  %.not2 = icmp sgt i32 0, %5
  br i1 %.not2, label %18, label %.lr.ph

.lr.ph:                                           ; preds = %2
  br label %6

6:                                                ; preds = %.lr.ph, %15
  %storemerge3 = phi i32 [ 0, %.lr.ph ], [ %16, %15 ]
  %7 = getelementptr inbounds [2048 x i8], ptr @p, i64 %3
  %8 = zext nneg i32 %storemerge3 to i64
  %9 = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %8
  %10 = load i32, ptr %9, align 4
  %.not4 = icmp eq i32 %10, 0
  br i1 %.not4, label %15, label %11

11:                                               ; preds = %6
  %12 = add nsw i32 %storemerge3, %1
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %13
  store i32 1, ptr %14, align 4
  br label %15

15:                                               ; preds = %11, %6
  %16 = add nuw nsw i32 %storemerge3, 1
  %17 = load i32, ptr %4, align 4
  %.not = icmp sgt i32 %16, %17
  br i1 %.not, label %._crit_edge, label %6, !llvm.loop !9

._crit_edge:                                      ; preds = %15
  %split = phi i64 [ %3, %15 ]
  br label %18

18:                                               ; preds = %._crit_edge, %2
  %.lcssa = phi i64 [ %split, %._crit_edge ], [ %3, %2 ]
  %19 = getelementptr inbounds [4 x i8], ptr @class, i64 %.lcssa
  %20 = load i32, ptr %19, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %21
  %23 = load i32, ptr %22, align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, ptr %22, align 4
  %25 = sext i32 %1 to i64
  %smax = call i32 @llvm.smax.i32(i32 %1, i32 512)
  %wide.trip.count = zext nneg i32 %smax to i64
  %exitcond.not4 = icmp eq i64 %25, %wide.trip.count
  br i1 %exitcond.not4, label %.loopexit.loopexit, label %.lr.ph7

.lr.ph7:                                          ; preds = %18
  br label %26

26:                                               ; preds = %.lr.ph7, %31
  %indvars.iv5 = phi i64 [ %25, %.lr.ph7 ], [ %indvars.iv.next, %31 ]
  %27 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %indvars.iv5
  %28 = load i32, ptr %27, align 4
  %.not3 = icmp eq i32 %28, 0
  br i1 %.not3, label %29, label %31

29:                                               ; preds = %26
  %indvars.iv.lcssa1 = phi i64 [ %indvars.iv5, %26 ]
  %30 = trunc nsw i64 %indvars.iv.lcssa1 to i32
  br label %.loopexit

31:                                               ; preds = %26
  %indvars.iv.next = add nsw i64 %indvars.iv5, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %..loopexit.loopexit_crit_edge, label %26, !llvm.loop !10

..loopexit.loopexit_crit_edge:                    ; preds = %31
  br label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %..loopexit.loopexit_crit_edge, %18
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %29
  %storemerge2 = phi i32 [ %30, %29 ], [ 0, %.loopexit.loopexit ]
  ret i32 %storemerge2
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Remove(i32 noundef %0, i32 noundef %1) #0 {
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %3
  %5 = load i32, ptr %4, align 4
  %.not2 = icmp sgt i32 0, %5
  br i1 %.not2, label %18, label %.lr.ph

.lr.ph:                                           ; preds = %2
  br label %6

6:                                                ; preds = %.lr.ph, %15
  %storemerge3 = phi i32 [ 0, %.lr.ph ], [ %16, %15 ]
  %7 = getelementptr inbounds [2048 x i8], ptr @p, i64 %3
  %8 = zext nneg i32 %storemerge3 to i64
  %9 = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %8
  %10 = load i32, ptr %9, align 4
  %.not1 = icmp eq i32 %10, 0
  br i1 %.not1, label %15, label %11

11:                                               ; preds = %6
  %12 = add nsw i32 %storemerge3, %1
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %13
  store i32 0, ptr %14, align 4
  br label %15

15:                                               ; preds = %11, %6
  %16 = add nuw nsw i32 %storemerge3, 1
  %17 = load i32, ptr %4, align 4
  %.not = icmp sgt i32 %16, %17
  br i1 %.not, label %._crit_edge, label %6, !llvm.loop !11

._crit_edge:                                      ; preds = %15
  %split = phi i64 [ %3, %15 ]
  br label %18

18:                                               ; preds = %._crit_edge, %2
  %.lcssa = phi i64 [ %split, %._crit_edge ], [ %3, %2 ]
  %19 = getelementptr inbounds [4 x i8], ptr @class, i64 %.lcssa
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

4:                                                ; preds = %1, %18
  %storemerge2 = phi i32 [ 0, %1 ], [ %19, %18 ]
  %5 = zext nneg i32 %storemerge2 to i64
  %6 = getelementptr inbounds nuw [4 x i8], ptr @class, i64 %5
  %7 = load i32, ptr %6, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %8
  %10 = load i32, ptr %9, align 4
  %.not = icmp eq i32 %10, 0
  br i1 %.not, label %18, label %11

11:                                               ; preds = %4
  %12 = call i32 @Fit(i32 noundef %storemerge2, i32 noundef %0)
  %.not2 = icmp eq i32 %12, 0
  br i1 %.not2, label %18, label %13

13:                                               ; preds = %11
  %14 = call i32 @Place(i32 noundef %storemerge2, i32 noundef %0)
  %15 = call i32 @Trial(i32 noundef %14)
  %.not3 = icmp ne i32 %15, 0
  %16 = icmp eq i32 %14, 0
  %or.cond = or i1 %16, %.not3
  br i1 %or.cond, label %21, label %17

17:                                               ; preds = %13
  call void @Remove(i32 noundef %storemerge2, i32 noundef %0)
  br label %18

18:                                               ; preds = %17, %11, %4
  %19 = add nuw nsw i32 %storemerge2, 1
  %20 = icmp samesign ult i32 %19, 13
  br i1 %20, label %4, label %21, !llvm.loop !12

21:                                               ; preds = %13, %18
  %storemerge1 = phi i32 [ 1, %13 ], [ 0, %18 ]
  ret i32 %storemerge1
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Puzzle() #0 {
  br label %1

.preheader31.preheader:                           ; preds = %1
  br label %.preheader30.preheader

1:                                                ; preds = %0, %1
  %storemerge5 = phi i32 [ 0, %0 ], [ %4, %1 ]
  %2 = zext nneg i32 %storemerge5 to i64
  %3 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %2
  store i32 1, ptr %3, align 4
  %4 = add nuw nsw i32 %storemerge5, 1
  %5 = icmp samesign ult i32 %4, 512
  br i1 %5, label %1, label %.preheader31.preheader, !llvm.loop !13

.preheader30.preheader:                           ; preds = %.preheader31.preheader, %.preheader31
  %storemerge18 = phi i32 [ 1, %.preheader31.preheader ], [ %16, %.preheader31 ]
  br label %.preheader29.preheader

.preheader28.preheader:                           ; preds = %.preheader31
  br label %.preheader27.preheader

.preheader29.preheader:                           ; preds = %.preheader30.preheader, %.preheader30
  %storemerge477 = phi i32 [ 1, %.preheader30.preheader ], [ %14, %.preheader30 ]
  br label %.preheader29

.preheader29:                                     ; preds = %.preheader29.preheader, %.preheader29
  %storemerge486 = phi i32 [ 1, %.preheader29.preheader ], [ %12, %.preheader29 ]
  %6 = shl nuw nsw i32 %storemerge486, 6
  %7 = shl nuw nsw i32 %storemerge477, 3
  %8 = add nuw nsw i32 %6, %7
  %9 = add nuw nsw i32 %8, %storemerge18
  %10 = zext nneg i32 %9 to i64
  %11 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %10
  store i32 0, ptr %11, align 4
  %12 = add nuw nsw i32 %storemerge486, 1
  %13 = icmp samesign ult i32 %12, 6
  br i1 %13, label %.preheader29, label %.preheader30, !llvm.loop !14

.preheader30:                                     ; preds = %.preheader29
  %14 = add nuw nsw i32 %storemerge477, 1
  %15 = icmp samesign ult i32 %14, 6
  br i1 %15, label %.preheader29.preheader, label %.preheader31, !llvm.loop !15

.preheader31:                                     ; preds = %.preheader30
  %16 = add nuw nsw i32 %storemerge18, 1
  %17 = icmp samesign ult i32 %16, 6
  br i1 %17, label %.preheader30.preheader, label %.preheader28.preheader, !llvm.loop !16

.preheader27.preheader:                           ; preds = %.preheader28.preheader, %.preheader28
  %storemerge210 = phi i32 [ 0, %.preheader28.preheader ], [ %24, %.preheader28 ]
  br label %.preheader27

.preheader26.preheader:                           ; preds = %.preheader28
  br label %.preheader25.preheader

.preheader27:                                     ; preds = %.preheader27.preheader, %.preheader27
  %storemerge469 = phi i32 [ 0, %.preheader27.preheader ], [ %22, %.preheader27 ]
  %18 = zext nneg i32 %storemerge210 to i64
  %19 = getelementptr inbounds nuw [2048 x i8], ptr @p, i64 %18
  %20 = zext nneg i32 %storemerge469 to i64
  %21 = getelementptr inbounds nuw [4 x i8], ptr %19, i64 %20
  store i32 0, ptr %21, align 4
  %22 = add nuw nsw i32 %storemerge469, 1
  %23 = icmp samesign ult i32 %22, 512
  br i1 %23, label %.preheader27, label %.preheader28, !llvm.loop !17

.preheader28:                                     ; preds = %.preheader27
  %24 = add nuw nsw i32 %storemerge210, 1
  %25 = icmp samesign ult i32 %24, 13
  br i1 %25, label %.preheader27.preheader, label %.preheader26.preheader, !llvm.loop !18

.preheader25.preheader:                           ; preds = %.preheader26.preheader, %.preheader26
  %storemerge312 = phi i32 [ 0, %.preheader26.preheader ], [ %32, %.preheader26 ]
  br label %.preheader24.preheader

.preheader24.preheader:                           ; preds = %.preheader25.preheader, %.preheader25
  %storemerge4411 = phi i32 [ 0, %.preheader25.preheader ], [ %30, %.preheader25 ]
  br label %.preheader24

.preheader24:                                     ; preds = %.preheader24.preheader, %.preheader24
  %26 = shl nuw nsw i32 %storemerge4411, 3
  %27 = add nuw nsw i32 %26, %storemerge312
  %28 = zext nneg i32 %27 to i64
  %29 = getelementptr inbounds nuw [4 x i8], ptr @p, i64 %28
  store i32 1, ptr %29, align 4
  br i1 false, label %.preheader24, label %.preheader25, !llvm.loop !19

.preheader25:                                     ; preds = %.preheader24
  %30 = add nuw nsw i32 %storemerge4411, 1
  %31 = icmp samesign ult i32 %30, 2
  br i1 %31, label %.preheader24.preheader, label %.preheader26, !llvm.loop !20

.preheader26:                                     ; preds = %.preheader25
  %32 = add nuw nsw i32 %storemerge312, 1
  %33 = icmp samesign ult i32 %32, 4
  br i1 %33, label %.preheader25.preheader, label %34, !llvm.loop !21

34:                                               ; preds = %.preheader26
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %.preheader23.preheader

.preheader23.preheader:                           ; preds = %34, %41
  %storemerge414 = phi i32 [ 0, %34 ], [ %42, %41 ]
  br label %.preheader22.preheader

.preheader23.loopexit:                            ; preds = %.preheader22
  br i1 false, label %.preheader22.preheader, label %41, !llvm.loop !22

.preheader22.preheader:                           ; preds = %.preheader23.preheader, %.preheader23.loopexit
  br label %.preheader22

.preheader22:                                     ; preds = %.preheader22.preheader, %.preheader22
  %storemerge4313 = phi i32 [ 0, %.preheader22.preheader ], [ %39, %.preheader22 ]
  %35 = shl nuw nsw i32 %storemerge4313, 6
  %36 = add nuw nsw i32 %35, %storemerge414
  %37 = zext nneg i32 %36 to i64
  %38 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %37
  store i32 1, ptr %38, align 4
  %39 = add nuw nsw i32 %storemerge4313, 1
  %40 = icmp samesign ult i32 %39, 4
  br i1 %40, label %.preheader22, label %.preheader23.loopexit, !llvm.loop !23

41:                                               ; preds = %.preheader23.loopexit
  %42 = add nuw nsw i32 %storemerge414, 1
  %43 = icmp samesign ult i32 %42, 2
  br i1 %43, label %.preheader23.preheader, label %44, !llvm.loop !24

44:                                               ; preds = %41
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %.preheader21.preheader

.loopexit4:                                       ; preds = %.preheader21
  br i1 false, label %.preheader21.preheader, label %54, !llvm.loop !25

.preheader21.preheader:                           ; preds = %44, %.loopexit4
  br label %.preheader20.preheader

.preheader20.preheader:                           ; preds = %.preheader21.preheader, %.preheader21
  %storemerge4016 = phi i32 [ 0, %.preheader21.preheader ], [ %52, %.preheader21 ]
  br label %.preheader20

.preheader20:                                     ; preds = %.preheader20.preheader, %.preheader20
  %storemerge4115 = phi i32 [ 0, %.preheader20.preheader ], [ %50, %.preheader20 ]
  %45 = shl nuw nsw i32 %storemerge4115, 6
  %46 = shl nuw nsw i32 %storemerge4016, 3
  %47 = add nuw nsw i32 %45, %46
  %48 = zext nneg i32 %47 to i64
  %49 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %48
  store i32 1, ptr %49, align 4
  %50 = add nuw nsw i32 %storemerge4115, 1
  %51 = icmp samesign ult i32 %50, 2
  br i1 %51, label %.preheader20, label %.preheader21, !llvm.loop !26

.preheader21:                                     ; preds = %.preheader20
  %52 = add nuw nsw i32 %storemerge4016, 1
  %53 = icmp samesign ult i32 %52, 4
  br i1 %53, label %.preheader20.preheader, label %.loopexit4, !llvm.loop !27

54:                                               ; preds = %.loopexit4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %.preheader19.preheader

.preheader19.preheader:                           ; preds = %54, %61
  %storemerge618 = phi i32 [ 0, %54 ], [ %62, %61 ]
  br label %.preheader18.preheader

.preheader18.preheader:                           ; preds = %.preheader19.preheader, %.preheader19
  %storemerge3817 = phi i32 [ 0, %.preheader19.preheader ], [ %59, %.preheader19 ]
  br label %.preheader18

.preheader18:                                     ; preds = %.preheader18.preheader, %.preheader18
  %55 = shl nuw nsw i32 %storemerge3817, 3
  %56 = add nuw nsw i32 %55, %storemerge618
  %57 = zext nneg i32 %56 to i64
  %58 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %57
  store i32 1, ptr %58, align 4
  br i1 false, label %.preheader18, label %.preheader19, !llvm.loop !28

.preheader19:                                     ; preds = %.preheader18
  %59 = add nuw nsw i32 %storemerge3817, 1
  %60 = icmp samesign ult i32 %59, 4
  br i1 %60, label %.preheader18.preheader, label %61, !llvm.loop !29

61:                                               ; preds = %.preheader19
  %62 = add nuw nsw i32 %storemerge618, 1
  %63 = icmp samesign ult i32 %62, 2
  br i1 %63, label %.preheader19.preheader, label %64, !llvm.loop !30

64:                                               ; preds = %61
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %.preheader17.preheader

.preheader17.preheader:                           ; preds = %64, %71
  %storemerge720 = phi i32 [ 0, %64 ], [ %72, %71 ]
  br label %.preheader16.preheader

.preheader17.loopexit:                            ; preds = %.preheader16
  br i1 false, label %.preheader16.preheader, label %71, !llvm.loop !31

.preheader16.preheader:                           ; preds = %.preheader17.preheader, %.preheader17.loopexit
  br label %.preheader16

.preheader16:                                     ; preds = %.preheader16.preheader, %.preheader16
  %storemerge3719 = phi i32 [ 0, %.preheader16.preheader ], [ %69, %.preheader16 ]
  %65 = shl nuw nsw i32 %storemerge3719, 6
  %66 = add nuw nsw i32 %65, %storemerge720
  %67 = zext nneg i32 %66 to i64
  %68 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %67
  store i32 1, ptr %68, align 4
  %69 = add nuw nsw i32 %storemerge3719, 1
  %70 = icmp samesign ult i32 %69, 2
  br i1 %70, label %.preheader16, label %.preheader17.loopexit, !llvm.loop !32

71:                                               ; preds = %.preheader17.loopexit
  %72 = add nuw nsw i32 %storemerge720, 1
  %73 = icmp samesign ult i32 %72, 4
  br i1 %73, label %.preheader17.preheader, label %74, !llvm.loop !33

74:                                               ; preds = %71
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %.preheader15.preheader

.loopexit3:                                       ; preds = %.preheader15
  br i1 false, label %.preheader15.preheader, label %84, !llvm.loop !34

.preheader15.preheader:                           ; preds = %74, %.loopexit3
  br label %.preheader14.preheader

.preheader14.preheader:                           ; preds = %.preheader15.preheader, %.preheader15
  %storemerge3422 = phi i32 [ 0, %.preheader15.preheader ], [ %82, %.preheader15 ]
  br label %.preheader14

.preheader14:                                     ; preds = %.preheader14.preheader, %.preheader14
  %storemerge3521 = phi i32 [ 0, %.preheader14.preheader ], [ %80, %.preheader14 ]
  %75 = shl nuw nsw i32 %storemerge3521, 6
  %76 = shl nuw nsw i32 %storemerge3422, 3
  %77 = add nuw nsw i32 %75, %76
  %78 = zext nneg i32 %77 to i64
  %79 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %78
  store i32 1, ptr %79, align 4
  %80 = add nuw nsw i32 %storemerge3521, 1
  %81 = icmp samesign ult i32 %80, 4
  br i1 %81, label %.preheader14, label %.preheader15, !llvm.loop !35

.preheader15:                                     ; preds = %.preheader14
  %82 = add nuw nsw i32 %storemerge3422, 1
  %83 = icmp samesign ult i32 %82, 2
  br i1 %83, label %.preheader14.preheader, label %.loopexit3, !llvm.loop !36

84:                                               ; preds = %.loopexit3
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %.preheader13.preheader

.preheader13.preheader:                           ; preds = %84, %87
  %storemerge923 = phi i32 [ 0, %84 ], [ %88, %87 ]
  br label %.preheader12.preheader

.preheader13.loopexit:                            ; preds = %.preheader12
  br i1 false, label %.preheader12.preheader, label %87, !llvm.loop !37

.preheader12.preheader:                           ; preds = %.preheader13.preheader, %.preheader13.loopexit
  br label %.preheader12

.preheader12:                                     ; preds = %.preheader12.preheader, %.preheader12
  %85 = zext nneg i32 %storemerge923 to i64
  %86 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %85
  store i32 1, ptr %86, align 4
  br i1 false, label %.preheader12, label %.preheader13.loopexit, !llvm.loop !38

87:                                               ; preds = %.preheader13.loopexit
  %88 = add nuw nsw i32 %storemerge923, 1
  %89 = icmp samesign ult i32 %88, 3
  br i1 %89, label %.preheader13.preheader, label %90, !llvm.loop !39

90:                                               ; preds = %87
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %.preheader11.preheader

.loopexit2:                                       ; preds = %.preheader11
  br i1 false, label %.preheader11.preheader, label %96, !llvm.loop !40

.preheader11.preheader:                           ; preds = %90, %.loopexit2
  br label %.preheader10.preheader

.preheader10.preheader:                           ; preds = %.preheader11.preheader, %.preheader11
  %storemerge3024 = phi i32 [ 0, %.preheader11.preheader ], [ %94, %.preheader11 ]
  br label %.preheader10

.preheader10:                                     ; preds = %.preheader10.preheader, %.preheader10
  %91 = shl nuw nsw i32 %storemerge3024, 3
  %92 = zext nneg i32 %91 to i64
  %93 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %92
  store i32 1, ptr %93, align 4
  br i1 false, label %.preheader10, label %.preheader11, !llvm.loop !41

.preheader11:                                     ; preds = %.preheader10
  %94 = add nuw nsw i32 %storemerge3024, 1
  %95 = icmp samesign ult i32 %94, 3
  br i1 %95, label %.preheader10.preheader, label %.loopexit2, !llvm.loop !42

96:                                               ; preds = %.loopexit2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %.preheader9.preheader

.loopexit1:                                       ; preds = %.preheader9.loopexit
  br i1 false, label %.preheader9.preheader, label %102, !llvm.loop !43

.preheader9.preheader:                            ; preds = %96, %.loopexit1
  br label %.preheader8.preheader

.preheader9.loopexit:                             ; preds = %.preheader8
  br i1 false, label %.preheader8.preheader, label %.loopexit1, !llvm.loop !44

.preheader8.preheader:                            ; preds = %.preheader9.preheader, %.preheader9.loopexit
  br label %.preheader8

.preheader8:                                      ; preds = %.preheader8.preheader, %.preheader8
  %storemerge2925 = phi i32 [ 0, %.preheader8.preheader ], [ %100, %.preheader8 ]
  %97 = shl nuw nsw i32 %storemerge2925, 6
  %98 = zext nneg i32 %97 to i64
  %99 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %98
  store i32 1, ptr %99, align 4
  %100 = add nuw nsw i32 %storemerge2925, 1
  %101 = icmp samesign ult i32 %100, 3
  br i1 %101, label %.preheader8, label %.preheader9.loopexit, !llvm.loop !45

102:                                              ; preds = %.loopexit1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %.preheader7.preheader

.preheader7.preheader:                            ; preds = %102, %109
  %storemerge1227 = phi i32 [ 0, %102 ], [ %110, %109 ]
  br label %.preheader6.preheader

.preheader6.preheader:                            ; preds = %.preheader7.preheader, %.preheader7
  %storemerge2626 = phi i32 [ 0, %.preheader7.preheader ], [ %107, %.preheader7 ]
  br label %.preheader6

.preheader6:                                      ; preds = %.preheader6.preheader, %.preheader6
  %103 = shl nuw nsw i32 %storemerge2626, 3
  %104 = add nuw nsw i32 %103, %storemerge1227
  %105 = zext nneg i32 %104 to i64
  %106 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %105
  store i32 1, ptr %106, align 4
  br i1 false, label %.preheader6, label %.preheader7, !llvm.loop !46

.preheader7:                                      ; preds = %.preheader6
  %107 = add nuw nsw i32 %storemerge2626, 1
  %108 = icmp samesign ult i32 %107, 2
  br i1 %108, label %.preheader6.preheader, label %109, !llvm.loop !47

109:                                              ; preds = %.preheader7
  %110 = add nuw nsw i32 %storemerge1227, 1
  %111 = icmp samesign ult i32 %110, 2
  br i1 %111, label %.preheader7.preheader, label %112, !llvm.loop !48

112:                                              ; preds = %109
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %.preheader5.preheader

.preheader5.preheader:                            ; preds = %112, %119
  %storemerge1329 = phi i32 [ 0, %112 ], [ %120, %119 ]
  br label %.preheader4.preheader

.preheader5.loopexit:                             ; preds = %.preheader4
  br i1 false, label %.preheader4.preheader, label %119, !llvm.loop !49

.preheader4.preheader:                            ; preds = %.preheader5.preheader, %.preheader5.loopexit
  br label %.preheader4

.preheader4:                                      ; preds = %.preheader4.preheader, %.preheader4
  %storemerge2528 = phi i32 [ 0, %.preheader4.preheader ], [ %117, %.preheader4 ]
  %113 = shl nuw nsw i32 %storemerge2528, 6
  %114 = add nuw nsw i32 %113, %storemerge1329
  %115 = zext nneg i32 %114 to i64
  %116 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %115
  store i32 1, ptr %116, align 4
  %117 = add nuw nsw i32 %storemerge2528, 1
  %118 = icmp samesign ult i32 %117, 2
  br i1 %118, label %.preheader4, label %.preheader5.loopexit, !llvm.loop !50

119:                                              ; preds = %.preheader5.loopexit
  %120 = add nuw nsw i32 %storemerge1329, 1
  %121 = icmp samesign ult i32 %120, 2
  br i1 %121, label %.preheader5.preheader, label %122, !llvm.loop !51

122:                                              ; preds = %119
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %.preheader3.preheader

.loopexit:                                        ; preds = %.preheader3
  br i1 false, label %.preheader3.preheader, label %132, !llvm.loop !52

.preheader3.preheader:                            ; preds = %122, %.loopexit
  br label %.preheader2.preheader

.preheader2.preheader:                            ; preds = %.preheader3.preheader, %.preheader3
  %storemerge2231 = phi i32 [ 0, %.preheader3.preheader ], [ %130, %.preheader3 ]
  br label %.preheader2

.preheader2:                                      ; preds = %.preheader2.preheader, %.preheader2
  %storemerge2330 = phi i32 [ 0, %.preheader2.preheader ], [ %128, %.preheader2 ]
  %123 = shl nuw nsw i32 %storemerge2330, 6
  %124 = shl nuw nsw i32 %storemerge2231, 3
  %125 = add nuw nsw i32 %123, %124
  %126 = zext nneg i32 %125 to i64
  %127 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %126
  store i32 1, ptr %127, align 4
  %128 = add nuw nsw i32 %storemerge2330, 1
  %129 = icmp samesign ult i32 %128, 2
  br i1 %129, label %.preheader2, label %.preheader3, !llvm.loop !53

.preheader3:                                      ; preds = %.preheader2
  %130 = add nuw nsw i32 %storemerge2231, 1
  %131 = icmp samesign ult i32 %130, 2
  br i1 %131, label %.preheader2.preheader, label %.loopexit, !llvm.loop !54

132:                                              ; preds = %.loopexit
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %.preheader1.preheader

.preheader1.preheader:                            ; preds = %132, %143
  %storemerge1534 = phi i32 [ 0, %132 ], [ %144, %143 ]
  br label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader1.preheader, %.preheader1
  %storemerge2033 = phi i32 [ 0, %.preheader1.preheader ], [ %141, %.preheader1 ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %storemerge2132 = phi i32 [ 0, %.preheader.preheader ], [ %139, %.preheader ]
  %133 = shl nuw nsw i32 %storemerge2132, 6
  %134 = shl nuw nsw i32 %storemerge2033, 3
  %135 = add nuw nsw i32 %133, %134
  %136 = add nuw nsw i32 %135, %storemerge1534
  %137 = zext nneg i32 %136 to i64
  %138 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %137
  store i32 1, ptr %138, align 4
  %139 = add nuw nsw i32 %storemerge2132, 1
  %140 = icmp samesign ult i32 %139, 2
  br i1 %140, label %.preheader, label %.preheader1, !llvm.loop !55

.preheader1:                                      ; preds = %.preheader
  %141 = add nuw nsw i32 %storemerge2033, 1
  %142 = icmp samesign ult i32 %141, 2
  br i1 %142, label %.preheader.preheader, label %143, !llvm.loop !56

143:                                              ; preds = %.preheader1
  %144 = add nuw nsw i32 %storemerge1534, 1
  %145 = icmp samesign ult i32 %144, 2
  br i1 %145, label %.preheader1.preheader, label %146, !llvm.loop !57

146:                                              ; preds = %143
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 0, ptr @kount, align 4
  %147 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %147, 0
  br i1 %.not, label %150, label %148

148:                                              ; preds = %146
  %149 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %149, ptr @n, align 4
  br label %151

150:                                              ; preds = %146
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %151

151:                                              ; preds = %150, %148
  %152 = load i32, ptr @n, align 4
  %153 = call i32 @Trial(i32 noundef %152)
  %.not16 = icmp eq i32 %153, 0
  br i1 %.not16, label %154, label %155

154:                                              ; preds = %151
  %puts17 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %158

155:                                              ; preds = %151
  %156 = load i32, ptr @kount, align 4
  %.not18 = icmp eq i32 %156, 2005
  br i1 %.not18, label %158, label %157

157:                                              ; preds = %155
  %puts19 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %158

158:                                              ; preds = %157, %155, %154
  %159 = load i32, ptr @n, align 4
  %160 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %159) #4
  %161 = load i32, ptr @kount, align 4
  %162 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %161) #4
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
  %3 = icmp samesign ult i32 %2, 100
  br i1 %3, label %1, label %4, !llvm.loop !58

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
