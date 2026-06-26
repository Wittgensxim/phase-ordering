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
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  %.phi.trans.insert = sext i32 %0 to i64
  %.phi.trans.insert1 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert1, align 4
  br label %6

6:                                                ; preds = %18, %2
  %7 = phi i32 [ 0, %2 ], [ %19, %18 ]
  store i32 %7, ptr %5, align 4
  %.not = icmp sgt i32 %7, %.pre
  br i1 %.not, label %20, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  %10 = sext i32 %7 to i64
  %11 = getelementptr inbounds [4 x i8], ptr %9, i64 %10
  %12 = load i32, ptr %11, align 4
  %.not2 = icmp eq i32 %12, 0
  br i1 %.not2, label %18, label %13

13:                                               ; preds = %8
  %14 = add nsw i32 %1, %7
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %15
  %17 = load i32, ptr %16, align 4
  %.not3 = icmp eq i32 %17, 0
  br i1 %.not3, label %18, label %20

18:                                               ; preds = %13, %8
  %19 = add nsw i32 %7, 1
  br label %6, !llvm.loop !7

20:                                               ; preds = %13, %6
  %storemerge1 = phi i32 [ 0, %13 ], [ 1, %6 ]
  ret i32 %storemerge1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Place(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  %.phi.trans.insert = sext i32 %0 to i64
  %.phi.trans.insert1 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert1, align 4
  br label %6

6:                                                ; preds = %17, %2
  %7 = phi i32 [ 0, %2 ], [ %18, %17 ]
  store i32 %7, ptr %5, align 4
  %.not = icmp sgt i32 %7, %.pre
  br i1 %.not, label %19, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  %10 = sext i32 %7 to i64
  %11 = getelementptr inbounds [4 x i8], ptr %9, i64 %10
  %12 = load i32, ptr %11, align 4
  %.not4 = icmp eq i32 %12, 0
  br i1 %.not4, label %17, label %13

13:                                               ; preds = %8
  %14 = add nsw i32 %1, %7
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %15
  store i32 1, ptr %16, align 4
  br label %17

17:                                               ; preds = %13, %8
  %18 = add nsw i32 %7, 1
  br label %6, !llvm.loop !9

19:                                               ; preds = %6
  %20 = getelementptr inbounds [4 x i8], ptr @class, i64 %.phi.trans.insert
  %21 = load i32, ptr %20, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %22
  %24 = load i32, ptr %23, align 4
  %25 = add nsw i32 %24, -1
  store i32 %25, ptr %23, align 4
  %26 = sext i32 %1 to i64
  %smax = call i32 @llvm.smax.i32(i32 %1, i32 512)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %27

27:                                               ; preds = %33, %19
  %indvars.iv = phi i64 [ %indvars.iv.next, %33 ], [ %26, %19 ]
  %28 = trunc nsw i64 %indvars.iv to i32
  store i32 %28, ptr %5, align 4
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit.loopexit, label %29

29:                                               ; preds = %27
  %30 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %indvars.iv
  %31 = load i32, ptr %30, align 4
  %.not3 = icmp eq i32 %31, 0
  br i1 %.not3, label %32, label %33

32:                                               ; preds = %29
  br label %.loopexit

33:                                               ; preds = %29
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %27, !llvm.loop !10

.loopexit.loopexit:                               ; preds = %27
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %32
  %storemerge2 = phi i32 [ %28, %32 ], [ 0, %.loopexit.loopexit ]
  ret i32 %storemerge2
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Remove(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  %.phi.trans.insert = sext i32 %0 to i64
  %.phi.trans.insert1 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert1, align 4
  br label %6

6:                                                ; preds = %17, %2
  %7 = phi i32 [ 0, %2 ], [ %18, %17 ]
  store i32 %7, ptr %5, align 4
  %.not = icmp sgt i32 %7, %.pre
  br i1 %.not, label %19, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  %10 = sext i32 %7 to i64
  %11 = getelementptr inbounds [4 x i8], ptr %9, i64 %10
  %12 = load i32, ptr %11, align 4
  %.not1 = icmp eq i32 %12, 0
  br i1 %.not1, label %17, label %13

13:                                               ; preds = %8
  %14 = add nsw i32 %1, %7
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %15
  store i32 0, ptr %16, align 4
  br label %17

17:                                               ; preds = %13, %8
  %18 = add nsw i32 %7, 1
  br label %6, !llvm.loop !11

19:                                               ; preds = %6
  %20 = getelementptr inbounds [4 x i8], ptr @class, i64 %.phi.trans.insert
  %21 = load i32, ptr %20, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %22
  %24 = load i32, ptr %23, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, ptr %23, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local range(i32 0, 2) i32 @Trial(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %4 = load i32, ptr @kount, align 4
  %5 = add nsw i32 %4, 1
  store i32 %5, ptr @kount, align 4
  br label %6

6:                                                ; preds = %24, %1
  %7 = phi i32 [ %0, %1 ], [ %25, %24 ]
  %8 = phi i32 [ 0, %1 ], [ %26, %24 ]
  store i32 %8, ptr %3, align 4
  %9 = icmp slt i32 %8, 13
  br i1 %9, label %10, label %27

10:                                               ; preds = %6
  %11 = sext i32 %8 to i64
  %12 = getelementptr inbounds [4 x i8], ptr @class, i64 %11
  %13 = load i32, ptr %12, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %14
  %16 = load i32, ptr %15, align 4
  %.not = icmp eq i32 %16, 0
  br i1 %.not, label %24, label %17

17:                                               ; preds = %10
  %18 = call i32 @Fit(i32 noundef %8, i32 noundef %7)
  %.not2 = icmp eq i32 %18, 0
  br i1 %.not2, label %24, label %19

19:                                               ; preds = %17
  %20 = call i32 @Place(i32 noundef %8, i32 noundef %7)
  %21 = call i32 @Trial(i32 noundef %20)
  %.not3 = icmp ne i32 %21, 0
  %22 = icmp eq i32 %20, 0
  %or.cond = or i1 %.not3, %22
  br i1 %or.cond, label %27, label %23

23:                                               ; preds = %19
  call void @Remove(i32 noundef %8, i32 noundef %0)
  br label %24

24:                                               ; preds = %23, %17, %10
  %25 = phi i32 [ %0, %23 ], [ %7, %17 ], [ %7, %10 ]
  %26 = add nsw i32 %8, 1
  br label %6, !llvm.loop !12

27:                                               ; preds = %19, %6
  %storemerge1 = phi i32 [ 1, %19 ], [ 0, %6 ]
  ret i32 %storemerge1
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Puzzle() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  br label %5

5:                                                ; preds = %8, %0
  %6 = phi i32 [ 0, %0 ], [ %11, %8 ]
  store i32 %6, ptr %4, align 4
  %7 = icmp slt i32 %6, 512
  br i1 %7, label %8, label %.preheader31.preheader

.preheader31.preheader:                           ; preds = %5
  br label %.preheader31

8:                                                ; preds = %5
  %9 = sext i32 %6 to i64
  %10 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %9
  store i32 1, ptr %10, align 4
  %11 = add nsw i32 %6, 1
  br label %5, !llvm.loop !13

.preheader31:                                     ; preds = %30, %.preheader31.preheader
  %12 = phi i32 [ %31, %30 ], [ 1, %.preheader31.preheader ]
  store i32 %12, ptr %1, align 4
  %13 = icmp slt i32 %12, 6
  br i1 %13, label %.preheader30.preheader, label %.preheader28.preheader

.preheader30.preheader:                           ; preds = %.preheader31
  br label %.preheader30

.preheader28.preheader:                           ; preds = %.preheader31
  br label %.preheader28

.preheader30:                                     ; preds = %28, %.preheader30.preheader
  %14 = phi i32 [ %17, %28 ], [ %12, %.preheader30.preheader ]
  %15 = phi i32 [ %29, %28 ], [ 1, %.preheader30.preheader ]
  store i32 %15, ptr %2, align 4
  %16 = icmp slt i32 %15, 6
  br i1 %16, label %.preheader29.preheader, label %30

.preheader29.preheader:                           ; preds = %.preheader30
  br label %.preheader29

.preheader29:                                     ; preds = %20, %.preheader29.preheader
  %17 = phi i32 [ %12, %20 ], [ %14, %.preheader29.preheader ]
  %18 = phi i32 [ %27, %20 ], [ 1, %.preheader29.preheader ]
  store i32 %18, ptr %3, align 4
  %19 = icmp slt i32 %18, 6
  br i1 %19, label %20, label %28

20:                                               ; preds = %.preheader29
  %21 = shl i32 %18, 6
  %22 = shl i32 %15, 3
  %23 = add i32 %21, %22
  %24 = add nsw i32 %12, %23
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %25
  store i32 0, ptr %26, align 4
  %27 = add nsw i32 %18, 1
  br label %.preheader29, !llvm.loop !14

28:                                               ; preds = %.preheader29
  %29 = add nsw i32 %15, 1
  br label %.preheader30, !llvm.loop !15

30:                                               ; preds = %.preheader30
  %31 = add nsw i32 %14, 1
  br label %.preheader31, !llvm.loop !16

.preheader28:                                     ; preds = %42, %.preheader28.preheader
  %32 = phi i32 [ %43, %42 ], [ 0, %.preheader28.preheader ]
  store i32 %32, ptr %1, align 4
  %33 = icmp slt i32 %32, 13
  br i1 %33, label %.preheader27.preheader, label %.preheader26.preheader

.preheader27.preheader:                           ; preds = %.preheader28
  br label %.preheader27

.preheader26.preheader:                           ; preds = %.preheader28
  br label %.preheader26

.preheader27:                                     ; preds = %36, %.preheader27.preheader
  %34 = phi i32 [ %41, %36 ], [ 0, %.preheader27.preheader ]
  store i32 %34, ptr %4, align 4
  %35 = icmp slt i32 %34, 512
  br i1 %35, label %36, label %42

36:                                               ; preds = %.preheader27
  %37 = sext i32 %32 to i64
  %38 = getelementptr inbounds [2048 x i8], ptr @p, i64 %37
  %39 = sext i32 %34 to i64
  %40 = getelementptr inbounds [4 x i8], ptr %38, i64 %39
  store i32 0, ptr %40, align 4
  %41 = add nsw i32 %34, 1
  br label %.preheader27, !llvm.loop !17

42:                                               ; preds = %.preheader27
  %43 = add nsw i32 %32, 1
  br label %.preheader28, !llvm.loop !18

.preheader26:                                     ; preds = %60, %.preheader26.preheader
  %44 = phi i32 [ %61, %60 ], [ 0, %.preheader26.preheader ]
  store i32 %44, ptr %1, align 4
  %45 = icmp slt i32 %44, 4
  br i1 %45, label %.preheader25.preheader, label %62

.preheader25.preheader:                           ; preds = %.preheader26
  br label %.preheader25

.preheader25:                                     ; preds = %58, %.preheader25.preheader
  %46 = phi i32 [ %49, %58 ], [ %44, %.preheader25.preheader ]
  %47 = phi i32 [ %59, %58 ], [ 0, %.preheader25.preheader ]
  store i32 %47, ptr %2, align 4
  %48 = icmp slt i32 %47, 2
  br i1 %48, label %.preheader24.preheader, label %60

.preheader24.preheader:                           ; preds = %.preheader25
  br label %.preheader24

.preheader24:                                     ; preds = %52, %.preheader24.preheader
  %49 = phi i32 [ %44, %52 ], [ %46, %.preheader24.preheader ]
  %50 = phi i32 [ 1, %52 ], [ 0, %.preheader24.preheader ]
  store i32 %50, ptr %3, align 4
  %51 = icmp slt i32 %50, 1
  br i1 %51, label %52, label %58

52:                                               ; preds = %.preheader24
  %53 = shl nuw nsw i32 %47, 3
  %54 = add nuw nsw i32 0, %53
  %55 = add nsw i32 %44, %54
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [4 x i8], ptr @p, i64 %56
  store i32 1, ptr %57, align 4
  br label %.preheader24, !llvm.loop !19

58:                                               ; preds = %.preheader24
  %59 = add nuw nsw i32 %47, 1
  br label %.preheader25, !llvm.loop !20

60:                                               ; preds = %.preheader25
  %61 = add nsw i32 %46, 1
  br label %.preheader26, !llvm.loop !21

62:                                               ; preds = %.preheader26
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %63

63:                                               ; preds = %80, %62
  %64 = phi i32 [ 0, %62 ], [ %81, %80 ]
  store i32 %64, ptr %1, align 4
  %65 = icmp slt i32 %64, 2
  br i1 %65, label %.preheader23.preheader, label %82

.preheader23.preheader:                           ; preds = %63
  br label %.preheader23

.preheader23:                                     ; preds = %79, %.preheader23.preheader
  %66 = phi i32 [ %69, %79 ], [ %64, %.preheader23.preheader ]
  %67 = phi i32 [ 1, %79 ], [ 0, %.preheader23.preheader ]
  store i32 %67, ptr %2, align 4
  %68 = icmp slt i32 %67, 1
  br i1 %68, label %.preheader22.preheader, label %80

.preheader22.preheader:                           ; preds = %.preheader23
  br label %.preheader22

.preheader22:                                     ; preds = %72, %.preheader22.preheader
  %69 = phi i32 [ %64, %72 ], [ %66, %.preheader22.preheader ]
  %70 = phi i32 [ %78, %72 ], [ 0, %.preheader22.preheader ]
  store i32 %70, ptr %3, align 4
  %71 = icmp slt i32 %70, 4
  br i1 %71, label %72, label %79

72:                                               ; preds = %.preheader22
  %73 = shl i32 %70, 6
  %74 = add nuw nsw i32 %73, 0
  %75 = add nuw nsw i32 %64, %74
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %76
  store i32 1, ptr %77, align 4
  %78 = add nsw i32 %70, 1
  br label %.preheader22, !llvm.loop !22

79:                                               ; preds = %.preheader22
  br label %.preheader23, !llvm.loop !23

80:                                               ; preds = %.preheader23
  %81 = add nuw nsw i32 %66, 1
  br label %63, !llvm.loop !24

82:                                               ; preds = %63
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %83

83:                                               ; preds = %100, %82
  %84 = phi i32 [ 0, %82 ], [ 1, %100 ]
  store i32 %84, ptr %1, align 4
  %85 = icmp slt i32 %84, 1
  br i1 %85, label %.preheader21.preheader, label %101

.preheader21.preheader:                           ; preds = %83
  br label %.preheader21

.preheader21:                                     ; preds = %98, %.preheader21.preheader
  %86 = phi i32 [ %99, %98 ], [ 0, %.preheader21.preheader ]
  store i32 %86, ptr %2, align 4
  %87 = icmp slt i32 %86, 4
  br i1 %87, label %.preheader20.preheader, label %100

.preheader20.preheader:                           ; preds = %.preheader21
  br label %.preheader20

.preheader20:                                     ; preds = %90, %.preheader20.preheader
  %88 = phi i32 [ %97, %90 ], [ 0, %.preheader20.preheader ]
  store i32 %88, ptr %3, align 4
  %89 = icmp slt i32 %88, 2
  br i1 %89, label %90, label %98

90:                                               ; preds = %.preheader20
  %91 = shl nuw nsw i32 %88, 6
  %92 = shl i32 %86, 3
  %93 = add i32 %91, %92
  %94 = add nuw nsw i32 0, %93
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %95
  store i32 1, ptr %96, align 4
  %97 = add nuw nsw i32 %88, 1
  br label %.preheader20, !llvm.loop !25

98:                                               ; preds = %.preheader20
  %99 = add nsw i32 %86, 1
  br label %.preheader21, !llvm.loop !26

100:                                              ; preds = %.preheader21
  br label %83, !llvm.loop !27

101:                                              ; preds = %83
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %102

102:                                              ; preds = %119, %101
  %103 = phi i32 [ 0, %101 ], [ %120, %119 ]
  store i32 %103, ptr %1, align 4
  %104 = icmp slt i32 %103, 2
  br i1 %104, label %.preheader19.preheader, label %121

.preheader19.preheader:                           ; preds = %102
  br label %.preheader19

.preheader19:                                     ; preds = %117, %.preheader19.preheader
  %105 = phi i32 [ %108, %117 ], [ %103, %.preheader19.preheader ]
  %106 = phi i32 [ %118, %117 ], [ 0, %.preheader19.preheader ]
  store i32 %106, ptr %2, align 4
  %107 = icmp slt i32 %106, 4
  br i1 %107, label %.preheader18.preheader, label %119

.preheader18.preheader:                           ; preds = %.preheader19
  br label %.preheader18

.preheader18:                                     ; preds = %111, %.preheader18.preheader
  %108 = phi i32 [ %103, %111 ], [ %105, %.preheader18.preheader ]
  %109 = phi i32 [ 1, %111 ], [ 0, %.preheader18.preheader ]
  store i32 %109, ptr %3, align 4
  %110 = icmp slt i32 %109, 1
  br i1 %110, label %111, label %117

111:                                              ; preds = %.preheader18
  %112 = shl i32 %106, 3
  %113 = add nuw nsw i32 0, %112
  %114 = add nuw nsw i32 %103, %113
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %115
  store i32 1, ptr %116, align 4
  br label %.preheader18, !llvm.loop !28

117:                                              ; preds = %.preheader18
  %118 = add nsw i32 %106, 1
  br label %.preheader19, !llvm.loop !29

119:                                              ; preds = %.preheader19
  %120 = add nuw nsw i32 %105, 1
  br label %102, !llvm.loop !30

121:                                              ; preds = %102
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %122

122:                                              ; preds = %139, %121
  %123 = phi i32 [ 0, %121 ], [ %140, %139 ]
  store i32 %123, ptr %1, align 4
  %124 = icmp slt i32 %123, 4
  br i1 %124, label %.preheader17.preheader, label %141

.preheader17.preheader:                           ; preds = %122
  br label %.preheader17

.preheader17:                                     ; preds = %138, %.preheader17.preheader
  %125 = phi i32 [ %128, %138 ], [ %123, %.preheader17.preheader ]
  %126 = phi i32 [ 1, %138 ], [ 0, %.preheader17.preheader ]
  store i32 %126, ptr %2, align 4
  %127 = icmp slt i32 %126, 1
  br i1 %127, label %.preheader16.preheader, label %139

.preheader16.preheader:                           ; preds = %.preheader17
  br label %.preheader16

.preheader16:                                     ; preds = %131, %.preheader16.preheader
  %128 = phi i32 [ %123, %131 ], [ %125, %.preheader16.preheader ]
  %129 = phi i32 [ %137, %131 ], [ 0, %.preheader16.preheader ]
  store i32 %129, ptr %3, align 4
  %130 = icmp slt i32 %129, 2
  br i1 %130, label %131, label %138

131:                                              ; preds = %.preheader16
  %132 = shl nuw nsw i32 %129, 6
  %133 = add nuw nsw i32 %132, 0
  %134 = add nsw i32 %123, %133
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %135
  store i32 1, ptr %136, align 4
  %137 = add nuw nsw i32 %129, 1
  br label %.preheader16, !llvm.loop !31

138:                                              ; preds = %.preheader16
  br label %.preheader17, !llvm.loop !32

139:                                              ; preds = %.preheader17
  %140 = add nsw i32 %125, 1
  br label %122, !llvm.loop !33

141:                                              ; preds = %122
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %142

142:                                              ; preds = %159, %141
  %143 = phi i32 [ 0, %141 ], [ 1, %159 ]
  store i32 %143, ptr %1, align 4
  %144 = icmp slt i32 %143, 1
  br i1 %144, label %.preheader15.preheader, label %160

.preheader15.preheader:                           ; preds = %142
  br label %.preheader15

.preheader15:                                     ; preds = %157, %.preheader15.preheader
  %145 = phi i32 [ %158, %157 ], [ 0, %.preheader15.preheader ]
  store i32 %145, ptr %2, align 4
  %146 = icmp slt i32 %145, 2
  br i1 %146, label %.preheader14.preheader, label %159

.preheader14.preheader:                           ; preds = %.preheader15
  br label %.preheader14

.preheader14:                                     ; preds = %149, %.preheader14.preheader
  %147 = phi i32 [ %156, %149 ], [ 0, %.preheader14.preheader ]
  store i32 %147, ptr %3, align 4
  %148 = icmp slt i32 %147, 4
  br i1 %148, label %149, label %157

149:                                              ; preds = %.preheader14
  %150 = shl i32 %147, 6
  %151 = shl nuw nsw i32 %145, 3
  %152 = add nuw i32 %150, %151
  %153 = add nuw nsw i32 0, %152
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %154
  store i32 1, ptr %155, align 4
  %156 = add nsw i32 %147, 1
  br label %.preheader14, !llvm.loop !34

157:                                              ; preds = %.preheader14
  %158 = add nuw nsw i32 %145, 1
  br label %.preheader15, !llvm.loop !35

159:                                              ; preds = %.preheader15
  br label %142, !llvm.loop !36

160:                                              ; preds = %142
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %161

161:                                              ; preds = %175, %160
  %162 = phi i32 [ 0, %160 ], [ %176, %175 ]
  store i32 %162, ptr %1, align 4
  %163 = icmp slt i32 %162, 3
  br i1 %163, label %.preheader13.preheader, label %177

.preheader13.preheader:                           ; preds = %161
  br label %.preheader13

.preheader13:                                     ; preds = %174, %.preheader13.preheader
  %164 = phi i32 [ %167, %174 ], [ %162, %.preheader13.preheader ]
  %165 = phi i32 [ 1, %174 ], [ 0, %.preheader13.preheader ]
  store i32 %165, ptr %2, align 4
  %166 = icmp slt i32 %165, 1
  br i1 %166, label %.preheader12.preheader, label %175

.preheader12.preheader:                           ; preds = %.preheader13
  br label %.preheader12

.preheader12:                                     ; preds = %170, %.preheader12.preheader
  %167 = phi i32 [ %162, %170 ], [ %164, %.preheader12.preheader ]
  %168 = phi i32 [ 1, %170 ], [ 0, %.preheader12.preheader ]
  store i32 %168, ptr %3, align 4
  %169 = icmp slt i32 %168, 1
  br i1 %169, label %170, label %174

170:                                              ; preds = %.preheader12
  %171 = add nuw nsw i32 %162, 0
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %172
  store i32 1, ptr %173, align 4
  br label %.preheader12, !llvm.loop !37

174:                                              ; preds = %.preheader12
  br label %.preheader13, !llvm.loop !38

175:                                              ; preds = %.preheader13
  %176 = add nsw i32 %164, 1
  br label %161, !llvm.loop !39

177:                                              ; preds = %161
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %178

178:                                              ; preds = %193, %177
  %179 = phi i32 [ 0, %177 ], [ 1, %193 ]
  store i32 %179, ptr %1, align 4
  %180 = icmp slt i32 %179, 1
  br i1 %180, label %.preheader11.preheader, label %194

.preheader11.preheader:                           ; preds = %178
  br label %.preheader11

.preheader11:                                     ; preds = %191, %.preheader11.preheader
  %181 = phi i32 [ %192, %191 ], [ 0, %.preheader11.preheader ]
  store i32 %181, ptr %2, align 4
  %182 = icmp slt i32 %181, 3
  br i1 %182, label %.preheader10.preheader, label %193

.preheader10.preheader:                           ; preds = %.preheader11
  br label %.preheader10

.preheader10:                                     ; preds = %185, %.preheader10.preheader
  %183 = phi i32 [ 1, %185 ], [ 0, %.preheader10.preheader ]
  store i32 %183, ptr %3, align 4
  %184 = icmp slt i32 %183, 1
  br i1 %184, label %185, label %191

185:                                              ; preds = %.preheader10
  %186 = shl i32 %181, 3
  %187 = add nuw nsw i32 0, %186
  %188 = add nuw nsw i32 0, %187
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %189
  store i32 1, ptr %190, align 4
  br label %.preheader10, !llvm.loop !40

191:                                              ; preds = %.preheader10
  %192 = add nsw i32 %181, 1
  br label %.preheader11, !llvm.loop !41

193:                                              ; preds = %.preheader11
  br label %178, !llvm.loop !42

194:                                              ; preds = %178
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %195

195:                                              ; preds = %210, %194
  %196 = phi i32 [ 0, %194 ], [ 1, %210 ]
  store i32 %196, ptr %1, align 4
  %197 = icmp slt i32 %196, 1
  br i1 %197, label %.preheader9.preheader, label %211

.preheader9.preheader:                            ; preds = %195
  br label %.preheader9

.preheader9:                                      ; preds = %209, %.preheader9.preheader
  %198 = phi i32 [ 1, %209 ], [ 0, %.preheader9.preheader ]
  store i32 %198, ptr %2, align 4
  %199 = icmp slt i32 %198, 1
  br i1 %199, label %.preheader8.preheader, label %210

.preheader8.preheader:                            ; preds = %.preheader9
  br label %.preheader8

.preheader8:                                      ; preds = %202, %.preheader8.preheader
  %200 = phi i32 [ %208, %202 ], [ 0, %.preheader8.preheader ]
  store i32 %200, ptr %3, align 4
  %201 = icmp slt i32 %200, 3
  br i1 %201, label %202, label %209

202:                                              ; preds = %.preheader8
  %203 = shl i32 %200, 6
  %204 = add nuw nsw i32 %203, 0
  %205 = add nuw nsw i32 0, %204
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %206
  store i32 1, ptr %207, align 4
  %208 = add nsw i32 %200, 1
  br label %.preheader8, !llvm.loop !43

209:                                              ; preds = %.preheader8
  br label %.preheader9, !llvm.loop !44

210:                                              ; preds = %.preheader9
  br label %195, !llvm.loop !45

211:                                              ; preds = %195
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %212

212:                                              ; preds = %229, %211
  %213 = phi i32 [ 0, %211 ], [ %230, %229 ]
  store i32 %213, ptr %1, align 4
  %214 = icmp slt i32 %213, 2
  br i1 %214, label %.preheader7.preheader, label %231

.preheader7.preheader:                            ; preds = %212
  br label %.preheader7

.preheader7:                                      ; preds = %227, %.preheader7.preheader
  %215 = phi i32 [ %218, %227 ], [ %213, %.preheader7.preheader ]
  %216 = phi i32 [ %228, %227 ], [ 0, %.preheader7.preheader ]
  store i32 %216, ptr %2, align 4
  %217 = icmp slt i32 %216, 2
  br i1 %217, label %.preheader6.preheader, label %229

.preheader6.preheader:                            ; preds = %.preheader7
  br label %.preheader6

.preheader6:                                      ; preds = %221, %.preheader6.preheader
  %218 = phi i32 [ %213, %221 ], [ %215, %.preheader6.preheader ]
  %219 = phi i32 [ 1, %221 ], [ 0, %.preheader6.preheader ]
  store i32 %219, ptr %3, align 4
  %220 = icmp slt i32 %219, 1
  br i1 %220, label %221, label %227

221:                                              ; preds = %.preheader6
  %222 = shl nuw nsw i32 %216, 3
  %223 = add nuw nsw i32 0, %222
  %224 = add nuw nsw i32 %213, %223
  %225 = zext nneg i32 %224 to i64
  %226 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %225
  store i32 1, ptr %226, align 4
  br label %.preheader6, !llvm.loop !46

227:                                              ; preds = %.preheader6
  %228 = add nuw nsw i32 %216, 1
  br label %.preheader7, !llvm.loop !47

229:                                              ; preds = %.preheader7
  %230 = add nuw nsw i32 %215, 1
  br label %212, !llvm.loop !48

231:                                              ; preds = %212
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %232

232:                                              ; preds = %249, %231
  %233 = phi i32 [ 0, %231 ], [ %250, %249 ]
  store i32 %233, ptr %1, align 4
  %234 = icmp slt i32 %233, 2
  br i1 %234, label %.preheader5.preheader, label %251

.preheader5.preheader:                            ; preds = %232
  br label %.preheader5

.preheader5:                                      ; preds = %248, %.preheader5.preheader
  %235 = phi i32 [ %238, %248 ], [ %233, %.preheader5.preheader ]
  %236 = phi i32 [ 1, %248 ], [ 0, %.preheader5.preheader ]
  store i32 %236, ptr %2, align 4
  %237 = icmp slt i32 %236, 1
  br i1 %237, label %.preheader4.preheader, label %249

.preheader4.preheader:                            ; preds = %.preheader5
  br label %.preheader4

.preheader4:                                      ; preds = %241, %.preheader4.preheader
  %238 = phi i32 [ %233, %241 ], [ %235, %.preheader4.preheader ]
  %239 = phi i32 [ %247, %241 ], [ 0, %.preheader4.preheader ]
  store i32 %239, ptr %3, align 4
  %240 = icmp slt i32 %239, 2
  br i1 %240, label %241, label %248

241:                                              ; preds = %.preheader4
  %242 = shl nuw nsw i32 %239, 6
  %243 = add nuw nsw i32 %242, 0
  %244 = add nuw nsw i32 %233, %243
  %245 = zext nneg i32 %244 to i64
  %246 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %245
  store i32 1, ptr %246, align 4
  %247 = add nuw nsw i32 %239, 1
  br label %.preheader4, !llvm.loop !49

248:                                              ; preds = %.preheader4
  br label %.preheader5, !llvm.loop !50

249:                                              ; preds = %.preheader5
  %250 = add nuw nsw i32 %235, 1
  br label %232, !llvm.loop !51

251:                                              ; preds = %232
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %252

252:                                              ; preds = %269, %251
  %253 = phi i32 [ 0, %251 ], [ 1, %269 ]
  store i32 %253, ptr %1, align 4
  %254 = icmp slt i32 %253, 1
  br i1 %254, label %.preheader3.preheader, label %270

.preheader3.preheader:                            ; preds = %252
  br label %.preheader3

.preheader3:                                      ; preds = %267, %.preheader3.preheader
  %255 = phi i32 [ %268, %267 ], [ 0, %.preheader3.preheader ]
  store i32 %255, ptr %2, align 4
  %256 = icmp slt i32 %255, 2
  br i1 %256, label %.preheader2.preheader, label %269

.preheader2.preheader:                            ; preds = %.preheader3
  br label %.preheader2

.preheader2:                                      ; preds = %259, %.preheader2.preheader
  %257 = phi i32 [ %266, %259 ], [ 0, %.preheader2.preheader ]
  store i32 %257, ptr %3, align 4
  %258 = icmp slt i32 %257, 2
  br i1 %258, label %259, label %267

259:                                              ; preds = %.preheader2
  %260 = shl nuw nsw i32 %257, 6
  %261 = shl nuw nsw i32 %255, 3
  %262 = add nuw nsw i32 %260, %261
  %263 = add nuw nsw i32 0, %262
  %264 = zext nneg i32 %263 to i64
  %265 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %264
  store i32 1, ptr %265, align 4
  %266 = add nuw nsw i32 %257, 1
  br label %.preheader2, !llvm.loop !52

267:                                              ; preds = %.preheader2
  %268 = add nuw nsw i32 %255, 1
  br label %.preheader3, !llvm.loop !53

269:                                              ; preds = %.preheader3
  br label %252, !llvm.loop !54

270:                                              ; preds = %252
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %271

271:                                              ; preds = %290, %270
  %272 = phi i32 [ 0, %270 ], [ %291, %290 ]
  store i32 %272, ptr %1, align 4
  %273 = icmp slt i32 %272, 2
  br i1 %273, label %.preheader1.preheader, label %292

.preheader1.preheader:                            ; preds = %271
  br label %.preheader1

.preheader1:                                      ; preds = %288, %.preheader1.preheader
  %274 = phi i32 [ %277, %288 ], [ %272, %.preheader1.preheader ]
  %275 = phi i32 [ %289, %288 ], [ 0, %.preheader1.preheader ]
  store i32 %275, ptr %2, align 4
  %276 = icmp slt i32 %275, 2
  br i1 %276, label %.preheader.preheader, label %290

.preheader.preheader:                             ; preds = %.preheader1
  br label %.preheader

.preheader:                                       ; preds = %280, %.preheader.preheader
  %277 = phi i32 [ %272, %280 ], [ %274, %.preheader.preheader ]
  %278 = phi i32 [ %287, %280 ], [ 0, %.preheader.preheader ]
  store i32 %278, ptr %3, align 4
  %279 = icmp slt i32 %278, 2
  br i1 %279, label %280, label %288

280:                                              ; preds = %.preheader
  %281 = shl nuw nsw i32 %278, 6
  %282 = shl nuw nsw i32 %275, 3
  %283 = add nuw nsw i32 %281, %282
  %284 = add nuw nsw i32 %272, %283
  %285 = zext nneg i32 %284 to i64
  %286 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %285
  store i32 1, ptr %286, align 4
  %287 = add nuw nsw i32 %278, 1
  br label %.preheader, !llvm.loop !55

288:                                              ; preds = %.preheader
  %289 = add nuw nsw i32 %275, 1
  br label %.preheader1, !llvm.loop !56

290:                                              ; preds = %.preheader1
  %291 = add nuw nsw i32 %274, 1
  br label %271, !llvm.loop !57

292:                                              ; preds = %271
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 73, ptr %4, align 4
  store i32 0, ptr @kount, align 4
  %293 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %293, 0
  br i1 %.not, label %296, label %294

294:                                              ; preds = %292
  %295 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %295, ptr @n, align 4
  br label %297

296:                                              ; preds = %292
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %.pre = load i32, ptr @n, align 4
  br label %297

297:                                              ; preds = %296, %294
  %298 = phi i32 [ %.pre, %296 ], [ %295, %294 ]
  %299 = call i32 @Trial(i32 noundef %298)
  %.not16 = icmp eq i32 %299, 0
  br i1 %.not16, label %300, label %301

300:                                              ; preds = %297
  %puts17 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %304

301:                                              ; preds = %297
  %302 = load i32, ptr @kount, align 4
  %.not18 = icmp eq i32 %302, 2005
  br i1 %.not18, label %304, label %303

303:                                              ; preds = %301
  %puts19 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %304

304:                                              ; preds = %303, %301, %300
  %305 = load i32, ptr @n, align 4
  %306 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %305) #4
  %307 = load i32, ptr @kount, align 4
  %308 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %307) #4
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  br label %2

2:                                                ; preds = %5, %0
  %3 = phi i32 [ 0, %0 ], [ %6, %5 ]
  store i32 %3, ptr %1, align 4
  %4 = icmp slt i32 %3, 100
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  call void @Puzzle()
  %6 = add nsw i32 %3, 1
  br label %2, !llvm.loop !58

7:                                                ; preds = %2
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
