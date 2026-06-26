; ModuleID = 'results\paper_full\Stanford_Puzzle\round_000\output.ll'
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
  %.phi.trans.insert = sext i32 %0 to i64
  %.phi.trans.insert1 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert1, align 4
  %.not1 = icmp sgt i32 0, %.pre
  br i1 %.not1, label %16, label %.lr.ph

.lr.ph:                                           ; preds = %2
  br label %3

3:                                                ; preds = %.lr.ph, %14
  %4 = phi i32 [ 0, %.lr.ph ], [ %15, %14 ]
  %5 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  %6 = zext nneg i32 %4 to i64
  %7 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %6
  %8 = load i32, ptr %7, align 4
  %.not2 = icmp eq i32 %8, 0
  br i1 %.not2, label %14, label %9

9:                                                ; preds = %3
  %10 = add nsw i32 %1, %4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %11
  %13 = load i32, ptr %12, align 4
  %.not3 = icmp eq i32 %13, 0
  br i1 %.not3, label %14, label %._crit_edge2

14:                                               ; preds = %9, %3
  %15 = add nuw nsw i32 %4, 1
  %.not = icmp sgt i32 %15, %.pre
  br i1 %.not, label %._crit_edge, label %3, !llvm.loop !7

._crit_edge:                                      ; preds = %14
  %split = phi i32 [ 1, %14 ]
  br label %16

._crit_edge2:                                     ; preds = %9
  %split3 = phi i32 [ 0, %9 ]
  br label %16

16:                                               ; preds = %._crit_edge2, %._crit_edge, %2
  %17 = phi i32 [ %split3, %._crit_edge2 ], [ %split, %._crit_edge ], [ 1, %2 ]
  ret i32 %17
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Place(i32 noundef %0, i32 noundef %1) #0 {
  %.phi.trans.insert = sext i32 %0 to i64
  %.phi.trans.insert1 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert1, align 4
  %.not1 = icmp sgt i32 0, %.pre
  br i1 %.not1, label %15, label %.lr.ph

.lr.ph:                                           ; preds = %2
  br label %3

3:                                                ; preds = %.lr.ph, %13
  %4 = phi i32 [ 0, %.lr.ph ], [ %14, %13 ]
  %5 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  %6 = zext nneg i32 %4 to i64
  %7 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %6
  %8 = load i32, ptr %7, align 4
  %.not3 = icmp eq i32 %8, 0
  br i1 %.not3, label %13, label %9

9:                                                ; preds = %3
  %10 = add nsw i32 %1, %4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %11
  store i32 1, ptr %12, align 4
  br label %13

13:                                               ; preds = %9, %3
  %14 = add nuw nsw i32 %4, 1
  %.not = icmp sgt i32 %14, %.pre
  br i1 %.not, label %._crit_edge, label %3, !llvm.loop !9

._crit_edge:                                      ; preds = %13
  br label %15

15:                                               ; preds = %._crit_edge, %2
  %16 = getelementptr inbounds [4 x i8], ptr @class, i64 %.phi.trans.insert
  %17 = load i32, ptr %16, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %18
  %20 = load i32, ptr %19, align 4
  %21 = add nsw i32 %20, -1
  store i32 %21, ptr %19, align 4
  %22 = icmp slt i32 %1, 512
  br i1 %22, label %.lr.ph3, label %31

.lr.ph3:                                          ; preds = %15
  br label %23

23:                                               ; preds = %.lr.ph3, %28
  %24 = phi i32 [ %1, %.lr.ph3 ], [ %29, %28 ]
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %25
  %27 = load i32, ptr %26, align 4
  %.not2 = icmp eq i32 %27, 0
  br i1 %.not2, label %._crit_edge5, label %28

28:                                               ; preds = %23
  %29 = add nsw i32 %24, 1
  %30 = icmp slt i32 %29, 512
  br i1 %30, label %23, label %._crit_edge4, !llvm.loop !10

._crit_edge4:                                     ; preds = %28
  %split = phi i32 [ 0, %28 ]
  br label %31

._crit_edge5:                                     ; preds = %23
  %split6 = phi i32 [ %24, %23 ]
  br label %31

31:                                               ; preds = %._crit_edge5, %._crit_edge4, %15
  %32 = phi i32 [ %split6, %._crit_edge5 ], [ %split, %._crit_edge4 ], [ 0, %15 ]
  ret i32 %32
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Remove(i32 noundef %0, i32 noundef %1) #0 {
  %.phi.trans.insert = sext i32 %0 to i64
  %.phi.trans.insert1 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert1, align 4
  %.not1 = icmp sgt i32 0, %.pre
  br i1 %.not1, label %15, label %.lr.ph

.lr.ph:                                           ; preds = %2
  br label %3

3:                                                ; preds = %.lr.ph, %13
  %4 = phi i32 [ 0, %.lr.ph ], [ %14, %13 ]
  %5 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  %6 = zext nneg i32 %4 to i64
  %7 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %6
  %8 = load i32, ptr %7, align 4
  %.not2 = icmp eq i32 %8, 0
  br i1 %.not2, label %13, label %9

9:                                                ; preds = %3
  %10 = add nsw i32 %1, %4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %11
  store i32 0, ptr %12, align 4
  br label %13

13:                                               ; preds = %9, %3
  %14 = add nuw nsw i32 %4, 1
  %.not = icmp sgt i32 %14, %.pre
  br i1 %.not, label %._crit_edge, label %3, !llvm.loop !11

._crit_edge:                                      ; preds = %13
  br label %15

15:                                               ; preds = %._crit_edge, %2
  %16 = getelementptr inbounds [4 x i8], ptr @class, i64 %.phi.trans.insert
  %17 = load i32, ptr %16, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %18
  %20 = load i32, ptr %19, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, ptr %19, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Trial(i32 noundef %0) #0 {
  %2 = load i32, ptr @kount, align 4
  %3 = add nsw i32 %2, 1
  store i32 %3, ptr @kount, align 4
  br label %4

4:                                                ; preds = %1, %19
  %5 = phi i32 [ 0, %1 ], [ %20, %19 ]
  %6 = zext nneg i32 %5 to i64
  %7 = getelementptr inbounds nuw [4 x i8], ptr @class, i64 %6
  %8 = load i32, ptr %7, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %9
  %11 = load i32, ptr %10, align 4
  %.not = icmp eq i32 %11, 0
  br i1 %.not, label %19, label %12

12:                                               ; preds = %4
  %13 = call i32 @Fit(i32 noundef %5, i32 noundef %0)
  %.not1 = icmp eq i32 %13, 0
  br i1 %.not1, label %19, label %14

14:                                               ; preds = %12
  %15 = call i32 @Place(i32 noundef %5, i32 noundef %0)
  %16 = call i32 @Trial(i32 noundef %15)
  %.not2 = icmp ne i32 %16, 0
  %17 = icmp eq i32 %15, 0
  %or.cond = or i1 %.not2, %17
  br i1 %or.cond, label %22, label %18

18:                                               ; preds = %14
  call void @Remove(i32 noundef %5, i32 noundef %0)
  br label %19

19:                                               ; preds = %12, %18, %4
  %20 = add nuw nsw i32 %5, 1
  %21 = icmp samesign ult i32 %20, 13
  br i1 %21, label %4, label %22, !llvm.loop !12

22:                                               ; preds = %19, %14
  %23 = phi i32 [ 1, %14 ], [ 0, %19 ]
  ret i32 %23
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Puzzle() #0 {
  br label %1

.preheader40:                                     ; preds = %1
  br label %.preheader39

1:                                                ; preds = %0, %1
  %2 = phi i32 [ 0, %0 ], [ %5, %1 ]
  %3 = zext nneg i32 %2 to i64
  %4 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %3
  store i32 1, ptr %4, align 4
  %5 = add nuw nsw i32 %2, 1
  %6 = icmp samesign ult i32 %5, 512
  br i1 %6, label %1, label %.preheader40, !llvm.loop !13

.preheader39:                                     ; preds = %.preheader40, %22
  %7 = phi i32 [ 1, %.preheader40 ], [ %23, %22 ]
  br label %.preheader38

.preheader37:                                     ; preds = %22
  br label %.preheader36

.preheader38:                                     ; preds = %.preheader39, %19
  %8 = phi i32 [ 1, %.preheader39 ], [ %20, %19 ]
  br label %9

9:                                                ; preds = %.preheader38, %9
  %10 = phi i32 [ 1, %.preheader38 ], [ %17, %9 ]
  %11 = shl nuw nsw i32 %10, 6
  %12 = shl nuw nsw i32 %8, 3
  %13 = or disjoint i32 %11, %12
  %14 = or disjoint i32 %7, %13
  %15 = zext nneg i32 %14 to i64
  %16 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %15
  store i32 0, ptr %16, align 4
  %17 = add nuw nsw i32 %10, 1
  %18 = icmp samesign ult i32 %17, 6
  br i1 %18, label %9, label %19, !llvm.loop !14

19:                                               ; preds = %9
  %20 = add nuw nsw i32 %8, 1
  %21 = icmp samesign ult i32 %20, 6
  br i1 %21, label %.preheader38, label %22, !llvm.loop !15

22:                                               ; preds = %19
  %23 = add nuw nsw i32 %7, 1
  %24 = icmp samesign ult i32 %23, 6
  br i1 %24, label %.preheader39, label %.preheader37, !llvm.loop !16

.preheader36:                                     ; preds = %.preheader37, %34
  %25 = phi i32 [ 0, %.preheader37 ], [ %35, %34 ]
  br label %26

.preheader35:                                     ; preds = %34
  br label %.preheader34

26:                                               ; preds = %.preheader36, %26
  %27 = phi i32 [ 0, %.preheader36 ], [ %32, %26 ]
  %28 = zext nneg i32 %25 to i64
  %29 = getelementptr inbounds nuw [2048 x i8], ptr @p, i64 %28
  %30 = zext nneg i32 %27 to i64
  %31 = getelementptr inbounds nuw [4 x i8], ptr %29, i64 %30
  store i32 0, ptr %31, align 4
  %32 = add nuw nsw i32 %27, 1
  %33 = icmp samesign ult i32 %32, 512
  br i1 %33, label %26, label %34, !llvm.loop !17

34:                                               ; preds = %26
  %35 = add nuw nsw i32 %25, 1
  %36 = icmp samesign ult i32 %35, 13
  br i1 %36, label %.preheader36, label %.preheader35, !llvm.loop !18

.preheader34:                                     ; preds = %.preheader35, %47
  %37 = phi i32 [ 0, %.preheader35 ], [ %48, %47 ]
  br label %.preheader33

.preheader33:                                     ; preds = %.preheader34, %44
  %38 = phi i32 [ 0, %.preheader34 ], [ %45, %44 ]
  br label %39

39:                                               ; preds = %.preheader33, %39
  %40 = shl nuw nsw i32 %38, 3
  %41 = or disjoint i32 %37, %40
  %42 = zext nneg i32 %41 to i64
  %43 = getelementptr inbounds nuw [4 x i8], ptr @p, i64 %42
  store i32 1, ptr %43, align 4
  br i1 false, label %39, label %44, !llvm.loop !19

44:                                               ; preds = %39
  %45 = add nuw nsw i32 %38, 1
  %46 = icmp samesign ult i32 %45, 2
  br i1 %46, label %.preheader33, label %47, !llvm.loop !20

47:                                               ; preds = %44
  %48 = add nuw nsw i32 %37, 1
  %49 = icmp samesign ult i32 %48, 4
  br i1 %49, label %.preheader34, label %50, !llvm.loop !21

50:                                               ; preds = %47
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %.preheader32

.preheader32:                                     ; preds = %50, %60
  %51 = phi i32 [ 0, %50 ], [ %61, %60 ]
  br label %.preheader30

.loopexit31:                                      ; preds = %52
  br i1 false, label %.preheader30, label %60, !llvm.loop !22

.preheader30:                                     ; preds = %.preheader32, %.loopexit31
  br label %52

52:                                               ; preds = %.preheader30, %52
  %53 = phi i32 [ 0, %.preheader30 ], [ %58, %52 ]
  %54 = shl nuw nsw i32 %53, 6
  %55 = or disjoint i32 %51, %54
  %56 = zext nneg i32 %55 to i64
  %57 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %56
  store i32 1, ptr %57, align 4
  %58 = add nuw nsw i32 %53, 1
  %59 = icmp samesign ult i32 %58, 4
  br i1 %59, label %52, label %.loopexit31, !llvm.loop !23

60:                                               ; preds = %.loopexit31
  %61 = add nuw nsw i32 %51, 1
  %62 = icmp samesign ult i32 %61, 2
  br i1 %62, label %.preheader32, label %63, !llvm.loop !24

63:                                               ; preds = %60
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %.preheader28

.loopexit29:                                      ; preds = %74
  br i1 false, label %.preheader28, label %77, !llvm.loop !25

.preheader28:                                     ; preds = %63, %.loopexit29
  br label %.preheader27

.preheader27:                                     ; preds = %.preheader28, %74
  %64 = phi i32 [ 0, %.preheader28 ], [ %75, %74 ]
  br label %65

65:                                               ; preds = %.preheader27, %65
  %66 = phi i32 [ 0, %.preheader27 ], [ %72, %65 ]
  %67 = shl nuw nsw i32 %66, 6
  %68 = shl nuw nsw i32 %64, 3
  %69 = or disjoint i32 %67, %68
  %70 = zext nneg i32 %69 to i64
  %71 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %70
  store i32 1, ptr %71, align 4
  %72 = add nuw nsw i32 %66, 1
  %73 = icmp samesign ult i32 %72, 2
  br i1 %73, label %65, label %74, !llvm.loop !26

74:                                               ; preds = %65
  %75 = add nuw nsw i32 %64, 1
  %76 = icmp samesign ult i32 %75, 4
  br i1 %76, label %.preheader27, label %.loopexit29, !llvm.loop !27

77:                                               ; preds = %.loopexit29
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %.preheader26

.preheader26:                                     ; preds = %77, %88
  %78 = phi i32 [ 0, %77 ], [ %89, %88 ]
  br label %.preheader25

.preheader25:                                     ; preds = %.preheader26, %85
  %79 = phi i32 [ 0, %.preheader26 ], [ %86, %85 ]
  br label %80

80:                                               ; preds = %.preheader25, %80
  %81 = shl nuw nsw i32 %79, 3
  %82 = or disjoint i32 %78, %81
  %83 = zext nneg i32 %82 to i64
  %84 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %83
  store i32 1, ptr %84, align 4
  br i1 false, label %80, label %85, !llvm.loop !28

85:                                               ; preds = %80
  %86 = add nuw nsw i32 %79, 1
  %87 = icmp samesign ult i32 %86, 4
  br i1 %87, label %.preheader25, label %88, !llvm.loop !29

88:                                               ; preds = %85
  %89 = add nuw nsw i32 %78, 1
  %90 = icmp samesign ult i32 %89, 2
  br i1 %90, label %.preheader26, label %91, !llvm.loop !30

91:                                               ; preds = %88
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %.preheader24

.preheader24:                                     ; preds = %91, %101
  %92 = phi i32 [ 0, %91 ], [ %102, %101 ]
  br label %.preheader22

.loopexit23:                                      ; preds = %93
  br i1 false, label %.preheader22, label %101, !llvm.loop !31

.preheader22:                                     ; preds = %.preheader24, %.loopexit23
  br label %93

93:                                               ; preds = %.preheader22, %93
  %94 = phi i32 [ 0, %.preheader22 ], [ %99, %93 ]
  %95 = shl nuw nsw i32 %94, 6
  %96 = or disjoint i32 %92, %95
  %97 = zext nneg i32 %96 to i64
  %98 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %97
  store i32 1, ptr %98, align 4
  %99 = add nuw nsw i32 %94, 1
  %100 = icmp samesign ult i32 %99, 2
  br i1 %100, label %93, label %.loopexit23, !llvm.loop !32

101:                                              ; preds = %.loopexit23
  %102 = add nuw nsw i32 %92, 1
  %103 = icmp samesign ult i32 %102, 4
  br i1 %103, label %.preheader24, label %104, !llvm.loop !33

104:                                              ; preds = %101
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %.preheader20

.loopexit21:                                      ; preds = %115
  br i1 false, label %.preheader20, label %118, !llvm.loop !34

.preheader20:                                     ; preds = %104, %.loopexit21
  br label %.preheader19

.preheader19:                                     ; preds = %.preheader20, %115
  %105 = phi i32 [ 0, %.preheader20 ], [ %116, %115 ]
  br label %106

106:                                              ; preds = %.preheader19, %106
  %107 = phi i32 [ 0, %.preheader19 ], [ %113, %106 ]
  %108 = shl nuw nsw i32 %107, 6
  %109 = shl nuw nsw i32 %105, 3
  %110 = or disjoint i32 %108, %109
  %111 = zext nneg i32 %110 to i64
  %112 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %111
  store i32 1, ptr %112, align 4
  %113 = add nuw nsw i32 %107, 1
  %114 = icmp samesign ult i32 %113, 4
  br i1 %114, label %106, label %115, !llvm.loop !35

115:                                              ; preds = %106
  %116 = add nuw nsw i32 %105, 1
  %117 = icmp samesign ult i32 %116, 2
  br i1 %117, label %.preheader19, label %.loopexit21, !llvm.loop !36

118:                                              ; preds = %.loopexit21
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %.preheader18

.preheader18:                                     ; preds = %118, %123
  %119 = phi i32 [ 0, %118 ], [ %124, %123 ]
  br label %.preheader16

.loopexit17:                                      ; preds = %120
  br i1 false, label %.preheader16, label %123, !llvm.loop !37

.preheader16:                                     ; preds = %.preheader18, %.loopexit17
  br label %120

120:                                              ; preds = %.preheader16, %120
  %121 = zext nneg i32 %119 to i64
  %122 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %121
  store i32 1, ptr %122, align 4
  br i1 false, label %120, label %.loopexit17, !llvm.loop !38

123:                                              ; preds = %.loopexit17
  %124 = add nuw nsw i32 %119, 1
  %125 = icmp samesign ult i32 %124, 3
  br i1 %125, label %.preheader18, label %126, !llvm.loop !39

126:                                              ; preds = %123
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %.preheader14

.loopexit15:                                      ; preds = %132
  br i1 false, label %.preheader14, label %135, !llvm.loop !40

.preheader14:                                     ; preds = %126, %.loopexit15
  br label %.preheader13

.preheader13:                                     ; preds = %.preheader14, %132
  %127 = phi i32 [ 0, %.preheader14 ], [ %133, %132 ]
  br label %128

128:                                              ; preds = %.preheader13, %128
  %129 = shl nuw nsw i32 %127, 3
  %130 = zext nneg i32 %129 to i64
  %131 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %130
  store i32 1, ptr %131, align 4
  br i1 false, label %128, label %132, !llvm.loop !41

132:                                              ; preds = %128
  %133 = add nuw nsw i32 %127, 1
  %134 = icmp samesign ult i32 %133, 3
  br i1 %134, label %.preheader13, label %.loopexit15, !llvm.loop !42

135:                                              ; preds = %.loopexit15
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %.preheader11

.loopexit12:                                      ; preds = %.loopexit10
  br i1 false, label %.preheader11, label %143, !llvm.loop !43

.preheader11:                                     ; preds = %135, %.loopexit12
  br label %.preheader9

.loopexit10:                                      ; preds = %136
  br i1 false, label %.preheader9, label %.loopexit12, !llvm.loop !44

.preheader9:                                      ; preds = %.preheader11, %.loopexit10
  br label %136

136:                                              ; preds = %.preheader9, %136
  %137 = phi i32 [ 0, %.preheader9 ], [ %141, %136 ]
  %138 = shl nuw nsw i32 %137, 6
  %139 = zext nneg i32 %138 to i64
  %140 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %139
  store i32 1, ptr %140, align 4
  %141 = add nuw nsw i32 %137, 1
  %142 = icmp samesign ult i32 %141, 3
  br i1 %142, label %136, label %.loopexit10, !llvm.loop !45

143:                                              ; preds = %.loopexit12
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %.preheader8

.preheader8:                                      ; preds = %143, %154
  %144 = phi i32 [ 0, %143 ], [ %155, %154 ]
  br label %.preheader7

.preheader7:                                      ; preds = %.preheader8, %151
  %145 = phi i32 [ 0, %.preheader8 ], [ %152, %151 ]
  br label %146

146:                                              ; preds = %.preheader7, %146
  %147 = shl nuw nsw i32 %145, 3
  %148 = or disjoint i32 %144, %147
  %149 = zext nneg i32 %148 to i64
  %150 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %149
  store i32 1, ptr %150, align 4
  br i1 false, label %146, label %151, !llvm.loop !46

151:                                              ; preds = %146
  %152 = add nuw nsw i32 %145, 1
  %153 = icmp samesign ult i32 %152, 2
  br i1 %153, label %.preheader7, label %154, !llvm.loop !47

154:                                              ; preds = %151
  %155 = add nuw nsw i32 %144, 1
  %156 = icmp samesign ult i32 %155, 2
  br i1 %156, label %.preheader8, label %157, !llvm.loop !48

157:                                              ; preds = %154
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %.preheader6

.preheader6:                                      ; preds = %157, %167
  %158 = phi i32 [ 0, %157 ], [ %168, %167 ]
  br label %.preheader4

.loopexit5:                                       ; preds = %159
  br i1 false, label %.preheader4, label %167, !llvm.loop !49

.preheader4:                                      ; preds = %.preheader6, %.loopexit5
  br label %159

159:                                              ; preds = %.preheader4, %159
  %160 = phi i32 [ 0, %.preheader4 ], [ %165, %159 ]
  %161 = shl nuw nsw i32 %160, 6
  %162 = or disjoint i32 %158, %161
  %163 = zext nneg i32 %162 to i64
  %164 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %163
  store i32 1, ptr %164, align 4
  %165 = add nuw nsw i32 %160, 1
  %166 = icmp samesign ult i32 %165, 2
  br i1 %166, label %159, label %.loopexit5, !llvm.loop !50

167:                                              ; preds = %.loopexit5
  %168 = add nuw nsw i32 %158, 1
  %169 = icmp samesign ult i32 %168, 2
  br i1 %169, label %.preheader6, label %170, !llvm.loop !51

170:                                              ; preds = %167
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %.preheader3

.loopexit:                                        ; preds = %181
  br i1 false, label %.preheader3, label %184, !llvm.loop !52

.preheader3:                                      ; preds = %170, %.loopexit
  br label %.preheader2

.preheader2:                                      ; preds = %.preheader3, %181
  %171 = phi i32 [ 0, %.preheader3 ], [ %182, %181 ]
  br label %172

172:                                              ; preds = %.preheader2, %172
  %173 = phi i32 [ 0, %.preheader2 ], [ %179, %172 ]
  %174 = shl nuw nsw i32 %173, 6
  %175 = shl nuw nsw i32 %171, 3
  %176 = or disjoint i32 %174, %175
  %177 = zext nneg i32 %176 to i64
  %178 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %177
  store i32 1, ptr %178, align 4
  %179 = add nuw nsw i32 %173, 1
  %180 = icmp samesign ult i32 %179, 2
  br i1 %180, label %172, label %181, !llvm.loop !53

181:                                              ; preds = %172
  %182 = add nuw nsw i32 %171, 1
  %183 = icmp samesign ult i32 %182, 2
  br i1 %183, label %.preheader2, label %.loopexit, !llvm.loop !54

184:                                              ; preds = %.loopexit
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %.preheader1

.preheader1:                                      ; preds = %184, %200
  %185 = phi i32 [ 0, %184 ], [ %201, %200 ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader1, %197
  %186 = phi i32 [ 0, %.preheader1 ], [ %198, %197 ]
  br label %187

187:                                              ; preds = %.preheader, %187
  %188 = phi i32 [ 0, %.preheader ], [ %195, %187 ]
  %189 = shl nuw nsw i32 %188, 6
  %190 = shl nuw nsw i32 %186, 3
  %191 = or disjoint i32 %189, %190
  %192 = or disjoint i32 %185, %191
  %193 = zext nneg i32 %192 to i64
  %194 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %193
  store i32 1, ptr %194, align 4
  %195 = add nuw nsw i32 %188, 1
  %196 = icmp samesign ult i32 %195, 2
  br i1 %196, label %187, label %197, !llvm.loop !55

197:                                              ; preds = %187
  %198 = add nuw nsw i32 %186, 1
  %199 = icmp samesign ult i32 %198, 2
  br i1 %199, label %.preheader, label %200, !llvm.loop !56

200:                                              ; preds = %197
  %201 = add nuw nsw i32 %185, 1
  %202 = icmp samesign ult i32 %201, 2
  br i1 %202, label %.preheader1, label %203, !llvm.loop !57

203:                                              ; preds = %200
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 0, ptr @kount, align 4
  %204 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %204, 0
  br i1 %.not, label %207, label %205

205:                                              ; preds = %203
  %206 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %206, ptr @n, align 4
  br label %208

207:                                              ; preds = %203
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %.pre = load i32, ptr @n, align 4
  br label %208

208:                                              ; preds = %207, %205
  %209 = phi i32 [ %.pre, %207 ], [ %206, %205 ]
  %210 = call i32 @Trial(i32 noundef %209)
  %.not1 = icmp eq i32 %210, 0
  br i1 %.not1, label %211, label %212

211:                                              ; preds = %208
  %puts2 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %215

212:                                              ; preds = %208
  %213 = load i32, ptr @kount, align 4
  %.not3 = icmp eq i32 %213, 2005
  br i1 %.not3, label %215, label %214

214:                                              ; preds = %212
  %puts4 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %215

215:                                              ; preds = %212, %214, %211
  %216 = load i32, ptr @n, align 4
  %217 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %216) #3
  %218 = load i32, ptr @kount, align 4
  %219 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %218) #3
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %0, %1
  %2 = phi i32 [ 0, %0 ], [ %3, %1 ]
  call void @Puzzle()
  %3 = add nuw nsw i32 %2, 1
  %4 = icmp samesign ult i32 %3, 100
  br i1 %4, label %1, label %5, !llvm.loop !58

5:                                                ; preds = %1
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
