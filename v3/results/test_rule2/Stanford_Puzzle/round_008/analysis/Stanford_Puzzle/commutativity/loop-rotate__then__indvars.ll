; ModuleID = 'results\test_rule2\Stanford_Puzzle\round_007\output.ll'
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
  br i1 %.not1, label %18, label %.lr.ph

.lr.ph:                                           ; preds = %2
  %6 = sext i32 %1 to i64
  br label %7

7:                                                ; preds = %.lr.ph, %15
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %15 ]
  %8 = getelementptr inbounds [2048 x i8], ptr @p, i64 %3
  %9 = getelementptr inbounds [4 x i8], ptr %8, i64 %indvars.iv
  %10 = load i32, ptr %9, align 4
  %.not2 = icmp eq i32 %10, 0
  br i1 %.not2, label %15, label %11

11:                                               ; preds = %7
  %12 = add nsw i64 %6, %indvars.iv
  %13 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %12
  %14 = load i32, ptr %13, align 4
  %.not3 = icmp eq i32 %14, 0
  br i1 %.not3, label %15, label %._crit_edge

15:                                               ; preds = %11, %7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %16 = load i32, ptr %4, align 4
  %17 = sext i32 %16 to i64
  %.not = icmp sgt i64 %indvars.iv.next, %17
  br i1 %.not, label %._crit_edge3, label %7, !llvm.loop !7

._crit_edge:                                      ; preds = %11
  %split = phi i32 [ 0, %11 ]
  br label %18

._crit_edge3:                                     ; preds = %15
  %split4 = phi i32 [ 1, %15 ]
  br label %18

18:                                               ; preds = %._crit_edge3, %._crit_edge, %2
  %storemerge1 = phi i32 [ %split, %._crit_edge ], [ %split4, %._crit_edge3 ], [ 1, %2 ]
  ret i32 %storemerge1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Place(i32 noundef %0, i32 noundef %1) #0 {
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %3
  %5 = load i32, ptr %4, align 4
  %.not1 = icmp sgt i32 0, %5
  br i1 %.not1, label %17, label %.lr.ph

.lr.ph:                                           ; preds = %2
  %6 = sext i32 %1 to i64
  br label %7

7:                                                ; preds = %.lr.ph, %14
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next8, %14 ]
  %8 = getelementptr inbounds [2048 x i8], ptr @p, i64 %3
  %9 = getelementptr inbounds [4 x i8], ptr %8, i64 %indvars.iv
  %10 = load i32, ptr %9, align 4
  %.not4 = icmp eq i32 %10, 0
  br i1 %.not4, label %14, label %11

11:                                               ; preds = %7
  %12 = add nsw i64 %6, %indvars.iv
  %13 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %12
  store i32 1, ptr %13, align 4
  br label %14

14:                                               ; preds = %11, %7
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv, 1
  %15 = load i32, ptr %4, align 4
  %16 = sext i32 %15 to i64
  %.not = icmp sgt i64 %indvars.iv.next8, %16
  br i1 %.not, label %._crit_edge, label %7, !llvm.loop !9

._crit_edge:                                      ; preds = %14
  %split = phi i64 [ %3, %14 ]
  br label %17

17:                                               ; preds = %._crit_edge, %2
  %.lcssa = phi i64 [ %split, %._crit_edge ], [ %3, %2 ]
  %18 = getelementptr inbounds [4 x i8], ptr @class, i64 %.lcssa
  %19 = load i32, ptr %18, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %20
  %22 = load i32, ptr %21, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, ptr %21, align 4
  %24 = sext i32 %1 to i64
  %smax = call i32 @llvm.smax.i32(i32 %1, i32 512)
  %wide.trip.count = zext nneg i32 %smax to i64
  %exitcond.not4 = icmp eq i64 %24, %wide.trip.count
  br i1 %exitcond.not4, label %.loopexit.loopexit, label %.lr.ph7

.lr.ph7:                                          ; preds = %17
  br label %25

25:                                               ; preds = %.lr.ph7, %30
  %indvars.iv5 = phi i64 [ %24, %.lr.ph7 ], [ %indvars.iv.next, %30 ]
  %26 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %indvars.iv5
  %27 = load i32, ptr %26, align 4
  %.not3 = icmp eq i32 %27, 0
  br i1 %.not3, label %28, label %30

28:                                               ; preds = %25
  %indvars.iv.lcssa1 = phi i64 [ %indvars.iv5, %25 ]
  %29 = trunc nsw i64 %indvars.iv.lcssa1 to i32
  br label %.loopexit

30:                                               ; preds = %25
  %indvars.iv.next = add nsw i64 %indvars.iv5, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %..loopexit.loopexit_crit_edge, label %25, !llvm.loop !10

..loopexit.loopexit_crit_edge:                    ; preds = %30
  br label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %..loopexit.loopexit_crit_edge, %17
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %28
  %storemerge2 = phi i32 [ %29, %28 ], [ 0, %.loopexit.loopexit ]
  ret i32 %storemerge2
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Remove(i32 noundef %0, i32 noundef %1) #0 {
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %3
  %5 = load i32, ptr %4, align 4
  %.not2 = icmp sgt i32 0, %5
  br i1 %.not2, label %17, label %.lr.ph

.lr.ph:                                           ; preds = %2
  %6 = sext i32 %1 to i64
  br label %7

7:                                                ; preds = %.lr.ph, %14
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %14 ]
  %8 = getelementptr inbounds [2048 x i8], ptr @p, i64 %3
  %9 = getelementptr inbounds [4 x i8], ptr %8, i64 %indvars.iv
  %10 = load i32, ptr %9, align 4
  %.not1 = icmp eq i32 %10, 0
  br i1 %.not1, label %14, label %11

11:                                               ; preds = %7
  %12 = add nsw i64 %6, %indvars.iv
  %13 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %12
  store i32 0, ptr %13, align 4
  br label %14

14:                                               ; preds = %11, %7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %15 = load i32, ptr %4, align 4
  %16 = sext i32 %15 to i64
  %.not = icmp sgt i64 %indvars.iv.next, %16
  br i1 %.not, label %._crit_edge, label %7, !llvm.loop !11

._crit_edge:                                      ; preds = %14
  %split = phi i64 [ %3, %14 ]
  br label %17

17:                                               ; preds = %._crit_edge, %2
  %.lcssa = phi i64 [ %split, %._crit_edge ], [ %3, %2 ]
  %18 = getelementptr inbounds [4 x i8], ptr @class, i64 %.lcssa
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

4:                                                ; preds = %1, %20
  %indvars.iv = phi i64 [ 0, %1 ], [ %indvars.iv.next, %20 ]
  %5 = getelementptr inbounds [4 x i8], ptr @class, i64 %indvars.iv
  %6 = load i32, ptr %5, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %7
  %9 = load i32, ptr %8, align 4
  %.not = icmp eq i32 %9, 0
  br i1 %.not, label %20, label %10

10:                                               ; preds = %4
  %11 = trunc nuw nsw i64 %indvars.iv to i32
  %12 = call i32 @Fit(i32 noundef %11, i32 noundef %0)
  %.not2 = icmp eq i32 %12, 0
  br i1 %.not2, label %20, label %13

13:                                               ; preds = %10
  %14 = trunc nuw nsw i64 %indvars.iv to i32
  %15 = call i32 @Place(i32 noundef %14, i32 noundef %0)
  %16 = call i32 @Trial(i32 noundef %15)
  %.not3 = icmp ne i32 %16, 0
  %17 = icmp eq i32 %15, 0
  %or.cond = or i1 %.not3, %17
  br i1 %or.cond, label %21, label %18

18:                                               ; preds = %13
  %19 = trunc nuw nsw i64 %indvars.iv to i32
  call void @Remove(i32 noundef %19, i32 noundef %0)
  br label %20

20:                                               ; preds = %18, %10, %4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
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
  %indvars.iv = phi i64 [ 0, %0 ], [ %indvars.iv.next, %1 ]
  %2 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %indvars.iv
  store i32 1, ptr %2, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp ne i64 %indvars.iv.next, 512
  br i1 %exitcond, label %1, label %.preheader31.preheader, !llvm.loop !13

.preheader30.preheader:                           ; preds = %.preheader31.preheader, %.preheader31
  %indvars.iv70 = phi i64 [ 1, %.preheader31.preheader ], [ %indvars.iv.next71, %.preheader31 ]
  br label %.preheader29.preheader

.preheader28.preheader:                           ; preds = %.preheader31
  br label %.preheader27.preheader

.preheader29.preheader:                           ; preds = %.preheader30.preheader, %.preheader30
  %indvars.iv66 = phi i64 [ 1, %.preheader30.preheader ], [ %indvars.iv.next67, %.preheader30 ]
  br label %.preheader29

.preheader29:                                     ; preds = %.preheader29.preheader, %.preheader29
  %indvars.iv62 = phi i64 [ 1, %.preheader29.preheader ], [ %indvars.iv.next63, %.preheader29 ]
  %3 = shl i64 %indvars.iv62, 6
  %4 = shl i64 %indvars.iv66, 3
  %5 = add nuw nsw i64 %3, %4
  %6 = add nuw nsw i64 %indvars.iv70, %5
  %7 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %6
  store i32 0, ptr %7, align 4
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 1
  %exitcond65 = icmp ne i64 %indvars.iv.next63, 6
  br i1 %exitcond65, label %.preheader29, label %.preheader30, !llvm.loop !14

.preheader30:                                     ; preds = %.preheader29
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1
  %exitcond69 = icmp ne i64 %indvars.iv.next67, 6
  br i1 %exitcond69, label %.preheader29.preheader, label %.preheader31, !llvm.loop !15

.preheader31:                                     ; preds = %.preheader30
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70, 1
  %exitcond73 = icmp ne i64 %indvars.iv.next71, 6
  br i1 %exitcond73, label %.preheader30.preheader, label %.preheader28.preheader, !llvm.loop !16

.preheader27.preheader:                           ; preds = %.preheader28.preheader, %.preheader28
  %indvars.iv78 = phi i64 [ 0, %.preheader28.preheader ], [ %indvars.iv.next79, %.preheader28 ]
  br label %.preheader27

.preheader26.preheader:                           ; preds = %.preheader28
  br label %.preheader25.preheader

.preheader27:                                     ; preds = %.preheader27.preheader, %.preheader27
  %indvars.iv74 = phi i64 [ 0, %.preheader27.preheader ], [ %indvars.iv.next75, %.preheader27 ]
  %8 = getelementptr inbounds [2048 x i8], ptr @p, i64 %indvars.iv78
  %9 = getelementptr inbounds [4 x i8], ptr %8, i64 %indvars.iv74
  store i32 0, ptr %9, align 4
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1
  %exitcond77 = icmp ne i64 %indvars.iv.next75, 512
  br i1 %exitcond77, label %.preheader27, label %.preheader28, !llvm.loop !17

.preheader28:                                     ; preds = %.preheader27
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1
  %exitcond81 = icmp ne i64 %indvars.iv.next79, 13
  br i1 %exitcond81, label %.preheader27.preheader, label %.preheader26.preheader, !llvm.loop !18

.preheader25.preheader:                           ; preds = %.preheader26.preheader, %.preheader26
  %indvars.iv89 = phi i64 [ 0, %.preheader26.preheader ], [ %indvars.iv.next90, %.preheader26 ]
  br label %.preheader24.preheader

.preheader24.preheader:                           ; preds = %.preheader25.preheader, %.preheader25
  %indvars.iv85 = phi i64 [ 0, %.preheader25.preheader ], [ %indvars.iv.next86, %.preheader25 ]
  br label %.preheader24

.preheader24:                                     ; preds = %.preheader24.preheader, %.preheader24
  %10 = shl i64 %indvars.iv85, 3
  %11 = add nuw nsw i64 %indvars.iv89, %10
  %12 = getelementptr inbounds [4 x i8], ptr @p, i64 %11
  store i32 1, ptr %12, align 4
  br i1 false, label %.preheader24, label %.preheader25, !llvm.loop !19

.preheader25:                                     ; preds = %.preheader24
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 1
  %exitcond88 = icmp ne i64 %indvars.iv.next86, 2
  br i1 %exitcond88, label %.preheader24.preheader, label %.preheader26, !llvm.loop !20

.preheader26:                                     ; preds = %.preheader25
  %indvars.iv.next90 = add nuw nsw i64 %indvars.iv89, 1
  %exitcond92 = icmp ne i64 %indvars.iv.next90, 4
  br i1 %exitcond92, label %.preheader25.preheader, label %13, !llvm.loop !21

13:                                               ; preds = %.preheader26
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %.preheader23.preheader

.preheader23.preheader:                           ; preds = %13, %17
  %indvars.iv100 = phi i64 [ 0, %13 ], [ %indvars.iv.next101, %17 ]
  br label %.preheader22.preheader

.preheader22.preheader:                           ; preds = %.preheader23.preheader, %.preheader23
  br label %.preheader22

.preheader22:                                     ; preds = %.preheader22.preheader, %.preheader22
  %indvars.iv93 = phi i64 [ 0, %.preheader22.preheader ], [ %indvars.iv.next94, %.preheader22 ]
  %14 = shl i64 %indvars.iv93, 6
  %15 = add nuw nsw i64 %indvars.iv100, %14
  %16 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %15
  store i32 1, ptr %16, align 4
  %indvars.iv.next94 = add nuw nsw i64 %indvars.iv93, 1
  %exitcond96 = icmp ne i64 %indvars.iv.next94, 4
  br i1 %exitcond96, label %.preheader22, label %.preheader23, !llvm.loop !22

.preheader23:                                     ; preds = %.preheader22
  br i1 false, label %.preheader22.preheader, label %17, !llvm.loop !23

17:                                               ; preds = %.preheader23
  %indvars.iv.next101 = add nuw nsw i64 %indvars.iv100, 1
  %exitcond103 = icmp ne i64 %indvars.iv.next101, 2
  br i1 %exitcond103, label %.preheader23.preheader, label %18, !llvm.loop !24

18:                                               ; preds = %17
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %.preheader21.preheader

.preheader21.preheader:                           ; preds = %18, %23
  br label %.preheader20.preheader

.preheader20.preheader:                           ; preds = %.preheader21.preheader, %.preheader21
  %indvars.iv108 = phi i64 [ 0, %.preheader21.preheader ], [ %indvars.iv.next109, %.preheader21 ]
  br label %.preheader20

.preheader20:                                     ; preds = %.preheader20.preheader, %.preheader20
  %indvars.iv104 = phi i64 [ 0, %.preheader20.preheader ], [ %indvars.iv.next105, %.preheader20 ]
  %19 = shl i64 %indvars.iv104, 6
  %20 = shl i64 %indvars.iv108, 3
  %21 = add nuw nsw i64 %19, %20
  %22 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %21
  store i32 1, ptr %22, align 4
  %indvars.iv.next105 = add nuw nsw i64 %indvars.iv104, 1
  %exitcond107 = icmp ne i64 %indvars.iv.next105, 2
  br i1 %exitcond107, label %.preheader20, label %.preheader21, !llvm.loop !25

.preheader21:                                     ; preds = %.preheader20
  %indvars.iv.next109 = add nuw nsw i64 %indvars.iv108, 1
  %exitcond111 = icmp ne i64 %indvars.iv.next109, 4
  br i1 %exitcond111, label %.preheader20.preheader, label %23, !llvm.loop !26

23:                                               ; preds = %.preheader21
  br i1 false, label %.preheader21.preheader, label %24, !llvm.loop !27

24:                                               ; preds = %23
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %.preheader19.preheader

.preheader19.preheader:                           ; preds = %24, %28
  %indvars.iv122 = phi i64 [ 0, %24 ], [ %indvars.iv.next123, %28 ]
  br label %.preheader18.preheader

.preheader18.preheader:                           ; preds = %.preheader19.preheader, %.preheader19
  %indvars.iv118 = phi i64 [ 0, %.preheader19.preheader ], [ %indvars.iv.next119, %.preheader19 ]
  br label %.preheader18

.preheader18:                                     ; preds = %.preheader18.preheader, %.preheader18
  %25 = shl i64 %indvars.iv118, 3
  %26 = add nuw nsw i64 %indvars.iv122, %25
  %27 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %26
  store i32 1, ptr %27, align 4
  br i1 false, label %.preheader18, label %.preheader19, !llvm.loop !28

.preheader19:                                     ; preds = %.preheader18
  %indvars.iv.next119 = add nuw nsw i64 %indvars.iv118, 1
  %exitcond121 = icmp ne i64 %indvars.iv.next119, 4
  br i1 %exitcond121, label %.preheader18.preheader, label %28, !llvm.loop !29

28:                                               ; preds = %.preheader19
  %indvars.iv.next123 = add nuw nsw i64 %indvars.iv122, 1
  %exitcond125 = icmp ne i64 %indvars.iv.next123, 2
  br i1 %exitcond125, label %.preheader19.preheader, label %29, !llvm.loop !30

29:                                               ; preds = %28
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %.preheader17.preheader

.preheader17.preheader:                           ; preds = %29, %33
  %indvars.iv133 = phi i64 [ 0, %29 ], [ %indvars.iv.next134, %33 ]
  br label %.preheader16.preheader

.preheader16.preheader:                           ; preds = %.preheader17.preheader, %.preheader17
  br label %.preheader16

.preheader16:                                     ; preds = %.preheader16.preheader, %.preheader16
  %indvars.iv126 = phi i64 [ 0, %.preheader16.preheader ], [ %indvars.iv.next127, %.preheader16 ]
  %30 = shl i64 %indvars.iv126, 6
  %31 = add nuw nsw i64 %indvars.iv133, %30
  %32 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %31
  store i32 1, ptr %32, align 4
  %indvars.iv.next127 = add nuw nsw i64 %indvars.iv126, 1
  %exitcond129 = icmp ne i64 %indvars.iv.next127, 2
  br i1 %exitcond129, label %.preheader16, label %.preheader17, !llvm.loop !31

.preheader17:                                     ; preds = %.preheader16
  br i1 false, label %.preheader16.preheader, label %33, !llvm.loop !32

33:                                               ; preds = %.preheader17
  %indvars.iv.next134 = add nuw nsw i64 %indvars.iv133, 1
  %exitcond136 = icmp ne i64 %indvars.iv.next134, 4
  br i1 %exitcond136, label %.preheader17.preheader, label %34, !llvm.loop !33

34:                                               ; preds = %33
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %.preheader15.preheader

.preheader15.preheader:                           ; preds = %34, %39
  br label %.preheader14.preheader

.preheader14.preheader:                           ; preds = %.preheader15.preheader, %.preheader15
  %indvars.iv141 = phi i64 [ 0, %.preheader15.preheader ], [ %indvars.iv.next142, %.preheader15 ]
  br label %.preheader14

.preheader14:                                     ; preds = %.preheader14.preheader, %.preheader14
  %indvars.iv137 = phi i64 [ 0, %.preheader14.preheader ], [ %indvars.iv.next138, %.preheader14 ]
  %35 = shl i64 %indvars.iv137, 6
  %36 = shl i64 %indvars.iv141, 3
  %37 = add nuw nsw i64 %35, %36
  %38 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %37
  store i32 1, ptr %38, align 4
  %indvars.iv.next138 = add nuw nsw i64 %indvars.iv137, 1
  %exitcond140 = icmp ne i64 %indvars.iv.next138, 4
  br i1 %exitcond140, label %.preheader14, label %.preheader15, !llvm.loop !34

.preheader15:                                     ; preds = %.preheader14
  %indvars.iv.next142 = add nuw nsw i64 %indvars.iv141, 1
  %exitcond144 = icmp ne i64 %indvars.iv.next142, 2
  br i1 %exitcond144, label %.preheader14.preheader, label %39, !llvm.loop !35

39:                                               ; preds = %.preheader15
  br i1 false, label %.preheader15.preheader, label %40, !llvm.loop !36

40:                                               ; preds = %39
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %.preheader13.preheader

.preheader13.preheader:                           ; preds = %40, %42
  %indvars.iv154 = phi i64 [ 0, %40 ], [ %indvars.iv.next155, %42 ]
  br label %.preheader12.preheader

.preheader12.preheader:                           ; preds = %.preheader13.preheader, %.preheader13
  br label %.preheader12

.preheader12:                                     ; preds = %.preheader12.preheader, %.preheader12
  %41 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %indvars.iv154
  store i32 1, ptr %41, align 4
  br i1 false, label %.preheader12, label %.preheader13, !llvm.loop !37

.preheader13:                                     ; preds = %.preheader12
  br i1 false, label %.preheader12.preheader, label %42, !llvm.loop !38

42:                                               ; preds = %.preheader13
  %indvars.iv.next155 = add nuw nsw i64 %indvars.iv154, 1
  %exitcond157 = icmp ne i64 %indvars.iv.next155, 3
  br i1 %exitcond157, label %.preheader13.preheader, label %43, !llvm.loop !39

43:                                               ; preds = %42
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %.preheader11.preheader

.preheader11.preheader:                           ; preds = %43, %46
  br label %.preheader10.preheader

.preheader10.preheader:                           ; preds = %.preheader11.preheader, %.preheader11
  %indvars.iv161 = phi i64 [ 0, %.preheader11.preheader ], [ %indvars.iv.next162, %.preheader11 ]
  br label %.preheader10

.preheader10:                                     ; preds = %.preheader10.preheader, %.preheader10
  %44 = shl i64 %indvars.iv161, 3
  %45 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %44
  store i32 1, ptr %45, align 4
  br i1 false, label %.preheader10, label %.preheader11, !llvm.loop !40

.preheader11:                                     ; preds = %.preheader10
  %indvars.iv.next162 = add nuw nsw i64 %indvars.iv161, 1
  %exitcond164 = icmp ne i64 %indvars.iv.next162, 3
  br i1 %exitcond164, label %.preheader10.preheader, label %46, !llvm.loop !41

46:                                               ; preds = %.preheader11
  br i1 false, label %.preheader11.preheader, label %47, !llvm.loop !42

47:                                               ; preds = %46
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %.preheader9.preheader

.preheader9.preheader:                            ; preds = %47, %50
  br label %.preheader8.preheader

.preheader8.preheader:                            ; preds = %.preheader9.preheader, %.preheader9
  br label %.preheader8

.preheader8:                                      ; preds = %.preheader8.preheader, %.preheader8
  %indvars.iv168 = phi i64 [ 0, %.preheader8.preheader ], [ %indvars.iv.next169, %.preheader8 ]
  %48 = shl i64 %indvars.iv168, 6
  %49 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %48
  store i32 1, ptr %49, align 4
  %indvars.iv.next169 = add nuw nsw i64 %indvars.iv168, 1
  %exitcond171 = icmp ne i64 %indvars.iv.next169, 3
  br i1 %exitcond171, label %.preheader8, label %.preheader9, !llvm.loop !43

.preheader9:                                      ; preds = %.preheader8
  br i1 false, label %.preheader8.preheader, label %50, !llvm.loop !44

50:                                               ; preds = %.preheader9
  br i1 false, label %.preheader9.preheader, label %51, !llvm.loop !45

51:                                               ; preds = %50
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %.preheader7.preheader

.preheader7.preheader:                            ; preds = %51, %55
  %indvars.iv185 = phi i64 [ 0, %51 ], [ %indvars.iv.next186, %55 ]
  br label %.preheader6.preheader

.preheader6.preheader:                            ; preds = %.preheader7.preheader, %.preheader7
  %indvars.iv181 = phi i64 [ 0, %.preheader7.preheader ], [ %indvars.iv.next182, %.preheader7 ]
  br label %.preheader6

.preheader6:                                      ; preds = %.preheader6.preheader, %.preheader6
  %52 = shl i64 %indvars.iv181, 3
  %53 = add nuw nsw i64 %indvars.iv185, %52
  %54 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %53
  store i32 1, ptr %54, align 4
  br i1 false, label %.preheader6, label %.preheader7, !llvm.loop !46

.preheader7:                                      ; preds = %.preheader6
  %indvars.iv.next182 = add nuw nsw i64 %indvars.iv181, 1
  %exitcond184 = icmp ne i64 %indvars.iv.next182, 2
  br i1 %exitcond184, label %.preheader6.preheader, label %55, !llvm.loop !47

55:                                               ; preds = %.preheader7
  %indvars.iv.next186 = add nuw nsw i64 %indvars.iv185, 1
  %exitcond188 = icmp ne i64 %indvars.iv.next186, 2
  br i1 %exitcond188, label %.preheader7.preheader, label %56, !llvm.loop !48

56:                                               ; preds = %55
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %.preheader5.preheader

.preheader5.preheader:                            ; preds = %56, %60
  %indvars.iv196 = phi i64 [ 0, %56 ], [ %indvars.iv.next197, %60 ]
  br label %.preheader4.preheader

.preheader4.preheader:                            ; preds = %.preheader5.preheader, %.preheader5
  br label %.preheader4

.preheader4:                                      ; preds = %.preheader4.preheader, %.preheader4
  %indvars.iv189 = phi i64 [ 0, %.preheader4.preheader ], [ %indvars.iv.next190, %.preheader4 ]
  %57 = shl i64 %indvars.iv189, 6
  %58 = add nuw nsw i64 %indvars.iv196, %57
  %59 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %58
  store i32 1, ptr %59, align 4
  %indvars.iv.next190 = add nuw nsw i64 %indvars.iv189, 1
  %exitcond192 = icmp ne i64 %indvars.iv.next190, 2
  br i1 %exitcond192, label %.preheader4, label %.preheader5, !llvm.loop !49

.preheader5:                                      ; preds = %.preheader4
  br i1 false, label %.preheader4.preheader, label %60, !llvm.loop !50

60:                                               ; preds = %.preheader5
  %indvars.iv.next197 = add nuw nsw i64 %indvars.iv196, 1
  %exitcond199 = icmp ne i64 %indvars.iv.next197, 2
  br i1 %exitcond199, label %.preheader5.preheader, label %61, !llvm.loop !51

61:                                               ; preds = %60
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %.preheader3.preheader

.preheader3.preheader:                            ; preds = %61, %66
  br label %.preheader2.preheader

.preheader2.preheader:                            ; preds = %.preheader3.preheader, %.preheader3
  %indvars.iv204 = phi i64 [ 0, %.preheader3.preheader ], [ %indvars.iv.next205, %.preheader3 ]
  br label %.preheader2

.preheader2:                                      ; preds = %.preheader2.preheader, %.preheader2
  %indvars.iv200 = phi i64 [ 0, %.preheader2.preheader ], [ %indvars.iv.next201, %.preheader2 ]
  %62 = shl i64 %indvars.iv200, 6
  %63 = shl i64 %indvars.iv204, 3
  %64 = add nuw nsw i64 %62, %63
  %65 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %64
  store i32 1, ptr %65, align 4
  %indvars.iv.next201 = add nuw nsw i64 %indvars.iv200, 1
  %exitcond203 = icmp ne i64 %indvars.iv.next201, 2
  br i1 %exitcond203, label %.preheader2, label %.preheader3, !llvm.loop !52

.preheader3:                                      ; preds = %.preheader2
  %indvars.iv.next205 = add nuw nsw i64 %indvars.iv204, 1
  %exitcond207 = icmp ne i64 %indvars.iv.next205, 2
  br i1 %exitcond207, label %.preheader2.preheader, label %66, !llvm.loop !53

66:                                               ; preds = %.preheader3
  br i1 false, label %.preheader3.preheader, label %67, !llvm.loop !54

67:                                               ; preds = %66
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %.preheader1.preheader

.preheader1.preheader:                            ; preds = %67, %73
  %indvars.iv219 = phi i64 [ 0, %67 ], [ %indvars.iv.next220, %73 ]
  br label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader1.preheader, %.preheader1
  %indvars.iv215 = phi i64 [ 0, %.preheader1.preheader ], [ %indvars.iv.next216, %.preheader1 ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %indvars.iv211 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next212, %.preheader ]
  %68 = shl i64 %indvars.iv211, 6
  %69 = shl i64 %indvars.iv215, 3
  %70 = add nuw nsw i64 %68, %69
  %71 = add nuw nsw i64 %indvars.iv219, %70
  %72 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %71
  store i32 1, ptr %72, align 4
  %indvars.iv.next212 = add nuw nsw i64 %indvars.iv211, 1
  %exitcond214 = icmp ne i64 %indvars.iv.next212, 2
  br i1 %exitcond214, label %.preheader, label %.preheader1, !llvm.loop !55

.preheader1:                                      ; preds = %.preheader
  %indvars.iv.next216 = add nuw nsw i64 %indvars.iv215, 1
  %exitcond218 = icmp ne i64 %indvars.iv.next216, 2
  br i1 %exitcond218, label %.preheader.preheader, label %73, !llvm.loop !56

73:                                               ; preds = %.preheader1
  %indvars.iv.next220 = add nuw nsw i64 %indvars.iv219, 1
  %exitcond222 = icmp ne i64 %indvars.iv.next220, 2
  br i1 %exitcond222, label %.preheader1.preheader, label %74, !llvm.loop !57

74:                                               ; preds = %73
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 0, ptr @kount, align 4
  %75 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %75, 0
  br i1 %.not, label %78, label %76

76:                                               ; preds = %74
  %77 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %77, ptr @n, align 4
  br label %79

78:                                               ; preds = %74
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %79

79:                                               ; preds = %78, %76
  %80 = load i32, ptr @n, align 4
  %81 = call i32 @Trial(i32 noundef %80)
  %.not16 = icmp eq i32 %81, 0
  br i1 %.not16, label %82, label %83

82:                                               ; preds = %79
  %puts17 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %86

83:                                               ; preds = %79
  %84 = load i32, ptr @kount, align 4
  %.not18 = icmp eq i32 %84, 2005
  br i1 %.not18, label %86, label %85

85:                                               ; preds = %83
  %puts19 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %86

86:                                               ; preds = %85, %83, %82
  %87 = load i32, ptr @n, align 4
  %88 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %87) #4
  %89 = load i32, ptr @kount, align 4
  %90 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %89) #4
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
