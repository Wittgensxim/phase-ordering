; ModuleID = 'results\test_rule2\Stanford_Puzzle\round_004\output.ll'
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
  br i1 %exitcond.not, label %.loopexit, label %27

27:                                               ; preds = %26
  %28 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %indvars.iv
  %29 = load i32, ptr %28, align 4
  %.not3 = icmp eq i32 %29, 0
  br i1 %.not3, label %30, label %32

30:                                               ; preds = %27
  %indvars.iv.lcssa1 = phi i64 [ %indvars.iv, %27 ]
  %31 = trunc nsw i64 %indvars.iv.lcssa1 to i32
  br label %33

32:                                               ; preds = %27
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %26, !llvm.loop !10

.loopexit:                                        ; preds = %26
  br label %33

33:                                               ; preds = %.loopexit, %30
  %storemerge2 = phi i32 [ %31, %30 ], [ 0, %.loopexit ]
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
  br i1 %exitcond, label %2, label %.preheader31

.preheader31:                                     ; preds = %1
  br label %4

2:                                                ; preds = %1
  %3 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %indvars.iv
  store i32 1, ptr %3, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %1, !llvm.loop !13

4:                                                ; preds = %14, %.preheader31
  %indvars.iv84 = phi i64 [ %indvars.iv.next85, %14 ], [ 1, %.preheader31 ]
  %exitcond87 = icmp ne i64 %indvars.iv84, 6
  br i1 %exitcond87, label %.preheader30, label %.preheader28

.preheader30:                                     ; preds = %4
  br label %5

.preheader28:                                     ; preds = %4
  br label %15

5:                                                ; preds = %13, %.preheader30
  %indvars.iv80 = phi i64 [ %indvars.iv.next81, %13 ], [ 1, %.preheader30 ]
  %exitcond83 = icmp ne i64 %indvars.iv80, 6
  br i1 %exitcond83, label %.preheader29, label %14

.preheader29:                                     ; preds = %5
  br label %6

6:                                                ; preds = %7, %.preheader29
  %indvars.iv76 = phi i64 [ %indvars.iv.next77, %7 ], [ 1, %.preheader29 ]
  %exitcond79 = icmp ne i64 %indvars.iv76, 6
  br i1 %exitcond79, label %7, label %13

7:                                                ; preds = %6
  %8 = shl i64 %indvars.iv76, 6
  %9 = shl i64 %indvars.iv80, 3
  %10 = add nuw nsw i64 %8, %9
  %11 = add nuw nsw i64 %indvars.iv84, %10
  %12 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %11
  store i32 0, ptr %12, align 4
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv76, 1
  br label %6, !llvm.loop !14

13:                                               ; preds = %6
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1
  br label %5, !llvm.loop !15

14:                                               ; preds = %5
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv84, 1
  br label %4, !llvm.loop !16

15:                                               ; preds = %20, %.preheader28
  %indvars.iv92 = phi i64 [ %indvars.iv.next93, %20 ], [ 0, %.preheader28 ]
  %exitcond95 = icmp ne i64 %indvars.iv92, 13
  br i1 %exitcond95, label %.preheader27, label %.preheader26

.preheader27:                                     ; preds = %15
  br label %16

.preheader26:                                     ; preds = %15
  br label %21

16:                                               ; preds = %17, %.preheader27
  %indvars.iv88 = phi i64 [ %indvars.iv.next89, %17 ], [ 0, %.preheader27 ]
  %exitcond91 = icmp ne i64 %indvars.iv88, 512
  br i1 %exitcond91, label %17, label %20

17:                                               ; preds = %16
  %18 = getelementptr inbounds [2048 x i8], ptr @p, i64 %indvars.iv92
  %19 = getelementptr inbounds [4 x i8], ptr %18, i64 %indvars.iv88
  store i32 0, ptr %19, align 4
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 1
  br label %16, !llvm.loop !17

20:                                               ; preds = %16
  %indvars.iv.next93 = add nuw nsw i64 %indvars.iv92, 1
  br label %15, !llvm.loop !18

21:                                               ; preds = %31, %.preheader26
  %indvars.iv104 = phi i64 [ %indvars.iv.next105, %31 ], [ 0, %.preheader26 ]
  %exitcond107 = icmp ne i64 %indvars.iv104, 4
  br i1 %exitcond107, label %.preheader25, label %32

.preheader25:                                     ; preds = %21
  br label %22

22:                                               ; preds = %30, %.preheader25
  %indvars.iv100 = phi i64 [ %indvars.iv.next101, %30 ], [ 0, %.preheader25 ]
  %exitcond103 = icmp ne i64 %indvars.iv100, 2
  br i1 %exitcond103, label %.preheader24, label %31

.preheader24:                                     ; preds = %22
  br label %23

23:                                               ; preds = %24, %.preheader24
  %indvars.iv96 = phi i64 [ %indvars.iv.next97, %24 ], [ 0, %.preheader24 ]
  %exitcond99 = icmp ne i64 %indvars.iv96, 1
  br i1 %exitcond99, label %24, label %30

24:                                               ; preds = %23
  %25 = shl i64 %indvars.iv96, 6
  %26 = shl i64 %indvars.iv100, 3
  %27 = add nuw nsw i64 %25, %26
  %28 = add nuw nsw i64 %indvars.iv104, %27
  %29 = getelementptr inbounds [4 x i8], ptr @p, i64 %28
  store i32 1, ptr %29, align 4
  %indvars.iv.next97 = add nuw nsw i64 %indvars.iv96, 1
  br label %23, !llvm.loop !19

30:                                               ; preds = %23
  %indvars.iv.next101 = add nuw nsw i64 %indvars.iv100, 1
  br label %22, !llvm.loop !20

31:                                               ; preds = %22
  %indvars.iv.next105 = add nuw nsw i64 %indvars.iv104, 1
  br label %21, !llvm.loop !21

32:                                               ; preds = %21
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %33

33:                                               ; preds = %43, %32
  %indvars.iv116 = phi i64 [ %indvars.iv.next117, %43 ], [ 0, %32 ]
  %exitcond119 = icmp ne i64 %indvars.iv116, 2
  br i1 %exitcond119, label %.preheader23, label %44

.preheader23:                                     ; preds = %33
  br label %34

34:                                               ; preds = %42, %.preheader23
  %indvars.iv112 = phi i64 [ %indvars.iv.next113, %42 ], [ 0, %.preheader23 ]
  %exitcond115 = icmp ne i64 %indvars.iv112, 1
  br i1 %exitcond115, label %.preheader22, label %43

.preheader22:                                     ; preds = %34
  br label %35

35:                                               ; preds = %36, %.preheader22
  %indvars.iv108 = phi i64 [ %indvars.iv.next109, %36 ], [ 0, %.preheader22 ]
  %exitcond111 = icmp ne i64 %indvars.iv108, 4
  br i1 %exitcond111, label %36, label %42

36:                                               ; preds = %35
  %37 = shl i64 %indvars.iv108, 6
  %38 = shl i64 %indvars.iv112, 3
  %39 = add nuw nsw i64 %37, %38
  %40 = add nuw nsw i64 %indvars.iv116, %39
  %41 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %40
  store i32 1, ptr %41, align 4
  %indvars.iv.next109 = add nuw nsw i64 %indvars.iv108, 1
  br label %35, !llvm.loop !22

42:                                               ; preds = %35
  %indvars.iv.next113 = add nuw nsw i64 %indvars.iv112, 1
  br label %34, !llvm.loop !23

43:                                               ; preds = %34
  %indvars.iv.next117 = add nuw nsw i64 %indvars.iv116, 1
  br label %33, !llvm.loop !24

44:                                               ; preds = %33
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %45

45:                                               ; preds = %55, %44
  %indvars.iv128 = phi i64 [ %indvars.iv.next129, %55 ], [ 0, %44 ]
  %exitcond131 = icmp ne i64 %indvars.iv128, 1
  br i1 %exitcond131, label %.preheader21, label %56

.preheader21:                                     ; preds = %45
  br label %46

46:                                               ; preds = %54, %.preheader21
  %indvars.iv124 = phi i64 [ %indvars.iv.next125, %54 ], [ 0, %.preheader21 ]
  %exitcond127 = icmp ne i64 %indvars.iv124, 4
  br i1 %exitcond127, label %.preheader20, label %55

.preheader20:                                     ; preds = %46
  br label %47

47:                                               ; preds = %48, %.preheader20
  %indvars.iv120 = phi i64 [ %indvars.iv.next121, %48 ], [ 0, %.preheader20 ]
  %exitcond123 = icmp ne i64 %indvars.iv120, 2
  br i1 %exitcond123, label %48, label %54

48:                                               ; preds = %47
  %49 = shl i64 %indvars.iv120, 6
  %50 = shl i64 %indvars.iv124, 3
  %51 = add nuw nsw i64 %49, %50
  %52 = add nuw nsw i64 %indvars.iv128, %51
  %53 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %52
  store i32 1, ptr %53, align 4
  %indvars.iv.next121 = add nuw nsw i64 %indvars.iv120, 1
  br label %47, !llvm.loop !25

54:                                               ; preds = %47
  %indvars.iv.next125 = add nuw nsw i64 %indvars.iv124, 1
  br label %46, !llvm.loop !26

55:                                               ; preds = %46
  %indvars.iv.next129 = add nuw nsw i64 %indvars.iv128, 1
  br label %45, !llvm.loop !27

56:                                               ; preds = %45
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %57

57:                                               ; preds = %67, %56
  %indvars.iv140 = phi i64 [ %indvars.iv.next141, %67 ], [ 0, %56 ]
  %exitcond143 = icmp ne i64 %indvars.iv140, 2
  br i1 %exitcond143, label %.preheader19, label %68

.preheader19:                                     ; preds = %57
  br label %58

58:                                               ; preds = %66, %.preheader19
  %indvars.iv136 = phi i64 [ %indvars.iv.next137, %66 ], [ 0, %.preheader19 ]
  %exitcond139 = icmp ne i64 %indvars.iv136, 4
  br i1 %exitcond139, label %.preheader18, label %67

.preheader18:                                     ; preds = %58
  br label %59

59:                                               ; preds = %60, %.preheader18
  %indvars.iv132 = phi i64 [ %indvars.iv.next133, %60 ], [ 0, %.preheader18 ]
  %exitcond135 = icmp ne i64 %indvars.iv132, 1
  br i1 %exitcond135, label %60, label %66

60:                                               ; preds = %59
  %61 = shl i64 %indvars.iv132, 6
  %62 = shl i64 %indvars.iv136, 3
  %63 = add nuw nsw i64 %61, %62
  %64 = add nuw nsw i64 %indvars.iv140, %63
  %65 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %64
  store i32 1, ptr %65, align 4
  %indvars.iv.next133 = add nuw nsw i64 %indvars.iv132, 1
  br label %59, !llvm.loop !28

66:                                               ; preds = %59
  %indvars.iv.next137 = add nuw nsw i64 %indvars.iv136, 1
  br label %58, !llvm.loop !29

67:                                               ; preds = %58
  %indvars.iv.next141 = add nuw nsw i64 %indvars.iv140, 1
  br label %57, !llvm.loop !30

68:                                               ; preds = %57
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %69

69:                                               ; preds = %79, %68
  %indvars.iv152 = phi i64 [ %indvars.iv.next153, %79 ], [ 0, %68 ]
  %exitcond155 = icmp ne i64 %indvars.iv152, 4
  br i1 %exitcond155, label %.preheader17, label %80

.preheader17:                                     ; preds = %69
  br label %70

70:                                               ; preds = %78, %.preheader17
  %indvars.iv148 = phi i64 [ %indvars.iv.next149, %78 ], [ 0, %.preheader17 ]
  %exitcond151 = icmp ne i64 %indvars.iv148, 1
  br i1 %exitcond151, label %.preheader16, label %79

.preheader16:                                     ; preds = %70
  br label %71

71:                                               ; preds = %72, %.preheader16
  %indvars.iv144 = phi i64 [ %indvars.iv.next145, %72 ], [ 0, %.preheader16 ]
  %exitcond147 = icmp ne i64 %indvars.iv144, 2
  br i1 %exitcond147, label %72, label %78

72:                                               ; preds = %71
  %73 = shl i64 %indvars.iv144, 6
  %74 = shl i64 %indvars.iv148, 3
  %75 = add nuw nsw i64 %73, %74
  %76 = add nuw nsw i64 %indvars.iv152, %75
  %77 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %76
  store i32 1, ptr %77, align 4
  %indvars.iv.next145 = add nuw nsw i64 %indvars.iv144, 1
  br label %71, !llvm.loop !31

78:                                               ; preds = %71
  %indvars.iv.next149 = add nuw nsw i64 %indvars.iv148, 1
  br label %70, !llvm.loop !32

79:                                               ; preds = %70
  %indvars.iv.next153 = add nuw nsw i64 %indvars.iv152, 1
  br label %69, !llvm.loop !33

80:                                               ; preds = %69
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %81

81:                                               ; preds = %91, %80
  %indvars.iv164 = phi i64 [ %indvars.iv.next165, %91 ], [ 0, %80 ]
  %exitcond167 = icmp ne i64 %indvars.iv164, 1
  br i1 %exitcond167, label %.preheader15, label %92

.preheader15:                                     ; preds = %81
  br label %82

82:                                               ; preds = %90, %.preheader15
  %indvars.iv160 = phi i64 [ %indvars.iv.next161, %90 ], [ 0, %.preheader15 ]
  %exitcond163 = icmp ne i64 %indvars.iv160, 2
  br i1 %exitcond163, label %.preheader14, label %91

.preheader14:                                     ; preds = %82
  br label %83

83:                                               ; preds = %84, %.preheader14
  %indvars.iv156 = phi i64 [ %indvars.iv.next157, %84 ], [ 0, %.preheader14 ]
  %exitcond159 = icmp ne i64 %indvars.iv156, 4
  br i1 %exitcond159, label %84, label %90

84:                                               ; preds = %83
  %85 = shl i64 %indvars.iv156, 6
  %86 = shl i64 %indvars.iv160, 3
  %87 = add nuw nsw i64 %85, %86
  %88 = add nuw nsw i64 %indvars.iv164, %87
  %89 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %88
  store i32 1, ptr %89, align 4
  %indvars.iv.next157 = add nuw nsw i64 %indvars.iv156, 1
  br label %83, !llvm.loop !34

90:                                               ; preds = %83
  %indvars.iv.next161 = add nuw nsw i64 %indvars.iv160, 1
  br label %82, !llvm.loop !35

91:                                               ; preds = %82
  %indvars.iv.next165 = add nuw nsw i64 %indvars.iv164, 1
  br label %81, !llvm.loop !36

92:                                               ; preds = %81
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %93

93:                                               ; preds = %103, %92
  %indvars.iv176 = phi i64 [ %indvars.iv.next177, %103 ], [ 0, %92 ]
  %exitcond179 = icmp ne i64 %indvars.iv176, 3
  br i1 %exitcond179, label %.preheader13, label %104

.preheader13:                                     ; preds = %93
  br label %94

94:                                               ; preds = %102, %.preheader13
  %indvars.iv172 = phi i64 [ %indvars.iv.next173, %102 ], [ 0, %.preheader13 ]
  %exitcond175 = icmp ne i64 %indvars.iv172, 1
  br i1 %exitcond175, label %.preheader12, label %103

.preheader12:                                     ; preds = %94
  br label %95

95:                                               ; preds = %96, %.preheader12
  %indvars.iv168 = phi i64 [ %indvars.iv.next169, %96 ], [ 0, %.preheader12 ]
  %exitcond171 = icmp ne i64 %indvars.iv168, 1
  br i1 %exitcond171, label %96, label %102

96:                                               ; preds = %95
  %97 = shl i64 %indvars.iv168, 6
  %98 = shl i64 %indvars.iv172, 3
  %99 = add nuw nsw i64 %97, %98
  %100 = add nuw nsw i64 %indvars.iv176, %99
  %101 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %100
  store i32 1, ptr %101, align 4
  %indvars.iv.next169 = add nuw nsw i64 %indvars.iv168, 1
  br label %95, !llvm.loop !37

102:                                              ; preds = %95
  %indvars.iv.next173 = add nuw nsw i64 %indvars.iv172, 1
  br label %94, !llvm.loop !38

103:                                              ; preds = %94
  %indvars.iv.next177 = add nuw nsw i64 %indvars.iv176, 1
  br label %93, !llvm.loop !39

104:                                              ; preds = %93
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %105

105:                                              ; preds = %115, %104
  %indvars.iv188 = phi i64 [ %indvars.iv.next189, %115 ], [ 0, %104 ]
  %exitcond191 = icmp ne i64 %indvars.iv188, 1
  br i1 %exitcond191, label %.preheader11, label %116

.preheader11:                                     ; preds = %105
  br label %106

106:                                              ; preds = %114, %.preheader11
  %indvars.iv184 = phi i64 [ %indvars.iv.next185, %114 ], [ 0, %.preheader11 ]
  %exitcond187 = icmp ne i64 %indvars.iv184, 3
  br i1 %exitcond187, label %.preheader10, label %115

.preheader10:                                     ; preds = %106
  br label %107

107:                                              ; preds = %108, %.preheader10
  %indvars.iv180 = phi i64 [ %indvars.iv.next181, %108 ], [ 0, %.preheader10 ]
  %exitcond183 = icmp ne i64 %indvars.iv180, 1
  br i1 %exitcond183, label %108, label %114

108:                                              ; preds = %107
  %109 = shl i64 %indvars.iv180, 6
  %110 = shl i64 %indvars.iv184, 3
  %111 = add nuw nsw i64 %109, %110
  %112 = add nuw nsw i64 %indvars.iv188, %111
  %113 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %112
  store i32 1, ptr %113, align 4
  %indvars.iv.next181 = add nuw nsw i64 %indvars.iv180, 1
  br label %107, !llvm.loop !40

114:                                              ; preds = %107
  %indvars.iv.next185 = add nuw nsw i64 %indvars.iv184, 1
  br label %106, !llvm.loop !41

115:                                              ; preds = %106
  %indvars.iv.next189 = add nuw nsw i64 %indvars.iv188, 1
  br label %105, !llvm.loop !42

116:                                              ; preds = %105
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %117

117:                                              ; preds = %127, %116
  %indvars.iv200 = phi i64 [ %indvars.iv.next201, %127 ], [ 0, %116 ]
  %exitcond203 = icmp ne i64 %indvars.iv200, 1
  br i1 %exitcond203, label %.preheader9, label %128

.preheader9:                                      ; preds = %117
  br label %118

118:                                              ; preds = %126, %.preheader9
  %indvars.iv196 = phi i64 [ %indvars.iv.next197, %126 ], [ 0, %.preheader9 ]
  %exitcond199 = icmp ne i64 %indvars.iv196, 1
  br i1 %exitcond199, label %.preheader8, label %127

.preheader8:                                      ; preds = %118
  br label %119

119:                                              ; preds = %120, %.preheader8
  %indvars.iv192 = phi i64 [ %indvars.iv.next193, %120 ], [ 0, %.preheader8 ]
  %exitcond195 = icmp ne i64 %indvars.iv192, 3
  br i1 %exitcond195, label %120, label %126

120:                                              ; preds = %119
  %121 = shl i64 %indvars.iv192, 6
  %122 = shl i64 %indvars.iv196, 3
  %123 = add nuw nsw i64 %121, %122
  %124 = add nuw nsw i64 %indvars.iv200, %123
  %125 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %124
  store i32 1, ptr %125, align 4
  %indvars.iv.next193 = add nuw nsw i64 %indvars.iv192, 1
  br label %119, !llvm.loop !43

126:                                              ; preds = %119
  %indvars.iv.next197 = add nuw nsw i64 %indvars.iv196, 1
  br label %118, !llvm.loop !44

127:                                              ; preds = %118
  %indvars.iv.next201 = add nuw nsw i64 %indvars.iv200, 1
  br label %117, !llvm.loop !45

128:                                              ; preds = %117
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %129

129:                                              ; preds = %139, %128
  %indvars.iv212 = phi i64 [ %indvars.iv.next213, %139 ], [ 0, %128 ]
  %exitcond215 = icmp ne i64 %indvars.iv212, 2
  br i1 %exitcond215, label %.preheader7, label %140

.preheader7:                                      ; preds = %129
  br label %130

130:                                              ; preds = %138, %.preheader7
  %indvars.iv208 = phi i64 [ %indvars.iv.next209, %138 ], [ 0, %.preheader7 ]
  %exitcond211 = icmp ne i64 %indvars.iv208, 2
  br i1 %exitcond211, label %.preheader6, label %139

.preheader6:                                      ; preds = %130
  br label %131

131:                                              ; preds = %132, %.preheader6
  %indvars.iv204 = phi i64 [ %indvars.iv.next205, %132 ], [ 0, %.preheader6 ]
  %exitcond207 = icmp ne i64 %indvars.iv204, 1
  br i1 %exitcond207, label %132, label %138

132:                                              ; preds = %131
  %133 = shl i64 %indvars.iv204, 6
  %134 = shl i64 %indvars.iv208, 3
  %135 = add nuw nsw i64 %133, %134
  %136 = add nuw nsw i64 %indvars.iv212, %135
  %137 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %136
  store i32 1, ptr %137, align 4
  %indvars.iv.next205 = add nuw nsw i64 %indvars.iv204, 1
  br label %131, !llvm.loop !46

138:                                              ; preds = %131
  %indvars.iv.next209 = add nuw nsw i64 %indvars.iv208, 1
  br label %130, !llvm.loop !47

139:                                              ; preds = %130
  %indvars.iv.next213 = add nuw nsw i64 %indvars.iv212, 1
  br label %129, !llvm.loop !48

140:                                              ; preds = %129
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %141

141:                                              ; preds = %151, %140
  %indvars.iv224 = phi i64 [ %indvars.iv.next225, %151 ], [ 0, %140 ]
  %exitcond227 = icmp ne i64 %indvars.iv224, 2
  br i1 %exitcond227, label %.preheader5, label %152

.preheader5:                                      ; preds = %141
  br label %142

142:                                              ; preds = %150, %.preheader5
  %indvars.iv220 = phi i64 [ %indvars.iv.next221, %150 ], [ 0, %.preheader5 ]
  %exitcond223 = icmp ne i64 %indvars.iv220, 1
  br i1 %exitcond223, label %.preheader4, label %151

.preheader4:                                      ; preds = %142
  br label %143

143:                                              ; preds = %144, %.preheader4
  %indvars.iv216 = phi i64 [ %indvars.iv.next217, %144 ], [ 0, %.preheader4 ]
  %exitcond219 = icmp ne i64 %indvars.iv216, 2
  br i1 %exitcond219, label %144, label %150

144:                                              ; preds = %143
  %145 = shl i64 %indvars.iv216, 6
  %146 = shl i64 %indvars.iv220, 3
  %147 = add nuw nsw i64 %145, %146
  %148 = add nuw nsw i64 %indvars.iv224, %147
  %149 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %148
  store i32 1, ptr %149, align 4
  %indvars.iv.next217 = add nuw nsw i64 %indvars.iv216, 1
  br label %143, !llvm.loop !49

150:                                              ; preds = %143
  %indvars.iv.next221 = add nuw nsw i64 %indvars.iv220, 1
  br label %142, !llvm.loop !50

151:                                              ; preds = %142
  %indvars.iv.next225 = add nuw nsw i64 %indvars.iv224, 1
  br label %141, !llvm.loop !51

152:                                              ; preds = %141
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %153

153:                                              ; preds = %163, %152
  %indvars.iv236 = phi i64 [ %indvars.iv.next237, %163 ], [ 0, %152 ]
  %exitcond239 = icmp ne i64 %indvars.iv236, 1
  br i1 %exitcond239, label %.preheader3, label %164

.preheader3:                                      ; preds = %153
  br label %154

154:                                              ; preds = %162, %.preheader3
  %indvars.iv232 = phi i64 [ %indvars.iv.next233, %162 ], [ 0, %.preheader3 ]
  %exitcond235 = icmp ne i64 %indvars.iv232, 2
  br i1 %exitcond235, label %.preheader2, label %163

.preheader2:                                      ; preds = %154
  br label %155

155:                                              ; preds = %156, %.preheader2
  %indvars.iv228 = phi i64 [ %indvars.iv.next229, %156 ], [ 0, %.preheader2 ]
  %exitcond231 = icmp ne i64 %indvars.iv228, 2
  br i1 %exitcond231, label %156, label %162

156:                                              ; preds = %155
  %157 = shl i64 %indvars.iv228, 6
  %158 = shl i64 %indvars.iv232, 3
  %159 = add nuw nsw i64 %157, %158
  %160 = add nuw nsw i64 %indvars.iv236, %159
  %161 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %160
  store i32 1, ptr %161, align 4
  %indvars.iv.next229 = add nuw nsw i64 %indvars.iv228, 1
  br label %155, !llvm.loop !52

162:                                              ; preds = %155
  %indvars.iv.next233 = add nuw nsw i64 %indvars.iv232, 1
  br label %154, !llvm.loop !53

163:                                              ; preds = %154
  %indvars.iv.next237 = add nuw nsw i64 %indvars.iv236, 1
  br label %153, !llvm.loop !54

164:                                              ; preds = %153
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %165

165:                                              ; preds = %175, %164
  %indvars.iv248 = phi i64 [ %indvars.iv.next249, %175 ], [ 0, %164 ]
  %exitcond251 = icmp ne i64 %indvars.iv248, 2
  br i1 %exitcond251, label %.preheader1, label %176

.preheader1:                                      ; preds = %165
  br label %166

166:                                              ; preds = %174, %.preheader1
  %indvars.iv244 = phi i64 [ %indvars.iv.next245, %174 ], [ 0, %.preheader1 ]
  %exitcond247 = icmp ne i64 %indvars.iv244, 2
  br i1 %exitcond247, label %.preheader, label %175

.preheader:                                       ; preds = %166
  br label %167

167:                                              ; preds = %168, %.preheader
  %indvars.iv240 = phi i64 [ %indvars.iv.next241, %168 ], [ 0, %.preheader ]
  %exitcond243 = icmp ne i64 %indvars.iv240, 2
  br i1 %exitcond243, label %168, label %174

168:                                              ; preds = %167
  %169 = shl i64 %indvars.iv240, 6
  %170 = shl i64 %indvars.iv244, 3
  %171 = add nuw nsw i64 %169, %170
  %172 = add nuw nsw i64 %indvars.iv248, %171
  %173 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %172
  store i32 1, ptr %173, align 4
  %indvars.iv.next241 = add nuw nsw i64 %indvars.iv240, 1
  br label %167, !llvm.loop !55

174:                                              ; preds = %167
  %indvars.iv.next245 = add nuw nsw i64 %indvars.iv244, 1
  br label %166, !llvm.loop !56

175:                                              ; preds = %166
  %indvars.iv.next249 = add nuw nsw i64 %indvars.iv248, 1
  br label %165, !llvm.loop !57

176:                                              ; preds = %165
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 0, ptr @kount, align 4
  %177 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %177, 0
  br i1 %.not, label %180, label %178

178:                                              ; preds = %176
  %179 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %179, ptr @n, align 4
  br label %181

180:                                              ; preds = %176
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %181

181:                                              ; preds = %180, %178
  %182 = load i32, ptr @n, align 4
  %183 = call i32 @Trial(i32 noundef %182)
  %.not16 = icmp eq i32 %183, 0
  br i1 %.not16, label %184, label %185

184:                                              ; preds = %181
  %puts17 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %188

185:                                              ; preds = %181
  %186 = load i32, ptr @kount, align 4
  %.not18 = icmp eq i32 %186, 2005
  br i1 %.not18, label %188, label %187

187:                                              ; preds = %185
  %puts19 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %188

188:                                              ; preds = %187, %185, %184
  %189 = load i32, ptr @n, align 4
  %190 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %189) #4
  %191 = load i32, ptr @kount, align 4
  %192 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %191) #4
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
