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
define dso_local i32 @Trial(i32 noundef %0) #0 {
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

.preheader26:                                     ; preds = %62, %.preheader26.preheader
  %44 = phi i32 [ %63, %62 ], [ 0, %.preheader26.preheader ]
  store i32 %44, ptr %1, align 4
  %45 = icmp slt i32 %44, 4
  br i1 %45, label %.preheader25.preheader, label %64

.preheader25.preheader:                           ; preds = %.preheader26
  br label %.preheader25

.preheader25:                                     ; preds = %60, %.preheader25.preheader
  %46 = phi i32 [ %49, %60 ], [ %44, %.preheader25.preheader ]
  %47 = phi i32 [ %61, %60 ], [ 0, %.preheader25.preheader ]
  store i32 %47, ptr %2, align 4
  %48 = icmp slt i32 %47, 2
  br i1 %48, label %.preheader24.preheader, label %62

.preheader24.preheader:                           ; preds = %.preheader25
  br label %.preheader24

.preheader24:                                     ; preds = %52, %.preheader24.preheader
  %49 = phi i32 [ %44, %52 ], [ %46, %.preheader24.preheader ]
  %50 = phi i32 [ %59, %52 ], [ 0, %.preheader24.preheader ]
  store i32 %50, ptr %3, align 4
  %51 = icmp slt i32 %50, 1
  br i1 %51, label %52, label %60

52:                                               ; preds = %.preheader24
  %53 = shl i32 %50, 6
  %54 = shl i32 %47, 3
  %55 = add i32 %53, %54
  %56 = add nsw i32 %44, %55
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [4 x i8], ptr @p, i64 %57
  store i32 1, ptr %58, align 4
  %59 = add nsw i32 %50, 1
  br label %.preheader24, !llvm.loop !19

60:                                               ; preds = %.preheader24
  %61 = add nsw i32 %47, 1
  br label %.preheader25, !llvm.loop !20

62:                                               ; preds = %.preheader25
  %63 = add nsw i32 %46, 1
  br label %.preheader26, !llvm.loop !21

64:                                               ; preds = %.preheader26
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %65

65:                                               ; preds = %84, %64
  %66 = phi i32 [ 0, %64 ], [ %85, %84 ]
  store i32 %66, ptr %1, align 4
  %67 = icmp slt i32 %66, 2
  br i1 %67, label %.preheader23.preheader, label %86

.preheader23.preheader:                           ; preds = %65
  br label %.preheader23

.preheader23:                                     ; preds = %82, %.preheader23.preheader
  %68 = phi i32 [ %71, %82 ], [ %66, %.preheader23.preheader ]
  %69 = phi i32 [ %83, %82 ], [ 0, %.preheader23.preheader ]
  store i32 %69, ptr %2, align 4
  %70 = icmp slt i32 %69, 1
  br i1 %70, label %.preheader22.preheader, label %84

.preheader22.preheader:                           ; preds = %.preheader23
  br label %.preheader22

.preheader22:                                     ; preds = %74, %.preheader22.preheader
  %71 = phi i32 [ %66, %74 ], [ %68, %.preheader22.preheader ]
  %72 = phi i32 [ %81, %74 ], [ 0, %.preheader22.preheader ]
  store i32 %72, ptr %3, align 4
  %73 = icmp slt i32 %72, 4
  br i1 %73, label %74, label %82

74:                                               ; preds = %.preheader22
  %75 = shl i32 %72, 6
  %76 = shl i32 %69, 3
  %77 = add i32 %75, %76
  %78 = add nsw i32 %66, %77
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %79
  store i32 1, ptr %80, align 4
  %81 = add nsw i32 %72, 1
  br label %.preheader22, !llvm.loop !22

82:                                               ; preds = %.preheader22
  %83 = add nsw i32 %69, 1
  br label %.preheader23, !llvm.loop !23

84:                                               ; preds = %.preheader23
  %85 = add nsw i32 %68, 1
  br label %65, !llvm.loop !24

86:                                               ; preds = %65
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %87

87:                                               ; preds = %106, %86
  %88 = phi i32 [ 0, %86 ], [ %107, %106 ]
  store i32 %88, ptr %1, align 4
  %89 = icmp slt i32 %88, 1
  br i1 %89, label %.preheader21.preheader, label %108

.preheader21.preheader:                           ; preds = %87
  br label %.preheader21

.preheader21:                                     ; preds = %104, %.preheader21.preheader
  %90 = phi i32 [ %93, %104 ], [ %88, %.preheader21.preheader ]
  %91 = phi i32 [ %105, %104 ], [ 0, %.preheader21.preheader ]
  store i32 %91, ptr %2, align 4
  %92 = icmp slt i32 %91, 4
  br i1 %92, label %.preheader20.preheader, label %106

.preheader20.preheader:                           ; preds = %.preheader21
  br label %.preheader20

.preheader20:                                     ; preds = %96, %.preheader20.preheader
  %93 = phi i32 [ %88, %96 ], [ %90, %.preheader20.preheader ]
  %94 = phi i32 [ %103, %96 ], [ 0, %.preheader20.preheader ]
  store i32 %94, ptr %3, align 4
  %95 = icmp slt i32 %94, 2
  br i1 %95, label %96, label %104

96:                                               ; preds = %.preheader20
  %97 = shl i32 %94, 6
  %98 = shl i32 %91, 3
  %99 = add i32 %97, %98
  %100 = add nsw i32 %88, %99
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %101
  store i32 1, ptr %102, align 4
  %103 = add nsw i32 %94, 1
  br label %.preheader20, !llvm.loop !25

104:                                              ; preds = %.preheader20
  %105 = add nsw i32 %91, 1
  br label %.preheader21, !llvm.loop !26

106:                                              ; preds = %.preheader21
  %107 = add nsw i32 %90, 1
  br label %87, !llvm.loop !27

108:                                              ; preds = %87
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %109

109:                                              ; preds = %128, %108
  %110 = phi i32 [ 0, %108 ], [ %129, %128 ]
  store i32 %110, ptr %1, align 4
  %111 = icmp slt i32 %110, 2
  br i1 %111, label %.preheader19.preheader, label %130

.preheader19.preheader:                           ; preds = %109
  br label %.preheader19

.preheader19:                                     ; preds = %126, %.preheader19.preheader
  %112 = phi i32 [ %115, %126 ], [ %110, %.preheader19.preheader ]
  %113 = phi i32 [ %127, %126 ], [ 0, %.preheader19.preheader ]
  store i32 %113, ptr %2, align 4
  %114 = icmp slt i32 %113, 4
  br i1 %114, label %.preheader18.preheader, label %128

.preheader18.preheader:                           ; preds = %.preheader19
  br label %.preheader18

.preheader18:                                     ; preds = %118, %.preheader18.preheader
  %115 = phi i32 [ %110, %118 ], [ %112, %.preheader18.preheader ]
  %116 = phi i32 [ %125, %118 ], [ 0, %.preheader18.preheader ]
  store i32 %116, ptr %3, align 4
  %117 = icmp slt i32 %116, 1
  br i1 %117, label %118, label %126

118:                                              ; preds = %.preheader18
  %119 = shl i32 %116, 6
  %120 = shl i32 %113, 3
  %121 = add i32 %119, %120
  %122 = add nsw i32 %110, %121
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %123
  store i32 1, ptr %124, align 4
  %125 = add nsw i32 %116, 1
  br label %.preheader18, !llvm.loop !28

126:                                              ; preds = %.preheader18
  %127 = add nsw i32 %113, 1
  br label %.preheader19, !llvm.loop !29

128:                                              ; preds = %.preheader19
  %129 = add nsw i32 %112, 1
  br label %109, !llvm.loop !30

130:                                              ; preds = %109
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %131

131:                                              ; preds = %150, %130
  %132 = phi i32 [ 0, %130 ], [ %151, %150 ]
  store i32 %132, ptr %1, align 4
  %133 = icmp slt i32 %132, 4
  br i1 %133, label %.preheader17.preheader, label %152

.preheader17.preheader:                           ; preds = %131
  br label %.preheader17

.preheader17:                                     ; preds = %148, %.preheader17.preheader
  %134 = phi i32 [ %137, %148 ], [ %132, %.preheader17.preheader ]
  %135 = phi i32 [ %149, %148 ], [ 0, %.preheader17.preheader ]
  store i32 %135, ptr %2, align 4
  %136 = icmp slt i32 %135, 1
  br i1 %136, label %.preheader16.preheader, label %150

.preheader16.preheader:                           ; preds = %.preheader17
  br label %.preheader16

.preheader16:                                     ; preds = %140, %.preheader16.preheader
  %137 = phi i32 [ %132, %140 ], [ %134, %.preheader16.preheader ]
  %138 = phi i32 [ %147, %140 ], [ 0, %.preheader16.preheader ]
  store i32 %138, ptr %3, align 4
  %139 = icmp slt i32 %138, 2
  br i1 %139, label %140, label %148

140:                                              ; preds = %.preheader16
  %141 = shl i32 %138, 6
  %142 = shl i32 %135, 3
  %143 = add i32 %141, %142
  %144 = add nsw i32 %132, %143
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %145
  store i32 1, ptr %146, align 4
  %147 = add nsw i32 %138, 1
  br label %.preheader16, !llvm.loop !31

148:                                              ; preds = %.preheader16
  %149 = add nsw i32 %135, 1
  br label %.preheader17, !llvm.loop !32

150:                                              ; preds = %.preheader17
  %151 = add nsw i32 %134, 1
  br label %131, !llvm.loop !33

152:                                              ; preds = %131
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %153

153:                                              ; preds = %172, %152
  %154 = phi i32 [ 0, %152 ], [ %173, %172 ]
  store i32 %154, ptr %1, align 4
  %155 = icmp slt i32 %154, 1
  br i1 %155, label %.preheader15.preheader, label %174

.preheader15.preheader:                           ; preds = %153
  br label %.preheader15

.preheader15:                                     ; preds = %170, %.preheader15.preheader
  %156 = phi i32 [ %159, %170 ], [ %154, %.preheader15.preheader ]
  %157 = phi i32 [ %171, %170 ], [ 0, %.preheader15.preheader ]
  store i32 %157, ptr %2, align 4
  %158 = icmp slt i32 %157, 2
  br i1 %158, label %.preheader14.preheader, label %172

.preheader14.preheader:                           ; preds = %.preheader15
  br label %.preheader14

.preheader14:                                     ; preds = %162, %.preheader14.preheader
  %159 = phi i32 [ %154, %162 ], [ %156, %.preheader14.preheader ]
  %160 = phi i32 [ %169, %162 ], [ 0, %.preheader14.preheader ]
  store i32 %160, ptr %3, align 4
  %161 = icmp slt i32 %160, 4
  br i1 %161, label %162, label %170

162:                                              ; preds = %.preheader14
  %163 = shl i32 %160, 6
  %164 = shl i32 %157, 3
  %165 = add i32 %163, %164
  %166 = add nsw i32 %154, %165
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %167
  store i32 1, ptr %168, align 4
  %169 = add nsw i32 %160, 1
  br label %.preheader14, !llvm.loop !34

170:                                              ; preds = %.preheader14
  %171 = add nsw i32 %157, 1
  br label %.preheader15, !llvm.loop !35

172:                                              ; preds = %.preheader15
  %173 = add nsw i32 %156, 1
  br label %153, !llvm.loop !36

174:                                              ; preds = %153
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %175

175:                                              ; preds = %194, %174
  %176 = phi i32 [ 0, %174 ], [ %195, %194 ]
  store i32 %176, ptr %1, align 4
  %177 = icmp slt i32 %176, 3
  br i1 %177, label %.preheader13.preheader, label %196

.preheader13.preheader:                           ; preds = %175
  br label %.preheader13

.preheader13:                                     ; preds = %192, %.preheader13.preheader
  %178 = phi i32 [ %181, %192 ], [ %176, %.preheader13.preheader ]
  %179 = phi i32 [ %193, %192 ], [ 0, %.preheader13.preheader ]
  store i32 %179, ptr %2, align 4
  %180 = icmp slt i32 %179, 1
  br i1 %180, label %.preheader12.preheader, label %194

.preheader12.preheader:                           ; preds = %.preheader13
  br label %.preheader12

.preheader12:                                     ; preds = %184, %.preheader12.preheader
  %181 = phi i32 [ %176, %184 ], [ %178, %.preheader12.preheader ]
  %182 = phi i32 [ %191, %184 ], [ 0, %.preheader12.preheader ]
  store i32 %182, ptr %3, align 4
  %183 = icmp slt i32 %182, 1
  br i1 %183, label %184, label %192

184:                                              ; preds = %.preheader12
  %185 = shl i32 %182, 6
  %186 = shl i32 %179, 3
  %187 = add i32 %185, %186
  %188 = add nsw i32 %176, %187
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %189
  store i32 1, ptr %190, align 4
  %191 = add nsw i32 %182, 1
  br label %.preheader12, !llvm.loop !37

192:                                              ; preds = %.preheader12
  %193 = add nsw i32 %179, 1
  br label %.preheader13, !llvm.loop !38

194:                                              ; preds = %.preheader13
  %195 = add nsw i32 %178, 1
  br label %175, !llvm.loop !39

196:                                              ; preds = %175
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %197

197:                                              ; preds = %216, %196
  %198 = phi i32 [ 0, %196 ], [ %217, %216 ]
  store i32 %198, ptr %1, align 4
  %199 = icmp slt i32 %198, 1
  br i1 %199, label %.preheader11.preheader, label %218

.preheader11.preheader:                           ; preds = %197
  br label %.preheader11

.preheader11:                                     ; preds = %214, %.preheader11.preheader
  %200 = phi i32 [ %203, %214 ], [ %198, %.preheader11.preheader ]
  %201 = phi i32 [ %215, %214 ], [ 0, %.preheader11.preheader ]
  store i32 %201, ptr %2, align 4
  %202 = icmp slt i32 %201, 3
  br i1 %202, label %.preheader10.preheader, label %216

.preheader10.preheader:                           ; preds = %.preheader11
  br label %.preheader10

.preheader10:                                     ; preds = %206, %.preheader10.preheader
  %203 = phi i32 [ %198, %206 ], [ %200, %.preheader10.preheader ]
  %204 = phi i32 [ %213, %206 ], [ 0, %.preheader10.preheader ]
  store i32 %204, ptr %3, align 4
  %205 = icmp slt i32 %204, 1
  br i1 %205, label %206, label %214

206:                                              ; preds = %.preheader10
  %207 = shl i32 %204, 6
  %208 = shl i32 %201, 3
  %209 = add i32 %207, %208
  %210 = add nsw i32 %198, %209
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %211
  store i32 1, ptr %212, align 4
  %213 = add nsw i32 %204, 1
  br label %.preheader10, !llvm.loop !40

214:                                              ; preds = %.preheader10
  %215 = add nsw i32 %201, 1
  br label %.preheader11, !llvm.loop !41

216:                                              ; preds = %.preheader11
  %217 = add nsw i32 %200, 1
  br label %197, !llvm.loop !42

218:                                              ; preds = %197
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %219

219:                                              ; preds = %238, %218
  %220 = phi i32 [ 0, %218 ], [ %239, %238 ]
  store i32 %220, ptr %1, align 4
  %221 = icmp slt i32 %220, 1
  br i1 %221, label %.preheader9.preheader, label %240

.preheader9.preheader:                            ; preds = %219
  br label %.preheader9

.preheader9:                                      ; preds = %236, %.preheader9.preheader
  %222 = phi i32 [ %225, %236 ], [ %220, %.preheader9.preheader ]
  %223 = phi i32 [ %237, %236 ], [ 0, %.preheader9.preheader ]
  store i32 %223, ptr %2, align 4
  %224 = icmp slt i32 %223, 1
  br i1 %224, label %.preheader8.preheader, label %238

.preheader8.preheader:                            ; preds = %.preheader9
  br label %.preheader8

.preheader8:                                      ; preds = %228, %.preheader8.preheader
  %225 = phi i32 [ %220, %228 ], [ %222, %.preheader8.preheader ]
  %226 = phi i32 [ %235, %228 ], [ 0, %.preheader8.preheader ]
  store i32 %226, ptr %3, align 4
  %227 = icmp slt i32 %226, 3
  br i1 %227, label %228, label %236

228:                                              ; preds = %.preheader8
  %229 = shl i32 %226, 6
  %230 = shl i32 %223, 3
  %231 = add i32 %229, %230
  %232 = add nsw i32 %220, %231
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %233
  store i32 1, ptr %234, align 4
  %235 = add nsw i32 %226, 1
  br label %.preheader8, !llvm.loop !43

236:                                              ; preds = %.preheader8
  %237 = add nsw i32 %223, 1
  br label %.preheader9, !llvm.loop !44

238:                                              ; preds = %.preheader9
  %239 = add nsw i32 %222, 1
  br label %219, !llvm.loop !45

240:                                              ; preds = %219
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %241

241:                                              ; preds = %260, %240
  %242 = phi i32 [ 0, %240 ], [ %261, %260 ]
  store i32 %242, ptr %1, align 4
  %243 = icmp slt i32 %242, 2
  br i1 %243, label %.preheader7.preheader, label %262

.preheader7.preheader:                            ; preds = %241
  br label %.preheader7

.preheader7:                                      ; preds = %258, %.preheader7.preheader
  %244 = phi i32 [ %247, %258 ], [ %242, %.preheader7.preheader ]
  %245 = phi i32 [ %259, %258 ], [ 0, %.preheader7.preheader ]
  store i32 %245, ptr %2, align 4
  %246 = icmp slt i32 %245, 2
  br i1 %246, label %.preheader6.preheader, label %260

.preheader6.preheader:                            ; preds = %.preheader7
  br label %.preheader6

.preheader6:                                      ; preds = %250, %.preheader6.preheader
  %247 = phi i32 [ %242, %250 ], [ %244, %.preheader6.preheader ]
  %248 = phi i32 [ %257, %250 ], [ 0, %.preheader6.preheader ]
  store i32 %248, ptr %3, align 4
  %249 = icmp slt i32 %248, 1
  br i1 %249, label %250, label %258

250:                                              ; preds = %.preheader6
  %251 = shl i32 %248, 6
  %252 = shl i32 %245, 3
  %253 = add i32 %251, %252
  %254 = add nsw i32 %242, %253
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %255
  store i32 1, ptr %256, align 4
  %257 = add nsw i32 %248, 1
  br label %.preheader6, !llvm.loop !46

258:                                              ; preds = %.preheader6
  %259 = add nsw i32 %245, 1
  br label %.preheader7, !llvm.loop !47

260:                                              ; preds = %.preheader7
  %261 = add nsw i32 %244, 1
  br label %241, !llvm.loop !48

262:                                              ; preds = %241
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %263

263:                                              ; preds = %282, %262
  %264 = phi i32 [ 0, %262 ], [ %283, %282 ]
  store i32 %264, ptr %1, align 4
  %265 = icmp slt i32 %264, 2
  br i1 %265, label %.preheader5.preheader, label %284

.preheader5.preheader:                            ; preds = %263
  br label %.preheader5

.preheader5:                                      ; preds = %280, %.preheader5.preheader
  %266 = phi i32 [ %269, %280 ], [ %264, %.preheader5.preheader ]
  %267 = phi i32 [ %281, %280 ], [ 0, %.preheader5.preheader ]
  store i32 %267, ptr %2, align 4
  %268 = icmp slt i32 %267, 1
  br i1 %268, label %.preheader4.preheader, label %282

.preheader4.preheader:                            ; preds = %.preheader5
  br label %.preheader4

.preheader4:                                      ; preds = %272, %.preheader4.preheader
  %269 = phi i32 [ %264, %272 ], [ %266, %.preheader4.preheader ]
  %270 = phi i32 [ %279, %272 ], [ 0, %.preheader4.preheader ]
  store i32 %270, ptr %3, align 4
  %271 = icmp slt i32 %270, 2
  br i1 %271, label %272, label %280

272:                                              ; preds = %.preheader4
  %273 = shl i32 %270, 6
  %274 = shl i32 %267, 3
  %275 = add i32 %273, %274
  %276 = add nsw i32 %264, %275
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %277
  store i32 1, ptr %278, align 4
  %279 = add nsw i32 %270, 1
  br label %.preheader4, !llvm.loop !49

280:                                              ; preds = %.preheader4
  %281 = add nsw i32 %267, 1
  br label %.preheader5, !llvm.loop !50

282:                                              ; preds = %.preheader5
  %283 = add nsw i32 %266, 1
  br label %263, !llvm.loop !51

284:                                              ; preds = %263
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %285

285:                                              ; preds = %304, %284
  %286 = phi i32 [ 0, %284 ], [ %305, %304 ]
  store i32 %286, ptr %1, align 4
  %287 = icmp slt i32 %286, 1
  br i1 %287, label %.preheader3.preheader, label %306

.preheader3.preheader:                            ; preds = %285
  br label %.preheader3

.preheader3:                                      ; preds = %302, %.preheader3.preheader
  %288 = phi i32 [ %291, %302 ], [ %286, %.preheader3.preheader ]
  %289 = phi i32 [ %303, %302 ], [ 0, %.preheader3.preheader ]
  store i32 %289, ptr %2, align 4
  %290 = icmp slt i32 %289, 2
  br i1 %290, label %.preheader2.preheader, label %304

.preheader2.preheader:                            ; preds = %.preheader3
  br label %.preheader2

.preheader2:                                      ; preds = %294, %.preheader2.preheader
  %291 = phi i32 [ %286, %294 ], [ %288, %.preheader2.preheader ]
  %292 = phi i32 [ %301, %294 ], [ 0, %.preheader2.preheader ]
  store i32 %292, ptr %3, align 4
  %293 = icmp slt i32 %292, 2
  br i1 %293, label %294, label %302

294:                                              ; preds = %.preheader2
  %295 = shl i32 %292, 6
  %296 = shl i32 %289, 3
  %297 = add i32 %295, %296
  %298 = add nsw i32 %286, %297
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %299
  store i32 1, ptr %300, align 4
  %301 = add nsw i32 %292, 1
  br label %.preheader2, !llvm.loop !52

302:                                              ; preds = %.preheader2
  %303 = add nsw i32 %289, 1
  br label %.preheader3, !llvm.loop !53

304:                                              ; preds = %.preheader3
  %305 = add nsw i32 %288, 1
  br label %285, !llvm.loop !54

306:                                              ; preds = %285
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %307

307:                                              ; preds = %326, %306
  %308 = phi i32 [ 0, %306 ], [ %327, %326 ]
  store i32 %308, ptr %1, align 4
  %309 = icmp slt i32 %308, 2
  br i1 %309, label %.preheader1.preheader, label %328

.preheader1.preheader:                            ; preds = %307
  br label %.preheader1

.preheader1:                                      ; preds = %324, %.preheader1.preheader
  %310 = phi i32 [ %313, %324 ], [ %308, %.preheader1.preheader ]
  %311 = phi i32 [ %325, %324 ], [ 0, %.preheader1.preheader ]
  store i32 %311, ptr %2, align 4
  %312 = icmp slt i32 %311, 2
  br i1 %312, label %.preheader.preheader, label %326

.preheader.preheader:                             ; preds = %.preheader1
  br label %.preheader

.preheader:                                       ; preds = %316, %.preheader.preheader
  %313 = phi i32 [ %308, %316 ], [ %310, %.preheader.preheader ]
  %314 = phi i32 [ %323, %316 ], [ 0, %.preheader.preheader ]
  store i32 %314, ptr %3, align 4
  %315 = icmp slt i32 %314, 2
  br i1 %315, label %316, label %324

316:                                              ; preds = %.preheader
  %317 = shl i32 %314, 6
  %318 = shl i32 %311, 3
  %319 = add i32 %317, %318
  %320 = add nsw i32 %308, %319
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %321
  store i32 1, ptr %322, align 4
  %323 = add nsw i32 %314, 1
  br label %.preheader, !llvm.loop !55

324:                                              ; preds = %.preheader
  %325 = add nsw i32 %311, 1
  br label %.preheader1, !llvm.loop !56

326:                                              ; preds = %.preheader1
  %327 = add nsw i32 %310, 1
  br label %307, !llvm.loop !57

328:                                              ; preds = %307
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 73, ptr %4, align 4
  store i32 0, ptr @kount, align 4
  %329 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %329, 0
  br i1 %.not, label %332, label %330

330:                                              ; preds = %328
  %331 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %331, ptr @n, align 4
  br label %333

332:                                              ; preds = %328
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %.pre = load i32, ptr @n, align 4
  br label %333

333:                                              ; preds = %332, %330
  %334 = phi i32 [ %.pre, %332 ], [ %331, %330 ]
  %335 = call i32 @Trial(i32 noundef %334)
  %.not16 = icmp eq i32 %335, 0
  br i1 %.not16, label %336, label %337

336:                                              ; preds = %333
  %puts17 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %340

337:                                              ; preds = %333
  %338 = load i32, ptr @kount, align 4
  %.not18 = icmp eq i32 %338, 2005
  br i1 %.not18, label %340, label %339

339:                                              ; preds = %337
  %puts19 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %340

340:                                              ; preds = %339, %337, %336
  %341 = load i32, ptr @n, align 4
  %342 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %341) #4
  %343 = load i32, ptr @kount, align 4
  %344 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %343) #4
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
