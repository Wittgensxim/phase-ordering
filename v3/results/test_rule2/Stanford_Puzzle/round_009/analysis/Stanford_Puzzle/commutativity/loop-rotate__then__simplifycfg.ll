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
  br i1 %.not1, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %2, %15
  %storemerge2 = phi i32 [ %16, %15 ], [ 0, %2 ]
  %6 = getelementptr inbounds [2048 x i8], ptr @p, i64 %3
  %7 = zext nneg i32 %storemerge2 to i64
  %8 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4
  %.not2 = icmp eq i32 %9, 0
  br i1 %.not2, label %15, label %10

10:                                               ; preds = %.lr.ph
  %11 = add nsw i32 %1, %storemerge2
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %12
  %14 = load i32, ptr %13, align 4
  %.not3 = icmp eq i32 %14, 0
  br i1 %.not3, label %15, label %._crit_edge

15:                                               ; preds = %10, %.lr.ph
  %16 = add nuw nsw i32 %storemerge2, 1
  %17 = load i32, ptr %4, align 4
  %.not = icmp sgt i32 %16, %17
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !7

._crit_edge:                                      ; preds = %15, %10, %2
  %storemerge1 = phi i32 [ 1, %2 ], [ 0, %10 ], [ 1, %15 ]
  ret i32 %storemerge1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Place(i32 noundef %0, i32 noundef %1) #0 {
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %3
  %5 = load i32, ptr %4, align 4
  %.not2 = icmp sgt i32 0, %5
  br i1 %.not2, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %2, %14
  %storemerge3 = phi i32 [ %15, %14 ], [ 0, %2 ]
  %6 = getelementptr inbounds [2048 x i8], ptr @p, i64 %3
  %7 = zext nneg i32 %storemerge3 to i64
  %8 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4
  %.not4 = icmp eq i32 %9, 0
  br i1 %.not4, label %14, label %10

10:                                               ; preds = %.lr.ph
  %11 = add nsw i32 %1, %storemerge3
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %12
  store i32 1, ptr %13, align 4
  br label %14

14:                                               ; preds = %10, %.lr.ph
  %15 = add nuw nsw i32 %storemerge3, 1
  %16 = load i32, ptr %4, align 4
  %.not = icmp sgt i32 %15, %16
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !9

._crit_edge:                                      ; preds = %14, %2
  %.lcssa = phi i64 [ %3, %2 ], [ %3, %14 ]
  %17 = getelementptr inbounds [4 x i8], ptr @class, i64 %.lcssa
  %18 = load i32, ptr %17, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %19
  %21 = load i32, ptr %20, align 4
  %22 = add nsw i32 %21, -1
  store i32 %22, ptr %20, align 4
  %23 = sext i32 %1 to i64
  %smax = call i32 @llvm.smax.i32(i32 %1, i32 512)
  %wide.trip.count = zext nneg i32 %smax to i64
  %exitcond.not4 = icmp eq i64 %23, %wide.trip.count
  br i1 %exitcond.not4, label %.loopexit, label %.lr.ph7

.lr.ph7:                                          ; preds = %._crit_edge, %28
  %indvars.iv5 = phi i64 [ %indvars.iv.next, %28 ], [ %23, %._crit_edge ]
  %24 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %indvars.iv5
  %25 = load i32, ptr %24, align 4
  %.not3 = icmp eq i32 %25, 0
  br i1 %.not3, label %26, label %28

26:                                               ; preds = %.lr.ph7
  %indvars.iv.lcssa1 = phi i64 [ %indvars.iv5, %.lr.ph7 ]
  %27 = trunc nsw i64 %indvars.iv.lcssa1 to i32
  br label %.loopexit

28:                                               ; preds = %.lr.ph7
  %indvars.iv.next = add nsw i64 %indvars.iv5, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph7, !llvm.loop !10

.loopexit:                                        ; preds = %._crit_edge, %28, %26
  %storemerge2 = phi i32 [ %27, %26 ], [ 0, %28 ], [ 0, %._crit_edge ]
  ret i32 %storemerge2
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Remove(i32 noundef %0, i32 noundef %1) #0 {
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %3
  %5 = load i32, ptr %4, align 4
  %.not2 = icmp sgt i32 0, %5
  br i1 %.not2, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %2, %14
  %storemerge3 = phi i32 [ %15, %14 ], [ 0, %2 ]
  %6 = getelementptr inbounds [2048 x i8], ptr @p, i64 %3
  %7 = zext nneg i32 %storemerge3 to i64
  %8 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4
  %.not1 = icmp eq i32 %9, 0
  br i1 %.not1, label %14, label %10

10:                                               ; preds = %.lr.ph
  %11 = add nsw i32 %1, %storemerge3
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %12
  store i32 0, ptr %13, align 4
  br label %14

14:                                               ; preds = %10, %.lr.ph
  %15 = add nuw nsw i32 %storemerge3, 1
  %16 = load i32, ptr %4, align 4
  %.not = icmp sgt i32 %15, %16
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !11

._crit_edge:                                      ; preds = %14, %2
  %.lcssa = phi i64 [ %3, %2 ], [ %3, %14 ]
  %17 = getelementptr inbounds [4 x i8], ptr @class, i64 %.lcssa
  %18 = load i32, ptr %17, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %19
  %21 = load i32, ptr %20, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, ptr %20, align 4
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
  %or.cond = or i1 %.not3, %16
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

1:                                                ; preds = %0, %1
  %storemerge5 = phi i32 [ 0, %0 ], [ %4, %1 ]
  %2 = zext nneg i32 %storemerge5 to i64
  %3 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %2
  store i32 1, ptr %3, align 4
  %4 = add nuw nsw i32 %storemerge5, 1
  %5 = icmp samesign ult i32 %4, 512
  br i1 %5, label %1, label %.preheader30.preheader, !llvm.loop !13

.preheader30.preheader:                           ; preds = %1, %.preheader31
  %storemerge18 = phi i32 [ %16, %.preheader31 ], [ 1, %1 ]
  br label %.preheader29.preheader

.preheader29.preheader:                           ; preds = %.preheader30.preheader, %.preheader30
  %storemerge477 = phi i32 [ 1, %.preheader30.preheader ], [ %14, %.preheader30 ]
  br label %.preheader29

.preheader29:                                     ; preds = %.preheader29.preheader, %.preheader29
  %storemerge486 = phi i32 [ 1, %.preheader29.preheader ], [ %12, %.preheader29 ]
  %6 = shl nuw nsw i32 %storemerge486, 6
  %7 = shl nuw nsw i32 %storemerge477, 3
  %8 = or disjoint i32 %6, %7
  %9 = or disjoint i32 %storemerge18, %8
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
  br i1 %17, label %.preheader30.preheader, label %.preheader27.preheader, !llvm.loop !16

.preheader27.preheader:                           ; preds = %.preheader31, %.preheader28
  %storemerge210 = phi i32 [ %24, %.preheader28 ], [ 0, %.preheader31 ]
  br label %.preheader27

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
  br i1 %25, label %.preheader27.preheader, label %.preheader25.preheader, !llvm.loop !18

.preheader25.preheader:                           ; preds = %.preheader28, %.preheader26
  %storemerge312 = phi i32 [ %32, %.preheader26 ], [ 0, %.preheader28 ]
  br label %.preheader24.preheader

.preheader24.preheader:                           ; preds = %.preheader25.preheader, %.preheader24.preheader
  %storemerge4411 = phi i32 [ 0, %.preheader25.preheader ], [ %30, %.preheader24.preheader ]
  %26 = shl nuw nsw i32 %storemerge4411, 3
  %27 = or disjoint i32 %storemerge312, %26
  %28 = zext nneg i32 %27 to i64
  %29 = getelementptr inbounds nuw [4 x i8], ptr @p, i64 %28
  store i32 1, ptr %29, align 4
  %30 = add nuw nsw i32 %storemerge4411, 1
  %31 = icmp samesign ult i32 %30, 2
  br i1 %31, label %.preheader24.preheader, label %.preheader26, !llvm.loop !19

.preheader26:                                     ; preds = %.preheader24.preheader
  %32 = add nuw nsw i32 %storemerge312, 1
  %33 = icmp samesign ult i32 %32, 4
  br i1 %33, label %.preheader25.preheader, label %34, !llvm.loop !20

34:                                               ; preds = %.preheader26
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %.preheader23.preheader

.preheader23.preheader:                           ; preds = %34, %.preheader23.loopexit
  %storemerge414 = phi i32 [ 0, %34 ], [ %35, %.preheader23.loopexit ]
  br label %.preheader22

.preheader23.loopexit:                            ; preds = %.preheader22
  %35 = add nuw nsw i32 %storemerge414, 1
  %36 = icmp samesign ult i32 %35, 2
  br i1 %36, label %.preheader23.preheader, label %.preheader21.preheader, !llvm.loop !21

.preheader22:                                     ; preds = %.preheader23.preheader, %.preheader22
  %storemerge4313 = phi i32 [ 0, %.preheader23.preheader ], [ %41, %.preheader22 ]
  %37 = shl nuw nsw i32 %storemerge4313, 6
  %38 = or disjoint i32 %storemerge414, %37
  %39 = zext nneg i32 %38 to i64
  %40 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %39
  store i32 1, ptr %40, align 4
  %41 = add nuw nsw i32 %storemerge4313, 1
  %42 = icmp samesign ult i32 %41, 4
  br i1 %42, label %.preheader22, label %.preheader23.loopexit, !llvm.loop !22

.preheader21.preheader:                           ; preds = %.preheader23.loopexit
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %.preheader20.preheader

.loopexit4:                                       ; preds = %.preheader21
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %.preheader19.preheader

.preheader20.preheader:                           ; preds = %.preheader21.preheader, %.preheader21
  %storemerge4016 = phi i32 [ 0, %.preheader21.preheader ], [ %50, %.preheader21 ]
  br label %.preheader20

.preheader20:                                     ; preds = %.preheader20.preheader, %.preheader20
  %storemerge4115 = phi i32 [ 0, %.preheader20.preheader ], [ %48, %.preheader20 ]
  %43 = shl nuw nsw i32 %storemerge4115, 6
  %44 = shl nuw nsw i32 %storemerge4016, 3
  %45 = or disjoint i32 %43, %44
  %46 = zext nneg i32 %45 to i64
  %47 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %46
  store i32 1, ptr %47, align 4
  %48 = add nuw nsw i32 %storemerge4115, 1
  %49 = icmp samesign ult i32 %48, 2
  br i1 %49, label %.preheader20, label %.preheader21, !llvm.loop !23

.preheader21:                                     ; preds = %.preheader20
  %50 = add nuw nsw i32 %storemerge4016, 1
  %51 = icmp samesign ult i32 %50, 4
  br i1 %51, label %.preheader20.preheader, label %.loopexit4, !llvm.loop !24

.preheader19.preheader:                           ; preds = %.loopexit4, %58
  %storemerge618 = phi i32 [ 0, %.loopexit4 ], [ %59, %58 ]
  br label %.preheader18.preheader

.preheader18.preheader:                           ; preds = %.preheader19.preheader, %.preheader18.preheader
  %storemerge3817 = phi i32 [ 0, %.preheader19.preheader ], [ %56, %.preheader18.preheader ]
  %52 = shl nuw nsw i32 %storemerge3817, 3
  %53 = or disjoint i32 %storemerge618, %52
  %54 = zext nneg i32 %53 to i64
  %55 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %54
  store i32 1, ptr %55, align 4
  %56 = add nuw nsw i32 %storemerge3817, 1
  %57 = icmp samesign ult i32 %56, 4
  br i1 %57, label %.preheader18.preheader, label %58, !llvm.loop !25

58:                                               ; preds = %.preheader18.preheader
  %59 = add nuw nsw i32 %storemerge618, 1
  %60 = icmp samesign ult i32 %59, 2
  br i1 %60, label %.preheader19.preheader, label %61, !llvm.loop !26

61:                                               ; preds = %58
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %.preheader17.preheader

.preheader17.preheader:                           ; preds = %61, %.preheader17.loopexit
  %storemerge720 = phi i32 [ 0, %61 ], [ %62, %.preheader17.loopexit ]
  br label %.preheader16

.preheader17.loopexit:                            ; preds = %.preheader16
  %62 = add nuw nsw i32 %storemerge720, 1
  %63 = icmp samesign ult i32 %62, 4
  br i1 %63, label %.preheader17.preheader, label %.preheader15.preheader, !llvm.loop !27

.preheader16:                                     ; preds = %.preheader17.preheader, %.preheader16
  %storemerge3719 = phi i32 [ 0, %.preheader17.preheader ], [ %68, %.preheader16 ]
  %64 = shl nuw nsw i32 %storemerge3719, 6
  %65 = or disjoint i32 %storemerge720, %64
  %66 = zext nneg i32 %65 to i64
  %67 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %66
  store i32 1, ptr %67, align 4
  %68 = add nuw nsw i32 %storemerge3719, 1
  %69 = icmp samesign ult i32 %68, 2
  br i1 %69, label %.preheader16, label %.preheader17.loopexit, !llvm.loop !28

.preheader15.preheader:                           ; preds = %.preheader17.loopexit
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %.preheader14.preheader

.loopexit3:                                       ; preds = %.preheader15
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %.preheader13.preheader

.preheader14.preheader:                           ; preds = %.preheader15.preheader, %.preheader15
  %storemerge3422 = phi i32 [ 0, %.preheader15.preheader ], [ %77, %.preheader15 ]
  br label %.preheader14

.preheader14:                                     ; preds = %.preheader14.preheader, %.preheader14
  %storemerge3521 = phi i32 [ 0, %.preheader14.preheader ], [ %75, %.preheader14 ]
  %70 = shl nuw nsw i32 %storemerge3521, 6
  %71 = shl nuw nsw i32 %storemerge3422, 3
  %72 = or disjoint i32 %70, %71
  %73 = zext nneg i32 %72 to i64
  %74 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %73
  store i32 1, ptr %74, align 4
  %75 = add nuw nsw i32 %storemerge3521, 1
  %76 = icmp samesign ult i32 %75, 4
  br i1 %76, label %.preheader14, label %.preheader15, !llvm.loop !29

.preheader15:                                     ; preds = %.preheader14
  %77 = add nuw nsw i32 %storemerge3422, 1
  %78 = icmp samesign ult i32 %77, 2
  br i1 %78, label %.preheader14.preheader, label %.loopexit3, !llvm.loop !30

.preheader13.preheader:                           ; preds = %.loopexit3, %.preheader13.preheader
  %storemerge923 = phi i32 [ 0, %.loopexit3 ], [ %81, %.preheader13.preheader ]
  %79 = zext nneg i32 %storemerge923 to i64
  %80 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %79
  store i32 1, ptr %80, align 4
  %81 = add nuw nsw i32 %storemerge923, 1
  %82 = icmp samesign ult i32 %81, 3
  br i1 %82, label %.preheader13.preheader, label %.preheader11.preheader, !llvm.loop !31

.preheader11.preheader:                           ; preds = %.preheader13.preheader
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %.preheader10.preheader

.loopexit2:                                       ; preds = %.preheader10.preheader
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %.preheader8

.preheader10.preheader:                           ; preds = %.preheader11.preheader, %.preheader10.preheader
  %storemerge3024 = phi i32 [ 0, %.preheader11.preheader ], [ %86, %.preheader10.preheader ]
  %83 = shl nuw nsw i32 %storemerge3024, 3
  %84 = zext nneg i32 %83 to i64
  %85 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %84
  store i32 1, ptr %85, align 4
  %86 = add nuw nsw i32 %storemerge3024, 1
  %87 = icmp samesign ult i32 %86, 3
  br i1 %87, label %.preheader10.preheader, label %.loopexit2, !llvm.loop !32

.preheader9.loopexit:                             ; preds = %.preheader8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %.preheader7.preheader

.preheader8:                                      ; preds = %.loopexit2, %.preheader8
  %storemerge2925 = phi i32 [ 0, %.loopexit2 ], [ %91, %.preheader8 ]
  %88 = shl nuw nsw i32 %storemerge2925, 6
  %89 = zext nneg i32 %88 to i64
  %90 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %89
  store i32 1, ptr %90, align 4
  %91 = add nuw nsw i32 %storemerge2925, 1
  %92 = icmp samesign ult i32 %91, 3
  br i1 %92, label %.preheader8, label %.preheader9.loopexit, !llvm.loop !33

.preheader7.preheader:                            ; preds = %.preheader9.loopexit, %99
  %storemerge1227 = phi i32 [ 0, %.preheader9.loopexit ], [ %100, %99 ]
  br label %.preheader6.preheader

.preheader6.preheader:                            ; preds = %.preheader7.preheader, %.preheader6.preheader
  %storemerge2626 = phi i32 [ 0, %.preheader7.preheader ], [ %97, %.preheader6.preheader ]
  %93 = shl nuw nsw i32 %storemerge2626, 3
  %94 = or disjoint i32 %storemerge1227, %93
  %95 = zext nneg i32 %94 to i64
  %96 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %95
  store i32 1, ptr %96, align 4
  %97 = add nuw nsw i32 %storemerge2626, 1
  %98 = icmp samesign ult i32 %97, 2
  br i1 %98, label %.preheader6.preheader, label %99, !llvm.loop !34

99:                                               ; preds = %.preheader6.preheader
  %100 = add nuw nsw i32 %storemerge1227, 1
  %101 = icmp samesign ult i32 %100, 2
  br i1 %101, label %.preheader7.preheader, label %102, !llvm.loop !35

102:                                              ; preds = %99
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %.preheader5.preheader

.preheader5.preheader:                            ; preds = %102, %.preheader5.loopexit
  %storemerge1329 = phi i32 [ 0, %102 ], [ %103, %.preheader5.loopexit ]
  br label %.preheader4

.preheader5.loopexit:                             ; preds = %.preheader4
  %103 = add nuw nsw i32 %storemerge1329, 1
  %104 = icmp samesign ult i32 %103, 2
  br i1 %104, label %.preheader5.preheader, label %.preheader3.preheader, !llvm.loop !36

.preheader4:                                      ; preds = %.preheader5.preheader, %.preheader4
  %storemerge2528 = phi i32 [ 0, %.preheader5.preheader ], [ %109, %.preheader4 ]
  %105 = shl nuw nsw i32 %storemerge2528, 6
  %106 = or disjoint i32 %storemerge1329, %105
  %107 = zext nneg i32 %106 to i64
  %108 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %107
  store i32 1, ptr %108, align 4
  %109 = add nuw nsw i32 %storemerge2528, 1
  %110 = icmp samesign ult i32 %109, 2
  br i1 %110, label %.preheader4, label %.preheader5.loopexit, !llvm.loop !37

.preheader3.preheader:                            ; preds = %.preheader5.loopexit
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %.preheader2.preheader

.loopexit:                                        ; preds = %.preheader3
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %.preheader1.preheader

.preheader2.preheader:                            ; preds = %.preheader3.preheader, %.preheader3
  %storemerge2231 = phi i32 [ 0, %.preheader3.preheader ], [ %118, %.preheader3 ]
  br label %.preheader2

.preheader2:                                      ; preds = %.preheader2.preheader, %.preheader2
  %storemerge2330 = phi i32 [ 0, %.preheader2.preheader ], [ %116, %.preheader2 ]
  %111 = shl nuw nsw i32 %storemerge2330, 6
  %112 = shl nuw nsw i32 %storemerge2231, 3
  %113 = or disjoint i32 %111, %112
  %114 = zext nneg i32 %113 to i64
  %115 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %114
  store i32 1, ptr %115, align 4
  %116 = add nuw nsw i32 %storemerge2330, 1
  %117 = icmp samesign ult i32 %116, 2
  br i1 %117, label %.preheader2, label %.preheader3, !llvm.loop !38

.preheader3:                                      ; preds = %.preheader2
  %118 = add nuw nsw i32 %storemerge2231, 1
  %119 = icmp samesign ult i32 %118, 2
  br i1 %119, label %.preheader2.preheader, label %.loopexit, !llvm.loop !39

.preheader1.preheader:                            ; preds = %.loopexit, %130
  %storemerge1534 = phi i32 [ 0, %.loopexit ], [ %131, %130 ]
  br label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader1.preheader, %.preheader1
  %storemerge2033 = phi i32 [ 0, %.preheader1.preheader ], [ %128, %.preheader1 ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %storemerge2132 = phi i32 [ 0, %.preheader.preheader ], [ %126, %.preheader ]
  %120 = shl nuw nsw i32 %storemerge2132, 6
  %121 = shl nuw nsw i32 %storemerge2033, 3
  %122 = or disjoint i32 %120, %121
  %123 = or disjoint i32 %storemerge1534, %122
  %124 = zext nneg i32 %123 to i64
  %125 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %124
  store i32 1, ptr %125, align 4
  %126 = add nuw nsw i32 %storemerge2132, 1
  %127 = icmp samesign ult i32 %126, 2
  br i1 %127, label %.preheader, label %.preheader1, !llvm.loop !40

.preheader1:                                      ; preds = %.preheader
  %128 = add nuw nsw i32 %storemerge2033, 1
  %129 = icmp samesign ult i32 %128, 2
  br i1 %129, label %.preheader.preheader, label %130, !llvm.loop !41

130:                                              ; preds = %.preheader1
  %131 = add nuw nsw i32 %storemerge1534, 1
  %132 = icmp samesign ult i32 %131, 2
  br i1 %132, label %.preheader1.preheader, label %133, !llvm.loop !42

133:                                              ; preds = %130
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 0, ptr @kount, align 4
  %134 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %134, 0
  br i1 %.not, label %137, label %135

135:                                              ; preds = %133
  %136 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %136, ptr @n, align 4
  br label %138

137:                                              ; preds = %133
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %138

138:                                              ; preds = %137, %135
  %139 = load i32, ptr @n, align 4
  %140 = call i32 @Trial(i32 noundef %139)
  %.not16 = icmp eq i32 %140, 0
  br i1 %.not16, label %141, label %142

141:                                              ; preds = %138
  %puts17 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %145

142:                                              ; preds = %138
  %143 = load i32, ptr @kount, align 4
  %.not18 = icmp eq i32 %143, 2005
  br i1 %.not18, label %145, label %144

144:                                              ; preds = %142
  %puts19 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %145

145:                                              ; preds = %144, %142, %141
  %146 = load i32, ptr @n, align 4
  %147 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %146) #4
  %148 = load i32, ptr @kount, align 4
  %149 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %148) #4
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
  br i1 %3, label %1, label %4, !llvm.loop !43

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
