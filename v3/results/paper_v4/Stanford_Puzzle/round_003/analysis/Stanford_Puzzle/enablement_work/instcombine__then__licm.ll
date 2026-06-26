; ModuleID = 'results\paper_v4\Stanford_Puzzle\round_002\output.ll'
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
  %.not1 = icmp slt i32 %.pre, 0
  br i1 %.not1, label %18, label %.lr.ph

.lr.ph:                                           ; preds = %2
  %3 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  br label %4

4:                                                ; preds = %16, %.lr.ph
  %5 = phi i32 [ 0, %.lr.ph ], [ %17, %16 ]
  %6 = zext nneg i32 %5 to i64
  %7 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %6
  %8 = load i32, ptr %7, align 4
  %.not2 = icmp eq i32 %8, 0
  br i1 %.not2, label %16, label %9

9:                                                ; preds = %4
  %10 = add nsw i32 %1, %5
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %11
  %13 = load i32, ptr %12, align 4
  %.not3 = icmp eq i32 %13, 0
  br i1 %.not3, label %15, label %14

14:                                               ; preds = %9
  br label %19

15:                                               ; preds = %9
  br label %16

16:                                               ; preds = %15, %4
  %17 = add nuw nsw i32 %5, 1
  %.not.not = icmp slt i32 %5, %.pre
  br i1 %.not.not, label %4, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %16
  br label %18

18:                                               ; preds = %._crit_edge, %2
  br label %19

19:                                               ; preds = %18, %14
  %20 = phi i32 [ 1, %18 ], [ 0, %14 ]
  ret i32 %20
}

; Function Attrs: noinline nounwind uwtable
define dso_local range(i32 -2147483648, 512) i32 @Place(i32 noundef %0, i32 noundef %1) #0 {
  %.phi.trans.insert = sext i32 %0 to i64
  %.phi.trans.insert1 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert1, align 4
  %.not4 = icmp slt i32 %.pre, 0
  br i1 %.not4, label %15, label %.lr.ph

.lr.ph:                                           ; preds = %2
  %3 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  br label %4

4:                                                ; preds = %13, %.lr.ph
  %5 = phi i32 [ 0, %.lr.ph ], [ %14, %13 ]
  %6 = zext nneg i32 %5 to i64
  %7 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %6
  %8 = load i32, ptr %7, align 4
  %.not3 = icmp eq i32 %8, 0
  br i1 %.not3, label %13, label %9

9:                                                ; preds = %4
  %10 = add nsw i32 %1, %5
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %11
  store i32 1, ptr %12, align 4
  br label %13

13:                                               ; preds = %9, %4
  %14 = add nuw nsw i32 %5, 1
  %.not.not = icmp slt i32 %5, %.pre
  br i1 %.not.not, label %4, label %._crit_edge, !llvm.loop !9

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
  br i1 %22, label %.lr.ph6, label %32

.lr.ph6:                                          ; preds = %15
  br label %23

23:                                               ; preds = %29, %.lr.ph6
  %24 = phi i32 [ %1, %.lr.ph6 ], [ %30, %29 ]
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %25
  %27 = load i32, ptr %26, align 4
  %.not2 = icmp eq i32 %27, 0
  br i1 %.not2, label %28, label %29

28:                                               ; preds = %23
  %.lcssa = phi i32 [ %24, %23 ]
  br label %33

29:                                               ; preds = %23
  %30 = add nsw i32 %24, 1
  %31 = icmp slt i32 %24, 511
  br i1 %31, label %23, label %._crit_edge7, !llvm.loop !10

._crit_edge7:                                     ; preds = %29
  br label %32

32:                                               ; preds = %._crit_edge7, %15
  br label %33

33:                                               ; preds = %32, %28
  %34 = phi i32 [ 0, %32 ], [ %.lcssa, %28 ]
  ret i32 %34
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Remove(i32 noundef %0, i32 noundef %1) #0 {
  %.phi.trans.insert = sext i32 %0 to i64
  %.phi.trans.insert1 = getelementptr inbounds [4 x i8], ptr @piecemax, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert1, align 4
  %.not1 = icmp slt i32 %.pre, 0
  br i1 %.not1, label %15, label %.lr.ph

.lr.ph:                                           ; preds = %2
  %3 = getelementptr inbounds [2048 x i8], ptr @p, i64 %.phi.trans.insert
  br label %4

4:                                                ; preds = %13, %.lr.ph
  %5 = phi i32 [ 0, %.lr.ph ], [ %14, %13 ]
  %6 = zext nneg i32 %5 to i64
  %7 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %6
  %8 = load i32, ptr %7, align 4
  %.not2 = icmp eq i32 %8, 0
  br i1 %.not2, label %13, label %9

9:                                                ; preds = %4
  %10 = add nsw i32 %1, %5
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [4 x i8], ptr @puzzl, i64 %11
  store i32 0, ptr %12, align 4
  br label %13

13:                                               ; preds = %9, %4
  %14 = add nuw nsw i32 %5, 1
  %.not.not = icmp slt i32 %5, %.pre
  br i1 %.not.not, label %4, label %._crit_edge, !llvm.loop !11

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
define dso_local range(i32 0, 2) i32 @Trial(i32 noundef %0) #0 {
  %2 = load i32, ptr @kount, align 4
  %3 = add nsw i32 %2, 1
  store i32 %3, ptr @kount, align 4
  br label %4

4:                                                ; preds = %22, %1
  %5 = phi i32 [ 0, %1 ], [ %23, %22 ]
  %6 = zext nneg i32 %5 to i64
  %7 = getelementptr inbounds nuw [4 x i8], ptr @class, i64 %6
  %8 = load i32, ptr %7, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [4 x i8], ptr @piececount, i64 %9
  %11 = load i32, ptr %10, align 4
  %.not = icmp eq i32 %11, 0
  br i1 %.not, label %22, label %12

12:                                               ; preds = %4
  %13 = call i32 @Fit(i32 noundef %5, i32 noundef %0)
  %.not1 = icmp eq i32 %13, 0
  br i1 %.not1, label %21, label %14

14:                                               ; preds = %12
  %15 = call i32 @Place(i32 noundef %5, i32 noundef %0)
  %16 = call i32 @Trial(i32 noundef %15)
  %.not2 = icmp eq i32 %16, 0
  br i1 %.not2, label %17, label %19

17:                                               ; preds = %14
  %18 = icmp eq i32 %15, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %17, %14
  br label %26

20:                                               ; preds = %17
  call void @Remove(i32 noundef %5, i32 noundef %0)
  br label %21

21:                                               ; preds = %20, %12
  br label %22

22:                                               ; preds = %21, %4
  %23 = add nuw nsw i32 %5, 1
  %24 = icmp samesign ult i32 %5, 12
  br i1 %24, label %4, label %25, !llvm.loop !12

25:                                               ; preds = %22
  br label %26

26:                                               ; preds = %25, %19
  %27 = phi i32 [ 0, %25 ], [ 1, %19 ]
  ret i32 %27
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Puzzle() #0 {
  br label %1

1:                                                ; preds = %1, %0
  %2 = phi i32 [ 0, %0 ], [ %5, %1 ]
  %3 = zext nneg i32 %2 to i64
  %4 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %3
  store i32 1, ptr %4, align 4
  %5 = add nuw nsw i32 %2, 1
  %6 = icmp samesign ult i32 %2, 511
  br i1 %6, label %1, label %7, !llvm.loop !13

7:                                                ; preds = %1
  br label %8

8:                                                ; preds = %23, %7
  %9 = phi i32 [ 1, %7 ], [ %24, %23 ]
  br label %10

10:                                               ; preds = %20, %8
  %11 = phi i32 [ 1, %8 ], [ %21, %20 ]
  %12 = shl nuw nsw i32 %11, 3
  %invariant.op = or disjoint i32 %12, %9
  br label %13

13:                                               ; preds = %13, %10
  %14 = phi i32 [ 1, %10 ], [ %18, %13 ]
  %15 = shl nuw nsw i32 %14, 6
  %.reass = or disjoint i32 %15, %invariant.op
  %16 = zext nneg i32 %.reass to i64
  %17 = getelementptr inbounds nuw [4 x i8], ptr @puzzl, i64 %16
  store i32 0, ptr %17, align 4
  %18 = add nuw nsw i32 %14, 1
  %19 = icmp samesign ult i32 %14, 5
  br i1 %19, label %13, label %20, !llvm.loop !14

20:                                               ; preds = %13
  %21 = add nuw nsw i32 %11, 1
  %22 = icmp samesign ult i32 %11, 5
  br i1 %22, label %10, label %23, !llvm.loop !15

23:                                               ; preds = %20
  %24 = add nuw nsw i32 %9, 1
  %25 = icmp samesign ult i32 %9, 5
  br i1 %25, label %8, label %26, !llvm.loop !16

26:                                               ; preds = %23
  br label %27

27:                                               ; preds = %37, %26
  %28 = phi i32 [ 0, %26 ], [ %38, %37 ]
  %29 = zext nneg i32 %28 to i64
  %30 = getelementptr inbounds nuw [2048 x i8], ptr @p, i64 %29
  br label %31

31:                                               ; preds = %31, %27
  %32 = phi i32 [ 0, %27 ], [ %35, %31 ]
  %33 = zext nneg i32 %32 to i64
  %34 = getelementptr inbounds nuw [4 x i8], ptr %30, i64 %33
  store i32 0, ptr %34, align 4
  %35 = add nuw nsw i32 %32, 1
  %36 = icmp samesign ult i32 %32, 511
  br i1 %36, label %31, label %37, !llvm.loop !17

37:                                               ; preds = %31
  %38 = add nuw nsw i32 %28, 1
  %39 = icmp samesign ult i32 %28, 12
  br i1 %39, label %27, label %40, !llvm.loop !18

40:                                               ; preds = %37
  br label %41

41:                                               ; preds = %49, %40
  %42 = phi i32 [ 0, %40 ], [ %50, %49 ]
  br label %43

43:                                               ; preds = %43, %41
  %44 = phi i1 [ true, %41 ], [ false, %43 ]
  %45 = phi i32 [ 0, %41 ], [ 8, %43 ]
  %46 = or disjoint i32 %42, %45
  %47 = zext nneg i32 %46 to i64
  %48 = getelementptr inbounds nuw [4 x i8], ptr @p, i64 %47
  store i32 1, ptr %48, align 4
  br i1 %44, label %43, label %49, !llvm.loop !19

49:                                               ; preds = %43
  %50 = add nuw nsw i32 %42, 1
  %51 = icmp samesign ult i32 %42, 3
  br i1 %51, label %41, label %52, !llvm.loop !20

52:                                               ; preds = %49
  store i32 0, ptr @class, align 16
  store i32 11, ptr @piecemax, align 16
  br label %53

53:                                               ; preds = %64, %52
  %54 = phi i1 [ true, %52 ], [ false, %64 ]
  %55 = phi i32 [ 0, %52 ], [ 1, %64 ]
  br label %56

56:                                               ; preds = %56, %53
  %57 = phi i32 [ 0, %53 ], [ %62, %56 ]
  %58 = shl nuw nsw i32 %57, 6
  %59 = or disjoint i32 %55, %58
  %60 = zext nneg i32 %59 to i64
  %61 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 2048), i64 %60
  store i32 1, ptr %61, align 4
  %62 = add nuw nsw i32 %57, 1
  %63 = icmp samesign ult i32 %57, 3
  br i1 %63, label %56, label %64, !llvm.loop !21

64:                                               ; preds = %56
  br i1 %54, label %53, label %65, !llvm.loop !22

65:                                               ; preds = %64
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 4), align 4
  store i32 193, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 4), align 4
  br label %66

66:                                               ; preds = %77, %65
  %67 = phi i32 [ 0, %65 ], [ %78, %77 ]
  %68 = shl nuw nsw i32 %67, 3
  br label %69

69:                                               ; preds = %69, %66
  %70 = phi i32 [ 0, %66 ], [ %75, %69 ]
  %71 = shl nuw nsw i32 %70, 6
  %72 = or disjoint i32 %71, %68
  %73 = zext nneg i32 %72 to i64
  %74 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 4096), i64 %73
  store i32 1, ptr %74, align 4
  %75 = add nuw nsw i32 %70, 1
  %76 = icmp eq i32 %70, 0
  br i1 %76, label %69, label %77, !llvm.loop !23

77:                                               ; preds = %69
  %78 = add nuw nsw i32 %67, 1
  %79 = icmp samesign ult i32 %67, 3
  br i1 %79, label %66, label %80, !llvm.loop !24

80:                                               ; preds = %77
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 8), align 8
  store i32 88, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 8), align 8
  br label %81

81:                                               ; preds = %92, %80
  %82 = phi i1 [ true, %80 ], [ false, %92 ]
  %83 = phi i32 [ 0, %80 ], [ 1, %92 ]
  br label %84

84:                                               ; preds = %84, %81
  %85 = phi i32 [ 0, %81 ], [ %90, %84 ]
  %86 = shl nuw nsw i32 %85, 3
  %87 = or disjoint i32 %83, %86
  %88 = zext nneg i32 %87 to i64
  %89 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 6144), i64 %88
  store i32 1, ptr %89, align 4
  %90 = add nuw nsw i32 %85, 1
  %91 = icmp samesign ult i32 %85, 3
  br i1 %91, label %84, label %92, !llvm.loop !25

92:                                               ; preds = %84
  br i1 %82, label %81, label %93, !llvm.loop !26

93:                                               ; preds = %92
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 12), align 4
  store i32 25, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 12), align 4
  br label %94

94:                                               ; preds = %104, %93
  %95 = phi i32 [ 0, %93 ], [ %105, %104 ]
  br label %96

96:                                               ; preds = %96, %94
  %97 = phi i32 [ 0, %94 ], [ %102, %96 ]
  %98 = shl nuw nsw i32 %97, 6
  %99 = or disjoint i32 %95, %98
  %100 = zext nneg i32 %99 to i64
  %101 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 8192), i64 %100
  store i32 1, ptr %101, align 4
  %102 = add nuw nsw i32 %97, 1
  %103 = icmp eq i32 %97, 0
  br i1 %103, label %96, label %104, !llvm.loop !27

104:                                              ; preds = %96
  %105 = add nuw nsw i32 %95, 1
  %106 = icmp samesign ult i32 %95, 3
  br i1 %106, label %94, label %107, !llvm.loop !28

107:                                              ; preds = %104
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 16), align 16
  store i32 67, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 16), align 16
  br label %108

108:                                              ; preds = %119, %107
  %109 = phi i1 [ true, %107 ], [ false, %119 ]
  %110 = phi i32 [ 0, %107 ], [ 8, %119 ]
  br label %111

111:                                              ; preds = %111, %108
  %112 = phi i32 [ 0, %108 ], [ %117, %111 ]
  %113 = shl nuw nsw i32 %112, 6
  %114 = or disjoint i32 %113, %110
  %115 = zext nneg i32 %114 to i64
  %116 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 10240), i64 %115
  store i32 1, ptr %116, align 4
  %117 = add nuw nsw i32 %112, 1
  %118 = icmp samesign ult i32 %112, 3
  br i1 %118, label %111, label %119, !llvm.loop !29

119:                                              ; preds = %111
  br i1 %109, label %108, label %120, !llvm.loop !30

120:                                              ; preds = %119
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @class, i64 20), align 4
  store i32 200, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 20), align 4
  br label %121

121:                                              ; preds = %121, %120
  %122 = phi i32 [ 0, %120 ], [ %125, %121 ]
  %123 = zext nneg i32 %122 to i64
  %124 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 12288), i64 %123
  store i32 1, ptr %124, align 4
  %125 = add nuw nsw i32 %122, 1
  %126 = icmp samesign ult i32 %122, 2
  br i1 %126, label %121, label %127, !llvm.loop !31

127:                                              ; preds = %121
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 24), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 24), align 8
  br label %128

128:                                              ; preds = %128, %127
  %129 = phi i32 [ 0, %127 ], [ %133, %128 ]
  %130 = shl nuw nsw i32 %129, 3
  %131 = zext nneg i32 %130 to i64
  %132 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 14336), i64 %131
  store i32 1, ptr %132, align 4
  %133 = add nuw nsw i32 %129, 1
  %134 = icmp samesign ult i32 %129, 2
  br i1 %134, label %128, label %135, !llvm.loop !32

135:                                              ; preds = %128
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 28), align 4
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 28), align 4
  br label %136

136:                                              ; preds = %136, %135
  %137 = phi i32 [ 0, %135 ], [ %141, %136 ]
  %138 = shl nuw nsw i32 %137, 6
  %139 = zext nneg i32 %138 to i64
  %140 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 16384), i64 %139
  store i32 1, ptr %140, align 4
  %141 = add nuw nsw i32 %137, 1
  %142 = icmp samesign ult i32 %137, 2
  br i1 %142, label %136, label %143, !llvm.loop !33

143:                                              ; preds = %136
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @class, i64 32), align 16
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 32), align 16
  br label %144

144:                                              ; preds = %153, %143
  %145 = phi i1 [ true, %143 ], [ false, %153 ]
  %146 = phi i32 [ 0, %143 ], [ 1, %153 ]
  br label %147

147:                                              ; preds = %147, %144
  %148 = phi i1 [ true, %144 ], [ false, %147 ]
  %149 = phi i32 [ 0, %144 ], [ 8, %147 ]
  %150 = or disjoint i32 %146, %149
  %151 = zext nneg i32 %150 to i64
  %152 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 18432), i64 %151
  store i32 1, ptr %152, align 4
  br i1 %148, label %147, label %153, !llvm.loop !34

153:                                              ; preds = %147
  br i1 %145, label %144, label %154, !llvm.loop !35

154:                                              ; preds = %153
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 36), align 4
  store i32 9, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 36), align 4
  br label %155

155:                                              ; preds = %166, %154
  %156 = phi i1 [ true, %154 ], [ false, %166 ]
  %157 = phi i32 [ 0, %154 ], [ 1, %166 ]
  br label %158

158:                                              ; preds = %158, %155
  %159 = phi i32 [ 0, %155 ], [ %164, %158 ]
  %160 = shl nuw nsw i32 %159, 6
  %161 = or disjoint i32 %157, %160
  %162 = zext nneg i32 %161 to i64
  %163 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 20480), i64 %162
  store i32 1, ptr %163, align 4
  %164 = add nuw nsw i32 %159, 1
  %165 = icmp eq i32 %159, 0
  br i1 %165, label %158, label %166, !llvm.loop !36

166:                                              ; preds = %158
  br i1 %156, label %155, label %167, !llvm.loop !37

167:                                              ; preds = %166
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 40), align 8
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 40), align 8
  br label %168

168:                                              ; preds = %179, %167
  %169 = phi i1 [ true, %167 ], [ false, %179 ]
  %170 = phi i32 [ 0, %167 ], [ 8, %179 ]
  br label %171

171:                                              ; preds = %171, %168
  %172 = phi i32 [ 0, %168 ], [ %177, %171 ]
  %173 = shl nuw nsw i32 %172, 6
  %174 = or disjoint i32 %173, %170
  %175 = zext nneg i32 %174 to i64
  %176 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 22528), i64 %175
  store i32 1, ptr %176, align 4
  %177 = add nuw nsw i32 %172, 1
  %178 = icmp eq i32 %172, 0
  br i1 %178, label %171, label %179, !llvm.loop !38

179:                                              ; preds = %171
  br i1 %169, label %168, label %180, !llvm.loop !39

180:                                              ; preds = %179
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @class, i64 44), align 4
  store i32 72, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 44), align 4
  br label %181

181:                                              ; preds = %195, %180
  %182 = phi i1 [ true, %180 ], [ false, %195 ]
  %183 = phi i32 [ 0, %180 ], [ 1, %195 ]
  br label %184

184:                                              ; preds = %194, %181
  %185 = phi i1 [ true, %181 ], [ false, %194 ]
  %186 = phi i32 [ 0, %181 ], [ 8, %194 ]
  %invariant.op1 = or disjoint i32 %186, %183
  br label %187

187:                                              ; preds = %187, %184
  %188 = phi i32 [ 0, %184 ], [ %192, %187 ]
  %189 = shl nuw nsw i32 %188, 6
  %.reass2 = or disjoint i32 %189, %invariant.op1
  %190 = zext nneg i32 %.reass2 to i64
  %191 = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @p, i64 24576), i64 %190
  store i32 1, ptr %191, align 4
  %192 = add nuw nsw i32 %188, 1
  %193 = icmp eq i32 %188, 0
  br i1 %193, label %187, label %194, !llvm.loop !40

194:                                              ; preds = %187
  br i1 %185, label %184, label %195, !llvm.loop !41

195:                                              ; preds = %194
  br i1 %182, label %181, label %196, !llvm.loop !42

196:                                              ; preds = %195
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @class, i64 48), align 16
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @piecemax, i64 48), align 16
  store i32 13, ptr @piececount, align 16
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 4), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 8), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @piececount, i64 12), align 4
  store i32 0, ptr @kount, align 4
  %197 = call i32 @Fit(i32 noundef 0, i32 noundef 73)
  %.not = icmp eq i32 %197, 0
  br i1 %.not, label %200, label %198

198:                                              ; preds = %196
  %199 = call i32 @Place(i32 noundef 0, i32 noundef 73)
  store i32 %199, ptr @n, align 4
  br label %201

200:                                              ; preds = %196
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %.pre = load i32, ptr @n, align 4
  br label %201

201:                                              ; preds = %200, %198
  %202 = phi i32 [ %.pre, %200 ], [ %199, %198 ]
  %203 = call i32 @Trial(i32 noundef %202)
  %.not1 = icmp eq i32 %203, 0
  br i1 %.not1, label %204, label %205

204:                                              ; preds = %201
  %puts2 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %209

205:                                              ; preds = %201
  %206 = load i32, ptr @kount, align 4
  %.not3 = icmp eq i32 %206, 2005
  br i1 %.not3, label %208, label %207

207:                                              ; preds = %205
  %puts4 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  br label %208

208:                                              ; preds = %207, %205
  br label %209

209:                                              ; preds = %208, %204
  %210 = load i32, ptr @n, align 4
  %211 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %210) #3
  %212 = load i32, ptr @kount, align 4
  %213 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %212) #3
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
  %4 = icmp samesign ult i32 %2, 99
  br i1 %4, label %1, label %5, !llvm.loop !43

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
