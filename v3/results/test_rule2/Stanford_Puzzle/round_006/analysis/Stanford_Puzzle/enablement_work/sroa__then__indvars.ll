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
  %11 = getelementptr inbounds [4 x i8], ptr %10, i64 %indvars.iv
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
  %indvars.iv4 = phi i64 [ %indvars.iv.next5, %16 ], [ 0, %2 ]
  %5 = sext i32 %0 to i64
  %6 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %5
  %7 = load i32, ptr %6, align 4
  %8 = sext i32 %7 to i64
  %.not = icmp sgt i64 %indvars.iv4, %8
  br i1 %.not, label %17, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds [2048 x i8], ptr @p, i64 %5
  %11 = getelementptr inbounds [4 x i8], ptr %10, i64 %indvars.iv4
  %12 = load i32, ptr %11, align 4
  %.not4 = icmp eq i32 %12, 0
  br i1 %.not4, label %16, label %13

13:                                               ; preds = %9
  %14 = add nsw i64 %3, %indvars.iv4
  %15 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %14
  store i32 1, ptr %15, align 4
  br label %16

16:                                               ; preds = %13, %9
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv4, 1
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
  %11 = getelementptr inbounds [4 x i8], ptr %10, i64 %indvars.iv
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
  %6 = getelementptr inbounds [4 x i8], ptr @class, i64 %indvars.iv
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
  %3 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %indvars.iv
  store i32 1, ptr %3, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %1, !llvm.loop !13

.preheader31:                                     ; preds = %11, %.preheader31.preheader
  %indvars.iv84 = phi i64 [ %indvars.iv.next85, %11 ], [ 1, %.preheader31.preheader ]
  %exitcond87 = icmp ne i64 %indvars.iv84, 6
  br i1 %exitcond87, label %.preheader30.preheader, label %.preheader28.preheader

.preheader30.preheader:                           ; preds = %.preheader31
  br label %.preheader30

.preheader28.preheader:                           ; preds = %.preheader31
  br label %.preheader28

.preheader30:                                     ; preds = %10, %.preheader30.preheader
  %indvars.iv80 = phi i64 [ %indvars.iv.next81, %10 ], [ 1, %.preheader30.preheader ]
  %exitcond83 = icmp ne i64 %indvars.iv80, 6
  br i1 %exitcond83, label %.preheader29.preheader, label %11

.preheader29.preheader:                           ; preds = %.preheader30
  br label %.preheader29

.preheader29:                                     ; preds = %4, %.preheader29.preheader
  %indvars.iv76 = phi i64 [ %indvars.iv.next77, %4 ], [ 1, %.preheader29.preheader ]
  %exitcond79 = icmp ne i64 %indvars.iv76, 6
  br i1 %exitcond79, label %4, label %10

4:                                                ; preds = %.preheader29
  %5 = shl i64 %indvars.iv76, 6
  %6 = shl i64 %indvars.iv80, 3
  %7 = add nuw nsw i64 %5, %6
  %8 = add nuw nsw i64 %indvars.iv84, %7
  %9 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %8
  store i32 0, ptr %9, align 4
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv76, 1
  br label %.preheader29, !llvm.loop !14

10:                                               ; preds = %.preheader29
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1
  br label %.preheader30, !llvm.loop !15

11:                                               ; preds = %.preheader30
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv84, 1
  br label %.preheader31, !llvm.loop !16

.preheader28:                                     ; preds = %15, %.preheader28.preheader
  %indvars.iv92 = phi i64 [ %indvars.iv.next93, %15 ], [ 0, %.preheader28.preheader ]
  %exitcond95 = icmp ne i64 %indvars.iv92, 13
  br i1 %exitcond95, label %.preheader27.preheader, label %.preheader26.preheader

.preheader27.preheader:                           ; preds = %.preheader28
  br label %.preheader27

.preheader26.preheader:                           ; preds = %.preheader28
  br label %.preheader26

.preheader27:                                     ; preds = %12, %.preheader27.preheader
  %indvars.iv88 = phi i64 [ %indvars.iv.next89, %12 ], [ 0, %.preheader27.preheader ]
  %exitcond91 = icmp ne i64 %indvars.iv88, 512
  br i1 %exitcond91, label %12, label %15

12:                                               ; preds = %.preheader27
  %13 = getelementptr inbounds [2048 x i8], ptr @p, i64 %indvars.iv92
  %14 = getelementptr inbounds [4 x i8], ptr %13, i64 %indvars.iv88
  store i32 0, ptr %14, align 4
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 1
  br label %.preheader27, !llvm.loop !17

15:                                               ; preds = %.preheader27
  %indvars.iv.next93 = add nuw nsw i64 %indvars.iv92, 1
  br label %.preheader28, !llvm.loop !18

.preheader26:                                     ; preds = %23, %.preheader26.preheader
  %indvars.iv104 = phi i64 [ %indvars.iv.next105, %23 ], [ 0, %.preheader26.preheader ]
  %exitcond107 = icmp ne i64 %indvars.iv104, 4
  br i1 %exitcond107, label %.preheader25.preheader, label %24

.preheader25.preheader:                           ; preds = %.preheader26
  br label %.preheader25

.preheader25:                                     ; preds = %22, %.preheader25.preheader
  %indvars.iv100 = phi i64 [ %indvars.iv.next101, %22 ], [ 0, %.preheader25.preheader ]
  %exitcond103 = icmp ne i64 %indvars.iv100, 2
  br i1 %exitcond103, label %.preheader24.preheader, label %23

.preheader24.preheader:                           ; preds = %.preheader25
  br label %.preheader24

.preheader24:                                     ; preds = %16, %.preheader24.preheader
  %indvars.iv96 = phi i64 [ %indvars.iv.next97, %16 ], [ 0, %.preheader24.preheader ]
  %exitcond99 = icmp ne i64 %indvars.iv96, 1
  br i1 %exitcond99, label %16, label %22

16:                                               ; preds = %.preheader24
  %17 = shl i64 %indvars.iv96, 6
  %18 = shl i64 %indvars.iv100, 3
  %19 = add nuw nsw i64 %17, %18
  %20 = add nuw nsw i64 %indvars.iv104, %19
  %21 = getelementptr inbounds [4 x i8], ptr @p, i64 %20
  store i32 1, ptr %21, align 4
  %indvars.iv.next97 = add nuw nsw i64 %indvars.iv96, 1
  br label %.preheader24, !llvm.loop !19

22:                                               ; preds = %.preheader24
  %indvars.iv.next101 = add nuw nsw i64 %indvars.iv100, 1
  br label %.preheader25, !llvm.loop !20

23:                                               ; preds = %.preheader25
  %indvars.iv.next105 = add nuw nsw i64 %indvars.iv104, 1
  br label %.preheader26, !llvm.loop !21

24:                                               ; preds = %.preheader26
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %25

25:                                               ; preds = %33, %24
  %indvars.iv116 = phi i64 [ %indvars.iv.next117, %33 ], [ 0, %24 ]
  %exitcond119 = icmp ne i64 %indvars.iv116, 2
  br i1 %exitcond119, label %.preheader23.preheader, label %34

.preheader23.preheader:                           ; preds = %25
  br label %.preheader23

.preheader23:                                     ; preds = %32, %.preheader23.preheader
  %indvars.iv112 = phi i64 [ %indvars.iv.next113, %32 ], [ 0, %.preheader23.preheader ]
  %exitcond115 = icmp ne i64 %indvars.iv112, 1
  br i1 %exitcond115, label %.preheader22.preheader, label %33

.preheader22.preheader:                           ; preds = %.preheader23
  br label %.preheader22

.preheader22:                                     ; preds = %26, %.preheader22.preheader
  %indvars.iv108 = phi i64 [ %indvars.iv.next109, %26 ], [ 0, %.preheader22.preheader ]
  %exitcond111 = icmp ne i64 %indvars.iv108, 4
  br i1 %exitcond111, label %26, label %32

26:                                               ; preds = %.preheader22
  %27 = shl i64 %indvars.iv108, 6
  %28 = shl i64 %indvars.iv112, 3
  %29 = add nuw nsw i64 %27, %28
  %30 = add nuw nsw i64 %indvars.iv116, %29
  %31 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %30
  store i32 1, ptr %31, align 4
  %indvars.iv.next109 = add nuw nsw i64 %indvars.iv108, 1
  br label %.preheader22, !llvm.loop !22

32:                                               ; preds = %.preheader22
  %indvars.iv.next113 = add nuw nsw i64 %indvars.iv112, 1
  br label %.preheader23, !llvm.loop !23

33:                                               ; preds = %.preheader23
  %indvars.iv.next117 = add nuw nsw i64 %indvars.iv116, 1
  br label %25, !llvm.loop !24

34:                                               ; preds = %25
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %35

35:                                               ; preds = %43, %34
  %indvars.iv128 = phi i64 [ %indvars.iv.next129, %43 ], [ 0, %34 ]
  %exitcond131 = icmp ne i64 %indvars.iv128, 1
  br i1 %exitcond131, label %.preheader21.preheader, label %44

.preheader21.preheader:                           ; preds = %35
  br label %.preheader21

.preheader21:                                     ; preds = %42, %.preheader21.preheader
  %indvars.iv124 = phi i64 [ %indvars.iv.next125, %42 ], [ 0, %.preheader21.preheader ]
  %exitcond127 = icmp ne i64 %indvars.iv124, 4
  br i1 %exitcond127, label %.preheader20.preheader, label %43

.preheader20.preheader:                           ; preds = %.preheader21
  br label %.preheader20

.preheader20:                                     ; preds = %36, %.preheader20.preheader
  %indvars.iv120 = phi i64 [ %indvars.iv.next121, %36 ], [ 0, %.preheader20.preheader ]
  %exitcond123 = icmp ne i64 %indvars.iv120, 2
  br i1 %exitcond123, label %36, label %42

36:                                               ; preds = %.preheader20
  %37 = shl i64 %indvars.iv120, 6
  %38 = shl i64 %indvars.iv124, 3
  %39 = add nuw nsw i64 %37, %38
  %40 = add nuw nsw i64 %indvars.iv128, %39
  %41 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %40
  store i32 1, ptr %41, align 4
  %indvars.iv.next121 = add nuw nsw i64 %indvars.iv120, 1
  br label %.preheader20, !llvm.loop !25

42:                                               ; preds = %.preheader20
  %indvars.iv.next125 = add nuw nsw i64 %indvars.iv124, 1
  br label %.preheader21, !llvm.loop !26

43:                                               ; preds = %.preheader21
  %indvars.iv.next129 = add nuw nsw i64 %indvars.iv128, 1
  br label %35, !llvm.loop !27

44:                                               ; preds = %35
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %45

45:                                               ; preds = %53, %44
  %indvars.iv140 = phi i64 [ %indvars.iv.next141, %53 ], [ 0, %44 ]
  %exitcond143 = icmp ne i64 %indvars.iv140, 2
  br i1 %exitcond143, label %.preheader19.preheader, label %54

.preheader19.preheader:                           ; preds = %45
  br label %.preheader19

.preheader19:                                     ; preds = %52, %.preheader19.preheader
  %indvars.iv136 = phi i64 [ %indvars.iv.next137, %52 ], [ 0, %.preheader19.preheader ]
  %exitcond139 = icmp ne i64 %indvars.iv136, 4
  br i1 %exitcond139, label %.preheader18.preheader, label %53

.preheader18.preheader:                           ; preds = %.preheader19
  br label %.preheader18

.preheader18:                                     ; preds = %46, %.preheader18.preheader
  %indvars.iv132 = phi i64 [ %indvars.iv.next133, %46 ], [ 0, %.preheader18.preheader ]
  %exitcond135 = icmp ne i64 %indvars.iv132, 1
  br i1 %exitcond135, label %46, label %52

46:                                               ; preds = %.preheader18
  %47 = shl i64 %indvars.iv132, 6
  %48 = shl i64 %indvars.iv136, 3
  %49 = add nuw nsw i64 %47, %48
  %50 = add nuw nsw i64 %indvars.iv140, %49
  %51 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %50
  store i32 1, ptr %51, align 4
  %indvars.iv.next133 = add nuw nsw i64 %indvars.iv132, 1
  br label %.preheader18, !llvm.loop !28

52:                                               ; preds = %.preheader18
  %indvars.iv.next137 = add nuw nsw i64 %indvars.iv136, 1
  br label %.preheader19, !llvm.loop !29

53:                                               ; preds = %.preheader19
  %indvars.iv.next141 = add nuw nsw i64 %indvars.iv140, 1
  br label %45, !llvm.loop !30

54:                                               ; preds = %45
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %55

55:                                               ; preds = %63, %54
  %indvars.iv152 = phi i64 [ %indvars.iv.next153, %63 ], [ 0, %54 ]
  %exitcond155 = icmp ne i64 %indvars.iv152, 4
  br i1 %exitcond155, label %.preheader17.preheader, label %64

.preheader17.preheader:                           ; preds = %55
  br label %.preheader17

.preheader17:                                     ; preds = %62, %.preheader17.preheader
  %indvars.iv148 = phi i64 [ %indvars.iv.next149, %62 ], [ 0, %.preheader17.preheader ]
  %exitcond151 = icmp ne i64 %indvars.iv148, 1
  br i1 %exitcond151, label %.preheader16.preheader, label %63

.preheader16.preheader:                           ; preds = %.preheader17
  br label %.preheader16

.preheader16:                                     ; preds = %56, %.preheader16.preheader
  %indvars.iv144 = phi i64 [ %indvars.iv.next145, %56 ], [ 0, %.preheader16.preheader ]
  %exitcond147 = icmp ne i64 %indvars.iv144, 2
  br i1 %exitcond147, label %56, label %62

56:                                               ; preds = %.preheader16
  %57 = shl i64 %indvars.iv144, 6
  %58 = shl i64 %indvars.iv148, 3
  %59 = add nuw nsw i64 %57, %58
  %60 = add nuw nsw i64 %indvars.iv152, %59
  %61 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %60
  store i32 1, ptr %61, align 4
  %indvars.iv.next145 = add nuw nsw i64 %indvars.iv144, 1
  br label %.preheader16, !llvm.loop !31

62:                                               ; preds = %.preheader16
  %indvars.iv.next149 = add nuw nsw i64 %indvars.iv148, 1
  br label %.preheader17, !llvm.loop !32

63:                                               ; preds = %.preheader17
  %indvars.iv.next153 = add nuw nsw i64 %indvars.iv152, 1
  br label %55, !llvm.loop !33

64:                                               ; preds = %55
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %65

65:                                               ; preds = %73, %64
  %indvars.iv164 = phi i64 [ %indvars.iv.next165, %73 ], [ 0, %64 ]
  %exitcond167 = icmp ne i64 %indvars.iv164, 1
  br i1 %exitcond167, label %.preheader15.preheader, label %74

.preheader15.preheader:                           ; preds = %65
  br label %.preheader15

.preheader15:                                     ; preds = %72, %.preheader15.preheader
  %indvars.iv160 = phi i64 [ %indvars.iv.next161, %72 ], [ 0, %.preheader15.preheader ]
  %exitcond163 = icmp ne i64 %indvars.iv160, 2
  br i1 %exitcond163, label %.preheader14.preheader, label %73

.preheader14.preheader:                           ; preds = %.preheader15
  br label %.preheader14

.preheader14:                                     ; preds = %66, %.preheader14.preheader
  %indvars.iv156 = phi i64 [ %indvars.iv.next157, %66 ], [ 0, %.preheader14.preheader ]
  %exitcond159 = icmp ne i64 %indvars.iv156, 4
  br i1 %exitcond159, label %66, label %72

66:                                               ; preds = %.preheader14
  %67 = shl i64 %indvars.iv156, 6
  %68 = shl i64 %indvars.iv160, 3
  %69 = add nuw nsw i64 %67, %68
  %70 = add nuw nsw i64 %indvars.iv164, %69
  %71 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %70
  store i32 1, ptr %71, align 4
  %indvars.iv.next157 = add nuw nsw i64 %indvars.iv156, 1
  br label %.preheader14, !llvm.loop !34

72:                                               ; preds = %.preheader14
  %indvars.iv.next161 = add nuw nsw i64 %indvars.iv160, 1
  br label %.preheader15, !llvm.loop !35

73:                                               ; preds = %.preheader15
  %indvars.iv.next165 = add nuw nsw i64 %indvars.iv164, 1
  br label %65, !llvm.loop !36

74:                                               ; preds = %65
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %75

75:                                               ; preds = %83, %74
  %indvars.iv176 = phi i64 [ %indvars.iv.next177, %83 ], [ 0, %74 ]
  %exitcond179 = icmp ne i64 %indvars.iv176, 3
  br i1 %exitcond179, label %.preheader13.preheader, label %84

.preheader13.preheader:                           ; preds = %75
  br label %.preheader13

.preheader13:                                     ; preds = %82, %.preheader13.preheader
  %indvars.iv172 = phi i64 [ %indvars.iv.next173, %82 ], [ 0, %.preheader13.preheader ]
  %exitcond175 = icmp ne i64 %indvars.iv172, 1
  br i1 %exitcond175, label %.preheader12.preheader, label %83

.preheader12.preheader:                           ; preds = %.preheader13
  br label %.preheader12

.preheader12:                                     ; preds = %76, %.preheader12.preheader
  %indvars.iv168 = phi i64 [ %indvars.iv.next169, %76 ], [ 0, %.preheader12.preheader ]
  %exitcond171 = icmp ne i64 %indvars.iv168, 1
  br i1 %exitcond171, label %76, label %82

76:                                               ; preds = %.preheader12
  %77 = shl i64 %indvars.iv168, 6
  %78 = shl i64 %indvars.iv172, 3
  %79 = add nuw nsw i64 %77, %78
  %80 = add nuw nsw i64 %indvars.iv176, %79
  %81 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %80
  store i32 1, ptr %81, align 4
  %indvars.iv.next169 = add nuw nsw i64 %indvars.iv168, 1
  br label %.preheader12, !llvm.loop !37

82:                                               ; preds = %.preheader12
  %indvars.iv.next173 = add nuw nsw i64 %indvars.iv172, 1
  br label %.preheader13, !llvm.loop !38

83:                                               ; preds = %.preheader13
  %indvars.iv.next177 = add nuw nsw i64 %indvars.iv176, 1
  br label %75, !llvm.loop !39

84:                                               ; preds = %75
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %85

85:                                               ; preds = %93, %84
  %indvars.iv188 = phi i64 [ %indvars.iv.next189, %93 ], [ 0, %84 ]
  %exitcond191 = icmp ne i64 %indvars.iv188, 1
  br i1 %exitcond191, label %.preheader11.preheader, label %94

.preheader11.preheader:                           ; preds = %85
  br label %.preheader11

.preheader11:                                     ; preds = %92, %.preheader11.preheader
  %indvars.iv184 = phi i64 [ %indvars.iv.next185, %92 ], [ 0, %.preheader11.preheader ]
  %exitcond187 = icmp ne i64 %indvars.iv184, 3
  br i1 %exitcond187, label %.preheader10.preheader, label %93

.preheader10.preheader:                           ; preds = %.preheader11
  br label %.preheader10

.preheader10:                                     ; preds = %86, %.preheader10.preheader
  %indvars.iv180 = phi i64 [ %indvars.iv.next181, %86 ], [ 0, %.preheader10.preheader ]
  %exitcond183 = icmp ne i64 %indvars.iv180, 1
  br i1 %exitcond183, label %86, label %92

86:                                               ; preds = %.preheader10
  %87 = shl i64 %indvars.iv180, 6
  %88 = shl i64 %indvars.iv184, 3
  %89 = add nuw nsw i64 %87, %88
  %90 = add nuw nsw i64 %indvars.iv188, %89
  %91 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %90
  store i32 1, ptr %91, align 4
  %indvars.iv.next181 = add nuw nsw i64 %indvars.iv180, 1
  br label %.preheader10, !llvm.loop !40

92:                                               ; preds = %.preheader10
  %indvars.iv.next185 = add nuw nsw i64 %indvars.iv184, 1
  br label %.preheader11, !llvm.loop !41

93:                                               ; preds = %.preheader11
  %indvars.iv.next189 = add nuw nsw i64 %indvars.iv188, 1
  br label %85, !llvm.loop !42

94:                                               ; preds = %85
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %95

95:                                               ; preds = %103, %94
  %indvars.iv200 = phi i64 [ %indvars.iv.next201, %103 ], [ 0, %94 ]
  %exitcond203 = icmp ne i64 %indvars.iv200, 1
  br i1 %exitcond203, label %.preheader9.preheader, label %104

.preheader9.preheader:                            ; preds = %95
  br label %.preheader9

.preheader9:                                      ; preds = %102, %.preheader9.preheader
  %indvars.iv196 = phi i64 [ %indvars.iv.next197, %102 ], [ 0, %.preheader9.preheader ]
  %exitcond199 = icmp ne i64 %indvars.iv196, 1
  br i1 %exitcond199, label %.preheader8.preheader, label %103

.preheader8.preheader:                            ; preds = %.preheader9
  br label %.preheader8

.preheader8:                                      ; preds = %96, %.preheader8.preheader
  %indvars.iv192 = phi i64 [ %indvars.iv.next193, %96 ], [ 0, %.preheader8.preheader ]
  %exitcond195 = icmp ne i64 %indvars.iv192, 3
  br i1 %exitcond195, label %96, label %102

96:                                               ; preds = %.preheader8
  %97 = shl i64 %indvars.iv192, 6
  %98 = shl i64 %indvars.iv196, 3
  %99 = add nuw nsw i64 %97, %98
  %100 = add nuw nsw i64 %indvars.iv200, %99
  %101 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %100
  store i32 1, ptr %101, align 4
  %indvars.iv.next193 = add nuw nsw i64 %indvars.iv192, 1
  br label %.preheader8, !llvm.loop !43

102:                                              ; preds = %.preheader8
  %indvars.iv.next197 = add nuw nsw i64 %indvars.iv196, 1
  br label %.preheader9, !llvm.loop !44

103:                                              ; preds = %.preheader9
  %indvars.iv.next201 = add nuw nsw i64 %indvars.iv200, 1
  br label %95, !llvm.loop !45

104:                                              ; preds = %95
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %105

105:                                              ; preds = %113, %104
  %indvars.iv212 = phi i64 [ %indvars.iv.next213, %113 ], [ 0, %104 ]
  %exitcond215 = icmp ne i64 %indvars.iv212, 2
  br i1 %exitcond215, label %.preheader7.preheader, label %114

.preheader7.preheader:                            ; preds = %105
  br label %.preheader7

.preheader7:                                      ; preds = %112, %.preheader7.preheader
  %indvars.iv208 = phi i64 [ %indvars.iv.next209, %112 ], [ 0, %.preheader7.preheader ]
  %exitcond211 = icmp ne i64 %indvars.iv208, 2
  br i1 %exitcond211, label %.preheader6.preheader, label %113

.preheader6.preheader:                            ; preds = %.preheader7
  br label %.preheader6

.preheader6:                                      ; preds = %106, %.preheader6.preheader
  %indvars.iv204 = phi i64 [ %indvars.iv.next205, %106 ], [ 0, %.preheader6.preheader ]
  %exitcond207 = icmp ne i64 %indvars.iv204, 1
  br i1 %exitcond207, label %106, label %112

106:                                              ; preds = %.preheader6
  %107 = shl i64 %indvars.iv204, 6
  %108 = shl i64 %indvars.iv208, 3
  %109 = add nuw nsw i64 %107, %108
  %110 = add nuw nsw i64 %indvars.iv212, %109
  %111 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %110
  store i32 1, ptr %111, align 4
  %indvars.iv.next205 = add nuw nsw i64 %indvars.iv204, 1
  br label %.preheader6, !llvm.loop !46

112:                                              ; preds = %.preheader6
  %indvars.iv.next209 = add nuw nsw i64 %indvars.iv208, 1
  br label %.preheader7, !llvm.loop !47

113:                                              ; preds = %.preheader7
  %indvars.iv.next213 = add nuw nsw i64 %indvars.iv212, 1
  br label %105, !llvm.loop !48

114:                                              ; preds = %105
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %115

115:                                              ; preds = %123, %114
  %indvars.iv224 = phi i64 [ %indvars.iv.next225, %123 ], [ 0, %114 ]
  %exitcond227 = icmp ne i64 %indvars.iv224, 2
  br i1 %exitcond227, label %.preheader5.preheader, label %124

.preheader5.preheader:                            ; preds = %115
  br label %.preheader5

.preheader5:                                      ; preds = %122, %.preheader5.preheader
  %indvars.iv220 = phi i64 [ %indvars.iv.next221, %122 ], [ 0, %.preheader5.preheader ]
  %exitcond223 = icmp ne i64 %indvars.iv220, 1
  br i1 %exitcond223, label %.preheader4.preheader, label %123

.preheader4.preheader:                            ; preds = %.preheader5
  br label %.preheader4

.preheader4:                                      ; preds = %116, %.preheader4.preheader
  %indvars.iv216 = phi i64 [ %indvars.iv.next217, %116 ], [ 0, %.preheader4.preheader ]
  %exitcond219 = icmp ne i64 %indvars.iv216, 2
  br i1 %exitcond219, label %116, label %122

116:                                              ; preds = %.preheader4
  %117 = shl i64 %indvars.iv216, 6
  %118 = shl i64 %indvars.iv220, 3
  %119 = add nuw nsw i64 %117, %118
  %120 = add nuw nsw i64 %indvars.iv224, %119
  %121 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %120
  store i32 1, ptr %121, align 4
  %indvars.iv.next217 = add nuw nsw i64 %indvars.iv216, 1
  br label %.preheader4, !llvm.loop !49

122:                                              ; preds = %.preheader4
  %indvars.iv.next221 = add nuw nsw i64 %indvars.iv220, 1
  br label %.preheader5, !llvm.loop !50

123:                                              ; preds = %.preheader5
  %indvars.iv.next225 = add nuw nsw i64 %indvars.iv224, 1
  br label %115, !llvm.loop !51

124:                                              ; preds = %115
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %125

125:                                              ; preds = %133, %124
  %indvars.iv236 = phi i64 [ %indvars.iv.next237, %133 ], [ 0, %124 ]
  %exitcond239 = icmp ne i64 %indvars.iv236, 1
  br i1 %exitcond239, label %.preheader3.preheader, label %134

.preheader3.preheader:                            ; preds = %125
  br label %.preheader3

.preheader3:                                      ; preds = %132, %.preheader3.preheader
  %indvars.iv232 = phi i64 [ %indvars.iv.next233, %132 ], [ 0, %.preheader3.preheader ]
  %exitcond235 = icmp ne i64 %indvars.iv232, 2
  br i1 %exitcond235, label %.preheader2.preheader, label %133

.preheader2.preheader:                            ; preds = %.preheader3
  br label %.preheader2

.preheader2:                                      ; preds = %126, %.preheader2.preheader
  %indvars.iv228 = phi i64 [ %indvars.iv.next229, %126 ], [ 0, %.preheader2.preheader ]
  %exitcond231 = icmp ne i64 %indvars.iv228, 2
  br i1 %exitcond231, label %126, label %132

126:                                              ; preds = %.preheader2
  %127 = shl i64 %indvars.iv228, 6
  %128 = shl i64 %indvars.iv232, 3
  %129 = add nuw nsw i64 %127, %128
  %130 = add nuw nsw i64 %indvars.iv236, %129
  %131 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %130
  store i32 1, ptr %131, align 4
  %indvars.iv.next229 = add nuw nsw i64 %indvars.iv228, 1
  br label %.preheader2, !llvm.loop !52

132:                                              ; preds = %.preheader2
  %indvars.iv.next233 = add nuw nsw i64 %indvars.iv232, 1
  br label %.preheader3, !llvm.loop !53

133:                                              ; preds = %.preheader3
  %indvars.iv.next237 = add nuw nsw i64 %indvars.iv236, 1
  br label %125, !llvm.loop !54

134:                                              ; preds = %125
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %135

135:                                              ; preds = %143, %134
  %indvars.iv248 = phi i64 [ %indvars.iv.next249, %143 ], [ 0, %134 ]
  %exitcond251 = icmp ne i64 %indvars.iv248, 2
  br i1 %exitcond251, label %.preheader1.preheader, label %144

.preheader1.preheader:                            ; preds = %135
  br label %.preheader1

.preheader1:                                      ; preds = %142, %.preheader1.preheader
  %indvars.iv244 = phi i64 [ %indvars.iv.next245, %142 ], [ 0, %.preheader1.preheader ]
  %exitcond247 = icmp ne i64 %indvars.iv244, 2
  br i1 %exitcond247, label %.preheader.preheader, label %143

.preheader.preheader:                             ; preds = %.preheader1
  br label %.preheader

.preheader:                                       ; preds = %136, %.preheader.preheader
  %indvars.iv240 = phi i64 [ %indvars.iv.next241, %136 ], [ 0, %.preheader.preheader ]
  %exitcond243 = icmp ne i64 %indvars.iv240, 2
  br i1 %exitcond243, label %136, label %142

136:                                              ; preds = %.preheader
  %137 = shl i64 %indvars.iv240, 6
  %138 = shl i64 %indvars.iv244, 3
  %139 = add nuw nsw i64 %137, %138
  %140 = add nuw nsw i64 %indvars.iv248, %139
  %141 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %140
  store i32 1, ptr %141, align 4
  %indvars.iv.next241 = add nuw nsw i64 %indvars.iv240, 1
  br label %.preheader, !llvm.loop !55

142:                                              ; preds = %.preheader
  %indvars.iv.next245 = add nuw nsw i64 %indvars.iv244, 1
  br label %.preheader1, !llvm.loop !56

143:                                              ; preds = %.preheader1
  %indvars.iv.next249 = add nuw nsw i64 %indvars.iv248, 1
  br label %135, !llvm.loop !57

144:                                              ; preds = %135
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 0, ptr @kount, align 4
  %145 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %145, 0
  br i1 %.not, label %148, label %146

146:                                              ; preds = %144
  %147 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %147, ptr @n, align 4
  br label %149

148:                                              ; preds = %144
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %149

149:                                              ; preds = %148, %146
  %150 = load i32, ptr @n, align 4
  %151 = call i32 @Trial(i32 noundef %150)
  %.not16 = icmp eq i32 %151, 0
  br i1 %.not16, label %152, label %153

152:                                              ; preds = %149
  %puts17 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %156

153:                                              ; preds = %149
  %154 = load i32, ptr @kount, align 4
  %.not18 = icmp eq i32 %154, 2005
  br i1 %.not18, label %156, label %155

155:                                              ; preds = %153
  %puts19 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %156

156:                                              ; preds = %155, %153, %152
  %157 = load i32, ptr @n, align 4
  %158 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %157) #4
  %159 = load i32, ptr @kount, align 4
  %160 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %159) #4
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
