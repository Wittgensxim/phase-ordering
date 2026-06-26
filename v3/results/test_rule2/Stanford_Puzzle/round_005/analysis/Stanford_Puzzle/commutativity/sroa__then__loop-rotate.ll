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
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %3
  %5 = load i32, ptr %4, align 4
  %.not4 = icmp sgt i32 0, %5
  br i1 %.not4, label %19, label %.lr.ph

.lr.ph:                                           ; preds = %2
  br label %6

6:                                                ; preds = %.lr.ph, %16
  %storemerge5 = phi i32 [ 0, %.lr.ph ], [ %17, %16 ]
  %7 = getelementptr inbounds [2048 x i8], ptr @p, i64 %3
  %8 = sext i32 %storemerge5 to i64
  %9 = getelementptr inbounds [4 x i8], ptr %7, i64 %8
  %10 = load i32, ptr %9, align 4
  %.not2 = icmp eq i32 %10, 0
  br i1 %.not2, label %16, label %11

11:                                               ; preds = %6
  %12 = add nsw i32 %1, %storemerge5
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %13
  %15 = load i32, ptr %14, align 4
  %.not3 = icmp eq i32 %15, 0
  br i1 %.not3, label %16, label %._crit_edge

16:                                               ; preds = %11, %6
  %17 = add nsw i32 %storemerge5, 1
  %18 = load i32, ptr %4, align 4
  %.not = icmp sgt i32 %17, %18
  br i1 %.not, label %._crit_edge6, label %6, !llvm.loop !7

._crit_edge:                                      ; preds = %11
  %split = phi i32 [ 0, %11 ]
  br label %19

._crit_edge6:                                     ; preds = %16
  %split7 = phi i32 [ 1, %16 ]
  br label %19

19:                                               ; preds = %._crit_edge6, %._crit_edge, %2
  %storemerge1 = phi i32 [ %split, %._crit_edge ], [ %split7, %._crit_edge6 ], [ 1, %2 ]
  ret i32 %storemerge1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Place(i32 noundef %0, i32 noundef %1) #0 {
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %3
  %5 = load i32, ptr %4, align 4
  %.not5 = icmp sgt i32 0, %5
  br i1 %.not5, label %18, label %.lr.ph

.lr.ph:                                           ; preds = %2
  br label %6

6:                                                ; preds = %.lr.ph, %15
  %storemerge6 = phi i32 [ 0, %.lr.ph ], [ %16, %15 ]
  %7 = getelementptr inbounds [2048 x i8], ptr @p, i64 %3
  %8 = sext i32 %storemerge6 to i64
  %9 = getelementptr inbounds [4 x i8], ptr %7, i64 %8
  %10 = load i32, ptr %9, align 4
  %.not4 = icmp eq i32 %10, 0
  br i1 %.not4, label %15, label %11

11:                                               ; preds = %6
  %12 = add nsw i32 %1, %storemerge6
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %13
  store i32 1, ptr %14, align 4
  br label %15

15:                                               ; preds = %11, %6
  %16 = add nsw i32 %storemerge6, 1
  %17 = load i32, ptr %4, align 4
  %.not = icmp sgt i32 %16, %17
  br i1 %.not, label %._crit_edge, label %6, !llvm.loop !9

._crit_edge:                                      ; preds = %15
  %split = phi i64 [ %3, %15 ]
  br label %18

18:                                               ; preds = %._crit_edge, %2
  %.lcssa = phi i64 [ %split, %._crit_edge ], [ %3, %2 ]
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
  %exitcond.not7 = icmp eq i64 %25, %wide.trip.count
  br i1 %exitcond.not7, label %.loopexit, label %.lr.ph10

.lr.ph10:                                         ; preds = %18
  br label %26

26:                                               ; preds = %.lr.ph10, %31
  %indvars.iv8 = phi i64 [ %25, %.lr.ph10 ], [ %indvars.iv.next, %31 ]
  %27 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %indvars.iv8
  %28 = load i32, ptr %27, align 4
  %.not3 = icmp eq i32 %28, 0
  br i1 %.not3, label %29, label %31

29:                                               ; preds = %26
  %indvars.iv.lcssa1 = phi i64 [ %indvars.iv8, %26 ]
  %30 = trunc nsw i64 %indvars.iv.lcssa1 to i32
  br label %33

31:                                               ; preds = %26
  %indvars.iv.next = add nsw i64 %indvars.iv8, 1
  %32 = trunc nsw i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %..loopexit_crit_edge, label %26, !llvm.loop !10

..loopexit_crit_edge:                             ; preds = %31
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %18
  br label %33

33:                                               ; preds = %.loopexit, %29
  %storemerge2 = phi i32 [ %30, %29 ], [ 0, %.loopexit ]
  ret i32 %storemerge2
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Remove(i32 noundef %0, i32 noundef %1) #0 {
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %3
  %5 = load i32, ptr %4, align 4
  %.not3 = icmp sgt i32 0, %5
  br i1 %.not3, label %18, label %.lr.ph

.lr.ph:                                           ; preds = %2
  br label %6

6:                                                ; preds = %.lr.ph, %15
  %storemerge4 = phi i32 [ 0, %.lr.ph ], [ %16, %15 ]
  %7 = getelementptr inbounds [2048 x i8], ptr @p, i64 %3
  %8 = sext i32 %storemerge4 to i64
  %9 = getelementptr inbounds [4 x i8], ptr %7, i64 %8
  %10 = load i32, ptr %9, align 4
  %.not1 = icmp eq i32 %10, 0
  br i1 %.not1, label %15, label %11

11:                                               ; preds = %6
  %12 = add nsw i32 %1, %storemerge4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %13
  store i32 0, ptr %14, align 4
  br label %15

15:                                               ; preds = %11, %6
  %16 = add nsw i32 %storemerge4, 1
  %17 = load i32, ptr %4, align 4
  %.not = icmp sgt i32 %16, %17
  br i1 %.not, label %._crit_edge, label %6, !llvm.loop !11

._crit_edge:                                      ; preds = %15
  %split = phi i64 [ %3, %15 ]
  br label %18

18:                                               ; preds = %._crit_edge, %2
  %.lcssa = phi i64 [ %split, %._crit_edge ], [ %3, %2 ]
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

4:                                                ; preds = %1, %18
  %storemerge6 = phi i32 [ 0, %1 ], [ %19, %18 ]
  %5 = sext i32 %storemerge6 to i64
  %6 = getelementptr inbounds [4 x i8], ptr @class, i64 %5
  %7 = load i32, ptr %6, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %8
  %10 = load i32, ptr %9, align 4
  %.not = icmp eq i32 %10, 0
  br i1 %.not, label %18, label %11

11:                                               ; preds = %4
  %12 = call i32 @Fit(i32 noundef %storemerge6, i32 noundef %0)
  %.not2 = icmp eq i32 %12, 0
  br i1 %.not2, label %18, label %13

13:                                               ; preds = %11
  %14 = call i32 @Place(i32 noundef %storemerge6, i32 noundef %0)
  %15 = call i32 @Trial(i32 noundef %14)
  %.not3 = icmp ne i32 %15, 0
  %16 = icmp eq i32 %14, 0
  %or.cond = or i1 %.not3, %16
  br i1 %or.cond, label %21, label %17

17:                                               ; preds = %13
  call void @Remove(i32 noundef %storemerge6, i32 noundef %0)
  br label %18

18:                                               ; preds = %17, %11, %4
  %19 = add nsw i32 %storemerge6, 1
  %20 = icmp slt i32 %19, 13
  br i1 %20, label %4, label %21, !llvm.loop !12

21:                                               ; preds = %13, %18
  %storemerge1 = phi i32 [ 1, %13 ], [ 0, %18 ]
  ret i32 %storemerge1
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Puzzle() #0 {
  br label %1

.preheader31:                                     ; preds = %1
  br label %.preheader30

1:                                                ; preds = %0, %1
  %storemerge75 = phi i32 [ 0, %0 ], [ %4, %1 ]
  %2 = sext i32 %storemerge75 to i64
  %3 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %2
  store i32 1, ptr %3, align 4
  %4 = add nsw i32 %storemerge75, 1
  %5 = icmp slt i32 %4, 512
  br i1 %5, label %1, label %.preheader31, !llvm.loop !13

.preheader30:                                     ; preds = %.preheader31, %18
  %storemerge178 = phi i32 [ 1, %.preheader31 ], [ %19, %18 ]
  br label %.preheader29

.preheader28:                                     ; preds = %18
  br label %.preheader27

.preheader29:                                     ; preds = %.preheader30, %15
  %storemerge4777 = phi i32 [ 1, %.preheader30 ], [ %16, %15 ]
  br label %6

6:                                                ; preds = %.preheader29, %6
  %storemerge4876 = phi i32 [ 1, %.preheader29 ], [ %13, %6 ]
  %7 = shl i32 %storemerge4876, 6
  %8 = shl i32 %storemerge4777, 3
  %9 = add i32 %7, %8
  %10 = add nsw i32 %storemerge178, %9
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %11
  store i32 0, ptr %12, align 4
  %13 = add nsw i32 %storemerge4876, 1
  %14 = icmp slt i32 %13, 6
  br i1 %14, label %6, label %15, !llvm.loop !14

15:                                               ; preds = %6
  %16 = add nsw i32 %storemerge4777, 1
  %17 = icmp slt i32 %16, 6
  br i1 %17, label %.preheader29, label %18, !llvm.loop !15

18:                                               ; preds = %15
  %19 = add nsw i32 %storemerge178, 1
  %20 = icmp slt i32 %19, 6
  br i1 %20, label %.preheader30, label %.preheader28, !llvm.loop !16

.preheader27:                                     ; preds = %.preheader28, %28
  %storemerge280 = phi i32 [ 0, %.preheader28 ], [ %29, %28 ]
  br label %21

.preheader26:                                     ; preds = %28
  br label %.preheader25

21:                                               ; preds = %.preheader27, %21
  %storemerge4679 = phi i32 [ 0, %.preheader27 ], [ %26, %21 ]
  %22 = sext i32 %storemerge280 to i64
  %23 = getelementptr inbounds [2048 x i8], ptr @p, i64 %22
  %24 = sext i32 %storemerge4679 to i64
  %25 = getelementptr inbounds [4 x i8], ptr %23, i64 %24
  store i32 0, ptr %25, align 4
  %26 = add nsw i32 %storemerge4679, 1
  %27 = icmp slt i32 %26, 512
  br i1 %27, label %21, label %28, !llvm.loop !17

28:                                               ; preds = %21
  %29 = add nsw i32 %storemerge280, 1
  %30 = icmp slt i32 %29, 13
  br i1 %30, label %.preheader27, label %.preheader26, !llvm.loop !18

.preheader25:                                     ; preds = %.preheader26, %43
  %storemerge383 = phi i32 [ 0, %.preheader26 ], [ %44, %43 ]
  br label %.preheader24

.preheader24:                                     ; preds = %.preheader25, %40
  %storemerge4482 = phi i32 [ 0, %.preheader25 ], [ %41, %40 ]
  br label %31

31:                                               ; preds = %.preheader24, %31
  %storemerge4581 = phi i32 [ 0, %.preheader24 ], [ %38, %31 ]
  %32 = shl i32 %storemerge4581, 6
  %33 = shl i32 %storemerge4482, 3
  %34 = add i32 %32, %33
  %35 = add nsw i32 %storemerge383, %34
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [4 x i8], ptr @p, i64 %36
  store i32 1, ptr %37, align 4
  %38 = add nsw i32 %storemerge4581, 1
  %39 = icmp slt i32 %38, 1
  br i1 %39, label %31, label %40, !llvm.loop !19

40:                                               ; preds = %31
  %41 = add nsw i32 %storemerge4482, 1
  %42 = icmp slt i32 %41, 2
  br i1 %42, label %.preheader24, label %43, !llvm.loop !20

43:                                               ; preds = %40
  %44 = add nsw i32 %storemerge383, 1
  %45 = icmp slt i32 %44, 4
  br i1 %45, label %.preheader25, label %46, !llvm.loop !21

46:                                               ; preds = %43
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %.preheader23

.preheader23:                                     ; preds = %46, %59
  %storemerge486 = phi i32 [ 0, %46 ], [ %60, %59 ]
  br label %.preheader22

.preheader22:                                     ; preds = %.preheader23, %56
  %storemerge4285 = phi i32 [ 0, %.preheader23 ], [ %57, %56 ]
  br label %47

47:                                               ; preds = %.preheader22, %47
  %storemerge4384 = phi i32 [ 0, %.preheader22 ], [ %54, %47 ]
  %48 = shl i32 %storemerge4384, 6
  %49 = shl i32 %storemerge4285, 3
  %50 = add i32 %48, %49
  %51 = add nsw i32 %storemerge486, %50
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %52
  store i32 1, ptr %53, align 4
  %54 = add nsw i32 %storemerge4384, 1
  %55 = icmp slt i32 %54, 4
  br i1 %55, label %47, label %56, !llvm.loop !22

56:                                               ; preds = %47
  %57 = add nsw i32 %storemerge4285, 1
  %58 = icmp slt i32 %57, 1
  br i1 %58, label %.preheader22, label %59, !llvm.loop !23

59:                                               ; preds = %56
  %60 = add nsw i32 %storemerge486, 1
  %61 = icmp slt i32 %60, 2
  br i1 %61, label %.preheader23, label %62, !llvm.loop !24

62:                                               ; preds = %59
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %.preheader21

.preheader21:                                     ; preds = %62, %75
  %storemerge589 = phi i32 [ 0, %62 ], [ %76, %75 ]
  br label %.preheader20

.preheader20:                                     ; preds = %.preheader21, %72
  %storemerge4088 = phi i32 [ 0, %.preheader21 ], [ %73, %72 ]
  br label %63

63:                                               ; preds = %.preheader20, %63
  %storemerge4187 = phi i32 [ 0, %.preheader20 ], [ %70, %63 ]
  %64 = shl i32 %storemerge4187, 6
  %65 = shl i32 %storemerge4088, 3
  %66 = add i32 %64, %65
  %67 = add nsw i32 %storemerge589, %66
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %68
  store i32 1, ptr %69, align 4
  %70 = add nsw i32 %storemerge4187, 1
  %71 = icmp slt i32 %70, 2
  br i1 %71, label %63, label %72, !llvm.loop !25

72:                                               ; preds = %63
  %73 = add nsw i32 %storemerge4088, 1
  %74 = icmp slt i32 %73, 4
  br i1 %74, label %.preheader20, label %75, !llvm.loop !26

75:                                               ; preds = %72
  %76 = add nsw i32 %storemerge589, 1
  %77 = icmp slt i32 %76, 1
  br i1 %77, label %.preheader21, label %78, !llvm.loop !27

78:                                               ; preds = %75
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %.preheader19

.preheader19:                                     ; preds = %78, %91
  %storemerge692 = phi i32 [ 0, %78 ], [ %92, %91 ]
  br label %.preheader18

.preheader18:                                     ; preds = %.preheader19, %88
  %storemerge3891 = phi i32 [ 0, %.preheader19 ], [ %89, %88 ]
  br label %79

79:                                               ; preds = %.preheader18, %79
  %storemerge3990 = phi i32 [ 0, %.preheader18 ], [ %86, %79 ]
  %80 = shl i32 %storemerge3990, 6
  %81 = shl i32 %storemerge3891, 3
  %82 = add i32 %80, %81
  %83 = add nsw i32 %storemerge692, %82
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %84
  store i32 1, ptr %85, align 4
  %86 = add nsw i32 %storemerge3990, 1
  %87 = icmp slt i32 %86, 1
  br i1 %87, label %79, label %88, !llvm.loop !28

88:                                               ; preds = %79
  %89 = add nsw i32 %storemerge3891, 1
  %90 = icmp slt i32 %89, 4
  br i1 %90, label %.preheader18, label %91, !llvm.loop !29

91:                                               ; preds = %88
  %92 = add nsw i32 %storemerge692, 1
  %93 = icmp slt i32 %92, 2
  br i1 %93, label %.preheader19, label %94, !llvm.loop !30

94:                                               ; preds = %91
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %.preheader17

.preheader17:                                     ; preds = %94, %107
  %storemerge795 = phi i32 [ 0, %94 ], [ %108, %107 ]
  br label %.preheader16

.preheader16:                                     ; preds = %.preheader17, %104
  %storemerge3694 = phi i32 [ 0, %.preheader17 ], [ %105, %104 ]
  br label %95

95:                                               ; preds = %.preheader16, %95
  %storemerge3793 = phi i32 [ 0, %.preheader16 ], [ %102, %95 ]
  %96 = shl i32 %storemerge3793, 6
  %97 = shl i32 %storemerge3694, 3
  %98 = add i32 %96, %97
  %99 = add nsw i32 %storemerge795, %98
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %100
  store i32 1, ptr %101, align 4
  %102 = add nsw i32 %storemerge3793, 1
  %103 = icmp slt i32 %102, 2
  br i1 %103, label %95, label %104, !llvm.loop !31

104:                                              ; preds = %95
  %105 = add nsw i32 %storemerge3694, 1
  %106 = icmp slt i32 %105, 1
  br i1 %106, label %.preheader16, label %107, !llvm.loop !32

107:                                              ; preds = %104
  %108 = add nsw i32 %storemerge795, 1
  %109 = icmp slt i32 %108, 4
  br i1 %109, label %.preheader17, label %110, !llvm.loop !33

110:                                              ; preds = %107
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %.preheader15

.preheader15:                                     ; preds = %110, %123
  %storemerge898 = phi i32 [ 0, %110 ], [ %124, %123 ]
  br label %.preheader14

.preheader14:                                     ; preds = %.preheader15, %120
  %storemerge3497 = phi i32 [ 0, %.preheader15 ], [ %121, %120 ]
  br label %111

111:                                              ; preds = %.preheader14, %111
  %storemerge3596 = phi i32 [ 0, %.preheader14 ], [ %118, %111 ]
  %112 = shl i32 %storemerge3596, 6
  %113 = shl i32 %storemerge3497, 3
  %114 = add i32 %112, %113
  %115 = add nsw i32 %storemerge898, %114
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %116
  store i32 1, ptr %117, align 4
  %118 = add nsw i32 %storemerge3596, 1
  %119 = icmp slt i32 %118, 4
  br i1 %119, label %111, label %120, !llvm.loop !34

120:                                              ; preds = %111
  %121 = add nsw i32 %storemerge3497, 1
  %122 = icmp slt i32 %121, 2
  br i1 %122, label %.preheader14, label %123, !llvm.loop !35

123:                                              ; preds = %120
  %124 = add nsw i32 %storemerge898, 1
  %125 = icmp slt i32 %124, 1
  br i1 %125, label %.preheader15, label %126, !llvm.loop !36

126:                                              ; preds = %123
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %.preheader13

.preheader13:                                     ; preds = %126, %139
  %storemerge9101 = phi i32 [ 0, %126 ], [ %140, %139 ]
  br label %.preheader12

.preheader12:                                     ; preds = %.preheader13, %136
  %storemerge32100 = phi i32 [ 0, %.preheader13 ], [ %137, %136 ]
  br label %127

127:                                              ; preds = %.preheader12, %127
  %storemerge3399 = phi i32 [ 0, %.preheader12 ], [ %134, %127 ]
  %128 = shl i32 %storemerge3399, 6
  %129 = shl i32 %storemerge32100, 3
  %130 = add i32 %128, %129
  %131 = add nsw i32 %storemerge9101, %130
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %132
  store i32 1, ptr %133, align 4
  %134 = add nsw i32 %storemerge3399, 1
  %135 = icmp slt i32 %134, 1
  br i1 %135, label %127, label %136, !llvm.loop !37

136:                                              ; preds = %127
  %137 = add nsw i32 %storemerge32100, 1
  %138 = icmp slt i32 %137, 1
  br i1 %138, label %.preheader12, label %139, !llvm.loop !38

139:                                              ; preds = %136
  %140 = add nsw i32 %storemerge9101, 1
  %141 = icmp slt i32 %140, 3
  br i1 %141, label %.preheader13, label %142, !llvm.loop !39

142:                                              ; preds = %139
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %.preheader11

.preheader11:                                     ; preds = %142, %155
  %storemerge10104 = phi i32 [ 0, %142 ], [ %156, %155 ]
  br label %.preheader10

.preheader10:                                     ; preds = %.preheader11, %152
  %storemerge30103 = phi i32 [ 0, %.preheader11 ], [ %153, %152 ]
  br label %143

143:                                              ; preds = %.preheader10, %143
  %storemerge31102 = phi i32 [ 0, %.preheader10 ], [ %150, %143 ]
  %144 = shl i32 %storemerge31102, 6
  %145 = shl i32 %storemerge30103, 3
  %146 = add i32 %144, %145
  %147 = add nsw i32 %storemerge10104, %146
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %148
  store i32 1, ptr %149, align 4
  %150 = add nsw i32 %storemerge31102, 1
  %151 = icmp slt i32 %150, 1
  br i1 %151, label %143, label %152, !llvm.loop !40

152:                                              ; preds = %143
  %153 = add nsw i32 %storemerge30103, 1
  %154 = icmp slt i32 %153, 3
  br i1 %154, label %.preheader10, label %155, !llvm.loop !41

155:                                              ; preds = %152
  %156 = add nsw i32 %storemerge10104, 1
  %157 = icmp slt i32 %156, 1
  br i1 %157, label %.preheader11, label %158, !llvm.loop !42

158:                                              ; preds = %155
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %.preheader9

.preheader9:                                      ; preds = %158, %171
  %storemerge11107 = phi i32 [ 0, %158 ], [ %172, %171 ]
  br label %.preheader8

.preheader8:                                      ; preds = %.preheader9, %168
  %storemerge28106 = phi i32 [ 0, %.preheader9 ], [ %169, %168 ]
  br label %159

159:                                              ; preds = %.preheader8, %159
  %storemerge29105 = phi i32 [ 0, %.preheader8 ], [ %166, %159 ]
  %160 = shl i32 %storemerge29105, 6
  %161 = shl i32 %storemerge28106, 3
  %162 = add i32 %160, %161
  %163 = add nsw i32 %storemerge11107, %162
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %164
  store i32 1, ptr %165, align 4
  %166 = add nsw i32 %storemerge29105, 1
  %167 = icmp slt i32 %166, 3
  br i1 %167, label %159, label %168, !llvm.loop !43

168:                                              ; preds = %159
  %169 = add nsw i32 %storemerge28106, 1
  %170 = icmp slt i32 %169, 1
  br i1 %170, label %.preheader8, label %171, !llvm.loop !44

171:                                              ; preds = %168
  %172 = add nsw i32 %storemerge11107, 1
  %173 = icmp slt i32 %172, 1
  br i1 %173, label %.preheader9, label %174, !llvm.loop !45

174:                                              ; preds = %171
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %.preheader7

.preheader7:                                      ; preds = %174, %187
  %storemerge12110 = phi i32 [ 0, %174 ], [ %188, %187 ]
  br label %.preheader6

.preheader6:                                      ; preds = %.preheader7, %184
  %storemerge26109 = phi i32 [ 0, %.preheader7 ], [ %185, %184 ]
  br label %175

175:                                              ; preds = %.preheader6, %175
  %storemerge27108 = phi i32 [ 0, %.preheader6 ], [ %182, %175 ]
  %176 = shl i32 %storemerge27108, 6
  %177 = shl i32 %storemerge26109, 3
  %178 = add i32 %176, %177
  %179 = add nsw i32 %storemerge12110, %178
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %180
  store i32 1, ptr %181, align 4
  %182 = add nsw i32 %storemerge27108, 1
  %183 = icmp slt i32 %182, 1
  br i1 %183, label %175, label %184, !llvm.loop !46

184:                                              ; preds = %175
  %185 = add nsw i32 %storemerge26109, 1
  %186 = icmp slt i32 %185, 2
  br i1 %186, label %.preheader6, label %187, !llvm.loop !47

187:                                              ; preds = %184
  %188 = add nsw i32 %storemerge12110, 1
  %189 = icmp slt i32 %188, 2
  br i1 %189, label %.preheader7, label %190, !llvm.loop !48

190:                                              ; preds = %187
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %.preheader5

.preheader5:                                      ; preds = %190, %203
  %storemerge13113 = phi i32 [ 0, %190 ], [ %204, %203 ]
  br label %.preheader4

.preheader4:                                      ; preds = %.preheader5, %200
  %storemerge24112 = phi i32 [ 0, %.preheader5 ], [ %201, %200 ]
  br label %191

191:                                              ; preds = %.preheader4, %191
  %storemerge25111 = phi i32 [ 0, %.preheader4 ], [ %198, %191 ]
  %192 = shl i32 %storemerge25111, 6
  %193 = shl i32 %storemerge24112, 3
  %194 = add i32 %192, %193
  %195 = add nsw i32 %storemerge13113, %194
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %196
  store i32 1, ptr %197, align 4
  %198 = add nsw i32 %storemerge25111, 1
  %199 = icmp slt i32 %198, 2
  br i1 %199, label %191, label %200, !llvm.loop !49

200:                                              ; preds = %191
  %201 = add nsw i32 %storemerge24112, 1
  %202 = icmp slt i32 %201, 1
  br i1 %202, label %.preheader4, label %203, !llvm.loop !50

203:                                              ; preds = %200
  %204 = add nsw i32 %storemerge13113, 1
  %205 = icmp slt i32 %204, 2
  br i1 %205, label %.preheader5, label %206, !llvm.loop !51

206:                                              ; preds = %203
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %.preheader3

.preheader3:                                      ; preds = %206, %219
  %storemerge14116 = phi i32 [ 0, %206 ], [ %220, %219 ]
  br label %.preheader2

.preheader2:                                      ; preds = %.preheader3, %216
  %storemerge22115 = phi i32 [ 0, %.preheader3 ], [ %217, %216 ]
  br label %207

207:                                              ; preds = %.preheader2, %207
  %storemerge23114 = phi i32 [ 0, %.preheader2 ], [ %214, %207 ]
  %208 = shl i32 %storemerge23114, 6
  %209 = shl i32 %storemerge22115, 3
  %210 = add i32 %208, %209
  %211 = add nsw i32 %storemerge14116, %210
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %212
  store i32 1, ptr %213, align 4
  %214 = add nsw i32 %storemerge23114, 1
  %215 = icmp slt i32 %214, 2
  br i1 %215, label %207, label %216, !llvm.loop !52

216:                                              ; preds = %207
  %217 = add nsw i32 %storemerge22115, 1
  %218 = icmp slt i32 %217, 2
  br i1 %218, label %.preheader2, label %219, !llvm.loop !53

219:                                              ; preds = %216
  %220 = add nsw i32 %storemerge14116, 1
  %221 = icmp slt i32 %220, 1
  br i1 %221, label %.preheader3, label %222, !llvm.loop !54

222:                                              ; preds = %219
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %.preheader1

.preheader1:                                      ; preds = %222, %235
  %storemerge15119 = phi i32 [ 0, %222 ], [ %236, %235 ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader1, %232
  %storemerge20118 = phi i32 [ 0, %.preheader1 ], [ %233, %232 ]
  br label %223

223:                                              ; preds = %.preheader, %223
  %storemerge21117 = phi i32 [ 0, %.preheader ], [ %230, %223 ]
  %224 = shl i32 %storemerge21117, 6
  %225 = shl i32 %storemerge20118, 3
  %226 = add i32 %224, %225
  %227 = add nsw i32 %storemerge15119, %226
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %228
  store i32 1, ptr %229, align 4
  %230 = add nsw i32 %storemerge21117, 1
  %231 = icmp slt i32 %230, 2
  br i1 %231, label %223, label %232, !llvm.loop !55

232:                                              ; preds = %223
  %233 = add nsw i32 %storemerge20118, 1
  %234 = icmp slt i32 %233, 2
  br i1 %234, label %.preheader, label %235, !llvm.loop !56

235:                                              ; preds = %232
  %236 = add nsw i32 %storemerge15119, 1
  %237 = icmp slt i32 %236, 2
  br i1 %237, label %.preheader1, label %238, !llvm.loop !57

238:                                              ; preds = %235
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 0, ptr @kount, align 4
  %239 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %239, 0
  br i1 %.not, label %242, label %240

240:                                              ; preds = %238
  %241 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %241, ptr @n, align 4
  br label %243

242:                                              ; preds = %238
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %243

243:                                              ; preds = %242, %240
  %244 = load i32, ptr @n, align 4
  %245 = call i32 @Trial(i32 noundef %244)
  %.not16 = icmp eq i32 %245, 0
  br i1 %.not16, label %246, label %247

246:                                              ; preds = %243
  %puts17 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %250

247:                                              ; preds = %243
  %248 = load i32, ptr @kount, align 4
  %.not18 = icmp eq i32 %248, 2005
  br i1 %.not18, label %250, label %249

249:                                              ; preds = %247
  %puts19 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %250

250:                                              ; preds = %249, %247, %246
  %251 = load i32, ptr @n, align 4
  %252 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %251) #4
  %253 = load i32, ptr @kount, align 4
  %254 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %253) #4
  ret void
}

declare dso_local i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %0, %1
  %storemerge1 = phi i32 [ 0, %0 ], [ %2, %1 ]
  call void @Puzzle()
  %2 = add nsw i32 %storemerge1, 1
  %3 = icmp slt i32 %2, 100
  br i1 %3, label %1, label %4, !llvm.loop !58

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
