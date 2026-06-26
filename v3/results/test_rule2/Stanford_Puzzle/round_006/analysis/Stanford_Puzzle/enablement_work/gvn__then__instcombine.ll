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
  %.phi.trans.insert = sext i32 %0 to i64
  %.phi.trans.insert1 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert1, align 4
  br label %3

3:                                                ; preds = %15, %2
  %4 = phi i32 [ 0, %2 ], [ %16, %15 ]
  %.not = icmp sgt i32 %4, %.pre
  br i1 %.not, label %17, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  %7 = zext nneg i32 %4 to i64
  %8 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4
  %.not2 = icmp eq i32 %9, 0
  br i1 %.not2, label %15, label %10

10:                                               ; preds = %5
  %11 = add nsw i32 %1, %4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %12
  %14 = load i32, ptr %13, align 4
  %.not3 = icmp eq i32 %14, 0
  br i1 %.not3, label %15, label %17

15:                                               ; preds = %10, %5
  %16 = add nuw nsw i32 %4, 1
  br label %3, !llvm.loop !7

17:                                               ; preds = %10, %3
  %storemerge1 = phi i32 [ 0, %10 ], [ 1, %3 ]
  ret i32 %storemerge1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Place(i32 noundef %0, i32 noundef %1) #0 {
  %.phi.trans.insert = sext i32 %0 to i64
  %.phi.trans.insert1 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert1, align 4
  br label %3

3:                                                ; preds = %14, %2
  %4 = phi i32 [ 0, %2 ], [ %15, %14 ]
  %.not = icmp sgt i32 %4, %.pre
  br i1 %.not, label %16, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  %7 = zext nneg i32 %4 to i64
  %8 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4
  %.not4 = icmp eq i32 %9, 0
  br i1 %.not4, label %14, label %10

10:                                               ; preds = %5
  %11 = add nsw i32 %1, %4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %12
  store i32 1, ptr %13, align 4
  br label %14

14:                                               ; preds = %10, %5
  %15 = add nuw nsw i32 %4, 1
  br label %3, !llvm.loop !9

16:                                               ; preds = %3
  %17 = getelementptr inbounds [4 x i8], ptr @class, i64 %.phi.trans.insert
  %18 = load i32, ptr %17, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %19
  %21 = load i32, ptr %20, align 4
  %22 = add nsw i32 %21, -1
  store i32 %22, ptr %20, align 4
  %23 = sext i32 %1 to i64
  %smax = call i32 @llvm.smax.i32(i32 %1, i32 512)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %24

24:                                               ; preds = %30, %16
  %indvars.iv = phi i64 [ %indvars.iv.next, %30 ], [ %23, %16 ]
  %25 = trunc nsw i64 %indvars.iv to i32
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit.loopexit, label %26

26:                                               ; preds = %24
  %27 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %indvars.iv
  %28 = load i32, ptr %27, align 4
  %.not3 = icmp eq i32 %28, 0
  br i1 %.not3, label %29, label %30

29:                                               ; preds = %26
  br label %.loopexit

30:                                               ; preds = %26
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %24, !llvm.loop !10

.loopexit.loopexit:                               ; preds = %24
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %29
  %storemerge2 = phi i32 [ %25, %29 ], [ 0, %.loopexit.loopexit ]
  ret i32 %storemerge2
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Remove(i32 noundef %0, i32 noundef %1) #0 {
  %.phi.trans.insert = sext i32 %0 to i64
  %.phi.trans.insert1 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert1, align 4
  br label %3

3:                                                ; preds = %14, %2
  %4 = phi i32 [ 0, %2 ], [ %15, %14 ]
  %.not = icmp sgt i32 %4, %.pre
  br i1 %.not, label %16, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  %7 = zext nneg i32 %4 to i64
  %8 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4
  %.not1 = icmp eq i32 %9, 0
  br i1 %.not1, label %14, label %10

10:                                               ; preds = %5
  %11 = add nsw i32 %1, %4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %12
  store i32 0, ptr %13, align 4
  br label %14

14:                                               ; preds = %10, %5
  %15 = add nuw nsw i32 %4, 1
  br label %3, !llvm.loop !11

16:                                               ; preds = %3
  %17 = getelementptr inbounds [4 x i8], ptr @class, i64 %.phi.trans.insert
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

4:                                                ; preds = %21, %1
  %5 = phi i32 [ 0, %1 ], [ %22, %21 ]
  %6 = icmp samesign ult i32 %5, 13
  br i1 %6, label %7, label %23

7:                                                ; preds = %4
  %8 = zext nneg i32 %5 to i64
  %9 = getelementptr inbounds nuw [4 x i8], ptr @class, i64 %8
  %10 = load i32, ptr %9, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %11
  %13 = load i32, ptr %12, align 4
  %.not = icmp eq i32 %13, 0
  br i1 %.not, label %21, label %14

14:                                               ; preds = %7
  %15 = call i32 @Fit(i32 noundef %5, i32 noundef %0)
  %.not2 = icmp eq i32 %15, 0
  br i1 %.not2, label %21, label %16

16:                                               ; preds = %14
  %17 = call i32 @Place(i32 noundef %5, i32 noundef %0)
  %18 = call i32 @Trial(i32 noundef %17)
  %.not3 = icmp ne i32 %18, 0
  %19 = icmp eq i32 %17, 0
  %or.cond = or i1 %.not3, %19
  br i1 %or.cond, label %23, label %20

20:                                               ; preds = %16
  call void @Remove(i32 noundef %5, i32 noundef %0)
  br label %21

21:                                               ; preds = %20, %14, %7
  %22 = add nuw nsw i32 %5, 1
  br label %4, !llvm.loop !12

23:                                               ; preds = %16, %4
  %storemerge1 = phi i32 [ 1, %16 ], [ 0, %4 ]
  ret i32 %storemerge1
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Puzzle() #0 {
  br label %1

1:                                                ; preds = %4, %0
  %2 = phi i32 [ 0, %0 ], [ %7, %4 ]
  %3 = icmp samesign ult i32 %2, 512
  br i1 %3, label %4, label %.preheader31.preheader

.preheader31.preheader:                           ; preds = %1
  br label %.preheader31

4:                                                ; preds = %1
  %5 = zext nneg i32 %2 to i64
  %6 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %5
  store i32 1, ptr %6, align 4
  %7 = add nuw nsw i32 %2, 1
  br label %1, !llvm.loop !13

.preheader31:                                     ; preds = %24, %.preheader31.preheader
  %8 = phi i32 [ %25, %24 ], [ 1, %.preheader31.preheader ]
  %9 = icmp samesign ult i32 %8, 6
  br i1 %9, label %.preheader30.preheader, label %.preheader28.preheader

.preheader30.preheader:                           ; preds = %.preheader31
  br label %.preheader30

.preheader28.preheader:                           ; preds = %.preheader31
  br label %.preheader28

.preheader30:                                     ; preds = %22, %.preheader30.preheader
  %10 = phi i32 [ %23, %22 ], [ 1, %.preheader30.preheader ]
  %11 = icmp samesign ult i32 %10, 6
  br i1 %11, label %.preheader29.preheader, label %24

.preheader29.preheader:                           ; preds = %.preheader30
  br label %.preheader29

.preheader29:                                     ; preds = %14, %.preheader29.preheader
  %12 = phi i32 [ %21, %14 ], [ 1, %.preheader29.preheader ]
  %13 = icmp samesign ult i32 %12, 6
  br i1 %13, label %14, label %22

14:                                               ; preds = %.preheader29
  %15 = shl nuw nsw i32 %12, 6
  %16 = shl nuw nsw i32 %10, 3
  %17 = or disjoint i32 %15, %16
  %18 = or disjoint i32 %8, %17
  %19 = zext nneg i32 %18 to i64
  %20 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %19
  store i32 0, ptr %20, align 4
  %21 = add nuw nsw i32 %12, 1
  br label %.preheader29, !llvm.loop !14

22:                                               ; preds = %.preheader29
  %23 = add nuw nsw i32 %10, 1
  br label %.preheader30, !llvm.loop !15

24:                                               ; preds = %.preheader30
  %25 = add nuw nsw i32 %8, 1
  br label %.preheader31, !llvm.loop !16

.preheader28:                                     ; preds = %36, %.preheader28.preheader
  %26 = phi i32 [ %37, %36 ], [ 0, %.preheader28.preheader ]
  %27 = icmp samesign ult i32 %26, 13
  br i1 %27, label %.preheader27.preheader, label %.preheader26.preheader

.preheader27.preheader:                           ; preds = %.preheader28
  br label %.preheader27

.preheader26.preheader:                           ; preds = %.preheader28
  br label %.preheader26

.preheader27:                                     ; preds = %30, %.preheader27.preheader
  %28 = phi i32 [ %35, %30 ], [ 0, %.preheader27.preheader ]
  %29 = icmp samesign ult i32 %28, 512
  br i1 %29, label %30, label %36

30:                                               ; preds = %.preheader27
  %31 = zext nneg i32 %26 to i64
  %32 = getelementptr inbounds nuw [2048 x i8], ptr @p, i64 %31
  %33 = zext nneg i32 %28 to i64
  %34 = getelementptr inbounds nuw [4 x i8], ptr %32, i64 %33
  store i32 0, ptr %34, align 4
  %35 = add nuw nsw i32 %28, 1
  br label %.preheader27, !llvm.loop !17

36:                                               ; preds = %.preheader27
  %37 = add nuw nsw i32 %26, 1
  br label %.preheader28, !llvm.loop !18

.preheader26:                                     ; preds = %50, %.preheader26.preheader
  %38 = phi i32 [ %51, %50 ], [ 0, %.preheader26.preheader ]
  %39 = icmp samesign ult i32 %38, 4
  br i1 %39, label %.preheader25.preheader, label %52

.preheader25.preheader:                           ; preds = %.preheader26
  br label %.preheader25

.preheader25:                                     ; preds = %48, %.preheader25.preheader
  %40 = phi i32 [ %49, %48 ], [ 0, %.preheader25.preheader ]
  %41 = icmp samesign ult i32 %40, 2
  br i1 %41, label %.preheader24.preheader, label %50

.preheader24.preheader:                           ; preds = %.preheader25
  br label %.preheader24

.preheader24:                                     ; preds = %43, %.preheader24.preheader
  %42 = phi i1 [ false, %43 ], [ true, %.preheader24.preheader ]
  br i1 %42, label %43, label %48

43:                                               ; preds = %.preheader24
  %44 = shl nuw nsw i32 %40, 3
  %45 = or disjoint i32 %38, %44
  %46 = zext nneg i32 %45 to i64
  %47 = getelementptr inbounds nuw [4 x i8], ptr @p, i64 %46
  store i32 1, ptr %47, align 4
  br label %.preheader24, !llvm.loop !19

48:                                               ; preds = %.preheader24
  %49 = add nuw nsw i32 %40, 1
  br label %.preheader25, !llvm.loop !20

50:                                               ; preds = %.preheader25
  %51 = add nuw nsw i32 %38, 1
  br label %.preheader26, !llvm.loop !21

52:                                               ; preds = %.preheader26
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %53

53:                                               ; preds = %66, %52
  %54 = phi i32 [ 0, %52 ], [ %67, %66 ]
  %55 = icmp samesign ult i32 %54, 2
  br i1 %55, label %.preheader23.preheader, label %68

.preheader23.preheader:                           ; preds = %53
  br label %.preheader23

.preheader23:                                     ; preds = %65, %.preheader23.preheader
  %56 = phi i1 [ false, %65 ], [ true, %.preheader23.preheader ]
  br i1 %56, label %.preheader22.preheader, label %66

.preheader22.preheader:                           ; preds = %.preheader23
  br label %.preheader22

.preheader22:                                     ; preds = %59, %.preheader22.preheader
  %57 = phi i32 [ %64, %59 ], [ 0, %.preheader22.preheader ]
  %58 = icmp samesign ult i32 %57, 4
  br i1 %58, label %59, label %65

59:                                               ; preds = %.preheader22
  %60 = shl nuw nsw i32 %57, 6
  %61 = or disjoint i32 %54, %60
  %62 = zext nneg i32 %61 to i64
  %63 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %62
  store i32 1, ptr %63, align 4
  %64 = add nuw nsw i32 %57, 1
  br label %.preheader22, !llvm.loop !22

65:                                               ; preds = %.preheader22
  br label %.preheader23, !llvm.loop !23

66:                                               ; preds = %.preheader23
  %67 = add nuw nsw i32 %54, 1
  br label %53, !llvm.loop !24

68:                                               ; preds = %53
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %69

69:                                               ; preds = %84, %68
  %70 = phi i1 [ true, %68 ], [ false, %84 ]
  br i1 %70, label %.preheader21.preheader, label %85

.preheader21.preheader:                           ; preds = %69
  br label %.preheader21

.preheader21:                                     ; preds = %82, %.preheader21.preheader
  %71 = phi i32 [ %83, %82 ], [ 0, %.preheader21.preheader ]
  %72 = icmp samesign ult i32 %71, 4
  br i1 %72, label %.preheader20.preheader, label %84

.preheader20.preheader:                           ; preds = %.preheader21
  br label %.preheader20

.preheader20:                                     ; preds = %75, %.preheader20.preheader
  %73 = phi i32 [ %81, %75 ], [ 0, %.preheader20.preheader ]
  %74 = icmp samesign ult i32 %73, 2
  br i1 %74, label %75, label %82

75:                                               ; preds = %.preheader20
  %76 = shl nuw nsw i32 %73, 6
  %77 = shl nuw nsw i32 %71, 3
  %78 = or disjoint i32 %76, %77
  %79 = zext nneg i32 %78 to i64
  %80 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %79
  store i32 1, ptr %80, align 4
  %81 = add nuw nsw i32 %73, 1
  br label %.preheader20, !llvm.loop !25

82:                                               ; preds = %.preheader20
  %83 = add nuw nsw i32 %71, 1
  br label %.preheader21, !llvm.loop !26

84:                                               ; preds = %.preheader21
  br label %69, !llvm.loop !27

85:                                               ; preds = %69
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %86

86:                                               ; preds = %99, %85
  %87 = phi i32 [ 0, %85 ], [ %100, %99 ]
  %88 = icmp samesign ult i32 %87, 2
  br i1 %88, label %.preheader19.preheader, label %101

.preheader19.preheader:                           ; preds = %86
  br label %.preheader19

.preheader19:                                     ; preds = %97, %.preheader19.preheader
  %89 = phi i32 [ %98, %97 ], [ 0, %.preheader19.preheader ]
  %90 = icmp samesign ult i32 %89, 4
  br i1 %90, label %.preheader18.preheader, label %99

.preheader18.preheader:                           ; preds = %.preheader19
  br label %.preheader18

.preheader18:                                     ; preds = %92, %.preheader18.preheader
  %91 = phi i1 [ false, %92 ], [ true, %.preheader18.preheader ]
  br i1 %91, label %92, label %97

92:                                               ; preds = %.preheader18
  %93 = shl nuw nsw i32 %89, 3
  %94 = or disjoint i32 %87, %93
  %95 = zext nneg i32 %94 to i64
  %96 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %95
  store i32 1, ptr %96, align 4
  br label %.preheader18, !llvm.loop !28

97:                                               ; preds = %.preheader18
  %98 = add nuw nsw i32 %89, 1
  br label %.preheader19, !llvm.loop !29

99:                                               ; preds = %.preheader19
  %100 = add nuw nsw i32 %87, 1
  br label %86, !llvm.loop !30

101:                                              ; preds = %86
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %102

102:                                              ; preds = %115, %101
  %103 = phi i32 [ 0, %101 ], [ %116, %115 ]
  %104 = icmp samesign ult i32 %103, 4
  br i1 %104, label %.preheader17.preheader, label %117

.preheader17.preheader:                           ; preds = %102
  br label %.preheader17

.preheader17:                                     ; preds = %114, %.preheader17.preheader
  %105 = phi i1 [ false, %114 ], [ true, %.preheader17.preheader ]
  br i1 %105, label %.preheader16.preheader, label %115

.preheader16.preheader:                           ; preds = %.preheader17
  br label %.preheader16

.preheader16:                                     ; preds = %108, %.preheader16.preheader
  %106 = phi i32 [ %113, %108 ], [ 0, %.preheader16.preheader ]
  %107 = icmp samesign ult i32 %106, 2
  br i1 %107, label %108, label %114

108:                                              ; preds = %.preheader16
  %109 = shl nuw nsw i32 %106, 6
  %110 = or disjoint i32 %103, %109
  %111 = zext nneg i32 %110 to i64
  %112 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %111
  store i32 1, ptr %112, align 4
  %113 = add nuw nsw i32 %106, 1
  br label %.preheader16, !llvm.loop !31

114:                                              ; preds = %.preheader16
  br label %.preheader17, !llvm.loop !32

115:                                              ; preds = %.preheader17
  %116 = add nuw nsw i32 %103, 1
  br label %102, !llvm.loop !33

117:                                              ; preds = %102
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %118

118:                                              ; preds = %133, %117
  %119 = phi i1 [ true, %117 ], [ false, %133 ]
  br i1 %119, label %.preheader15.preheader, label %134

.preheader15.preheader:                           ; preds = %118
  br label %.preheader15

.preheader15:                                     ; preds = %131, %.preheader15.preheader
  %120 = phi i32 [ %132, %131 ], [ 0, %.preheader15.preheader ]
  %121 = icmp samesign ult i32 %120, 2
  br i1 %121, label %.preheader14.preheader, label %133

.preheader14.preheader:                           ; preds = %.preheader15
  br label %.preheader14

.preheader14:                                     ; preds = %124, %.preheader14.preheader
  %122 = phi i32 [ %130, %124 ], [ 0, %.preheader14.preheader ]
  %123 = icmp samesign ult i32 %122, 4
  br i1 %123, label %124, label %131

124:                                              ; preds = %.preheader14
  %125 = shl nuw nsw i32 %122, 6
  %126 = shl nuw nsw i32 %120, 3
  %127 = or disjoint i32 %125, %126
  %128 = zext nneg i32 %127 to i64
  %129 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %128
  store i32 1, ptr %129, align 4
  %130 = add nuw nsw i32 %122, 1
  br label %.preheader14, !llvm.loop !34

131:                                              ; preds = %.preheader14
  %132 = add nuw nsw i32 %120, 1
  br label %.preheader15, !llvm.loop !35

133:                                              ; preds = %.preheader15
  br label %118, !llvm.loop !36

134:                                              ; preds = %118
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %135

135:                                              ; preds = %144, %134
  %136 = phi i32 [ 0, %134 ], [ %145, %144 ]
  %137 = icmp samesign ult i32 %136, 3
  br i1 %137, label %.preheader13.preheader, label %146

.preheader13.preheader:                           ; preds = %135
  br label %.preheader13

.preheader13:                                     ; preds = %143, %.preheader13.preheader
  %138 = phi i1 [ false, %143 ], [ true, %.preheader13.preheader ]
  br i1 %138, label %.preheader12.preheader, label %144

.preheader12.preheader:                           ; preds = %.preheader13
  br label %.preheader12

.preheader12:                                     ; preds = %140, %.preheader12.preheader
  %139 = phi i1 [ false, %140 ], [ true, %.preheader12.preheader ]
  br i1 %139, label %140, label %143

140:                                              ; preds = %.preheader12
  %141 = zext nneg i32 %136 to i64
  %142 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %141
  store i32 1, ptr %142, align 4
  br label %.preheader12, !llvm.loop !37

143:                                              ; preds = %.preheader12
  br label %.preheader13, !llvm.loop !38

144:                                              ; preds = %.preheader13
  %145 = add nuw nsw i32 %136, 1
  br label %135, !llvm.loop !39

146:                                              ; preds = %135
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %147

147:                                              ; preds = %158, %146
  %148 = phi i1 [ true, %146 ], [ false, %158 ]
  br i1 %148, label %.preheader11.preheader, label %159

.preheader11.preheader:                           ; preds = %147
  br label %.preheader11

.preheader11:                                     ; preds = %156, %.preheader11.preheader
  %149 = phi i32 [ %157, %156 ], [ 0, %.preheader11.preheader ]
  %150 = icmp samesign ult i32 %149, 3
  br i1 %150, label %.preheader10.preheader, label %158

.preheader10.preheader:                           ; preds = %.preheader11
  br label %.preheader10

.preheader10:                                     ; preds = %152, %.preheader10.preheader
  %151 = phi i1 [ false, %152 ], [ true, %.preheader10.preheader ]
  br i1 %151, label %152, label %156

152:                                              ; preds = %.preheader10
  %153 = shl nuw nsw i32 %149, 3
  %154 = zext nneg i32 %153 to i64
  %155 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %154
  store i32 1, ptr %155, align 4
  br label %.preheader10, !llvm.loop !40

156:                                              ; preds = %.preheader10
  %157 = add nuw nsw i32 %149, 1
  br label %.preheader11, !llvm.loop !41

158:                                              ; preds = %.preheader11
  br label %147, !llvm.loop !42

159:                                              ; preds = %147
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %160

160:                                              ; preds = %171, %159
  %161 = phi i1 [ true, %159 ], [ false, %171 ]
  br i1 %161, label %.preheader9.preheader, label %172

.preheader9.preheader:                            ; preds = %160
  br label %.preheader9

.preheader9:                                      ; preds = %170, %.preheader9.preheader
  %162 = phi i1 [ false, %170 ], [ true, %.preheader9.preheader ]
  br i1 %162, label %.preheader8.preheader, label %171

.preheader8.preheader:                            ; preds = %.preheader9
  br label %.preheader8

.preheader8:                                      ; preds = %165, %.preheader8.preheader
  %163 = phi i32 [ %169, %165 ], [ 0, %.preheader8.preheader ]
  %164 = icmp samesign ult i32 %163, 3
  br i1 %164, label %165, label %170

165:                                              ; preds = %.preheader8
  %166 = shl nuw nsw i32 %163, 6
  %167 = zext nneg i32 %166 to i64
  %168 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %167
  store i32 1, ptr %168, align 4
  %169 = add nuw nsw i32 %163, 1
  br label %.preheader8, !llvm.loop !43

170:                                              ; preds = %.preheader8
  br label %.preheader9, !llvm.loop !44

171:                                              ; preds = %.preheader9
  br label %160, !llvm.loop !45

172:                                              ; preds = %160
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %173

173:                                              ; preds = %186, %172
  %174 = phi i32 [ 0, %172 ], [ %187, %186 ]
  %175 = icmp samesign ult i32 %174, 2
  br i1 %175, label %.preheader7.preheader, label %188

.preheader7.preheader:                            ; preds = %173
  br label %.preheader7

.preheader7:                                      ; preds = %184, %.preheader7.preheader
  %176 = phi i32 [ %185, %184 ], [ 0, %.preheader7.preheader ]
  %177 = icmp samesign ult i32 %176, 2
  br i1 %177, label %.preheader6.preheader, label %186

.preheader6.preheader:                            ; preds = %.preheader7
  br label %.preheader6

.preheader6:                                      ; preds = %179, %.preheader6.preheader
  %178 = phi i1 [ false, %179 ], [ true, %.preheader6.preheader ]
  br i1 %178, label %179, label %184

179:                                              ; preds = %.preheader6
  %180 = shl nuw nsw i32 %176, 3
  %181 = or disjoint i32 %174, %180
  %182 = zext nneg i32 %181 to i64
  %183 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %182
  store i32 1, ptr %183, align 4
  br label %.preheader6, !llvm.loop !46

184:                                              ; preds = %.preheader6
  %185 = add nuw nsw i32 %176, 1
  br label %.preheader7, !llvm.loop !47

186:                                              ; preds = %.preheader7
  %187 = add nuw nsw i32 %174, 1
  br label %173, !llvm.loop !48

188:                                              ; preds = %173
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %189

189:                                              ; preds = %202, %188
  %190 = phi i32 [ 0, %188 ], [ %203, %202 ]
  %191 = icmp samesign ult i32 %190, 2
  br i1 %191, label %.preheader5.preheader, label %204

.preheader5.preheader:                            ; preds = %189
  br label %.preheader5

.preheader5:                                      ; preds = %201, %.preheader5.preheader
  %192 = phi i1 [ false, %201 ], [ true, %.preheader5.preheader ]
  br i1 %192, label %.preheader4.preheader, label %202

.preheader4.preheader:                            ; preds = %.preheader5
  br label %.preheader4

.preheader4:                                      ; preds = %195, %.preheader4.preheader
  %193 = phi i32 [ %200, %195 ], [ 0, %.preheader4.preheader ]
  %194 = icmp samesign ult i32 %193, 2
  br i1 %194, label %195, label %201

195:                                              ; preds = %.preheader4
  %196 = shl nuw nsw i32 %193, 6
  %197 = or disjoint i32 %190, %196
  %198 = zext nneg i32 %197 to i64
  %199 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %198
  store i32 1, ptr %199, align 4
  %200 = add nuw nsw i32 %193, 1
  br label %.preheader4, !llvm.loop !49

201:                                              ; preds = %.preheader4
  br label %.preheader5, !llvm.loop !50

202:                                              ; preds = %.preheader5
  %203 = add nuw nsw i32 %190, 1
  br label %189, !llvm.loop !51

204:                                              ; preds = %189
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %205

205:                                              ; preds = %220, %204
  %206 = phi i1 [ true, %204 ], [ false, %220 ]
  br i1 %206, label %.preheader3.preheader, label %221

.preheader3.preheader:                            ; preds = %205
  br label %.preheader3

.preheader3:                                      ; preds = %218, %.preheader3.preheader
  %207 = phi i32 [ %219, %218 ], [ 0, %.preheader3.preheader ]
  %208 = icmp samesign ult i32 %207, 2
  br i1 %208, label %.preheader2.preheader, label %220

.preheader2.preheader:                            ; preds = %.preheader3
  br label %.preheader2

.preheader2:                                      ; preds = %211, %.preheader2.preheader
  %209 = phi i32 [ %217, %211 ], [ 0, %.preheader2.preheader ]
  %210 = icmp samesign ult i32 %209, 2
  br i1 %210, label %211, label %218

211:                                              ; preds = %.preheader2
  %212 = shl nuw nsw i32 %209, 6
  %213 = shl nuw nsw i32 %207, 3
  %214 = or disjoint i32 %212, %213
  %215 = zext nneg i32 %214 to i64
  %216 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %215
  store i32 1, ptr %216, align 4
  %217 = add nuw nsw i32 %209, 1
  br label %.preheader2, !llvm.loop !52

218:                                              ; preds = %.preheader2
  %219 = add nuw nsw i32 %207, 1
  br label %.preheader3, !llvm.loop !53

220:                                              ; preds = %.preheader3
  br label %205, !llvm.loop !54

221:                                              ; preds = %205
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %222

222:                                              ; preds = %239, %221
  %223 = phi i32 [ 0, %221 ], [ %240, %239 ]
  %224 = icmp samesign ult i32 %223, 2
  br i1 %224, label %.preheader1.preheader, label %241

.preheader1.preheader:                            ; preds = %222
  br label %.preheader1

.preheader1:                                      ; preds = %237, %.preheader1.preheader
  %225 = phi i32 [ %238, %237 ], [ 0, %.preheader1.preheader ]
  %226 = icmp samesign ult i32 %225, 2
  br i1 %226, label %.preheader.preheader, label %239

.preheader.preheader:                             ; preds = %.preheader1
  br label %.preheader

.preheader:                                       ; preds = %229, %.preheader.preheader
  %227 = phi i32 [ %236, %229 ], [ 0, %.preheader.preheader ]
  %228 = icmp samesign ult i32 %227, 2
  br i1 %228, label %229, label %237

229:                                              ; preds = %.preheader
  %230 = shl nuw nsw i32 %227, 6
  %231 = shl nuw nsw i32 %225, 3
  %232 = or disjoint i32 %230, %231
  %233 = or disjoint i32 %223, %232
  %234 = zext nneg i32 %233 to i64
  %235 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %234
  store i32 1, ptr %235, align 4
  %236 = add nuw nsw i32 %227, 1
  br label %.preheader, !llvm.loop !55

237:                                              ; preds = %.preheader
  %238 = add nuw nsw i32 %225, 1
  br label %.preheader1, !llvm.loop !56

239:                                              ; preds = %.preheader1
  %240 = add nuw nsw i32 %223, 1
  br label %222, !llvm.loop !57

241:                                              ; preds = %222
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 0, ptr @kount, align 4
  %242 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %242, 0
  br i1 %.not, label %245, label %243

243:                                              ; preds = %241
  %244 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %244, ptr @n, align 4
  br label %246

245:                                              ; preds = %241
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %.pre = load i32, ptr @n, align 4
  br label %246

246:                                              ; preds = %245, %243
  %247 = phi i32 [ %.pre, %245 ], [ %244, %243 ]
  %248 = call i32 @Trial(i32 noundef %247)
  %.not16 = icmp eq i32 %248, 0
  br i1 %.not16, label %249, label %250

249:                                              ; preds = %246
  %puts17 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %253

250:                                              ; preds = %246
  %251 = load i32, ptr @kount, align 4
  %.not18 = icmp eq i32 %251, 2005
  br i1 %.not18, label %253, label %252

252:                                              ; preds = %250
  %puts19 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %253

253:                                              ; preds = %252, %250, %249
  %254 = load i32, ptr @n, align 4
  %255 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %254) #4
  %256 = load i32, ptr @kount, align 4
  %257 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %256) #4
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %4, %0
  %2 = phi i32 [ 0, %0 ], [ %5, %4 ]
  %3 = icmp samesign ult i32 %2, 100
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  call void @Puzzle()
  %5 = add nuw nsw i32 %2, 1
  br label %1, !llvm.loop !58

6:                                                ; preds = %1
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
