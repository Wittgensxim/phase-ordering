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
  %6 = getelementptr inbounds [2048 x i8], ptr @p, i64 %3
  br label %7

7:                                                ; preds = %17, %2
  %storemerge = phi i32 [ 0, %2 ], [ %18, %17 ]
  %.not = icmp sgt i32 %storemerge, %5
  br i1 %.not, label %19, label %8

8:                                                ; preds = %7
  %9 = zext nneg i32 %storemerge to i64
  %10 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %9
  %11 = load i32, ptr %10, align 4
  %.not2 = icmp eq i32 %11, 0
  br i1 %.not2, label %17, label %12

12:                                               ; preds = %8
  %13 = add nsw i32 %1, %storemerge
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %14
  %16 = load i32, ptr %15, align 4
  %.not3 = icmp eq i32 %16, 0
  br i1 %.not3, label %17, label %19

17:                                               ; preds = %12, %8
  %18 = add nuw nsw i32 %storemerge, 1
  br label %7, !llvm.loop !7

19:                                               ; preds = %12, %7
  %storemerge1 = phi i32 [ 0, %12 ], [ 1, %7 ]
  ret i32 %storemerge1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Place(i32 noundef %0, i32 noundef %1) #0 {
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %3
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds [2048 x i8], ptr @p, i64 %3
  br label %7

7:                                                ; preds = %16, %2
  %storemerge = phi i32 [ 0, %2 ], [ %17, %16 ]
  %.not = icmp sgt i32 %storemerge, %5
  br i1 %.not, label %18, label %8

8:                                                ; preds = %7
  %9 = zext nneg i32 %storemerge to i64
  %10 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %9
  %11 = load i32, ptr %10, align 4
  %.not4 = icmp eq i32 %11, 0
  br i1 %.not4, label %16, label %12

12:                                               ; preds = %8
  %13 = add nsw i32 %1, %storemerge
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %14
  store i32 1, ptr %15, align 4
  br label %16

16:                                               ; preds = %12, %8
  %17 = add nuw nsw i32 %storemerge, 1
  br label %7, !llvm.loop !9

18:                                               ; preds = %7
  %.lcssa = phi i64 [ %3, %7 ]
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
  br label %26

26:                                               ; preds = %32, %18
  %indvars.iv = phi i64 [ %indvars.iv.next, %32 ], [ %25, %18 ]
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
  br label %.loopexit

32:                                               ; preds = %27
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %26, !llvm.loop !10

.loopexit:                                        ; preds = %26, %30
  %storemerge2 = phi i32 [ %31, %30 ], [ 0, %26 ]
  ret i32 %storemerge2
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Remove(i32 noundef %0, i32 noundef %1) #0 {
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %3
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds [2048 x i8], ptr @p, i64 %3
  br label %7

7:                                                ; preds = %16, %2
  %storemerge = phi i32 [ 0, %2 ], [ %17, %16 ]
  %.not = icmp sgt i32 %storemerge, %5
  br i1 %.not, label %18, label %8

8:                                                ; preds = %7
  %9 = zext nneg i32 %storemerge to i64
  %10 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %9
  %11 = load i32, ptr %10, align 4
  %.not1 = icmp eq i32 %11, 0
  br i1 %.not1, label %16, label %12

12:                                               ; preds = %8
  %13 = add nsw i32 %1, %storemerge
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %14
  store i32 0, ptr %15, align 4
  br label %16

16:                                               ; preds = %12, %8
  %17 = add nuw nsw i32 %storemerge, 1
  br label %7, !llvm.loop !11

18:                                               ; preds = %7
  %.lcssa = phi i64 [ %3, %7 ]
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

4:                                                ; preds = %20, %1
  %storemerge = phi i32 [ 0, %1 ], [ %21, %20 ]
  %5 = icmp samesign ult i32 %storemerge, 13
  br i1 %5, label %6, label %22

6:                                                ; preds = %4
  %7 = zext nneg i32 %storemerge to i64
  %8 = getelementptr inbounds nuw [4 x i8], ptr @class, i64 %7
  %9 = load i32, ptr %8, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %10
  %12 = load i32, ptr %11, align 4
  %.not = icmp eq i32 %12, 0
  br i1 %.not, label %20, label %13

13:                                               ; preds = %6
  %14 = call i32 @Fit(i32 noundef %storemerge, i32 noundef %0)
  %.not2 = icmp eq i32 %14, 0
  br i1 %.not2, label %20, label %15

15:                                               ; preds = %13
  %16 = call i32 @Place(i32 noundef %storemerge, i32 noundef %0)
  %17 = call i32 @Trial(i32 noundef %16)
  %.not3 = icmp ne i32 %17, 0
  %18 = icmp eq i32 %16, 0
  %or.cond = or i1 %.not3, %18
  br i1 %or.cond, label %22, label %19

19:                                               ; preds = %15
  call void @Remove(i32 noundef %storemerge, i32 noundef %0)
  br label %20

20:                                               ; preds = %19, %13, %6
  %21 = add nuw nsw i32 %storemerge, 1
  br label %4, !llvm.loop !12

22:                                               ; preds = %15, %4
  %storemerge1 = phi i32 [ 1, %15 ], [ 0, %4 ]
  ret i32 %storemerge1
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Puzzle() #0 {
  br label %1

1:                                                ; preds = %3, %0
  %storemerge = phi i32 [ 0, %0 ], [ %6, %3 ]
  %2 = icmp samesign ult i32 %storemerge, 512
  br i1 %2, label %3, label %.preheader31

3:                                                ; preds = %1
  %4 = zext nneg i32 %storemerge to i64
  %5 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %4
  store i32 1, ptr %5, align 4
  %6 = add nuw nsw i32 %storemerge, 1
  br label %1, !llvm.loop !13

.preheader31:                                     ; preds = %1, %18
  %storemerge1 = phi i32 [ %19, %18 ], [ 1, %1 ]
  %7 = icmp samesign ult i32 %storemerge1, 6
  br i1 %7, label %.preheader30, label %.preheader28

.preheader30:                                     ; preds = %.preheader31, %16
  %storemerge47 = phi i32 [ %17, %16 ], [ 1, %.preheader31 ]
  %8 = icmp samesign ult i32 %storemerge47, 6
  br i1 %8, label %.preheader29.preheader, label %18

.preheader29.preheader:                           ; preds = %.preheader30
  %9 = shl nuw nsw i32 %storemerge47, 3
  %invariant.op = or disjoint i32 %9, %storemerge1
  br label %.preheader29

.preheader29:                                     ; preds = %.preheader29.preheader, %11
  %storemerge48 = phi i32 [ %15, %11 ], [ 1, %.preheader29.preheader ]
  %10 = icmp samesign ult i32 %storemerge48, 6
  br i1 %10, label %11, label %16

11:                                               ; preds = %.preheader29
  %12 = shl nuw nsw i32 %storemerge48, 6
  %.reass = or disjoint i32 %12, %invariant.op
  %13 = zext nneg i32 %.reass to i64
  %14 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %13
  store i32 0, ptr %14, align 4
  %15 = add nuw nsw i32 %storemerge48, 1
  br label %.preheader29, !llvm.loop !14

16:                                               ; preds = %.preheader29
  %17 = add nuw nsw i32 %storemerge47, 1
  br label %.preheader30, !llvm.loop !15

18:                                               ; preds = %.preheader30
  %19 = add nuw nsw i32 %storemerge1, 1
  br label %.preheader31, !llvm.loop !16

.preheader28:                                     ; preds = %.preheader31, %28
  %storemerge2 = phi i32 [ %29, %28 ], [ 0, %.preheader31 ]
  %20 = icmp samesign ult i32 %storemerge2, 13
  br i1 %20, label %.preheader27.preheader, label %.preheader26

.preheader27.preheader:                           ; preds = %.preheader28
  %21 = zext nneg i32 %storemerge2 to i64
  %22 = getelementptr inbounds nuw [2048 x i8], ptr @p, i64 %21
  br label %.preheader27

.preheader27:                                     ; preds = %.preheader27.preheader, %24
  %storemerge46 = phi i32 [ %27, %24 ], [ 0, %.preheader27.preheader ]
  %23 = icmp samesign ult i32 %storemerge46, 512
  br i1 %23, label %24, label %28

24:                                               ; preds = %.preheader27
  %25 = zext nneg i32 %storemerge46 to i64
  %26 = getelementptr inbounds nuw [4 x i8], ptr %22, i64 %25
  store i32 0, ptr %26, align 4
  %27 = add nuw nsw i32 %storemerge46, 1
  br label %.preheader27, !llvm.loop !17

28:                                               ; preds = %.preheader27
  %29 = add nuw nsw i32 %storemerge2, 1
  br label %.preheader28, !llvm.loop !18

.preheader26:                                     ; preds = %.preheader28, %39
  %storemerge3 = phi i32 [ %40, %39 ], [ 0, %.preheader28 ]
  %30 = icmp samesign ult i32 %storemerge3, 4
  br i1 %30, label %.preheader25, label %41

.preheader25:                                     ; preds = %.preheader26, %37
  %storemerge44 = phi i32 [ %38, %37 ], [ 0, %.preheader26 ]
  %31 = icmp samesign ult i32 %storemerge44, 2
  br i1 %31, label %.preheader24.preheader, label %39

.preheader24.preheader:                           ; preds = %.preheader25
  %32 = shl nuw nsw i32 %storemerge44, 3
  %33 = or disjoint i32 %storemerge3, %32
  %34 = zext nneg i32 %33 to i64
  %35 = getelementptr inbounds nuw [4 x i8], ptr @p, i64 %34
  br label %.preheader24

.preheader24:                                     ; preds = %.preheader24.preheader, %36
  %storemerge45 = phi i1 [ false, %36 ], [ true, %.preheader24.preheader ]
  br i1 %storemerge45, label %36, label %37

36:                                               ; preds = %.preheader24
  store i32 1, ptr %35, align 4
  br label %.preheader24, !llvm.loop !19

37:                                               ; preds = %.preheader24
  %38 = add nuw nsw i32 %storemerge44, 1
  br label %.preheader25, !llvm.loop !20

39:                                               ; preds = %.preheader25
  %40 = add nuw nsw i32 %storemerge3, 1
  br label %.preheader26, !llvm.loop !21

41:                                               ; preds = %.preheader26
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %42

42:                                               ; preds = %52, %41
  %storemerge4 = phi i32 [ 0, %41 ], [ %53, %52 ]
  %43 = icmp samesign ult i32 %storemerge4, 2
  br i1 %43, label %.preheader23, label %54

.preheader23:                                     ; preds = %.preheader22, %42
  %44 = phi i1 [ true, %42 ], [ false, %.preheader22 ]
  br i1 %44, label %.preheader22, label %52

.preheader22:                                     ; preds = %.preheader23, %46
  %storemerge43 = phi i32 [ %51, %46 ], [ 0, %.preheader23 ]
  %45 = icmp samesign ult i32 %storemerge43, 4
  br i1 %45, label %46, label %.preheader23, !llvm.loop !22

46:                                               ; preds = %.preheader22
  %47 = shl nuw nsw i32 %storemerge43, 6
  %48 = or disjoint i32 %storemerge4, %47
  %49 = zext nneg i32 %48 to i64
  %50 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %49
  store i32 1, ptr %50, align 4
  %51 = add nuw nsw i32 %storemerge43, 1
  br label %.preheader22, !llvm.loop !23

52:                                               ; preds = %.preheader23
  %53 = add nuw nsw i32 %storemerge4, 1
  br label %42, !llvm.loop !24

54:                                               ; preds = %42
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %.loopexit4

.loopexit4:                                       ; preds = %.preheader21, %54
  %55 = phi i1 [ true, %54 ], [ false, %.preheader21 ]
  br i1 %55, label %.preheader21, label %67

.preheader21:                                     ; preds = %.loopexit4, %65
  %storemerge40 = phi i32 [ %66, %65 ], [ 0, %.loopexit4 ]
  %56 = icmp samesign ult i32 %storemerge40, 4
  br i1 %56, label %.preheader20.preheader, label %.loopexit4, !llvm.loop !25

.preheader20.preheader:                           ; preds = %.preheader21
  %57 = shl nuw nsw i32 %storemerge40, 3
  br label %.preheader20

.preheader20:                                     ; preds = %.preheader20.preheader, %59
  %storemerge41 = phi i32 [ %64, %59 ], [ 0, %.preheader20.preheader ]
  %58 = icmp samesign ult i32 %storemerge41, 2
  br i1 %58, label %59, label %65

59:                                               ; preds = %.preheader20
  %60 = shl nuw nsw i32 %storemerge41, 6
  %61 = or disjoint i32 %60, %57
  %62 = zext nneg i32 %61 to i64
  %63 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %62
  store i32 1, ptr %63, align 4
  %64 = add nuw nsw i32 %storemerge41, 1
  br label %.preheader20, !llvm.loop !26

65:                                               ; preds = %.preheader20
  %66 = add nuw nsw i32 %storemerge40, 1
  br label %.preheader21, !llvm.loop !27

67:                                               ; preds = %.loopexit4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %68

68:                                               ; preds = %78, %67
  %storemerge6 = phi i32 [ 0, %67 ], [ %79, %78 ]
  %69 = icmp samesign ult i32 %storemerge6, 2
  br i1 %69, label %.preheader19, label %80

.preheader19:                                     ; preds = %68, %76
  %storemerge38 = phi i32 [ %77, %76 ], [ 0, %68 ]
  %70 = icmp samesign ult i32 %storemerge38, 4
  br i1 %70, label %.preheader18.preheader, label %78

.preheader18.preheader:                           ; preds = %.preheader19
  %71 = shl nuw nsw i32 %storemerge38, 3
  %72 = or disjoint i32 %storemerge6, %71
  %73 = zext nneg i32 %72 to i64
  %74 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %73
  br label %.preheader18

.preheader18:                                     ; preds = %.preheader18.preheader, %75
  %storemerge39 = phi i1 [ false, %75 ], [ true, %.preheader18.preheader ]
  br i1 %storemerge39, label %75, label %76

75:                                               ; preds = %.preheader18
  store i32 1, ptr %74, align 4
  br label %.preheader18, !llvm.loop !28

76:                                               ; preds = %.preheader18
  %77 = add nuw nsw i32 %storemerge38, 1
  br label %.preheader19, !llvm.loop !29

78:                                               ; preds = %.preheader19
  %79 = add nuw nsw i32 %storemerge6, 1
  br label %68, !llvm.loop !30

80:                                               ; preds = %68
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %81

81:                                               ; preds = %91, %80
  %storemerge7 = phi i32 [ 0, %80 ], [ %92, %91 ]
  %82 = icmp samesign ult i32 %storemerge7, 4
  br i1 %82, label %.preheader17, label %93

.preheader17:                                     ; preds = %.preheader16, %81
  %83 = phi i1 [ true, %81 ], [ false, %.preheader16 ]
  br i1 %83, label %.preheader16, label %91

.preheader16:                                     ; preds = %.preheader17, %85
  %storemerge37 = phi i32 [ %90, %85 ], [ 0, %.preheader17 ]
  %84 = icmp samesign ult i32 %storemerge37, 2
  br i1 %84, label %85, label %.preheader17, !llvm.loop !31

85:                                               ; preds = %.preheader16
  %86 = shl nuw nsw i32 %storemerge37, 6
  %87 = or disjoint i32 %storemerge7, %86
  %88 = zext nneg i32 %87 to i64
  %89 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %88
  store i32 1, ptr %89, align 4
  %90 = add nuw nsw i32 %storemerge37, 1
  br label %.preheader16, !llvm.loop !32

91:                                               ; preds = %.preheader17
  %92 = add nuw nsw i32 %storemerge7, 1
  br label %81, !llvm.loop !33

93:                                               ; preds = %81
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %.loopexit3

.loopexit3:                                       ; preds = %.preheader15, %93
  %94 = phi i1 [ true, %93 ], [ false, %.preheader15 ]
  br i1 %94, label %.preheader15, label %106

.preheader15:                                     ; preds = %.loopexit3, %104
  %storemerge34 = phi i32 [ %105, %104 ], [ 0, %.loopexit3 ]
  %95 = icmp samesign ult i32 %storemerge34, 2
  br i1 %95, label %.preheader14.preheader, label %.loopexit3, !llvm.loop !34

.preheader14.preheader:                           ; preds = %.preheader15
  %96 = shl nuw nsw i32 %storemerge34, 3
  br label %.preheader14

.preheader14:                                     ; preds = %.preheader14.preheader, %98
  %storemerge35 = phi i32 [ %103, %98 ], [ 0, %.preheader14.preheader ]
  %97 = icmp samesign ult i32 %storemerge35, 4
  br i1 %97, label %98, label %104

98:                                               ; preds = %.preheader14
  %99 = shl nuw nsw i32 %storemerge35, 6
  %100 = or disjoint i32 %99, %96
  %101 = zext nneg i32 %100 to i64
  %102 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %101
  store i32 1, ptr %102, align 4
  %103 = add nuw nsw i32 %storemerge35, 1
  br label %.preheader14, !llvm.loop !35

104:                                              ; preds = %.preheader14
  %105 = add nuw nsw i32 %storemerge34, 1
  br label %.preheader15, !llvm.loop !36

106:                                              ; preds = %.loopexit3
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %107

107:                                              ; preds = %113, %106
  %storemerge9 = phi i32 [ 0, %106 ], [ %114, %113 ]
  %108 = icmp samesign ult i32 %storemerge9, 3
  br i1 %108, label %.preheader13.preheader, label %115

.preheader13.preheader:                           ; preds = %107
  %109 = zext nneg i32 %storemerge9 to i64
  %110 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %109
  br label %.preheader13

.preheader13:                                     ; preds = %.preheader12, %.preheader13.preheader
  %111 = phi i1 [ true, %.preheader13.preheader ], [ false, %.preheader12 ]
  br i1 %111, label %.preheader12, label %113

.preheader12:                                     ; preds = %.preheader13, %112
  %storemerge33 = phi i1 [ false, %112 ], [ true, %.preheader13 ]
  br i1 %storemerge33, label %112, label %.preheader13, !llvm.loop !37

112:                                              ; preds = %.preheader12
  store i32 1, ptr %110, align 4
  br label %.preheader12, !llvm.loop !38

113:                                              ; preds = %.preheader13
  %114 = add nuw nsw i32 %storemerge9, 1
  br label %107, !llvm.loop !39

115:                                              ; preds = %107
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %.loopexit2

.loopexit2:                                       ; preds = %.preheader11, %115
  %116 = phi i1 [ true, %115 ], [ false, %.preheader11 ]
  br i1 %116, label %.preheader11, label %124

.preheader11:                                     ; preds = %.loopexit2, %122
  %storemerge30 = phi i32 [ %123, %122 ], [ 0, %.loopexit2 ]
  %117 = icmp samesign ult i32 %storemerge30, 3
  br i1 %117, label %.preheader10.preheader, label %.loopexit2, !llvm.loop !40

.preheader10.preheader:                           ; preds = %.preheader11
  %118 = shl nuw nsw i32 %storemerge30, 3
  %119 = zext nneg i32 %118 to i64
  %120 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %119
  br label %.preheader10

.preheader10:                                     ; preds = %.preheader10.preheader, %121
  %storemerge31 = phi i1 [ false, %121 ], [ true, %.preheader10.preheader ]
  br i1 %storemerge31, label %121, label %122

121:                                              ; preds = %.preheader10
  store i32 1, ptr %120, align 4
  br label %.preheader10, !llvm.loop !41

122:                                              ; preds = %.preheader10
  %123 = add nuw nsw i32 %storemerge30, 1
  br label %.preheader11, !llvm.loop !42

124:                                              ; preds = %.loopexit2
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %.loopexit1

.loopexit1:                                       ; preds = %.preheader9, %124
  %125 = phi i1 [ true, %124 ], [ false, %.preheader9 ]
  br i1 %125, label %.preheader9, label %133

.preheader9:                                      ; preds = %.preheader8, %.loopexit1
  %126 = phi i1 [ true, %.loopexit1 ], [ false, %.preheader8 ]
  br i1 %126, label %.preheader8, label %.loopexit1, !llvm.loop !43

.preheader8:                                      ; preds = %.preheader9, %128
  %storemerge29 = phi i32 [ %132, %128 ], [ 0, %.preheader9 ]
  %127 = icmp samesign ult i32 %storemerge29, 3
  br i1 %127, label %128, label %.preheader9, !llvm.loop !44

128:                                              ; preds = %.preheader8
  %129 = shl nuw nsw i32 %storemerge29, 6
  %130 = zext nneg i32 %129 to i64
  %131 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %130
  store i32 1, ptr %131, align 4
  %132 = add nuw nsw i32 %storemerge29, 1
  br label %.preheader8, !llvm.loop !45

133:                                              ; preds = %.loopexit1
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %134

134:                                              ; preds = %144, %133
  %storemerge12 = phi i32 [ 0, %133 ], [ %145, %144 ]
  %135 = icmp samesign ult i32 %storemerge12, 2
  br i1 %135, label %.preheader7, label %146

.preheader7:                                      ; preds = %134, %142
  %storemerge26 = phi i32 [ %143, %142 ], [ 0, %134 ]
  %136 = icmp samesign ult i32 %storemerge26, 2
  br i1 %136, label %.preheader6.preheader, label %144

.preheader6.preheader:                            ; preds = %.preheader7
  %137 = shl nuw nsw i32 %storemerge26, 3
  %138 = or disjoint i32 %storemerge12, %137
  %139 = zext nneg i32 %138 to i64
  %140 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %139
  br label %.preheader6

.preheader6:                                      ; preds = %.preheader6.preheader, %141
  %storemerge27 = phi i1 [ false, %141 ], [ true, %.preheader6.preheader ]
  br i1 %storemerge27, label %141, label %142

141:                                              ; preds = %.preheader6
  store i32 1, ptr %140, align 4
  br label %.preheader6, !llvm.loop !46

142:                                              ; preds = %.preheader6
  %143 = add nuw nsw i32 %storemerge26, 1
  br label %.preheader7, !llvm.loop !47

144:                                              ; preds = %.preheader7
  %145 = add nuw nsw i32 %storemerge12, 1
  br label %134, !llvm.loop !48

146:                                              ; preds = %134
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %147

147:                                              ; preds = %157, %146
  %storemerge13 = phi i32 [ 0, %146 ], [ %158, %157 ]
  %148 = icmp samesign ult i32 %storemerge13, 2
  br i1 %148, label %.preheader5, label %159

.preheader5:                                      ; preds = %.preheader4, %147
  %149 = phi i1 [ true, %147 ], [ false, %.preheader4 ]
  br i1 %149, label %.preheader4, label %157

.preheader4:                                      ; preds = %.preheader5, %151
  %storemerge25 = phi i32 [ %156, %151 ], [ 0, %.preheader5 ]
  %150 = icmp samesign ult i32 %storemerge25, 2
  br i1 %150, label %151, label %.preheader5, !llvm.loop !49

151:                                              ; preds = %.preheader4
  %152 = shl nuw nsw i32 %storemerge25, 6
  %153 = or disjoint i32 %storemerge13, %152
  %154 = zext nneg i32 %153 to i64
  %155 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %154
  store i32 1, ptr %155, align 4
  %156 = add nuw nsw i32 %storemerge25, 1
  br label %.preheader4, !llvm.loop !50

157:                                              ; preds = %.preheader5
  %158 = add nuw nsw i32 %storemerge13, 1
  br label %147, !llvm.loop !51

159:                                              ; preds = %147
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader3, %159
  %160 = phi i1 [ true, %159 ], [ false, %.preheader3 ]
  br i1 %160, label %.preheader3, label %172

.preheader3:                                      ; preds = %.loopexit, %170
  %storemerge22 = phi i32 [ %171, %170 ], [ 0, %.loopexit ]
  %161 = icmp samesign ult i32 %storemerge22, 2
  br i1 %161, label %.preheader2.preheader, label %.loopexit, !llvm.loop !52

.preheader2.preheader:                            ; preds = %.preheader3
  %162 = shl nuw nsw i32 %storemerge22, 3
  br label %.preheader2

.preheader2:                                      ; preds = %.preheader2.preheader, %164
  %storemerge23 = phi i32 [ %169, %164 ], [ 0, %.preheader2.preheader ]
  %163 = icmp samesign ult i32 %storemerge23, 2
  br i1 %163, label %164, label %170

164:                                              ; preds = %.preheader2
  %165 = shl nuw nsw i32 %storemerge23, 6
  %166 = or disjoint i32 %165, %162
  %167 = zext nneg i32 %166 to i64
  %168 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %167
  store i32 1, ptr %168, align 4
  %169 = add nuw nsw i32 %storemerge23, 1
  br label %.preheader2, !llvm.loop !53

170:                                              ; preds = %.preheader2
  %171 = add nuw nsw i32 %storemerge22, 1
  br label %.preheader3, !llvm.loop !54

172:                                              ; preds = %.loopexit
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %173

173:                                              ; preds = %185, %172
  %storemerge15 = phi i32 [ 0, %172 ], [ %186, %185 ]
  %174 = icmp samesign ult i32 %storemerge15, 2
  br i1 %174, label %.preheader1, label %187

.preheader1:                                      ; preds = %173, %183
  %storemerge20 = phi i32 [ %184, %183 ], [ 0, %173 ]
  %175 = icmp samesign ult i32 %storemerge20, 2
  br i1 %175, label %.preheader.preheader, label %185

.preheader.preheader:                             ; preds = %.preheader1
  %176 = shl nuw nsw i32 %storemerge20, 3
  %invariant.op5 = or disjoint i32 %176, %storemerge15
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %178
  %storemerge21 = phi i32 [ %182, %178 ], [ 0, %.preheader.preheader ]
  %177 = icmp samesign ult i32 %storemerge21, 2
  br i1 %177, label %178, label %183

178:                                              ; preds = %.preheader
  %179 = shl nuw nsw i32 %storemerge21, 6
  %.reass6 = or disjoint i32 %179, %invariant.op5
  %180 = zext nneg i32 %.reass6 to i64
  %181 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %180
  store i32 1, ptr %181, align 4
  %182 = add nuw nsw i32 %storemerge21, 1
  br label %.preheader, !llvm.loop !55

183:                                              ; preds = %.preheader
  %184 = add nuw nsw i32 %storemerge20, 1
  br label %.preheader1, !llvm.loop !56

185:                                              ; preds = %.preheader1
  %186 = add nuw nsw i32 %storemerge15, 1
  br label %173, !llvm.loop !57

187:                                              ; preds = %173
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 0, ptr @kount, align 4
  %188 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %188, 0
  br i1 %.not, label %191, label %189

189:                                              ; preds = %187
  %190 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %190, ptr @n, align 4
  br label %192

191:                                              ; preds = %187
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %192

192:                                              ; preds = %191, %189
  %193 = load i32, ptr @n, align 4
  %194 = call i32 @Trial(i32 noundef %193)
  %.not16 = icmp eq i32 %194, 0
  br i1 %.not16, label %195, label %196

195:                                              ; preds = %192
  %puts17 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %199

196:                                              ; preds = %192
  %197 = load i32, ptr @kount, align 4
  %.not18 = icmp eq i32 %197, 2005
  br i1 %.not18, label %199, label %198

198:                                              ; preds = %196
  %puts19 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %199

199:                                              ; preds = %198, %196, %195
  %200 = load i32, ptr @n, align 4
  %201 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %200) #4
  %202 = load i32, ptr @kount, align 4
  %203 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %202) #4
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %3, %0
  %storemerge = phi i32 [ 0, %0 ], [ %4, %3 ]
  %2 = icmp samesign ult i32 %storemerge, 100
  br i1 %2, label %3, label %5

3:                                                ; preds = %1
  call void @Puzzle()
  %4 = add nuw nsw i32 %storemerge, 1
  br label %1, !llvm.loop !58

5:                                                ; preds = %1
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
