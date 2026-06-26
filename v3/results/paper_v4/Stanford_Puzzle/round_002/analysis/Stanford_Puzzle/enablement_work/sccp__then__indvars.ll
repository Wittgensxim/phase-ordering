; ModuleID = 'results\paper_v4\Stanford_Puzzle\round_001\output.ll'
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
define dso_local range(i32 0, 65536) i32 @Rand() #0 {
  %1 = load i32, ptr @seed, align 4
  %2 = mul nsw i32 %1, 1309
  %3 = add nsw i32 %2, 13849
  %4 = and i32 %3, 65535
  store i32 %4, ptr @seed, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local range(i32 0, 2) i32 @Fit(i32 noundef %0, i32 noundef %1) #0 {
  %.phi.trans.insert = sext i32 %0 to i64
  %.phi.trans.insert1 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert1, align 4
  %.not1 = icmp sgt i32 0, %.pre
  br i1 %.not1, label %16, label %.lr.ph

.lr.ph:                                           ; preds = %2
  %3 = sext i32 %1 to i64
  %4 = sext i32 %.pre to i64
  br label %5

5:                                                ; preds = %15, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %15 ], [ 0, %.lr.ph ]
  %6 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  %7 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv
  %8 = load i32, ptr %7, align 4
  %.not2 = icmp eq i32 %8, 0
  br i1 %.not2, label %15, label %9

9:                                                ; preds = %5
  %10 = add nsw i64 %3, %indvars.iv
  %11 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %10
  %12 = load i32, ptr %11, align 4
  %.not3 = icmp eq i32 %12, 0
  br i1 %.not3, label %14, label %13

13:                                               ; preds = %9
  br label %17

14:                                               ; preds = %9
  br label %15

15:                                               ; preds = %14, %5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.not = icmp sgt i64 %indvars.iv.next, %4
  br i1 %.not, label %._crit_edge, label %5, !llvm.loop !7

._crit_edge:                                      ; preds = %15
  br label %16

16:                                               ; preds = %._crit_edge, %2
  br label %17

17:                                               ; preds = %16, %13
  %18 = phi i32 [ 1, %16 ], [ 0, %13 ]
  ret i32 %18
}

; Function Attrs: noinline nounwind uwtable
define dso_local range(i32 -2147483648, 512) i32 @Place(i32 noundef %0, i32 noundef %1) #0 {
  %.phi.trans.insert = sext i32 %0 to i64
  %.phi.trans.insert1 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert1, align 4
  %.not4 = icmp sgt i32 0, %.pre
  br i1 %.not4, label %13, label %.lr.ph

.lr.ph:                                           ; preds = %2
  %3 = sext i32 %1 to i64
  %4 = add i32 %.pre, 1
  %wide.trip.count = zext i32 %4 to i64
  br label %5

5:                                                ; preds = %12, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %12 ], [ 0, %.lr.ph ]
  %6 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  %7 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv
  %8 = load i32, ptr %7, align 4
  %.not3 = icmp eq i32 %8, 0
  br i1 %.not3, label %12, label %9

9:                                                ; preds = %5
  %10 = add nsw i64 %3, %indvars.iv
  %11 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %10
  store i32 1, ptr %11, align 4
  br label %12

12:                                               ; preds = %9, %5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %._crit_edge, label %5, !llvm.loop !9

._crit_edge:                                      ; preds = %12
  br label %13

13:                                               ; preds = %._crit_edge, %2
  %14 = getelementptr inbounds [4 x i8], ptr @class, i64 %.phi.trans.insert
  %15 = load i32, ptr %14, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %16
  %18 = load i32, ptr %17, align 4
  %19 = add nsw i32 %18, -1
  store i32 %19, ptr %17, align 4
  %20 = icmp slt i32 %1, 512
  br i1 %20, label %.lr.ph6, label %28

.lr.ph6:                                          ; preds = %13
  %21 = sext i32 %1 to i64
  br label %22

22:                                               ; preds = %27, %.lr.ph6
  %indvars.iv5 = phi i64 [ %indvars.iv.next6, %27 ], [ %21, %.lr.ph6 ]
  %23 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %indvars.iv5
  %24 = load i32, ptr %23, align 4
  %.not2 = icmp eq i32 %24, 0
  br i1 %.not2, label %25, label %27

25:                                               ; preds = %22
  %.lcssa.wide = phi i64 [ %indvars.iv5, %22 ]
  %26 = trunc nsw i64 %.lcssa.wide to i32
  br label %29

27:                                               ; preds = %22
  %indvars.iv.next6 = add nsw i64 %indvars.iv5, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next6 to i32
  %exitcond8 = icmp ne i32 %lftr.wideiv, 512
  br i1 %exitcond8, label %22, label %._crit_edge7, !llvm.loop !10

._crit_edge7:                                     ; preds = %27
  br label %28

28:                                               ; preds = %._crit_edge7, %13
  br label %29

29:                                               ; preds = %28, %25
  %30 = phi i32 [ 0, %28 ], [ %26, %25 ]
  ret i32 %30
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Remove(i32 noundef %0, i32 noundef %1) #0 {
  %.phi.trans.insert = sext i32 %0 to i64
  %.phi.trans.insert1 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert1, align 4
  %.not1 = icmp sgt i32 0, %.pre
  br i1 %.not1, label %13, label %.lr.ph

.lr.ph:                                           ; preds = %2
  %3 = sext i32 %1 to i64
  %4 = add i32 %.pre, 1
  %wide.trip.count = zext i32 %4 to i64
  br label %5

5:                                                ; preds = %12, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %12 ], [ 0, %.lr.ph ]
  %6 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  %7 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv
  %8 = load i32, ptr %7, align 4
  %.not2 = icmp eq i32 %8, 0
  br i1 %.not2, label %12, label %9

9:                                                ; preds = %5
  %10 = add nsw i64 %3, %indvars.iv
  %11 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %10
  store i32 0, ptr %11, align 4
  br label %12

12:                                               ; preds = %9, %5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %._crit_edge, label %5, !llvm.loop !11

._crit_edge:                                      ; preds = %12
  br label %13

13:                                               ; preds = %._crit_edge, %2
  %14 = getelementptr inbounds [4 x i8], ptr @class, i64 %.phi.trans.insert
  %15 = load i32, ptr %14, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %16
  %18 = load i32, ptr %17, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, ptr %17, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local range(i32 0, 2) i32 @Trial(i32 noundef %0) #0 {
  %2 = load i32, ptr @kount, align 4
  %3 = add nsw i32 %2, 1
  store i32 %3, ptr @kount, align 4
  br label %4

4:                                                ; preds = %23, %1
  %indvars.iv = phi i64 [ %indvars.iv.next, %23 ], [ 0, %1 ]
  %5 = getelementptr inbounds nuw [4 x i8], ptr @class, i64 %indvars.iv
  %6 = load i32, ptr %5, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %7
  %9 = load i32, ptr %8, align 4
  %.not = icmp eq i32 %9, 0
  br i1 %.not, label %23, label %10

10:                                               ; preds = %4
  %11 = trunc nuw nsw i64 %indvars.iv to i32
  %12 = call i32 @Fit(i32 noundef %11, i32 noundef %0)
  %.not1 = icmp eq i32 %12, 0
  br i1 %.not1, label %22, label %13

13:                                               ; preds = %10
  %14 = trunc nuw nsw i64 %indvars.iv to i32
  %15 = call i32 @Place(i32 noundef %14, i32 noundef %0)
  %16 = call i32 @Trial(i32 noundef %15)
  %.not2 = icmp eq i32 %16, 0
  br i1 %.not2, label %17, label %19

17:                                               ; preds = %13
  %18 = icmp eq i32 %15, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %17, %13
  br label %25

20:                                               ; preds = %17
  %21 = trunc nuw nsw i64 %indvars.iv to i32
  call void @Remove(i32 noundef %21, i32 noundef %0)
  br label %22

22:                                               ; preds = %20, %10
  br label %23

23:                                               ; preds = %22, %4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp ne i64 %indvars.iv.next, 13
  br i1 %exitcond, label %4, label %24, !llvm.loop !12

24:                                               ; preds = %23
  br label %25

25:                                               ; preds = %24, %19
  %26 = phi i32 [ 0, %24 ], [ 1, %19 ]
  ret i32 %26
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Puzzle() #0 {
  br label %1

1:                                                ; preds = %1, %0
  %indvars.iv = phi i64 [ %indvars.iv.next, %1 ], [ 0, %0 ]
  %2 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %indvars.iv
  store i32 1, ptr %2, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp ne i64 %indvars.iv.next, 512
  br i1 %exitcond, label %1, label %3, !llvm.loop !13

3:                                                ; preds = %1
  br label %4

4:                                                ; preds = %13, %3
  %indvars.iv28 = phi i64 [ %indvars.iv.next29, %13 ], [ 1, %3 ]
  br label %5

5:                                                ; preds = %12, %4
  %indvars.iv24 = phi i64 [ %indvars.iv.next25, %12 ], [ 1, %4 ]
  br label %6

6:                                                ; preds = %6, %5
  %indvars.iv20 = phi i64 [ %indvars.iv.next21, %6 ], [ 1, %5 ]
  %7 = shl nuw nsw i64 %indvars.iv20, 6
  %8 = shl nuw nsw i64 %indvars.iv24, 3
  %9 = or disjoint i64 %7, %8
  %10 = or disjoint i64 %indvars.iv28, %9
  %11 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %10
  store i32 0, ptr %11, align 4
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, 1
  %exitcond23 = icmp ne i64 %indvars.iv.next21, 6
  br i1 %exitcond23, label %6, label %12, !llvm.loop !14

12:                                               ; preds = %6
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv24, 1
  %exitcond27 = icmp ne i64 %indvars.iv.next25, 6
  br i1 %exitcond27, label %5, label %13, !llvm.loop !15

13:                                               ; preds = %12
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1
  %exitcond31 = icmp ne i64 %indvars.iv.next29, 6
  br i1 %exitcond31, label %4, label %14, !llvm.loop !16

14:                                               ; preds = %13
  br label %15

15:                                               ; preds = %19, %14
  %indvars.iv36 = phi i64 [ %indvars.iv.next37, %19 ], [ 0, %14 ]
  br label %16

16:                                               ; preds = %16, %15
  %indvars.iv32 = phi i64 [ %indvars.iv.next33, %16 ], [ 0, %15 ]
  %17 = getelementptr inbounds nuw [2048 x i8], ptr @p, i64 %indvars.iv36
  %18 = getelementptr inbounds nuw [4 x i8], ptr %17, i64 %indvars.iv32
  store i32 0, ptr %18, align 4
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1
  %exitcond35 = icmp ne i64 %indvars.iv.next33, 512
  br i1 %exitcond35, label %16, label %19, !llvm.loop !17

19:                                               ; preds = %16
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1
  %exitcond39 = icmp ne i64 %indvars.iv.next37, 13
  br i1 %exitcond39, label %15, label %20, !llvm.loop !18

20:                                               ; preds = %19
  br label %21

21:                                               ; preds = %33, %20
  %22 = phi i32 [ 0, %20 ], [ %34, %33 ]
  br label %23

23:                                               ; preds = %30, %21
  %24 = phi i32 [ 0, %21 ], [ 1, %30 ]
  br label %25

25:                                               ; preds = %23
  %26 = shl nuw nsw i32 %24, 3
  %27 = or disjoint i32 %22, %26
  %28 = zext nneg i32 %27 to i64
  %29 = getelementptr inbounds nuw [4 x i8], ptr @p, i64 %28
  store i32 1, ptr %29, align 4
  br label %30

30:                                               ; preds = %25
  %31 = add nuw nsw i32 %24, 1
  %32 = icmp samesign ult i32 %31, 2
  br i1 %32, label %23, label %33, !llvm.loop !19

33:                                               ; preds = %30
  %34 = add nuw nsw i32 %22, 1
  %exitcond40 = icmp ne i32 %34, 4
  br i1 %exitcond40, label %21, label %35, !llvm.loop !20

35:                                               ; preds = %33
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %36

36:                                               ; preds = %45, %35
  %37 = phi i32 [ 0, %35 ], [ 1, %45 ]
  br label %38

38:                                               ; preds = %36
  %39 = zext i32 %37 to i64
  br label %40

40:                                               ; preds = %40, %38
  %indvars.iv41 = phi i64 [ %indvars.iv.next42, %40 ], [ 0, %38 ]
  %41 = shl nuw nsw i64 %indvars.iv41, 6
  %42 = or disjoint i64 %39, %41
  %43 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %42
  store i32 1, ptr %43, align 4
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1
  %exitcond44 = icmp ne i64 %indvars.iv.next42, 4
  br i1 %exitcond44, label %40, label %44, !llvm.loop !21

44:                                               ; preds = %40
  br label %45

45:                                               ; preds = %44
  %46 = add nuw nsw i32 %37, 1
  %47 = icmp samesign ult i32 %46, 2
  br i1 %47, label %36, label %48, !llvm.loop !22

48:                                               ; preds = %45
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %49

49:                                               ; preds = %48
  br label %50

50:                                               ; preds = %56, %49
  %indvars.iv49 = phi i64 [ %indvars.iv.next50, %56 ], [ 0, %49 ]
  br label %51

51:                                               ; preds = %51, %50
  %indvars.iv45 = phi i64 [ %indvars.iv.next46, %51 ], [ 0, %50 ]
  %52 = shl nuw nsw i64 %indvars.iv45, 6
  %53 = shl nuw nsw i64 %indvars.iv49, 3
  %54 = or disjoint i64 %52, %53
  %55 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %54
  store i32 1, ptr %55, align 4
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1
  %exitcond48 = icmp ne i64 %indvars.iv.next46, 2
  br i1 %exitcond48, label %51, label %56, !llvm.loop !23

56:                                               ; preds = %51
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1
  %exitcond52 = icmp ne i64 %indvars.iv.next50, 4
  br i1 %exitcond52, label %50, label %57, !llvm.loop !24

57:                                               ; preds = %56
  br label %58

58:                                               ; preds = %57
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %59

59:                                               ; preds = %68, %58
  %60 = phi i32 [ 0, %58 ], [ 1, %68 ]
  %61 = zext i32 %60 to i64
  br label %62

62:                                               ; preds = %67, %59
  %indvars.iv53 = phi i64 [ %indvars.iv.next54, %67 ], [ 0, %59 ]
  br label %63

63:                                               ; preds = %62
  %64 = shl nuw nsw i64 %indvars.iv53, 3
  %65 = or disjoint i64 %61, %64
  %66 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %65
  store i32 1, ptr %66, align 4
  br label %67

67:                                               ; preds = %63
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1
  %exitcond56 = icmp ne i64 %indvars.iv.next54, 4
  br i1 %exitcond56, label %62, label %68, !llvm.loop !25

68:                                               ; preds = %67
  %69 = add nuw nsw i32 %60, 1
  %70 = icmp samesign ult i32 %69, 2
  br i1 %70, label %59, label %71, !llvm.loop !26

71:                                               ; preds = %68
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %72

72:                                               ; preds = %79, %71
  %indvars.iv61 = phi i64 [ %indvars.iv.next62, %79 ], [ 0, %71 ]
  br label %73

73:                                               ; preds = %72
  br label %74

74:                                               ; preds = %74, %73
  %indvars.iv57 = phi i64 [ %indvars.iv.next58, %74 ], [ 0, %73 ]
  %75 = shl nuw nsw i64 %indvars.iv57, 6
  %76 = or disjoint i64 %indvars.iv61, %75
  %77 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %76
  store i32 1, ptr %77, align 4
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1
  %exitcond60 = icmp ne i64 %indvars.iv.next58, 2
  br i1 %exitcond60, label %74, label %78, !llvm.loop !27

78:                                               ; preds = %74
  br label %79

79:                                               ; preds = %78
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61, 1
  %exitcond64 = icmp ne i64 %indvars.iv.next62, 4
  br i1 %exitcond64, label %72, label %80, !llvm.loop !28

80:                                               ; preds = %79
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %81

81:                                               ; preds = %80
  br label %82

82:                                               ; preds = %90, %81
  %83 = phi i32 [ 0, %81 ], [ 1, %90 ]
  br label %84

84:                                               ; preds = %84, %82
  %indvars.iv65 = phi i64 [ %indvars.iv.next66, %84 ], [ 0, %82 ]
  %85 = shl nuw nsw i64 %indvars.iv65, 6
  %86 = shl nuw nsw i32 %83, 3
  %87 = zext i32 %86 to i64
  %88 = or disjoint i64 %85, %87
  %89 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %88
  store i32 1, ptr %89, align 4
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv65, 1
  %exitcond68 = icmp ne i64 %indvars.iv.next66, 4
  br i1 %exitcond68, label %84, label %90, !llvm.loop !29

90:                                               ; preds = %84
  %91 = add nuw nsw i32 %83, 1
  %92 = icmp samesign ult i32 %91, 2
  br i1 %92, label %82, label %93, !llvm.loop !30

93:                                               ; preds = %90
  br label %94

94:                                               ; preds = %93
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %95

95:                                               ; preds = %100, %94
  %indvars.iv69 = phi i64 [ %indvars.iv.next70, %100 ], [ 0, %94 ]
  br label %96

96:                                               ; preds = %95
  br label %97

97:                                               ; preds = %96
  %98 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %indvars.iv69
  store i32 1, ptr %98, align 4
  br label %99

99:                                               ; preds = %97
  br label %100

100:                                              ; preds = %99
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1
  %exitcond72 = icmp ne i64 %indvars.iv.next70, 3
  br i1 %exitcond72, label %95, label %101, !llvm.loop !31

101:                                              ; preds = %100
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %102

102:                                              ; preds = %101
  br label %103

103:                                              ; preds = %107, %102
  %indvars.iv73 = phi i64 [ %indvars.iv.next74, %107 ], [ 0, %102 ]
  br label %104

104:                                              ; preds = %103
  %105 = shl nuw nsw i64 %indvars.iv73, 3
  %106 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %105
  store i32 1, ptr %106, align 4
  br label %107

107:                                              ; preds = %104
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1
  %exitcond76 = icmp ne i64 %indvars.iv.next74, 3
  br i1 %exitcond76, label %103, label %108, !llvm.loop !32

108:                                              ; preds = %107
  br label %109

109:                                              ; preds = %108
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %110

110:                                              ; preds = %109
  br label %111

111:                                              ; preds = %110
  br label %112

112:                                              ; preds = %112, %111
  %indvars.iv77 = phi i64 [ %indvars.iv.next78, %112 ], [ 0, %111 ]
  %113 = shl nuw nsw i64 %indvars.iv77, 6
  %114 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %113
  store i32 1, ptr %114, align 4
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1
  %exitcond80 = icmp ne i64 %indvars.iv.next78, 3
  br i1 %exitcond80, label %112, label %115, !llvm.loop !33

115:                                              ; preds = %112
  br label %116

116:                                              ; preds = %115
  br label %117

117:                                              ; preds = %116
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %118

118:                                              ; preds = %130, %117
  %119 = phi i32 [ 0, %117 ], [ 1, %130 ]
  br label %120

120:                                              ; preds = %127, %118
  %121 = phi i32 [ 0, %118 ], [ 1, %127 ]
  br label %122

122:                                              ; preds = %120
  %123 = shl nuw nsw i32 %121, 3
  %124 = or disjoint i32 %119, %123
  %125 = zext nneg i32 %124 to i64
  %126 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %125
  store i32 1, ptr %126, align 4
  br label %127

127:                                              ; preds = %122
  %128 = add nuw nsw i32 %121, 1
  %129 = icmp samesign ult i32 %128, 2
  br i1 %129, label %120, label %130, !llvm.loop !34

130:                                              ; preds = %127
  %131 = add nuw nsw i32 %119, 1
  %132 = icmp samesign ult i32 %131, 2
  br i1 %132, label %118, label %133, !llvm.loop !35

133:                                              ; preds = %130
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %134

134:                                              ; preds = %143, %133
  %135 = phi i32 [ 0, %133 ], [ 1, %143 ]
  br label %136

136:                                              ; preds = %134
  %137 = zext i32 %135 to i64
  br label %138

138:                                              ; preds = %138, %136
  %indvars.iv81 = phi i64 [ %indvars.iv.next82, %138 ], [ 0, %136 ]
  %139 = shl nuw nsw i64 %indvars.iv81, 6
  %140 = or disjoint i64 %137, %139
  %141 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %140
  store i32 1, ptr %141, align 4
  %indvars.iv.next82 = add nuw nsw i64 %indvars.iv81, 1
  %exitcond84 = icmp ne i64 %indvars.iv.next82, 2
  br i1 %exitcond84, label %138, label %142, !llvm.loop !36

142:                                              ; preds = %138
  br label %143

143:                                              ; preds = %142
  %144 = add nuw nsw i32 %135, 1
  %145 = icmp samesign ult i32 %144, 2
  br i1 %145, label %134, label %146, !llvm.loop !37

146:                                              ; preds = %143
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %147

147:                                              ; preds = %146
  br label %148

148:                                              ; preds = %156, %147
  %149 = phi i32 [ 0, %147 ], [ 1, %156 ]
  br label %150

150:                                              ; preds = %150, %148
  %indvars.iv85 = phi i64 [ %indvars.iv.next86, %150 ], [ 0, %148 ]
  %151 = shl nuw nsw i64 %indvars.iv85, 6
  %152 = shl nuw nsw i32 %149, 3
  %153 = zext i32 %152 to i64
  %154 = or disjoint i64 %151, %153
  %155 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %154
  store i32 1, ptr %155, align 4
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 1
  %exitcond88 = icmp ne i64 %indvars.iv.next86, 2
  br i1 %exitcond88, label %150, label %156, !llvm.loop !38

156:                                              ; preds = %150
  %157 = add nuw nsw i32 %149, 1
  %158 = icmp samesign ult i32 %157, 2
  br i1 %158, label %148, label %159, !llvm.loop !39

159:                                              ; preds = %156
  br label %160

160:                                              ; preds = %159
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %161

161:                                              ; preds = %176, %160
  %162 = phi i32 [ 0, %160 ], [ 1, %176 ]
  %163 = zext i32 %162 to i64
  br label %164

164:                                              ; preds = %173, %161
  %165 = phi i32 [ 0, %161 ], [ 1, %173 ]
  br label %166

166:                                              ; preds = %166, %164
  %indvars.iv89 = phi i64 [ %indvars.iv.next90, %166 ], [ 0, %164 ]
  %167 = shl nuw nsw i64 %indvars.iv89, 6
  %168 = shl nuw nsw i32 %165, 3
  %169 = zext i32 %168 to i64
  %170 = or disjoint i64 %167, %169
  %171 = or disjoint i64 %163, %170
  %172 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %171
  store i32 1, ptr %172, align 4
  %indvars.iv.next90 = add nuw nsw i64 %indvars.iv89, 1
  %exitcond92 = icmp ne i64 %indvars.iv.next90, 2
  br i1 %exitcond92, label %166, label %173, !llvm.loop !40

173:                                              ; preds = %166
  %174 = add nuw nsw i32 %165, 1
  %175 = icmp samesign ult i32 %174, 2
  br i1 %175, label %164, label %176, !llvm.loop !41

176:                                              ; preds = %173
  %177 = add nuw nsw i32 %162, 1
  %178 = icmp samesign ult i32 %177, 2
  br i1 %178, label %161, label %179, !llvm.loop !42

179:                                              ; preds = %176
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 0, ptr @kount, align 4
  %180 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %180, 0
  br i1 %.not, label %183, label %181

181:                                              ; preds = %179
  %182 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %182, ptr @n, align 4
  br label %184

183:                                              ; preds = %179
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %.pre = load i32, ptr @n, align 4
  br label %184

184:                                              ; preds = %183, %181
  %185 = phi i32 [ %.pre, %183 ], [ %182, %181 ]
  %186 = call i32 @Trial(i32 noundef %185)
  %.not1 = icmp eq i32 %186, 0
  br i1 %.not1, label %187, label %188

187:                                              ; preds = %184
  %puts2 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %192

188:                                              ; preds = %184
  %189 = load i32, ptr @kount, align 4
  %.not3 = icmp eq i32 %189, 2005
  br i1 %.not3, label %191, label %190

190:                                              ; preds = %188
  %puts4 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %191

191:                                              ; preds = %190, %188
  br label %192

192:                                              ; preds = %191, %187
  %193 = load i32, ptr @n, align 4
  %194 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %193) #3
  %195 = load i32, ptr @kount, align 4
  %196 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %195) #3
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %1, %0
  %2 = phi i32 [ 0, %0 ], [ %3, %1 ]
  call void @Puzzle()
  %3 = add nuw nsw i32 %2, 1
  %exitcond = icmp ne i32 %3, 100
  br i1 %exitcond, label %1, label %4, !llvm.loop !43

4:                                                ; preds = %1
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) #2

attributes #0 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { nounwind }

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
